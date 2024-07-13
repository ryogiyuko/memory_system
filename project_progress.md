---
typora-copy-images-to: project_progress_images
---

## 2024_7_11

#### 1. 模块原理及其实现

完成Icache模块的编写，Icache即L1级cache中的指令cache，专门供取指令单元（IFU）使用，对于CPU核心仅有读操作。对于本存储系统中的Icache，有以下几个特点：

- Icache**总容量32KB**，采用**两路组相联**的组织方式，使用**FIFO**的替换策略；本次cache的行容量为32B，即32B/line，故Icache有512sets；使用34位物理地址中的[33:14]_20作为Icache的Tag，[13:5]9位作为组号Index。

- 为满足IFU每次 **3*32B = 96B** 的取指令，使用了4个bank构建Icache，每次取指令需要访问其中的3个bank，每个bank命中输出一个缓存行。

- Icache和ITLB的关系是PIPT，仅在虚拟地址转换完成时，对Icache进行访问。

- 实现中细节问题

  - 访问SRAM和FIFO的地址仅在取指令事件出现时更改，回填事件时不更改，因为回填时所用的物理地址仍然不变；
  - 在SRAM触发selector2时用r_fifo_buffer_data_out存储当前的FIFO位（为0时way0优先，为1时way1优先），以供回填时使用（回填时的路，必为取指令时FIFO位翻转对应的路，如取的时候为0，说明回填时需要写way1）；
  - fifo_buffer的写使能，由mutex1和selector1处的两个一位reg异或决定，两个一位reg均在事件到来后翻转，确保在读写SRAM时仅读FIFO，在后续事件来时写FIFO，其中mutex1处reg初始为1，selector1处reg初始为0。

  

#### 2. 模块端口（单个Bank）

![Icache控制链实现](project_progress_images/Icache.jpg)

| ICache/bank | MMU、IFU              |      | L2 Cache                  |
| ----------- | --------------------- | ---- | ------------------------- |
| input       | i_Itlb_drive          |      | i_L2Cache_drive           |
|             | i_Itlb_PA_34          |      | i_L2Cache_refillLine_32B  |
| output      | o_driveNext_ifu       |      | o_driveNext_L2Cache       |
|             | o_hit_data_to_ifu_32B |      | o_miss_Addr_to_L2cache_34 |

