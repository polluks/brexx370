PRTBANNR: Procedure
parse arg msg,width,prtchar
if msg = '' then do
/*
   say "syntax: [rx.exe] banner.r <message>"
   say "author: Bill N. Vlachoudis 1989"
 */
   return
end
if prtchar='' then prtchar='*'
Char. = ''
a = C2D("ß")
b= "Z01090900080B00070209020005020C020004020E0200030210020004020E020005020C"||,
   "020006020A02"
b=b"00070208020001070A070001070A0800Z"
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("¢");b = "Z07080300080300070400050800040A00030403040003030003030404"||,
   "00030B00040900060300060300060300Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D(".");b = "Z11070300060500070300Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("<");b = "Z080A0400080400070400050400030400030400040400060400070400"||,
   "080400Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("(");b = "Z070A0300080400070400060400050400040400040300040300040300"||,
   "040300040400050400070300Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("+");b = "Z08080300080300070400070300030B00030B00070300060400060300"||,
   "060300Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("|");b = "Z05080300080300080300080300070400070300070300070300070300"||,
   "070300070300060400060300060300060300060300060300Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("&");b = "Z07070400060500050301030004030203000403010300050500040600"||,
   "0307010300020402050002030403000203040300020A000306010300Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("!");b = "Z07070500070500070500070500060500070300070300070300010001"||,
   "00070300060400060300Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("$");b = "Z06080300080300050800040A0004030304000403000408000607000A"||,
   "04000304040300040A00050800060300060300Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("*");b = "Z08030305030004030303000503010300060500030B00030B00060500"||,
   "050301030004030303000303050300Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D(")");b = "Z070703000804000904000A03000A03000A03000A0300090400080400"||,
   "070400060400050400040300Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D(";");b = "Z0A070300060400060300010001000603000504000504000503000403"||,
   "00030300Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("¬");b = "Z0C040900040900090400090300Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("-");b = "Z0C050800040800Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("/");b = "Z080C03000B04000A0300090300080300070300060300050300040300"||,
   "020400020300Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D(",");b = "Z0F060300050400050400050300040300030300Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("%");b = "Z07050403030004050203000306010300030501030003040104000803"||,
   "000703000603000503020400040302050003030206000203030500080400Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("_");b = "Z15010F00010F00Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D(">");b = "Z080504000604000704000904000A04000A0400080400060400050400"||,
   "030400Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("?");b = "Z07070700060900050304030004030503000A04000706000604000603"||,
   "0006030001000100050300040400040300Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D(":");b = "Z0B090300080400080300010001000100070300060400060300Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("#");b = "Z07060301030006030103000504010300030C00030C00050301040005"||,
   "03010300020C00020C000403020300040301030004030103000403010300Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("@");b = "Z0706060005080004030403000C03000C03000B040004060103000307"||,
   "010300020302030103000203010301040002030103010300030A000405010300Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("'");b = "Z07070300060400070200070200060200050200050100Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("=");b = "Z09050800050800010001000100040800040800Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D('"');b = "Z07060303030005040204000602040200060204020005020402000402"||,
   "0402000401050100Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("a");b = "Z0B060401020005020203000402040200040204020003020402000302"||,
   "0402000302030300030202040101000404010300Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("b");b = "Z07060300070200070200060200060201040006040202000502050200"||,
   "05020502000402060200040205020004020402000402030200050500Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("c");b = "Z0B070500060203020005020402000502000402000402000402050100"||,
   "0502020200060400Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("d");b = "Z070A04000B03000C02000B0200060401020005020104000402040200"||,
   "0302050200030205020002020502000202050200020203040101000305010400Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("e");b = "Z0B080400070202020006020302000502030200040700040200040200"||,
   "0402030200050500Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("f");b = "Z07090500080202020008020007020005070007020006020006020006"||,
   "02000502000502000502000502000402000102010200010400Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("g");b = "Z0B070500060203030005020402000502030200050203020006040005"||,
   "0200050400040202030003020502000302050200040700Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("h");b = "Z07050400070200070200060200060202030005020202010200050201"||,
   "020202000504020200040205020004020402000402040200030205020102000302040500Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("i");b = "Z080A02000A0200010008030009020009020008020008020008020007"||,
   "02000702010100070400Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("ð");b = "Z070A0400080500070400050500040400040400050400060400070400"||,
   "0804000100030A00020A00Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("±");b = "Z01070200070200070200070200070200070200070200070200070200"||,
   "070200070200070200010F0007020007020007020007020007020007020007020007020"||,
   "0070200070200070200Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("j");b = "Z080B02000B020001000804000A02000A020009020009020009020008"||,
   "02000802000702000401020200050300Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("k");b = "Z07050400070200070200060200060201040005020302000502020200"||,
   "050500040201020004020202000402020200030204020101000302050300Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("l");b = "Z070804000A02000A0200090200090200080200080200080200070200"||,
   "0702000602000602010100060400Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("m");b = "Z0B020302030203000302010701020003040203020200030303020302"||,
   "00020204020302000202040203020001030302030200010204020302010100010204020"||,
   "40300Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("n");b = "Z0B050302040005020106000504030200040305020004020502000402"||,
   "0502000402040200030205020101000302060300Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("o");b = "Z0B060500040303020003020602000202070200020206020002020602"||,
   "0002020502000302030200040500Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("p");b = "Z0B040401040005050202000503040200050205020004020502000402"||,
   "050200040204020003050102000302020300020200020200020400Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("q");b = "Z0B080401020006030203000502040200040205020004020502000302"||,
   "050200030204030003020204000404010200090200080200080400Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("r");b = "Z0B060302020007020104000704010100060300060200060200050200"||,
   "050200050200Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("Æ");b = "Z07080300080300080300040A00040A00070300070300070300010001"||,
   "00040900030900Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("€");b = "Z09040900040900040900040900040900040900040900Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("s");b = "Z0B070401010006020203000602030100070200080200090200050103"||,
   "020004030202000401010400Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("t");b = "Z080A0100090200090200050900080200070200070200070200060200"||,
   "0602000602010100070300Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("u");b = "Z0B040205020002040402000402040200030204020003020402000302"||,
   "040200020203030002080101000304020300Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("v");b = "Z0B030303030004020402000402040200040203020004020302000402"||,
   "0202000402010200040400050200Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("w");b = "Z0B01020A030002020402040200020204020402000202030303020002"||,
   "0202020102020200030402020102000303030201020003020404000302050200Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("x");b = "Z0B040304030006020202010100060201020007030007020006040005"||,
   "020102020100020101020303000203050200Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("y");b = "Z0B040403030006020402000602040200060203020006020202000602"||,
   "0102000604000603000602000502000201010200020300Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("z");b = "Z0B050800050202030005010302000802000702000602000502040100"||,
   "0403020200030800Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("¿");b = "Z01070200070200070200070200070200070200070200070200070200"||,
   "070200070200070200070900Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("Ð");b = "Z0D070900070200070200070200070200070200070200070200070200"||,
   "070200070200070200Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("[");b = "Z07080700080700070200070200060200060200050200050200050200"||,
   "040200040200030200030200020700020700Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("Þ");b = "Z070504000605000705000904000A04000A0400080500060500050400"||,
   "0304000100030A00020A00Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("®");b = "Z0B060500050700040900040900050700060500Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("^");b = "Z05060600050204020004020602000402060200040206020004020602"||,
   "0004020502000502030200060500Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("£");b = "Z05050600090200090200090200080200080200080200080200040900Z";
Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("¥");b = "Z08090300080400080300030B00030B00070300060300030A00030A00"||,
   "050400050300050300Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("·");b = "Z050608000C02000B02000903000804000B0200030206020004020402"||,
   "00050600Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("©");b = "Z05080300070200060200050205020004020502000402040200040900"||,
   "090200080200Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("§");b = "Z07090400080201030007020302000602050100050500050201030004"||,
   "020402000503010200060500020105020002020302000203010200030400Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("¶");b = "Z05080300060300050300040300040900040206020004020602000502"||,
   "040200060600Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("½");b = "Z05070600060204020005020602000602040200050800040304030004"||,
   "020602000403040300050800Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("¾");b = "Z50706000503030300050205020005020502000503030300060700090"||,
   "300080300070300Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("]");b = "Z01070200070200070200070200070200070200070200070200070200"||,
   "070200070200070200010800Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("¯");b = "Z0D010800070200070200070200070200070200070200070200070200"||,
   "070200070200070200Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("]");b = "Z070807000807000C02000C02000B02000B02000A02000A02000A0200"||,
   "090200090200080200080200020700020700Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("´");b = "Z050609000D02000D02000C02000B02000A0200090200080200070200Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("×");b = "Z0D010F00Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("{");b = "Z060A05000A0500090300090300080400080300050500050500080300"||,
   "080300070300070300070500070500Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("A");b = "Z070E01000D02000C03000B04000A0201020009020202000802030200"||,
   "07020402000609000502060200040207020003020802000105050500Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("B");b = "Z07050900060205020006020502000502060200050205020005020402"||,
   "0004080004020502000402060200030207020003020602000302050200010A00Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("C");b = "Z07070601010005030403000402070200030307020002030002030001"||,
   "030001030001020001020002020702000203040300030800Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("D");b = "Z07040A00050304030006020503000502060300050206030005020603"||,
   "00040207030004020703000402060300030207030003020603000203050300010A00Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("E");b = "Z07040B00050305020006020601000502000502030100050202020004"||,
   "07000402030100040200030207010003020602000203050200010B00Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("F");b = "Z07040B00050305020006020601000502000502030100050202020004"||,
   "07000402030100040200030200030200020300010500Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("G");b = "Z07070601010005030403000402070200030308010002030002030001"||,
   "030001030506000102080200010208020002020702000203050200030800Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("H");b = "Z07040502050005030403000602050200050205020005020502000502"||,
   "05020004090004020502000402050200030205020003020502000203040300010502050"||,
   "0Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("I");b = "Z07070600080400090200080200080200080200070200070200070200"||,
   "060200060200050400040600Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("ô");b = "Z01070200070200070200070200070200070200070200070200070200"||,
   "070200070200070200010F00Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("ö");b = "Z0D010F00070200070200070200070200070200070200070200070200"||,
   "070200070200070200Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("}");b = "Z06070500070500090300080300080300080300080500080500070300"||,
   "070300070300060300030600030600Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("J");b = "Z070806000904000A0200090200090200090200080200080200080200"||,
   "07020003010302000202030200020600Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("K");b = "Z07040602040005030502000602040200050204020005020202000505"||,
   "00040500040202020004020202000302040200030205020002030503000105030600Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("L");b = "Z07050700060300070200060200060200060200050200050200050200"||,
   "040208010004020701000403050200020B00Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("M");b = "Z07010507030003030702000304050300030404040002020102030500"||,
   "02020202020201020002020202010202020002020303020200020203020302000202030"||,
   "1040200010208020001020802000103050500Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("N");b = "Z07030504040005020602000402060200040206020004030502000302"||,
   "01020302000302010203020003020202020200030202020202000302030201020002020"||,
   "5030002020503000103060200Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("O");b = "Z07070700050304030004020702000303070300020308030002030803"||,
   "00010308030001030803000102090200010208020002020702000203040300030800Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("P");b = "Z07040A00050304030006020503000502060300050206020005020502"||,
   "00040900040200040200030200030200020300010600Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("Q");b = "Z07070700050304030004020702000303070300020308030002030803"||,
   "00010308030001030803000102090200010208020002020702000203040300030800040"||,
   "207010003050402000202010800Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("R");b = "Z07040A00050304030006020503000502060300050206020005020502"||,
   "00040900040202030004020302000302050200030206020002030603000104050600Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("\");b = "Z080203000204000403000503000603000703000803000903000A0300"||,
   "0B04000C0300Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("S");b = "Z07060501030005020304000502050200050205010005030005040006"||,
   "05000804000903000301060200020206020002040402000103010600Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("T");b = "Z07020D00020203020402000102040203020006020006020006020006"||,
   "0200050200050200050200050200040300030500Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("U");b = "Z07020504050003020702000302070200020208020002020702000202"||,
   "070200010208020001020702000102070200010207020001020602000202040200030600Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("V");b = "Z07020504050003030602010100030206020003020602000302050200"||,
   "030204020003020302000302020200030500030400030300030200030100Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("W");b = "Z07010507030002030401030300020204020402000202040204020002"||,
   "02030304020002020204030200020201020102030200020201020102020200020402020"||,
   "102000203030400020204030002020402000201050100Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("X");b = "Z07030602050005030402000602030200060202020006020102000703"||,
   "0007020006040005020102000402020200030204020002020502000104020600Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("Y");b = "Z07020504040003030602000402050200040204020005020202000505"||,
   "00060300060200060200050200050200040300020700Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("Z");b = "Z07040C00030306030002020702000A02000902000802000702000602"||,
   "0005020004020003020802000203060300010C00Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("²");b = "Z05070600050304020005020502000B03000903000703000503000403"||,
   "00040900Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("Ô");b = "Z01070200070200070200070200070200070200070200070200070200"||,
   "07020007020007020007090007020007020007020007020007020007020007020007020"||,
   "0070200070200070200Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("Ö");b = "Z01070200070200070200070200070200070200070200070200070200"||,
   "07020007020007020001080007020007020007020007020007020007020007020007020"||,
   "0070200070200070200Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("Õ");b = "Z50608000602000602000607000C02000C02000402060200040205020"||,
   "0050700Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("0");b = "Z07080400060203020005020502000402060200040206020003020702"||,
   "00030206020003020602000302050200030205020003020402000302030200040400Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("1");b = "Z070A02000804000A0200090200090200090200080200080200080200"||,
   "070200070200060300040600Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("2");b = "Z07080400060301030005020502000C02000C02000B02000A02000902"||,
   "0008020007020006020401000403040100030900Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("3");b = "Z0708050007020302000C02000C02000B02000903000704000A02000A"||,
   "02000A02000A02000302040200040600Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("4");b = "Z070B02000A0300090400080400070201020006020202000502020200"||,
   "04020302000302040200020B00080200080200070200Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("5");b = "Z070707000706000602000602000604000902000A02000B02000B0200"||,
   "0A02000A02000303030200040600Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("6");b = "Z070A0300080300070200060200050200040700040203030003020502"||,
   "000302050200030205020003020502000402030200050500Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("7");b = "Z07050900040303030003010602000902000802000802000702000702"||,
   "00060200060200050200050200040200Z";Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("8");b = "Z07080600070204020006020502000602040200060203020007050005"||,
   "060004020402000302060200020207020002020602000302040200040600Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
