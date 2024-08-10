l=[{"words":"公一"},{"words":"亜农"},{"words":"女の子"},{"words":"亜衣"},{"words":"お娘様"},{"words":"???"},{"words":"???"},{"words":"亜衣"},{"words":"麗佳"},{"words":"???"},{"words":"女の子"},{"words":"???"},{"words":"麗佳"},{"words":"優美"},{"words":"???"},{"words":"女性"},{"words":"女の子"},{"words":"優美"},{"words":"優美。公一"},{"words":"玲"},{"words":"玲"},{"words":"???"},{"words":"???"},{"words":"???"},{"words":"メイ8"},{"words":"玲"},{"words":"玲"},{"words":"玲&優美"},{"words":"亜衣の母親"},{"words":"ぽあや"},{"words":"黒服"},{"words":"山田"},{"words":"山田"},{"words":"男性"},{"words":"男性"},{"words":"執事"},{"words":"革田"},{"words":"アヤシイ男"},{"words":"オーナー"},{"words":"男性"},{"words":"かードマン1"},{"words":"かードマン1"},{"words":"かードマン2"},{"words":"加ードマン"},{"words":"鬼島"},{"words":"男性"},{"words":"???"},{"words":"海道"},{"words":"黒服"},{"words":"???"},{"words":"司会者"},{"words":"神父"},{"words":"調教師"},{"words":"調教師"},{"words":"通行人A"},{"words":"通行人B"},{"words":"通行人C"},{"words":"野犬"},{"words":"犬"},{"words":"黒服A"},{"words":"黒服B"},{"words":"???"},{"words":"???"},{"words":"?"},{"words":"アナウンかー"}]

out=[]
for i in range(len(l)):
    name=l[i]["words"]
    out.append(str(i+1)+':"'+name+'",')

print('\n'.join(out))
