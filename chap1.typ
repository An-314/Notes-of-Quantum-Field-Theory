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

#definition(subname: [协变与逆变的坐标矢量])[
  - 逆变坐标四矢量 contravariant vector
    $
      x^mu=(x^0,x^1,x^2,x^3)=(x^0,x^i)=(t,vb(x))
    $
  - 协变坐标四矢量 covariant vector
    $
      x_mu=(x_0,x_1,x_2,x_3)=(x_0,x_i)=(t,-vb(x))
    $
  - 坐标四矢量的内积
    $
      x^2 = x_mu x^mu = x^mu x_mu = x_0^2 - x_1^2 - x_2^2 - x_3^2 = t^2 - vb(x)^2
    $
  除非特别声明，重复指标意味求和Einstein求和约定。要求和的两个相同指标必须是一个上标，一个下标。
]

逆变四矢量与协变四矢量的相互转换
$
  x^mu = g^(mu nu) x_nu, x_mu = g_(mu nu) x^nu\
$
其中$g$是Minkovski时空度规张量
$
  g_(mu nu) = g^(mu nu) = diag(1, -1, -1, -1)
$
#definition(subname: [Minkovski时空度规张量])[
  Minkovski时空度规张量$g_(mu nu)$是一个对称矩阵，它定义了四维时空中坐标矢量的内积。它的形式为
  $
    g_(mu nu) = diag(1, -1, -1, -1)
  $
  其中$g_(00) = 1$表示时间分量的正号，而空间分量$g_(11) = g_(22) = g_(33) = -1$表示空间分量的负号。这种度规张量反映了狭义相对论中时间和空间的不同性质。
]
事实上
$
  g^(mu nu) g_(nu rho) = delta^mu_rho, g_(mu nu) g^(" "nu rho) = delta_mu^rho\
  g^(-1) = g
$
$
  g^mu_(" "nu) = g^(mu mu') g_(mu' nu) = delta^mu_nu\
  g_mu^(" "nu) = g_(mu mu') g^(" "mu' nu) = delta_mu^nu
$
其中$g^mu_(" "nu)$是单位矩阵，$delta^mu_nu$是Kronecker delta。

在因为狭义相对论里，不同观察者虽然不同意$Delta t, Delta vb(x)$，但他们同意$Delta s^2 = Delta t^2 - Delta vb(x)^2 = Delta x^mu Delta x_mu$，即时空间隔不变。这个不变性是狭义相对论的核心。

一般的协变和逆变矢量定义如下
- 逆变矢量
  $
    A^mu = (A^0, A^1, A^2, A^3) = (A^0, A^i) = (A^0, vb(A)) = g^(mu nu) A_nu
  $
- 协变矢量
  $
    V_mu = (V_0, V_1, V_2, V_3) = (V_0, V_i) = (V_0, -vb(V)) = g_(mu nu) V^nu
  $
- 矢量的内积
  $
    A dot V & = A^mu V_mu = A_mu V^mu = g_(mu nu) A^mu V^nu = g^(mu nu) A_mu V_nu \
            & = A_0 V^0 - A_1 V^1 - A_2 V^2 - A_3 V^3 = A_0 V^0 - vb(A) dot vb(V)
  $
- 对坐标微商的逆变四矢量
  $
    partial^mu = pdv(, x_mu) = (partial^0, partial^1, partial^2, partial^3) = (partial^0, partial^i) = (partial^0, - grad_i) = g^(mu nu) partial_nu
  $
- 对坐标微商的协变四矢量
  $
    partial_mu = pdv(, x^mu) = (partial_0, partial_1, partial_2, partial_3) = (partial_0, partial_i) = (partial_0, grad_i) = g_(mu nu) partial^nu
  $
- D'Alembert算符
  $
    square &= partial^mu partial_mu = partial_mu partial^mu = g_(mu nu) partial^mu partial^nu = g^(mu nu) partial_mu partial_nu\
    &= partial_0^2 - partial_1^2 - partial_2^2 - partial_3^2 = partial_t^2 - grad^2
  $

=== 狭义相对论基本原理

#theorem(subname: [狭义相对论基本原理])[
  狭义相对论基本原理指出：
  - 所有惯性参考系都等价
  - 光速在所有惯性系中都不变
]
对称性的角度：
- 物理规律在非齐次Lorentz变换下不变。这样被称为*相对论原理*
  $
    x^mu -> x'^mu = Lambda^mu_(" "nu) x^nu + a^mu
  $
变换参数$Lambda^mu_(" "nu)$是Lorentz变换矩阵，$a^mu$是平移参数。
- Lorentz变换矩阵必须保证时空间隔的不变性，这也意味着*光速不变*
  $
    g_(mu nu) dd(x'^mu) dd(x'^nu) = g_(mu nu) dd(x^mu) dd(x^nu)
  $

间隔的不变性给出对变换参数$Lambda^mu_(" "nu)$的约束
$
  g_(mu nu) Lambda^mu_(" "rho) Lambda^nu_(" "sigma) = g_(rho sigma)\
  Lambda^TT g Lambda = g
$
从而
$
  Lambda^(-1) = g Lambda^TT g
$
即
$
  g_(mu nu) Lambda^mu_(" "rho) = g_(rho sigma) (Lambda^(-1))^sigma_(" "nu)\
  (Lambda^(-1))^mu_(" "nu) = g^(mu rho) Lambda^sigma_(" "rho) g_(sigma nu) = Lambda_nu^(" "mu)\
$
降指标得到
$
  (Lambda^(-1))_(rho nu) = Lambda_(nu rho)\
$
#note[
  对于指标语言
  $
    (Lambda^TT)_rho^(" "mu) = Lambda^mu_(" "rho)
  $
  对于协变矢量
  $
    A_mu = g_(mu nu) A^nu
  $
  有
  $
    A'_mu &= g_(mu rho) A'^rho = g_(mu rho) Lambda^rho_(" "sigma) A^sigma = g_(mu rho) Lambda^rho_(" "sigma) g^(" "sigma nu) A_nu \
    &= (Lambda^(-1))_(mu nu) A_nu
  $
  所以，上下指标确实记录着不同的变换规律
  $
    A'^mu = Lambda^mu_(" "nu) A^nu, A'_mu = (Lambda^(-1))^(nu)_(" "mu) A_nu
  $
  从几何上说，协变矢量可以看成“输入一个矢量，输出一个数”的线性函数；它与矢量的配对应当不依赖坐标，所以两者的变换必须互相抵消。
]
带平移的逆变换于是为
$
  x^mu = (Lambda^(-1))^mu_(" "nu) (x'^nu - a^nu) = Lambda_nu^(" "mu) (x'^nu - a^nu)
$
从而
$
  x_mu = (Lambda^(-1))_mu^(" "nu) (x'_nu - a_nu) = Lambda^nu_(" "mu) (x'_nu - a_nu)
$
从而
$
  x_alpha = g_(alpha mu) Lambda_nu^(" "mu) (x'_nu - a_nu)\
  x_alpha = Lambda^beta_(" "alpha) g_(beta nu) (x'_nu - a_nu)
$
这样得到
$
  Lambda^mu_(" "sigma) Lambda^nu_(" "rho) g_(mu nu) = g_(sigma rho)\
$


=== Lorentz群

#definition(subname: [非齐次Lorentz变换])[
  非齐次Lorentz变换是指在四维时空中，坐标矢量$x^mu$经过线性变换和位移后得到新的坐标矢量$x'^mu$的变换。它可以表示为：
  $
    T(Lambda,a): x^mu -> x'^mu = Lambda^mu_(" "nu) x^nu + a^mu
  $
  其中，$Lambda^mu_(" "nu)$是Lorentz变换矩阵，满足保持时空间隔不变的条件，而$a^mu$是平移向量。
]
可以证明其构成一个群。
- 存在单位变换
  $
    T(I, 0): x^mu -> x'^mu = x^mu
  $
- 对于任意一个变换$T(Lambda, a)$，存在逆变换$T(Lambda^(-1), -Lambda^(-1) a)$（见HW1.1）
  $
    T(Lambda, a) T(Lambda^(-1), -Lambda^(-1) a) = T(I, 0)
  $
- 对两个标安环变换$T(Lambda,a)$和$T(overline(Lambda),overline(a))$，它们的复合变换为
  $
    T(Lambda, a) T(overline(Lambda), overline(a)) = T(Lambda overline(Lambda), Lambda overline(a) + a)
  $