a = C2D("9");b = "Z07070500060203020005020402000402060200040206020004020502"||,
   "000502030300060600090200080200060300040300030200Z";
   Char.a = X2C(SUBSTR(b,2,length(b)-2))
call big msg,prtchar
j=0
maxlen=0
do i = 1 to 23
   j=j+1
   PRTBUFFER.j=lines.i
   llen=length(PRTBUFFER.j)
   if llen>maxlen then maxlen=llen
end
PRTBUFFER.0=j
   do i = 1 to PRTBUFFER.0
      call PRINT PRTBUFFER.i
   end
return

big: procedure expose char. lines.
parse arg msg,prtchar
Drop lines.
lines. = ''
maxline=0
width=0
Do k = 1 to length(Msg)
   Drop Letter.
   Letter. = copies(' ',18)
   i = C2d(Substr(Msg,k,1))
   maxline=max(maxline,letter(i))
   call adjust maxline
   call add2Lines 1,maxline
End
return
letter:
  parse arg i
  flag = ' '
  line = ''
  lprt = C2D(Left(Char.i,1))
  Do j = 2 to length(Char.i)
     c = C2d(Substr(Char.i,j,1))
     if c = 0 then do
        Letter.Lprt = Overlay(Line,Letter.Lprt,1)
        line = ''
        flag = 0
        lprt = lprt + 1
     end
     Line = Line || Copies(flag,C)
     if Flag == ' ' then flag = prtchar
        else flag = ' '
  end
return lprt
adjust:
  parse arg maxlines
  CLEFT = 18
  CRIGHT = 1
  Do j = 1 to maxlines
     p = POS(prtchar,Letter.j)
     if p = 0 then ITERATE
     if p < CLEFT then CLEFT = p
     p = LASTPOS(prtchar,Letter.j)
     if p > CRIGHT then CRIGHT = p
  end
  CLENGTH = CRIGHT-CLEFT+1
  if CLENGTH < 1 then do
     CLENGTH = 6
     CLEFT = 1
  end
return
add2Lines:
parse arg minline,maxline
  Do j = minline to maxline
     Lines.j = left(lines.j,width) Substr(Letter.j,CLEFT,CLENGTH)
  End
  width=width+clength
return
