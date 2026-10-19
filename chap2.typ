#import "@preview/scripst:1.1.2": *

= 自由量子场，粒子与反粒子

上一章主要研究单粒子态怎样在 Poincaré 变换下变化，得到质量、自旋、螺旋度与内部荷等分类标签。这一章开始研究多粒子态怎样构成，粒子如何产生、湮灭及相互作用，以及怎样从粒子态过渡到量子场。

可以将其分成三个递进阶段：
- 第一阶段：从单粒子走向多粒子与散射

  多粒子态、玻色子与费米子、进态与出态、$S$矩阵及其微扰展开、反应率与碰撞截面。
- 第二阶段：建立量子场

  引入产生算符与湮灭算符，并将它们在坐标空间中表示，研究平移、boost 和旋转。
- 第三阶段：研究不同自旋的量子场

  标量场、旋量场、矢量场及任意自旋场；研究反粒子、统计规律、Lorentz 变换性质、场方程、哈密顿量、作用量与正则对易关系。

#note[
  如果前面已经能够用 Hilbert 空间和群表示描述粒子，为什么还需要引入“场”？

  在相对论物理中，粒子数不一定守恒。
  $
    e^- + e^+ -> gamma + gamma
  $
  过程中，初态有电子和正电子，末态有两个光子。

  更一般地，初态和末态的粒子数可以不同。我们需要一套能够同时描述不同粒子数的 Hilbert 空间及其动力学的框架。
]

== 自由粒子的多粒子态

=== 从单粒子态到自由粒子的多粒子态