从而构成群结构。
#definition(subname: [非齐次Lorentz群])[
  *非齐次Lorentz群*是指所有非齐次Lorentz变换的集合，记为$"ISO"(1, 3)$。它包括所有保持时空间隔不变的线性变换和位移。非齐次Lorentz群是一个10维Lie群，其中6个维度对应于Lorentz变换（旋转和平移），4个维度对应于平移。非齐次Lorentz群也被称作Poincaré群。
  $
    "ISO"(1, 3) = RR^(1,3) times.r "O"(1, 3)
  $
  #newpara()

  *Lorentz群*是指所有保持时空间隔不变的线性变换的集合（$a = 0$），记为$"O"(1, 3)$。它是非齐次Lorentz群的一个子群，只包含旋转和平移，不包括位移。Lorentz群是一个6维Lie群，其中3个维度对应于空间旋转，3个维度对应于Lorentz boost（相对运动）。
]

#newpara()
对
$
  Lambda^mu_(" "sigma) Lambda^nu_(" "rho) g_(mu nu) = g_(sigma rho)
$
取行列式
$
  (det Lambda)^2 det g = det g => det Lambda = plus.minus 1
$
以及取00分量
$
  (Lambda^0_(" "0))^2 - sum_(i=1)^3 (Lambda^0_(" "i))^2 = 1 => Lambda^0_(" "0) >= 1 or Lambda^0_(" "0) <= -1
$
- $det Lambda = plus.minus 1$区分四维取向是否保持
- $Lambda^0_(" "0) >= 1 or Lambda^0_(" "0) <= -1$区分未来方向和过去方向是否互换
例如未来指向的单位类时矢量
$
  e_0 = (1, 0, 0, 0)
$
变换后为
$
  e'_0 = Lambda e_0 = (Lambda^0_(" "0), Lambda^1_(" "0), Lambda^2_(" "0), Lambda^3_(" "0))
$
它仍然是单位类时矢量，但时间分量可以为正，也可以为负。

非齐次Lorentz变换被$det Lambda = plus.minus 1$和$Lambda^0_(" "0)$分成四叶
- 正时叶：$det Lambda = 1, Lambda^0_(" "0) >= 1$
  - 该叶形成子群$RR^(1,3) times.r "SO"^+(1, 3)$，其中$"SO"^+(1, 3)$称为*正时正规Lorentz群*，它是非齐次Lorentz群的连通分支
- 正空间叶：$det Lambda = -1, Lambda^0_(" "0) >= 1$
  - 可以看成正时叶的空间反射
    $
      cal(P)^0_(" "0) = 1, cal(P)^i_(" "j) = - delta^i_j
    $
- 负时叶：$det Lambda = 1, Lambda^0_(" "0) <= -1$
  - 可以看成正时叶的时间反演
    $
      cal(T)^0_(" "0) = -1, cal(T)^i_(" "j) = delta^i_j
    $
- 负空间叶：$det Lambda = -1, Lambda^0_(" "0) <= -1$
  - 可以看成正时叶的时间反演和空间反射

=== Poincaré代数

在单位变换附近，变换参数可以写为
$
  Lambda^mu_(" "nu) = g^mu_(" "nu) + omega^mu_(" "nu), a^mu = epsilon^mu
$
其中$omega^mu_(" "nu)$是无穷小的反对称矩阵，$epsilon^mu$是无穷小的平移参数。

有限制
$
  g_(sigma rho) = g_(mu nu) (g^mu_(" "sigma) + omega^mu_(" "sigma)) (g^nu_(" "rho) + omega^nu_(" "rho)) = g_(sigma rho) + omega_(sigma rho) + omega_(rho sigma) + O(omega^2)
$
从而有反对称性
$
  omega_(sigma rho) = - omega_(rho sigma)\
  w^TT g + g omega = 0
$
它把16个$omega^mu_(" "nu)$约束为6个独立的无穷小参数：
$
  omega^mu_(" "nu) = mat(
    0, kappa_1, kappa_2, kappa_3;
    kappa_1, 0, -theta_3, theta_2;
    kappa_2, theta_3, 0, -theta_1;
    kappa_3, -theta_2, theta_1, 0
  )
$
于是Lorentz代数无穷小坐标变化为
$
  delta x^mu = omega^mu_(" "nu) x^nu\
  delta t = vb(kappa) dot vb(x), delta vb(x) = vb(kappa) t + vb(theta) times vb(x)
$
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

尤其生成的第一叶的*有限大的变换*
$
  Lambda^mu_(" "nu) = exp(omega)^mu_(" "nu), a^mu = epsilon^mu
$
$omega^mu_(" "nu)$是Lorentz代数的生成元，$epsilon^mu$是平移的生成元。下面证明$e^omega$保持度规，定义一条矩阵路径
$
  Lambda(s) = exp(s omega)
$
考察
$
         M(s) & = Lambda^TT (s) g Lambda(s) \
  dv(M(s), s) & = dv(Lambda^TT (s), s) g Lambda(s) + Lambda^TT (s) g dv(Lambda(s), s) \
              & = Lambda^TT (s) omega^TT g Lambda(s) + Lambda^TT (s) g omega Lambda(s) \
              & = 0
$
从而
$
  G(s) = Lambda^TT (s) g Lambda(s) = G(0) = g
$
这说明
$
  Lambda = exp(omega)
$
#newpara()
对于$t-z$平面的Boost，考虑生成矩阵
$
  B = mat(
    0, 1;
    1, 0,
  ), omega = chi B
$
有
$
  e^(chi B) = I cosh chi + B sinh chi = mat(
    cosh chi, sinh chi;
    sinh chi, cosh chi
  )
$
对应
$
  beta = tanh chi, gamma = cosh chi, gamma beta = sinh chi
$
这就是标准的Lorentz boost矩阵。快度$chi$是纯Boost的无穷小参数。它们是Lorentz代数的生成元。对于同方向 boost
$
  B(chi_2) B(chi_1) = B(chi_1 + chi_2)
$
#newpara()
事实上一个*Lorentz变换*是
- *旋转*
  $
    R(theta) = exp(theta dot J)
  $
  其中$J$是旋转的生成元
- *Boost*
  $
    B(kappa) = exp(kappa dot K)
  $
  其中$K$是Boost的生成元
- *空间反射*
  $
    P = diag(1, -1, -1, -1)
  $
- *时间反演*
  $
    T = diag(-1, 1, 1, 1)
  $
的组合。

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
$U$的幺正性和$omega,rho$为实参数要求$J^(rho sigma)$是Hermite算符，$P_rho$是Hermite算符，它们是Lorentz群的生成元
$
  (J^(rho sigma))^dagger = J^(rho sigma), (P_rho)^dagger = P_rho
$
结合$omega_(sigma rho) = - omega_(rho sigma)$，可以得到
$
  J^(rho sigma) = - J^(sigma rho)
$
#newpara()

非齐次Lorentz群的Lie代数由$J^(rho sigma), P_rho$生成
$
  U(e^omega, epsilon) = e^(i/2 omega_(rho sigma) J^(rho sigma) + i epsilon^rho P_rho)
$
半直积结构给出Lorentz变换和平移一般不对易，严格地
$
  U(Lambda, a) = U(I, a) U(Lambda, 0) = e^(i epsilon_rho P^rho) e^(i/2 omega_(rho sigma) J^(rho sigma))
$
其中$omega_(rho sigma), epsilon_rho$可以有限大，$J^(rho sigma), P^rho$是生成元在态空间的表示。

Hermite算符$J^(rho sigma)$和$P_rho$在非齐次Lorentz变换下的性质
$
  T^(-1) (Lambda, a) = T(Lambda^(-1), -Lambda^(-1) a)\
  T(overline(Lambda), overline(a)) T(Lambda, a) = T(overline(Lambda) Lambda, overline(Lambda) a + overline(a))
$
$
  U(Lambda, a) U(1+omega, epsilon) U^(-1) (Lambda, a) = U(Lambda (1 + omega) Lambda^(-1), Lambda epsilon - Lambda omega Lambda^(-1) a)
$
考虑$omega, epsilon$的一次
$
  U(Lambda, a) (1/2 omega_(rho sigma) J^(rho sigma) + epsilon_rho P^rho) U^(-1) (Lambda, a)\ = 1/2 (Lambda omega Lambda^(-1))_(mu nu) J^(mu nu) + (Lambda epsilon - Lambda omega Lambda^(-1) a)_mu P^mu
$
比较两边，注意反对称性
$
  J^(rho sigma) = - J^(sigma rho), (Lambda^(-1))^mu_(" "nu) = g^(mu rho) Lambda^sigma_(" "rho) g_(sigma nu)
$
有
$
  U(Lambda, a) J^(rho sigma) U^(-1) (Lambda, a) = Lambda^(" "rho)_(mu) Lambda^(" "sigma)_(nu) (J^(mu nu) + a^mu P^nu - a^nu P^mu)\
  U(Lambda, a) P^rho U^(-1) (Lambda, a) = Lambda^(" "rho)_(mu) P^mu
