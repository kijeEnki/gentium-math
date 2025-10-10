#set page(paper: "a5")
#set text(font: "Gentium", number-type: "old-style", size: 10pt)
#show raw: set text(font: "SIL Manuscript")
#set par(justify: true, linebreaks: "optimized")
#show math.equation: set text(font: "Publiculum")
#let TeX = [#box(
  [#sym.Tau#h(-1em / 6)#box(
      [#move([#sym.Epsilon], dy: 31em / 144)],
    )#h(-1em / 8)#box(
      [#sym.Chi],
    )],
)]
#let call(it) = text(
  features: ("ss17",),
  box($cal(it)$),
)
#let small(it) = text(
  size: 0.75em,
  top-edge: 0.5em,
  it,
)

This is a document created to test the capabilites of _typst_ and the font I’m creating, _Publiculum_. The body text is set in _Gentium v7.0_, while the equations are in _Publiculum_.

#text(number-type: "lining")[$
  integral cal(D)' [x(t)] sqrt(
    frac(
      3 pi^2 - sum_(n=0)^infinity (z + hat(L))^q exp (upright(i) q^2 planck.reduce x),
      (sans(upright(T r)) bold(cal(A)))
      (
        bold(italic(Lambda))^(i_1 i_2)_(j_1 j_2)
        italic(Gamma)^(j_1 j_2)_(i_1 i_2) arrow.hook arrow(D) dot bold(P)
      )
    )
  ) = underbrace(
    tilde(
      lr(
        angle.l
        frac(pi.alt, 2) in.not emptyset mid(|) frac(diff_mu, 2) frac(1, 2)
        angle.r
      )
    ), upright(K_3 F e (C N)_6)
  ), forall x in RR
$]
#small[```typ
$ // code for generating the equation above
  integral cal(D)' [x(t)] sqrt(
    frac(
      3 pi^2 - sum_(n=0)^infinity (z + hat(L))^q exp (upright(i) q^2 planck.reduce x),
      (sans(upright(T r)) bold(cal(A)))
      (
        bold(italic(Lambda))^(i_1 i_2)_(j_1 j_2)
        italic(Gamma)^(j_1 j_2)_(i_1 i_2) arrow.hook arrow(D) dot bold(P)
      )
    )
  ) = underbrace(
    tilde(
      lr(
        angle.l
        frac(pi.alt, 2) in.not emptyset mid(|) frac(diff_mu, 2) frac(1, 2)
        angle.r
      )
    ), upright(K_3 F e (C N)_6)
  ), forall x in RR
$
```]

During rendering of this document, a few errors could have occured. Fortunately, there’s only two for now:

#list(
  [The tilde is not stretched. _Although this bug affects practically every software, including Chrome, #TeX, Word and whatnot. Firefox, somehow, gets it right._],
  [The #raw("underbrace") is too left.],
)

By the way:

#list(
  [You can enable and disable old-style figures, compare
    #text(number-type: "old-style")[$123bold(456)bb(789)$] with #text(number-type: "lining")[$123bold(456)bb(789)$].],
  [For sans-serif glyphs, you may either use ones from _Andika_ or from _Sophia_:
    $sans("Sans serif")$ vs #text(stylistic-set: 15)[$sans("Sans serif")$]. The former looks more handwritten, while the latter is based on a more serious font. (_#smallcaps[sil] Sophia_ is based on the font _Univers_). Stylistic set \#15, however, does _not_ change Greek letters.],
  [Both “calligraphic” (#raw("\mathcal", lang: "tex")) and “script” (#raw("\mathscr", lang: "tex")) letters are supported. The latter are defaults, the former are accessible using Variant selector \#00 or Stylistic set \#17. _Typst_ only supports the latter. Both are taken from the font _#smallcaps[stix] Two Math_, so the calligraphic ones have the same $call("freaky")$ style.],
)
