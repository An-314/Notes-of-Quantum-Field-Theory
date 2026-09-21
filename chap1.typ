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

#definition(subname: [单位和量纲])[
  物理学中的基本*单位*是描述物理量的最小单位，它们是相互独立的，不能由其他单位组合而成。而*量纲*是更抽象的概念，不再局限于具体的单位，而是描述物理量的性质和关系。

  每个物理量都有一个对应的量纲，它表示该物理量在不同单位下的变化规律。通过量纲分析，可以推导出物理公式的正确性和一致性。
]

物理学的基本元素包括*时间、空间、物质（能力）*，这就是三个物理学基本单位。所以一般一个物理量可以写成
$
  [Q] = L^alpha T^beta M^gamma
$
量纲本质上是一种关于“尺度变换”的 bookkeeping。SI 认为长度、时间、质量是三个基本单位，其他单位都是由这三个基本单位组合而成的。于是
$
  [x] = L, [t] = T, [m] = M\
  [v] = L T^(-1), [a] = L T^(-2), [F] = M L T^(-2), [E] = M L^2 T^(-2)
$
但“长度、时间、质量必须是三个相互独立的量纲”并不是逻辑必然，这是经典物理时代很自然的一种选择。现代物理告诉我们，它们之间其实存在非常特殊的、普适的联系。

- 狭义相对论有常数$c$，由狭义相对论光速不变假设给出
  $
    c = 299792.458 "km/s"
  $
  可以把时间转成长度
  $
    [c] = L T^(-1), [c t] = L <--> 1"s" tilde 3 times 10^8 "m"
  $
  所以我们不把$x,t$看成两个独立的量纲，而是把它们看成同一个量纲$L$的不同表现形式。于是四矢量
  $
    x^mu = (c t, vb(x))
  $
- 量子力学有常数$hbar$，由时空转动的生成元的量纲常数给出
  $
    hbar = 6.5821220 times 10^(-22) "MeV s"
  $
  同样可以把时间和能量联系起来
  $
    E = hbar omega
  $

*自然单位制*中只有一个基本单位
- $c=1$：长度单位和时间单位关联起来
- $hbar=1$：能量单位和动量单位关联起来
  $
    [L] = [T] = E^(-1), [M] = [E] = [p]
  $

物理学量纲的起源是*维数转移*，即利用普适常数把它改写成另一种量纲的数值。从数学上看，这像是在做*量纲空间降维*，在自然单位制下所有物理量都可以用能量的量纲来表示。

== 量子力学与Hilbert空间

#theorem(subname: [量子力学基本原理（其一）])[
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
  *线性无关*：如果矢量集${psi_1, psi_2, ..., psi_n}$中不存在非平凡的线性组合为零，则称它们是线性无关的。

  *完备*：如果矢量集${psi_1, psi_2, ..., psi_n}$的线性组合可以表示空间中任意矢量，则称它们是完备的。
  $
    ket(Psi) = sum_i c_i ket(psi_i), forall ket(Psi) in cal(H)
  $
]

#definition(subname: [内积空间])[
  在复矢量空间$L$中定义一个内积$braket(psi, phi)$，它是一个从$L times L$到复数域$CC$的映射
  $
    braket(dot) : L times L -> CC, (psi, phi) |-> braket(psi, phi)
  $
  满足以下条件：
  - 共轭对称性：$braket(psi, phi) = braket(phi, psi)^*$
  - 正定性：$braket(psi, psi) >= 0$，且当且仅当$psi=0$时取等号。
  - 线性性：
    - $braket(alpha psi + beta phi, chi) = alpha braket(psi, chi) + beta braket(phi, chi)$
    - $braket(psi, alpha phi + beta chi) = alpha^* braket(psi, phi) + beta^* braket(psi, chi)$
  如果两个矢量$psi$和$phi$满足$braket(psi, phi) = 0$，则称它们是*正交*的。
]
也可以说这是$L$的共轭空间$L^*$上的矢量和$L$上的矢量之间的映射
$
  braket(dot) : L^* times L -> CC, (bra(psi), ket(phi)) |-> braket(psi, phi)
$
其中
$
  L^* = {bra(psi) | ket(psi) in L}, bra(psi) = ket(psi)^dagger
$
#definition(subname: [Hilbert空间])[
  如果内积空间$L$是完备的，则称它为Hilbert空间$cal(H)$。
]

#theorem(subname: [量子力学基本原理（其二）])[
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

#theorem(subname: [量子力学基本原理（其三）])[
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

