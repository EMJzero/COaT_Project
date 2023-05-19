; ModuleID = '/tmp/tmp.NjEqm8pjOP/test.ll.4.taffotmp.ll'
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
define dso_local void @mm(float* noalias noundef %in_a, float* noalias noundef %in_b, float* noalias noundef %out_c, i32 noundef %A_ROWS, i32 noundef %A_COLS, i32 noundef %B_COLS) #0 !taffo.initweight !14 !taffo.equivalentChild !15 !taffo.funinfo !16 {
entry:
  %0 = lshr i32 0, 19
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ]
  %sum.0.u19_13fixp = phi i32 [ %0, %entry ], [ %sum.1.u19_13fixp, %for.inc23 ], !taffo.info !17
  %cmp = icmp ult i32 %i.0, %A_ROWS
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc20, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc21, %for.inc20 ]
  %sum.1.u19_13fixp = phi i32 [ %sum.0.u19_13fixp, %for.body ], [ %sum.2.u19_13fixp, %for.inc20 ], !taffo.info !17
  %cmp6 = icmp ult i32 %j.0, %B_COLS
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %k.0 = phi i32 [ 0, %for.body7 ], [ %inc, %for.inc ]
  %sum.2.u19_13fixp = phi i32 [ %sum.1.u19_13fixp, %for.body7 ], [ %u19_13fixp, %for.inc ], !taffo.info !17
  %1 = uitofp i32 %sum.2.u19_13fixp to float, !taffo.info !17
  %2 = fdiv float %1, 8.192000e+03, !taffo.info !17
  %cmp9 = icmp ult i32 %k.0, %A_COLS
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %mul = mul i32 %i.0, %A_COLS
  %add = add i32 %mul, %k.0
  %idxprom = zext i32 %add to i64
  %arrayidx.flt.u5_27fixp = getelementptr inbounds float, float* %in_a, i64 %idxprom, !taffo.info !20, !taffo.initweight !23
  %.flt = load float, float* %arrayidx.flt.u5_27fixp, align 4, !taffo.info !20, !taffo.initweight !24
  %3 = fmul float 0x41A0000000000000, %.flt, !taffo.info !20
  %.flt.fallback.u5_27fixp = fptoui float %3 to i32, !taffo.info !20
  %mul11 = mul i32 %k.0, %B_COLS
  %add12 = add i32 %mul11, %j.0
  %idxprom13 = zext i32 %add12 to i64
  %arrayidx14.flt.u5_27fixp = getelementptr inbounds float, float* %in_b, i64 %idxprom13, !taffo.info !20, !taffo.initweight !23
  %.flt5 = load float, float* %arrayidx14.flt.u5_27fixp, align 4, !taffo.info !20, !taffo.initweight !24
  %4 = fmul float 0x41A0000000000000, %.flt5, !taffo.info !20
  %.flt5.fallback.u5_27fixp = fptoui float %4 to i32, !taffo.info !20
  %5 = zext i32 %.flt.fallback.u5_27fixp to i64, !taffo.info !20
  %6 = zext i32 %.flt5.fallback.u5_27fixp to i64, !taffo.info !20
  %7 = mul i64 %5, %6, !taffo.info !25
  %8 = lshr i64 %7, 41
  %9 = trunc i64 %8 to i32
  %u19_13fixp = add i32 %9, %sum.2.u19_13fixp, !taffo.info !17
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !27
  br label %for.cond8, !llvm.loop !28

for.end:                                          ; preds = %for.cond8
  %mul16 = mul i32 %i.0, %B_COLS
  %add17 = add i32 %mul16, %j.0
  %idxprom18 = zext i32 %add17 to i64
  %arrayidx19.flt.u19_13fixp = getelementptr inbounds float, float* %out_c, i64 %idxprom18, !taffo.info !17, !taffo.initweight !23
  store float %2, float* %arrayidx19.flt.u19_13fixp, align 4, !taffo.info !31
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !32

