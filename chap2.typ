#import "@preview/scripst:1.1.2": *

= 自由量子场，粒子与反粒子

== 自由粒子的多粒子态

=== 从单粒子态到自由粒子的多粒子态

我们前面给出了单粒子态的表示
$
  U(Lambda, a) Psi_(p, sigma, n) = e^(i a_mu (Lambda p)^mu) sqrt((Lambda p)^0 / p^0) sum_(sigma') D_(sigma' sigma)(W(Lambda, p)) Psi_((Lambda p), sigma', n)
$

无相互作用的多粒子态定义为*单粒子态的直乘*：讨论不同种类的粒子，引入分立的指标$n$来代表粒子所属的种类；每个粒子用其*能动量和参考动量系角动量的第三分量及粒子的种类*来标记。

一个一般的*无相互作用的多粒子态*可以写为
$
  Psi_(p_1, sigma_1, n_1; p_2, sigma_2, n_2; ...; p_N, sigma_N, n_N)
$
它的能动量、自旋的第三分量(只对基本参考动量)和可能的$"U"(1)$本征值为：
$
  P_0^mu Psi_(p_1, sigma_1, n_1; ...; p_N, sigma_N, n_N) &= (sum_(i=1)^N p_i^mu) Psi_(p_1, sigma_1, n_1; ...; p_N, sigma_N, n_N)\
  J_0^3 Psi_(p_1, sigma_1, n_1; ...; p_N, sigma_N, n_N) &= (sum_(i=1)^N sigma_i) Psi_(p_1, sigma_1, n_1; ...; p_N, sigma_N, n_N)\
  (Q_0)_a Psi_(p_1, sigma_1, n_1; ...; p_N, sigma_N, n_N) &= (sum_(i=1)^N q_(a i)) Psi_(p_1, sigma_1, n_1; ...; p_N, sigma_N, n_N)\
$

=== Fermion与Boson

在量子力学中有*排序问题*。

如果所有的粒子都各属于不同的种类，它们之间可以区分，原则上可以规定一种标准的排序方式，例如第一种粒子排在第一位，第二种粒子排在第二位，等等。但如果在一个多粒子态中有某两个粒子的种类相同
$
  Phi_(...;p,sigma,n;...;p',sigma',n';...;)
$
交换两个粒子态
$
  Phi_(...;p',sigma',n';...;p,sigma,n;...;)
$
与原来的态是无法区分的，需要对同类粒子的排序进行详细的讨论。

交换两个同类粒子无法区分，交换前后的态之间只能*相差一个相角*
$
  Psi_(...;p',sigma',n';...;p,sigma,n;...;) = alpha_n (p, sigma; p', sigma') Psi_(...;p,sigma,n;...;p',sigma',n';...;)
$
相角$alpha_n (p, sigma; p', sigma')$与其它粒子的$p,sigma,n$无关。我们讨论的是自由粒子的多粒子态，如果交换其中的某两个粒子还要受到其它粒子的影响，意味着其它粒子对这两个参与交换的粒子有相互作用，就不是*自由粒子态*了。

两边实施Lorentz变换有
$
  &sum_(overline(sigma) overline(sigma)' ...) D_(overline(sigma) sigma)(W(Lambda, p)) D_(overline(sigma)' sigma')(W(Lambda, p')) Phi_(...; (Lambda p), overline(sigma), n; ...; (Lambda p'), overline(sigma)', n'; ...;)\
  =& alpha_n (p, sigma; p', sigma') sum_(overline(sigma) overline(sigma)' ...) D_(overline(sigma) sigma)(W(Lambda, p)) D_(overline(sigma)' sigma')(W(Lambda, p')) Phi_(...; (Lambda p), overline(sigma), n; ...; (Lambda p'), overline(sigma)', n'; ...;)
$


3+1维时空中同类粒子交换只可能出现两种情况：变号或不变号
- $alpha_n (p, sigma; p', sigma') = +1$的粒子称为*Boson*，对同类粒子交换不变号
- $alpha_n (p, sigma; p', sigma') = -1$的粒子称为*Fermion*，对同类粒子交换会变号
进一步对不同类粒子之间的排序在标准的排序方式基础上作如下的安排：
- 最近邻的Fermion与Fermion之间交换一次出一负号
- 最近邻的Boson与Boson之间交换，Boson与Fermion之间交换不变号

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

对于一般的情况
$
  braket(Phi_(q'_1 ... q'_M), Phi_(q_1 ... q_N)) = delta_(M N) sum_(cal(P)) delta_(cal(P)) product_i delta(q'_i - q_(cal(P)(i)))
$
其中$cal(P)$是所有可能的对指标$1,2,...,N$的交换排序。交换排序$cal(P)$对多粒子态的符号因子记为$delta_{cal(P)}$，对交换排序中涉及奇数次费米子交换时,$delta_{cal(P)} = -1$，其它情况的交换排序$delta_{cal(P)} = 1$。

约定
$
  braket(Phi_alpha', Phi_alpha) = delta_(alpha' - alpha)
$
有
$
  integral dd(alpha) ... = sum_(n_1 sigma_1) sum_(n_2 sigma_2) ... sum_(n_N sigma_N) integral dd^3(vb(p_1)) ... integral dd^3(vb(p_N)) ...
$
多离子态构成正交归一的基
$
  Phi & = integral dd(alpha) Phi_alpha braket(Phi_alpha, Phi) \
    1 & = integral dd(alpha) ketbra(Phi_alpha, Phi_alpha)
$

== 进态、出态与S矩阵

=== 进态和出态

*散射问题*是研究粒子在相互作用下的入射态和出射态之间的关系。

我们认为散射是一组在宏观上相距很远的相互之间没有相互作用的粒子逐渐相互接近到微观上很小的区域发生相互作用，再逐渐互相分离到宏观上相距很远相互之间不再有相互作用的区域。

相互作用发生在粒子逐渐相互接近到微观上很小的区域。记一个有相互作用体系的总体时间平移生成元算符为$H$，被称为体系的Hamiltonian，是体系总四动量的零分量。

把这个体系的相互作用撤除得到的无相互作用的自由粒子体系的Hamiltonian记为$H_0$。将两个Hamiltonian的差定义为体系的相互作用$V$：
$
  H = H_0 + V
$
将体系中粒子相距很远，相互之间没有相互作用的初始和末了状态分别称为进态和出态，记为$Psi^+_alpha$和$Psi^-_alpha$。

进态和出态分别构成完备集，且相互之间无相互作用，所以进态和出态分别可被看成一组自由多粒子态。进态和出态满足与自由多粒子态同样的Lorentz和内部对称性变换关系。整个散射过程的持续可以理解为：无相互作用的无穷将来$<=$发生相互作用的现在$<=$无相互作用的无穷过去。

进态和出态满足的Lorentz变换关系，满足与自由多粒子态同样的有相互作用系统的Lorentz变换关系。
$
  U(Lambda,a) Psi^plus.minus_(p_1,sigma_1,n_1; ...; p_N, sigma_N, n_N) &= e^(i a_mu ((Lambda p_1)^mu + ... + (Lambda p_N)^mu)) sqrt(((Lambda p_1)^0 ... (Lambda p_N)^0) / (p_1^0 ... p_N^0)) sum_(sigma'_1 ... sigma'_N) D_(sigma'_1 sigma_1)(R_W(Lambda,p_1)) ... D_(sigma'_N sigma_N)(R_W(Lambda,p_N)) Psi^plus.minus_((Lambda p_1, sigma'_1, n_1; ...; Lambda p_N, sigma'_N, n_N))\
  &= integral dd(alpha') (U_0)_(alpha' alpha) Psi^plus.minus_(alpha')
$
$
  U(T(theta)) Psi^plus.minus_(p_1,sigma_1,n_1; ...; p_N, sigma_N, n_N) &= e^(i (q_(a 1) + ... + q_(a N)) theta^a) Psi^plus.minus_(p_1,sigma_1,n_1; ...; p_N, sigma_N, n_N)
$
在
$
  Lambda = 1, a = (epsilon, vb(0))
$
有
$
  e^(i epsilon H) Psi^plus.minus_alpha = e^(i epsilon E_alpha) Psi^plus.minus_alpha
$

#newpara()
时间的演化
#note(subname: [时间的演化是均匀流逝])[
  绝对的、真实的和数学的时间，由其特性决定，自身均匀地流逝，
  与一切外在事务无关，又名延续；相对的、表象的和普通的时间是可感知和外在的（不论是精确的或是不均匀的）对运动之延续的量度，它常被用以代替真实的时间，如一小时、一天、一个月、一年。
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