在量子力学中，态和粒子之间的关系是通过态矢量和算符来描述的。态矢量表示系统的状态，而算符表示可观测的物理量。但到目前为止，看不出态和粒子有什么关系。虽然态的属性和波相似，但还不是波，因为没有时空背景。

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
  abs(braket(psi', psi))^2 = cos^2 theta + sin^2 theta + 2 cos 2theta sin 2theta cos delta/2
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
    $
      h dot h^(-1) = h^(-1) dot h = e
    $
  就称$cal(H)$为群$cal(G)$的*子群*。

我们再定义几个常见的群
- $"GL"(n)$：$n$阶一般线性群，由所有$n times n$可逆矩阵组成
- $"U"(n)$：$n$阶酉群，由所有$n times n$酉矩阵组成，特别地$"U"(1): e^(i theta)$，$theta in RR$，是复平面上单位圆上的旋转群
- $"SO"(n)$：$n$阶特殊正交群，由所有$n times n$行列式为1的正交矩阵组成，$n$维空间转动群

#definition(subname: [群表示])[
  群$cal(G)$的表示是将群元素映射到线性变换的映射
  $
    T : cal(G) -> "GL"(V), g |-> T(g)
  $
  其中$"GL"(V)$是向量空间$V$上的可逆线性变换群。表示必须满足
  $
    T(g dot h) & = T(g) T(h)," " g,h in cal(G) \
     T(g^(-1)) & = T(g)^(-1)," " g in cal(G) \
          T(e) & = I
  $
  对于所有$g,h in cal(G)$。

  $cal(G)$到$"GL"(n)$的同态$T: cal(G) -> "GL"(n)$称为$n$维表示。若$V$是有限维的，则称表示为有限维表示。
]

群$cal(G)$的任一表示空间为$V$的表示$T$定义了许多矩阵表示。因为若${v_1,...,v_n}$是$V$的一组基，即
$
  T(g) v_k = T(g)_(k j) v_j
$
定义的$T(g)_(k j)$就是表示$T$在基${v_1,...,v_n}$下的矩阵元素。$V$的基底的每一种不同选择，给出一个由$T$确定的$cal(G)$的新的矩阵表示。例如
$
  v_j = S_(j i) v'_i
$
给出新的基底${v'_1,...,v'_n}$所对应的矩阵表示
$
  T'(g) = S^(-1) T(g) S
$
由
$
  (T')_(l i) v'_i = T v'_l = T S^(-1)_(l j) S_(k i) v'_i = S^(-1)_(l k) T v_k = S^(-1)_(l k) T_(k j) v_j = S^(-1)_(l k) T_(k j) S_(j i) v'_i
$
- 两个复$n$维向量空间之间的线性变换，如果它们的矩阵表示在某个基下是相似的，那么它们描述的是同一个线性变换。

#definition(subname: [子表示])[
  群$cal(G)$的表示$G: g |-> T(g)$对应的表示空间$V$若具有一个在$G-$线性作用下不变的子空间$U$，则称$U$是$V$的*不变子空间*，并称$T$在$U$上的限制为$cal(G)$的一个*子表示*。
]

#definition(subname: [不可约表示])[
  群$cal(G)$的表示$T$若没有非平凡的不变子空间，则称$T$是*不可约表示*。
]
不可约表示中的任何一个元素出发通过若干次群变换，总可以将其变成任何一个指定的元素，而可约表示做不到。

#definition(subname: [直和])[
  群$cal(G)$的两个表示$T_1$和$T_2$的直和$T_1 plus.o T_2$是将两个表示作用在同一个向量空间上的和。
]
若一个表示$T$经过适当的基变换后可以写成若干个不可约表示的直和，则称$T$是可约表示。

=== 对称性

#definition(subname: [对称性])[
  物理体系具有*对称性*指不同观察者观察同一实验得到同样的实验结果。
]

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
  幺正算符满足
  $
    braket(U Psi, U Phi) = braket(Psi, Phi)
  $
  即
  $
    U^(-1) = U^dagger
  $
  且有线性
  $
    U (alpha Psi + beta Phi) = alpha U Psi + beta U Phi
  $
  #newpara()

  反幺正算符满足
  $
    braket(U Psi, U Phi) = braket(Psi, Phi)^*
  $
  且有*反线性*
  $
    U (alpha Psi + beta Phi) = alpha^* U Psi + beta^* U Phi
  $
]
我们把反线性算符都采用如下的Hermite共轭定义
$
  braket(Phi, A^dagger Psi) = braket(A Phi, Psi)^* = braket(Psi, A Phi)
$
就有，对于幺正和反幺正算符$U$，都有
$
  U^dagger = U^(-1)
$

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
下面我们只讨论$phi(T_2, T_1) = 0$的情况。

=== 连续对称性

$hat(U) = 1$是一个恒等变换，它把态矢量映射到自身，是一个幺正算符
$
  hat(U)=1: ket(Psi) |-> ket(Psi)