for.end22:                                        ; preds = %for.cond5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %inc24 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !33

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !34 !taffo.funinfo !34 !taffo.start !35 {
entry:
  %source_a = alloca [256 x float], align 16
  %0 = bitcast [256 x float]* %source_a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([256 x float]* @__const.main.source_a to i8*), i64 1024, i1 false), !taffo.constinfo !36
  %arraydecay = getelementptr inbounds [256 x float], [256 x float]* %source_a, i64 0, i64 0
  %1 = load i32, i32* @main.A_ROWS, align 4, !taffo.info !2
  %2 = load i32, i32* @main.A_COLS, align 4, !taffo.info !2
  %mul = mul i32 %1, %2, !taffo.info !37
  %3 = zext i32 %mul to i64, !taffo.info !37
  %4 = call i8* @llvm.stacksave(), !taffo.constinfo !39
  %vla.u5_27fixp = alloca i32, i64 %3, align 16, !taffo.info !20, !taffo.target !40
  %5 = load i32, i32* @main.A_COLS, align 4, !taffo.info !2
  %6 = load i32, i32* @main.B_COLS, align 4, !taffo.info !2
  %mul2 = mul i32 %5, %6, !taffo.info !37
  %7 = zext i32 %mul2 to i64, !taffo.info !37
  %vla3.u5_27fixp = alloca i32, i64 %7, align 16, !taffo.info !20, !taffo.target !41
  %8 = load i32, i32* @main.A_ROWS, align 4, !taffo.info !2
  %9 = load i32, i32* @main.B_COLS, align 4, !taffo.info !2
  %mul5 = mul i32 %8, %9, !taffo.info !37
  %10 = zext i32 %mul5 to i64, !taffo.info !37
  %vla6.u19_13fixp = alloca i32, i64 %10, align 16, !taffo.info !42, !taffo.target !44
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ], !taffo.info !45
  %11 = load i32, i32* @main.A_ROWS, align 4, !taffo.info !2
  %cmp = icmp ult i32 %i.0, %11, !taffo.info !47
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !45
  %12 = load i32, i32* @main.A_COLS, align 4, !taffo.info !2
  %cmp9 = icmp ult i32 %j.0, %12, !taffo.info !47
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %13 = load i32, i32* @main.A_COLS, align 4, !taffo.info !2
  %mul11 = mul i32 %i.0, %13, !taffo.info !49
  %add = add i32 %mul11, %j.0, !taffo.info !49
  %idxprom = zext i32 %add to i64, !taffo.info !49
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %source_a, i64 0, i64 %idxprom
  %.flt = load float, float* %arrayidx, align 4, !taffo.info !20, !taffo.initweight !24, !taffo.target !40
  %14 = fmul float 0x41A0000000000000, %.flt, !taffo.info !20, !taffo.target !40
  %.flt.fallback.u5_27fixp = fptoui float %14 to i32, !taffo.info !20, !taffo.target !40
  %15 = load i32, i32* @main.A_COLS, align 4, !taffo.info !2
  %mul12 = mul i32 %i.0, %15, !taffo.info !49
  %add13 = add i32 %mul12, %j.0, !taffo.info !49
  %idxprom14 = zext i32 %add13 to i64, !taffo.info !49
  %arrayidx15.u5_27fixp = getelementptr inbounds i32, i32* %vla.u5_27fixp, i64 %idxprom14, !taffo.info !20, !taffo.target !40
  store i32 %.flt.fallback.u5_27fixp, i32* %arrayidx15.u5_27fixp, align 4, !taffo.info !51, !taffo.target !40
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %inc = add nsw i32 %j.0, 1, !taffo.info !47, !taffo.constinfo !27
  br label %for.cond8, !llvm.loop !52

for.end:                                          ; preds = %for.cond8
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %i.0, 1, !taffo.info !47, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !53

for.end18:                                        ; preds = %for.cond
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc36, %for.end18
  %i.1 = phi i32 [ 0, %for.end18 ], [ %inc37, %for.inc36 ], !taffo.info !45
  %16 = load i32, i32* @main.A_COLS, align 4, !taffo.info !2
  %cmp20 = icmp ult i32 %i.1, %16, !taffo.info !47
  br i1 %cmp20, label %for.body21, label %for.end38

for.body21:                                       ; preds = %for.cond19
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc33, %for.body21
  %j.1 = phi i32 [ 0, %for.body21 ], [ %inc34, %for.inc33 ], !taffo.info !45
  %17 = load i32, i32* @main.B_COLS, align 4, !taffo.info !2
  %cmp23 = icmp ult i32 %j.1, %17, !taffo.info !47
  br i1 %cmp23, label %for.body24, label %for.end35