$
- 对齐次Lorentz变换$a = 0$，有$J^(rho sigma)$是二阶张量，$P^rho$是四矢量
  $
            U P^rho U^(-1) & = Lambda^(" "rho)_(mu) P^m \
    U J^(rho sigma) U^(-1) & = Lambda^(" "rho)_(mu) Lambda^(" "sigma)_(nu) J^(mu nu)
  $
- 对平移变换$Lambda^mu_(" "nu) = g^mu_(" "nu)$，有$P^rho$不变，$J^(rho sigma)$改变；动量不依赖时空原点，而角动量类的量依赖原点。
  $
            U P^rho U^(-1) & = P^rho \
    U J^(rho sigma) U^(-1) & = J^(rho sigma) + a^rho P^sigma - a^sigma P^rho
  $
  写成三维形式就是
  $
    vb(J) -> vb(J) - vb(a) times vb(P), H -> H, vb(P) -> vb(P)
  $
  和经典中的
  $
    vb(r - a) times vb(p) = vb(r) times vb(p) - vb(a) times vb(p)
  $
  是一致的。

#note(subname: [无穷小共轭产生对易子])[
  $
    G = 1/2 omega_(mu nu) J^(mu nu) + epsilon_rho P^rho
  $
  那么
  $
    U = I + i G + O(omega^2, epsilon^2), u^(-1) = I - i G + O(omega^2, epsilon^2)
  $
  对于任意算符$A$
  $
    U A U^(-1) = (I + i G) A (I - i G) + O(omega^2, epsilon^2) = A + i [G, A] + O(omega^2, epsilon^2)
  $
  这就是从“群的有限变换”走到“Lie代数的对易子”的标准方法。
]
#newpara()
再把外层的$Lambda$变成无穷小变换
$
  Lambda^mu_nu = g^mu_nu + omega^mu_nu, a^mu = epsilon^mu
$
考察一阶项
$
  i[1/2 omega_(mu nu) J^(mu nu) + epsilon_rho P^rho, J^(rho sigma)] &= omega^(" "rho)_(mu) J^(mu sigma) + omega^(" "sigma)_(nu) J^(rho nu) + epsilon^rho P^sigma - epsilon^sigma P^rho\
  1[1/2 omega_(mu nu) J^(mu nu) + epsilon_rho P^rho, P^rho] &= omega^(" "rho)_(mu) P^mu
$
比较等式两边$omega_(mu nu)$和$epsilon_rho$的系数，得到Poincaré代数的对易关系
$
  i [J^(mu nu), J^(rho sigma)] &= g^(nu rho) J^(mu sigma) - g^(mu rho) J^(nu sigma) - g^(sigma mu) J^(rho nu) + g^(sigma nu) J^(rho mu)\
  i [P^mu, J^(rho sigma)] &= g^(mu rho) P^sigma - g^(mu sigma) P^rho\
  i [P^mu, P^nu] &= 0
$
将$J$的六个分量和$P$的四个分量
$
  vb(J) & = {J^1, J^2, J^3}, = {-J_1, -J_2, -J_3} = {-J^(23), -J^(31), -J^(12)} \
  vb(K) & = {K^1, K^2, K^3} = {-K_1, -K_2, -K_3} = {-J^(01), -J^(02), -J^(03)} \
      H & = P^0 \
  vb(P) & = {P^1, P^2, P^3}
$
其中
- $vb(J)$是通常的角动量算符
- $vb(K)$是推进Boost算符
- $vb(P)$是通常的动量算符
- $H$是通常的能量算符
将这些定义代入四维代数，可以得到对易关系
$
  [J^i, J^j] = i epsilon^(i j k) J^k, [J^i, K^j] = i epsilon^(i j k) K^k, [K^i, K^j] = - i epsilon^(i j k) J^k
$
$
  [J^i, P^j] = i epsilon^(i j k) P^k, [K^i, P^j] = - i delta^(i j) H
$
$
  [J^i, H] = [P^i, H] = [H, H] = 0, [K^i, H] = + i P^i
$
从而
$
  [K^i, H^2 - vb(P)^2] = 0
$
这正是
$
  E^2 - p^2
$
在 boost 下不变的算符版本。

我们现在寻找由生成元构成、却不随参考系和原点变化的量。角动量依赖原点，纯平移会使
$
  J^(rho sigma) -> J^(rho sigma) + a^rho P^sigma - a^sigma P^rho
$
所以不能直接把所有$J^(rho sigma)$分量当成粒子的内禀标签。一种构造思路是：再与动量收缩，并做全反对称化，使原点相关的$a P$项自动消失。经典力学就有
$
  vb(J)' =vb(J) - vb(a) times vb(P)
$
但
$
  vb(P) dot vb(J)' = vb(P) dot vb(J)
$
将总角动量分成整体运动与内部运动：
$
  vb(J) = vb(R) times vb(P) + vb(S)
$
其中$vb(R)$是质心位置，$vb(S)$是内禀角动量。于是
$
  vb(P) dot vb(J) = vb(P) dot vb(S)
$
这就给出*Pauli-Lubanski 算符*
$
  W^mu = 1/2 epsilon^(mu nu rho sigma) P_nu J_(rho sigma)
$
有
$
  W^0 = P_1 J_(2 3) + P_2 J_(3 1) + P_3 J_(1 2) = vb(P) dot vb(J)\
$
于经典对应，以及
$
  W^1 = - P_0 J_(2 3) + P_2 J_(0 3) - P_3 J_(0 2) = P^0 J^1 + P^2 K^3 - P^3 K^2\
  W^2 = - P_0 J_(3 1) + P_3 J_(0 1) - P_1 J_(0 3) = P^0 J^2 + P^3 K^1 - P^1 K^3\
  W^3 = - P_0 J_(1 2) + P_1 J_(0 2) - P_2 J_(0 1) = P^0 J^3 + P^1 K^2 - P^2 K^1
$
即
$
  vb(W) = P^0 vb(J) + vb(P) times vb(K)
$
因此
$
  i[W^mu, J^(rho sigma)] = g^(mu rho) W^sigma - g^(mu sigma) W^rho\
$
$
  [P^mu, W^nu] = 0
$
即$W^mu$不依赖于时空原点的选择。以及
$
  P_mu W^mu = 0
$
在$P_mu W^mu = 0$意味着$W^mu$在Minkowski意义下与四动量正交。$W^mu$也按四矢量变换
$
  W^mu -> Lambda^mu_nu W^nu
$
单个没有内部自旋的经典质点的$W^mu = 0$，而有内部自旋的质点$W^mu != 0$。因此$W^mu$可以用来标记粒子的自旋。
#newpara()

Casimir算符，是与这个对称群的所有生成元都对易的算符，即进行任何这类对称变换，都不会改变 Casimir 的本征值。
$
  [C, P^mu] = [C, J^(rho sigma)] = 0
$
其中两个是
$
  P^mu P_mu, W^mu W_mu
$
即
$
  P^mu P_mu = H^2 - vb(P)^2 = M^2, W^mu W_mu = (W^0)^2 - vb(W)^2
$
因此，它们适合用来标记“不会因为换参考系而变成另一种”的物理属性。这里它们分别通向质量和自旋。

== 单粒子态按非齐次Lorentz变换和内部对称性分类

=== 单粒子态

非齐次Lorentz变换（至少是其第一叶）和某些可能的内部对称性变换是量子力学态空间应该具有的对称性。

这些对称性将物理态按其在非齐次Lorentz变换下的行为分类，此分类可以用来确定在非齐次Lorentz变换和内部对称性变换下哪些态在是可以相互转化的，那些不能*将单粒子态定义为一组算符的本征态*。

同一种粒子处于不同动量、不同自旋取向的状态，它们通常不应该仅仅因为运动状态不同，就被称为不同种类的粒子。所以需要区分：粒子的种类和粒子状态。粒子的种类是由Casimir算符的本征值来标记的，而粒子状态则是由能量动量和自旋等其他量子数来标记的。

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
      - 对于不含时的Hamiltonian，在Schrödinger绘景下，本征态矢量随时间演化的规律是
        $
          ket(Psi(t)) = e^(- i H t) ket(Psi(0)) = e^(- i E t) ket(Psi(0))
        $
        只是一个相位因子
    - 单粒子态的能量本征值不随时间变化
    - 本征态随时间演化的效应只是一个相角
    - 这就是所谓的定态
  - 为什么选动量本征态
    - 不同参考系会把能量与动量混合
      $
        E' = gamma (E - beta p_z), p'_z = gamma (p_z - beta E)
      $
      把完整四动量一起用作标签，才能让参考系变换的规则保持清楚
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

=== 时空转动与动量类

纯时空转动变换$U(Lambda, 0)$是可以连续变形到单位变换的变换。它只能是幺正算符，不可能是反幺正算符。

