#import "../typst/template/reference.typ": POINT,NOTE,TIP,cn_fake-italic,indent,example,line_cs,line_dc,Concept_review
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
  chapter: 0,
)

= 预备知识
== 实数、估算、逻辑

微积分是建立在实数体系及其性质基础上的。

#POINT[整数和有理数] 在所有数中，自然数是最简单的数，在自然数的基础上包含零和负数就是整数。

*自然数*：$1,2,3,4,5,...$

*整数*：$...,-3,-2,-1,0,1,2,3,...$

由于整数的间距太大，不适合描述更为精确的数据，所以引入整数的比值形式：$3/4,-7/8,21/5$等。

#TIP[除数不允许为0,它们无法给出实际的意义，对于m/n这种形式的数称为*有理数*，其中m和n为整数，$n!=0$。]

有理数并不能表示所有数，例如：直角三角形的两直角边均为1,其斜边为$sqrt(2)$，$sqrt(2)$并不能用两个有理数的比表示。所以说，$sqrt(2)$是一个*无理数*，类似的还有$sqrt(3)$、$sqrt(5)$、$pi$等等。

#POINT[实数] 有理数和无理数（可以用于测量长度）及其它们对应的负数和零，统称为*实数*。

实数可以被看做是一条水平直线上点的标记，标记的位置表示从固定点（称为*原点*并且标记为0）向右或向左的距离（*有向距离*）。每个点对应唯一一个实数，这个数被称为该点的*坐标*，该标记坐标的直线被称为*实数直线*。

实数系统还可以扩展到*复数*，复数的表示方式是$a+b i$，其中a和b是实数，i则是$sqrt(-1)$。

#POINT[循环小数与不循环小数] 每个有理数和无理数都可以写成一个小数形式。

用小数表示有理数，得到的结果分为：有限和无限循环。例如：$3/8=0.375$,$13/11=1.1818181818...$，如@repeating_decimals。一个有限的小数可以认为是一个循环为0的循环小数，那么我们可以得出:*每个有理数都可以被写成一个循环小数*。

通过对上面的描述，可以得出：如果x是一个有理数，那么其可以写成一个循环小数。其逆命题同样成立。证明如下：
#pad(left: 2em)[
  1. 对于一个有限小数，例如：$3.15=315/1000$，明显证得。
  2. 对于一个无限循环小数，同样不难。
]

#line_dc
#example(title: [说明$x=0.136136136...$是一个有理数。], solutions: [ 采用1000x减去x来求解x

  $
    1000x     &= 136.136136... \
    x         &=0.136136... \
    (1000-1)x &= 136 \
    x         &= 136/999
  $ ])
#line_dc

