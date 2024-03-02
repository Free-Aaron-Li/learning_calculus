#import "../typst/template/reference.typ": POINT,NOTE,TIP,cn_fake-italic,indent,example,line_cs,line_dc,Concept_review
#import "../typst/template/page/basic.typ":basic,mitex

#let center_title = [SOLUTIONS]
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

#pad(x: 0em)[#POINT[尽量简化题1\~16，去掉式中所有括号并简化分式。]]

#line_dc

#example(title: [
  $4-2(8-11)+6$
], solutions: [
  $
    "原式"
      &=4-2(-3)+6 \
      &=4+6+6 \
      &=16
  $
])

#example(title: [
  $3[2-4(7-12)]$
], solutions: [
  $
    "原式"
      &=3(2+4*5) \
      &=66
  $
])

#example(title: [
  $-4[5(-3+12-4)+2(13-7)]$
], solutions: [
  $
    "原式"
      &=-4[5(9-4)+2*6] \
      &=-4*(5*5+12) \
      &=-148
  $
])

#example(title: [
  $5[-1(7+12-16)+4]+2$
], solutions: [
  $
    "原式"
      &=5(-3+4)+2 \
      &=7
  $
])

#example(title: [
  $5/7-1/13$
], solutions: [
  $
    "原式"
      &=65/91-7/91 \
      &=58/91
  $
])

#example(title: [
  $3/(4-7)+3/21-1/6$
], solutions: [
  $
    "原式"
      &=3/(-3)+1/7-1/6 \
      &=-1+(6-7)/42 \
      &=-1 1/42
  $
])

#example(title: [
  $1/3[1/2(1/4-1/3)+1/6]$
], solutions: [
  $
    "原式"
      &=1/3(1/2*(-1)/12+1/6) \
      &=1/3*3/24 \
      &=1/24
  $
])

#example(title: [
  $-1/3[2/5-1/2(1/3-1/5)]$
], solutions: [
  $
    "原式"
      &=-1/3(2/5-1/2*2/15) \
      &=-1/3*1/3 \
      &=-1/9
  $
])

#example(title: [
  $14/21 (2/(5-1/3))^2$
], solutions: [
  $
    "原式"
      &=14/21 (2/(14/3))^2 \
      &=14/21*6/14*6/14 \
      &=2/7*6/14 \
      &=6/49
  $
])

#example(title: [
  $(2/7-5)/(1-1/7)$
], solutions: [
  $
    "原式"
      &=(-33/7)/(6/7) \
      &=-11/2
  $
])

#example(title: [
  $(11/7-12/21)/(11/7+12/21)$
], solutions: [
  $
    "原式"
      &=(21/21)/(45/21) \
      &=7/15
  $
])

#example(title: [
  $(1/2-3/4+7/8)/(1/2+3/4-7/8)$
], solutions: [
  $
    "原式"
      &=(5/8)/(3/8) \
      &=5/3
  $
])

#example(title: [
  $1-1/(1+1/2)$
], solutions: [
  $
    "原式"
      &=1-2/3 \
      &=1/3
  $
])

#example(title: [
  $2+3/(1+5/2)$
], solutions: [
  $
    "原式"
      &=2+6/7 \
      &=20/7
  $
])

#example(title: [
  $(sqrt(5)+sqrt(3))(sqrt(5)-sqrt(3))$
], solutions: [
  $
    "原式"
      &=5-3 \
      &=2
  $
])

#example(title: [
  $(sqrt(5)-sqrt(3))^2$
], solutions: [
  $
    "原式"
      &=8-2sqrt(15)
  $
])

#line_dc

#pad(x: 0em)[#POINT[运算17\~28题中各式并简化]]

#line_dc
#example(title: [
  $(3x-4)(x+1)$
], solutions: [
  $
    "原式"
      &=3x^2+3x-4x-4 \
      &=3x^2-x-4
  $
])

#example(title: [
  $(2x-3)^2$
], solutions: [
  $
    "原式"
      &=4x^2-12x+9
  $
])

#example(title: [
  $(3x-9)(2x+1)$
], solutions: [
  $
    "原式"
      &=6x^2+3x-18x-9 \
      &=6x^2-15x-9
  $
])

#example(title: [
  $(4x-11)(3x-7)$
], solutions: [
  $
    "原式"
      &=12x^2-28x-33x+77 \
      &=12x^2-61x+77
  $
])

