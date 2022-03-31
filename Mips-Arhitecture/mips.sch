VERSION 6
BEGIN SCHEMATIC
    BEGIN ATTR DeviceFamilyName "spartan3"
        DELETE all:0
        EDITNAME all:0
        EDITTRAIT all:0
    END ATTR
    BEGIN NETLIST
        SIGNAL Clk
        SIGNAL New_PC(31:0)
        SIGNAL Instr(25:21)
        SIGNAL Instr(15:11)
        SIGNAL Instr(20:16)
        SIGNAL WrReg(4:0)
        SIGNAL RegDest
        SIGNAL PC(6:2)
        SIGNAL RegWr
        SIGNAL RdData1(31:0)
        SIGNAL Instr(15:0)
        SIGNAL RdData2(31:0)
        SIGNAL ALUOP(1:0)
        SIGNAL ALUSrc
        SIGNAL INW0(31:0)
        SIGNAL INW1(31:0)
        SIGNAL OUTW0(31:0)
        SIGNAL ALU_Out(31:0)
        SIGNAL MemWr
        SIGNAL ALU_Out(6:2)
        SIGNAL MemOut(31:0)
        SIGNAL Mem2Reg
        SIGNAL WrData(31:0)
        SIGNAL Instr(5:0)
        SIGNAL Instr(31:26)
        SIGNAL XLXN_51
        SIGNAL XLXN_52
        SIGNAL Branch
        SIGNAL XLXN_55(31:0)
        SIGNAL Zero
        SIGNAL XLXN_59(31:0)
        SIGNAL Instr(31:0)
        SIGNAL XLXN_60
        SIGNAL PC(31:0)
        PORT Input Clk
        PORT Input INW0(31:0)
        PORT Input INW1(31:0)
        PORT Output OUTW0(31:0)
        BEGIN BLOCKDEF PC_Update
            TIMESTAMP 2021 4 1 19 38 30
            RECTANGLE N 320 -124 384 -100 
            LINE N 320 -112 384 -112 
            RECTANGLE N 64 -132 320 192 
            LINE N 64 -112 0 -112 
            LINE N 64 -48 0 -48 
            RECTANGLE N 0 36 64 60 
            LINE N 64 48 0 48 
            RECTANGLE N 0 132 64 156 
            LINE N 64 144 0 144 
        END BLOCKDEF
        BEGIN BLOCKDEF ProgCnt
            TIMESTAMP 2021 3 13 9 58 0
            RECTANGLE N 64 -128 320 0 
            LINE N 64 -96 0 -96 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF ROM32x32
            TIMESTAMP 2021 3 13 11 48 27
            RECTANGLE N 64 -64 320 0 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V5
            TIMESTAMP 2021 3 13 13 50 25
            RECTANGLE N 64 -192 320 0 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            LINE N 64 -16 0 -16 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
        END BLOCKDEF
        BEGIN BLOCKDEF File_Regs
            TIMESTAMP 2021 3 15 14 57 14
            RECTANGLE N 64 -400 384 20 
            RECTANGLE N 0 -236 64 -212 
            LINE N 64 -224 0 -224 
            RECTANGLE N 0 -172 64 -148 
            LINE N 64 -160 0 -160 
            RECTANGLE N 0 -12 64 12 
            LINE N 64 0 0 0 
            RECTANGLE N 0 -60 64 -36 
            LINE N 64 -48 0 -48 
            LINE N 64 -384 0 -384 
            LINE N 64 -336 0 -336 
            RECTANGLE N 384 -396 448 -372 
            LINE N 384 -384 448 -384 
            RECTANGLE N 384 -348 448 -324 
            LINE N 384 -336 448 -336 
        END BLOCKDEF
        BEGIN BLOCKDEF ALU
            TIMESTAMP 2021 4 1 18 35 51
            RECTANGLE N 0 -252 64 -228 
            LINE N 64 -240 0 -240 
            RECTANGLE N 0 -188 64 -164 
            LINE N 64 -176 0 -176 
            RECTANGLE N 0 -108 64 -84 
            LINE N 64 -96 0 -96 
            LINE N 64 -32 0 -32 
            RECTANGLE N 320 -108 384 -84 
            LINE N 320 -96 384 -96 
            RECTANGLE N 0 -308 64 -284 
            LINE N 64 -304 0 -304 
            RECTANGLE N 64 -320 320 64 
            LINE N 320 -288 384 -288 
        END BLOCKDEF
        BEGIN BLOCKDEF DataMem
            TIMESTAMP 2021 3 15 15 58 17
            RECTANGLE N 0 68 64 92 
            LINE N 64 80 0 80 
            RECTANGLE N 0 132 64 156 
            LINE N 64 144 0 144 
            RECTANGLE N 384 132 448 156 
            LINE N 384 144 448 144 
            RECTANGLE N 64 -240 384 188 
            LINE N 64 -208 0 -208 
            RECTANGLE N 0 -156 64 -132 
            LINE N 64 -144 0 -144 
            RECTANGLE N 384 -156 448 -132 
            LINE N 384 -144 448 -144 
            RECTANGLE N 0 -92 64 -68 
            LINE N 64 -80 0 -80 
            LINE N 64 16 0 16 
        END BLOCKDEF
        BEGIN BLOCKDEF MUX2V32
            TIMESTAMP 2021 3 15 16 10 36
            RECTANGLE N 64 -192 320 0 
            LINE N 64 -160 0 -160 
            RECTANGLE N 320 -172 384 -148 
            LINE N 320 -160 384 -160 
            RECTANGLE N 0 -28 64 -4 
            LINE N 64 -16 0 -16 
            RECTANGLE N 0 -76 64 -52 
            LINE N 64 -64 0 -64 
        END BLOCKDEF
        BEGIN BLOCKDEF ctrl
            TIMESTAMP 2021 4 1 18 38 33
            LINE N 320 32 384 32 
            RECTANGLE N 0 -364 64 -340 
            LINE N 64 -352 0 -352 
            RECTANGLE N 0 -44 64 -20 
            LINE N 64 -32 0 -32 
            LINE N 320 -352 384 -352 
            LINE N 320 -288 384 -288 
            LINE N 320 -224 384 -224 
            LINE N 320 -160 384 -160 
            LINE N 320 -96 384 -96 
            RECTANGLE N 320 -44 384 -20 
            LINE N 320 -32 384 -32 
            RECTANGLE N 64 -384 320 64 
        END BLOCKDEF
        BEGIN BLOCK U_PC ProgCnt
            PIN Clk Clk
            PIN New_PC(31:0) New_PC(31:0)
            PIN PC(31:0) PC(31:0)
        END BLOCK
        BEGIN BLOCK U_New_PC PC_Update
            PIN New_PC(31:0) New_PC(31:0)
            PIN Zero Zero
            PIN Branch Branch
            PIN Offset(15:0) Instr(15:0)
            PIN PC(31:0) PC(31:0)
        END BLOCK
        BEGIN BLOCK U_ROM ROM32x32
            PIN Addr(4:0) PC(6:2)
            PIN Data(31:0) Instr(31:0)
        END BLOCK
        BEGIN BLOCK U_MUXRegD MUX2V5
            PIN Y(4:0) WrReg(4:0)
            PIN Sel RegDest
            PIN I0(4:0) Instr(20:16)
            PIN I1(4:0) Instr(15:11)
        END BLOCK
        BEGIN BLOCK U_Regs File_Regs
            PIN RdReg1(4:0) Instr(25:21)
            PIN RdReg2(4:0) Instr(20:16)
            PIN WRData(31:0) WrData(31:0)
            PIN WrReg(4:0) WrReg(4:0)
            PIN Clk Clk
            PIN WrEn RegWr
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdData2(31:0) RdData2(31:0)
        END BLOCK
        BEGIN BLOCK U_ALU ALU
            PIN ALUSrc ALUSrc
            PIN RdData1(31:0) RdData1(31:0)
            PIN RdData2(31:0) RdData2(31:0)
            PIN FAddr(15:0) Instr(15:0)
            PIN ALUOP(1:0) ALUOP(1:0)
            PIN Y(31:0) ALU_Out(31:0)
            PIN Zero Zero
        END BLOCK
        BEGIN BLOCK U_DataMem DataMem
            PIN Clk Clk
            PIN INW0(31:0) INW0(31:0)
            PIN INW1(31:0) INW1(31:0)
            PIN Addr(4:0) ALU_Out(6:2)
            PIN DataIn(31:0) RdData2(31:0)
            PIN OUTW0(31:0) OUTW0(31:0)
            PIN DataOut(31:0) MemOut(31:0)
            PIN Wr MemWr
        END BLOCK
        BEGIN BLOCK U_MuxData MUX2V32
            PIN Sel Mem2Reg
            PIN Y(31:0) WrData(31:0)
            PIN I0(31:0) ALU_Out(31:0)
            PIN I1(31:0) MemOut(31:0)
        END BLOCK
        BEGIN BLOCK U_Ctrl ctrl
            PIN OP(5:0) Instr(31:26)
            PIN Funct(5:0) Instr(5:0)
            PIN ALUSrc ALUSrc
            PIN MemWr MemWr
            PIN Mem2Reg Mem2Reg
            PIN RegWr RegWr
            PIN RegDest RegDest
            PIN ALUOP(1:0) ALUOP(1:0)
            PIN Branch Branch
        END BLOCK
    END NETLIST
    BEGIN SHEET 1 5440 3520
        BEGIN INSTANCE U_PC 528 768 R0
            BEGIN DISPLAY 0 -248 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 496 672 528 672
        END BRANCH
        BEGIN BRANCH New_PC(31:0)
            WIRE 112 224 144 224
            WIRE 112 224 112 512
            WIRE 112 512 112 736
            WIRE 112 736 528 736
            BEGIN DISPLAY 112 512 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ROM 1424 784 R0
            BEGIN DISPLAY 0 -184 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Instr(25:21)
            WIRE 1920 800 2576 800
            WIRE 2576 800 3184 800
            BEGIN DISPLAY 2576 800 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1824 864 1920 864
        BUSTAP 1824 800 1920 800
        BEGIN INSTANCE U_MUXRegD 2240 1184 R0
            BEGIN DISPLAY 16 -272 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1824 1088 1920 1088
        BEGIN BRANCH Instr(15:11)
            WIRE 1920 1088 2032 1088
            WIRE 2032 1088 2240 1088
            BEGIN DISPLAY 2032 1088 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(20:16)
            WIRE 1920 864 2064 864
            WIRE 2064 864 2064 1024
            WIRE 2064 1024 2240 1024
            WIRE 2064 864 2640 864
            WIRE 2640 864 3184 864
            BEGIN DISPLAY 2640 864 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrReg(4:0)
            WIRE 2624 1024 2704 1024
            WIRE 2704 1024 2832 1024
            WIRE 2832 976 3184 976
            WIRE 2832 976 2832 1024
            BEGIN DISPLAY 2704 1024 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2080 1168 2144 1168
            WIRE 2144 1168 2240 1168
            BEGIN DISPLAY 2144 1168 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PC(6:2)
            WIRE 1088 752 1232 752
            WIRE 1232 752 1424 752
            BEGIN DISPLAY 1232 752 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 496 672 Clk R180 28
        BEGIN INSTANCE U_Regs 3184 1024 R0
            BEGIN DISPLAY 0 -528 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 3024 640 3104 640
            WIRE 3104 640 3184 640
            BEGIN DISPLAY 3104 640 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2832 688 2960 688
            WIRE 2960 688 3184 688
            BEGIN DISPLAY 2960 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_ALU 3840 928 R0
            BEGIN DISPLAY 0 -464 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH RdData1(31:0)
            WIRE 3632 640 3728 640
            WIRE 3728 624 3728 640
            WIRE 3728 624 3840 624
            BEGIN DISPLAY 3728 624 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1824 1248 1920 1248
        BEGIN BRANCH Instr(15:0)
            WIRE 1920 1248 2768 1248
            WIRE 2768 1248 3632 1248
            WIRE 3632 752 3632 1248
            WIRE 3632 752 3840 752
            BEGIN DISPLAY 2768 1248 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RdData2(31:0)
            WIRE 3632 688 3696 688
            WIRE 3696 688 3728 688
            WIRE 3728 688 3840 688
            WIRE 3728 688 3728 1168
            WIRE 3728 1168 4416 1168
            WIRE 4416 912 4432 912
            WIRE 4416 912 4416 1168
            BEGIN DISPLAY 3728 688 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 3760 832 3792 832
            WIRE 3792 832 3840 832
            BEGIN DISPLAY 3792 832 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSrc
            WIRE 3760 896 3808 896
            WIRE 3808 896 3840 896
            BEGIN DISPLAY 3808 896 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_DataMem 4432 768 R0
            BEGIN DISPLAY 0 -348 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Clk
            WIRE 4288 560 4368 560
            WIRE 4368 560 4432 560
            BEGIN DISPLAY 4368 560 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH INW0(31:0)
            WIRE 4368 240 4416 240
            WIRE 4416 240 4416 624
            WIRE 4416 624 4432 624
        END BRANCH
        BEGIN BRANCH INW1(31:0)
            WIRE 4384 688 4432 688
        END BRANCH
        IOMARKER 4384 688 INW1(31:0) R180 28
        BEGIN BRANCH OUTW0(31:0)
            WIRE 4880 624 4944 624
        END BRANCH
        IOMARKER 4944 624 OUTW0(31:0) R0 28
        BEGIN BRANCH ALU_Out(31:0)
            WIRE 4224 832 4272 832
            WIRE 4272 832 4272 848
            WIRE 4272 848 4272 1344
            WIRE 4272 1344 4640 1344
            WIRE 4640 1344 4944 1344
            WIRE 4944 960 4944 1344
            WIRE 4944 960 4960 960
            BEGIN DISPLAY 4640 1344 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 4336 784 4400 784
            WIRE 4400 784 4432 784
            BEGIN DISPLAY 4400 784 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 4272 848 4368 848
        BEGIN BRANCH ALU_Out(6:2)
            WIRE 4368 848 4384 848
            WIRE 4384 848 4432 848
            BEGIN DISPLAY 4384 848 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_MuxData 4960 976 R0
            BEGIN DISPLAY 0 -296 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH MemOut(31:0)
            WIRE 4880 912 4912 912
            WIRE 4912 912 4960 912
            BEGIN DISPLAY 4912 912 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 4880 816 4928 816
            WIRE 4928 816 4960 816
            BEGIN DISPLAY 4928 816 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH WrData(31:0)
            WIRE 3168 1024 3184 1024
            WIRE 3168 1024 3168 1536
            WIRE 3168 1536 3184 1536
            WIRE 3184 1536 4176 1536
            WIRE 4176 1536 5376 1536
            WIRE 5344 816 5376 816
            WIRE 5376 816 5376 1536
            BEGIN DISPLAY 4176 1536 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_Ctrl 2208 1840 R0
            BEGIN DISPLAY 0 -504 ATTR InstName
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BUSTAP 1824 1808 1920 1808
        BEGIN BRANCH Instr(5:0)
            WIRE 1920 1808 2032 1808
            WIRE 2032 1808 2208 1808
            BEGIN DISPLAY 2032 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1824 1488 1920 1488
        BEGIN BRANCH Instr(31:26)
            WIRE 1920 1488 2048 1488
            WIRE 2048 1488 2192 1488
            WIRE 2192 1488 2208 1488
            BEGIN DISPLAY 2048 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUSrc
            WIRE 2592 1488 2656 1488
            WIRE 2656 1488 2752 1488
            BEGIN DISPLAY 2656 1488 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH MemWr
            WIRE 2592 1552 2656 1552
            WIRE 2656 1552 2752 1552
            BEGIN DISPLAY 2656 1552 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Mem2Reg
            WIRE 2592 1616 2656 1616
            WIRE 2656 1616 2752 1616
            BEGIN DISPLAY 2656 1616 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegWr
            WIRE 2592 1680 2640 1680
            WIRE 2640 1680 2752 1680
            BEGIN DISPLAY 2640 1680 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH RegDest
            WIRE 2592 1744 2656 1744
            WIRE 2656 1744 2752 1744
            BEGIN DISPLAY 2656 1744 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH ALUOP(1:0)
            WIRE 2592 1808 2656 1808
            WIRE 2656 1808 2752 1808
            BEGIN DISPLAY 2656 1808 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        IOMARKER 4368 240 INW0(31:0) R180 28
        BEGIN BRANCH Branch
            WIRE 2592 1872 2640 1872
            WIRE 2640 1872 2768 1872
            BEGIN DISPLAY 2640 1872 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN INSTANCE U_New_PC 528 336 M0
            BEGIN DISPLAY 144 -244 ATTR InstName
                ALIGNMENT RIGHT
                FONT 28 "Arial"
            END DISPLAY
        END INSTANCE
        BEGIN BRANCH Zero
            WIRE 528 224 1584 224
            WIRE 1584 224 2384 224
            WIRE 2384 224 2384 368
            WIRE 2384 368 4240 368
            WIRE 4240 368 4240 640
            WIRE 4224 640 4240 640
            BEGIN DISPLAY 1584 224 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Branch
            WIRE 528 288 608 288
            WIRE 608 288 624 288
            WIRE 624 288 736 288
            BEGIN DISPLAY 624 288 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH Instr(31:0)
            WIRE 1808 752 1824 752
            WIRE 1824 752 1824 800
            WIRE 1824 800 1824 864
            WIRE 1824 864 1824 960
            WIRE 1824 960 1824 1088
            WIRE 1824 1088 1824 1248
            WIRE 1824 1248 1824 1472
            WIRE 1824 1472 1824 1488
            WIRE 1824 1488 1824 1808
            WIRE 1824 1808 1824 1888
            WIRE 1824 368 1824 416
            WIRE 1824 416 1824 752
            BEGIN DISPLAY 1824 960 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 1824 416 1728 416
        BEGIN BRANCH Instr(15:0)
            WIRE 528 384 896 384
            WIRE 896 384 896 416
            WIRE 896 416 1120 416
            WIRE 1120 416 1728 416
            BEGIN DISPLAY 1120 416 ATTR Name
                ALIGNMENT SOFT-BCENTER
            END DISPLAY
        END BRANCH
        BEGIN BRANCH PC(31:0)
            WIRE 528 480 928 480
            WIRE 928 480 928 560
            WIRE 928 560 928 672
            WIRE 928 672 928 752
            WIRE 928 752 928 1024
            WIRE 912 672 928 672
            BEGIN DISPLAY 928 560 ATTR Name
                ALIGNMENT SOFT-TVCENTER
            END DISPLAY
        END BRANCH
        BUSTAP 928 752 1088 752
    END SHEET
END SCHEMATIC
