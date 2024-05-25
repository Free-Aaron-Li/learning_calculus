#import "../typst/template/reference.typ": POINT,NOTE,TIP,cn_fake-italic,indent,example,example_dc,line_cs,line_dc,Concept_review,THEOREM,relational_expression
#import "../typst/template/page/basic.typ":basic,mitex

#let center_title = [LEARNING\ Calculus]
#show:doc=>basic(
  title: center_title, // 标题
  authors: ((
    name: "aaron.li",
    affiliation: "pzhu",
    email: "communicate_aaron@outlook.com",
  ),),
  doc,
  chapter: 2,
)

= 导数
== 一个主题下的两个问题
== 导数

$y=f(x)$的导数的四种表示方法（可称为一阶导数）：
#pad(x: 2em)[
  - 简单表示法：$f'(x)$
  - $y$表示法：$y'$
  - $D$表示法：$D_x y$
  - 莱布尼茨表示法：$(d y)/(d x)$
]
== 导数的运算法则
== 三角函数的导数

三角函数的求导法则主要有两个定理。

#THEOREM(title: [定理A], des: [
  函数$f(x)=sin x$和$g(x)=cos x$都是可导函数。
  $
    D_x sin x=cos x, D_x cos x=-sin x
  $
])

#POINT[证明]
通过导数的定义和函数$sin(x+h)$的几个特性，对函数$sin x$求导。
$
  D_x sin x
    &=lim_(x->0)(sin(x+h)-sin x)/h \
    &=lim_(x->0)(sin x cos h +cos x sin h-sin x)/h \
    &=lim_(x->0)(-sin x (1-cos h)/h+cos x (sin h)/h) \
    &=-sin x (lim_(x->0)(1-cos h)/h)+cos x (lim_(h->0)(sin h)/h) \
    &=-sin x *0+cos x*1 \
    &=cos x
$

同样，对$cos x$求导。
$
  D_x cos x
    &=lim_(x->0)((cos (x+h)-cos x)/h) \
    &=lim_(x->0)((cos x cos h -sin x sin h-cos x)/h) \
    &=-cos x lim_(x->0)((1-cos h)/h)-sin x lim_(x->0)((sin h)/h) \
    &=-cos x*0-sin x*1 \
    &=-sin x
$

#THEOREM(title: [定理B], des: [对于函数定义域中的所有$x$，有
  $
    D_x tan x=sec^2 x med med med med D_x cot x=-csc^2 x \
    D_x sec x=sec x tan x med med med D_x csc x = -csc x cot x
  $
])

#POINT[证明]
因为正切（$tan x$），余切（$cot x$）和正割（$sec x$），余割（$csc x $）都是根据正弦（$sin x$）和余弦（$cos x$）定义的，所以，这些方程的导数可以用除法法则从定理A中得到。

== 复合函数求导法则

复合函数的求导法则只需要记住一个定理：链式法则。

#THEOREM(
  title: [定理A 链式法则],
  des: [
    已知$y=f(x)$和$u=g(x)$，如果$g$在$x$处可导，$f$在$u=g(x)$处可导，那么复合函数$f compose g$定义为$(f compose g)(x)=f(g(x))$，并且在$x$处可到，且
    $
      (f compose g )'(x)=f'(g(x))g'(x)
    $
    也就是
    $
      D_x f(g(x))=f'(g(x))g'(x)
    $
    或
    $
      (d y)/(d x)=(d y)/(d u)(d u)/(d x)
    $

    记为：*复合函数的求导就是外部的函数关于内层函数的导数乘以内存函数的导数*。
  ],
)

#POINT[证明]
假设$y=f(u)$，$u=g(x)$，函数$g$在$x$处可导，并且$f$在$u=g(x)$处可导，当x的增量为$triangle.stroked.t x$时，相应的$u$和$y$的增量为
$
    &triangle.stroked.t u=g(x+triangle.stroked.t x)-g(x) \
  triangle.stroked.t y
    &=f(g(x+triangle.stroked.t x))-f(f(x)) \
    &=f(u+triangle.stroked.t u)-f(u)
$
因此
$
  (d y)/(d x)
    &=lim_(x->0)(triangle.stroked.t y)/(triangle.stroked.t x)=lim_(x->0)(triangle.stroked.t y)/(triangle.stroked.t u)(triangle.stroked.t u)/(triangle.stroked.t x) \
    &=lim_(x->0)(triangle.stroked.t y)/(triangle.stroked.t u) dot.op lim_(x->0)(triangle.stroked.t u)/(triangle.stroked.t x)
$
既然$g$在$x$处可导，必然在此处连续，所以$triangle.stroked.t x ->0$迫使$triangle.stroked.t u ->0$。因此
$
  (d y)/(d x)=lim_(triangle.stroked.t u ->0)(triangle.stroked.t y)/(triangle.stroked.t u) dot.op lim_(triangle.stroked.t x->0)(triangle.stroked.t u)/(triangle.stroked.t x)=(d y)/(d u)(d u)/(d x)
$
但是，该证明存在一些缺陷。某些函数$u=g(x)$具有$triangle.stroked.t u=0$对于$x$的任何一个邻域的某些点都成立，那么在第一步中除以一个$triangle.stroked.t u$就是错误的。

#line_dc
#example_dc(title: [
  求$F'(y)$，其中$F(y)=y sin y^2$
], solutions: [
  首先需要应用乘积公式，之后对$y^2$使用链式法则。
  $
    F'(y)
      &=y D_y sin y^2+sin y^2 D_y y \
      &= y cos y^2 D_y y^2 + sin y^2 *1 \
      &= 2y^2 cos y + sin y^2
  $
])

#example_dc(title: [
  设函数$y=1/(2x^5-7)^3$，求$(d y)/(d x)$
], solutions: [
  首先明确链式法则的对象：
  $
    y=1/u^3=u^(-3) "和" u=2x^5-7
  $
  因此
  $
    (d y)/(d x)
      &=(d y)/(d u)(d u)/(d x)=-3u^(-4) * 10x^4 \
      &=-3/u^4 * 10 x^4 \
      &=(-30x^4)/(2x^5-7)^4
  $
])
#line_dc
== 高阶导数

高阶导数导数的四种表示方法（可称为n阶导数）：
#pad(x: 2em)[
  - 简单表示法：$f^((n))(x)$
  - $y$表示法：$y^((n))$
  - $D$表示法：$D_x^((n)) y$
  - 莱布尼茨表示法：$(d^(n) y)/(d x^(n))$
]
通常，$n lt.eq.slant 3$时对于前两种方式可以将$n$替换为“'”表示。

== 隐函数求导
== 相关变化率
== 微分与近似计算

