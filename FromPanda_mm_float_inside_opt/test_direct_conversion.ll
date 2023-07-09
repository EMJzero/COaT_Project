; ModuleID = '/tmp/tmp.ur42RW9dva/test_direct_conversion.ll.4.taffotmp.ll'
source_filename = "test_direct_conversion.c"
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
define dso_local void @mm(float* %in_a, float* %in_b, float* %out_c, i32 %A_ROWS, i32 %A_COLS, i32 %B_COLS) #0 !taffo.start !10 !taffo.initweight !11 !taffo.funinfo !12 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %sum.0.u9_23fixp = phi i32 [ 0, %entry ], [ %sum.1.u9_23fixp, %for.inc26 ], !taffo.info !13
  %i.0 = phi i32 [ 0, %entry ], [ %inc27, %for.inc26 ], !taffo.info !16
  %cmp = icmp ult i32 %i.0, %A_ROWS, !taffo.info !16
  br i1 %cmp, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc23, %for.body
  %sum.1.u9_23fixp = phi i32 [ %sum.0.u9_23fixp, %for.body ], [ %sum.2.u9_23fixp, %for.inc23 ], !taffo.info !13
  %j.0 = phi i32 [ 0, %for.body ], [ %inc24, %for.inc23 ], !taffo.info !16
  %cmp8 = icmp ult i32 %j.0, %B_COLS, !taffo.info !16
  br i1 %cmp8, label %for.body9, label %for.end25

for.body9:                                        ; preds = %for.cond7
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body9
  %sum.2.u9_23fixp = phi i32 [ %sum.1.u9_23fixp, %for.body9 ], [ %add18.u9_23fixp, %for.inc ], !taffo.info !13
  %k.0 = phi i32 [ 0, %for.body9 ], [ %inc, %for.inc ], !taffo.info !16
  %0 = uitofp i32 %sum.2.u9_23fixp to float, !taffo.info !13
  %1 = fdiv float %0, 0x4160000000000000, !taffo.info !13
  %cmp11 = icmp ult i32 %k.0, %A_COLS, !taffo.info !16
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %mul = mul i32 %i.0, %A_COLS
  %add = add i32 %mul, %k.0
  %idxprom = zext i32 %add to i64
  %arrayidx.flt.u9_23fixp = getelementptr inbounds float, float* %in_a, i64 %idxprom, !taffo.info !13, !taffo.initweight !18, !taffo.target !19
  %.flt = load float, float* %arrayidx.flt.u9_23fixp, align 4, !taffo.info !13, !taffo.initweight !20, !taffo.target !19
  %2 = fmul float 0x4160000000000000, %.flt, !taffo.info !13, !taffo.target !19
  %.flt.fallback.u9_23fixp = fptoui float %2 to i32, !taffo.info !13, !taffo.target !19
  %mul13 = mul i32 %k.0, %B_COLS
  %add14 = add i32 %mul13, %j.0
  %idxprom15 = zext i32 %add14 to i64
  %arrayidx16.flt.u9_23fixp = getelementptr inbounds float, float* %in_b, i64 %idxprom15, !taffo.info !13, !taffo.initweight !18, !taffo.target !21
  %.flt5 = load float, float* %arrayidx16.flt.u9_23fixp, align 4, !taffo.info !13, !taffo.initweight !20, !taffo.target !21
  %3 = fmul float 0x4160000000000000, %.flt5, !taffo.info !13, !taffo.target !21
  %.flt5.fallback.u9_23fixp = fptoui float %3 to i32, !taffo.info !13, !taffo.target !21
  %4 = zext i32 %.flt.fallback.u9_23fixp to i64, !taffo.info !13, !taffo.target !19
  %5 = zext i32 %.flt5.fallback.u9_23fixp to i64, !taffo.info !13, !taffo.target !21
  %6 = mul i64 %4, %5, !taffo.info !22
  %7 = lshr i64 %6, 23, !taffo.info !22
  %mul17.u9_23fixp = trunc i64 %7 to i32, !taffo.info !13
  %add18.u9_23fixp = add i32 %sum.2.u9_23fixp, %mul17.u9_23fixp, !taffo.info !13
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %inc = add nsw i32 %k.0, 1, !taffo.info !24, !taffo.constinfo !26
  br label %for.cond10, !llvm.loop !27

for.end:                                          ; preds = %for.cond10
  %mul19 = mul i32 %i.0, %B_COLS
  %add20 = add i32 %mul19, %j.0
  %idxprom21 = zext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds float, float* %out_c, i64 %idxprom21, !taffo.info !30, !taffo.initweight !18, !taffo.target !31
  store float %1, float* %arrayidx22, align 4, !taffo.info !30
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %j.0, 1, !taffo.info !24, !taffo.constinfo !26
  br label %for.cond7, !llvm.loop !32

for.end25:                                        ; preds = %for.cond7
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %inc27 = add nsw i32 %i.0, 1, !taffo.info !24, !taffo.constinfo !26
  br label %for.cond, !llvm.loop !33

for.end28:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !34 !taffo.funinfo !34 {
entry:
  %source_a = alloca [256 x float], align 16
  %0 = bitcast [256 x float]* %source_a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([256 x float]* @__const.main.source_a to i8*), i64 1024, i1 false), !taffo.constinfo !35
  %arraydecay = getelementptr inbounds [256 x float], [256 x float]* %source_a, i64 0, i64 0
  %1 = load i32, i32* @main.A_ROWS, align 4
  %2 = load i32, i32* @main.A_COLS, align 4
  %mul = mul i32 %1, %2
  %3 = zext i32 %mul to i64
  %4 = call i8* @llvm.stacksave(), !taffo.constinfo !36
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
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !26
  br label %for.cond5, !llvm.loop !37

