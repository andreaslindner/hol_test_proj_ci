open HolKernel Parse boolLib bossLib;
open wordsTheory;


val _ = new_theory "some";


val heavy_thm = store_thm("heavy_thm", ``
  FINITE (UNIV: 'a word -> bool)
``,
  METIS_TAC [WORD_FINITE]
);


val _ = export_theory();

