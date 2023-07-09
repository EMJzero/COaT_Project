; ModuleID = '/tmp/tmp.EUhtDuqZk1/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.source_a = private unnamed_addr constant [256 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01], align 16, !taffo.info !0
@main.A_ROWS = internal global i32 16, align 4, !taffo.info !2
@main.A_COLS = internal global i32 16, align 4, !taffo.info !2
@main.B_COLS = internal global i32 16, align 4, !taffo.info !2
@.str.6 = private unnamed_addr constant [10 x i8] c"Input A:\0A\00", align 1, !taffo.info !4
@.str.7 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1, !taffo.info !6
@.str.8 = private unnamed_addr constant [10 x i8] c"Input B:\0A\00", align 1, !taffo.info !4
@.str.9 = private unnamed_addr constant [9 x i8] c"Result:\0A\00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local void @mm(float* noalias %in_a_f, float* noalias %in_b_f, float* noalias %out_c_f, i32 %A_ROWS, i32 %A_COLS, i32 %B_COLS) #0 !taffo.start !10 !taffo.initweight !11 !taffo.funinfo !12 {
entry:
  %mul = mul i32 %A_ROWS, %A_COLS
  %0 = zext i32 %mul to i64
  %1 = call i8* @llvm.stacksave(), !taffo.constinfo !13
  %vla.u9_23fixp = alloca i32, i64 %0, align 16, !taffo.info !14, !taffo.target !17
  %mul2 = mul i32 %A_COLS, %B_COLS
  %2 = zext i32 %mul2 to i64
  %vla3.u9_23fixp = alloca i32, i64 %2, align 16, !taffo.info !14, !taffo.target !18
  %mul5 = mul i32 %A_ROWS, %B_COLS
  %3 = zext i32 %mul5 to i64
  %vla6.u17_15fixp = alloca i32, i64 %3, align 16, !taffo.info !19, !taffo.target !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc20, %for.inc19 ], !taffo.info !23
  %cmp = icmp ult i32 %i.0, %A_ROWS, !taffo.info !23
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !23
  %cmp12 = icmp ult i32 %j.0, %A_COLS, !taffo.info !23
  br i1 %cmp12, label %for.body13, label %for.end

for.body13:                                       ; preds = %for.cond11
  %mul14 = mul i32 %i.0, %A_COLS
  %add = add i32 %mul14, %j.0
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds float, float* %in_a_f, i64 %idxprom
  %4 = load float, float* %arrayidx, align 4
  %5 = fmul float 0x4160000000000000, %4
  %6 = fptoui float %5 to i32
  %mul15 = mul i32 %i.0, %A_COLS
  %add16 = add i32 %mul15, %j.0
  %idxprom17 = zext i32 %add16 to i64
  %arrayidx18.u9_23fixp = getelementptr inbounds i32, i32* %vla.u9_23fixp, i64 %idxprom17, !taffo.info !14, !taffo.target !17
  store i32 %6, i32* %arrayidx18.u9_23fixp, align 4, !taffo.info !25, !taffo.target !17
  br label %for.inc

for.inc:                                          ; preds = %for.body13
  %inc = add nsw i32 %j.0, 1, !taffo.info !26, !taffo.constinfo !28
  br label %for.cond11, !llvm.loop !29

for.end:                                          ; preds = %for.cond11
  br label %for.inc19

for.inc19:                                        ; preds = %for.end
  %inc20 = add nsw i32 %i.0, 1, !taffo.info !26, !taffo.constinfo !28
  br label %for.cond, !llvm.loop !31

for.end21:                                        ; preds = %for.cond
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc39, %for.end21
  %i.1 = phi i32 [ 0, %for.end21 ], [ %inc40, %for.inc39 ], !taffo.info !23
  %cmp23 = icmp ult i32 %i.1, %A_COLS, !taffo.info !23
  br i1 %cmp23, label %for.body24, label %for.end41

for.body24:                                       ; preds = %for.cond22
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc36, %for.body24
  %j.1 = phi i32 [ 0, %for.body24 ], [ %inc37, %for.inc36 ], !taffo.info !23
  %cmp26 = icmp ult i32 %j.1, %B_COLS, !taffo.info !23
  br i1 %cmp26, label %for.body27, label %for.end38

