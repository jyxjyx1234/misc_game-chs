import numpy as np
import matplotlib.pyplot as plt

# 定义状态空间
states = list(range(19))  # 状态从0到18
absorbing_states = [0, 18]  # 吸收状态

# 构建转移概率矩阵
P = np.zeros((19, 19))  # 19x19的矩阵

for i in range(1, 18):  # 非吸收状态
    if i > 9:
        P[i, i + 1] = 0.4  # 加1的概率
        P[i, i - 1] = 0.6  # 减1的概率
    elif i < 9:
        P[i, i + 1] = 0.6  # 加1的概率
        P[i, i - 1] = 0.4  # 减1的概率
    else:  # i == 9
        P[i, i + 1] = 0.5  # 加1的概率
        P[i, i - 1] = 0.5  # 减1的概率

# 吸收状态的转移概率
P[0, 0] = 1
P[18, 18] = 1

# 提取Q矩阵（非吸收状态的子矩阵）和R矩阵（非吸收到吸收的子矩阵）
Q = P[1:18, 1:18]  # 去掉吸收状态0和18
R = P[1:18, [0, 18]]  # 非吸收到吸收的概率

# 计算基本矩阵N = (I - Q)^-1
I = np.eye(Q.shape[0])  # 单位矩阵
N = np.linalg.inv(I - Q)

# 计算吸收概率矩阵 B = N * R
B = N @ R

# 初始状态为12
initial_state = 12 - 1  # 状态12对应索引11

# 到达吸收状态0的概率
prob_to_0 = B[initial_state, 0]

# 到达吸收状态18的概率
prob_to_18 = B[initial_state, 1]

# 输出结果
print(f"到达吸收状态0的概率: {prob_to_0:.6f}")
print(f"到达吸收状态18的概率: {prob_to_18:.6f}")

# 绘制到达吸收状态0和18的概率分布图
steps = 200  # 模拟的最大步数
time_distribution_to_0 = []
time_distribution_to_18 = []

for step in range(1, steps + 1):
    prob_to_0_step = np.linalg.matrix_power(Q, step - 1)[initial_state] @ R[:, 0]
    prob_to_18_step = np.linalg.matrix_power(Q, step - 1)[initial_state] @ R[:, 1]
    time_distribution_to_0.append(prob_to_0_step)
    time_distribution_to_18.append(prob_to_18_step)

plt.rcParams['font.sans-serif'] = ['SimHei']  # 设置字体为黑体以支持中文
plt.rcParams['axes.unicode_minus'] = False  # 解决负号显示问题

plt.figure(figsize=(12, 6))
plt.plot(range(1, steps + 1), time_distribution_to_0, label="到达吸收状态0的概率")
plt.plot(range(1, steps + 1), time_distribution_to_18, label="到达吸收状态18的概率")
plt.xlabel("时间步数")
plt.ylabel("概率")
plt.title("到达吸收状态的概率分布")
plt.legend()
plt.grid()
plt.show()