for.body24:                                       ; preds = %for.cond22
  %18 = load i32, i32* @main.B_COLS, align 4, !taffo.info !2
  %mul25 = mul i32 %i.1, %18, !taffo.info !49
  %add26 = add i32 %mul25, %j.1, !taffo.info !49
  %idxprom27 = zext i32 %add26 to i64, !taffo.info !49
  %arrayidx28 = getelementptr inbounds float, float* %arraydecay, i64 %idxprom27
  %.flt1 = load float, float* %arrayidx28, align 4, !taffo.info !20, !taffo.initweight !24, !taffo.target !41
  %19 = fmul float 0x41A0000000000000, %.flt1, !taffo.info !20, !taffo.target !41
  %.flt1.fallback.u5_27fixp = fptoui float %19 to i32, !taffo.info !20, !taffo.target !41
  %20 = load i32, i32* @main.B_COLS, align 4, !taffo.info !2
  %mul29 = mul i32 %i.1, %20, !taffo.info !49
  %add30 = add i32 %mul29, %j.1, !taffo.info !49
  %idxprom31 = zext i32 %add30 to i64, !taffo.info !49
  %arrayidx32.u5_27fixp = getelementptr inbounds i32, i32* %vla3.u5_27fixp, i64 %idxprom31, !taffo.info !20, !taffo.target !41
  store i32 %.flt1.fallback.u5_27fixp, i32* %arrayidx32.u5_27fixp, align 4, !taffo.info !51, !taffo.target !41
  br label %for.inc33

for.inc33:                                        ; preds = %for.body24
  %inc34 = add nsw i32 %j.1, 1, !taffo.info !47, !taffo.constinfo !27
  br label %for.cond22, !llvm.loop !54

for.end35:                                        ; preds = %for.cond22
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %inc37 = add nsw i32 %i.1, 1, !taffo.info !47, !taffo.constinfo !27
  br label %for.cond19, !llvm.loop !55

for.end38:                                        ; preds = %for.cond19
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !27
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc54, %for.end38
  %i.2 = phi i32 [ 0, %for.end38 ], [ %inc55, %for.inc54 ], !taffo.info !45
  %21 = load i32, i32* @main.A_ROWS, align 4, !taffo.info !2
  %cmp40 = icmp ult i32 %i.2, %21, !taffo.info !47
  br i1 %cmp40, label %for.body41, label %for.end56

for.body41:                                       ; preds = %for.cond39
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc50, %for.body41
  %j.2 = phi i32 [ 0, %for.body41 ], [ %inc51, %for.inc50 ], !taffo.info !45
  %22 = load i32, i32* @main.A_COLS, align 4, !taffo.info !2
  %cmp43 = icmp ult i32 %j.2, %22, !taffo.info !47
  br i1 %cmp43, label %for.body44, label %for.end52

for.body44:                                       ; preds = %for.cond42
  %23 = load i32, i32* @main.A_COLS, align 4, !taffo.info !2
  %mul45 = mul i32 %i.2, %23, !taffo.info !49
  %add46 = add i32 %mul45, %j.2, !taffo.info !49
  %idxprom47 = zext i32 %add46 to i64, !taffo.info !49
  %arrayidx48.u5_27fixp = getelementptr inbounds i32, i32* %vla.u5_27fixp, i64 %idxprom47, !taffo.info !20, !taffo.target !40
  %u5_27fixp = load i32, i32* %arrayidx48.u5_27fixp, align 4, !taffo.info !20, !taffo.target !40
  %24 = uitofp i32 %u5_27fixp to double, !taffo.info !20, !taffo.target !40
  %25 = fdiv double %24, 0x41A0000000000000, !taffo.info !20, !taffo.target !40
  %call49.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double noundef %25), !taffo.info !56, !taffo.initweight !57, !taffo.constinfo !58, !taffo.target !40
  br label %for.inc50

for.inc50:                                        ; preds = %for.body44
  %inc51 = add nsw i32 %j.2, 1, !taffo.info !47, !taffo.constinfo !27
  br label %for.cond42, !llvm.loop !59

for.end52:                                        ; preds = %for.cond42
  %call53 = call i32 @putchar(i32 noundef 10), !taffo.constinfo !27
  br label %for.inc54

for.inc54:                                        ; preds = %for.end52
  %inc55 = add nsw i32 %i.2, 1, !taffo.info !47, !taffo.constinfo !27
  br label %for.cond39, !llvm.loop !60