for.body27:                                       ; preds = %for.cond25
  %mul28 = mul i32 %i.1, %B_COLS
  %add29 = add i32 %mul28, %j.1
  %idxprom30 = zext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds float, float* %in_b_f, i64 %idxprom30
  %7 = load float, float* %arrayidx31, align 4
  %8 = fmul float 0x4160000000000000, %7
  %9 = fptoui float %8 to i32
  %mul32 = mul i32 %i.1, %B_COLS
  %add33 = add i32 %mul32, %j.1
  %idxprom34 = zext i32 %add33 to i64
  %arrayidx35.u9_23fixp = getelementptr inbounds i32, i32* %vla3.u9_23fixp, i64 %idxprom34, !taffo.info !14, !taffo.target !18
  store i32 %9, i32* %arrayidx35.u9_23fixp, align 4, !taffo.info !25, !taffo.target !18
  br label %for.inc36

for.inc36:                                        ; preds = %for.body27
  %inc37 = add nsw i32 %j.1, 1, !taffo.info !26, !taffo.constinfo !28
  br label %for.cond25, !llvm.loop !32

for.end38:                                        ; preds = %for.cond25
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %inc40 = add nsw i32 %i.1, 1, !taffo.info !26, !taffo.constinfo !28
  br label %for.cond22, !llvm.loop !33

for.end41:                                        ; preds = %for.cond22
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc71, %for.end41
  %sum.0.u17_15fixp = phi i32 [ 0, %for.end41 ], [ %sum.1.u17_15fixp, %for.inc71 ], !taffo.info !19
  %i.2 = phi i32 [ 0, %for.end41 ], [ %inc72, %for.inc71 ], !taffo.info !23
  %cmp43 = icmp ult i32 %i.2, %A_ROWS, !taffo.info !23
  br i1 %cmp43, label %for.body44, label %for.end73

for.body44:                                       ; preds = %for.cond42
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc68, %for.body44
  %sum.1.u17_15fixp = phi i32 [ %sum.0.u17_15fixp, %for.body44 ], [ %sum.2.u17_15fixp, %for.inc68 ], !taffo.info !19
  %j.2 = phi i32 [ 0, %for.body44 ], [ %inc69, %for.inc68 ], !taffo.info !23
  %cmp46 = icmp ult i32 %j.2, %B_COLS, !taffo.info !23
  br i1 %cmp46, label %for.body47, label %for.end70

for.body47:                                       ; preds = %for.cond45
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc61, %for.body47
  %sum.2.u17_15fixp = phi i32 [ %sum.1.u17_15fixp, %for.body47 ], [ %add60.u17_15fixp, %for.inc61 ], !taffo.info !19
  %k.0 = phi i32 [ 0, %for.body47 ], [ %inc62, %for.inc61 ], !taffo.info !23
  %cmp49 = icmp ult i32 %k.0, %A_COLS, !taffo.info !23
  br i1 %cmp49, label %for.body50, label %for.end63

for.body50:                                       ; preds = %for.cond48
  %mul51 = mul i32 %i.2, %A_COLS
  %add52 = add i32 %mul51, %k.0
  %idxprom53 = zext i32 %add52 to i64
  %arrayidx54.u9_23fixp = getelementptr inbounds i32, i32* %vla.u9_23fixp, i64 %idxprom53, !taffo.info !14, !taffo.target !17
  %u9_23fixp = load i32, i32* %arrayidx54.u9_23fixp, align 4, !taffo.info !14, !taffo.target !17
  %mul55 = mul i32 %k.0, %B_COLS
  %add56 = add i32 %mul55, %j.2
  %idxprom57 = zext i32 %add56 to i64
  %arrayidx58.u9_23fixp = getelementptr inbounds i32, i32* %vla3.u9_23fixp, i64 %idxprom57, !taffo.info !14, !taffo.target !18
  %u9_23fixp5 = load i32, i32* %arrayidx58.u9_23fixp, align 4, !taffo.info !14, !taffo.target !18
  %10 = zext i32 %u9_23fixp to i64, !taffo.info !14, !taffo.target !17
  %11 = zext i32 %u9_23fixp5 to i64, !taffo.info !14, !taffo.target !18
  %12 = mul i64 %10, %11, !taffo.info !34
  %13 = lshr i64 %12, 31, !taffo.info !34
  %mul59.u17_15fixp = trunc i64 %13 to i32, !taffo.info !19
  %add60.u17_15fixp = add i32 %sum.2.u17_15fixp, %mul59.u17_15fixp, !taffo.info !19
  br label %for.inc61

