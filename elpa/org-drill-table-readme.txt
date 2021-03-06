Generate drill cards from org tables.

org-drill requires individual headlines with the "drill" tag; creating these
can be laborious and it is difficult to get an overview of your cards when
the buffer is folded.

This package provides a command, `org-drill-table-generate', that will
generate drill cards based on an org-mode table in the current subtree. The
cards will inserted under a new "Cards" heading in the current tree.

For example, given the following org headline,

   * Vocab
   | English   | Spanish |
   |-----------+---------|
   | Today     | Hoy     |
   | Yesterday | Ayer    |
   | Tomorrow  | Mañana  |

invoking `org-drill-table-generate' will generate cards for each table row:

   * Vocab
   :PROPERTIES:
   :DRILL_HEADING: Noun
   :DRILL_CARD_TYPE: twosided
   :DRILL_INSTRUCTIONS: Translate the following word.
   :END:
   | English   | Spanish |
   |-----------+---------|
   | Today     | Hoy     |
   | Yesterday | Ayer    |
   | Tomorrow  | Mañana  |
   ** Cards
   *** Noun                                                            :drill:
   :PROPERTIES:
   :DRILL_CARD_TYPE: twosided
   :END:
   Translate the following word.
   **** English
   Today
   **** Spanish
   Hoy
   *** Noun                                                            :drill:
   :PROPERTIES:
   :DRILL_CARD_TYPE: twosided
   :END:
   Translate the following word.
   **** English
   Yesterday
   **** Spanish
   Ayer
   *** Noun                                                            :drill:
   :PROPERTIES:
   :DRILL_CARD_TYPE: twosided
   :END:
   Translate the following word.
   **** English
   Tomorrow
   **** Spanish
   Mañana

`org-drill-table-generate' checks the existing list of cards so it does not
add duplicates.

This package provides an additional command, `org-drill-table-update', which
can be added to `org-ctrl-c-ctrl-c-hook'.