$
#note(subname: [反幺正算符不可能连续趋于恒等算符])[
  如果$hat(A)$是反幺正算符，则
  $
    hat(A)(i ket(psi)) = -i hat(A) ket(psi)
  $
  变换$hat(A)(theta), theta -> 0$时
  $
    hat(A)(theta) -> 1
  $
  但
  $
    hat(A)(theta)(i ket(psi)) -> -i ket(psi)
  $
  这是不可能的，所以反幺正算符不可能连续趋于恒等算符。
]
任何可以通过一些参数的连续变化变成恒等变换的对称性变换，由连续性要求一定要由幺正算符而不是反幺正算符来代表。特别地，当无穷接近恒等变换时，可以引入无穷小的实參数来描述
$
  hat(U) = 1 + i epsilon hat(t)
$
$hat(U)$的幺正性要求
$
  hat(U)^dagger hat(U) = (1 - i epsilon hat(t)^dagger)(1 + i epsilon hat(t)) = 1 + i epsilon (hat(t) - hat(t)^dagger) + O(epsilon^2) = 1
$
这意味着
$
  hat(t) = hat(t)^dagger
$
$hat(t)$是Hermite算符，称为*生成元*。它是连续对称性变换的无穷小生成元，也是一个物理可观测量的候选者。

一类由一组有限个实连续参数$theta^alpha$描述，所有变换都连续地连接到恒等变换的变换形成的群叫联通Lie群。它的生成元$hat(t)^alpha$是Hermite算符，称为Lie代数。例如$"SO"(3)$的Lie代数是$"so"(3)$，它的生成元是角动量算符$hat(J)^i$。

两个群变换复合以后仍然是一个群变换
$
  T(overline(theta)) T(theta) in cal(G)
$
所以一定能用某个新的参数表示
$
  theta_"new" = f(theta, overline(theta))
$
因此
$
  T(overline(theta)) T(theta) = T(f(theta, overline(theta)))
$
这里的$f$就是群乘法在参数空间中的表达。就有
$
  hat(U)(T(overline(theta))) hat(U)(T(theta)) = hat(U)(T(f(theta, overline(theta))))
$
#newpara()
恒等变换对应$theta = 0$
$
  f^a (theta, 0) = f^a (0, theta) = theta^a
$
因此在恒等元附近
$
  f^a (theta, overline(theta)) = theta^a + overline(theta)^a +f^a_(b c) overline(theta)^b theta^c + O(theta^3)
$
一阶就是普通相加，二阶开始出现群真正的非平凡结构。同时展开$U(T(theta))$在恒等元附近
$
  hat(U)(T(theta)) = 1 + i theta^a hat(Q)_a + 1/2 theta^b theta^c hat(Q)_(b c) + O(theta^3)
$
其中$hat(Q)_a, hat(Q)_(b c) = hat(Q)_(c b)$是不依赖$theta, overline(theta)$的算符。且$hat(Q)_a$是Hermite算符。

我们把
$
  hat(U)(T(overline(theta))) hat(U)(T(theta)) = hat(U)(T(f(theta, overline(theta))))
$
展开，比较二阶项
$
  (1 + i overline(theta)^a hat(Q)_a + 1/2 overline(theta)^b overline(theta)^c hat(Q)_(b c) + O(overline(theta)^3)) (1 + i theta^a hat(Q)_a + 1/2 theta^b theta^c hat(Q)_(b c) + O(theta^3))\
  = 1 + i (theta^a + overline(theta)^a + f^a_(b c) overline(theta)^b theta^c) hat(Q)_a + 1/2 (theta^b + overline(theta)^b + f^b_(d e) overline(theta)^d theta^e)(theta^c + overline(theta)^c + f^c_(f g) overline(theta)^f theta^g) hat(Q)_(b c) + O(theta^3, overline(theta)^3)\
  1 + i(theta^a + overline(theta)^a + f^a_(b c) overline(theta)^b theta^c) hat(Q)_a + 1/2 (theta^b + overline(theta)^b)(theta^c + overline(theta)^c + f^c_(f g) overline(theta)^f theta^g) hat(Q)_(b c) + O(theta^3, overline(theta)^3)\
  = 1 + i(theta^a + overline(theta)^a) hat(Q)_a + overline(theta)^b theta^c (i f^a_(b c) hat(Q)_a + hat(Q)_(b c)) + 1/2 overline(theta)^b overline(theta)^c hat(Q)_(b c) + 1/2 theta^b theta^c hat(Q)_(b c) + O(theta^3, overline(theta)^3)
$
得到
$
  hat(Q)_(b c) = - hat(Q)_b hat(Q)_c - i f^a_(b c) hat(Q)_a
$
同理
$
  hat(Q)_(c b) = - hat(Q)_c hat(Q)_b - i f^a_(c b) hat(Q)_a
$
相减得到
$
  hat(Q)_b hat(Q)_c - hat(Q)_c hat(Q)_b = - i f^a_(b c) hat(Q)_a + i f^a_(c b) hat(Q)_a
