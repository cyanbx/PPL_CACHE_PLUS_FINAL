# 计算机系统实验设计方案

## 外设

| 项目 | 完成度 | 描述 |
|------|--------|------|
| 开关 | OK | 16个拨码开关，可以用于输入，也可以用于调试输出寄存器值。 |
| 单色LED | OK | 16个单色LED。 |
| 数码管 | OK | 8位7段数码管，可以用于显存输出，也可以用于调试输出寄存器值。 |
| 按钮 | OK | 上下左右中五向按钮。可以用作单步调试控制器。 |
| ReSeT按钮 | OK | 异步复位。但是当然也可以同步用。 |
| 三色LED | Testing | 红绿蓝三原色LED。可以用来测试的时候显示红绿表示是否通过。 |
| VGA | Designing | VGA口可以接显示器，可以用作图形显存输出，也可以用于调试输出寄存器值。 |
| 以太网口 | | 这个学期在学无线网络实验。搞不好可以从底层实现网络协议。 |
| USB外设 | | USB口。优先接键盘。文档里有键盘码。 |

## 模块

### 基础（数字逻辑设计）

| 项目 | 完成度 | 描述 |
|------|--------|------|
| 多路选择器 | OK | 基本部件 |
| 译码器 | OK | 基本部件 |
| 锁存器 | OK | 基本部件 |
| 触发器 | OK | 基本部件 |
| 移位寄存器 | OK | 由触发器组成 |
| 三态门 | OK | 由锁存器组成 |
| 双向访存电路 | OK | 由多路选择器和三态门构成 |

### 同步外设（数字逻辑设计）

| 项目 | 完成度 | 描述 |
|------|--------|------|
| 调试模式 | Designing | 开启调试模式，则开关、数码管简单显示寄存器值等调试信息。关闭调试模式，开关、数码管成为统一编址的外设。短按ReSeT键切换模式；长按复位。 |
| 时钟分频器 | OK | 部分低频外设需要，clocking_wizard频率过高（4MHz+）。 |
| 按钮防抖动器 | OK | 由时钟分频器和触发器组成，20位缓冲。 |
| 16进制数码管译码器 | OK | 调试模式用。|
| ASCII数码管译码器 | OK | 字符显示模式用。 |

### 异步外设（汇编与接口）

| 项目 | 完成度 | 描述 |
|------|--------|------|
| 总线仲裁 | OK | 总线管理器。控制多个外设必备。可选择简单同步总线/AXI异步总线。 |
| USB键盘驱动 | | |
| USB鼠标驱动 | | |
| VGA显示控制器 | | |
| 串口驱动 | | |

### CPU（计算机组成）

| 项目 | 完成度 | 描述 |
|------|--------|------|
| 译码网格 | OK | 一种译码器实现，译码段 |
| 组合运算器 | OK | 仅有组合电路、支持整数加减位运算的运算器，执行段 |
| 时序运算器 | OK | 支持乘除法，需要时序逻辑，执行段 |
| 浮点运算器 | OK | 支持浮点数运算，需要时序逻辑，执行段 |
| Cache | Designing | 复杂的综合存储设备，访存段 |
| 寄存器组 | OK | CPU内部寄存器组 |
| 状态控制器 | OK | 多周期状态机的控制器 |

### 优化（体系）

| 项目 | 完成度(MIPS) | 完成度(RISC-V) | 描述 |
|------|---------------|----------------|------|
| 流水线数据通路 | OK | Designing | 基本五级流水线设计 |
| 流水线forwarding | OK |  | 使用forwarding优化；分支预测或者delay slot |
| 多发射与乱序发射 | | | 可选（看情况加……大概是加不上了） |
| 多级Cache |  |  | 利用Block Memory和DDR内存模拟多级Cache |
| 中断响应 | OK |  | 能够跳转到中断并且返回；支持多种不同的中断 |
| 嵌套中断响应 | OK | | 能处理多个并发的中断 |

## 架构

| 项目 | 架构 | 完成度 | 描述 |
|------|-------|--------|------|
| HustPC v2 | MIPS MC | OK | 教学版单周期/多周期 |
| HustPC v3 | MIPS PL5 | OK | 教学版5级流水线 |
| Untitled Unit | MIPS PL10 | OK | 实验版10级流水线 |
| ZJUnit Org | RISC-V | Designing | 教学版单周期多周期 |
| ZJUnit Arc | RISC-V | Designing | 教学版5级流水线 |
| ZJUnit ArcX | RISC-V | Designing | 教学版优化流水线 |
| ZJUnit Exp | RISC-V | Designing | 实验版流水线 |
| ??? | x86 | | 保留这种可能性 |





