#import "@preview/scripst:1.1.3": *

#show: scripst.with(
  title: [量子场论],
  info: [第一次作业],
  author: "Anzreww",
  time: "2026年9月",
  cb-counter-depth: 1,
  matheq-depth: 1,
)

#exercise()[
  对非齐Lorentz变换$T(Lambda, a)$，证明
  $
    T^(-1) (Lambda, a) = T(Lambda^(-1), -Lambda^(-1) a)
  $
]

#proof[
  根据非齐次Lorentz变换的定义，我们有
  $
    T(Lambda, a): x^mu -> x'^mu = Lambda^mu_(" "nu) x^nu + a^mu
  $
  考虑变换$T(Lambda^(-1), -Lambda^(-1) a)$
  $
    T(Lambda^(-1), -Lambda^(-1) a)T(Lambda, a): x^mu -> x''^mu &= (Lambda^(-1))^mu_(" "nu) (x'^nu - a^nu) \
    &= (Lambda^(-1))^mu_(" "nu) (Lambda^nu_(" "rho) x^rho + a^nu - a^nu) \
    &= (Lambda^(-1))^mu_(" "nu) Lambda^nu_(" "rho) x^rho
  $
  而
  $
    g_(mu nu) Lambda^mu_(" "rho) Lambda^nu_(" "sigma) = g_(rho sigma)
  $
  $
    (Lambda^(-1))^mu_(" "nu) Lambda^nu_(" "rho) &= Lambda_nu^(" "mu) Lambda^nu_(" "rho) = g_(nu a) Lambda^a_(" "b) g^(mu b) Lambda^nu_(" "rho) = g_(b rho) g^(mu b) = delta^mu_(" "rho) \
  $
  从而
  $
    T(Lambda^(-1), -Lambda^(-1) a)T(Lambda, a): x^mu -> x''^mu = delta^mu_(" "rho) x^rho = x^mu
  $
]