for.end:                                          ; preds = %for.cond5
  br label %for.inc13

for.inc13:                                        ; preds = %for.end
  %inc14 = add nsw i32 %i.0, 1, !taffo.constinfo !26
  br label %for.cond, !llvm.loop !38

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
  %inc31 = add nsw i32 %j.1, 1, !taffo.constinfo !26
  br label %for.cond19, !llvm.loop !39

for.end32:                                        ; preds = %for.cond19
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %inc34 = add nsw i32 %i.1, 1, !taffo.constinfo !26
  br label %for.cond16, !llvm.loop !40

for.end35:                                        ; preds = %for.cond16
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !26
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
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %conv), !taffo.constinfo !41
  br label %for.inc47

for.inc47:                                        ; preds = %for.body41
  %inc48 = add nsw i32 %j.2, 1, !taffo.constinfo !26
  br label %for.cond39, !llvm.loop !42

for.end49:                                        ; preds = %for.cond39
  %call50 = call i32 @putchar(i32 10), !taffo.constinfo !26
  br label %for.inc51

for.inc51:                                        ; preds = %for.end49
  %inc52 = add nsw i32 %i.2, 1, !taffo.constinfo !26
  br label %for.cond36, !llvm.loop !43

for.end53:                                        ; preds = %for.cond36
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)), !taffo.constinfo !26
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
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %conv67), !taffo.constinfo !41
  br label %for.inc69

for.inc69:                                        ; preds = %for.body62
  %inc70 = add nsw i32 %j.3, 1, !taffo.constinfo !26
  br label %for.cond59, !llvm.loop !44

for.end71:                                        ; preds = %for.cond59
  %call72 = call i32 @putchar(i32 10), !taffo.constinfo !26
  br label %for.inc73

for.inc73:                                        ; preds = %for.end71
  %inc74 = add nsw i32 %i.3, 1, !taffo.constinfo !26
  br label %for.cond55, !llvm.loop !45

for.end75:                                        ; preds = %for.cond55
  %29 = load i32, i32* @main.A_ROWS, align 4
  %30 = load i32, i32* @main.A_COLS, align 4
  %31 = load i32, i32* @main.B_COLS, align 4
  call void @mm(float* %vla, float* %vla2, float* %vla4, i32 %29, i32 %30, i32 %31), !taffo.constinfo !46
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)), !taffo.constinfo !26
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
  %call90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %conv89), !taffo.constinfo !41
  br label %for.inc91

for.inc91:                                        ; preds = %for.body84
  %inc92 = add nsw i32 %j.4, 1, !taffo.constinfo !26
  br label %for.cond81, !llvm.loop !47

for.end93:                                        ; preds = %for.cond81
  %call94 = call i32 @putchar(i32 10), !taffo.constinfo !26
  br label %for.inc95

for.inc95:                                        ; preds = %for.end93
  %inc96 = add nsw i32 %i.4, 1, !taffo.constinfo !26
  br label %for.cond77, !llvm.loop !48

for.end97:                                        ; preds = %for.cond77
  call void @llvm.stackrestore(i8* %4), !taffo.constinfo !26
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare !taffo.initweight !49 !taffo.funinfo !50 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree nosync nounwind willreturn
declare !taffo.initweight !34 !taffo.funinfo !34 i8* @llvm.stacksave() #2

declare !taffo.initweight !51 !taffo.funinfo !52 dso_local i32 @printf(i8*, ...) #3

declare !taffo.initweight !51 !taffo.funinfo !52 dso_local i32 @putchar(i32) #3

; Function Attrs: nofree nosync nounwind willreturn
declare !taffo.initweight !51 !taffo.funinfo !52 void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind willreturn }
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
!13 = !{!14, !15, i1 false, i2 1}
!14 = !{!"fixp", i32 32, i32 23}
!15 = !{double 0.000000e+00, double 2.560000e+02}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 0.000000e+00, double 1.000000e+00}
!18 = !{i32 2}
!19 = !{!"input_a"}
!20 = !{i32 3}
!21 = !{!"input_b"}
!22 = !{!23, !15, i1 false, i2 1}
!23 = !{!"fixp", i32 64, i32 46}
!24 = !{i1 false, !25, i1 false, i2 0}
!25 = !{double 1.000000e+00, double 1.000000e+00}
!26 = !{i1 false, i1 false}
!27 = distinct !{!27, !28, !29}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!"llvm.loop.unroll.count", i32 4}
!30 = !{i1 false, i1 false, i1 false, i2 1}
!31 = !{!"result_c"}
!32 = distinct !{!32, !28}
!33 = distinct !{!33, !28}
!34 = !{}
!35 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!36 = !{i1 false}
!37 = distinct !{!37, !28}
!38 = distinct !{!38, !28}
!39 = distinct !{!39, !28}
!40 = distinct !{!40, !28}
!41 = !{i1 false, i1 false, i1 false}
!42 = distinct !{!42, !28}
!43 = distinct !{!43, !28}
!44 = distinct !{!44, !28}
!45 = distinct !{!45, !28}
!46 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!47 = distinct !{!47, !28}
!48 = distinct !{!48, !28}
!49 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!50 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!51 = !{i32 -1}
!52 = !{i32 0, i1 false}