for.end56:                                        ; preds = %for.cond39
  %call57 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)), !taffo.constinfo !27
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc76, %for.end56
  %i.3 = phi i32 [ 0, %for.end56 ], [ %inc77, %for.inc76 ], !taffo.info !45
  %26 = load i32, i32* @main.A_COLS, align 4, !taffo.info !2
  %cmp59 = icmp ult i32 %i.3, %26, !taffo.info !47
  br i1 %cmp59, label %for.body61, label %for.end78

for.body61:                                       ; preds = %for.cond58
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc72, %for.body61
  %j.3 = phi i32 [ 0, %for.body61 ], [ %inc73, %for.inc72 ], !taffo.info !45
  %27 = load i32, i32* @main.B_COLS, align 4, !taffo.info !2
  %cmp63 = icmp ult i32 %j.3, %27, !taffo.info !47
  br i1 %cmp63, label %for.body65, label %for.end74

for.body65:                                       ; preds = %for.cond62
  %28 = load i32, i32* @main.B_COLS, align 4, !taffo.info !2
  %mul66 = mul i32 %i.3, %28, !taffo.info !49
  %add67 = add i32 %mul66, %j.3, !taffo.info !49
  %idxprom68 = zext i32 %add67 to i64, !taffo.info !49
  %arrayidx69.u5_27fixp = getelementptr inbounds i32, i32* %vla3.u5_27fixp, i64 %idxprom68, !taffo.info !20, !taffo.target !41
  %u5_27fixp2 = load i32, i32* %arrayidx69.u5_27fixp, align 4, !taffo.info !20, !taffo.target !41
  %29 = uitofp i32 %u5_27fixp2 to double, !taffo.info !20, !taffo.target !41
  %30 = fdiv double %29, 0x41A0000000000000, !taffo.info !20, !taffo.target !41
  %call71.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double noundef %30), !taffo.info !56, !taffo.initweight !57, !taffo.constinfo !58, !taffo.target !41
  br label %for.inc72

for.inc72:                                        ; preds = %for.body65
  %inc73 = add nsw i32 %j.3, 1, !taffo.info !47, !taffo.constinfo !27
  br label %for.cond62, !llvm.loop !61

for.end74:                                        ; preds = %for.cond62
  %call75 = call i32 @putchar(i32 noundef 10), !taffo.constinfo !27
  br label %for.inc76

for.inc76:                                        ; preds = %for.end74
  %inc77 = add nsw i32 %i.3, 1, !taffo.info !47, !taffo.constinfo !27
  br label %for.cond58, !llvm.loop !62

for.end78:                                        ; preds = %for.cond58
  %31 = load i32, i32* @main.A_ROWS, align 4, !taffo.info !2
  %32 = load i32, i32* @main.A_COLS, align 4, !taffo.info !2
  %33 = load i32, i32* @main.B_COLS, align 4, !taffo.info !2
  call void @mm_1_fixp(i32* %vla.u5_27fixp, i32* %vla3.u5_27fixp, i32* %vla6.u19_13fixp, i32 %31, i32 %32, i32 %33), !taffo.info !51, !taffo.constinfo !63, !taffo.target !40
  %call79 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)), !taffo.constinfo !27
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc98, %for.end78
  %i.4 = phi i32 [ 0, %for.end78 ], [ %inc99, %for.inc98 ], !taffo.info !45
  %34 = load i32, i32* @main.A_ROWS, align 4, !taffo.info !2
  %cmp81 = icmp ult i32 %i.4, %34, !taffo.info !47
  br i1 %cmp81, label %for.body83, label %for.end100

for.body83:                                       ; preds = %for.cond80
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc94, %for.body83
  %j.4 = phi i32 [ 0, %for.body83 ], [ %inc95, %for.inc94 ], !taffo.info !45
  %35 = load i32, i32* @main.B_COLS, align 4, !taffo.info !2
  %cmp85 = icmp ult i32 %j.4, %35, !taffo.info !47
  br i1 %cmp85, label %for.body87, label %for.end96