定义由$Lambda$和$a^mu = 0$导致的纯时空转动变换算符为$U(Lambda) = U(Lambda, 0)$。它是幺正算符，满足
$
  U(Lambda, a) P^rho U^(-1) (Lambda, a) = Lambda^("  "rho)_(mu) P^mu
$
在纯时空转动变换下
$
  P^mu U(Lambda) Psi_(p, sigma) &= U(Lambda) (U^(-1) (Lambda) P^mu U(Lambda)) Psi_(p, sigma) = U(Lambda) (U(Lambda)^(-1) P^mu U(Lambda)) Psi_(p, sigma)\
  &= U(Lambda) (Lambda^(-1mu)_(rho) P^rho) Psi_(p, sigma) = Lambda^(mu)_(" "rho) p^(rho) U(Lambda) Psi_(p, sigma)
$
从而$U(Lambda) Psi_(p, sigma)$是四动量$P^mu$的本征值为$Lambda p$的态，这也说明单粒子态有运动的方向。一般写作
$
  U(Lambda) Psi_(p, sigma) = sum_(sigma') C_(sigma' sigma)(Lambda, p) Psi_(Lambda p, sigma')
$
#newpara()
给定一个四动量$k^mu$，考虑所有能由Lorentz变换得到的动量
$
  cal(O)_k = {Lambda k | Lambda in "SO"^+(1, 3)}
$
称为Lorentz轨道。它是一个三维流形，称为*动量类*。不同的动量类之间不能通过Lorentz变换相联系。在固有正时Lorentz变换下，正能量与负能量的类时、类光动量分属不同轨道。

于是我们可以把*单粒子态按动量进行分类*：$p^2 = g_(mu nu) p^mu p^nu$和$p^0$的符号(当$p^2≥0$时)在Lorentz变换下是不变的，并且任何两个具有同样的$p^2$值和$p^0$符号(当$p^2≥0$时)的动量一定可以通过某个Lorentz变换相联系，*可用这两个非齐次Lorentz变换的不变量的取值标记不同的动量类*
- $p^2 = M^2 > 0, p^0 > 0$：有质量的正能态
- $p^2 = M^2 > 0, p^0 < 0$：有质量的负能态
- $p^2 = 0, p^0 > 0$：无质量的正能态
- $p^2 = 0, p^0 < 0$：无质量的负能态
- $p^2 = - N^2 < 0$：虚质量态
- $p^mu = 0$：真空态
每类动量中引入基本参考动量$k^mu$，使这类动量中任意动量都可以由此参考动量通过某个Lorentz变换得到
$
  p^mu = L^mu_(" "nu) k^nu
$
$L^mu_(" "nu)$是一个Lorentz变换矩阵，它将参考动量$k^mu$变换为任意动量$p^mu$。不同的动量类对应不同的基本参考动量$k^mu$，从而可以用这些参考动量来标记单粒子态的不同种类。
- $p^2 = M^2 > 0, p^0 > 0$：$k^mu = (M, 0, 0, 0)$
- $p^2 = M^2 > 0, p^0 < 0$：$k^mu = (-M, 0, 0, 0)$
- $p^2 = 0, p^0 > 0$：$k^mu = (kappa, 0, 0, kappa)$ $kappa$是频率
- $p^2 = 0, p^0 < 0$：$k^mu = (-kappa, 0, 0, -kappa)$
- $p^2 = - N^2 < 0$：$k^mu = (0, 0, 0, N)$
- $p^mu = 0$：$k^mu = (0, 0, 0, 0)$
对每种$k^mu$，研究使它不变的子Lorentz变换的集合
$
  W^mu_(" "nu) k^nu = k^mu
$
的$W$形成群
- 存在单位变换$I$，使得$I k = k$
- 对于任意一个变换$W$，存在逆变换$W^(-1)$，使得$W^(-1) W k = k$
- 对两个变换$W_1$和$W_2$，它们的复合变换$W_1 W_2$也使得$W_1 W_2 k = k$
这个群称为*稳定子群*，它是Lorentz群的一个子群。
#definition(subname: [Little Group W])[
  对于不同类的基本参考动量$k^mu$，使得$k^mu$不变的Lorentz变换的集合称为*Little Group W*。它是Lorentz群的一个子群。Little Group W的结构决定了单粒子态的自旋和极化等内部自由度。
]
不同$k^mu$对应的$W$变换不一定一样，它主要由参考动量为零的分量张开的空间决定
- $p^2 = M^2 > 0, p^0 > 0$：产生3个空间坐标之间的所有转动变换和空间反射变换
  - 描述它的连续对称性是$"SO"(3)$
    $
      W^mu_(" "nu) k^nu = k^mu
    $
    由于$k$只有第零分量非零
    $
      M W^mu_0 = M delta^mu_0 => W^0_0 = 1, W^i_0 = 0
    $
    但其他元素也不是任意的，还要满足Lorentz条件
    $
      W^TT g W = g
    $
    这个等式的$0j$分量
    $
      g_(mu nu) W^mu_(" "0) W^nu_(" "j) = g_(0 j) = 0 => W^0_(" "j) = 0
    $
    从而
    $
      W = mat(
        1, 0;
        0, R
      )
    $
    空间部分的度规条件
    $
      R^T R = I
    $
    限定在固有Lorentz变换下，$det R = 1$，从而$R in "SO"(3)$。这就是旋转群。
- $p^2 = M^2 > 0, p^0 < 0$：产生3个空间坐标之间的所有转动变换和空间反射变换
  - 描述它的连续对称性是$"SO"(3)$
- $p^2 = 0, p^0 > 0$：产生2个空间坐标之间的所有转动变换（包括空间反射变换），以及2个平移变换
  - 描述它的连续对称性是$"ISO"(2)$
- $p^2 = 0, p^0 < 0$：产生2个空间坐标之间的所有转动变换（包括空间反射变换），以及2个平移变换
  - 描述它的连续对称性是$"ISO"(2)$
- $p^2 = - N^2 < 0$：产生2个空间坐标和1个时间坐标之间的所有转动变换（包括空间反射变换）
  - 描述它的连续对称性是$"SO"(2,1)$
- $p^mu = 0$：产生3个空间坐标和1个时间坐标之间的所有转动变换（包括空间反射变换）
  - 描述它的连续对称性是$"SO"(3,1)$即Lorentz群本身

刚才说明*单粒子态按动量进行分类*
$
  P^mu U(Lambda) Psi_(p, sigma) = Lambda^(mu)_(" "rho) p^rho U(Lambda) Psi_(p, sigma)
