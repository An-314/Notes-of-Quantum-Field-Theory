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

*物理学基本单位*

物理学的基本元素包括*时间、空间、物质（能力）*，这就是三个物理学基本单位。

- 狭义相对论有常数$c$，由狭义相对论光速不变假设给出
  $
    c = 299792.458 "km/s"
  $
- 量子力学有常数$hbar$，由时空转动的生成元的量纲常数给出
  $
    hbar = 6.5821220 times 10^(-22) "MeV s"
  $

*自然单位制*中只有一个基本单位
- $c=1$：长度单位和时间单位关联起来
- $hbar=1$：能量单位和动量单位关联起来

物理学量纲的起源是*维数转移*，即通过物理学基本单位的定义，将一个物理量的维数转化为另一个物理量的维数。

== 量子力学与Hilbert空间

#definition(subname: [量子力学基本原理（其一）])[
  物理状态用Hilbert空间$cal(H)$中的态矢量$ket(Psi)$表示。相差一个复数因子的两个态矢量，描写同一物理状态。
]

#definition(subname: [复矢量空间])[
  元素（矢量）${psi,phi,chi,...}$的集合$L$在复数域$CC$上定义了加法和数乘后，则称它为复矢量空间。
  - 加法$(L,+)$：$psi+phi in L$
    - 封闭性：$psi+phi in L$
    - 结合律：$(psi+phi)+chi = psi+(phi+chi)$
    - 交换律：$psi+phi = phi+psi$
    - 零元：存在$0 in L$，使得$psi+0 = psi$
    - 逆元：存在$-psi in L$，使得$psi+(-psi) = 0$
  - 数乘$(L,CC)$：$alpha psi in L$
    - 封闭性：$alpha psi in L$
    - 结合律：$alpha(beta psi) = (alpha beta)psi$
    - 分配律：$alpha(psi+phi) = alpha psi + alpha phi$
    - 单位元：$1 psi = psi$
]

#definition(subname: [完备的基矢组])[
  如果矢量集$$
]



#definition(subname: [量子力学基本原理（其二）])[
  可观察物理量由Hermite算符$hat(A)$表示，测量它的结果是$hat(A)$的本征值$lambda$，测量后体系处于对应的本征态$psi$。
]

#definition(subname: [算符])[
  在Hilbert空间中，算符$hat(A)$是将一个态矢量映射到另一个态矢量的线性变换。
  $
    hat(A) : cal(H) -> cal(H), psi |-> hat(A)psi
  $
]

#definition(subname: [线性算符与反线性算符])[
  - 线性算符$hat(A)$满足线性性：
    $
      hat(A)(alpha psi + beta phi) = alpha hat(A)psi + beta hat(A)phi
    $
    - 反线性算符$hat(A)$满足反线性：
      $
        hat(A)(alpha psi + beta phi) = alpha^* hat(A)psi + beta^* hat(A)phi
      $
]

#definition(subname: [Hermite共轭])[
  Hermite共轭$hat(A)^dagger$是将算符$hat(A)$映射到另一个算符$hat(A)^dagger$的反线性变换：
  $
    hat(A)^dagger : cal(H) -> cal(H), psi |-> hat(A)^dagger psi
  $
  定义为
  $
    braket(Phi, hat(A)Psi) = braket(hat(A)^dagger Phi, Psi) = braket(Psi, hat(A)^dagger Phi)^*
  $
]


#definition(subname: [Hermite算符])[
  Hermite算符$hat(A)$满足：
  $
    hat(A) = hat(A)^dagger
  $
]

#definition(subname: [算符的本征值])[
  Hermite算符$hat(A)$的本征值$lambda$是满足：
  $
    hat(A)psi = lambda psi
  $
  的复数$lambda$，其中$psi$是非零态矢量。
]

#theorem(subname: [Hermite算符的本征值是实数])[
  Hermite算符$hat(A)$的本征值$lambda$是实数。
]

#proof[
  设$lambda$是Hermite算符$hat(A)$的本征值，$psi$是对应的本征矢量。
  由Hermite算符的定义，有
  $
    braket(Psi, hat(A)Psi) = braket(hat(A)Psi, Psi)
  $
  即
  $
    lambda braket(Psi, Psi) = lambda^* braket(Psi, Psi)
  $
  因为$psi != 0$，所以$braket(Psi, Psi) != 0$，因此
  $
    lambda = lambda^*
  $
  这说明$lambda$是实数。
]

#newpara()
局域粒子通过态的*叠加*形成波，也就是*场*
$
  ket(psi) = a ket(x) + b ket(y)
$
意味着粒子既在$x$点也在$y$点。通过叠加态的概率幅，粒子可以同时存在于空间的不同位置。

直积的量子态通过*叠加*形成*纠缠态*
$
  ket(psi^(plus.minus)) = a ket(arrow.t arrow.t) plus.minus b ket(arrow.b arrow.b)
$

产生粒子，所有算符都可以转化为产生算符与其共轭的乘积，波或场通过*激发（算符作用）*产生粒子
$
  hat(a)^dagger (vb(p)) ket(psi) = ket(psi + vb(p))
