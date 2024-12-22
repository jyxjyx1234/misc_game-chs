#include <iostream>
#include <fstream>
#include <string>
#include <chrono>
#include <sstream>
#include <iomanip>
#include <thread>
#include <mutex>
#include "timer.h"
#include "readconfig.h"

// 全局变量// 全局变量
std::atomic<bool> running(true); // 线程运行标志
std::mutex fileMutex;            // 文件操作互斥锁
std::thread timerThread;         // 计时线程
int timesplit;

// 辅助函数：将秒数转换为时-分-秒格式的字符串
std::string formatTime(long long seconds) {
    long long hours = seconds / 3600;
    seconds %= 3600;
    long long minutes = seconds / 60;
    seconds %= 60;

    std::ostringstream oss;
    oss << std::setw(2) << std::setfill('0') << hours << "-"
        << std::setw(2) << std::setfill('0') << minutes << "-"
        << std::setw(2) << std::setfill('0') << seconds;
    return oss.str();
}

// 辅助函数：将时-分-秒格式的字符串转换为秒数
long long parseTime(const std::string& timeStr) {
    int hours, minutes, seconds;
    char dash;
    std::istringstream iss(timeStr);
    iss >> hours >> dash >> minutes >> dash >> seconds;
    if (iss.fail()) {
        throw std::invalid_argument("Invalid time format");
    }
    return hours * 3600 + minutes * 60 + seconds;
}

void updateRuntime() {
    std::lock_guard<std::mutex> lock(fileMutex);

    std::fstream file("runtime.txt", std::ios::in | std::ios::out);
    long long totalDuration = 0;

    if (file) {
        std::string line;
        if (std::getline(file, line)) {
            try {
                totalDuration = parseTime(line);
            }
            catch (std::invalid_argument&) {
                totalDuration = 0; // 如果格式不对，从0开始
            }
        }
    }
    totalDuration += timesplit; // 增加5秒

    // 重置文件内容
    file.close();
    std::ofstream newFile("runtime.txt", std::ios::trunc);
    newFile << formatTime(totalDuration) << std::endl;
    newFile.close();
}

// 计时线程函数
void timerFunction() {
    while (running) {
        updateRuntime();
        std::this_thread::sleep_for(std::chrono::seconds(timesplit));
    }
}

// DLL 初始化函数
void InitializeTimer() {
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    timesplit = config.ReadInt("TIMER", "TIMESPLIT", 10);
    running = true;
    timerThread = std::thread(timerFunction);
}

// DLL 清理函数
void FinalizeTimer() {
    running = false;
    if (timerThread.joinable()) {
        timerThread.join();
    }
}
