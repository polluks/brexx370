/* -----------------------------------------------------------------
 * Part One  Sticky Note for Writing short Message
 * -----------------------------------------------------------------
 */
  parse arg row,col,rows,cols,color
  alias=gettoken()      /* define alias (for stems) */
  if color='' then color=#turq
  call fssDash  'POP1',alias,row,col,rows,cols,color             /* Create FSS Screen defs  */
  sticky.alias.__refresh=0                                       /* refresh every n seconds */
  sticky.alias.__fetch=""                                        /* not necessary */
return 0
/* -----------------------------------------------------------------
 * Part Two  not necessary, set directly
 * -----------------------------------------------------------------
 */
