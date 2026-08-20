# 4-Bit Parity Generator using Verilog

## Introduction

This project implements a 4-bit Parity Generator using Verilog HDL.

A parity generator is a combinational logic circuit used to generate
a parity bit for a given binary data.

Parity is commonly used for simple error detection during digital
data transmission.

## Features

- 4-bit input data
- Even parity generation
- Odd parity generation
- Combinational logic design
- Verilog HDL implementation

## Input

| Signal | Width | Description |
|--------|-------|-------------|
| data   | 4-bit | Input binary data |

## Outputs

| Signal | Description |
|--------|-------------|
| even_parity | Even parity bit |
| odd_parity  | Odd parity bit |

## Working Principle

The XOR operation is used to generate the parity bit.

### Even Parity

For even parity, the total number of `1`s including the parity bit
must be even.

```text
even_parity = data[3] ^ data[2] ^ data[1] ^ data[0]