我们前面给出了单粒子态的表示
$
  U(Lambda, a) Psi_(p, sigma, n) = e^(i a_mu (Lambda p)^mu) sqrt((Lambda p)^0 / p^0) sum_(sigma') D_(sigma' sigma)(W(Lambda, p)) Psi_((Lambda p), sigma', n)
$
其中
$
  W(Lambda, p) = L^(-1)(Lambda p) Lambda L(p)
$
这里出现了一个比上一章更显式的标签$n$来标记粒子所属的种类。我们将讨论不同种类的粒子，$n$是一个分立的指标。
- 对于自旋为$j, sigma = -j, ..., j$的有质量粒子
  $
    D_(sigma' sigma)(W(Lambda, p)) = D^((j))_(sigma' sigma)(W(Lambda, p)) = (e^(i/2 Theta_(i k) (Lambda, p) J^((j))_(i k)))_(sigma' sigma)
  $
  是$p$转成$Lambda(p - k/alpha)$的转动
- 对于固定螺旋度为$sigma$的无质量粒子
  $
    D_(sigma' sigma)(W(Lambda, p)) = delta_(sigma' sigma) e^(i theta sigma)
  $
  是和$p$垂直矢量在$Lambda$空间中转动后和$Lambda p$垂直矢量之间的转动

无相互作用的多粒子态定义为*单粒子态的直乘*：讨论不同种类的粒子，引入分立的指标$n$来代表粒子所属的种类；每个粒子用其*能动量和参考动量系角动量的第三分量及粒子的种类*来标记。不能仅从本征值鉴别一个态究竟是单粒子态还是多粒子态。

一个一般的*无相互作用的多粒子态*可以写为
$
  Phi_(p_1, sigma_1, n_1; p_2, sigma_2, n_2; ...; p_N, sigma_N, n_N) = times.o.big_i Psi_(p_i, sigma_i, n_i)
$
总状态空间为
$
  cal(H) = times.o.big_i cal(H)_(n_i), dim cal(H)_(n_i) = product_i dim cal(H)_(n_i)
$
张量积态构成联合空间的一组基。它的能动量、自旋的第三分量(只对基本参考动量)和可能的$"U"(1)$本征值为：
$
  P_0^mu Phi_(p_1, sigma_1, n_1; ...; p_N, sigma_N, n_N) &= (sum_(i=1)^N p_i^mu) Phi_(p_1, sigma_1, n_1; ...; p_N, sigma_N, n_N)\
  J_0^3 Phi_(p_1, sigma_1, n_1; ...; p_N, sigma_N, n_N) &= (sum_(i=1)^N sigma_i) Phi_(p_1, sigma_1, n_1; ...; p_N, sigma_N, n_N)\
  (Q_0)_a Phi_(p_1, sigma_1, n_1; ...; p_N, sigma_N, n_N) &= (sum_(i=1)^N q_(a i)) Phi_(p_1, sigma_1, n_1; ...; p_N, sigma_N, n_N)\
$
下标$0$表示无相互作用的多粒子态的能动量、自旋和内部对称性算符。我们后面会用
$
  H = H_0 + V
$
区分自由 Hamiltonian 和相互作用 Hamiltonian。

可以得到多粒子态的 Lorentz 变换公式。在时空平移和转动Lorentz变换下，多个粒子态的变换是每个粒子态的变换的乘积：
$
  U_0(Lambda, a) Phi_(p_1, sigma_1, n_1; ...; p_N, sigma_N, n_N) &= e^(i a_mu (sum_(i=1)^N (Lambda p_i)^mu)) sqrt((product_(i=1)^N (Lambda p_i)^0) / (product_(i=1)^N p_i^0)) sum_(sigma'_1 ... sigma'_N) product_(i=1)^N D_(sigma'_i sigma_i)(W(Lambda, p_i)) Phi_(Lambda p_1, sigma'_1, n_1; ...; Lambda p_N, sigma'_N, n_N)\
$
而在相互独立的内部$"U"_0(1)$变换下：
$
  U_0(T(theta)) Phi_(p_1, sigma_1, n_1; ...; p_N, sigma_N, n_N) &= e^(i (sum_(i=1)^N q_(a i)) theta^a) Phi_(p_1, sigma_1, n_1; ...; p_N, sigma_N, n_N)
$

=== Fermion与Boson

在量子力学中有*排序问题*。

如果所有的粒子都各属于不同的种类，它们之间可以区分，原则上可以规定一种标准的排序方式，例如第一种粒子排在第一位，第二种粒子排在第二位，等等。例如一个电子和一个光子的联合态，我们可以规定总把电子写在前面：
$
  Phi_(e^-, gamma) = ket(e^-) times.o ket(gamma)
$
这种排序只是数学记号的约定，电子与光子有不同的质量、自旋和内部量子数，可以在物理上区分。因此，可以按照粒子种类安排张量积因子的次序。

但如果在一个多粒子态中有某两个粒子的种类相同
$
  Phi_(...;p,sigma,n;...;p',sigma',n';...)
$
交换两个粒子态
$
  Phi_(...;p',sigma',n';...;p,sigma,n;...)
$
与原来的态是无法区分的，需要对同类粒子的排序进行详细的讨论。全同粒子不可区分性是基本原则；宏观上的可追踪、可区分性通常只是有效近似。

交换两个同类粒子无法区分，交换前后的态之间只能*相差一个相角*
$
  Psi_(...;p',sigma',n';...;p,sigma,n;...) = alpha_n (p, sigma; p', sigma') Psi_(...;p,sigma,n;...;p',sigma',n';...)
$
相角$alpha_n (p, sigma; p', sigma')$与其它粒子的$p,sigma,n$无关。我们讨论的是自由粒子的多粒子态，如果交换其中的某两个粒子还要受到其它粒子的影响，意味着其它粒子对这两个参与交换的粒子有相互作用，就不是*自由粒子态*了。

两边实施Lorentz变换有
$
  &sum_(overline(sigma) overline(sigma)' ...) D_(overline(sigma) sigma)(W(Lambda, p)) D_(overline(sigma)' sigma')(W(Lambda, p')) Phi_(...; (Lambda p), overline(sigma), n; ...; (Lambda p'), overline(sigma)', n'; ...)\
  =& alpha_n (p, sigma; p', sigma') sum_(overline(sigma) overline(sigma)' ...) D_(overline(sigma) sigma)(W(Lambda, p)) D_(overline(sigma)' sigma')(W(Lambda, p')) Phi_(...; (Lambda p), overline(sigma), n; ...; (Lambda p'), overline(sigma)', n'; ...)
$
这里
$
  Phi_(...; (Lambda p'), overline(sigma)', n'; ...; (Lambda p), overline(sigma), n; ...) = alpha_n (p, sigma; p', sigma') Phi_(...; (Lambda p), overline(sigma), n; ...; (Lambda p'), overline(sigma)', n'; ...;)
$
从而
$
  alpha_n (Lambda p, overline(sigma); Lambda p', overline(sigma)') = alpha_n (p, sigma; p', sigma')
$
$alpha_n (p,sigma; p', sigma')$是交换相位，是 Lorentz 不变量，且不应依赖自旋基的任意选择，和$sigma, sigma'$无关，只与$p, p'$有关。由于$alpha_n (p, sigma; p', sigma')$是一个相角，且交换两次粒子态应当得到原来的态，所以
$
  alpha_n (p, sigma; p', sigma') = alpha_n (p, p') = alpha_n (Lambda p, Lambda p')
$
在$1+3$维时空由$p,p'$构造的时空转动不变量只能是$p^2, p'^2, p dot p'$，而$p^2 = p'^2 = M^2$，并且$p^mu p'_mu = p'^mu p_mu$，对交换$p, p'$是对称的。意味着
$
  alpha_n (p, p') = alpha_n (p', p)
$
#newpara()

2+1维时空中同类粒子交换可以出现任意相角
- 交换粒子可以等价绕两粒子中点转角$pi$转动，产生相角$e^(i 2 pi sigma)$
- 1+2维时空只有一个$J$，所以不再有三维角动量的升降链量子化条件，$sigma$可以取连续值
- 这样的粒子称为 Abelian anyons（任意子）

3+1维时空中同类粒子交换只可能出现两种情况：变号或不变号
- $alpha_n (p, sigma; p', sigma') = +1$的粒子称为*Boson*，对同类粒子交换不变号
- $alpha_n (p, sigma; p', sigma') = -1$的粒子称为*Fermion*，对同类粒子交换会变号
进一步对不同类粒子之间的排序在标准的排序方式基础上作如下的安排：
- 最近邻的Fermion与Fermion之间交换一次出一负号
- 最近邻的Boson与Boson之间交换，Boson与Fermion之间交换不变号

要证明整数自旋对应Boson，半整数自旋对应Fermion，需要相对论量子场论中的自旋—统计定理。它还要使用适当的局域性、正能量条件、Hilbert 空间正定性和 Lorentz 协变性等结构，将在后面给出。

下面讨论多粒子态的*归一化*，记
$
  Phi_(p_1, sigma_1, n_1; ...; p_N, sigma_N, n_N) = Phi_(p_1, ..., p_N)
$
对于真空态$Phi_0$和单粒子态$Phi_q$有
$
  braket(Phi_0) = 1\
  braket(Phi_q', Phi_q) = delta(q' - q) = delta^3(vb(q)' - vb(q)) delta_(sigma' sigma) delta_(n' n)
$
是Lorentz不变的。对二粒子态
$
  braket(Phi_(q'_1 q'_2), Phi_(q_1 q_2)) = delta(q'_1 - q_1) delta(q'_2 - q_2) plus.minus delta(q'_1 - q_2) delta(q'_2 - q_1)
$
负号对两个粒子都是Fermion的情形，正号对其它情形（两个粒子都是Boson或一个Boson一个Fermion）。

我们的量子场论是建筑在粒子具有全同性的要求基础上的，因此对于$N$个同种粒子，我们不能把$cal(H)_1^(times.o N)$中的所有态都当成独立的物理态，而需要选择其中具有正确交换性质的子空间
- $cal(H)_N^"B" = "Sym"^N cal(H)_1$
- $cal(H)_N^"F" = and.big^N cal(H)_1$
前者是对称张量空间，后者是反对称张量空间。一旦选择以Boson或Fermion为基本粒子构造量子场论，它们的交换性质就必须内置在多粒子态空间里。

单粒子态的定义本身，不足以推导多粒子交换统计。全同性不能仅从单粒子的 Poincaré 表示自动推出，但一旦把局域性、相对论性、正能量、Hilbert 空间正定性等适当条件加入完整场论，交换统计就会受到非常强的限制。核心是要建立粒子态的完备描述，当粒子态的完备描述不再被需要时，全同性就丧失了。

对全同性丧失的临界尺度的研究还很少。

=== 多粒子态的归一化与完备性

对于一般的情况
$
  braket(Phi_(q'_1 ... q'_M), Phi_(q_1 ... q_N)) = delta_(M N) sum_(cal(P)) delta_(cal(P)) product_i delta(q'_i - q_(cal(P)(i)))
$
其中$cal(P)$是所有可能的对指标$1,2,...,N$的交换排序。交换排序$cal(P)$对多粒子态的符号因子记为$delta_(cal(P))$，对交换排序中涉及奇数次Fermion交换时,$delta_(cal(P)) = -1$，其它情况的交换排序$delta_(cal(P)) = 1$。

约定
$
  braket(Phi_alpha', Phi_alpha) = delta_(alpha' - alpha)
$
有
$
  integral dd(alpha) ... = sum_(n_1 sigma_1) sum_(n_2 sigma_2) ... sum_(n_N sigma_N) integral dd(vb(p_1), 3) ... integral dd(vb(p_N), 3) ...
$
多离子态构成正交归一的基
$
  Phi & = integral dd(alpha) Phi_alpha braket(Phi_alpha, Phi) \
    1 & = integral dd(alpha) ketbra(Phi_alpha, Phi_alpha)
$

#note[
  这实际上已经开始构造 Fock 空间，将所有粒子数扇区组织起来，便得到
  $
    cal(F) = plus.o.big_(N=0)^N cal(H)_N
  $
  其中
  $
    cal(H)_0 = CC ket(0)
  $
  是真空扇区。
  - 对于单一种类Boson
    $
      cal(F)_"B" = plus.o.big_(N=0)^N "Sym"^N cal(H)_1
    $
  - 对于单一种类Fermion
    $
      cal(F)_"F" = plus.o.big_(N=0)^N and.big^N cal(H)_1
    $
  这套构造的重要之处是：它使我们能够描述不同粒子数的态，并为后面的产生算符、湮灭算符提供作用空间。
]

== 进态、出态与S矩阵

=== 进态和出态

*散射问题*是研究粒子在相互作用下的入射态和出射态之间的关系。

我们认为散射是一组在宏观上相距很远的相互之间没有相互作用的粒子逐渐相互接近到微观上很小的区域发生相互作用，再逐渐互相分离到宏观上相距很远相互之间不再有相互作用的区域。

相互作用发生在粒子逐渐相互接近到微观上很小的区域。记一个有相互作用体系的总体时间平移生成元算符为$H$，被称为体系的Hamiltonian，是体系总四动量的零分量。

把这个体系的相互作用撤除得到的无相互作用的自由粒子体系的Hamiltonian记为$H_0$。将两个Hamiltonian的差定义为体系的相互作用$V$：
$
  H = H_0 + V
$
其中
- $H_0$是无相互作用的自由粒子体系的Hamiltonian
- $V$是体系的相互作用
- $H$是有相互作用的体系的Hamiltonian
将体系中粒子相距很远，相互之间没有相互作用的初始和末了状态分别称为进态和出态，记为$Psi^+_alpha$和$Psi^-_alpha$。

*进态(in-state)和出态(out-state)*分别构成完备集，且相互之间无相互作用，所以进态和出态分别可被看成一组*自由多粒子态*。进态和出态满足与自由多粒子态同样的Lorentz和内部对称性变换关系。整个散射过程的持续可以理解为：
$
  "无相互作用的无穷将来" <- "发生相互作用的现在" <- "无相互作用的无穷过去"
$
#newpara()
相互作用应当在粒子彼此远离时足够弱，能让我们建立渐近的自由粒子描述。对于短程相互作用，这是很自然的；对于 Coulomb 势等长程相互作用，则需要更细致地处理渐近态。

进态和出态满足的Lorentz变换关系，满足与自由多粒子态同样的有相互作用系统的Lorentz变换关系
$
  U(Lambda,a) Psi^plus.minus_(p_1,sigma_1,n_1; ...; p_N, sigma_N, n_N) &= e^(i a_mu (sum_(i=1)^N (Lambda p_i)^mu)) sqrt((product_(i=1)^N (Lambda p_i)^0) / (product_(i=1)^N p_i^0)) sum_(sigma'_1 ... sigma'_N) product_(i=1)^N D_(sigma'_i sigma_i)(W(Lambda, p_i)) Psi^plus.minus_(Lambda p_1, sigma'_1, n_1; ...; Lambda p_N, sigma'_N, n_N)\
  = U(Lambda,a) Psi^plus.minus_alpha &= integral dd(alpha') (U_0)_(alpha' alpha) Psi^plus.minus_(alpha')
$
其中
- $U(Lambda,a)$：完整相互作用体系的对称变换
- $U_0(Lambda,a)$：自由多粒子态空间中的对应表示
$
  alpha = (p_1, sigma_1, n_1; ...; p_N, sigma_N, n_N)
$
以及$"U"(1)$对称性
$
  U(T(theta)) Psi^plus.minus_(p_1,sigma_1,n_1; ...; p_N, sigma_N, n_N) &= e^(i (q_(a 1) + ... + q_(a N)) theta^a) Psi^plus.minus_(p_1,sigma_1,n_1; ...; p_N, sigma_N, n_N)
$
#newpara()
在只做时间平移的条件下，即
$
  Lambda = 1, a = (epsilon, vb(0))
$
根据Lorentz变换关系，进态和出态是携带入射渐近边界条件的完整散射态
$
  e^(i epsilon H) Psi^plus.minus_alpha & = e^(i epsilon E_alpha) Psi^plus.minus_alpha \
                H Psi^plus.minus_alpha & = E_alpha Psi^plus.minus_alpha
$
其中
$
  E_alpha = sum_(i=1)^N p_i^0
$
将$H_0$选择的使其与$H$完全一样的本征值谱，即
$
  H_0 Phi_alpha = E_alpha Phi_alpha
$
以及
$
  braket(Phi_alpha', Phi_alpha) = delta(alpha' - alpha)
$
用相同的$E_alpha$和粒子标签来对应自由态与散射态
$
  H Psi^plus.minus_alpha & = E_alpha Psi^plus.minus_alpha \
           H_0 Phi_alpha & = E_alpha Phi_alpha \
$
#newpara()
过程的持续是量子态随时间的*演化*。我们目前主要使用群表示和能量本征态分类散射态，尚未明确建立自由态与相互作用态随时间演化时如何对应的散射理论构造。单个精确能量本征态是定态；要描述具有有限碰撞时间的物理过程，需要构造包含不同能量、不同动量的波包
$
      ket(psi_"in") & = integral dd(alpha) f(alpha) ket(Psi^+_alpha) \
  ket(psi_"in" (t)) & = e^(-i H t) ket(psi_"in") = integral dd(alpha) f(alpha) e^(-i E_alpha t) ket(Psi^+_alpha) \
$
由于不同$alpha$的能量不同，各项积累不同的相位，因而可以形成随时间移动、重叠、分离的波包。

我们希望找到进态$Psi^+_alpha$，使它在遥远过去按照完整 Hamiltonian 演化时，与相应自由态的演化越来越接近：
$
  e^(-i H t) Psi^+_alpha -> e^(-i H_0 t) Phi_alpha, t -> -oo
$
以及出态$Psi^-_alpha$，使它在遥远未来按照完整 Hamiltonian 演化时，与相应自由态的演化越来越接近：
$
  e^(-i H t) Psi^-_alpha -> e^(-i H_0 t) Phi_alpha, t -> +oo
$
#newpara()

时间的演化



#note(subname: [时间的演化是均匀流逝])[
  绝对的、真实的和数学的时间，由其特性决定，自身均匀地流逝，  与一切外在事务无关，又名延续；相对的、表象的和普通的时间是可感知和外在的（不论是精确的或是不均匀的）对运动之延续的量度，它常被用以代替真实的时间，如一小时、一天、一个月、一年。 _—— Newton, 《自然哲学的数学原理》_
]

#newpara()

将态的演化时间翻译为两观测者的观测时间差：
- 观测者$O$的时钟标记$t$，观测到的为理论原始假设中的态$Psi$
- 观测者$O_tau$的时钟标记$t' = t - tau$，感受*态的演化*，观测到的态为$Psi(tau)$
$
  Psi(tau) = U(1, -tau) Psi = e^(-i H tau) Psi
$
其中
$
  i pdv(, tau) Psi(tau) = H Psi(tau)
$
这正是Schrödinger方程。

进态和出态与$H_0$的本征态的关系。

进态要求在无穷过去$O_(-oo)$观测的进态与自由粒子态完全相同
$
  Psi^+ (-oo) = Phi(-oo)
$
$
  evaluated(U(1,-tau))_(tau = -oo) Psi^+ = evaluated(U_0 (1, -tau))_(tau = -oo) Phi
$
公式应在波包（不同本征态的叠加）意义下理解，否则带入本征值将导致$Psi^+_alpha = Phi_alpha$。
$
  e^(-i H tau) evaluated(Psi^+_alpha)_(tau = -oo) = e^(-i H_0 tau) evaluated(Phi_alpha)_(tau = -oo)
$
记作
$
  Psi^+_alpha = Omega(-oo) Phi_alpha
$
其中
$
  Omega(tau) = U^dagger (1, -tau) U_0 (1, -tau) = U(1, tau) U^dagger_0 (1, tau) = e^(i H tau) e^(-i H_0 tau)
$

=== S矩阵

进态和出态的内积定义为$S$矩阵
$
  S_(beta alpha) = braket(Psi^-_beta, Psi^+_alpha)
$
是$alpha -> beta$的跃迁几率幅。有性质
$
  S_(beta alpha) = delta(beta - alpha) - 2 pi i delta(E_beta - E_alpha) T^+_(beta alpha)
$
T矩阵的定义
$
  T^+_(beta alpha) = braket(Phi_beta, V Psi^+_alpha)
$
#newpara()
利用进出态的完备性
$
  Psi^+_alpha = integral dd(beta) Psi^-_beta braket(Psi^-_beta, Psi^+_alpha) = integral dd(beta) S_(beta alpha) Psi^-_beta\
  Psi^-_alpha = integral dd(beta) Psi^+_beta braket(Psi^+_beta, Psi^-_alpha) = integral dd(beta) S^*_(alpha beta) Psi^+_beta
$
幺正性质
$
  integral dd(beta) S^*_(beta gamma) S_(beta alpha) &= integral dd(beta) braket(Psi^+_gamma, Psi^-_beta) braket(Psi^-_beta, Psi^+_alpha) \
  &= braket(Psi^+_gamma, Psi^+_alpha) = delta(gamma - alpha)
$
将$S$矩阵建立在自由粒子基上，引入$S$矩阵算符
$
  Psi^plus.minus_alpha = Omega(minus.plus) Phi_alpha
$
有矩阵元
$
  S_(beta alpha) = braket(Phi_beta, S Phi_alpha)\
  S = Omega^dagger (oo) Omega(-oo) = U(+oo,-oo)
$
其中
$
  U(tau, tau_0) = Omega^dagger (tau) Omega(tau_0) = e^(i H_0 tau) e^(-i H (tau - tau_0)) e^(-i H_0 tau_0) = U_0(1,tau) U^dagger (1, tau-tau_0) U_0^dagger (1, tau_0)
$

#newpara()

利用洛仑兹变换和内部对称性变换算符的幺正性质⇛S矩阵在洛仑兹变换和内部对称性变换下是不变的


$S$矩阵的微扰展开


反应率

碰撞截面

Lorentz变换性
