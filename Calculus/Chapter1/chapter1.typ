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
  chapter: 1,
)

= 极限

== 极限的介绍


