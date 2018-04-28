# Policy configuration file for Aldec ALINT-PRO product. Generated automatically.
# Aldec, Inc. ALINT-PRO version 2017.12.1602 built for Windows on January 16, 2018

project.policy.clear

# Do not overload a wire with too many drivers.
project.policy.add -rule DO254_NETLIST.1141

# Do not have simultaneously active drivers on one signal.
project.policy.add -rule DO254_NETLIST.1142

# Use tri-states to control bidirectional bus mode.
project.policy.add -rule DO254_NETLIST.1143_a

# Only tri-state elements should be connected to the bidirectional buses.
project.policy.add -rule DO254_NETLIST.1143_b

# Do not use gated clocks (FPGA).
project.policy.add -rule DO254_NETLIST.1211

# Isolate gated clocks to a separate clock generator instance.
project.policy.add -rule DO254_NETLIST.1212_a

# Gated clocks can be used only at top level (ASIC).
project.policy.add -rule DO254_NETLIST.1212_b

# Do not use flip-flop output as a clock.
project.policy.add -rule DO254_NETLIST.1221

# Do not connect clocks to anything other than flip-flop clock pins.
project.policy.add -rule DO254_NETLIST.1222

# Do not connect resets to anything other than flip-flop reset pins.
project.policy.add -rule DO254_NETLIST.1231

# Do not use combinatorial logic in reset lines.
project.policy.add -rule DO254_NETLIST.1232_a

# Avoid internally generated resets.
project.policy.add -rule DO254_NETLIST.1232_b

# Place the reset generator instance at the top-level of design hierarchy.
project.policy.add -rule DO254_NETLIST.1232_c

# A flip-flop inference should have one asynchronous control.
project.policy.add -rule DO254_NETLIST.1242

# Do not use the same signal as clock and reset.
project.policy.add -rule DO254_NETLIST.1243

# Do not use a clock signal as a data.
project.policy.add -rule DO254_NETLIST.1511

# Port description order should follow a pattern.
project.policy.add -rule DO254_NETLIST.2112

# Do not connect inout port directly to input/output ports.
project.policy.add -rule DO254_NETLIST.3411

# Do not use combinatorial feedbacks.
project.policy.add -rule DO254_NETLIST.3511

# Avoid latches as much as possible.
project.policy.add -rule DO254_NETLIST.3621

# Use the 'std_logic_1164' standard package whenever it is possible.
project.policy.add -rule DO254_VHDL.1311

# Use the 'numeric_std' package instead of 'std_logic_arith' and 'std_logic_unsigned' packages.
project.policy.add -rule DO254_VHDL.1312

# Use 'std_logic' only for I/O ports.
project.policy.add -rule DO254_VHDL.1313

# Do not use unsafe data types inside architecture.
project.policy.add -rule DO254_VHDL.1314

# Specify range for objects of 'integer' data type.
project.policy.add -rule DO254_VHDL.1315

# Do not use the 'bit' data type.
project.policy.add -rule DO254_VHDL.1316

# Do not use the 'enum_encoding' attribute for enumerations.
project.policy.add -rule DO254_VHDL.1317

# Specify range for interface objects of 'std_logic_vector' data type.
project.policy.add -rule DO254_VHDL.1318

# Use descending range for one-dimensional objects.
project.policy.add -rule DO254_VHDL.1321

# Specify '0' as least significant bit for one-dimensional objects.
project.policy.add -rule DO254_VHDL.1322

# Use simple signals only for non-constant indexing.
project.policy.add -rule DO254_VHDL.1323

# Do not use ordered port connections.
project.policy.add -rule DO254_VHDL.1411

# Match bit widths of relational operator arguments.
project.policy.add -rule DO254_VHDL.1621

# Bit widths of component port and bind signal should match.
project.policy.add -rule DO254_VHDL.1633

# Define all the necessary signals in the sensitivity list.
project.policy.add -rule DO254_VHDL.1711

# Do not define unnecessary objects in the sensitivity list.
project.policy.add -rule DO254_VHDL.1721

# Do not use a signal within the same process statement it was assigned.
project.policy.add -rule DO254_VHDL.1722

# Do not read global signals in a function body.
project.policy.add -rule DO254_VHDL.1811

# Function return value should be defined in all the possible cases.
project.policy.add -rule DO254_VHDL.1812

# A function should return at the end of its body.
project.policy.add -rule DO254_VHDL.1821

# Function should not return in conditional branches.
project.policy.add -rule DO254_VHDL.1822

# Do not describe multiple statements in one line.
project.policy.add -rule DO254_VHDL.2121_a

# Do not describe multiple association elements in one line.
project.policy.add -rule DO254_VHDL.2121_b

# Do not describe multiple declarations per line.
project.policy.add -rule DO254_VHDL.2121_c

# Do not describe same objects using both upper and lower letter case.
project.policy.add -rule DO254_VHDL.2221

# Do not use multiple waveform and optional delay expression in assignments.
project.policy.add -rule DO254_VHDL.3111