for.inc61:                                        ; preds = %for.body50
  %inc62 = add nsw i32 %k.0, 1, !taffo.info !26, !taffo.constinfo !28
  br label %for.cond48, !llvm.loop !36

for.end63:                                        ; preds = %for.cond48
  %mul64 = mul i32 %i.2, %B_COLS
  %add65 = add i32 %mul64, %j.2
  %idxprom66 = zext i32 %add65 to i64
  %arrayidx67.u17_15fixp = getelementptr inbounds i32, i32* %vla6.u17_15fixp, i64 %idxprom66, !taffo.info !19, !taffo.target !22
  store i32 %sum.2.u17_15fixp, i32* %arrayidx67.u17_15fixp, align 4, !taffo.info !38, !taffo.target !22
  br label %for.inc68

for.inc68:                                        ; preds = %for.end63
  %inc69 = add nsw i32 %j.2, 1, !taffo.info !26, !taffo.constinfo !28
  br label %for.cond45, !llvm.loop !39

for.end70:                                        ; preds = %for.cond45
  br label %for.inc71

for.inc71:                                        ; preds = %for.end70
  %inc72 = add nsw i32 %i.2, 1, !taffo.info !26, !taffo.constinfo !28
  br label %for.cond42, !llvm.loop !40

for.end73:                                        ; preds = %for.cond42
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc91, %for.end73
  %i.3 = phi i32 [ 0, %for.end73 ], [ %inc92, %for.inc91 ], !taffo.info !23
  %cmp75 = icmp ult i32 %i.3, %A_ROWS, !taffo.info !23
  br i1 %cmp75, label %for.body76, label %for.end93

for.body76:                                       ; preds = %for.cond74
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc88, %for.body76
  %j.3 = phi i32 [ 0, %for.body76 ], [ %inc89, %for.inc88 ], !taffo.info !23
  %cmp78 = icmp ult i32 %j.3, %B_COLS, !taffo.info !23
  br i1 %cmp78, label %for.body79, label %for.end90

for.body79:                                       ; preds = %for.cond77
  %mul80 = mul i32 %i.3, %B_COLS
  %add81 = add i32 %mul80, %j.3
  %idxprom82 = zext i32 %add81 to i64
  %arrayidx83.u17_15fixp = getelementptr inbounds i32, i32* %vla6.u17_15fixp, i64 %idxprom82, !taffo.info !19, !taffo.target !22
  %u17_15fixp = load i32, i32* %arrayidx83.u17_15fixp, align 4, !taffo.info !19, !taffo.target !22
  %14 = uitofp i32 %u17_15fixp to float, !taffo.info !19, !taffo.target !22
  %15 = fdiv float %14, 3.276800e+04, !taffo.info !19, !taffo.target !22
  %mul84 = mul i32 %i.3, %B_COLS
  %add85 = add i32 %mul84, %j.3
  %idxprom86 = zext i32 %add85 to i64
  %arrayidx87 = getelementptr inbounds float, float* %out_c_f, i64 %idxprom86
  store float %15, float* %arrayidx87, align 4, !taffo.info !38, !taffo.target !22
  br label %for.inc88

for.inc88:                                        ; preds = %for.body79
  %inc89 = add nsw i32 %j.3, 1, !taffo.info !26, !taffo.constinfo !28
  br label %for.cond77, !llvm.loop !41

for.end90:                                        ; preds = %for.cond77
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %inc92 = add nsw i32 %i.3, 1, !taffo.info !26, !taffo.constinfo !28
  br label %for.cond74, !llvm.loop !42

