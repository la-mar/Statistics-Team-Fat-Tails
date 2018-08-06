** load in training data;
data houses;
input Id Neighborhood $ GrLivArea SalePrice;
datalines;
8 NWAmes 2090 200000
10 BrkSide 1077 118000
16 BrkSide 854 132000
30 BrkSide 520 68500
40 Edwards 1152 82000
52 BrkSide 1176 114500
78 BrkSide 1285 127000
98 Edwards 960 94750
99 Edwards 835 83000
101 NWAmes 1610 205000
110 NWAmes 1844 190000
111 Edwards 1855 136900
118 Edwards 1125 155000
125 NWAmes 1586 181000
136 NWAmes 1682 174000
146 Edwards 1709 130000
147 BrkSide 875 105000
150 BrkSide 1344 115000
153 NWAmes 1993 190000
156 Edwards 1096 79000
166 Edwards 1355 127500
176 Edwards 2158 243000
183 Edwards 1340 120000
185 BrkSide 1252 127000
194 Edwards 1709 130000
201 Edwards 1121 140000
211 Edwards 864 98000
212 Edwards 1212 186000
223 NWAmes 1552 179900
240 Edwards 1487 113000
246 NWAmes 1872 241500
251 BrkSide 1306 76500
266 NWAmes 1422 175500
270 Edwards 1113 148000
276 BrkSide 1548 205000
290 BrkSide 1396 153575
293 Edwards 1716 131000
294 NWAmes 2263 235000
299 NWAmes 1743 175000
309 Edwards 861 82500
317 NWAmes 2353 260000
320 NWAmes 1472 187500
329 BrkSide 2134 214500
339 NWAmes 1621 202500
346 BrkSide 1577 140200
353 Edwards 1111 95000
362 BrkSide 1505 145000
363 Edwards 1922 198500
365 NWAmes 1574 190000
376 Edwards 904 61000
387 Edwards 1184 81000
388 Edwards 1125 125000
391 Edwards 1367 119000
394 BrkSide 788 100000
396 Edwards 1144 129000
411 Edwards 1276 60000
419 Edwards 1134 126000
422 NWAmes 1602 215000
438 BrkSide 904 119000
440 Edwards 1196 110000
442 Edwards 1440 118000
443 BrkSide 1573 162900
446 Edwards 1689 127500
456 NWAmes 1242 175500
460 BrkSide 1203 110000
472 NWAmes 1969 190000
473 Edwards 1072 148000
488 NWAmes 1484 175000
498 BrkSide 1820 184000
503 Edwards 1214 140000
517 NWAmes 2119 158000
523 BrkSide 1664 159000
524 Edwards 4676 184750
529 Edwards 605 86000
532 BrkSide 1362 128000
534 BrkSide 334 39300
536 Edwards 1347 107500
543 NWAmes 1680 213250
546 NWAmes 2183 229000
547 BrkSide 1635 210000
554 Edwards 1126 108000
556 BrkSide 1048 113000
563 Edwards 996 108000
564 Edwards 1674 185000
583 Edwards 816 118500
585 BrkSide 1573 133000
587 BrkSide 838 130000
590 BrkSide 935 79500
608 Edwards 2008 225000
612 NWAmes 1032 148000
621 Edwards 864 67000
622 NWAmes 2614 240000
625 NWAmes 1790 165150
633 NWAmes 1411 82500
637 BrkSide 800 60000
639 Edwards 796 85000
644 NWAmes 1620 152000
648 Edwards 1094 155000
652 Edwards 1510 108000
660 Edwards 1486 167000
661 NWAmes 1935 197900
664 Edwards 1181 137500
672 Edwards 1369 103600
695 BrkSide 1539 141500
697 BrkSide 616 89000
698 Edwards 1148 123500
702 NWAmes 1164 140000
711 BrkSide 729 52000
714 BrkSide 960 129000
716 NWAmes 1350 165000
718 NWAmes 1178 157000
724 Edwards 1470 135000
725 Edwards 1698 320000
739 Edwards 1200 179000
746 NWAmes 2715 299800
750 Edwards 1529 98000
762 BrkSide 1301 100000
767 NWAmes 1714 196500
772 Edwards 1220 102000
773 Edwards 1117 107000
786 NWAmes 1342 161500
808 BrkSide 1576 223500
811 NWAmes 1309 181000
815 Edwards 1250 116000
827 BrkSide 784 109500
840 Edwards 1200 130500
859 NWAmes 1370 152000
860 NWAmes 2654 250000
881 Edwards 1090 157000
888 Edwards 1393 135500
913 BrkSide 1015 88000
918 Edwards 1229 135000
922 Edwards 2200 145900
925 NWAmes 1686 207500
926 NWAmes 1126 175000
928 NWAmes 1978 176000
936 BrkSide 747 79900
943 Edwards 1440 150000
950 NWAmes 1381 197500
955 Edwards 980 127500
961 BrkSide 858 116500
962 NWAmes 2872 272000
975 BrkSide 2019 167500
977 BrkSide 869 85500
979 Edwards 894 110000
986 Edwards 1164 125000
989 NWAmes 2030 195000
996 BrkSide 1230 121600
998 NWAmes 1442 185000
1001 Edwards 944 82000
1004 NWAmes 1680 136905
1012 Edwards 1664 100000
1016 NWAmes 1665 227000
1021 Edwards 1132 176000
1036 Edwards 845 84000
1042 NWAmes 1632 173000
1045 NWAmes 2524 278000
1046 Edwards 1733 139600
1050 Edwards 930 84900
1054 Edwards 1526 144500
1056 NWAmes 1523 180000
1072 NWAmes 1556 154000
1073 Edwards 1456 91500
1074 Edwards 1426 159500
1081 NWAmes 1258 145000
1089 Edwards 1709 137500
1099 BrkSide 1324 128000
1100 NWAmes 1601 157000
1112 NWAmes 1964 205000
1123 Edwards 960 112000
1124 Edwards 698 118000
1136 BrkSide 986 102000
1140 BrkSide 1167 144000
1142 NWAmes 1868 197500
1145 Edwards 924 80000
1146 BrkSide 1576 149000
1152 Edwards 1466 149900
1160 NWAmes 1876 185000
1169 Edwards 2108 235000
1180 Edwards 1124 93000
1186 Edwards 1221 104900
1203 BrkSide 1348 117000
1205 NWAmes 1074 153500
1213 Edwards 672 113000
1219 BrkSide 912 80500
1243 NWAmes 1173 170000
1246 NWAmes 1868 178000
1255 Edwards 1656 165400
1256 BrkSide 1367 127500
1258 Edwards 864 99900
1264 BrkSide 1824 180500
1272 NWAmes 1489 185750
1274 Edwards 1357 177000
1277 NWAmes 1395 162000
1278 NWAmes 1724 197900
1286 BrkSide 1412 132500
1287 NWAmes 1328 143000
1294 NWAmes 1664 162900
1295 Edwards 864 115000
1298 Edwards 1072 140000
1299 Edwards 5642 160000
1305 Edwards 1708 130000
1315 Edwards 948 119000
1320 Edwards 948 111000
1322 BrkSide 720 72500
1324 BrkSide 708 82500
1327 Edwards 774 79000
1333 Edwards 816 100000
1336 NWAmes 1334 167900
1337 NWAmes 1656 135000
1347 NWAmes 2156 262500
1353 BrkSide 1176 134900
1356 NWAmes 1920 170000
1378 Edwards 1604 117000
1381 Edwards 864 58500
1385 Edwards 1258 105000
1387 NWAmes 2784 250000
1390 BrkSide 1218 131000
1398 BrkSide 1513 137500
1401 BrkSide 1158 120000
1410 NWAmes 2093 215000
1415 BrkSide 1848 207000
1421 NWAmes 1416 179900
1424 Edwards 2201 274970
1430 NWAmes 1440 182900
1440 NWAmes 1725 197000
1444 BrkSide 952 121000
1449 Edwards 1346 112000
1453 Edwards 1072 145000
1457 NWAmes 2073 210000
1460 Edwards 1256 147500
;
run;