# Case statement should always have 'others' choice.
project.policy.add -rule DO254_VHDL.3212

# Do not describe unreachable conditions.
project.policy.add -rule DO254_VHDL.3221

# Do not use 'with select' statement.
project.policy.add -rule DO254_VHDL.3223

# Do not describe multiple independent conditions in the process.
project.policy.add -rule DO254_VHDL.3611

# No duplicated non-blocking signal assignments within the same combinatorial block.
project.policy.add -rule DO254_VLOG.1121

# No duplicated signal assignments within the same sequential block.
project.policy.add -rule DO254_VLOG.1122

# No mixed signal assignments within the same combinational block.
project.policy.add -rule DO254_VLOG.1131

# Use non-blocking assignments in flip-flop inferences.
project.policy.add -rule DO254_VLOG.1151

# Polarity of a reset signal should match the signal edge.
project.policy.add -rule DO254_VLOG.1241

# Use descending range for one-dimensional objects.
project.policy.add -rule DO254_VLOG.1321

# Use '0' as least significant bit for one-dimensional objects.
project.policy.add -rule DO254_VLOG.1322

# Use simple signals only for non-constant indexing.
project.policy.add -rule DO254_VLOG.1323

# An index should not exceed an object range.
project.policy.add -rule DO254_VLOG.1324

# A source of assignment (RHS) should not be wider than destination (LHS).
project.policy.add -rule DO254_VLOG.1611

# A source of assignment (RHS) should not be narrower than destination (LHS).
project.policy.add -rule DO254_VLOG.1612

# Bit widths should match in assignments of 'integer' to 'reg' or 'wire'.
project.policy.add -rule DO254_VLOG.1613

# Do not assign negative values to objects of 'integer' data type.
project.policy.add -rule DO254_VLOG.1614

# Match bit widths of relational operator arguments.
project.policy.add -rule DO254_VLOG.1621

# Bit width of each 'case' item should match a selection expression.
project.policy.add -rule DO254_VLOG.1622

# An argument and corresponding subprogram port bit widths should match.
project.policy.add -rule DO254_VLOG.1631

# Bit width of function return value should match an assignment destination.
project.policy.add -rule DO254_VLOG.1632

# Bit widths of component port and bind signal should match.
project.policy.add -rule DO254_VLOG.1633

# Do not use reduction operators with signals wider than 8 bits.
project.policy.add -rule DO254_VLOG.1641

# Bit width of target should match operands of bit-wise operation in assignment source.
project.policy.add -rule DO254_VLOG.1642

# Define all necessary signals in the sensitivity list of a combinatorial process.
project.policy.add -rule DO254_VLOG.1711

# Do not define unnecessary objects in the sensitivity list of a combinatorial process.
project.policy.add -rule DO254_VLOG.1721_a

# Do not define constants in the sensitivity list of a combinatorial process.
project.policy.add -rule DO254_VLOG.1721_b

# Sensitivity list should not include signals that are assigned within the process.
project.policy.add -rule DO254_VLOG.1722

# Do not read global signals in a function body.
project.policy.add -rule DO254_VLOG.1811

# Function output should be defined in all the possible cases.
project.policy.add -rule DO254_VLOG.1812

# Do not assign global signals in a function body.
project.policy.add -rule DO254_VLOG.1813

# A function should return at the end of its body.
project.policy.add -rule DO254_VLOG.1821

# Always add comments to object declarations.
project.policy.add -rule DO254_VLOG.2113_a

# Describe one object per declaration.
project.policy.add -rule DO254_VLOG.2113_b

# Declare one object per line.
project.policy.add -rule DO254_VLOG.2113_c

# Do not describe multiple statements in one line.
project.policy.add -rule DO254_VLOG.2121

# Do not use identifiers that differ by letter case only.
project.policy.add -rule DO254_VLOG.2221

# Do not describe case statements with overlapping items.
project.policy.add -rule DO254_VLOG.3211

# Case statement should always have 'default' clause.
project.policy.add -rule DO254_VLOG.3212

# 'default' should be the last clause in case statement.
project.policy.add -rule DO254_VLOG.3213

# Do not use 'casex' and 'casez' statements.
project.policy.add -rule DO254_VLOG.3214

# Do not describe unreachable conditions.
project.policy.add -rule DO254_VLOG.3221

# Use single-bit signals in conditional expressions.
project.policy.add -rule DO254_VLOG.3222

# Do not describe multiple independent conditions in the process.
project.policy.add -rule DO254_VLOG.3611

# Do not use different clock edges within the same process.
project.policy.add -rule DO254_VLOG.3711_a

# Do not use different edges for clocks within the same event control statement.
project.policy.add -rule DO254_VLOG.3711_b

# Do not use identical clock edges within a single 'always' construct.
project.policy.add -rule DO254_VLOG.3712_a

# Specify the event control description at the top of the 'always' construct.
project.policy.add -rule DO254_VLOG.3712_b

# Do not use multiple event controls within a process.
project.policy.add -rule DO254_VLOG.3721