for.end93:                                        ; preds = %for.cond74
  call void @llvm.stackrestore(i8* %1), !taffo.constinfo !28
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare !taffo.initweight !43 !taffo.funinfo !43 i8* @llvm.stacksave() #1

; Function Attrs: nofree nosync nounwind willreturn
declare !taffo.initweight !44 !taffo.funinfo !45 void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !43 !taffo.funinfo !43 {
entry:
  %source_a = alloca [256 x float], align 16
  %0 = bitcast [256 x float]* %source_a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([256 x float]* @__const.main.source_a to i8*), i64 1024, i1 false), !taffo.constinfo !46
  %arraydecay = getelementptr inbounds [256 x float], [256 x float]* %source_a, i64 0, i64 0
  %1 = load i32, i32* @main.A_ROWS, align 4
  %2 = load i32, i32* @main.A_COLS, align 4
  %mul = mul i32 %1, %2
  %3 = zext i32 %mul to i64
  %4 = call i8* @llvm.stacksave(), !taffo.constinfo !13
  %vla = alloca float, i64 %3, align 16
  %5 = load i32, i32* @main.A_COLS, align 4
  %6 = load i32, i32* @main.B_COLS, align 4
  %mul1 = mul i32 %5, %6
  %7 = zext i32 %mul1 to i64
  %vla2 = alloca float, i64 %7, align 16
  %8 = load i32, i32* @main.A_ROWS, align 4
  %9 = load i32, i32* @main.B_COLS, align 4
  %mul3 = mul i32 %8, %9
  %10 = zext i32 %mul3 to i64
  %vla4 = alloca float, i64 %10, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc14, %for.inc13 ]
  %11 = load i32, i32* @main.A_ROWS, align 4
  %cmp = icmp ult i32 %i.0, %11
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %12 = load i32, i32* @main.A_COLS, align 4
  %cmp6 = icmp ult i32 %j.0, %12
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %13 = load i32, i32* @main.A_COLS, align 4
  %mul8 = mul i32 %i.0, %13
  %add = add i32 %mul8, %j.0
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %source_a, i64 0, i64 %idxprom
  %14 = load float, float* %arrayidx, align 4
  %15 = load i32, i32* @main.A_COLS, align 4
  %mul9 = mul i32 %i.0, %15
  %add10 = add i32 %mul9, %j.0
  %idxprom11 = zext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds float, float* %vla, i64 %idxprom11
  store float %14, float* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !28
  br label %for.cond5, !llvm.loop !47

for.end:                                          ; preds = %for.cond5
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.constinfo !28
  br label %for.cond, !llvm.loop !48

for.end15:                                        ; preds = %for.cond
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc33, %for.end15
  %i.1 = phi i32 [ 0, %for.end15 ], [ %inc34, %for.inc33 ]
  %16 = load i32, i32* @main.A_COLS, align 4
  %cmp17 = icmp ult i32 %i.1, %16
  br i1 %cmp17, label %for.body18, label %for.end35

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %for.body18
  %j.1 = phi i32 [ 0, %for.body18 ], [ %inc31, %for.inc30 ]
  %17 = load i32, i32* @main.B_COLS, align 4
  %cmp20 = icmp ult i32 %j.1, %17
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %18 = load i32, i32* @main.B_COLS, align 4
  %mul22 = mul i32 %i.1, %18
  %add23 = add i32 %mul22, %j.1
  %idxprom24 = zext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds float, float* %arraydecay, i64 %idxprom24
  %19 = load float, float* %arrayidx25, align 4
  %20 = load i32, i32* @main.B_COLS, align 4
  %mul26 = mul i32 %i.1, %20
  %add27 = add i32 %mul26, %j.1
  %idxprom28 = zext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds float, float* %vla2, i64 %idxprom28
  store float %19, float* %arrayidx29, align 4
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21
  %inc31 = add nsw i32 %j.1, 1, !taffo.constinfo !28
  br label %for.cond19, !llvm.loop !49

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.constinfo !28
  br label %for.cond16, !llvm.loop !50