$
从而得到Lie代数的对易关系
$
  [hat(Q)_b, hat(Q)_c] = i C^a_(b c) hat(Q)_a
$
其中
$
  C^a_(b c) = - f^a_(b c) + f^a_(c b)
$
并且有生成元对称化
$
  hat(Q)_(b c) = - 1/2 (hat(Q)_b hat(Q)_c + hat(Q)_c hat(Q)_b) - i/2 (f^a_(b c) + f^a_(c b)) hat(Q)_a
$
这就是Lie代数的结构常数。通过它可以定义出展开地所有高阶项，将无穷小变换叠加到有限大变换。

#note[
  我们一般习惯在张量记号中把基底用下标表示，分量用上标表示。这里的$theta^a$是Lie群的参数，$hat(Q)_a$是Lie代数的生成元。它们是对偶的。

  例如Lorentz指标中
  $
    x_mu = eta_(mu nu) x^nu, eta_(mu nu) = diag(1, -1, -1, -1)
  $
  会改变空间分量符号
  $
    x^mu = (t,x,y,z), x_mu = (t,-x,-y,-z)
  $
]

#newpara()
另一方面在单位元附近群参数的可加性可将有限的参数分解为无穷多的单位元附近的参数的叠加
$
  hat(U)(T(theta)) & = lim_(N->oo) (hat(U)(T(theta/N)))^N = lim_(N->oo) (1 + i theta^a/N hat(Q)_a + O(theta^2/N^2))^N \
                   & = e^(i theta^a hat(Q)_a)
$
所以Lie群的有限变换可以由Lie代数的生成元指数化得到，$hat(Q)_a$是Lie代数的生成元。注意到若$theta^alpha$有量纲，那么$hat(Q)_a$是其逆量纲。

另外
$
  1/2(i hat(Q)_a theta^a)^2 =^"形式变换" -1/4 theta^b theta^c (hat(Q)_b hat(Q)_c + hat(Q)_c hat(Q)_b)
$
就有
$
  f^a_(b c) = - f^a_(c b)
$
#newpara()

生成元天然可能就是某种物理可观测量。实际上一些最重要的物理量恰好就是生成元：
- 空间平移的生成元：动量
  $
    U(vb(a)) = e^(i vb(a) dot hat(vb(p)))
  $
- 时间平移的生成元：Hamiltonian
  $
    U(t) = e^(i t hat(H))
  $
- 旋转的生成元：角动量
  $
    U(vb(theta)) = e^(i vb(theta) dot hat(vb(J)))
  $
生成元和参数对偶。


#note(subname: [对易是否意味着量子力学？])[
  事实上非对易本身并不意味着量子力学，其背后的Lie群/Lie代数式相当经典的。
  $
    {F,G}_"Piosson" = sum_i (pdv(F, q_i) pdv(G, p_i) - pdv(F, p_i) pdv(G, q_i)) <-> 1/(i hbar) [hat(F), hat(G)]
  $
  #newpara()

  如果$G$生成一个对称性，那么经典情况下
  $
    {H,G} = 0
  $
  Hamilton方程给出
  $
    dv(G, t) = {G,H} + pdv(G, t) = 0
  $
  这说明$G$是守恒量。量子力学中
  $
    [hat(H), hat(G)] = 0
  $
  Heisenberg方程也给出
  $
    dv(hat(G), t) = 1/(i hbar) [hat(G), hat(H)] + pdv(hat(G), t) = 0
  $
  于是同样得到$hat(G)$是守恒量。Noether定理在经典力学和量子力学都是Hamilton/Lie结构的必然结果。

  在经典力学里虽然满足
  $
    {q,p} = 1
  $
  但在一个确定的相空间点
  $
    (q,p)
  $
  上，$q$和$p$是确定的。量子力学中
  $
    [hat(q), hat(p)] = i hbar
  $
  却意味着不存在同时把二者精确确定的共同本征态，并导致
  $
    Delta q Delta p >= hbar/2
  $
  这才是量子算符非对易真正不同于经典 Poisson 非对易的地方。

  经典理论和量子理论都需要描述连续变换的生成元，而 Poisson bracket 和 commutator 恰好分别承担了完全相同的角色。

  *物理可观测量作为算符的非对易性+Born规则/Hilbert空间结构才产生我们通常所说的量子现象。*
  - 经典力学：状态是相空间中的一个点，$q,p$只是这个点的两个坐标，Piosson括号是相空间几何和生成关系
    - 经典状态根本不是一个波函数，经典纯态是一个点，形式化地表示成相空间上的分布：
      $
        rho(q, p) = delta(q-q_0) delta(p-p_0)
      $
      因为$rho(q, p)$是一个联合概率分布
      $
        rho(q, p) >= 0, integral dd(q, p) rho(q, p) = 1
      $
  - 量子力学：状态是 Hilbert 空间中的向量，$q,p$是作用在状态上的算符，对易关系让本征值的测量结果不可能同时精确确定
    - 位置和动量互为 Fourier 共轭：一个函数在 $x$ 空间越窄，它的 Fourier transform 在 $p$ 空间就越宽
    - 量子力学一般没有这样的普通正定联合概率分布，Wigner function$W(x,p)$是一个准概率分布，可能为负
]

