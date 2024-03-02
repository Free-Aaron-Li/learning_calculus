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

= 数学归纳法

== *在习题1～8中，运用数学归纳法原理对所给命题在$n gt.eq.slant 1$情况下作出证明。*
#line

#example(
    title:[],
    solutions:[],
)

#line