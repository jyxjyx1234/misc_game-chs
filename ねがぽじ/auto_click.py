import pyautogui
import keyboard
import threading
import time

class AutoClicker:
    def __init__(self):
        self.clicking = False
        self.click_thread = None
        self.click_interval = 0.05  # 点击间隔时间(秒)，可以根据需要调整
        
    def start_clicking(self):
        self.clicking = True
        print("连点器已启动 (按s停止)")
        while self.clicking:
            pyautogui.click()
            time.sleep(self.click_interval)
    
    def toggle_clicking(self):
        if self.clicking:
            self.clicking = False
            if self.click_thread is not None:
                self.click_thread.join()
            print("连点器已停止")
        else:
            self.click_thread = threading.Thread(target=self.start_clicking)
            self.click_thread.start()
    
    def run(self):
        print("鼠标连点器已就绪 (按s开始/停止)")
        keyboard.add_hotkey('f10', self.toggle_clicking)
        keyboard.wait()  # 保持程序运行

if __name__ == "__main__":
    try:
        clicker = AutoClicker()
        clicker.run()
    except KeyboardInterrupt:
        print("\n程序已退出")
    except Exception as e:
        print(f"发生错误: {e}")