#figure(rect(fill: rgb("C6E9FC"), radius: 5pt)[
#grid(columns: (1fr, 1fr), align(center)[
#mitex(`
\begin{array}{ll}
&\underline{0.375} \\
8)\!\!&{3.000} \\
&\underline{24\enspace} \\
&\enspace{60} \\
&\enspace\underline{56\enspace} \\
&\enspace\enspace{40} \\
&\enspace\enspace\underline{40} \\
&\enspace\enspace\enspace{0} \\
\end{array}
`)
], align(center)[
#mitex(`
\begin{array}{ll}
&\underline{1.181} \\
11)\!\!&{13.000} \\
&\underline{11\enspace} \\
&\enspace{20} \\
&\enspace\underline{11\enspace} \\
&\enspace\enspace{90} \\
&\enspace\enspace\underline{88\enspace} \\
&\enspace\enspace\enspace{20} \\
&\enspace\enspace\enspace\underline{11} \\
&\enspace\enspace\enspace\enspace{9}
\end{array}
`)
])
], caption: [有限循环小数与无限循环小数])<repeating_decimals>#indent

无理数的小数形式是不循环的，其逆命题也同意成立。例如：$pi$。

#POINT[稠密性] 在任意两个不同的实数之间，总存在一个有理数和一个无理数。因此，可以得出：在每一对实数之间都有无穷多个数。对于这种情况，数学家描述为，有理数和无理数在实数直线上都是稠密的，每个数同时拥有充分接近的有理数和无理数与之相邻。

对于该特性，可以得到一个结论，任何一个无理数都可以用一个有理数去*充分*接近，例如：$1.414213...$去接近$sqrt(2)$。

#POINT[计算器与计算机] mathematic等计算软件支持完成许多符号运算。那么如何去使用？

#pad(left: 2em)[
  + 对使用计算器得到的结果有个大致了解，例如：什么情况下得到一个精确值，什么情况下得到一个近似值。
  + 应该尽可能的去获得精确值，特别是其值还参与下一步运算时。
  + 实际运用中，尽可能提供一个精确的答案和一个近似值，用近似值来检查答案是否合理。
]

#indent
#POINT[估算] 对于数应该有特殊的感觉，当解决某个问题时，会有意识的发现结果与实际差距太大，然后改正。

#line_dc
#example( //
  title: [计算$(sqrt(430)+72+root(3, 7.5))/2.75$。],
  solutions: [//
    进行估算，简化得到：
    $(20+72+2)/3$，可以看出答案大概是30左右，实际答案为34.434，估算的近似值是合理的。//
  ],
)
#example(
  title: [//
    假如@ring 中的阴影区域R绕x轴旋转一周，估计旋转后所构成物体S的体积。
    #figure(image("../asset/chapter0/image/ring.png", width: 20%), caption: [环柱])<ring>
  ],
  solutions: [ //
    圆环的宽为0.9，约等于1。那么总面积约等于$(7^2pi-6^2pi)*3 approx 120$，实际面积为$39pi approx 122.5$ ],
)
#line_dc

#TIP[在实际中，对估计应该尽可能的“精确”，例如将0.9估计为1就比将0.7估计为1更好。\ 另外，在进行近似运算时，可以利用$approx$运算符，但是在正式计算中，在*不确定大小*情况下不能使用。因为估算仅仅是合理的常识与直观感觉的结合，但是鼓励进行估算。\
常用的估算值：$pi approx 3, sqrt(2) approx 1.4, 2^10 approx 1000, 1"ft" approx 10"in", 1"mile" approx 5000"ft",...$。其中`ft`表示英尺（foot），`in`表示英寸（inch），`mile`表示英里（mile）。1mile=5280ft=12in
]

#POINT[逻辑推导初步] 数学上的重要结论被称为*定理*。与公理和定义已被大多数人公认的结论不同，定理需要证明。

很多定理可以用“如果P，那么Q”的命题形式表示，或用简洁格式：$P arrow.r.double Q$。读作“命题P推出命题Q”，其中命题P是定理的*假设*，命题Q是定理的结论。所以，定理的证明需要阐述：只要命题P成立，那么命题Q必然成立。

需要知道的是：

#pad(
  left: 2em,
)[
  1. 命题与其*逆命题*一定不等价。
  2. 命题P的*否命题*用$tilde.basic P$表示，推广可得：$P arrow.r.double Q$的*逆否命题*表示为$tilde.basic Q arrow.r.double tilde.basic P$。逆否命题与命题是等价的。
]

#indent 据此，我们可以通过求证一个命题的逆否命题从而判断该命题是否成立。例如：为了证明$P arrow.r.double Q$，我们可以假设$tilde.basic Q$，来得出$tilde.basic P$的结论，从而论证$P arrow.r.double Q$

#line_dc
#example( //
  title: [如果$n^2$是偶数，那么$n$是偶数。],
  solutions: [
    该命题的逆否命题为：“如果$n$是奇数，那么$n^2$是奇数”，下面证明该逆否命题是否成立：

    *证明：*假如$n$为奇数，那么一定存在一个整数$k$使得$n=2k+1$，那么：
    $ n^2=(2k+1)^2=4k^2+4k+1=2(2k^2+2k)+1 $
    #indent 结果形似$n=2k+1$，因此，$n^2$等于偶数加一，所以$n^2$为奇数，逆否命题成立，即该命题成立。
  ],
)
#line_dc

*逻辑排中律*：要么命题$R$成立，要么命题$tilde.basic R$成立，二者不可能同时成立。对此引出一种证明方法：*反证法*：任何一个命题的证明，如果先假设与定理中命题结论相反的假定，然后从这个假定中得出和已知条件相矛盾的结果。

#NOTE[#POINT[反证法（归缪法）]，著名数学家G.H.Hardy对反证法评论：“Reductio ad absurdum, which Euclid loved
  so much, it one of a mathematician's finest weapons. It is a far finer gambit
  than any chess gambit; a chess player may offer the sacrifice of a pawn or even
  a piece, but a mathematician offers the game.”]

除了反证法外，有时候我们还需要*数学归纳法*。#text()[查看*附录*]

有时候，命题$P arrow.r.double Q$和命题$P arrow.r.double Q$都正确，在这种情况下，可以得到$Q arrow.l.r.double P$，读作“当且仅当P成立时，Q成立”。

#POINT[序] 非零实数分为正实数和负实数两个*不相交*的集合，这个事实引入顺序关系符$lt$（读作“小于”）

#align(center)[
  #rect[$x<y arrow.l.r.double y-x$是正值]
]

#indent 同时$x<y$和$y>x$是等价的。在实线上,我们说$x<y$，意思是x在实数轴上位于y的左侧。其衍生出$lt.eq.slant$顺序关系符，定义为
#align(center)[
  #rect[$x lt.eq.slant y arrow.l.r.double y -x$是正值或零]
]#indent

*实数顺序的性质*

#pad(x:2em)[
+ 三分法。如果x和y是实数，一定遵循下列关系：$x<y$或者$x=y$或者$x>y$
+ 传递性。$x<y$并且$y<z arrow.r.double x <z$
+ 加法运算。$x<y arrow.l.r.double x+z <y+z$
+ 乘法运算。当z是实数时，$x<y arrow.l.r.double x z<y z$。当z是负数时，$x<y arrow.l.r.double x z< y z$。与公理和定义已被大多数人公认的结论不同，定理需要证明。
]

#indent 顺序性质2、3和4中，符号$<$和$>$可分别用$lt.eq.slant$和$gt.eq.slant$代替。

#POINT[量词] 许多数学命题都引入一个变量x,命题的正确与否很大程度上决定于x的值。我们用P(x)来表示需要由x才能判定正确与否的命题。

当P(x)对于一切实数成立时，我们说“对于所有x,P(x)成立”或者是“对于任意x,P(x)成立”。当P(x)至少有一个x成立时，我们说“存在一个x,使得P(x)成立”。其中最重要的两个量词就是“*对于所有*”和“*存在一个*”。

#line_dc
#example( //
  title: [
    下列哪个命题是正确的？\
    + 对于所有实数x,$x^2>0$。
    + 对于所有实数x，$x<0 arrow.r.double x^2>0$。
    + 对于任意x，存在一个y，使得$y>x$。
    + 存在一个y，使得对于全体实数x，$y>x$。
  ],
  solutions: [
    + 错误，当$x=0$时，命题不成立。
    + 正确，当$x<0 arrow.r.double abs(x)>0 arrow.r.double abs(x)^2=x^2>0$。
    + 正确，该命题中包含两个量词，“对于任意”和“存在一个”。*为了正确理解这个命题，我们必须读准它们的顺序*。命题以“对于任意实数”开始，所以如果命题是正确的，接下来对于所选的变量x，仍然还是正确的。显然，只需要选y等于选x+1即可。
    + 错误，这里需要先理解上述两个量词的命题描述，假如存在命题“对所有x,P(x)”，那么其逆命题为“存在一个x,非P(x)”；同理，“存在一个x，使得P(x)”的逆命题为“对每一个x，使得非P(x)”。\ 现在通过反证法证明该命题是错误的，“存在一个实数y，使得对于全体实数x，$y>x$”的逆命题为“对所有y，使得对于全体实数x，$x>y$”，那么假设存在最大实数y，赋予$x=y+1$，显然$x>y$。该命题的逆命题成立，即该命题错误。
  ],
)
#line_dc

#Concept_review[
  + 能够写成两个整数的商的数是#underline[有理]数学。
  + 在任意两个实数间必存在另一个实数，这表明实数具有#underline[稠密性]。
  + “如果P，则Q”的逆否命题是#underline[“如果非Q，则非P”]。
  + 公理和定义是公认的，但#underline[定理]是需要证明的。
]