#note(subname: [Weyl–Wigner：正则量子化])[
  量子力学中空间平移由幺正算符表示
  $
    U(a) = e^(-i/hbar a hat(p))
  $
  要求$hat(p)$真正生成位置平移
  $
    U^dagger (a) hat(q) U(a) = hat(q) + a
  $
  对$a=0$求导
  $
    evaluated(dv(, a) U^dagger (a) hat(q) U(a))_(a=0) = 1
  $
  另一方面
  $
    evaluated(dv(, a) U^dagger (a) hat(q) U(a))_(a=0) &= evaluated(dv(, a) e^(i/hbar a hat(p)) hat(q) e^(-i/hbar a hat(p)))_(a=0) \
    &= i/hbar evaluated(hat(p) U^dagger hat(q) U - U^dagger hat(q) hat(p) U)_(a=0)\
    & = i/hbar (hat(p) hat(q) - hat(q) hat(p)) = i/hbar [hat(p), hat(q)]
  $
  从而自然能够得到，如果我们还要要求$hat(p)$是空间平移生成元，就必须有
  $
    [hat(q), hat(p)] = i hbar
  $
  这样 canonical commutation relation 就有明确的几何意义了。

  经典 Hamilton 力学的相空间带有辛结构
  $
    omega = dd(q) and dd(p)
  $
  无穷小正则变换保持辛结构，它决定了 Poisson bracket
  $
    delta F = epsilon {F, G}_"Piosson"
  $
  量子力学中无穷小变换保持 Hilbert 空间的内积结构
  $
    delta hat(F) = i/hbar epsilon [hat(G), hat(F)]
  $
  因此对应关系
  $
    {F, G}_"Piosson" <-> 1/(i hbar) [hat(F), hat(G)]
  $
  保持的是：“生成元如何产生连续变换”的 Lie 结构。

  因为$hat(q), hat(p)$是无界算符，有定义域问题，所以严格数学上直接操作$[hat(q), hat(p)] = i hbar$是不严格的。Weyl 的想法是研究它们指数化以后得到的有限变换
  $
    U(a) = e^(-i/hbar a hat(p)), V(b) = e^(i/hbar b hat(q))
  $
  它们分别代表位置平移和动量平移。它们满足
  $
    U(a) V(b) = e^(-i/hbar a b) V(b) U(a)
  $
  这里用到了
  #theorem(subname: [BCH formula])[
    $
      e^A e^B = e^(A + B + 1/2 [A, B] + 1/12 ([A, [A, B]] + [B, [B, A]]) + ...)
    $
  ]
  由于$e^[A,B]$是常数，所以可以交换，得到
  $
    U(a) V(b) = e^(-i/hbar a b) V(b) U(a)
  $
  这就是 Weyl relation。它说：先做位置平移，再做动量平移，和先做动量平移，再做位置平移，最终的量子态只差一个相位。所以辛几何结构
  $
    omega = dd(q) and dd(p)
  $
  在量子理论里，变成了平移算符之间的中心相位。

  把位置平移和动量平移合起来
  $
    W(q,p) = e^(i/hbar (p hat(q) - q hat(p)))
  $
  这些算符不是普通的二维平移群，因为乘法时会多出一个 phase。大致有
  $
    W(z_1) W(z_2) = e^(i/(2hbar) omega(z_1, z_2)) W(z_1 + z_2)
  $
  其中
  $
    z = (q, p), omega(z_1, z_2) = q_1 p_2 - q_2 p_1
  $
  $omega$正是经典辛形式，把$omega$嵌进了量子幺正算符的乘法法则。*量子化就是把经典相空间的平移群变成带中心相位的 Heisenberg 群表示。*

  经典物理量是相空间函数，我们想构造一个对应
  $
    f(q,p) <-> hat(f)
  $
  普通正则量子化会遇到 ordering ambiguity
  $
    hat(q) hat(p) != hat(p) hat(q)
  $
  Weyl 的办法是采用完全对称排序，例如
  $
    q p <-> 1/2 (hat(q) hat(p) + hat(p) hat(q))
  $
  更一般地，不直接量子化$q^m p^n$这些多项式，通过 Fourier 展开把一切函数分解成指数
  $
    f(q,p) = integral dd(alpha, beta) tilde(f)(alpha,beta) e^(i(alpha q + beta p))
  $
  然后定义
  $
    hat(f) = integral dd(alpha, beta) tilde(f)(alpha,beta) e^(i(alpha hat(q) + beta hat(p)))
  $
  这就是 Weyl quantization，通过 Weyl 算符完成*量子化*。这样的指数结构由于其不对易性，就完成了对称排序。

  量子算符也可以对应回某个相空间函数
  $
    hat(A) <-> A_W (q,p)
  $
  其中$A_W (q,p)$是算符$hat(A)$在相空间的 Weyl symbol。最典型的就是密度算符
  $
    hat(rho) <-> W(q,p)
  $
  对应 Wigner function。对于纯态$psi(q)$
  $
    W(q,p) = 1/(2 pi hbar) integral dd(y) e^(i/hbar p y) psi^*(q - y/2) psi(q + y/2)
  $
  很像经典相空间概率分布，但它可能为负，所以称为准概率分布。

  在从$hat(A)$到$A_W (q,p)$的映射中，算符的乘法变成了 Moyal star product
  $
    hat(A) hat(B) <-> A_W (q,p) star B_W (q,p)\
    (hat(A) hat(B))_W = A_W star B_W
  $
  即
  $
    & hat(A), hat(B) &   -->^"operator product" & hat(A) hat(B) & \
    & arrow.b "W"    &                          & arrow.b "W"   & \
    & A_W, B_W       & -->^"Moyal star product" & A_W star B_W  &
  $
  star product 是 operator product 在相空间中的像。Weyl transform 把算符变成相空间函数，为了让非交换结构不丢失，普通的函数乘法要被替换成 Moyal star product。其中
  $
    A_W (q,p) star B_W (q,p) &= A_W (q,p) exp((i hbar)/2 (arrow.l(pdv(, q)) arrow.r(pdv(, p)) - arrow.l(pdv(, p)) arrow.r(pdv(, q)))) B_W (q,p)\
    & = A B + (i hbar)/2 {A, B}_"Piosson" + O(hbar^2)
  $
  非交换性就是由这个 Moyal star product 体现出来的
  $
    {A, B}_"Moyal" = 1/(i hbar) (A star B - B star A) = {A, B}_"Piosson" + O(hbar^2)
  $
  这是一种deformation quantization
  $
    A star B = A B + O(hbar), (A star B - B star A)/(i hbar) = {A, B}_"Piosson" + O(hbar^2)
  $
  所以量子理论可以理解成经典相空间函数代数的非交换形变，这里$hbar$就是 deformation parameter
  $
    A star B -> A B, hbar -> 0
  $
  于是
  $
    {A, B}_"Moyal" -> {A, B}_"Piosson", hbar -> 0
  $
  而
  $
    {A, B}_"Moyal" = 1/(i hbar) (A star B - B star A) <-> 1/(i hbar) [hat(A), hat(B)]
  $
  这就是 Weyl–Wigner 对应关系。在经典极限$hbar -> 0$下，star product 退化为普通函数乘法，Moyal bracket 退化为 Poisson bracket，这就是所谓的 classical limit。

  通过Moyal star product，量子力学的非交换结构被嵌入到相空间函数的代数中。Weyl–Wigner 对应关系提供了一个桥梁，使得经典和量子描述之间可以通过 deformation quantization 进行平滑过渡。这样对正则量子化的理解不仅仅是将经典变量替换为算符，而是通过非交换代数结构的引入，揭示了量子力学与经典力学之间深层次的联系。

]