** create new dataset with living arear rounded to the nearest 100sqft;
** and a new column for log of living area;
data houses_rounded;
set houses;
RndLivArea = round(GrLivArea, 100);
logliv = log(RndLivArea);
run;

** basic multiple linear regression;
proc glm data = houses_rounded plots = all;
class Neighborhood;
model Saleprice = RndLivArea Neighborhood / cli solution;
run;

** test to see if there is a difference in average sale price;
** based on neighborhood alone;
proc glm data = houses_rounded;
class Neighborhood;
model Saleprice = Neighborhood / solution;
means Neighborhood / HOVTEST=BF;
lsmeans Neighborhood / pdiff adjust=BON CL;
run;

** load training data plus test data for prediction;
data train_plus_test;
input Id Neighborhood $ GrLivArea SalePrice;
datalines;
10 BrkSide 1077 118000
15 NAmes 1253 157000
16 BrkSide 854 132000
17 NAmes 1004 149000
20 NAmes 1339 139000
27 NAmes 900 134800
29 NAmes 1600 207500
30 BrkSide 520 68500
34 NAmes 1700 165500
38 NAmes 1297 153000
39 NAmes 1057 109000
40 Edwards 1152 82000
41 NAmes 1324 160000
45 NAmes 1150 141000
52 BrkSide 1176 114500
55 NAmes 1360 130000
56 NAmes 1425 180500
67 NAmes 2207 180000
71 NAmes 2223 244000
74 NAmes 1086 144900
77 NAmes 952 135750
78 BrkSide 1285 127000
81 NAmes 2142 193500
84 NAmes 1065 126500
91 NAmes 1040 109900
92 NAmes 1235 98600
98 Edwards 960 94750
99 Edwards 835 83000
100 NAmes 1225 128950
111 Edwards 1855 136900
118 Edwards 1125 155000
123 NAmes 1080 136000
129 NAmes 1348 155000
130 NAmes 1053 150000
131 NAmes 2157 226000
133 NAmes 1327 150750
137 NAmes 1214 143000
141 NAmes 864 115000
143 NAmes 1385 166000
146 Edwards 1709 130000
147 BrkSide 875 105000
150 BrkSide 1344 115000
156 Edwards 1096 79000
157 NAmes 1040 109500
166 Edwards 1355 127500
172 NAmes 1656 215000
174 NAmes 1362 163000
176 Edwards 2158 243000
183 Edwards 1340 120000
185 BrkSide 1252 127000
192 NAmes 1479 184000
194 Edwards 1709 130000
198 NAmes 3112 235000
201 Edwards 1121 140000
208 NAmes 1100 141000
210 NAmes 1092 145000
211 Edwards 864 98000
212 Edwards 1212 186000
216 NAmes 1236 134450
224 NAmes 864 97000
231 NAmes 1194 148000
240 Edwards 1487 113000
248 NAmes 1375 140000
251 BrkSide 1306 76500
254 NAmes 1302 158000
255 NAmes 1314 145000
261 NAmes 1382 176000
270 Edwards 1113 148000
274 NAmes 1632 139000
276 BrkSide 1548 205000
287 NAmes 1734 159000
288 NAmes 858 88000
290 BrkSide 1396 153575
293 Edwards 1716 131000
295 NAmes 1644 167000
309 Edwards 861 82500
312 NAmes 972 132000
325 NAmes 2978 242000
328 NAmes 1383 145250
329 BrkSide 2134 214500
331 NAmes 1728 119000
332 NAmes 1056 139000
340 NAmes 1215 155000
343 NAmes 1040 87500
346 BrkSide 1577 140200
347 NAmes 958 151500
348 NAmes 1478 157500
353 Edwards 1111 95000
362 BrkSide 1505 145000
363 Edwards 1922 198500
367 NAmes 1394 159000
368 NAmes 1431 165000
369 NAmes 1268 132000
370 NAmes 1287 162000
374 NAmes 1319 123000
376 Edwards 904 61000
387 Edwards 1184 81000
388 Edwards 1125 125000
391 Edwards 1367 119000
393 NAmes 882 106500
394 BrkSide 788 100000
396 Edwards 1144 129000
398 NAmes 1812 169500
411 Edwards 1276 60000
419 Edwards 1134 126000
420 NAmes 1056 142000
425 NAmes 1196 139000
428 NAmes 907 109008
438 BrkSide 904 119000
440 Edwards 1196 110000
442 Edwards 1440 118000
443 BrkSide 1573 162900
446 Edwards 1689 127500
447 NAmes 1888 190000
460 BrkSide 1203 110000
467 NAmes 1277 167000
468 NAmes 1644 146500
473 Edwards 1072 148000
486 NAmes 1113 147000
487 NAmes 1073 156000
492 NAmes 1578 133000
494 NAmes 1269 155000
498 BrkSide 1820 184000
500 NAmes 912 120000
503 Edwards 1214 140000
510 NAmes 1041 124500
511 NAmes 1363 164900
513 NAmes 864 129900
522 NAmes 1244 150000
523 BrkSide 1664 159000
524 Edwards 4676 184750
527 NAmes 928 132000
529 Edwards 605 86000
532 BrkSide 1362 128000
533 NAmes 827 107500
534 BrkSide 334 39300
536 Edwards 1347 107500
538 NAmes 864 111250
544 NAmes 767 133000
547 BrkSide 1635 210000
554 Edwards 1126 108000
556 BrkSide 1048 113000
557 NAmes 1092 141000
563 Edwards 996 108000
564 Edwards 1674 185000
570 NAmes 943 135960
571 NAmes 1728 142600
572 NAmes 864 120000
575 NAmes 1109 139000
576 NAmes 1216 118500
581 NAmes 1429 181900
583 Edwards 816 118500
585 BrkSide 1573 133000
587 BrkSide 838 130000
590 BrkSide 935 79500
606 NAmes 1986 205000
608 Edwards 2008 225000
616 NAmes 1054 137500
618 NAmes 832 105500
621 Edwards 864 67000
626 NAmes 1116 160000
627 NAmes 1422 139900
628 NAmes 1520 153000
629 NAmes 2080 135000
630 NAmes 1350 168500
634 NAmes 1056 139400
637 BrkSide 800 60000
639 Edwards 796 85000
643 NAmes 2704 345000
646 NAmes 981 143250
647 NAmes 1048 98300
648 Edwards 1094 155000
649 NAmes 1839 155000
652 Edwards 1510 108000
657 NAmes 1053 145500
659 NAmes 1458 97500
660 Edwards 1486 167000
663 NAmes 1392 110000
664 Edwards 1181 137500
667 NAmes 2380 129000
672 Edwards 1369 103600
675 NAmes 1136 140000
695 BrkSide 1539 141500
697 BrkSide 616 89000
698 Edwards 1148 123500
711 BrkSide 729 52000
714 BrkSide 960 129000
723 NAmes 864 124500
724 Edwards 1470 135000
725 Edwards 1698 320000
726 NAmes 864 120500
729 NAmes 1776 110000
737 NAmes 1040 93500
739 Edwards 1200 179000
750 Edwards 1529 98000
755 NAmes 1026 156000
761 NAmes 864 127500
762 BrkSide 1301 100000
772 Edwards 1220 102000
773 Edwards 1117 107000
774 NAmes 912 114500
798 NAmes 773 110000
805 NAmes 1128 118000
807 NAmes 980 135500
808 BrkSide 1576 223500
809 NAmes 1086 159950
814 NAmes 1442 157900
815 Edwards 1250 116000
817 NAmes 1008 137000
827 BrkSide 784 109500
831 NAmes 1392 166000
834 NAmes 1516 167000
835 NAmes 1144 139950
840 Edwards 1200 130500
843 NAmes 1165 174900
844 NAmes 1800 141000
854 NAmes 1445 158000
864 NAmes 1148 132500
866 NAmes 1002 148500
871 NAmes 894 109500
873 NAmes 910 116000
874 NAmes 1268 133000
881 Edwards 1090 157000
885 NAmes 892 100000
887 NAmes 1712 145000
888 Edwards 1393 135500
889 NAmes 2217 268000
890 NAmes 1505 149500
891 NAmes 924 122900
896 NAmes 1796 140000
901 NAmes 858 110000
902 NAmes 1306 153000
906 NAmes 1063 128000
911 NAmes 2274 154300
913 BrkSide 1015 88000
918 Edwards 1229 135000
920 NAmes 1414 176500
922 Edwards 2200 145900
932 NAmes 925 117500
935 NAmes 2069 242000
936 BrkSide 747 79900
943 Edwards 1440 150000
947 NAmes 1144 143000
951 NAmes 864 129000
955 Edwards 980 127500
961 BrkSide 858 116500
968 NAmes 1098 135000
970 NAmes 1095 140000
971 NAmes 1192 135000
975 BrkSide 2019 167500
977 BrkSide 869 85500
979 Edwards 894 110000
981 NAmes 999 178400
986 Edwards 1164 125000
993 NAmes 1851 187000
996 BrkSide 1230 121600
997 NAmes 1050 136500
1001 Edwards 944 82000
1007 NAmes 1657 163500
1012 Edwards 1664 100000
1015 NAmes 1082 119200
1021 Edwards 1132 176000
1027 NAmes 1264 167500
1029 NAmes 1376 105000
1036 Edwards 845 84000
1046 Edwards 1733 139600
1050 Edwards 930 84900
1053 NAmes 1977 165000
1054 Edwards 1526 144500
1065 NAmes 1154 154000
1068 NAmes 1611 167900
1070 NAmes 893 135000
1071 NAmes 1048 135000
1073 Edwards 1456 91500
1074 Edwards 1426 159500
1078 NAmes 1096 138800
1084 NAmes 1251 160000
1089 Edwards 1709 137500
1091 NAmes 1040 92900
1094 NAmes 1200 146000
1095 NAmes 936 129000
1099 BrkSide 1324 128000
1102 NAmes 950 119500
1103 NAmes 1134 135000
1104 NAmes 1194 159500
1113 NAmes 816 129900
1114 NAmes 1008 134500
1120 NAmes 1040 133700
1123 Edwards 960 112000
1124 Edwards 698 118000
1126 NAmes 1005 115000
1136 BrkSide 986 102000
1137 NAmes 1252 119000
1140 BrkSide 1167 144000
1141 NAmes 952 139000
1145 Edwards 924 80000
1146 BrkSide 1576 149000
1151 NAmes 932 124000
1152 Edwards 1466 149900
1155 NAmes 1820 201800
1157 NAmes 1265 179900
1169 Edwards 2108 235000
1172 NAmes 1261 163000
1180 Edwards 1124 93000
1186 Edwards 1221 104900
1201 NAmes 864 116050
1203 BrkSide 1348 117000
1209 NAmes 1283 140000
1213 Edwards 672 113000
1215 NAmes 999 134500
1219 BrkSide 912 80500
1221 NAmes 912 115000
1223 NAmes 1846 143000
1224 NAmes 2136 137900
1226 NAmes 1138 145000
1228 NAmes 912 147000
1230 NAmes 1507 127000
1232 NAmes 1190 132500
1233 NAmes 1224 101800
1234 NAmes 1188 142000
1250 NAmes 988 119000
1251 NAmes 2110 244000
1255 Edwards 1656 165400
1256 BrkSide 1367 127500
1258 Edwards 864 99900
1260 NAmes 1054 151000
1262 NAmes 1050 128900
1264 BrkSide 1824 180500
1265 NAmes 1337 181000
1270 NAmes 1524 144000
1274 Edwards 1357 177000
1276 NAmes 1920 137000
1286 BrkSide 1412 132500
1291 NAmes 1152 180500
1295 Edwards 864 115000
1296 NAmes 1052 138500
1297 NAmes 1128 155000
1298 Edwards 1072 140000
1299 Edwards 5642 160000
1300 NAmes 1246 154000
1305 Edwards 1708 130000
1315 Edwards 948 119000
1316 NAmes 2112 206900
1320 Edwards 948 111000
1321 NAmes 1478 156500
1322 BrkSide 720 72500
1324 BrkSide 708 82500
1327 Edwards 774 79000
1333 Edwards 816 100000
1341 NAmes 872 123000
1351 NAmes 2634 200000
1352 NAmes 1716 171000
1353 BrkSide 1176 134900
1357 NAmes 892 110000
1358 NAmes 1078 149900
1363 NAmes 1738 104900
1372 NAmes 1661 165500
1378 Edwards 1604 117000
1381 Edwards 864 58500
1382 NAmes 2117 237500
1385 Edwards 1258 105000
1390 BrkSide 1218 131000
1392 NAmes 1584 124000
1393 NAmes 900 123000
1398 BrkSide 1513 137500
1399 NAmes 1904 138000
1401 BrkSide 1158 120000
1412 NAmes 1668 140000
1413 NAmes 1040 90000
1415 BrkSide 1848 207000
1419 NAmes 1144 124000
1424 Edwards 2201 274970
1425 NAmes 1344 144000
1426 NAmes 1252 142000
1428 NAmes 1558 140000
1436 NAmes 1537 174000
1437 NAmes 864 120500
1444 BrkSide 952 121000
1449 Edwards 1346 112000
1451 NAmes 1792 136000
1453 Edwards 1072 145000
1459 NAmes 1078 142125
1460 Edwards 1256 147500
1461 NAmes 896 .
1462 NAmes 1329 .
1470 NAmes 882 .
1471 NAmes 1337 .
1510 NAmes 1232 .
1511 NAmes 1209 .
1512 NAmes 1510 .
1513 NAmes 1775 .
1514 NAmes 1728 .
1515 NAmes 2461 .
1516 NAmes 1556 .
1517 NAmes 1128 .
1518 NAmes 1604 .
1519 NAmes 1480 .
1520 NAmes 1143 .
1521 NAmes 1206 .
1522 NAmes 1580 .
1523 NAmes 1337 .
1524 NAmes 1064 .
1525 NAmes 972 .
1526 NAmes 988 .
1527 NAmes 985 .
1528 NAmes 1224 .
1529 NAmes 1175 .
1530 NAmes 1395 .
1542 BrkSide 1612 .
1543 BrkSide 2068 .
1544 BrkSide 765 .
1545 BrkSide 1132 .
1546 BrkSide 1196 .
1547 BrkSide 1453 .
1548 BrkSide 1416 .
1549 BrkSide 1040 .
1550 BrkSide 1536 .
1569 Edwards 1610 .
1570 Edwards 1074 .
1571 Edwards 1531 .
1572 Edwards 1172 .
1573 Edwards 1508 .
1574 Edwards 1298 .
1586 Edwards 640 .
1587 Edwards 992 .
1588 Edwards 1196 .
1589 Edwards 1120 .
1590 Edwards 1096 .
1591 Edwards 960 .
1625 NAmes 882 .
1626 NAmes 1434 .
1648 NAmes 1180 .
1649 NAmes 1050 .
1650 NAmes 864 .
1651 NAmes 864 .
1660 NAmes 1120 .
1752 NAmes 864 .
1753 NAmes 1568 .
1756 NAmes 894 .
1757 NAmes 864 .
1758 NAmes 1362 .
1759 NAmes 1728 .
1760 NAmes 1313 .
1761 NAmes 1292 .
1762 NAmes 2140 .
1763 NAmes 1576 .
1764 NAmes 960 .
1765 NAmes 1691 .
1766 NAmes 1453 .
1767 NAmes 1567 .
1768 NAmes 1144 .
1769 NAmes 1329 .
1770 NAmes 988 .
1771 NAmes 1202 .
1772 NAmes 1382 .
1773 NAmes 1200 .
1774 NAmes 1866 .
1775 NAmes 1062 .
1776 NAmes 1112 .
1777 NAmes 793 .
1778 NAmes 1031 .
1779 NAmes 1210 .
1780 NAmes 1527 .
1781 NAmes 1200 .
1791 NAmes 2544 .
1792 NAmes 1380 .
1793 NAmes 1040 .
1794 NAmes 951 .
1795 NAmes 1105 .
1796 NAmes 1142 .
1797 NAmes 1133 .
1798 NAmes 1041 .
1799 NAmes 732 .
1800 NAmes 1183 .
1801 NAmes 1461 .
1802 NAmes 1495 .
1803 NAmes 1806 .
1804 NAmes 941 .
1805 NAmes 1045 .
1824 BrkSide 1432 .
1825 BrkSide 1654 .
1826 BrkSide 1142 .
1827 BrkSide 995 .
1828 BrkSide 1582 .
1829 BrkSide 1072 .
1840 Edwards 1200 .
1841 Edwards 1152 .
1842 Edwards 1112 .
1849 Edwards 1383 .
1850 Edwards 1073 .
1851 Edwards 1639 .
1852 Edwards 1089 .
1853 Edwards 1049 .
1890 Edwards 1149 .
1891 Edwards 1072 .
1892 Edwards 876 .
1893 Edwards 1368 .
1894 Edwards 1678 .
1895 Edwards 1560 .
1896 Edwards 1298 .
1959 NAmes 1792 .
1960 NAmes 936 .
1961 NAmes 864 .
2047 NAmes 1464 .
2048 NAmes 925 .
2049 NAmes 1728 .
2051 NAmes 1014 .
2052 NAmes 1114 .
2053 NAmes 1118 .
2054 BrkSide 906 .
2055 NAmes 1496 .
2056 NAmes 1337 .
2057 NAmes 1036 .
2058 NAmes 1988 .
2059 NAmes 1176 .
2060 NAmes 1440 .
2061 NAmes 1570 .
2062 NAmes 1104 .
2063 NAmes 882 .
2064 NAmes 1152 .
2065 NAmes 950 .
2066 NAmes 1790 .
2067 NAmes 1764 .
2068 NAmes 1824 .
2073 NAmes 1044 .
2074 NAmes 1312 .
2075 NAmes 1081 .
2076 NAmes 876 .
2077 NAmes 1256 .
2078 NAmes 1027 .
2079 NAmes 1320 .
2080 NAmes 984 .
2081 NAmes 1278 .
2082 NAmes 1800 .
2083 NAmes 1588 .
2084 NAmes 825 .
2085 NAmes 1117 .
2110 BrkSide 1143 .
2111 BrkSide 1668 .
2112 BrkSide 1738 .
2113 BrkSide 1210 .
2114 BrkSide 1290 .
2115 BrkSide 1672 .
2116 BrkSide 949 .
2117 BrkSide 1497 .
2118 BrkSide 1342 .
2119 BrkSide 1013 .
2120 BrkSide 1216 .
2121 BrkSide 896 .
2122 BrkSide 1136 .
2123 BrkSide 808 .
2124 BrkSide 2009 .
2126 BrkSide 1716 .
2151 Edwards 1079 .
2152 Edwards 1518 .
2153 Edwards 1509 .
2154 Edwards 864 .
2155 Edwards 1269 .
2184 Edwards 1092 .
2185 Edwards 1033 .
2186 Edwards 1127 .
2187 Edwards 1117 .
2188 Edwards 1398 .
2189 Edwards 3820 .
2190 Edwards 1152 .
2191 Edwards 1152 .
2192 Edwards 784 .
2193 Edwards 1053 .
2194 Edwards 1137 .
2195 Edwards 930 .
2196 Edwards 1204 .
2197 Edwards 1292 .
2252 NAmes 1587 .
2278 NAmes 1422 .
2279 NAmes 914 .
2280 NAmes 914 .
2281 NAmes 1337 .
2282 NAmes 1337 .
2286 NAmes 988 .
2387 NAmes 1107 .
2388 NAmes 1224 .
2389 NAmes 1074 .
2390 NAmes 1187 .
2391 NAmes 964 .
2392 NAmes 894 .
2393 NAmes 1200 .
2394 NAmes 1042 .
2395 NAmes 2154 .
2396 NAmes 1374 .
2397 NAmes 1652 .
2398 NAmes 908 .
2399 BrkSide 666 .
2400 BrkSide 670 .
2401 BrkSide 808 .
2402 NAmes 1150 .
2403 NAmes 1560 .
2404 NAmes 1280 .
2405 NAmes 1254 .
2406 NAmes 936 .
2407 NAmes 1008 .
2408 NAmes 1053 .
2409 NAmes 1144 .
2410 NAmes 1721 .
2411 NAmes 922 .
2412 NAmes 1411 .
2413 NAmes 1216 .
2414 NAmes 1154 .
2415 NAmes 1560 .
2416 NAmes 948 .
2417 NAmes 1040 .
2418 NAmes 925 .
2419 NAmes 1540 .
2420 NAmes 925 .
2421 NAmes 1647 .
2424 NAmes 1728 .
2425 NAmes 3086 .
2428 NAmes 1651 .
2429 NAmes 888 .
2430 NAmes 952 .
2431 NAmes 1238 .
2432 NAmes 1040 .
2433 NAmes 1170 .
2434 NAmes 1242 .
2435 NAmes 1377 .
2436 NAmes 925 .
2437 NAmes 864 .
2438 NAmes 936 .
2455 BrkSide 1060 .
2456 BrkSide 1435 .
2457 BrkSide 1274 .
2458 BrkSide 1232 .
2459 BrkSide 884 .
2460 BrkSide 1409 .
2461 BrkSide 1322 .
2462 BrkSide 1426 .
2463 BrkSide 1281 .
2465 BrkSide 1376 .
2466 BrkSide 1316 .
2493 Edwards 1325 .
2494 Edwards 1630 .
2495 Edwards 1242 .
2497 Edwards 1626 .
2499 Edwards 943 .
2500 Edwards 1038 .
2501 Edwards 1342 .
2502 Edwards 1480 .
2503 Edwards 1362 .
2543 Edwards 936 .
2544 Edwards 1088 .
2545 Edwards 1351 .
2546 Edwards 1179 .
2547 Edwards 1044 .
2548 Edwards 2233 .
2549 Edwards 1408 .
2550 Edwards 5095 .
2551 Edwards 1072 .
2552 Edwards 960 .
2553 Edwards 1152 .
2554 Edwards 1195 .
2555 Edwards 865 .
2556 Edwards 768 .
2557 Edwards 864 .
2615 NAmes 1293 .
2616 NAmes 1024 .
2617 NAmes 1797 .
2618 NAmes 1390 .
2619 NAmes 1851 .
2641 NAmes 874 .
2642 NAmes 1419 .
2649 NAmes 1387 .
2721 NAmes 1051 .
2722 NAmes 1770 .
2723 NAmes 976 .
2724 NAmes 898 .
2725 NAmes 1051 .
2726 NAmes 1141 .
2727 NAmes 1565 .
2728 NAmes 1488 .
2729 NAmes 1440 .
2730 NAmes 1248 .
2731 NAmes 816 .
2732 NAmes 1043 .
2733 NAmes 1433 .
2734 NAmes 1624 .
2735 NAmes 1216 .
2736 NAmes 1728 .
2737 NAmes 936 .
2738 NAmes 1584 .
2739 NAmes 1246 .
2740 NAmes 1008 .
2741 NAmes 1364 .
2742 NAmes 1336 .
2743 NAmes 1370 .
2744 NAmes 1124 .
2745 NAmes 1050 .
2746 NAmes 1008 .
2747 NAmes 1575 .
2748 NAmes 1145 .
2749 NAmes 1005 .
2750 NAmes 1056 .
2751 NAmes 884 .
2752 NAmes 2039 .
2753 NAmes 1384 .
2755 NAmes 1312 .
2757 NAmes 715 .
2761 NAmes 1146 .
2762 NAmes 1207 .
2763 NAmes 1773 .
2764 NAmes 1472 .
2765 NAmes 2448 .
2766 NAmes 1521 .
2767 NAmes 1040 .
2768 NAmes 1556 .
2769 NAmes 1150 .
2770 NAmes 1045 .
2771 NAmes 864 .
2772 NAmes 1025 .
2793 BrkSide 1827 .
2794 BrkSide 1162 .
2795 BrkSide 1324 .
2796 BrkSide 816 .
2805 Edwards 1032 .
2820 Edwards 1350 .
2821 Edwards 1150 .
2822 Edwards 2009 .
2823 Edwards 3672 .
2824 Edwards 1560 .
2825 Edwards 1488 .
2826 Edwards 1057 .
2827 Edwards 1609 .
2859 Edwards 1436 .
2860 Edwards 1012 .
2861 Edwards 1176 .
2862 Edwards 1724 .
2863 Edwards 914 .
2864 Edwards 2314 .
2865 Edwards 1072 .
2866 Edwards 1709 .
2867 Edwards 936 .
2868 Edwards 1338 .
2869 Edwards 1669 .
2870 Edwards 1482 .
2871 Edwards 1414 .
2872 Edwards 498 .
2873 Edwards 1273 .
;
run;