for.end35:                                        ; preds = %for.cond16
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !28
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc51, %for.end35
  %i.2 = phi i32 [ 0, %for.end35 ], [ %inc52, %for.inc51 ]
  %21 = load i32, i32* @main.A_ROWS, align 4
  %cmp37 = icmp ult i32 %i.2, %21
  br i1 %cmp37, label %for.body38, label %for.end53

for.body38:                                       ; preds = %for.cond36
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc47, %for.body38
  %j.2 = phi i32 [ 0, %for.body38 ], [ %inc48, %for.inc47 ]
  %22 = load i32, i32* @main.A_COLS, align 4
  %cmp40 = icmp ult i32 %j.2, %22
  br i1 %cmp40, label %for.body41, label %for.end49

for.body41:                                       ; preds = %for.cond39
  %23 = load i32, i32* @main.A_COLS, align 4
  %mul42 = mul i32 %i.2, %23
  %add43 = add i32 %mul42, %j.2
  %idxprom44 = zext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds float, float* %vla, i64 %idxprom44
  %24 = load float, float* %arrayidx45, align 4
  %conv = fpext float %24 to double
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %conv), !taffo.constinfo !51
  br label %for.inc47

for.inc47:                                        ; preds = %for.body41
  %inc48 = add nsw i32 %j.2, 1, !taffo.constinfo !28
  br label %for.cond39, !llvm.loop !52

for.end49:                                        ; preds = %for.cond39
  %call50 = call i32 @putchar(i32 10), !taffo.constinfo !28
  br label %for.inc51

for.inc51:                                        ; preds = %for.end49
  %inc52 = add nsw i32 %i.2, 1, !taffo.constinfo !28
  br label %for.cond36, !llvm.loop !53

for.end53:                                        ; preds = %for.cond36
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)), !taffo.constinfo !28
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc73, %for.end53
  %i.3 = phi i32 [ 0, %for.end53 ], [ %inc74, %for.inc73 ]
  %25 = load i32, i32* @main.A_COLS, align 4
  %cmp56 = icmp ult i32 %i.3, %25
  br i1 %cmp56, label %for.body58, label %for.end75

for.body58:                                       ; preds = %for.cond55
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc69, %for.body58
  %j.3 = phi i32 [ 0, %for.body58 ], [ %inc70, %for.inc69 ]
  %26 = load i32, i32* @main.B_COLS, align 4
  %cmp60 = icmp ult i32 %j.3, %26
  br i1 %cmp60, label %for.body62, label %for.end71

for.body62:                                       ; preds = %for.cond59
  %27 = load i32, i32* @main.B_COLS, align 4
  %mul63 = mul i32 %i.3, %27
  %add64 = add i32 %mul63, %j.3
  %idxprom65 = zext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds float, float* %vla2, i64 %idxprom65
  %28 = load float, float* %arrayidx66, align 4
  %conv67 = fpext float %28 to double
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %conv67), !taffo.constinfo !51
  br label %for.inc69

for.inc69:                                        ; preds = %for.body62
  %inc70 = add nsw i32 %j.3, 1, !taffo.constinfo !28
  br label %for.cond59, !llvm.loop !54

for.end71:                                        ; preds = %for.cond59
  %call72 = call i32 @putchar(i32 10), !taffo.constinfo !28
  br label %for.inc73

for.inc73:                                        ; preds = %for.end71
  %inc74 = add nsw i32 %i.3, 1, !taffo.constinfo !28
  br label %for.cond55, !llvm.loop !55

for.end75:                                        ; preds = %for.cond55
  %29 = load i32, i32* @main.A_ROWS, align 4
  %30 = load i32, i32* @main.A_COLS, align 4
  %31 = load i32, i32* @main.B_COLS, align 4
  call void @mm(float* %vla, float* %vla2, float* %vla4, i32 %29, i32 %30, i32 %31), !taffo.constinfo !56
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)), !taffo.constinfo !28
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc95, %for.end75
  %i.4 = phi i32 [ 0, %for.end75 ], [ %inc96, %for.inc95 ]
  %32 = load i32, i32* @main.A_ROWS, align 4
  %cmp78 = icmp ult i32 %i.4, %32
  br i1 %cmp78, label %for.body80, label %for.end97

