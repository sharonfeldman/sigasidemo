# Policy configuration file for Aldec ALINT-PRO product. Generated automatically.
# Aldec, Inc. ALINT-PRO version 2017.12.1602 built for Windows on January 16, 2018

project.policy.clear

# Always use synchronization circuits to transfer data between asynchronous domains.
project.policy.add -rule ALDEC_CDC.1.1

# Use reset synchronization scheme for asynchronous controls.
project.policy.add -rule ALDEC_CDC.1.10

# Use synchronization circuits for asynchronous external signals.
project.policy.add -rule ALDEC_CDC.1.11

# No combinational logic should be present between the first and the second flip-flops of the synchronization circuit.
project.policy.add -rule ALDEC_CDC.1.2

# No feedback loops should be present at the first flip-flop of the synchronization circuit.
project.policy.add -rule ALDEC_CDC.1.3

# Do not use NDFF synchronizer for multi-bit data.
project.policy.add -rule ALDEC_CDC.1.9

# Avoid locating combinational logic on asynchronous clock domains crossing paths.
project.policy.add -rule ALDEC_CDC.2.1

# Avoid convergence on clock domain crossing paths.
project.policy.add -rule ALDEC_CDC.2.2

# Avoid divergence on clock domain crossing paths.
project.policy.add -rule ALDEC_CDC.2.3

# Top-level input port should not be read in multiple domains.
project.policy.add -rule ALDEC_CDC.2.6

# Top-level output port should not read from multiple domains.
project.policy.add -rule ALDEC_CDC.2.7

# Avoid reconvergence of synchronized signals.
project.policy.add -rule ALDEC_CDC.2.8

# Do not pass data from the same clock domain to the synchronizer's input pin.
project.policy.add -rule ALDEC_CDC.5.1

# Use synchronized data in the target domain.
project.policy.add -rule ALDEC_CDC.5.2

# Use a single edge of a clock in a design.
project.policy.add -rule ALDEC_CDC.6.1.2

# Supply clock signals only to clock input pins.
project.policy.add -rule ALDEC_CDC.6.1.4

# Avoid using flip-flop output as a clock of another flip-flop.
project.policy.add -rule ALDEC_CDC.6.1.5

# Avoid connecting clock signals to black boxes.
project.policy.add -rule ALDEC_CDC.6.1.6_a

# Avoid gated clocks in FPGA design.
project.policy.add -rule ALDEC_CDC.6.1.7_a

# Use only one asynchronous control (either set or reset) per flip-flop.
project.policy.add -rule ALDEC_CDC.6.2.1_b

# Avoid using asynchronous and synchronous set/reset on the same line.
project.policy.add -rule ALDEC_CDC.6.2.3

# Supply initial reset to asynchronous set/reset pins only.
project.policy.add -rule ALDEC_CDC.6.2.4

# Do not mix clock and reset lines.
project.policy.add -rule ALDEC_CDC.6.2.6

# Isolate clock generation logic to a separate clock generator instance.
project.policy.add -rule ALDEC_CDC.8.1

# Clock generator instance should contain only clock generation logic.
project.policy.add -rule ALDEC_CDC.8.2

# Do not use clock generation logic for other purposes.
project.policy.add -rule ALDEC_CDC.8.3

# Locate clock generator instance at the top-level of hierarchy.
project.policy.add -rule ALDEC_CDC.8.4

# Use one clock generator instance in the design.
project.policy.add -rule ALDEC_CDC.8.5

# Isolate reset generation logic to a separate reset generator instance.
project.policy.add -rule ALDEC_CDC.9.1

# Reset generator instance should contain only reset generation logic.
project.policy.add -rule ALDEC_CDC.9.2

# Do not use reset generation logic for other purposes.
project.policy.add -rule ALDEC_CDC.9.3

# Locate reset generator instance at the top-level of hierarchy.
project.policy.add -rule ALDEC_CDC.9.4

# Use one reset generator instance in the design.
project.policy.add -rule ALDEC_CDC.9.5