== 狭义相对论与非齐次Lorentz变换

=== 准备与约定

协变与逆变的坐标矢量
- 逆变坐标四矢量
  $
    x^mu=(x^0,x^1,x^2,x^3)=(x^0,x^i)=(t,vb(x))
  $
- 协变坐标四矢量
  $
    x_mu=(x_0,x_1,x_2,x_3)=(x_0,x_i)=(t,-vb(x))
  $
- 坐标四矢量的内积
  $
    x^2 = x_mu x^mu = x^mu x_mu = x_0^2 - x_1^2 - x_2^2 - x_3^2 = t^2 - vb(x)^2
  $
除非特别声明，重复指标意味求和Einstein求和约定。要求和的两个相同指标必须是一个上标，一个下标。

逆变四矢量与协变四矢量的相互转换
$
  x^mu = g^(mu nu) x_nu, x_mu = g_(mu nu) x^nu\
$
其中$g$是Minkovski时空度规张量
$
  g_(mu nu) = g^(mu nu) = diag(1, -1, -1, -1)
$
有
$
  g^mu_(" "nu) = g^(mu mu') g_(mu' nu) = delta^mu_nu\
  g_(mu^" "nu) = g_(mu mu') g^(" "mu' nu) = delta_mu^nu
$

=== 狭义相对论基本原理

