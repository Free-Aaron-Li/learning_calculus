#import "../typst/template/reference.typ": POINT,NOTE,TIP,cn_fake-italic,indent,example,line,THEOREM
#import "../typst/template/page/basic.typ":basic

#let center_title = [learning Calculus]
#show:doc=>basic(
  title: center_title, // 标题
  authors: ((
    name: "aaron.li",
    affiliation: "pzhu",
    email: "communicate_aaron@outlook.com",
  ),),
  doc,
  chapter: 1,
)

= 数学归纳法 <Mathematical_induction>

在数学中，通常会面临诸如要求建立某一命题的任务，如：对每一个整数$n gt.eq.slant 1$（或任意整数$n gt.eq.slant N$），有命题$P_n$成立，例如：

#pad(left: 2em)[
  1. $P_n: 1^2+2^2+3^2+...+n^2=(n(n+1)(2n+1))/6$
  2. $Q_n: 2^n gt n+20$
  3. $R_n: n^2-n+41$是素数
]

上述三个例子中，命题$P_n$对所有整数均成立，命题$Q_n$对大于或等于5的每一个整数成立，命题$R_n$对n为$1 lt n lt 41$的整数成立。说明对一个命题来说，可能在很多的情况下均成立，但是并不能保证对所有情况都成立。因此，对有限情况和对所有情况之间的差别是非常大的。

那么，是否存在一种法则，对所有$n$都有命题$P_n$成立？

*数学归纳法*申请参战 ┗|｀O′|┛ 嗷\~\~

#set ref(supplement: it => {
  if it.func() == heading {
    "Chapter"
  } else {
    "Thing"
  }
})

#THEOREM(
  title: [数学归纳法原理],
  des: [
    令${P_n}$是命题的一个序列，它若满足下面两个条件：

    #pad(left: 4em)[
      1. $P_n$成立（$N$通常等于$1$）。
      2. 由$P_i$成立可推出$P_(i+1)$成立，$i gt.eq.slant N$。<conditions2>
    ]

    #h(2em)则，$P_n$对所有的$n gt.eq.slant N$都成立。

    该原理通常被当作公理使用，因为它看起来是显然成立的。毕竟，如果第一条就不成立或者第一条不能推出下一条成立，那么整个公理就不可能成立，就像*链条*一样。
  ],
)

#line
#example(
  title: [证明$ P_n: 1^2+2^2+3^2+...+n^2=(n(n+1)(2n+1))/6 $对所有的$n gt.eq.slant$都成立。],
  solutions: [
    *证明：*首先我们对$P_1$证明：$ P_1: 1=(1(1+1)(2*1+1))/6 $ 是成立的。

    接下来运用原理的条件2,写出：
    $
      P_i: 1^2+2^2+3^2+...+i^2=(i(i+1)(2i+1))/6 \
      P_(i+1): 1^2+2^2+3^2+...+i^2+(i+1)^2=((i+1)(i+2)(2i+3))/6
    $

    我们必须说明由$P_i$可推出$P_(i+1)$,因此我们先*假设*$P_i$成立，然后$P_(i+1)$的左边可写成（$star$表示$P_i$被运用）：

    $
      [1^2+2^2+...+i^2]+(i+1)^2
        &=^star (i(i+1)(2i+1))/6 +(i+1)^2 \
        &=(i+1)(2i^2+i+6i+6)/6 \
        &=((i+1)(i+2)(2i+3))/6 \
    $

    这一系列的等式可推出$P_(i+1)$，因此，$P_i$成立可推出$P_(i+1)$也成立，运用数学归纳法原理可知，$P_n$对所有的正整数$n$都成立。
  ],
)

#example(
  title: [证明$P_n: 2^n+n+20$对$n gt.eq.slant 5$的整数成立。],
  solutions: [首先，我们注意到：$P_5: 2^5 gt 5+20$成立，其次，我们*假定*$P_i:2^i gt i+20$成立，并且试着去推出$P_(i+1) gt
    i+1+20$也成立，有
    $ 2^(i+1) eq 2*2^i gt 2(i+20) eq 2i+40 gt 2i+21 $

    命题$P_(i+1)$成立，于是$P_n$对$n gt.eq.slant n$是成立的。],
)

#example(
  title: [证明 \ $P_n : x-y$是$x^n - y^n$的一个因子，对大于1的整数成立。],
  solutions: [
    很明显，$x-y$是$x-y$的因子，即$P_i$成立。*假定*$x-y$是$x^n -y^n$的因子，即存在某多项式$Q(x,y)$使得
    $ x^i-y^i eq Q(x,y)(x-y) $

    则
    $
      x^(i+1)-y^(i+1)
        &=^star x^(i+1)-x^i y+x^i y -y^(i+1) \
        &=x^i(x-y)+y(x^i-y^i) \
        &=x^i (x-y) + Q(x,y)(x-y) \
        &=[x^i +Q(x,y)](x-y)
    $

    因此，由$P_i$成立能推出$P_(i+1)$也成立。根据数学归纳法原理，我们可得出$P_n$对所有的$n gt.eq.slant 1$均成立。
  ],
)
#line