$


#definition(subname: [量子力学基本原理（其三）])[
  如果体系处于归一化态$Psi$。通过实验测量它位于一组正交归一态${Psi_i}$的概率为：
  $
    PP_i = abs(braket(Psi_i, Psi))^2
  $
]

进一步从态空间的完备性有
$
  sum_i PP_i = sum_i abs(braket(Psi_i, Psi))^2 = 1
$
对于态矢量展开
$
  ket(Psi) = sum_i braket(Psi_i, Psi) ket(Psi_i) = sum_i c_i ket(Psi_i)
$
其中
$
  c_i = braket(Psi_i, Psi)
$
完备性是
$
  sum_i ketbra(Psi_i) = hat(I)
$

#newpara()
经典物理中的光的偏振就有态的叠加、几率的思想。在$z$方向传播的平面电磁波是
$
  vb(E)(z,t) &= mat(E_(x 0) e^(i(k z - omega t + phi_(x 0))); E_(y 0) e^(i(k z - omega t + phi_(y 0)))) = e^(i(k z - omega t)) sqrt(E_(x 0)^2 + E_(y 0)^2) mat(cos theta; sin theta e^(i delta))\
  &prop cos theta ket(h) + sin theta e^(i delta) ket(v)
$
其中
$
  ket(h) = mat(1; 0), ket(v) = mat(0; 1)
$
可以定义*偏振态*
- 透振方向为$alpha$的偏振片的偏振光：$ket(psi) = cos alpha ket(h) + sin alpha ket(v)$
- 椭圆偏振态：$ket(psi) = cos alpha ket(h) + sin alpha e^(i delta) ket(v)$
而*穿透概率*就是内积，其中$abs(braket(psi', psi))^2$为偏振态$ket(psi)$对透振态$ket(psi')$偏振片的穿透概率
$
  abs(braket(psi', psi))^2 = cos^2 theta + sin^2 theta + 2 cos theta sin theta cos delta
$

== 对称性

=== 群

#definition(subname: [群])[
  集合$cal(G)={g,h,k,...}$上定义一个二元运算$dot$
  $
    dot : cal(G) times cal(G) -> cal(G)
  $
  如果满足以下条件，则称$(cal(G), dot)$为*群*：
  - 封闭性：$g dot h in cal(G)$
  - 结合律：$g dot (h dot k) = (g dot h) dot k$
  - 单位元：存在$e in cal(G)$，使得
    $
      e dot g = g dot e = g
    $
  - 逆元：对于每个$g in cal(G)$，存在$g^(-1) in cal(G)$，使得
    $
      g dot g^(-1) = g^(-1) dot g = e
    $
]
- 若再满足结合率$g dot h = h dot g$，则称群为*交换群*或*Abel群*。
- 群的元素$g$的阶是满足$g^n = e$的最小正整数$n$，若不存在这样的$n$，则称$g$的阶为无穷大。
- 群的子集$cal(H) subset cal(G)$若满足
  - 封闭性：$h_1 dot h_2 in cal(H)$，对于所有$h_1,h_2 in cal(H)$
  - 单位元：$e in cal(H)$
  - 逆元：对于每个$h in cal(H)$，存在$h^(-1) in cal(H)$


#definition(subname: [群表示])[
  群$cal(G)$的表示是将群元素映射到线性变换的映射
  $
    T : cal(G) -> "GL"(V), g |-> T(g)
  $
  其中$"GL"(V)$是向量空间$V$上的可逆线性变换群。表示必须满足
  $
    T(g dot h) = T(g) T(h)," " g,h in cal(G)\
    T(g^(-1)) = T(g)^(-1)," " g in cal(G)\
    T(e) = I
  $
  对于所有$g,h in cal(G)$。

  $cal(G)$到$"GL"(n)$的同态$T: cal(G) -> "GL"(n)$称为$n$维表示。若$V$是有限维的，则称表示为有限维表示。
]

群$cal(G)$的任一表示空间为$V$的表示$T$定义了许多矩阵表示。


=== 对称性

物理体系具有*对称性*指不同观察者观察同一实验得到同样的实验结果。

观察者$cal(O)$通过实验测量处于归一化态$Psi$的物理体系位于一组正交归一态${Psi_1, Psi_2, ..., Psi_n}$的几率与另一个观察者$cal(O)'$对同一个物理体系的状态$Psi'$通过实验测量位于对应的正交归一态${Psi_1', Psi_2', ..., Psi_n'}$的几率相同
$
  abs(braket(Psi_i, Psi))^2 = abs(braket(Psi_i', Psi'))^2
$
联系${Psi_i}$与${Psi_i'}$的线性变换$T$成为*对称性变换*。

#theorem(subname: [对称性变换形成群])[
  满足对称性变换的线性变换$T$形成群$cal(G)$。
]

#proof[
  - 存在单位变换$T(e)$，使得$T(e)Psi = Psi$，对于所有态矢量$Psi$。
  - 存在逆变换$T(g^(-1))$，使得
    $
      T(g^(-1))T(g)Psi = T(g)T(g^(-1))Psi = Psi
    $
  - 对于任意两个对称性变换$T(g)$和$T(h)$，它们的复合$T(g)T(h)$也是对称性变换：
    $
      T(g)T(h)Psi = T(g)Psi' = Psi''
    $
]

#definition(subname: [幺正、反幺正算符])[

]

