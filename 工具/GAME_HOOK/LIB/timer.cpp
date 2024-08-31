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

// ȫ�ֱ���// ȫ�ֱ���
std::atomic<bool> running(true); // �߳����б�־
std::mutex fileMutex;            // �ļ�����������
std::thread timerThread;         // ��ʱ�߳�
int timesplit;

// ����������������ת��Ϊʱ-��-���ʽ���ַ���
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

// ������������ʱ-��-���ʽ���ַ���ת��Ϊ����
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
                totalDuration = 0; // �����ʽ���ԣ���0��ʼ
            }
        }
    }
    totalDuration += timesplit; // ����5��

    // �����ļ�����
    file.close();
    std::ofstream newFile("runtime.txt", std::ios::trunc);
    newFile << formatTime(totalDuration) << std::endl;
    newFile.close();
}

// ��ʱ�̺߳���
void timerFunction() {
    while (running) {
        updateRuntime();
        std::this_thread::sleep_for(std::chrono::seconds(timesplit));
    }
}

// DLL ��ʼ������
void InitializeTimer() {
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    timesplit = config.ReadInt("TIMER", "TIMESPLIT", 10);
    running = true;
    timerThread = std::thread(timerFunction);
}

// DLL ������
void FinalizeTimer() {
    running = false;
    if (timerThread.joinable()) {
        timerThread.join();
    }
}