for.body80:                                       ; preds = %for.cond77
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc91, %for.body80
  %j.4 = phi i32 [ 0, %for.body80 ], [ %inc92, %for.inc91 ]
  %33 = load i32, i32* @main.B_COLS, align 4
  %cmp82 = icmp ult i32 %j.4, %33
  br i1 %cmp82, label %for.body84, label %for.end93

for.body84:                                       ; preds = %for.cond81
  %34 = load i32, i32* @main.B_COLS, align 4
  %mul85 = mul i32 %i.4, %34
  %add86 = add i32 %mul85, %j.4
  %idxprom87 = zext i32 %add86 to i64
  %arrayidx88 = getelementptr inbounds float, float* %vla4, i64 %idxprom87
  %35 = load float, float* %arrayidx88, align 4
  %conv89 = fpext float %35 to double
  %call90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %conv89), !taffo.constinfo !51
  br label %for.inc91

for.inc91:                                        ; preds = %for.body84
  %inc92 = add nsw i32 %j.4, 1, !taffo.constinfo !28
  br label %for.cond81, !llvm.loop !57

for.end93:                                        ; preds = %for.cond81
  %call94 = call i32 @putchar(i32 10), !taffo.constinfo !28
  br label %for.inc95

for.inc95:                                        ; preds = %for.end93
  %inc96 = add nsw i32 %i.4, 1, !taffo.constinfo !28
  br label %for.cond77, !llvm.loop !58

for.end97:                                        ; preds = %for.cond77
  call void @llvm.stackrestore(i8* %4), !taffo.constinfo !28
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare !taffo.initweight !59 !taffo.funinfo !60 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare !taffo.initweight !44 !taffo.funinfo !45 dso_local i32 @printf(i8*, ...) #3

declare !taffo.initweight !44 !taffo.funinfo !45 dso_local i32 @putchar(i32) #3

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!8}
!llvm.ident = !{!9}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 1.000000e+00, double 1.600000e+01}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 1.600000e+01, double 1.600000e+01}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.170000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.020000e+02}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!10 = !{i1 true}
!11 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!12 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!13 = !{i1 false}
!14 = !{!15, !16, i1 false, i2 1}
!15 = !{!"fixp", i32 32, i32 23}
!16 = !{double 0.000000e+00, double 2.560000e+02}
!17 = !{!"input_a"}
!18 = !{!"input_b"}
!19 = !{!20, !21, i1 false, i2 1}
!20 = !{!"fixp", i32 32, i32 15}
!21 = !{double 0.000000e+00, double 6.553600e+04}
!22 = !{!"result_c"}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 0.000000e+00, double 1.000000e+00}
!25 = !{i1 false, !16, i1 false, i2 1}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 1.000000e+00, double 1.000000e+00}
!28 = !{i1 false, i1 false}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = distinct !{!31, !30}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !30}
!34 = !{!35, !21, i1 false, i2 1}
!35 = !{!"fixp", i32 64, i32 46}
!36 = distinct !{!36, !30, !37}
!37 = !{!"llvm.loop.unroll.count", i32 4}
!38 = !{i1 false, i1 false, i1 false, i2 1}
!39 = distinct !{!39, !30}
!40 = distinct !{!40, !30}
!41 = distinct !{!41, !30}
!42 = distinct !{!42, !30}
!43 = !{}
!44 = !{i32 -1}
!45 = !{i32 0, i1 false}
!46 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!47 = distinct !{!47, !30}
!48 = distinct !{!48, !30}
!49 = distinct !{!49, !30}
!50 = distinct !{!50, !30}
!51 = !{i1 false, i1 false, i1 false}
!52 = distinct !{!52, !30}
!53 = distinct !{!53, !30}
!54 = distinct !{!54, !30}
!55 = distinct !{!55, !30}
!56 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!57 = distinct !{!57, !30}
!58 = distinct !{!58, !30}
!59 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!60 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