#theorem(subname: [])[
  对称性变换是幺正或反幺正算符。
]

#proof[
  对于正交归一完备基$psi_i$
  $
    Psi = sum_i a_i psi_i, a_i = braket(psi_i, Psi)
  $
  对称变换后
  $
    U Psi = sum_i a'_i psi'_i, psi'_i = U psi_i
  $
  也满足
  $
    braket(psi'_i, psi'_j) = braket(U psi_i, U psi_j) = braket(psi_i, psi_j) = delta_(i j)
  $
  有
  $
    abs(a'_i) = abs(braket(psi'_i, Psi')) = abs(braket(psi_i, Psi)) = abs(a_i)
  $
  从而
  $
    a_i = e^(i theta_i) a_i "或" a_i = e^(i theta_i) a_i^*
  $
  其实这里需要说明$delta_i$不依赖$a_i$，只依赖$i$，考虑
  $
    abs(b_i + c_i) = abs(b'_i + c'_i) & => cos(arg(b_i)-arg(c_i)) = cos(arg(b'_i)-arg(c'_i)) \
                                      & => arg(b_i)-arg(c_i) eq.triple arg(b'_i)-arg(c'_i)
  $

  - 如果$a_i = e^(i theta_i) a_i$，则
    $
      U (alpha Psi + beta Phi) & = (alpha Psi + beta Phi)' = alpha Psi' + beta Phi' \
                               & = sum_i (alpha a_i + beta b_i) e^(i theta_i) psi_i = sum_i (alpha a_i + beta b_i) psi'_i \
                               & = alpha Psi' + beta Phi' = alpha U Psi + beta U Phi
    $
    这说明$U$是线性算符。进一步
    $
      braket(Psi', Phi') &= braket(sum_i a'_i psi'_i, sum_j b'_j psi'_j) = sum_i a'_i^* b'_i = sum_i (e^(i theta_i) a_i)^* (e^(i theta_i) b_i) \
      &= sum_i a_i^* b_i = braket(Psi, Phi)
    $
    从而$U$是幺正算符。
  - 如果$a_i = e^(i theta_i) a_i^*$，则
    $
      U (alpha Psi + beta Phi) & = (alpha Psi + beta Phi)' = alpha Psi' + beta Phi' \
                               & = sum_i (alpha a_i + beta b_i) e^(i theta_i) psi_i = sum_i (alpha a_i + beta b_i) psi'_i \
                               & = alpha^* Psi' + beta^* Phi' = alpha^* U Psi + beta^* U Phi
    $
    这说明$U$是反线性算符。进一步
    $
      braket(Psi', Phi') &= braket(sum_i a'_i psi'_i, sum_j b'_j psi'_j) = sum_i a'_i^* b'_i = sum_i (e^(i theta_i) a_i)^* (e^(i theta_i) b_i) \
      &= sum_i a_i b_i^* = braket(Psi, Phi)^*
    $
    从而$U$是反幺正算符。
]

记描述对称性变换$T$的幺正或反幺正算符为$U(T)$，考虑态所具有的相角任意性
$
  U(T_2) U(T_1) ket(Psi) = e^(i theta_Psi (T_2, T_1)) U(T_2 T_1) ket(Psi)
$
其中$phi_Psi (T_2, T_1)$表示态$Psi$在变换$T_2 T_1$下的相角。我们下面证明，它实际上是不依赖于态$Psi$的。

#proof[
  $
    Psi_(A B) = Psi_A + Psi_B
  $
  则
  $
    e^(plus.minus i phi_(A B)) Psi_(A B) & = U^(-1) (T_2 T_1) e^(i phi_(A B)) U(T_2 T_1) Psi_(A B) \
                                         & = U^(-1) (T_2 T_1) U(T_2) U(T_1) Psi_(A B) \
                                         & = U^(-1) (T_2 T_1) (U(T_2) U(T_1) Psi_A + U(T_2) U(T_1) Psi_B) \
                                         & = U^(-1) (T_2 T_1) (e^(i phi_A) U(T_2 T_1) Psi_A + e^(i phi_B) U(T_2 T_1) Psi_B) \
                                         & = e^(plus.minus i phi_A) Psi_A + e^(plus.minus i phi_B) Psi_B
  $
  对于任意态$Psi_A$和$Psi_B$，有
  $
    e^(phi_(A B)) = e^(phi_A) = e^(phi_B)
  $
  也就是相角与态无关。
]
所以可以写成
$
  U(T_2) U(T_1) ket(Psi) = e^(i phi(T_2, T_1)) U(T_2 T_1) ket(Psi)
$
下面只讨论$phi(T_2, T_1) = 0$的情况。

=== 连续对称性