#theorem(subname: [狭义相对论基本原理])[
  狭义相对论基本原理指出：
  - 所有惯性参考系都等价
  - 光速在所有惯性系中都不变
]
对称性的角度：
- 物理规律在非齐Lorentz变换下不变。这样被称为*相对论原理*。
  $
    x^mu -> x'^mu = Lambda^mu_(" "nu) x^nu + a^mu
  $
变换参数$Lambda^mu_(" "nu)$是Lorentz变换矩阵，a^mu是平移参数。
- Lorentz变换矩阵必须保证时空间隔的不变性，这也意味着*光速不变*
  $
    g_(mu nu) dd(x'^mu) dd(x'^nu) = g_(mu nu) dd(x^mu) dd(x^nu)
  $
  间隔的不变性给出对变换参数$Lambda^mu_(" "nu)$的约束
  $
    g_(mu nu) Lambda^mu_(" "rho) Lambda^nu_(" "sigma) = g_(rho sigma)
  $
  即
  $
    g_(mu nu) Lambda^mu_(" "rho) = g_(rho sigma) (Lambda^(-1))^sigma_(" "nu)
  $
  则有
  $
    (Lambda^(-1))_(rho nu) = Lambda_(nu rho)
  $

=== Lorentz群

用$T(Lambda,a)$表示参数$Lambda^mu_(" "nu), a^mu$的非齐次Lorentz变换
$
  T(Lambda,a): x^mu -> x'^mu = Lambda^mu_(" "nu) x^nu + a^mu
$
可以证明其构成一个群。

非齐次Lorentz变换被$det Lambda = plus.minus 1$和$Lambda^0_(" "0)$分成四叶
- 正时叶：$det Lambda = 1, Lambda^0(" "0) <= 1$
- 正空间叶：$det Lambda = -1, Lambda^0(" "0) >= 1$
  - 可以看成正时叶的空间反射
    $
      cal(P)^0_(" "0) = 1, cal(P)^i_(" "j) = - delta^i_j
    $
- 负时叶：$det Lambda = 1, Lambda^0(" "0) <= -1$
  - 可以看成正时叶的时间反演
    $
      cal(T)^0_(" "0) = -1, cal(T)^i_(" "j) = delta^i_j
    $
- 负空间叶：$det Lambda = -1, Lambda^0(" "0) <= -1$
  - 可以看成正时叶的时间反演和空间反射

=== 无穷小行为

在单位变换附近，变换参数可以写为
$
  Lambda^mu_(" "nu) = g^mu_(" "nu) + omega^mu_(" "nu), a^mu = epsilon^mu
$
其中$omega^mu_(" "nu)$是无穷小的反对称矩阵，$epsilon^mu$是无穷小的平移参数。

相应的第一叶的有限大的变换
$
  Lambda^mu_(" "nu) = exp(omega)^mu_(" "nu), a^mu = epsilon^mu
$
$omega^mu_(" "nu)$是Lorentz代数的生成元，$epsilon^mu$是平移的生成元。

有限制
$
  g_(sigma rho) = g_(mu nu) (g^mu_(" "sigma) + omega^mu_(" "sigma)) (g^nu_(" "rho) + omega^nu_(" "rho)) = g_(sigma rho) + omega_(sigma rho) + omega_(rho sigma) + O(omega^2)
$
从而有反对称性
$
  omega_(sigma rho) = - omega_(rho sigma)
$
它把16个$omega^mu_(" "nu)$约束为6个独立的无穷小参数：
- 三个代表坐标系之间的空间坐标架相对转动
  $
    omega^i_j tilde epsilon_(i j k) theta^k
  $
  是Euler转角
- 三个代表坐标系之间的相对运动
  $
    omega^0_i = arctan(v^i)
  $
  （实际上是$beta^i$）是快度，它们是Lorentz boost的无穷小参数

=== 态矢量的Lorentz变换

Hilbert空间中不同参考系观察者对同一个态矢量描述之间的变换
$
  Psi -> U(Lambda,a) Psi
$
其中
$
  U(Lambda,a) = U(T(Lambda,a))
$
是Lorentz群在态空间的幺正表示。它满足
$
  U(1 + omega, epsilon) = 1 + i/2 omega_(rho sigma) J^(rho sigma) + i epsilon^rho P_rho + O(omega^2, epsilon^2)
$
$U$的幺正性和$omega,rho$为实参数要求$J^(rho sigma)$是Hermite算符，$P_rho$是Hermite算符。它们是Lorentz群的生成元。
$
  J^(rho sigma) = - J^(sigma rho)
$
#newpara()

非齐次Lorentz群的Lie代数由$J^(rho sigma), P_rho$生成
$
  U(e^omega, epsilon) = e^(i/2 omega_(rho sigma) J^(rho sigma) + i epsilon^rho P_rho)
$
Hermite算符$J^(rho sigma)$和$P_rho$在非齐次洛伦兹变换下的性质
$
  T^(-1) (Lambda, a) J^(rho sigma) T(Lambda, a) = Lambda^rho_(" "mu) Lambda^sigma_(" "nu) J^(mu nu)\