#example(title: [
  $(3t^2-t+1)^2$
], solutions: [
  $
    "原式"
      &=(3t^2-t+1)(3t^2-t+1) \
      &=9t^4-3t^3+3t^2-3t^3+t^2-t+3t^2-t+1 \
      &=9t^4-6t^3+7t^2-2t+1
  $
])

#example(title: [
  $(2t+3)^3$
], solutions: [
  $
    "原式"
      &=8t^3+3(2t)^2*3+3(2t)*3^2+27 \
      &=8t^3+36t^2+54t+27
  $
])

#example(title: [
  $(x^2-4)/(x-2)$
], solutions: [
  $
    "原式"
      &=((x+2)(x-2))/(x-2) \
      &=x+2 med (x!=2)
  $
])

#example(title: [
  $(x^2-x-6)/(x-3)$
], solutions: [
  $
    "原式"
      &=((x-3)(x+2))/(x-3) \
      &=x+2 med (x!=3)
  $
])

#example(title: [
  $(t^2-4t-21)/(t+3)$
], solutions: [
  $
    "原式"
      &=((t-7)(t+3))/(t+3) \
      &=t-7 med (x!=-3)
  $
])

#example(title: [
  $(2x-2x^2)/(x^3-2x^2+x)$
], solutions: [
  $
    "原式"
      &=(2x(1-x))/(x(x^2-2x+1)) \
      &=(2x(1-x))/(x(x-1)^2) \
      &=-2/(x-1)
  $
])

#example(title: [
  $12/(x^2+2x)+4/x+2/(x+2)$
], solutions: [
  $
    "原式"
      &=12/(x(x+2))+(4x+8)/(x(x+2))+(2x)/(x(x+2)) \
      &=(6x+20)/(x(x+2))
  $
])

#example(title: [
  $2/(6y-2)+y/(9y^2-1)$
], solutions: [
  $
    "原式"
      &=1/(3y-1)+y/((3y+1)(3y-1)) \
      &=(4y+1)/(9y^2-1)
  $
])

#line_dc

#example(
  title: [
    找出下列各项的值；如果无意义，就说无意义。\
    (a) $0*0$ ~~ (b) $0/0$ ~~ (c) $0/17$ ~~ (d) $3/0$ ~~ (e) $0^5$ ~~ (f) $17^0$
  ],
  solutions: [
    + 有意义
    + 无意义
    + 有意义
    + 无意义
    + 有意义
    + 有意义
  ],
)

#example(
  title: [
    用如下方法可证明，除数为0是无意义的：假设$a!=0$，如果$a/0=b$，那么$a=0*b=0$，这与假设是矛盾的。现在，找出原因，为什么$0/0$也是无意义的。
  ],
  solutions: [
    假设$0/0$是有意义的，那么存在一个数$a$，其中$0/0=a => 0=0*a$，a可以是任何数，无法确定一个准确的数来表示$0/0$。所以说$0/0$是无意义的。
  ],
)

#POINT[在习题31\~36中，通过除法把各个有理数转换成小数形式。]

#line_dc

