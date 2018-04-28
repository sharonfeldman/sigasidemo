workspace.create myws
workspace.open myws.alintws
workspace.clean
workspace.folder.create projects
workspace.project.create work
workspace.file.add -destination work {C:/Users/sharon_f/workspaceSigasi/MY/src/manage_bufs.vhd}
workspace.file.add -destination work {C:/Users/sharon_f/workspaceSigasi/MY/src/vid2mem.vhd}
workspace.file.add -destination work {C:/Users/sharon_f/workspaceSigasi/MY/src/replace_pixels.vhd}
workspace.file.add -destination work {C:/Users/sharon_f/workspaceSigasi/MY/src/ndff.vhd}
workspace.file.add -destination work {C:/Users/sharon_f/workspaceSigasi/MY/src/Graycounter.vhd}
workspace.file.add -destination work {C:/Users/sharon_f/workspaceSigasi/MY/src/data2mem.vhd}
workspace.file.add -destination work {C:/Users/sharon_f/workspaceSigasi/MY/src/afifo.vhd}
workspace.file.add -destination work {C:/Users/sharon_f/workspaceSigasi/MY/src/mem2vid.vhd}
workspace.file.add -destination work {C:/Users/sharon_f/workspaceSigasi/MY/src/TOP.vhd}
project.policy.clear -project work
project.policy.add -project work -rule DO254_NETLIST.1141
project.policy.add -project work -rule DO254_NETLIST.1142
project.policy.add -project work -rule DO254_NETLIST.1143_a
project.policy.add -project work -rule DO254_NETLIST.1143_b
project.policy.add -project work -rule DO254_NETLIST.1211
project.policy.add -project work -rule DO254_NETLIST.1212_a
project.policy.add -project work -rule DO254_NETLIST.1212_b
project.policy.add -project work -rule DO254_NETLIST.1221
project.policy.add -project work -rule DO254_NETLIST.1222
project.policy.add -project work -rule DO254_NETLIST.1231
project.policy.add -project work -rule DO254_NETLIST.1232_a
project.policy.add -project work -rule DO254_NETLIST.1232_b
project.policy.add -project work -rule DO254_NETLIST.1232_c
project.policy.add -project work -rule DO254_NETLIST.1242
project.policy.add -project work -rule DO254_NETLIST.1243
project.policy.add -project work -rule DO254_NETLIST.1511
project.policy.add -project work -rule DO254_NETLIST.2112
project.policy.add -project work -rule DO254_NETLIST.3411
project.policy.add -project work -rule DO254_NETLIST.3511
project.policy.add -project work -rule DO254_NETLIST.3621
project.policy.add -project work -rule DO254_VHDL.1311
project.policy.add -project work -rule DO254_VHDL.1312
project.policy.add -project work -rule DO254_VHDL.1313
project.policy.add -project work -rule DO254_VHDL.1314
project.policy.add -project work -rule DO254_VHDL.1315
project.policy.add -project work -rule DO254_VHDL.1316
project.policy.add -project work -rule DO254_VHDL.1317
project.policy.add -project work -rule DO254_VHDL.1318
project.policy.add -project work -rule DO254_VHDL.1321
project.policy.add -project work -rule DO254_VHDL.1322
project.policy.add -project work -rule DO254_VHDL.1323
project.policy.add -project work -rule DO254_VHDL.1411
project.policy.add -project work -rule DO254_VHDL.1621
project.policy.add -project work -rule DO254_VHDL.1633
project.policy.add -project work -rule DO254_VHDL.1711
project.policy.add -project work -rule DO254_VHDL.1721
project.policy.add -project work -rule DO254_VHDL.1722
project.policy.add -project work -rule DO254_VHDL.1811
project.policy.add -project work -rule DO254_VHDL.1812
project.policy.add -project work -rule DO254_VHDL.1821
project.policy.add -project work -rule DO254_VHDL.1822
project.policy.add -project work -rule DO254_VHDL.2121_a
project.policy.add -project work -rule DO254_VHDL.2121_b
project.policy.add -project work -rule DO254_VHDL.2121_c
project.policy.add -project work -rule DO254_VHDL.2221
project.policy.add -project work -rule DO254_VHDL.3111
project.policy.add -project work -rule DO254_VHDL.3212
project.policy.add -project work -rule DO254_VHDL.3221
project.policy.add -project work -rule DO254_VHDL.3223
project.policy.add -project work -rule DO254_VHDL.3611
project.policy.add -project work -rule DO254_VLOG.1121
project.policy.add -project work -rule DO254_VLOG.1122
project.policy.add -project work -rule DO254_VLOG.1131
project.policy.add -project work -rule DO254_VLOG.1151
project.policy.add -project work -rule DO254_VLOG.1241
project.policy.add -project work -rule DO254_VLOG.1321
project.policy.add -project work -rule DO254_VLOG.1322
project.policy.add -project work -rule DO254_VLOG.1323
project.policy.add -project work -rule DO254_VLOG.1324
project.policy.add -project work -rule DO254_VLOG.1611
project.policy.add -project work -rule DO254_VLOG.1612
project.policy.add -project work -rule DO254_VLOG.1613
project.policy.add -project work -rule DO254_VLOG.1614
project.policy.add -project work -rule DO254_VLOG.1621
project.policy.add -project work -rule DO254_VLOG.1622
project.policy.add -project work -rule DO254_VLOG.1631
project.policy.add -project work -rule DO254_VLOG.1632
project.policy.add -project work -rule DO254_VLOG.1633
project.policy.add -project work -rule DO254_VLOG.1641
project.policy.add -project work -rule DO254_VLOG.1642
project.policy.add -project work -rule DO254_VLOG.1711
project.policy.add -project work -rule DO254_VLOG.1721_a
project.policy.add -project work -rule DO254_VLOG.1721_b
project.policy.add -project work -rule DO254_VLOG.1722
project.policy.add -project work -rule DO254_VLOG.1811
project.policy.add -project work -rule DO254_VLOG.1812
project.policy.add -project work -rule DO254_VLOG.1813
project.policy.add -project work -rule DO254_VLOG.1821
project.policy.add -project work -rule DO254_VLOG.2113_a
project.policy.add -project work -rule DO254_VLOG.2113_b
project.policy.add -project work -rule DO254_VLOG.2113_c
project.policy.add -project work -rule DO254_VLOG.2121
project.policy.add -project work -rule DO254_VLOG.2221
project.policy.add -project work -rule DO254_VLOG.3211
project.policy.add -project work -rule DO254_VLOG.3212
project.policy.add -project work -rule DO254_VLOG.3213
project.policy.add -project work -rule DO254_VLOG.3214
project.policy.add -project work -rule DO254_VLOG.3221
project.policy.add -project work -rule DO254_VLOG.3222
project.policy.add -project work -rule DO254_VLOG.3611
project.policy.add -project work -rule DO254_VLOG.3711_a
project.policy.add -project work -rule DO254_VLOG.3711_b
project.policy.add -project work -rule DO254_VLOG.3712_a
project.policy.add -project work -rule DO254_VLOG.3712_b
project.policy.add -project work -rule DO254_VLOG.3721
project.waiver.clear -project work
workspace.project.setactive -project work
project.pref.toplevels -project work -top top
project.policy.listrules
project.clean
project.run
project.hierarchy.list
project.report.violations -report ./alintrpo/summery.txt -summary origin+rule+rulelevel+severity+source
project.report.violations -format html -relevance waived -report ./alintrpo/repwaived.html
project.report.violations -format html -relevance relevant -report ./alintrpo/repviolations.html
project.report.quality -report qreport.html -classification rule_levels -waiver_comment -severity -classification rule_levels -report ./alintrpo/quality.html
project.report.violations -format pdf -relevance all -report ./alintrpo/violation_report.pdf