$

== 单粒子态按非齐次Lorentz变换和内部对称性分类

=== 单粒子态

非齐次洛伦兹变换（至少是其第一叶）和某些可能的内部对称性变换是量子力学态空间应该具有的对称性。

这些对称性将物理态按其在非齐次洛伦兹变换下的行为分类，此分类可以用来确定在非齐次洛伦兹变换和内部对称性变换下哪些态在是可以相互转化的，那些不能*将单粒子态定义为一组算符的本征态*。

能量和动量算符之间是相互对易的。而且由于时空对称性与内部对称性之间应该是没有关系的，它导致能量和动量算符应该与内部对称性变换的生成元算符$Q_a$对易。

一般说生成元算符$Q_a$之间不一定相互对易，我们考虑它其中的一个相互对易的子部分$Q_overline(a)$它们和能量动量算符之间可以有共同本征态。我们将单粒子态定义为它们的本征态$Psi_(p,sigma)$
$
  P^mu Psi_(p, sigma) = p^mu Psi_(p, sigma)\
  Q_overline(a) Psi_(p, sigma) = q_overline(a) Psi_(p, sigma)
$
其中$p^µ$和$q_overline(a)$是能量动量和内部对称性生成元的本征值，$sigma$是其他的量子数。我们称$p^µ$为四动量，$q_overline(a)$为内部对称性量子数。

我们把$σ$取纯分立值的态定义为单粒子态。

#note(subname: [为什么单粒子态要选为能动量算符的本征态？])[
  - 能量本征态
    - 因为能量算符控制体系的演化
    - 单粒子态的能量本征值不随时间变化
    - 本征态随时间演化的效应只是一个相角
    - 这就是所谓的定态
  - 为什么选动量本征态
    - 能量动量随不同参考系相互转化！
    - 动量标记的引入使得单粒子态成为有方向的态！
]

=== 时空平移

纯时空平移变换$U(1, a)$是可以连续变形到单位变换的变换。它只能是幺正算符，不可能是反幺正算符。
$
  U(e^omega, epsilon) = e^(i/2 omega_(rho sigma) J^(rho sigma) + i epsilon^rho P_rho)
$
在纯时空平移下
$
  U(1, a) Psi_(p, sigma) = e^(i a^mu P_mu) Psi_(p, sigma) = e^(i a^mu p_mu) Psi_(p, sigma)
$
其中$e^(i a^mu P_mu)$是时空平移的幺正算符，$e^(i a^mu p_mu)$是其在动量表象下的表示。物理意义是平面波的相位随时空平移而改变。

Casimir算符
$
  P^mu P_mu Psi_(p, sigma) = p^mu p_mu Psi_(p, sigma) = M^2 Psi_(p, sigma)
$
质量参数$M^2$在这里是作为Lorentz群的Casimir算符$P^2$的本征值。它是一个标量，和参考系无关。我们称$M^2$为单粒子态的质量平方，这是质壳条件中的$M$。

=== 时空转动

纯时空转动变换$U(Lambda, 0)$是可以连续变形到单位变换的变换。它只能是幺正算符，不可能是反幺正算符。

定义由$Lambda$和$a^mu = 0$导致的纯时空转动变换算符为$U(Lambda) = U(Lambda, 0)$。它是幺正算符，满足
$
  u(Lambda, a) P^rho U^(-1) (Lambda, a) = Lambda^("  "rho)_(mu) P^mu
$
在纯时空转动变换下
$
  P^mu U(Lambda) Psi_(p, sigma) &= U(Lambda) (U^(-1) (Lambda) P^mu U(Lambda)) Psi_(p, sigma) = U(Lambda) (U(Lambda)^(-1) P^mu U(Lambda)) Psi_(p, sigma)\
  &= U(Lambda) (Lambda^(-1mu)_(rho) P^rho) Psi_(p, sigma) = Lambda^(mu)_(" "rho) p^(rho) U(Lambda) Psi_(p, sigma)
$


单粒子态按动量进行分类
$p^2 = g_(mu nu) p^mu p^nu$和$p^0$的符号(当$p^2≥0$时)在洛伦兹变换下是不变的，并且任何两个具有同样的p2值和p0符号(当p2 ≥0时)的动量一定可以通过某个洛伦兹变换相联系,作业9可用这两个非齐次洛伦兹变换的不变量的取值标记不同的动量类
- $p^2 = M^2 > 0, p^0 > 0$：有质量的正能态
- $p^2 = M^2 > 0, p^0 < 0$：有质量的负能态
- $p^2 = 0, p^0 > 0$：无质量的正能态
- $p^2 = 0, p^0 < 0$：无质量的负能态
- $p^2 = - N^2 < 0$：虚质量态
- $p^mu = 0$：真空态
