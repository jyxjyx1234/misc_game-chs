# encoding: utf-8
# to_json2.rb
# author: dice2000
# original author: aoitaku
# https://gist.github.com/aoitaku/7822424
#

require 'json'
module Jsonable
  def to_json(*args)
    hash = {}
    instance_variables.each do |var|
      value = instance_variable_get(var)
      # 确保值可以被序列化
      if value.is_a?(Array)
        hash[var.to_s] = value.map { |v| v.respond_to?(:to_json_data) ? v.to_json_data : v }
      else
        hash[var.to_s] = value.respond_to?(:to_json_data) ? value.to_json_data : value
      end
    end
    hash.to_json(*args)
  end
  
  # 用于获取对象的原始数据而不是JSON字符串
  def to_json_data
    hash = {}
    instance_variables.each do |var|
      value = instance_variable_get(var)
      if value.is_a?(Array)
        hash[var.to_s] = value.map { |v| v.respond_to?(:to_json_data) ? v.to_json_data : v }
      else
        hash[var.to_s] = value.respond_to?(:to_json_data) ? value.to_json_data : value
      end
    end
    hash
  end
  
  module ClassMethods
    def from_json(json_str)
      data = JSON.parse(json_str)
      from_hash(data)
    end
    
    def from_hash(data)
      instance = self.allocate
      data.each do |key, value|
        key = key.to_s.sub(/^@/, '')
        if value.is_a?(Hash) && instance.instance_variable_defined?("@#{key}")
          original_value = instance.instance_variable_get("@#{key}")
          if original_value.respond_to?(:from_hash) && original_value.class.respond_to?(:from_hash)
            instance.instance_variable_set("@#{key}", original_value.class.from_hash(value))
          else
            instance.instance_variable_set("@#{key}", value)
          end
        elsif value.is_a?(Array) && instance.instance_variable_defined?("@#{key}")
          # 处理数组类型
          instance.instance_variable_set("@#{key}", value)
        else
          instance.instance_variable_set("@#{key}", value)
        end
      end
      instance
    end
  end
  
  def self.included(base)
    base.extend(ClassMethods)
  end
end

require 'zlib'
require_relative 'rgss3'
[
  'Data/Actors.rvdata2',
  'Data/Animations.rvdata2',
#  'Data/Areas.rvdata2',
  'Data/Armors.rvdata2',
  'Data/Classes.rvdata2',
  'Data/CommonEvents.rvdata2',
  'Data/Enemies.rvdata2',
  'Data/Items.rvdata2',
  *Dir.glob('Data/Map[0-9][0-9][0-9].rvdata2'),
  'Data/MapInfos.rvdata2',
  'Data/Skills.rvdata2',
  'Data/States.rvdata2',
  'Data/System.rvdata2',
  'Data/Tilesets.rvdata2',
  'Data/Troops.rvdata2',
  'Data/Weapons.rvdata2'
].each do |rvdata|
  data = ''
  p rvdata
  File.open(rvdata, 'rb') do |file|
    data = Marshal.load(file.read)
    if data.is_a?(Array)
	    data.each{ |d|
	    	d.unpack_names if d != nil
	    }
		elsif data.is_a?(Hash)
			if data.size != 0
				data.each_value{|v|
					v.unpack_names
				}
			end
		else
			data.unpack_names
    end
  end
  File.open('Data_out/'+File.basename(rvdata,'.rvdata2')+'.json', 'w') do |file|
    file.write(data.to_json)
  end
end