for.body87:                                       ; preds = %for.cond84
  %36 = load i32, i32* @main.B_COLS, align 4, !taffo.info !2
  %mul88 = mul i32 %i.4, %36, !taffo.info !49
  %add89 = add i32 %mul88, %j.4, !taffo.info !49
  %idxprom90 = zext i32 %add89 to i64, !taffo.info !49
  %arrayidx91.u19_13fixp = getelementptr inbounds i32, i32* %vla6.u19_13fixp, i64 %idxprom90, !taffo.info !42, !taffo.target !44
  %u19_13fixp = load i32, i32* %arrayidx91.u19_13fixp, align 4, !taffo.info !42, !taffo.target !44
  %37 = uitofp i32 %u19_13fixp to double, !taffo.info !42, !taffo.target !44
  %38 = fdiv double %37, 8.192000e+03, !taffo.info !42, !taffo.target !44
  %call93.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double noundef %38), !taffo.info !64, !taffo.initweight !57, !taffo.constinfo !58, !taffo.target !44
  br label %for.inc94

for.inc94:                                        ; preds = %for.body87
  %inc95 = add nsw i32 %j.4, 1, !taffo.info !47, !taffo.constinfo !27
  br label %for.cond84, !llvm.loop !65

for.end96:                                        ; preds = %for.cond84
  %call97 = call i32 @putchar(i32 noundef 10), !taffo.constinfo !27
  br label %for.inc98

for.inc98:                                        ; preds = %for.end96
  %inc99 = add nsw i32 %i.4, 1, !taffo.info !47, !taffo.constinfo !27
  br label %for.cond80, !llvm.loop !66

for.end100:                                       ; preds = %for.cond80
  call void @llvm.stackrestore(i8* %4), !taffo.constinfo !27
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare !taffo.initweight !67 !taffo.funinfo !68 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind willreturn
declare !taffo.initweight !34 !taffo.funinfo !34 i8* @llvm.stacksave() #2

declare !taffo.initweight !69 !taffo.funinfo !70 i32 @printf(i8* noundef, ...) #3

declare !taffo.initweight !69 !taffo.funinfo !70 i32 @putchar(i32 noundef) #3

; Function Attrs: nofree nosync nounwind willreturn
declare !taffo.initweight !69 !taffo.funinfo !70 void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @mm_1_fixp(i32* noalias noundef %in_a_u5_27fixp, i32* noalias noundef %in_b_u5_27fixp, i32* noalias noundef %out_c_u19_13fixp, i32 noundef %A_ROWS, i32 noundef %A_COLS, i32 noundef %B_COLS) #0 !taffo.initweight !71 !taffo.funinfo !72 !taffo.sourceFunction !73 {
entry:
  %0 = lshr i32 0, 19
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ], !taffo.info !45
  %sum.0.u19_13fixp = phi i32 [ %0, %entry ], [ %sum.1.u19_13fixp, %for.inc23 ], !taffo.info !42
  %cmp = icmp ult i32 %i.0, %A_ROWS, !taffo.info !47
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc20, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc21, %for.inc20 ], !taffo.info !45
  %sum.1.u19_13fixp = phi i32 [ %sum.0.u19_13fixp, %for.body ], [ %sum.2.u19_13fixp, %for.inc20 ], !taffo.info !42
  %cmp6 = icmp ult i32 %j.0, %B_COLS, !taffo.info !47
  br i1 %cmp6, label %for.body7, label %for.end22

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body7
  %k.0 = phi i32 [ 0, %for.body7 ], [ %inc, %for.inc ], !taffo.info !45
  %sum.2.u19_13fixp = phi i32 [ %sum.1.u19_13fixp, %for.body7 ], [ %u19_13fixp, %for.inc ], !taffo.info !42
  %cmp9 = icmp ult i32 %k.0, %A_COLS, !taffo.info !47
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %mul = mul i32 %i.0, %A_COLS, !taffo.info !49
  %add = add i32 %mul, %k.0, !taffo.info !49
  %idxprom = zext i32 %add to i64, !taffo.info !49
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %in_a_u5_27fixp, i64 %idxprom, !taffo.info !20
  %u5_27fixp = load i32, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !20
  %mul11 = mul i32 %k.0, %B_COLS, !taffo.info !49
  %add12 = add i32 %mul11, %j.0, !taffo.info !49
  %idxprom13 = zext i32 %add12 to i64, !taffo.info !49
  %arrayidx14.u5_27fixp = getelementptr inbounds i32, i32* %in_b_u5_27fixp, i64 %idxprom13, !taffo.info !20
  %u5_27fixp5 = load i32, i32* %arrayidx14.u5_27fixp, align 4, !taffo.info !20
  %1 = zext i32 %u5_27fixp to i64, !taffo.info !20
  %2 = zext i32 %u5_27fixp5 to i64, !taffo.info !20
  %3 = mul i64 %1, %2, !taffo.info !74
  %4 = lshr i64 %3, 41
  %5 = trunc i64 %4 to i32
  %u19_13fixp = add i32 %5, %sum.2.u19_13fixp, !taffo.info !42
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %inc = add nsw i32 %k.0, 1, !taffo.info !47, !taffo.constinfo !27
  br label %for.cond8, !llvm.loop !75