** round living area and add log(living area) colum;
data train_plus_test_rounded;
set train_plus_test;
RndLivArea = round(GrLivArea, 100);
logliv = log(RndLivArea);
run;

** basic prediction of test values;
proc glm data = train_plus_test_rounded plots = all;
class Neighborhood;
model Saleprice = RndLivArea Neighborhood / cli solution;
output out = results p = Predict;
run;

** scatter plot of prices by neighborhood;
proc sgplot data = houses_rounded;
title "price vs sqft";
reg x = RndLIvArea y = SalePrice / group = Neighborhood;
run;

** does average price differ by living area;

data houses_by_size;
input Id Neighborhood $ GrLivArea size $ SalePrice;
datalines;
8 NWAmes 2090 large 200000
10 BrkSide 1077 small 118000
16 BrkSide 854 small 132000
30 BrkSide 520 small 68500
40 Edwards 1152 medium 82000
52 BrkSide 1176 medium 114500
78 BrkSide 1285 medium 127000
98 Edwards 960 small 94750
99 Edwards 835 small 83000
101 NWAmes 1610 medium 205000
110 NWAmes 1844 large 190000
111 Edwards 1855 large 136900
118 Edwards 1125 medium 155000
125 NWAmes 1586 medium 181000
136 NWAmes 1682 large 174000
146 Edwards 1709 large 130000
147 BrkSide 875 small 105000
150 BrkSide 1344 medium 115000
153 NWAmes 1993 large 190000
156 Edwards 1096 small 79000
166 Edwards 1355 medium 127500
176 Edwards 2158 large 243000
183 Edwards 1340 medium 120000
185 BrkSide 1252 medium 127000
194 Edwards 1709 large 130000
201 Edwards 1121 medium 140000
211 Edwards 864 small 98000
212 Edwards 1212 medium 186000
223 NWAmes 1552 medium 179900
240 Edwards 1487 medium 113000
246 NWAmes 1872 large 241500
251 BrkSide 1306 medium 76500
266 NWAmes 1422 medium 175500
270 Edwards 1113 medium 148000
276 BrkSide 1548 medium 205000
290 BrkSide 1396 medium 153575
293 Edwards 1716 large 131000
294 NWAmes 2263 large 235000
299 NWAmes 1743 large 175000
309 Edwards 861 small 82500
317 NWAmes 2353 large 260000
320 NWAmes 1472 medium 187500
329 BrkSide 2134 large 214500
339 NWAmes 1621 medium 202500
346 BrkSide 1577 medium 140200
353 Edwards 1111 medium 95000
362 BrkSide 1505 medium 145000
363 Edwards 1922 large 198500
365 NWAmes 1574 medium 190000
376 Edwards 904 small 61000
387 Edwards 1184 medium 81000
388 Edwards 1125 medium 125000
391 Edwards 1367 medium 119000
394 BrkSide 788 small 100000
396 Edwards 1144 medium 129000
411 Edwards 1276 medium 60000
419 Edwards 1134 medium 126000
422 NWAmes 1602 medium 215000
438 BrkSide 904 small 119000
440 Edwards 1196 medium 110000
442 Edwards 1440 medium 118000
443 BrkSide 1573 medium 162900
446 Edwards 1689 large 127500
456 NWAmes 1242 medium 175500
460 BrkSide 1203 medium 110000
472 NWAmes 1969 large 190000
473 Edwards 1072 small 148000
488 NWAmes 1484 medium 175000
498 BrkSide 1820 large 184000
503 Edwards 1214 medium 140000
517 NWAmes 2119 large 158000
523 BrkSide 1664 medium 159000
524 Edwards 4676 large 184750
529 Edwards 605 small 86000
532 BrkSide 1362 medium 128000
534 BrkSide 334 small 39300
536 Edwards 1347 medium 107500
543 NWAmes 1680 large 213250
546 NWAmes 2183 large 229000
547 BrkSide 1635 medium 210000
554 Edwards 1126 medium 108000
556 BrkSide 1048 small 113000
563 Edwards 996 small 108000
564 Edwards 1674 large 185000
583 Edwards 816 small 118500
585 BrkSide 1573 medium 133000
587 BrkSide 838 small 130000
590 BrkSide 935 small 79500
608 Edwards 2008 large 225000
612 NWAmes 1032 small 148000
621 Edwards 864 small 67000
622 NWAmes 2614 large 240000
625 NWAmes 1790 large 165150
633 NWAmes 1411 medium 82500
637 BrkSide 800 small 60000
639 Edwards 796 small 85000
644 NWAmes 1620 medium 152000
648 Edwards 1094 small 155000
652 Edwards 1510 medium 108000
660 Edwards 1486 medium 167000
661 NWAmes 1935 large 197900
664 Edwards 1181 medium 137500
672 Edwards 1369 medium 103600
695 BrkSide 1539 medium 141500
697 BrkSide 616 small 89000
698 Edwards 1148 medium 123500
702 NWAmes 1164 medium 140000
711 BrkSide 729 small 52000
714 BrkSide 960 small 129000
716 NWAmes 1350 medium 165000
718 NWAmes 1178 medium 157000
724 Edwards 1470 medium 135000
725 Edwards 1698 large 320000
739 Edwards 1200 medium 179000
746 NWAmes 2715 large 299800
750 Edwards 1529 medium 98000
762 BrkSide 1301 medium 100000
767 NWAmes 1714 large 196500
772 Edwards 1220 medium 102000
773 Edwards 1117 medium 107000
786 NWAmes 1342 medium 161500
808 BrkSide 1576 medium 223500
811 NWAmes 1309 medium 181000
815 Edwards 1250 medium 116000
827 BrkSide 784 small 109500
840 Edwards 1200 medium 130500
859 NWAmes 1370 medium 152000
860 NWAmes 2654 large 250000
881 Edwards 1090 small 157000
888 Edwards 1393 medium 135500
913 BrkSide 1015 small 88000
918 Edwards 1229 medium 135000
922 Edwards 2200 large 145900
925 NWAmes 1686 large 207500
926 NWAmes 1126 medium 175000
928 NWAmes 1978 large 176000
936 BrkSide 747 small 79900
943 Edwards 1440 medium 150000
950 NWAmes 1381 medium 197500
955 Edwards 980 small 127500
961 BrkSide 858 small 116500
962 NWAmes 2872 large 272000
975 BrkSide 2019 large 167500
977 BrkSide 869 small 85500
979 Edwards 894 small 110000
986 Edwards 1164 medium 125000
989 NWAmes 2030 large 195000
996 BrkSide 1230 medium 121600
998 NWAmes 1442 medium 185000
1001 Edwards 944 small 82000
1004 NWAmes 1680 large 136905
1012 Edwards 1664 medium 100000
1016 NWAmes 1665 medium 227000
1021 Edwards 1132 medium 176000
1036 Edwards 845 small 84000
1042 NWAmes 1632 medium 173000
1045 NWAmes 2524 large 278000
1046 Edwards 1733 large 139600
1050 Edwards 930 small 84900
1054 Edwards 1526 medium 144500
1056 NWAmes 1523 medium 180000
1072 NWAmes 1556 medium 154000
1073 Edwards 1456 medium 91500
1074 Edwards 1426 medium 159500
1081 NWAmes 1258 medium 145000
1089 Edwards 1709 large 137500
1099 BrkSide 1324 medium 128000
1100 NWAmes 1601 medium 157000
1112 NWAmes 1964 large 205000
1123 Edwards 960 small 112000
1124 Edwards 698 small 118000
1136 BrkSide 986 small 102000
1140 BrkSide 1167 medium 144000
1142 NWAmes 1868 large 197500
1145 Edwards 924 small 80000
1146 BrkSide 1576 medium 149000
1152 Edwards 1466 medium 149900
1160 NWAmes 1876 large 185000
1169 Edwards 2108 large 235000
1180 Edwards 1124 medium 93000
1186 Edwards 1221 medium 104900
1203 BrkSide 1348 medium 117000
1205 NWAmes 1074 small 153500
1213 Edwards 672 small 113000
1219 BrkSide 912 small 80500
1243 NWAmes 1173 medium 170000
1246 NWAmes 1868 large 178000
1255 Edwards 1656 medium 165400
1256 BrkSide 1367 medium 127500
1258 Edwards 864 small 99900
1264 BrkSide 1824 large 180500
1272 NWAmes 1489 medium 185750
1274 Edwards 1357 medium 177000
1277 NWAmes 1395 medium 162000
1278 NWAmes 1724 large 197900
1286 BrkSide 1412 medium 132500
1287 NWAmes 1328 medium 143000
1294 NWAmes 1664 medium 162900
1295 Edwards 864 small 115000
1298 Edwards 1072 small 140000
1299 Edwards 5642 large 160000
1305 Edwards 1708 large 130000
1315 Edwards 948 small 119000
1320 Edwards 948 small 111000
1322 BrkSide 720 small 72500
1324 BrkSide 708 small 82500
1327 Edwards 774 small 79000
1333 Edwards 816 small 100000
1336 NWAmes 1334 medium 167900
1337 NWAmes 1656 medium 135000
1347 NWAmes 2156 large 262500
1353 BrkSide 1176 medium 134900
1356 NWAmes 1920 large 170000
1378 Edwards 1604 medium 117000
1381 Edwards 864 small 58500
1385 Edwards 1258 medium 105000
1387 NWAmes 2784 large 250000
1390 BrkSide 1218 medium 131000
1398 BrkSide 1513 medium 137500
1401 BrkSide 1158 medium 120000
1410 NWAmes 2093 large 215000
1415 BrkSide 1848 large 207000
1421 NWAmes 1416 medium 179900
1424 Edwards 2201 large 274970
1430 NWAmes 1440 medium 182900
1440 NWAmes 1725 large 197000
1444 BrkSide 952 small 121000
1449 Edwards 1346 medium 112000
1453 Edwards 1072 small 145000
1457 NWAmes 2073 large 210000
1460 Edwards 1256 medium 147500
;
run;

** multiple comparison of price by size;
proc glm data = houses_by_size;
class size;
model Saleprice = size / solution;
means size / HOVTEST=BF;
lsmeans size / pdiff adjust=BON CL;
run;