#example(title: [
  $1/12$
], solutions: [
#mitex(`
        \begin{array}{ll}
        &\underline{0.083\cdots} \\
        12)\hspace{-0.5em}&{1.00} \\
        &\hspace{0.7em}\underline{96} \\
        &\hspace{1.1em}{40} \\
        &\hspace{1.1em}\underline{36} \\
        &\hspace{1.6em}{4}
        \end{array}
    `)
])

#example(title: [
  $2/7$
], solutions: [
#mitex(`
        \begin{array}{ll}
        &\underline{0.285714\cdots} \\
        7)\hspace{-0.5em}&{2.0} \\
        &\underline{14} \\
        &\hspace{0.5em}{60} \\
        &\hspace{0.5em}\underline{56} \\
        &\hspace{1em}{40} \\
        &\hspace{1em}\underline{35} \\
        &\hspace{1.5em}\vdots
        \end{array}
    `)
#mitex(`
        \begin{array}{ll}
        &\hspace{1.5em}\vdots \\
        &\hspace{1.5em}\overline{50} \\
        &\hspace{1.5em}\underline{49} \\
        &\hspace{2em}{10} \\
        &\hspace{2.5em}\underline{7} \\
        &\hspace{2.5em}{30} \\
        &\hspace{2.5em}\underline{28} \\
        &\hspace{3em}{2}
        \end{array}
    `)
])

#example(title: [
  $3/21$
], solutions: [
#mitex(`
        \begin{array}{ll}
        &\underline{0.142857\cdots} \\
        21)\hspace{-0.5em}&30 \\
        &\underline{21} \\
        &\hspace{0.5em}{90} \\
        &\hspace{0.5em}\underline{84} \\
        &\hspace{1em}{60} \\
        &\hspace{1em}\underline{42} \\
        &\hspace{1em}{180} \\
        &\hspace{1em}\underline{168} \\
        &\hspace{1.5em}{120} \\
        &\hspace{1.5em}\underline{105} \\
        &\hspace{2em}{150} \\
        &\hspace{2em}\underline{147} \\
        &\hspace{3em}{3} \\
        \end{array}
    `)
])

#example(title: [
  $5/17$
], solutions: [
#mitex(`
        \begin{array}{ll}
        &\underline{0.2941176470588235\cdots} \\
        17)\hspace{-0.5em}&{50} \\
        &\underline{34} \\
        &{160} \\
        &\underline{153} \\
        &\hspace{1em}{70} \\
        &\hspace{1em}\underline{68} \\
        &\hspace{1.5em}{20} \\
        &\hspace{1.5em}\underline{17} \\
        &\hspace{2em}{30} \\
        &\hspace{2em}\underline{17} \\
        &\hspace{2em}{130} \\
        &\hspace{2em}\underline{119} \\
        &\hspace{2.5em}{110} \\
        &\hspace{2.5em}\underline{102} \\
        &\hspace{3.5em}{80} \\
        &\hspace{3.5em}\underline{68} \\
        &\hspace{3.5em}{120} \\
        &\hspace{3.5em}\underline{119} \\
        &\hspace{4.5em}\vdots
       \end{array}
    `)
#mitex(`
        \begin{array}{ll}
        &\hspace{4.5em}\vdots \\
        &\hspace{4.5em}\overline{100} \\
        &\hspace{5em}\underline{85} \\
        &\hspace{5em}{150} \\
        &\hspace{5em}\underline{136} \\
        &\hspace{5.5em}{140} \\
        &\hspace{5.5em}\underline{136} \\
        &\hspace{6.5em}{40} \\
        &\hspace{6.5em}\underline{34} \\
        &\hspace{7em}{60} \\
        &\hspace{7em}\underline{51} \\
        &\hspace{7.5em}{90} \\
        &\hspace{7.5em}\underline{85} \\
        &\hspace{8em}{5}
        \end{array}
    `)
])

#example(title: [
  $11/3$
], solutions: [
#mitex(`
        \begin{array}{ll}
        &\underline{3.6\cdots} \\
        3)\hspace{-0.5em}&{11} \\
        &\hspace{0.5em}\underline{9} \\
        &\hspace{0.5em}{20} \\
        &\hspace{0.5em}\underline{18} \\
        &\hspace{1em}{2}
        \end{array}
    `)
])

#example(title: [
  $11/13$
], solutions: [
#mitex(`
        \begin{array}{ll}
        &\underline{0.846153\cdots} \\
        13)\hspace{-0.5em}&{110} \\
        &\underline{104} \\
        &\hspace{1em}{60} \\
        &\hspace{1em}\underline{52} \\
        &\hspace{1.5em}{80} \\
        &\hspace{1.5em}\underline{78} \\
        &\hspace{2em}{20} \\
        &\hspace{2em}\underline{13} \\
        &\hspace{2.5em}{70} \\
        &\hspace{2.5em}\underline{65} \\
        &\hspace{3em}{50} \\
        &\hspace{3em}\underline{39} \\
        &\hspace{3em}{11}
        \end{array}
    `)
])

#line_dc

#pad(x: 0em)[#POINT[在习题37\~42中，把循环小数转换成两个整数之比的形式。]]

#line_dc
#example(title: [
  $0.123123123...$
], solutions: [
  设原式为x，
  $
    1000x  &=123.123123... \
    1000x-x&=123 \
    x      &=123/999=41/333
  $
  得出，$0.123123123...$的整数之比为$41/333$
])

#example(title: [
  $0.217171717...$
], solutions: [
  设原式为x，
  $
    1000x    &=217.171717... \
    10x      &=2.171717... \
    1000x-10x&=215 \
    x        &=215/990=43/198
  $
  得出，$0.217171717...$的整数之比为$43/198$
])

#example(title: [
  $2.56565656...$
], solutions: [
  设原式为x，
  $
    100x  &=256.56565656... \
    100x-x&=254 \
    x     &=254/99 \
  $
  得出，$2.56565656...$的整数之比为$254/99$
])

#example(title: [
  $3.929292...$
], solutions: [
  设原式为x，
  $
    100x  &=392.929292.... \
    100x-x&=389 \
    x     &=389/99
  $
  得出，$3.929292...$的整数之比为$389/99$
])

#example(title: [
  $0.199999...$
], solutions: [
  设原式为x，
  $
    100x    &=19.99999.... \
    100x-10x&=18 \
    x       &=1/5
  $
  得出，$0.1999999...$的整数之比为$1/5$
])

#example(title: [
  $0.3999999....$
], solutions: [
  设原式为x，
  $
    100x    &=39.999999.... \
    100x-10x&=36 \
    x       &=2/5
  $
  得出，$0.39999999...$的整数之比为$2/5$
])

#line_dc

#example(
  title: [
    由$0.199999... = 0.200000...$及$0.399999... = 0.400000...$（习题41、42）。可以看出对某一个有理数都可有两种小数表达形式。为什么有理数具有这样的性质呢？
  ],
  solutions: [
    无限循环小数的概念定义了一个无限序列*趋向*于某一特定值的过程。当小数部分以一定规律无限重复时，无论重复的是什么数字，只要它稳定地趋向某一个确定值，那么这个无限循环小数就与那个确定值相等。

    上述相同有理数值的两种不同的小数形式，并不是说有理数“具有”两种不同形式，而是强调了小数计数法能够通过无限循环来精确表示某些分数，并且所有无限循环小数都对应着唯一的有理数。
  ],
)

#example(
  title: [
    证明对于任意有理数$p/q$，其中q因数分解后的因数是素数2和5（2,5的个数不定），该有理数可以表示成一个有限小数。
  ],
  solutions: [
    *证明* 对于$p/q$，我们仅需要讨论q。在十进制下，位的权重是10的幂次。而素数2和5的乘积为10,那么说明任何仅由2和5的幂次构成的数都能够被10的幂次*整除*。这也就意味着与这样的数相除时能够得到一个整数商。

    具体来讲，将p除以$q=2^a+5^b med (a,b in Zeta)$
  ],
)

#example(
  title: [
    找出比0.00001小且大于0的一个有理数和一个无理数。
  ],
  solutions: [
    结果：有理数：$0.000009$，$0.000009090090009...$

    获取有理数较为简单，仅需要比原式小一位皆可，例如$0.000009$， 对于无理数，我们仅需要找到一个无限不循环小数即可，例如：$0.00009090090009...("注意：每两个9之间的零个数不断增加")$
  ],
)

#example(title: [
  最小的正整数是什么？最小的正有理数是什么？最小的无理数是什么？
], solutions: [
  最小的正整数是1。没有最小的正有理数和最小的无理数，因为你总可以找到比当前有理数或无理数更小的数。
])

#example(title: [
  找出在3.14159和$pi$之间的一个有理数。注意$pi=3.141592...$
], solutions: [
  结果：$3.141591415914159...$

  仅需要找到比$pi$的小数第六位及其前位小的无限循环小数即可。
])

#example(
  title: [
    有没有一个介于0.9999...（9无限重复）和1之间的数？如何解释命题“在任意两个不等实数之间总存在另一个实数”？
  ],
  solutions: [
    + 不存在这样一个数，因为$0.9999...$实际上等价于整数1。
    + 根据实数的*稠密性*，在任意两个不同的实数a、b之间，无论它们如何接近，总存在另外一个实数。但是该定理关键在于两个*不同*的实数，但该问题中$0.9999...$与1是等价的，所以它们之间不存在其他实数且并不违背该实数的稠密性。
  ],
)

#example(title: [
  0.1234567891011121314...是有理数还是无理数？（请注意小数格式按自然数排序排列的规则）
], solutions: [
  无理数，因为小数格式按照自然数排序排列的规则，那么找不到一位使得位前数与位后数相同，也就是该数并不是无限循环小数，也就不是有理数。
])

#example(title: [
  找出和为有理数的两个无理数
], solutions: [
  最简单的方法是考虑这两个无理数是相反数，那么其和为0。例如：$-sqrt(2)$和$sqrt(2)$
])

#POINT[在习题51\~56中，先估计各项的值，再用计算器计算最佳近似值。]

#line_dc

#example(title: [
  $(sqrt(3)+1)^3$
], solutions: [
  $
    sqrt(3) approx 1.7 med \& med 1.7+1 approx 3 \
    "result" approx 27 \

    (sqrt(3)+1)^3 approx 20.392304845413
  $
])

#example(title: [
  $(sqrt(2)-sqrt(3))^4$
], solutions: [
  $
    sqrt(2) approx 1.4 med \& med sqrt(3) approx 1.7 \
    "result" = (1.4-1.7)^4 approx 0.008 \

    (sqrt(2)-sqrt(3))^4 approx 0.010205144336
  $
])

#example(title: [
  $root(4, 1.123)-root(3, 1.09)$
], solutions: [
  $
    root(4, 1.123) approx 1 med \& med root(3, 1.09) approx 1 \
    "result" approx 0 \
    root(4, 1.123)-root(3, 1.09) approx 0.00028307388
  $
])

#example(title: [
  $(3.1415)^(-1/2)$
], solutions: [
  $
    3.1415 approx 3 med \& med sqrt(1/3) approx 0.5 \
    "result" approx 0.5 \
    (3.1415)^(-1/2) approx 0.5641979034
  $
])

#example(title: [
  $sqrt(8.9pi^2+1)-3pi$
], solutions: [
  $
    pi approx 3 med \& 8.9pi^2+1 approx 9*9+1 = 82 \
    "result" approx 9-3*3=0
    sqrt(8.9pi^2+1)-3pi approx 0.000691744752
  $
])

#example(title: [
  $root(4, (6pi^2-2)pi)$
], solutions: [
  $
    pi approx 3 med \& med (6pi^2-2)pi approx(6*9-2)*3 = 156 \
    "result" = root(4, 156) =4 \
    root(4, (6pi^2-2)pi) approx 3.661591807
  $
])

#line_dc

#example(
  title: [
    证明在任意两个不等实数之间总存在一个有理数。（提示：若$a<b$，则有$b-a>0$，所以，总有一个有理数n满足$1/n<b-a$。考虑解集${k mid(|) k/n>B}$，已知有下界的整数解集包含至少一个元素）证明在任意两个不等实数之间有无穷多个有理数。
  ],
  solutions: [
    + *证明*在任意两个不等实数之间总存在一个有理数，
      #text(
        )[
        #set enum(numbering: "1.")
        + 由于$a<b => b-a >0$，那么存在一个正数$epsilon=b-a$，它代表a和b之间的距离。
        + 确定一个足够小的正有理数，取$1/n$，使得$1/n<epsilon$。对于任何正实数$epsilon$，总能找到一个大于$1/epsilon$的正数n,从而确保$1/n$小于$epsilon$。
        + 设k为整数，考虑解集${k mid(|) |k/n-a|< epsilon}$。表示所有满足与a的距离小于$epsilon$的以n为分母的有理数$k/n$。
        + 前面已经确定$1/n<b-a$，那么至少存在一个整数k，使得$a<k/n<b$。
        + 表明在a和b之间至少存在一个有理数$k/n$。
      ]
      + *证明*在任意两个不等实数之间有无穷多个有理数，\ 通过缩放上述的有理数或者简单地将分母乘以一个适当的倍数实现。具体来说，如果找到一个有理数$k/n$，则对于任意正整数m,存在$(k m)/(n m)=k/m$也是位于a和b之间的有理数。只需要让m取不同的正整数就可以让这样的有理数有无限多。
        #text()[
          #set enum(numbering: "1.")

        ]
  ],
)

#example(
  title: [
    估算你头部体积是多少立方英寸。
  ],
  solutions: [
    假设头部为一个圆柱体，测量我额头位置周长C约为56 cm,从下巴到头顶高h约为23 cm，双耳根之间距离2r约为16 cm。简单计算：
    $
      V
        &=S*h \
    $
    $
        &= C/2 r*h \
        &=5152 med c m^3 = 314.39 med i n^3
    $

    实际上，将头部用圆柱体表示误差很大，类别为圆体更合适。在GB/T 23461-2009中成年男性头型总样本体积为$4234.7 med c m^3$，大概为$258.42 med i n^3$ @GBT23461
  ],
)

#example(title: [
  以英尺为单位估算赤道的长度，假设地球半径为4000mile.
], solutions: [
  $
    "地球半径"
      &approx 2*pi*4000 m i *5280 "ft"/"mi"\
      &= 132,700,874"ft"
  $
])

#example(title: [
  到你二十岁生日那天，你的心脏大约已经跳了多少下？
], solutions: [
  正常成年人平均心跳频率为60次/分\~100次/分，那么我们按照一生（80岁）平均心跳频率60次/分计算，
  $
    "一生心跳次数"
      & approx 60 "min" * 24 "hour" *365 "day" * 80 "year"\
      &=60*60*24*365*80 \
      &=2,522,880,000 " 次"
  $
])

#example(
  title: [
    美国加利福利亚州的雪曼将军树高270ft,平均直径约16ft。请估算从这棵树上可得到多少板呎的木材（1板呎$=12"in"*12"in"*1"in"=144"in"^3$，假设不考虑浪费，忽略树枝。
  ],
  solutions: [
    $
      V
        &=S*h \
        &=pi*8^2*270 \
        & approx 54286 " ft"^3 \

      M
        &= V/(144 "in"^3) \
        &=(54286*1728 " in"^3)/(144 " in"^3)\
        &=651432 "board"
    $
  ],
)

#example(title: [
  假设雪曼将军树（习题61）每年增长的年轮厚0.004ft，请估算每年树干体积的增长。
], solutions: [
  $
    V
      &=V_a-V_b \
      &=pi*270*[(8.004)^2-8^2] \
      & approx 54.3 " ft"^2
  $
])

#example(title: [
  写出下列命题的逆命题与逆否命题：
  + 如果今天下雨，我就会在家里做功课；
  + 如果申请人满足所有要求，那么她就会被雇佣。
], solutions: [
  + 逆命题
    + 如果我在家里做功课，那么今天会下雨。
    + 如果她被雇佣了，那么她满足所有要求。
  + 逆否命题
    + 如果我不再家里做功课，那么今天就不会下雨。
    + 如果她没有被雇佣了，那么她不满足所有要求。
])

#example(title: [
  写出下列命题的逆命题与逆否命题：
  + 如果我在期末考试中得到A，我就会通过课程测验；
  + 如果我在周五前完成我的研究论文，我下周就会放假。
], solutions: [
  + 逆命题
    + 如果我通过课程测试，那么我在期末考试中得到A。
    + 如果我下周放假，那么我在周五就完成了我的研究论文。
  + 逆否命题
    + 如果我没有通过课程测试，那么我在期末考试中得不到A。
    + 如果我下周没有放假，那么我在周五前并没有完成我的研究论文。
])

#example(title: [
  写出下列命题的逆命题与逆否命题：
  + 令a，b，c是三角形的三条边长，如果$a^2+b^2=c^2$，则这个三角形是直角三角形；
  + 如果角ABC是锐角，那么该角度的值大于$0^compose$，小于$90^compose$。
], solutions: [
  + 逆命题
    + 令a，b，c是三角形的三条边，如果这个三角形是直角三角形，那么$a^2+b^2=c^2$。
    + 如果角ABC的角度值大于$0^compose$，小于$90^compose$，那么该角是锐角。
  + 逆否命题
    + 令a，b，c是三角形的三条边，如果这个三角形不是直角三角形，那么$a^2+b^2!=c^2$。
    + 如果角ABC的角度值小于$0^compose$，大于$90^compose$，那么该角不是锐角。
])

#example(title: [
  写出下列命题的逆命题与逆否命题：
  + 如果角ABC是$45^compose$，那么角ABC是锐角；
  + 如果$a<b$，那么$a^2<b^2$。
], solutions: [
  + 逆命题
    + 如果角ABC是锐角，那么角ABC是$45^compose$。
    + 如果$a^2<b^2$，那么$a<b$。
  + 逆否命题
    + 如果角ABC不是锐角，那么角ABC不是$45^compose$。
    + 如果$a^2 > b^2$，那么$a > b$。
])

#example(title: [
  考虑习题65中的命题及其逆命题和逆否命题，哪个是真的？
], solutions: [
  命题a和b及其它们逆命题、逆否命题为真。
])

#example(title: [
  考虑习题66中的命题及其逆命题和逆否命题，哪个是真的？
], solutions: [
  命题a及其逆否命题是真的，其余命题均是假的。
])

#example(title: [
  利用关于数量的命题准则，写出下列命题的否命题，并判断原命题和它的否命题哪个是真的？
  + 任意两边相等的三角形是全等三角形；
  + 有一个实数不是整数；
  + 任意一个自然数小于或者等于它的平方。
], solutions: [
  + 任意两边相等的三角形不是全等三角形，逆命题为真。
  + 所有实数都是整数，原命题为真。
  + 有一个自然数大于它的平方，原命题为真。
])

#example(title: [
  利用关于数量的命题准则，写出下列命题的否命题，并判断原命题和它的否命题哪个是真的？
  + 任意一个自然数是有理数；
  + 有一个圆，它的面积大于$9pi$；
  + 任意一个实数大于它的平方。
], solutions: [
  + 有一个自然数不是有理数，原命题为真。
  + 任意一个圆，它的面积大于$9pi$，原命题为真。
  + 有一个实数大于它的平方，原命题为真。
])

#example(title: [
  假设x，y是实数，下面哪一项是正确的？
  + 对于任意实数x，$x>0 => x^2>0$。
  + 对于任意实数x，$x>0 <=> x^2>0$。
  + 对于任意实数x，$x^2>x$。
  + 对于任意实数x，存在y，使得$y>x^2$。
  + 对于任意正数y，存在另外一个正数x，使得$0<x<y$。
], solutions: [
  + 正确
  + 错误，若x为负，$x^2>0 !=> x>0$
  + 正确
  + 正确
  + 正确
  + 正确
])

#example(title: [
  下面哪一项是正确的？除非声明是其他情况，否则认为x，y是实数。
  + 对于任意x，$x<x+1$；
  + 存在一个自然数N，使得所有素数小于N（一个*素数*是一个自然数，它的因子只有1和它自身）；
  + 对于任意$x>0$，存在一个数y，使得$y>1/x$；
  + 对于任意正实数x，存在一个自然数n，使得$1/n<x$；
  + 对于任意正实数$epsilon$，存在自然数n使得$2^(-n)<epsilon$
], solutions: [
  + 正确
  + 错误
  + 正确
  + 正确
  + 正确
])

#example(
  title: [
    证明下列命题。
    + 如果n是奇数，那么$n^2$也是奇数；（提示：如果n是奇数，那么存在一个整数k使得$n=2k+1$）。
    + 如果$n^2$是奇数，那么n也是奇数。
  ],
  solutions: [
    + #text()[
        *证明*，存在一个奇数n,其中$n=2k+1$，
        $
          n^2&=(2k+1)^2 \
             &=4k^2+4k+1 \
             &=2(2k^2+2k)+1
        $
        可以看出$n^2$必然是奇数。证明成立。
      ]
    + *证明*，利用反证法。存在一个偶数n，其中$n=2k$，$n^2=(2k)^2=4k^2=2(2k^2)$，得出如果n是偶数，那么$n^2$必然是偶数。起逆否命题：如果$n^2$是奇数，那么n必然是奇数。证明成立。
  ],
)

#example(title: [
  如果n是奇数，当且仅当$n^2$是奇数。
], solutions: [
  在例72和73中证明得到，$"n is odd" <==> n^2 "is odd"$，所以该命题为真。
])

#example(
  title: [
    根据算术基本定理，每一个大于1的自然数可以唯一写成素数的乘积（不考虑因子的顺序）。例如，$45=3*3*5$。将下列各自然数写成素数的乘积的形式。\
    (a) 243 ~~ (b) 124 ~~ (c) 5100
  ],
  solutions: [
    + $243=3*3*3*3*3$
    + $124=4*31$
    + $5100=2*2*3*5*5*17$
  ],
)

#example(
  title: [
    用算术的基本性质（习题75）证明，任何一个大于1的自然数的平方都可以唯一写成一系列素数的乘积（不考虑因子的顺序）。并且每个素数都出现偶数次，例如，$(45)^2=3*3*3*3*5*5$
  ],
  solutions: [
    *证明*，根据算术基本定理，任何一个大于1的自然数都可以唯一写成素数的乘积。无论该自然数所得到的乘积序列个数是奇数还是偶数，当该自然数平方后相当于*两个*乘积序列相乘，自然得到的是偶数次序列。
  ],
)

#example(
  title: [
    证明$sqrt(2)$是无理数，提示：尝试用反证法证明。假如$sqrt(2)=p/q$，其中p，q均为整数（必要的话不为1），那么$2=p^2/q^2$。用习题76的方法证明这是矛盾的。
  ],
  solutions: [
    *证明*，存在整数p和q使得$sqrt(2)=p/q$,假设$sqrt(2)$是有理数，说明p和q二者为互质整数。
    $
      2     &=p^2/q^2 \
      p^2   &=2q^2 => p=2k med (k in Zeta) \
      (2k)^2&=2q^2 => 2k^2=q^2 \
    $
    从上式我们可以看出：p和q均为偶数，那么二者具有公因子2，与我们假设的不成立。证明$sqrt(2)$是无理数。
  ],
)

#example(title: [
  证明$sqrt(3)$是无理数（参考习题77）
], solutions: [
  *证明*，存在整数p和q使得$sqrt(3)=p/q$，假设$sqrt(3)$是有理数，说明p和q二者为互质整数。
  $
    3  &=p^2/q^2 \
    p^2&=3q^2 => p^2=3k => p=3m med (k,m in Zeta) \
  $

  $
    (3m)^2&=2q^2 => q^2=3m^2 => q=3n med (n in Zeta) \
  $
  从上式我们可以看出：p和q都含有因子3，这与我们假设的不符合，证明$sqrt(3)$为无理数。
])

#example(title: [
  证明两个有理数的和仍然是有理数。
], solutions: [
  *证明*。假设存在两个有理数a和b，它们可以分别用$a=p/q$和$b=m/n$（其中p，q，m和n是整数，且q和n不为零）表示。

  两个有理数的和可以表示为：
  $
    a+b
      &= p/q+m/n \
      &=(n p+ m q)/(n q)
  $

  因为整数的乘法和加法仍然产生整数，所以$(n p+ m q)/(n q)$得到的仍然是整数之比，$a+b$依然是一个有理数。
])

#example(title: [
  证明一个有理数（0除外）和一个无理数的积是一个无理数。（提示：用反证法证明）。
], solutions: [
  *证明*，假设存在有理数p（$p!=0$），无理数r和其乘积有理数q，可以得到：
  $
    q=m/n med (m,n in Zeta,n !=0) \
  $
  同时，
  $
    p r=m/n => r=m/(n p)
  $

  由于整数的乘积仍然为整数，得出r为有理数，这与我们假设的相悖。证明一个有理数（0除外）和一个无理数的积是一个无理数。
])

#example(
  title: [
    下面哪一个是有理数，哪一个是无理数？\
    (a) $-sqrt(9)$ ~~ (b) $0.375$ ~~ (c) $(3sqrt(2))(5sqrt(2))$ ~~ (d) $(1+sqrt(3))^2$
  ],
  solutions: [
    + 有理数
    + 有理数
    + 有理数，$(3sqrt(2))(5sqrt(2))=15*2=30$
    + 无理数，$(1+sqrt(3))^2=1+2sqrt(3)+3=4+2sqrt(3)$
  ],
)

#example(
  title: [
    一个数b称为数集S的*上界*，如果对集合中的每个数都有$x lt.eq.slant
    b$。例如5，6.5和13就是数集$S={1,2,3,4,5}$的上界。数5是数集S的*上确界*（最小的上界）。类似地，1.6，2和2.5是无限集合$T={1.4,1.49,1.499,1.4999,...}$的上界，1.5是它的上确界。找出下列集合的上确界。
    + $S={-10,-8,-6,-4,-2}$
    + $S={-2,-2.1,-2.11,-2.111,-2.1111,...}$
    + $S={2.4,2.44,2.444,2.4444,...}$
    + $S={1-1/2,1-1/3,1-1/4,1-1/5,...}$
    + $S={x mid(|) x=(-1)^n+1/n}$，n是正整数。也就是说，S是所有具有形式$x=(-1)^n+1/n$的数的集合，其中n是整数。
    + $S={x mid(|) x^2<2}"，x是有理数。"$
  ],
  solutions: [
    + -2
    + -2
    + $22/9$，$ x&=2.444... \ 10x&=24.444... \ 10x-x&=22 \ x&=22/9 $
    + 1，$ x_1=1/2,x_2=2/3,x_3=3/4,x_4=4/5,...,x_n ->1 $
    + $3/2$，$ x_1=0,x_2=3/2,x_3=-2/3,x_4=5/4,x_5=-4/5,x_6=7/6,...,x_(2k)->1,x_(2k+1)->-1 $
    + $sqrt(2)$
  ],
)

#example(title: [
  实数数轴完整性公理表明：任一有上界的实数集合必有一个实数上确界。
  + 如果将实数换为有理数，证明这个结论是错误的。
  + 如果将实数换为自然数，这个结论是对还是错？
], solutions: [
  + 太绝对化，可能不存在一个有理数集合既是其上界又是所有上界中最小的那个数。例如${x mid(|) x^2<5}$集合中上确界就为$sqrt(5)$。
  + 对，因为该集合为自然数集合，在集合中最大的那个自然数自然就是该集合的上确界。
])