for.end:                                          ; preds = %for.cond8
  %mul16 = mul i32 %i.0, %B_COLS, !taffo.info !49
  %add17 = add i32 %mul16, %j.0, !taffo.info !49
  %idxprom18 = zext i32 %add17 to i64, !taffo.info !49
  %arrayidx19.u19_13fixp = getelementptr inbounds i32, i32* %out_c_u19_13fixp, i64 %idxprom18, !taffo.info !42
  store i32 %sum.2.u19_13fixp, i32* %arrayidx19.u19_13fixp, align 4, !taffo.info !31
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %j.0, 1, !taffo.info !47, !taffo.constinfo !27
  br label %for.cond5, !llvm.loop !76

for.end22:                                        ; preds = %for.cond5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %inc24 = add nsw i32 %i.0, 1, !taffo.info !47, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !77

for.end25:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 1.000000e+00, double 1.600000e+01}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 1.600000e+01, double 1.600000e+01}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.170000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.020000e+02}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!14 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!15 = distinct !{null}
!16 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!17 = !{!18, !19, i1 false, i2 1}
!18 = !{!"fixp", i32 32, i32 13}
!19 = !{double 0.000000e+00, double 2.959360e+05}
!20 = !{!21, !22, i1 false, i2 1}
!21 = !{!"fixp", i32 32, i32 27}
!22 = !{double 0.000000e+00, double 1.600000e+01}
!23 = !{i32 2}
!24 = !{i32 3}
!25 = !{!26, !19, i1 false, i2 1}
!26 = !{!"fixp", i32 64, i32 54}
!27 = !{i1 false, i1 false}
!28 = distinct !{!28, !29, !30}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"llvm.loop.unroll.count", i32 4}
!31 = !{i1 false, !19, i1 false, i2 1}
!32 = distinct !{!32, !29}
!33 = distinct !{!33, !29}
!34 = !{}
!35 = !{i1 true}
!36 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!37 = !{i1 false, !38, i1 false, i2 0}
!38 = !{double 2.560000e+02, double 2.560000e+02}
!39 = !{i1 false}
!40 = !{!"input_a"}
!41 = !{!"input_b"}
!42 = !{!18, !43, i1 false, i2 1}
!43 = !{double 0.000000e+00, double 2.961920e+05}
!44 = !{!"result_c"}
!45 = !{i1 false, !46, i1 false, i2 0}
!46 = !{double 0.000000e+00, double 1.000000e+00}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 1.000000e+00, double 1.000000e+00}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 0.000000e+00, double 0.000000e+00}
!51 = !{i1 false, !22, i1 false, i2 1}
!52 = distinct !{!52, !29}
!53 = distinct !{!53, !29}
!54 = distinct !{!54, !29}
!55 = distinct !{!55, !29}
!56 = !{!21, i1 false, i1 false, i2 1}
!57 = !{i32 4}
!58 = !{i1 false, i1 false, i1 false}
!59 = distinct !{!59, !29}
!60 = distinct !{!60, !29}
!61 = distinct !{!61, !29}
!62 = distinct !{!62, !29}
!63 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!64 = !{!18, i1 false, i1 false, i2 1}
!65 = distinct !{!65, !29}
!66 = distinct !{!66, !29}
!67 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!68 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!69 = !{i32 -1}
!70 = !{i32 0, i1 false}
!71 = !{i32 1, i32 1, i32 1, i32 -1, i32 -1, i32 -1}
!72 = !{i32 1, !20, i32 1, !20, i32 1, !42, i32 1, !2, i32 1, !2, i32 1, !2}
!73 = !{void (float*, float*, float*, i32, i32, i32)* @mm}
!74 = !{!26, !43, i1 false, i2 1}
!75 = distinct !{!75, !29, !30}
!76 = distinct !{!76, !29}
!77 = distinct !{!77, !29}
