# 7-Segment Display Controller – Verilog

## Description

A **4-bit hexadecimal to 7-segment display controller** designed using Verilog HDL.

The controller accepts a 4-bit hexadecimal input (`0–F`) and generates the corresponding 7-segment display pattern.

## Features

* 4-bit hexadecimal input
* Supports digits `0–9`
* Supports hexadecimal characters `A–F`
* 7-segment output
* Combinational logic design
* Testbench included
* Complete simulation output included

## Folder Structure

```text
7-Segment-Display-Controller-Verilog/
│
├── src/
│   └── seven_segment_controller.v
│
├── tb/
│   └── seven_segment_controller_tb.v
│
├── output/
│   └── output.txt
│
└── README.md
```

## Inputs

| Signal  | Width | Description                       |
| ------- | ----: | --------------------------------- |
| `digit` | 4-bit | Hexadecimal input from `0` to `F` |

## Output

| Signal     | Width | Description                       |
| ---------- | ----: | --------------------------------- |
| `segments` | 7-bit | Controls segments `a,b,c,d,e,f,g` |

## Segment Configuration

The output follows this order:

```text
abcdefg
```

Each bit controls one segment:

```text
       a
      ---
   f |   | b
      -g-
   e |   | c
      ---
       d
```

`1` = Segment ON
`0` = Segment OFF

## Hexadecimal Mapping

| Input  | Character | Segments  |
| ------ | --------- | --------- |
| `0000` | 0         | `1111110` |
| `0001` | 1         | `0110000` |
| `0010` | 2         | `1101101` |
| `0011` | 3         | `1111001` |
| `0100` | 4         | `0110011` |
| `0101` | 5         | `1011011` |
| `0110` | 6         | `1011111` |
| `0111` | 7         | `1110000` |
| `1000` | 8         | `1111111` |
| `1001` | 9         | `1111011` |
| `1010` | A         | `1110111` |
| `1011` | B         | `0011111` |
| `1100` | C         | `1001110` |
| `1101` | D         | `0111101` |
| `1110` | E         | `1001111` |
| `1111` | F         | `1000111` |

## Working Principle

The controller uses a Verilog `case` statement to decode the 4-bit hexadecimal input.

For example:

```text
Input = 4'b0000
Output = 7'b1111110
```

This turns ON the segments required to display `0`.

Another example:

```text
Input = 4'b1010
Output = 7'b1110111
```

This displays the hexadecimal character `A`.

## Simulation

This project can be simulated using **Icarus Verilog**.

### Compile

```bash
iverilog -o seven_segment_sim src/seven_segment_controller.v tb/seven_segment_controller_tb.v
```

### Run

```bash
vvp seven_segment_sim
```

### Save Output

```bash
vvp seven_segment_sim > output/output.txt
```

## Expected Output

The testbench checks all hexadecimal values from `0` to `F`.

```text
==============================================
       7-SEGMENT DISPLAY CONTROLLER
==============================================
Time    Digit   Segments (abcdefg)
----------------------------------------------
10      0       1111110
20      1       0110000
30      2       1101101
40      3       1111001
50      4       0110011
60      5       1011011
70      6       1011111
80      7       1110000
90      8       1111111
100     9       1111011
110     A       1110111
120     B       0011111
130     C       1001110
140     D       0111101
150     E       1001111
160     F       1000111
----------------------------------------------
       SIMULATION COMPLETED
==============================================
```

## Learning Outcomes

This project demonstrates:

* Combinational logic
* 7-segment display interfacing
* Hexadecimal decoding
* Verilog `case` statements
* Digital display control
* Testbench development
* Simulation and verification

## Future Improvements

The project can be extended to:

* Support multiple 7-segment displays
* Add a binary counter
* Connect to a digital clock
* Add multiplexed display control
* Implement on an FPGA board
* Create a decimal counter from `0–9999`

## Author

**Nikhila**

## License

This project is created for educational and learning purposes.
