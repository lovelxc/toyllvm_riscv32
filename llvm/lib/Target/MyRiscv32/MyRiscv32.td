//===-- MyRiscv32.td - Describe the RISC-V(32) Target Machine -*- tablegen -*-//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

include "llvm/Target/Target.td"

//===----------------------------------------------------------------------===//
// Registers, calling conventions, instruction descriptions.
//===----------------------------------------------------------------------===//

// Register Infomation
include "MyRiscv32RegisterInfo.td"

// Calling Conversion
include "RISCVCallingConv.td"

// Schedule
include "MyRiscv32Schedule.td"

// Instruction Description
include "MyRiscv32InstrInfo.td"

//===----------------------------------------------------------------------===//
// Define the RISC-V target.
//===----------------------------------------------------------------------===//

def MyRiscv32InstrInfo : InstrInfo;

// Whill generate MyRiscv32GenAsmWrite.inc included by MyRiscv32InstPrinter.cpp, contents
// as follows,
// void MyRiscv32InstPrinter::printInstruction(const MCInst *MI, raw_ostream &O) {...}
// const char* MyRiscv32InstPrinter::getRegisterName(unsigned RegNo) {...}
def MyRiscv32 : Target {
  let InstructionSet = MyRiscv32InstrInfo;
}
