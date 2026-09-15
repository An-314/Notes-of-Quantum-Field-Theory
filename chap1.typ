#import "@preview/scripst:1.1.2": *


#newpara()

传统的量子场论以来对电磁学的场论经验，讲量子化规则应用其上。但对于场的存在、粒子的自选、量子化规则、Lagrange量的选择等问题，仍然缺乏一个系统的理论基础。

第一性原理最近被物理学家强调：从最基本的物理定律出发，通过严格的数学推导来建立理论框架，而不是依赖于经验性的假设或近似方法。20世纪以来，量子力学和狭义相对论的公理化为第一性原理，成为现代物理学的基石。

Wigner把场的量子（粒子）定义为非齐次 Lorentz 群的不可约表示。
- 量子力学规定量子的粒子性：粒子（量子）与波（场）的统一
- 狭义相对论的非齐次 Lorentz 变换确定这些粒子的分类：相对论量子场


场量子场论诞生之前，描述物质及其相互作用的理论主要有
- 描述波动的理论——经典场论：Maxwell 经典电磁场理论，广义相对论
  - 引入 Faraday 场的观念：充满并弥漫在空间的场作为波的载体，它随时间的变化导致了波动
  - 为满足相对性原理，以及与光速不变的事实相符合，Einstein 提出了描述基本相互作用的波动理论必须满足的狭义相对论
    - 它不能描述波的粒子性；而对电磁波，光电效应实验显示出光所具有的粒子性
- 描述粒子的理论——量子力学
  - 量子力学是经典力学的量子化
  - 粒子不同时具有确定位置和动量，由 de Broglie 提出的波粒二象性，粒子具有波动性

如果将波函数看成是经典场，量子力学可被看成是一种经典场论，似乎描述粒子和波的理论都被统一到经典场论的框架下来进行描述。

经典场论对物质世界的波和粒子的描述并不是完备的：
- 光波的粒子性在经典场论的体系中并没有得到体现
- 波动理论中经典场不具有量子力学波函数作为几率幅的物理诠释
- 量子力学与狭义相对论简单地结合起来的相对论量子力学不完备
  - 负能问题
  - 粒子数不守恒
  - 负几率问题
所有这些问题通过对经典场论中的"经典场"进行"量子化"而得到解决。

现代粒子物理几乎全部写成 QFT，如今的标准模型
$
  "SU"(3)_c times "SU"(2)_L times "U"(1)_Y
$
本质上就是一个量子场论。

真正重要的转变：QFT 不一定是“终极理论”

#theorem(subname: [Folk Theorem(Weinberg)])[
  Any quantum theory that at sufficiently low energy and large distances looks Lorents invariant and satisfies the cluster decomposition principle will also at sufficiently low energy look like a quantum field theory.
]
```
未知 UV 理论 -|coarse graining/降低能标|-> Quantum Field Theory/EFT --> 低能实验
```
低能观察者必然看到场论，有效理论的观点是即使底层根本不是量子场，低能物理还是会成为 QFT。就例如热力学是一种有效理论，微观上明明是原子分子，大量不同微观体系在宏观尺度都会服从热力学。

#newpara()

QFT 在现代物理中的地位
- 第一层：它是现代粒子物理的基础
  - QED, QCD, electroweak theory, Standard Model全部是 QFT
- 第二层：它是量子力学与狭义相对论相容后的自然形式
  - 粒子数可变、反粒子、自旋统计关系等，都在 QFT 中自然出现
- 第三层：它是跨学科的通用理论工具
  - particle, nuclear,condensed matter, statistical physics都大量依赖 QFT
- 第四层，也是最现代的一层：
  - QFT 是低能、长距离量子物理的一种普适结构。

#pagebreak()

= 量子力学与狭义相对论

