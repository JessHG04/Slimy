                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module Ghost
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _ghost_sp_1
                             12 	.globl _ghost_sp_0
                             13 ;--------------------------------------------------------
                             14 ; special function registers
                             15 ;--------------------------------------------------------
                             16 ;--------------------------------------------------------
                             17 ; ram data
                             18 ;--------------------------------------------------------
                             19 	.area _DATA
                             20 ;--------------------------------------------------------
                             21 ; ram data
                             22 ;--------------------------------------------------------
                             23 	.area _INITIALIZED
                             24 ;--------------------------------------------------------
                             25 ; absolute external ram data
                             26 ;--------------------------------------------------------
                             27 	.area _DABS (ABS)
                             28 ;--------------------------------------------------------
                             29 ; global & static initialisations
                             30 ;--------------------------------------------------------
                             31 	.area _HOME
                             32 	.area _GSINIT
                             33 	.area _GSFINAL
                             34 	.area _GSINIT
                             35 ;--------------------------------------------------------
                             36 ; Home
                             37 ;--------------------------------------------------------
                             38 	.area _HOME
                             39 	.area _HOME
                             40 ;--------------------------------------------------------
                             41 ; code
                             42 ;--------------------------------------------------------
                             43 	.area _CODE
                             44 	.area _CODE
   1520                      45 _ghost_sp_0:
   1520 00                   46 	.db #0x00	; 0
   1521 00                   47 	.db #0x00	; 0
   1522 00                   48 	.db #0x00	; 0
   1523 FF                   49 	.db #0xff	; 255
   1524 FF                   50 	.db #0xff	; 255
   1525 00                   51 	.db #0x00	; 0
   1526 00                   52 	.db #0x00	; 0
   1527 00                   53 	.db #0x00	; 0
   1528 00                   54 	.db #0x00	; 0
   1529 00                   55 	.db #0x00	; 0
   152A FF                   56 	.db #0xff	; 255
   152B FF                   57 	.db #0xff	; 255
   152C FF                   58 	.db #0xff	; 255
   152D FF                   59 	.db #0xff	; 255
   152E 00                   60 	.db #0x00	; 0
   152F 00                   61 	.db #0x00	; 0
   1530 00                   62 	.db #0x00	; 0
   1531 55                   63 	.db #0x55	; 85	'U'
   1532 FF                   64 	.db #0xff	; 255
   1533 FF                   65 	.db #0xff	; 255
   1534 FF                   66 	.db #0xff	; 255
   1535 FF                   67 	.db #0xff	; 255
   1536 AA                   68 	.db #0xaa	; 170
   1537 00                   69 	.db #0x00	; 0
   1538 00                   70 	.db #0x00	; 0
   1539 FF                   71 	.db #0xff	; 255
   153A FF                   72 	.db #0xff	; 255
   153B FF                   73 	.db #0xff	; 255
   153C FF                   74 	.db #0xff	; 255
   153D FF                   75 	.db #0xff	; 255
   153E FF                   76 	.db #0xff	; 255
   153F 00                   77 	.db #0x00	; 0
   1540 00                   78 	.db #0x00	; 0
   1541 FF                   79 	.db #0xff	; 255
   1542 3C                   80 	.db #0x3c	; 60
   1543 FF                   81 	.db #0xff	; 255
   1544 FF                   82 	.db #0xff	; 255
   1545 3C                   83 	.db #0x3c	; 60
   1546 FF                   84 	.db #0xff	; 255
   1547 00                   85 	.db #0x00	; 0
   1548 55                   86 	.db #0x55	; 85	'U'
   1549 FF                   87 	.db #0xff	; 255
   154A 3C                   88 	.db #0x3c	; 60
   154B FF                   89 	.db #0xff	; 255
   154C FF                   90 	.db #0xff	; 255
   154D 3C                   91 	.db #0x3c	; 60
   154E FF                   92 	.db #0xff	; 255
   154F AA                   93 	.db #0xaa	; 170
   1550 55                   94 	.db #0x55	; 85	'U'
   1551 FF                   95 	.db #0xff	; 255
   1552 3C                   96 	.db #0x3c	; 60
   1553 FF                   97 	.db #0xff	; 255
   1554 FF                   98 	.db #0xff	; 255
   1555 3C                   99 	.db #0x3c	; 60
   1556 FF                  100 	.db #0xff	; 255
   1557 AA                  101 	.db #0xaa	; 170
   1558 55                  102 	.db #0x55	; 85	'U'
   1559 FF                  103 	.db #0xff	; 255
   155A 3C                  104 	.db #0x3c	; 60
   155B FF                  105 	.db #0xff	; 255
   155C FF                  106 	.db #0xff	; 255
   155D 3C                  107 	.db #0x3c	; 60
   155E FF                  108 	.db #0xff	; 255
   155F AA                  109 	.db #0xaa	; 170
   1560 55                  110 	.db #0x55	; 85	'U'
   1561 FF                  111 	.db #0xff	; 255
   1562 FF                  112 	.db #0xff	; 255
   1563 FF                  113 	.db #0xff	; 255
   1564 FF                  114 	.db #0xff	; 255
   1565 FF                  115 	.db #0xff	; 255
   1566 FF                  116 	.db #0xff	; 255
   1567 AA                  117 	.db #0xaa	; 170
   1568 55                  118 	.db #0x55	; 85	'U'
   1569 AF                  119 	.db #0xaf	; 175
   156A 0F                  120 	.db #0x0f	; 15
   156B FF                  121 	.db #0xff	; 255
   156C FF                  122 	.db #0xff	; 255
   156D 0F                  123 	.db #0x0f	; 15
   156E 5F                  124 	.db #0x5f	; 95
   156F AA                  125 	.db #0xaa	; 170
   1570 55                  126 	.db #0x55	; 85	'U'
   1571 FF                  127 	.db #0xff	; 255
   1572 FF                  128 	.db #0xff	; 255
   1573 FF                  129 	.db #0xff	; 255
   1574 FF                  130 	.db #0xff	; 255
   1575 FF                  131 	.db #0xff	; 255
   1576 FF                  132 	.db #0xff	; 255
   1577 AA                  133 	.db #0xaa	; 170
   1578 55                  134 	.db #0x55	; 85	'U'
   1579 FF                  135 	.db #0xff	; 255
   157A FF                  136 	.db #0xff	; 255
   157B FF                  137 	.db #0xff	; 255
   157C FF                  138 	.db #0xff	; 255
   157D FF                  139 	.db #0xff	; 255
   157E FF                  140 	.db #0xff	; 255
   157F AA                  141 	.db #0xaa	; 170
   1580 55                  142 	.db #0x55	; 85	'U'
   1581 FF                  143 	.db #0xff	; 255
   1582 FF                  144 	.db #0xff	; 255
   1583 FF                  145 	.db #0xff	; 255
   1584 FF                  146 	.db #0xff	; 255
   1585 FF                  147 	.db #0xff	; 255
   1586 FF                  148 	.db #0xff	; 255
   1587 AA                  149 	.db #0xaa	; 170
   1588 55                  150 	.db #0x55	; 85	'U'
   1589 FF                  151 	.db #0xff	; 255
   158A FF                  152 	.db #0xff	; 255
   158B FF                  153 	.db #0xff	; 255
   158C FF                  154 	.db #0xff	; 255
   158D FF                  155 	.db #0xff	; 255
   158E FF                  156 	.db #0xff	; 255
   158F AA                  157 	.db #0xaa	; 170
   1590 55                  158 	.db #0x55	; 85	'U'
   1591 AA                  159 	.db #0xaa	; 170
   1592 55                  160 	.db #0x55	; 85	'U'
   1593 AA                  161 	.db #0xaa	; 170
   1594 55                  162 	.db #0x55	; 85	'U'
   1595 AA                  163 	.db #0xaa	; 170
   1596 55                  164 	.db #0x55	; 85	'U'
   1597 AA                  165 	.db #0xaa	; 170
   1598 55                  166 	.db #0x55	; 85	'U'
   1599 AA                  167 	.db #0xaa	; 170
   159A 55                  168 	.db #0x55	; 85	'U'
   159B AA                  169 	.db #0xaa	; 170
   159C 55                  170 	.db #0x55	; 85	'U'
   159D AA                  171 	.db #0xaa	; 170
   159E 55                  172 	.db #0x55	; 85	'U'
   159F AA                  173 	.db #0xaa	; 170
   15A0                     174 _ghost_sp_1:
   15A0 00                  175 	.db #0x00	; 0
   15A1 00                  176 	.db #0x00	; 0
   15A2 00                  177 	.db #0x00	; 0
   15A3 00                  178 	.db #0x00	; 0
   15A4 00                  179 	.db #0x00	; 0
   15A5 00                  180 	.db #0x00	; 0
   15A6 00                  181 	.db #0x00	; 0
   15A7 00                  182 	.db #0x00	; 0
   15A8 00                  183 	.db #0x00	; 0
   15A9 00                  184 	.db #0x00	; 0
   15AA 00                  185 	.db #0x00	; 0
   15AB FF                  186 	.db #0xff	; 255
   15AC FF                  187 	.db #0xff	; 255
   15AD 00                  188 	.db #0x00	; 0
   15AE 00                  189 	.db #0x00	; 0
   15AF 00                  190 	.db #0x00	; 0
   15B0 00                  191 	.db #0x00	; 0
   15B1 00                  192 	.db #0x00	; 0
   15B2 FF                  193 	.db #0xff	; 255
   15B3 FF                  194 	.db #0xff	; 255
   15B4 FF                  195 	.db #0xff	; 255
   15B5 FF                  196 	.db #0xff	; 255
   15B6 00                  197 	.db #0x00	; 0
   15B7 00                  198 	.db #0x00	; 0
   15B8 00                  199 	.db #0x00	; 0
   15B9 55                  200 	.db #0x55	; 85	'U'
   15BA FF                  201 	.db #0xff	; 255
   15BB FF                  202 	.db #0xff	; 255
   15BC FF                  203 	.db #0xff	; 255
   15BD FF                  204 	.db #0xff	; 255
   15BE AA                  205 	.db #0xaa	; 170
   15BF 00                  206 	.db #0x00	; 0
   15C0 00                  207 	.db #0x00	; 0
   15C1 FF                  208 	.db #0xff	; 255
   15C2 FF                  209 	.db #0xff	; 255
   15C3 FF                  210 	.db #0xff	; 255
   15C4 FF                  211 	.db #0xff	; 255
   15C5 FF                  212 	.db #0xff	; 255
   15C6 FF                  213 	.db #0xff	; 255
   15C7 00                  214 	.db #0x00	; 0
   15C8 00                  215 	.db #0x00	; 0
   15C9 FF                  216 	.db #0xff	; 255
   15CA FF                  217 	.db #0xff	; 255
   15CB FF                  218 	.db #0xff	; 255
   15CC FF                  219 	.db #0xff	; 255
   15CD FF                  220 	.db #0xff	; 255
   15CE FF                  221 	.db #0xff	; 255
   15CF 00                  222 	.db #0x00	; 0
   15D0 55                  223 	.db #0x55	; 85	'U'
   15D1 FF                  224 	.db #0xff	; 255
   15D2 3C                  225 	.db #0x3c	; 60
   15D3 FF                  226 	.db #0xff	; 255
   15D4 FF                  227 	.db #0xff	; 255
   15D5 3C                  228 	.db #0x3c	; 60
   15D6 FF                  229 	.db #0xff	; 255
   15D7 AA                  230 	.db #0xaa	; 170
   15D8 55                  231 	.db #0x55	; 85	'U'
   15D9 FF                  232 	.db #0xff	; 255
   15DA 3C                  233 	.db #0x3c	; 60
   15DB FF                  234 	.db #0xff	; 255
   15DC FF                  235 	.db #0xff	; 255
   15DD 3C                  236 	.db #0x3c	; 60
   15DE FF                  237 	.db #0xff	; 255
   15DF AA                  238 	.db #0xaa	; 170
   15E0 55                  239 	.db #0x55	; 85	'U'
   15E1 FF                  240 	.db #0xff	; 255
   15E2 3C                  241 	.db #0x3c	; 60
   15E3 FF                  242 	.db #0xff	; 255
   15E4 FF                  243 	.db #0xff	; 255
   15E5 3C                  244 	.db #0x3c	; 60
   15E6 FF                  245 	.db #0xff	; 255
   15E7 AA                  246 	.db #0xaa	; 170
   15E8 55                  247 	.db #0x55	; 85	'U'
   15E9 FF                  248 	.db #0xff	; 255
   15EA FF                  249 	.db #0xff	; 255
   15EB FF                  250 	.db #0xff	; 255
   15EC FF                  251 	.db #0xff	; 255
   15ED FF                  252 	.db #0xff	; 255
   15EE FF                  253 	.db #0xff	; 255
   15EF AA                  254 	.db #0xaa	; 170
   15F0 55                  255 	.db #0x55	; 85	'U'
   15F1 AF                  256 	.db #0xaf	; 175
   15F2 0F                  257 	.db #0x0f	; 15
   15F3 FF                  258 	.db #0xff	; 255
   15F4 FF                  259 	.db #0xff	; 255
   15F5 0F                  260 	.db #0x0f	; 15
   15F6 5F                  261 	.db #0x5f	; 95
   15F7 AA                  262 	.db #0xaa	; 170
   15F8 55                  263 	.db #0x55	; 85	'U'
   15F9 FF                  264 	.db #0xff	; 255
   15FA FF                  265 	.db #0xff	; 255
   15FB FF                  266 	.db #0xff	; 255
   15FC FF                  267 	.db #0xff	; 255
   15FD FF                  268 	.db #0xff	; 255
   15FE FF                  269 	.db #0xff	; 255
   15FF AA                  270 	.db #0xaa	; 170
   1600 55                  271 	.db #0x55	; 85	'U'
   1601 FF                  272 	.db #0xff	; 255
   1602 FF                  273 	.db #0xff	; 255
   1603 FF                  274 	.db #0xff	; 255
   1604 FF                  275 	.db #0xff	; 255
   1605 FF                  276 	.db #0xff	; 255
   1606 FF                  277 	.db #0xff	; 255
   1607 AA                  278 	.db #0xaa	; 170
   1608 55                  279 	.db #0x55	; 85	'U'
   1609 FF                  280 	.db #0xff	; 255
   160A FF                  281 	.db #0xff	; 255
   160B FF                  282 	.db #0xff	; 255
   160C FF                  283 	.db #0xff	; 255
   160D FF                  284 	.db #0xff	; 255
   160E FF                  285 	.db #0xff	; 255
   160F AA                  286 	.db #0xaa	; 170
   1610 00                  287 	.db #0x00	; 0
   1611 55                  288 	.db #0x55	; 85	'U'
   1612 AA                  289 	.db #0xaa	; 170
   1613 55                  290 	.db #0x55	; 85	'U'
   1614 AA                  291 	.db #0xaa	; 170
   1615 55                  292 	.db #0x55	; 85	'U'
   1616 AA                  293 	.db #0xaa	; 170
   1617 00                  294 	.db #0x00	; 0
   1618 00                  295 	.db #0x00	; 0
   1619 55                  296 	.db #0x55	; 85	'U'
   161A AA                  297 	.db #0xaa	; 170
   161B 55                  298 	.db #0x55	; 85	'U'
   161C AA                  299 	.db #0xaa	; 170
   161D 55                  300 	.db #0x55	; 85	'U'
   161E AA                  301 	.db #0xaa	; 170
   161F 00                  302 	.db #0x00	; 0
                            303 	.area _INITIALIZER
                            304 	.area _CABS (ABS)