$
$U(Λ) Psi_(p,sigma)$是动量为$Λ p$的态，此类态可用不同的下标$sigma'$来标记
$
  U(Lambda) Psi_(p, sigma) = sum_(sigma') C_(sigma' sigma) (Lambda, p) Psi_(Lambda p, sigma')
$
其中$C_(sigma' sigma) (Lambda, p)$是变换矩阵，下面研究它的结构。

先研究$Psi_(p, sigma)$对$sigma$的依赖结构，对固定不求和的$sigma$
$
  braket(Psi_(k, sigma), Psi_(k', sigma)) delta_(sigma sigma') &= braket(U(L(p)) Psi_(k, sigma), U(L(p)) Psi_(k', sigma'))\
  &= braket(sum_(sigma_1) C_(sigma_1 sigma) (L(p), k) Psi_(p, sigma_1), sum_(sigma'_1) C_(sigma'_1 sigma') (L(p), k') Psi_(p', sigma'_1))\
$
其中
$
  p = L(p) k, p' = L(p) k'
$
则有
$
  braket(Psi_(p, sigma), Psi_(p', sigma)) delta_(sigma sigma') &= sum_(sigma_1) C^*_(sigma_1 sigma) (L(p), k) C_(sigma_1 sigma') (L(p), k') braket(Psi_(p, sigma_1), Psi_(p', sigma_1))\
$
其中
$
  braket(Psi_(p, sigma_1), Psi_(p', sigma'_1)) = delta_(sigma_1 sigma'_1) delta^3 (vb(p) - vb(p'))\
$
但$delta^3 (vb(p) - vb(p'))$不是Lorentz不变的，在积分中会给出一个因子
$
  dd(vb(p)') = dd(vb(p)) jacobianmatrix(vb(p)'; vb(p), delim: "|") =^"z boost" gamma(1 + beta p_z/p^0) dd(vb(p)) = p'^0/p^0 dd(vb(p))\
  delta^3 (vb(p) - vb(p')) = k^0/p^0 delta^3 (vb(k) - vb(k'))
$
从而
$
  braket(Psi_(p, sigma), Psi_(p', sigma)) delta_(sigma sigma') &= braket(Psi_(k, sigma), Psi_(k', sigma)) k^0/p^0 sum_sigma_1 C^*_(sigma_1 sigma) (L(p), k) C_(sigma_1 sigma') (L(p), k') \
$
上式成立是因为归一化条件，对比两侧的系数就给出$C$矩阵的幺正性
$
  C^dagger (L(p), k) C(L(p), k') = p^0/k^0 I
$
可以把$C$矩阵对角化为$lambda$
$
  C(L(p), k) = sqrt(p^0/k^0) S lambda S^(-1), lambda^dagger lambda = I
$
从而
$
  U(Lambda) Psi_(p, sigma) &= sum_(sigma') C_(sigma' sigma) (Lambda, p) Psi_(Lambda p, sigma')\
  U(Lambda) sum_sigma_1 Psi_(p, sigma_1) S_(sigma_1 sigma) &= sum_(sigma') C_(sigma' sigma) (Lambda, p) sum_sigma_1 S_(sigma_1 sigma) Psi_(Lambda p, sigma') \
  &= sum_sigma' (S^(-1) C(Lambda, p) S)_(sigma_1 sigma) S_(sigma' sigma_1) Psi_(Lambda p, sigma') \
$
对每个动量$vb(p)$，我们希望可以重新选择$sigma$的基底，吸收那个幺正矩阵
$
  Psi_(p, sigma) -> sum_(sigma_1) S_(sigma_1 sigma) Psi_(p, sigma_1)\
  C(Lambda, p) -> S^(-1) C(Lambda, p) S
$
这样就可以把$C(Lambda, p)$矩阵对角化为$lambda$，并且在新的基上
$
      U(Lambda) Psi_(p, sigma) & = sum_(sigma') C_(sigma' sigma) (Lambda, p) Psi_(Lambda p, sigma') \
  C_(sigma' sigma) (Lambda, p) & = sqrt(p^0/k^0) lambda_(sigma) delta_(sigma' sigma), abs(lambda_(sigma)) = 1 \
$
我们就约定用参考动量态定义一般动量态
$
  U(L(p)) Psi_(k, sigma) &= sum_sigma' C_(sigma' sigma) (L(p), k) Psi_(p, sigma') = lambda_sigma sqrt(p^0/k^0) Psi_(p, sigma) \
$
注意到$abs(lambda_sigma)=1$，我们可以重新选择相角
$
  Psi_(k, sigma) -> Psi_(k, sigma)/lambda_sigma
$
做完所有以上的约定，就有*用参考动量态定义一般动量态的约定*
$
  Psi_(p,sigma) = sqrt(k^0/p^0) U(L(p)) Psi_(k, sigma) = N(p) U(L(p)) Psi_(k, sigma) \
$ <text.red>
这是$C_(sigma' sigma) (L(p), k)$矩阵的结构。$N(p)$是一个归一化因子，它可以通过选择态的归一化来确定。


在纯时空转动变换下
$
  U(Lambda) Psi_(p, sigma) = N(p) U(Lambda L(p)) Psi_(k, sigma) = N(p) U(L(Lambda p)) U(L^(-1)(Lambda p)Lambda L(p)) Psi_(k, sigma)
$
$L^(-1)(Lambda p)Lambda L(p)$作用在参考动量$k^mu$上不改变其值
$
  (L^(-1)(Lambda p)Lambda L(p))^mu_(" "nu) k^mu = (L^(-1) (Lambda p) Lambda L(p) k)^mu = k^mu
$
$L^(-1)(Lambda p)Lambda L(p)$使得参考动量$k$不变的Lorentz变换$W$，从而
$
  W(Lambda, p) = L^(-1) (Lambda p) Lambda L(p)
$
是使参考动量$k$保持不变的Lorentz变换。它是Little Group W的一个元素。于是
$
  U(W) Psi_(k, sigma) = sum_(sigma') D_(sigma' sigma) (W, k) Psi_(k, sigma')\
$
#newpara()
因此Lorentz变换为
$
  U(Lambda) Psi_(p, sigma) &= N(p) U(L(Lambda p)) U(W(Lambda, p)) Psi_(k, sigma) = N(p) U(L(Lambda p)) sum_(sigma') D_(sigma' sigma) (W(Lambda, p)) Psi_(k, sigma')\
  &= (N(p) / N(Lambda p)) sum_(sigma') D_(sigma' sigma) (W(Lambda, p), k) Psi_(Lambda p, sigma')
$
这意味着$C_(sigma' sigma) (Lambda, p)$矩阵的结构由Little Group W的表示$D_(sigma' sigma) (W(Lambda, p), k)$和$N(p)$的选择决定。$N(p)$是一个归一化因子，它可以通过选择态的归一化来确定。

最终得到*单粒子态在时空转动和时空平移联合变换下的行为*：
- 时空转动
  $
    U(Lambda, 0) Psi_(p, sigma) = sqrt((Lambda p)^0 / p^0) sum_(sigma') D_(sigma' sigma) (W(Lambda, p), k) Psi_(Lambda p, sigma')
  $
- 时空平移
  $
    U(1, a) Psi_(p, sigma) = e^(i a_mu p^mu) Psi_(p, sigma)
  $
- 时空转动和时空平移联合变换
  $
    T(overline(Lambda), overline(a)) T(Lambda, a) = T(overline(Lambda) Lambda, overline(Lambda) a + overline(a))
  $
  $
    U(Lambda, a) Psi_(p, sigma) &= U(1, a) U(Lambda, 0) Psi_(p, sigma) = e^(i a_mu p^mu) sqrt((Lambda p)^0 / p^0) sum_(sigma') D_(sigma' sigma) (W(Lambda, p), k) Psi_(Lambda p, sigma')\
    &= sqrt((Lambda p)^0 / p^0) sum_(sigma') D_(sigma' sigma) (W(Lambda, p), k) e^(i a_mu p^mu) Psi_(Lambda p, sigma')
  $<text.red>
  动量标签变成了$Lambda p$，非动量标签一般会发生混合，相位$e^(e^(i a_mu p^mu))$是平移变换的效应，而平方根因子$sqrt((Lambda p)^0 / p^0)$是Lorentz变换的效应，它不是一种新的“自旋效应”。

我们下面不讨论
- 负能态：在物理上至今尚未发现实际与对应的正能态具有类似的性质
- 虚质量态：至今尚未发现；重新选择真空使其消失，只有一维tachyon 和无穷维么正表示
- 真空态：$Psi_0 = Psi_(p = 0)$要求唯一，只有一维恒等和角动量非零的无穷维spurion幺正表示。
所以我们只讨论有质量和无质量的正能量态。

角动量的$z$分量和能量及动量算符作用到能生成这样态的参考动量本征态$Psi_(k,sigma)$上相互对易
$
  [J^i, P^j] = i epsilon^(i j k) P^k, [J^i, H] = [P^i, H] = [H, H] = 0
$
我们就选取参考动量的本征态$Psi_(k,sigma)$为$J^3$的本征态
$
  J^3 Psi_(k, sigma) = sigma Psi_(k, sigma)
$
其中$sigma$是$J^3$的本征值。

=== 正能单粒子态

对于有质量和无质量的正能态
$
  p^0 = E >= 0\
  p^2 = E^2 - vb(p)^2 = M^2 > 0
$
引入速度矢量
$
  vb(v) = vb(p) / E = vb(p) / p^0 = vb(p) / sqrt(vb(p)^2 + M^2) = pdv(E, vb(p))
$
目前没有坐标时间导数图像，看不出和坐标的关系。从而
$
  abs(vb(v))^2 = vb(v)^2 = vb(p)^2 / (vb(p)^2 + M^2) < 1\
  vb(p)^2 = (M^2 vb(v)^2) / (1 - vb(v)^2)
$
在低速展开为
$
  vb(p) & = (M vb(v))/sqrt(1 - vb(v)^2) = M vb(v) + O(vb(v)^3) \
      E & = sqrt(vb(p)^2 + M^2) = M/sqrt(1 - vb(v)^2) = M + 1/2 M vb(v)^2 + O(vb(v)^4)
$
这就对应了经典力学的动量和能量的低速极限；Casimir 参数$M$在低速极限下与Newton惯性质量匹配。

从而若$M=0$，$abs(vb(v))=1$，这是光速极限。

==== 有质量的正能单粒子态

对于有质量的正能单粒子态，参考动量为
$
  k^mu = (M, 0, 0, 0)
$
我们后面会证明从参考动量$k^mu$到任意动量$p^mu$的Lorentz变换矩阵$L(p)$是
$
       L^i_k (p) & = delta^i_k + (gamma - 1) hat(p)_i hat(p)_k \
  L^i_(" "0) (p) & = L^0_(" "i) (p) = hat(p)_i sqrt(gamma^2 - 1) = p^i/M \
  L^0_(" "0) (p) & = gamma = sqrt((M^2 + vb(p)^2) / M^2) = 1/sqrt(1 - vb(v)^2)
$ <text.red>
其中
$
  hat(p)_i = p^i / abs(vb(p))\
  sqrt(gamma^2 - 1) = abs(vb(p)) / M = abs(vb(v)) / sqrt(1 - vb(v)^2)
$
注意到
$
  L(p) = R(vu(p)) B(abs(vb(p))) R^(-1) (vu(p))\
$
$R(vu(p))$是把$z$轴旋转到$vu(p)$方向的旋转，$B(abs(vb(p)))$是沿着$z$轴的Lorentz boost变换
$
  B(abs(vb(p))) = mat(
    gamma, 0, 0, sqrt(gamma^2 - 1);
    0, 1, 0, 0;
    0, 0, 1, 0;
    sqrt(gamma^2 - 1), 0, 0, gamma
  )
$
#newpara()
回到$L(p)$，有
$
  L(p) = R(vu(p)) B(abs(vb(p))) R^(-1) (vu(p))\
$
选择一个三维旋转矩阵
$
  R_3 = (vb(a), vb(b), vu(p)), R_3 R_3^TT = I\
  R_3 mat(0; 0; abs(vb(p))) = vu(p) abs(vb(p)) = vb(p)
$
从而
$
  L(p) & = R(vu(p)) B(abs(vb(p))) R^(-1) (vu(p)) = mat(1, O; O, R_3) B mat(1, O; O, R_3^TT) \
       & = mat(gamma, sqrt(gamma^2 - 1) hat(p)^TT; sqrt(gamma^2 - 1) hat(p), I + (gamma - 1) hat(p) hat(p)^T) \
$
最终矩阵只依赖$vu(p)$，不再依赖横向基$vb(a),vb(b)$；也就是说，虽然把$z$轴转到$vu(p)$的旋转并不唯一，但
$
  R(vu(p)) B(abs(vb(p))) R^(-1) (vu(p)) = L(p)
$
得到的这个纯boost是唯一的，不同的横向轴选择并没有留下额外旋转。
#newpara()
前面的讨论我们有小群元素
$
  W(Lambda, p) = L^(-1) (Lambda p) Lambda L(p)\
$
现在我们考虑一下特殊情况下的计算。
#newpara()
对于任意*纯空间转动*$Lambda = cal(R)$我们先计算
$
  W(cal(R), p) = L^(-1) (cal(R) p) cal(R) L(p) = R(cal(R) vu(p)) B^(-1) (abs(vb(p))) R^(-1) (cal(R) vu(p)) cal(R) R(vu(p)) B(abs(vb(p))) R^(-1) (vu(p))
$
其中
$
  R^(-1) (cal(R) vu(p)) cal(R) R(vu(p)) = R(theta)
$
将$z$轴转到$vu(p)$，再转到$cal(R) vu(p)$，再转回$z$轴，这就是一个绕$z$轴的旋转；并且与$B(abs(vb(p)))$对易
$
  R^(-1) (cal(R) vu(p)) cal(R) R(vu(p)) = R(theta) = mat(
    1, 0, 0, 0;
    0, cos(theta), sin(theta), 0;
    0, -sin(theta), cos(theta), 0;
    0, 0, 0, 1
  )
$
从而
$
  W(cal(R), p) = R(cal(R) vu(p)) B^(-1) (abs(vb(p))) R(theta) B(abs(vb(p))) R^(-1) (vu(p)) = R(cal(R) vu(p)) R(theta) R^(-1) (vu(p)) = cal(R)
$
#newpara()
对于任意*共线boost*，即沿着$vu(p)$方向的boost变换$Lambda = cal(B)$，我们有
$
  B_gamma = mat(
    gamma, 0, 0, sqrt(gamma^2 - 1);
    0, 1, 0, 0;
    0, 0, 1, 0;
    sqrt(gamma^2 - 1), 0, 0, gamma
  ), B_gamma^(-1) = mat(
    gamma, 0, 0, -sqrt(gamma^2 - 1);
    0, 1, 0, 0;
    0, 0, 1, 0;
    -sqrt(gamma^2 - 1), 0, 0, gamma
  )
$
沿$z$轴的$p$和$cal(B) p$，若$gamma_0, gamma_1, gamma_2$分别是三个沿着$z$轴的boost变换的Lorentz因子，且$gamma_1$连接$gamma_0,gamma_2$，则
$
  p = B_(gamma_0) k, cal(B) p = B_(gamma_1) k, cal(B) p = B_(gamma_2) k = B_(gamma_1) B_(gamma_0) k
$
有
$
  mat(
    gamma_1, 0, 0, sqrt(gamma_1^2 - 1);
    0, 1, 0, 0;
    0, 0, 1, 0;
    sqrt(gamma_1^2 - 1), 0, 0, gamma_1
  ) mat(M gamma_0; 0 ; 0; M sqrt(gamma_0^2 - 1)) = mat(M gamma_2; 0 ; 0; M sqrt(gamma_2^2 - 1))
$
从而
$
  gamma_2 = gamma_1 gamma_0 + sqrt(gamma_1^2 - 1) sqrt(gamma_0^2 - 1)\
  sqrt(gamma_2^2 - 1) = sqrt(gamma_1^2 - 1) gamma_0 + gamma_1 sqrt(gamma_0^2 - 1)
$
则有
$
  cal(B)_(gamma_1) B_(gamma_0) = B_(gamma_2)
$
沿动量方向（取$z$方向）的boost变换小群
$
  L(p)_(vb(p) parallel vu(z)) = cal(B)_(gamma_0)\
  L(cal(B) p)_(vb(cal(B) p) parallel vu(z)) = cal(B)_(gamma_2)\
  Lambda = cal(B)_(gamma_1)
$
则有对于共线的boost
$
  W(cal(B), p) = L^(-1) (cal(B)_(gamma_2) p) cal(B)_(gamma_1) L(cal(B)_(gamma_0) p) = B^(-1)_(gamma_2) B_(gamma_1) B_(gamma_0) = I
$
这意味着同一个方向的boost变换诱导出来的小群元素$W$是单位元。

对于*更一般的boost*
$
  p = L(p) k, cal(B) = L(p'), cal(B) = p'' = L(p') L(p) k
$
有
$
  mat(
    gamma', sqrt(gamma'^2 - 1) hat(p')^TT;
    sqrt(gamma'^2 - 1) hat(p'), I + (gamma' - 1) hat(p') hat(p')^T
  ) mat(p^0; vu(p) p^0) = mat(p''^0; vu(p'') p''^0)
$
则
$
          p''^0 & = gamma' p^0 + sqrt(gamma'^2 - 1) hat(p')^T vu(p) p^0 \
  vu(p'') p''^0 & = sqrt(gamma'^2 - 1) hat(p') p^0 + (I + (gamma' - 1) hat(p') hat(p')^T) vu(p) p^0
$
一般作为纯boost的$L$
$
  L(p') L(p) = L(p'') R(p', p)
$
其中$R(p', p)$是一个绕$z$轴的旋转，在$p',p$共线时，$R(p', p) = I$。从而
$
  W(cal(B), p) = L^(-1) (cal(B) p) cal(B) L(p) = R(p', p)
$
这是前面同一方向的boost变换的推广。我们可以由此给出
$
  L(p') L(p) = L(p'') R(p', p)
$
得到
$
    & mat(
        gamma' gamma + sqrt(gamma'^2 - 1) sqrt(gamma^2 - 1) hat(p')^TT hat(p), gamma' sqrt(gamma^2 - 1) hat(p)^TT + sqrt(gamma'^2 - 1) hat(p')^TT + (gamma-1) sqrt(gamma'^2 - 1) (hat(p')^TT hat(p)) hat(p')^TT;
        gamma' sqrt(gamma^2 - 1) hat(p) + sqrt(gamma'^2 - 1) hat(p') + (gamma-1) sqrt(gamma'^2 - 1) (hat(p')^TT hat(p)) hat(p'), sqrt(gamma'^2 - 1) sqrt(gamma^2 - 1) hat(p') hat(p)^TT + (I + (gamma' - 1) hat(p') hat(p')^TT) (I + (gamma - 1) hat(p) hat(p)^TT)
      ) \
  = & mat(
        gamma', sqrt(gamma'^2 - 1) hat(p')^TT;
        sqrt(gamma'^2 - 1) hat(p'), I + (gamma' - 1) hat(p') hat(p')^TT
      ) mat(
        gamma, sqrt(gamma^2 - 1) hat(p)^TT;
        sqrt(gamma^2 - 1) hat(p), I + (gamma - 1) hat(p) hat(p)^TT
      ) \
    & = mat(
        gamma'', sqrt(gamma''^2 - 1) hat(p'')^TT;
        sqrt(gamma''^2 - 1) hat(p''), I + (gamma'' - 1) hat(p'') hat(p'')^TT
      ) mat(
        1, 0;
        0, R_3(p', p)
      )
$
其中$R_3(p', p)$是$R(p', p)$的空间部分，从而得到
$
  R_3(p', p) = (I - (1 - 1/gamma'') hat(p)'' hat(p)''^TT) (sqrt(gamma'^2 - 1) sqrt(gamma^2 - 1) hat(p') hat(p)^TT + (I + (gamma' - 1) hat(p') hat(p')^TT) (I + (gamma - 1) hat(p) hat(p)^TT))
$
#newpara()

进一步地，我们还可以说明$L(p)$是沿$vb(p)$的推进；记$B_vb(v)$为沿着速度方向的boost变换，则$L(p) = B_(vb(p)/p^0)$。首先考虑任意动量
$
  q => q' = L(q) q
$
有
$
  q'^i &= L^i_(" "k) (p) q^k + L^i_(" "0) (p) q^0 = (delta^i_k + (gamma - 1) hat(p)^i hat(p)_k) q^k + hat(p)_i/M q^0 = q^i + (gamma - 1) hat(p)^i hat(p)_k q^k + hat(p)_i/M q^0 \
  q'^k hat(p) &= q^k hat(p)_k + (gamma - 1) hat(p)_k q^k + abs(vb(p)) / M q^0\
  q'^i - q'^k hat(p)_k hat(p)^i &= q^i - (gamma - 1) hat(p)^i hat(p)_k q^k + p^i/M q^0 - q^k hat(p)_k hat(p)^i - (gamma - 1) hat(p)_k q^k hat(p)^i - abs(vb(p)) / M q^0 hat(p)^i \
  &= q^i - q^k hat(p)_k hat(p)^i
$
这意味着垂直于$vb(p)$的分量保持不变，只剩下沿着$vb(p)$的分量发生了变化，因而是沿着$vb(p)$的boost变换。并且
$
  q'^0 = L^0_(" "k) (p) q^k + L^0_(" "0) (p) q^0 = hat(p)_k sqrt(gamma^2 - 1) q^k + gamma q^0 = abs(vb(p)) / M q^k hat(p)_k + gamma q^0
$
从而
$
  mat(q'^0; q'_parallel) = mat(gamma, abs(vb(p)) / M; abs(vb(p)) / M, gamma) mat(q^0; q_parallel), vb(q)'_perp = vb(q)_perp
$
这意味着
$
  L(p) = B_(vb(p)/p^0)
$
特别地，取$q=p$有
$
  p'^i & = p^i + (gamma - 1) hat(p)^i hat(p)_k p^k + abs(vb(p)) / M p^0 = (2p^0)/M p^i \
  p'^0 & = L^0_(" "k) (p) p^k + L^0_(" "0) (p) p^0 = p^i/M p^i + p^0/M p^0 = (vb(p)^2 + (p^0)^2)/M = 2p^0/M p^0- M
$
得到
$
  p' = 2 p^0/M p - k
$
#newpara()
下面把沿$z$的 boost 写成矩阵指数
$
  B(abs(vb(p))) = mat(
    cosh(eta), 0, 0, sinh(eta);
    0, 1, 0, 0;
    0, 0, 1, 0;
    sinh(eta), 0, 0, cosh(eta)
  ) = exp(0, 0, 0, "arccosh" gamma; 0, 0, 0, 0; 0, 0, 0, 0; "arccosh" gamma, 0, 0, 0) = e^omega
$
其中纯推进变换的
$
        omega_3^0 & = omega_(0 3) = - omega_(3 0) = omega_0^3 = "arccosh" gamma = chi \
  omega_rho^sigma & = 0, (rho, sigma) != (0, 3), (3, 0)
$
#newpara()
然后我们还可以证明对于任意的boost变换$cal(B)$，小群元素$W(cal(B), p)$是一个纯转动（前面其实也给出了证明），即
$
  W(cal(B),p) = L^(-1) (cal(B) p) cal(B) L(p)
$
特别地
$
  W(cal(B),p) k = k
$
知道$W(cal(B),p)$是一个纯转动，下面我们证明它是一个把动量$vb(p)$旋转到$cal(B)(p - k/alpha)$的旋转，两者方向相同，但空间矢量之间还有一个比例因子$alpha$。注意到
$
  cal(B) p' = 2 p^0/M cal(B) p - cal(B) k
$
且
$
  W(cal(B), p) p &= L^(-1) (cal(B) p) cal(B) L(p) p = L^(-1) (cal(B) p) cal(B) p = (2p^0)/M L^(-1) (cal(B) p) cal(B) p - L^(-1) (cal(B) p) cal(B) k\
  & = (2p^0)/M k - L^(-1) (cal(B) p) cal(B) k
$
记
$
  cal(B) p = p'', cal(B) k = q, q' = L^(-1) (p'') q
$
则
$
  q' = mat(gamma, -sqrt(gamma^2 - 1) hat(p'')^TT; -sqrt(gamma^2 - 1) hat(p''), I + (gamma - 1) hat(p'') hat(p'')^TT) mat(q^0; vb(q))
$
其中
$
  gamma = sqrt(vb(p)^2 + M^2)/M, sqrt(gamma^2 - 1) = abs(vb(p))/M
$
从而
$
  q'^i & = q^i + p''^i ((p''^0/M - 1) (vb(p)'' - vb(q))/(vb(p)''^2) - q^0/M) \
  q'^0 & = - (vb(p) dot vb(q))/M + (p''^0 q^0)/M = (p''^mu q_mu)/M = (p^mu k_mu)/M = p^0
$
其中
$
  (W(cal(B), p) p)^i & = - (cal(B) k)^i + alpha (cal(B) p)^i = alpha(cal(B) p - k/alpha)^i \
  (W(cal(B), p) p)^0 & = p^0 \
               alpha & = (1 - p''^0/M) (vb(p)'' dot vb(q))/(vb(p)''^2) + q^0/M = (q^0 + p^0)/(p''^0 + M)
$
$alpha$依赖$cal(B),p$，且$alpha_(cal(B) = I) = 1$。并且
$
  (W(cal(B), p) p)^i
$<->
的空间部分模平方是$vb(p)^2$，这是由$(W(cal(B),p)p)^0 = p^0$决定的。且$p - k/alpha$的空间方向还是$vb(p)$，只是能量有改动。

#theorem(subname: [])[
  对于任意的boost变换$cal(B)$，小群元素$W(cal(B), p)$是一个把动量$vb(p)$旋转到$cal(B)(p - k/alpha)$的旋转，两者方向相同，但空间矢量之间还有一个比例因子$alpha$。注意到
  $
    cal(B) p = 2 p^0/M cal(B) p - cal(B) k
  $
  且
  $
    W(cal(B), p) p & = alpha (cal(B) p - k/alpha) = L^(-1) (cal(B) p) cal(B) L(p) p \
  $
]
#newpara()

更一般地，可以证明任意的$Lambda$都可以一般唯一分解为一个纯转动$cal(R)'$再加一个纯boost$cal(B)$，即
$
  Lambda = cal(R)' cal(B)
$
从而
$
  W(Lambda, p) &= L^(-1) (Lambda p) Lambda L(p) = L^(-1) (cal(R)' cal(B) p) cal(R)' L(cal(B) p) L^(-1) (cal(B) p) cal(B) L(p) \
  &= W(cal(R)', cal(B) p) W(cal(B), p) = cal(R)
$
其中
$
  cal(R) = e^Theta = cal(R)' W(cal(B), p)
$
$cal(R)$正是将$vb(p)$旋转到$Lambda(p - k/alpha) = cal(R)' cal(B)(p - k/alpha)$的空间旋转，其中
$
  W(Lambda, p) p & = cal(R)' W(cal(B), p) p = alpha cal(R)' cal(B)(p - k/alpha) \
                 & = alpha Lambda(p - k/alpha)
                   alpha = (p^0 + (Lambda k)^0)/((Lambda p)^0 + M)
$
转轴和转角由
$
  R'_3 R_3(p', p)
$
决定，其中$R'_3$是$cal(R)'$的空间部分。

*至此我们已经研究清楚了具体的$W(Lambda, p)$。*下面我们研究这个旋转进入某一份自旋表示后，怎样成为真正作用于$sigma$标签的矩阵$D^((j))(W)$。

我们刚才知道了
$
  W(Lambda, p) = L^(-1) (Lambda p) Lambda L(p) = cal(R)' W(cal(B), p) = cal(R)
$
保证参考动量
$
  k^mu = (M, 0, 0, 0)
$
不变。

对于纯三维空间转动
$
  (R_3)_(i k) = (e^Theta)_(i k)
$
其中
$
  R_3 R_3^TT = I ==> Theta_(i k) = - Theta_(k i)
$
是将$p$旋转到$Lambda(p - k/alpha) = cal(R)' cal(B)(p - k/alpha)$的旋转矩阵。$"SO"(3)$的结论给出，其幺正的表示矩阵$D(R_3)$可以分为一系列不可与表示$D^((j))_(sigma' sigma) (R_3)$的直和，其中标记$j$不可约表示的维数为$2j + 1$，$j$是表示的*自旋*，可取值$j = 0, 1/2, 1, 3/2, ...$。

不可约表示
$
  U(W) Psi_(k, sigma) = U(e^Theta) Psi_(k, sigma) = sum_(sigma') D^((j))_(sigma' sigma) (W) Psi_(k, sigma')\
$
其中
$
  D_(sigma' sigma) (W) delta(k' - k) = braket(Psi_(k', sigma'), U(e^Theta) Psi_(k, sigma))
$
把前面Lorentz群元处理用在三维空间上
$
  D^((j))_(sigma' sigma) (e^Theta) = (e^(i/2 Theta_(i k) J^((j))_(i k))_(sigma' sigma) - (J^((j))_12)_(sigma' sigma) = (J^((j),3))_(sigma' sigma) = sigma delta_(sigma' sigma)
$
而
$
  - (J^((j))_23 plus.minus i J^((j))_31)_(sigma' sigma) = (J^((j))_1 plus.minus i J^((j))_2)_(sigma' sigma) = delta_(sigma', sigma plus.minus 1) sqrt((j minus.plus sigma)(j plus.minus sigma + 1))
$
事实上是升降算符，其中$sigma = j, j - 1, ..., -j$，$J^((j))_i$是自旋$j$的角动量算符。

这意味着：*三维空间有的正能单粒子态可以分为各种自旋$j$的不可约表示*，每个自旋$j$的不可约表示有$2j + 1$个$sigma$标签。在纯时空转动变换下
$
  U(Lambda) Psi_(p, sigma) = sqrt((Lambda p)^0 / p^0) sum_(sigma') D^((j))_(sigma' sigma) (W(Lambda, p)) Psi_(Lambda p, sigma')
$

#note(subname: [$"SO"(3)$群的不可约表示])[
  $"SO"(3)$群的角动量算符$J^i$满足
  $
           vb(J)^2 & = (J^1)^2 + (J^2)^2 + (J^3)^2 \
        [J^i, J^j] & = i epsilon^(i j k) J^k \
    [vb(J)^2, J^i] & = 0
  $
  将$vb(J)^2, J^3$的共同本征态$Psi_(lambda, sigma)$作为自旋$j$的不可约表示的基底
  $
    vb(J)^2 Psi_(lambda, sigma) & = lambda Psi_(lambda, sigma) \
        J^3 Psi_(lambda, sigma) & = sigma Psi_(lambda, sigma)
  $
  引入升降算符$J_plus.minus = J^1 plus.minus i J^2$，则
  $
    J^3 J_plus.minus Psi_(lambda, sigma) & = (J_plus.minus J^3 plus.minus J_plus.minus) Psi_(lambda, sigma) = (sigma plus.minus 1) J_plus.minus Psi_(lambda, sigma) \
    vb(J)^2 J_plus.minus Psi_(lambda, sigma) & = J_(plus.minus) vb(J)^2 Psi_(lambda, sigma) = lambda J_plus.minus Psi_(lambda, sigma)
  $
  设
  $
    J_plus.minus Psi_(lambda, sigma) = C_(plus.minus) (lambda, sigma) Psi_(lambda, sigma plus.minus 1)
  $
  有
  $
    abs(C_(plus.minus) (lambda, sigma))^2 &= braket(C_(plus.minus) (lambda, sigma) Psi_(lambda, sigma plus.minus 1), C_(plus.minus) (lambda, sigma) Psi_(lambda, sigma plus.minus 1))\
    & = braket(J_(plus.minus) Psi_(lambda, sigma), J_(plus.minus) Psi_(lambda, sigma)) = braket(Psi_(lambda, sigma), J_(minus.plus) J_(plus.minus) Psi_(lambda, sigma))\
    & = braket(Psi_(lambda, sigma), (vb(J)^2 - (J^3)^2 minus.plus J^3) Psi_(lambda, sigma)) = lambda - sigma (sigma plus.minus 1)
  $
  这里了设$J^i$是Hermitian算符，$C_(plus.minus) (lambda, sigma)$是实数
  $
    C_(plus.minus) (lambda, sigma) = sqrt(lambda - sigma (sigma plus.minus 1))
  $
  进一步利用
  $
    vb(J)^2 - (J^3)^2 = 1/2 (J^dagger_- J_- + J^dagger_+ J_+)
  $
  有
  $
    lambda - sigma^2 &= (lambda - sigma^2) braket(Psi_(lambda, sigma), Psi_(lambda, sigma)) = braket(Psi_(lambda, sigma), (vb(J)^2 - (J^3)^2) Psi_(lambda, sigma))\
    &= 1/2 (braket(Psi_(lambda, sigma), (J^dagger_- J_- + J^dagger_+ J_+) Psi_(lambda, sigma)) >= 0
  $
  这意味着$sigma$有上下限，设上限是$j$，下限是$j'$，则
  $
    J_+ Psi_(lambda, j) = 0, J_- Psi_(lambda, j') = 0
  $
  $
    0 = J_- J_+ Psi_(lambda, j) = (vb(J)^2 - (J^3)^2 plus.minus J^3) Psi_(lambda, j) = (lambda - j^2 - j) Psi_(lambda, j)\
    0 = J_+ J_- Psi_(lambda, j') = (vb(J)^2 - (J^3)^2 minus.plus J^3) Psi_(lambda, j') = (lambda - j'^2 + j') Psi_(lambda, j')
  $
  从而
  $
    lambda = j (j + 1) = j' (j' - 1) => j' = -j
  $
  从而$sigma = j, j - 1, ..., -j$，只要求
  $
    j - (-j) in ZZ
  $
  所以$j$可以是整数或半整数。对二维空间$j,sigma$不再量子化，可以是任意实数。从而
  $
    vb(J)^2 Psi_(j(j+1), sigma) & = j (j + 1) Psi_(j(j+1), sigma) \
        J^3 Psi_(j(j+1), sigma) & = sigma Psi_(j(j+1), sigma)
  $
  从而
  $
    (J_plus.minus)^j_(sigma' sigma) &= braket(Psi_(j(j+1), sigma'), J_plus.minus, Psi_(j(j+1), sigma)) = C_plus.minus (j(j+1), sigma) delta_(sigma', sigma plus.minus 1) \
    &= sqrt(j (j + 1) - sigma (sigma plus.minus 1)) delta_(sigma', sigma plus.minus 1) = sqrt((j minus.plus sigma)(j plus.minus sigma + 1)) delta_(sigma', sigma plus.minus 1)\
    (J^3)^j_(sigma' sigma) &= braket(Psi_(j(j+1), sigma'), J^3, Psi_(j(j+1), sigma)) = sigma delta_(sigma', sigma)
  $
]
#newpara()
所以有质量的正能单粒子态的Casimir算符
$
  W^mu &= 1/2 epsilon^(mu nu rho sigma) P_nu J_(rho sigma)=1/2 epsilon^(mu nu rho sigma) (J_(rho sigma) P_nu - i g_(nu rho) P_sigma + i g_(nu sigma) P_rho) = 1/2 epsilon^(mu nu rho sigma) J_(rho sigma) P_nu
$
注意到
$
  Psi_(p,sigma) = N(p) U(L(p)) Psi_(k, sigma)
$
并且
$
  P^mu P_mu Psi_(p,sigma) = M^2 Psi_(p,sigma)
$
有
$
  W^mu W_mu Psi_(p,sigma) = N(p) U(L(p)) W^mu W_mu Psi_(k, sigma)
$
而
$
  W^mu W_mu Psi_(k, sigma) &= W^mu M/2 epsilon_mu^(" "0 rho sigma) J_(rho sigma) Psi_(k, sigma) = W^l M/2 epsilon_l^(" "0 j i) J_(j i) Psi_(k, sigma)\
  &= M^2/4 epsilon^(l 0 j' i') epsilon_l^(" "0 j i) J_(j' i') J_(j i) Psi_(k, sigma) = - M^2/2 J^(j i) J_(j i) Psi_(k, sigma) = - M^2 vb(J)^2 Psi_(k, sigma)\
  &= - M^2 j (j + 1) Psi_(k, sigma)
$
从而
$
  W^mu W_mu Psi_(p,sigma) = - M^2 j (j + 1) Psi_(p, sigma)
$
对有质量正能单粒子态，$j$在Lorentz不变下不变，$sigma$不是。只能用$j$来标记粒子态。Lorentz可以把$sigma$从一个取值变成任意取值。$j$是粒子的自旋。
