; ModuleID = '/tmp/tmp.8LTIMzJwz1/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.6 = private unnamed_addr constant [10 x i8] c"Input A:\0A\00", align 1, !taffo.info !0
@.str.7 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1, !taffo.info !2
@.str.8 = private unnamed_addr constant [10 x i8] c"Input B:\0A\00", align 1, !taffo.info !0
@.str.9 = private unnamed_addr constant [9 x i8] c"Result:\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local void @mm(float* noalias %in_a_f, float* noalias %in_b_f, float* noalias %out_c_f) #0 !taffo.start !6 !taffo.initweight !7 !taffo.funinfo !8 {
entry:
  %in_a.u9_23fixp = alloca [1024 x i32], align 16, !taffo.info !9, !taffo.target !12
  %in_b.u9_23fixp = alloca [1024 x i32], align 16, !taffo.info !9, !taffo.target !13
  %out_c.u32_32fixp = alloca [1024 x i64], align 16, !taffo.info !14, !taffo.target !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc15, %for.inc14 ], !taffo.info !18
  %cmp = icmp slt i32 %i.0, 32, !taffo.info !20
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !22
  %cmp8 = icmp slt i32 %j.0, 32, !taffo.info !20
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %mul = mul nsw i32 %i.0, 32, !taffo.info !24, !taffo.constinfo !26
  %add = add nsw i32 %mul, %j.0, !taffo.info !27
  %idxprom = sext i32 %add to i64, !taffo.info !27
  %arrayidx = getelementptr inbounds float, float* %in_a_f, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %1 = fmul float 0x4160000000000000, %0, !taffo.info !24
  %2 = fptoui float %1 to i32, !taffo.info !24
  %mul10 = mul nsw i32 %i.0, 32, !taffo.info !24, !taffo.constinfo !26
  %add11 = add nsw i32 %mul10, %j.0, !taffo.info !27
  %idxprom12 = sext i32 %add11 to i64, !taffo.info !27
  %arrayidx13.u9_23fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %in_a.u9_23fixp, i64 0, i64 %idxprom12, !taffo.info !9, !taffo.target !12
  store i32 %2, i32* %arrayidx13.u9_23fixp, align 4, !taffo.info !29, !taffo.target !12
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.info !30, !taffo.constinfo !26
  br label %for.cond7, !llvm.loop !32

for.end:                                          ; preds = %for.cond7
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %i.0, 1, !taffo.info !34, !taffo.constinfo !26
  br label %for.cond, !llvm.loop !36

for.end16:                                        ; preds = %for.cond
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc34, %for.end16
  %i.1 = phi i32 [ 0, %for.end16 ], [ %inc35, %for.inc34 ], !taffo.info !18
  %cmp18 = icmp slt i32 %i.1, 32, !taffo.info !20
  br i1 %cmp18, label %for.body19, label %for.end36

for.body19:                                       ; preds = %for.cond17
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc31, %for.body19
  %j.1 = phi i32 [ 0, %for.body19 ], [ %inc32, %for.inc31 ], !taffo.info !22
  %cmp21 = icmp slt i32 %j.1, 32, !taffo.info !20
  br i1 %cmp21, label %for.body22, label %for.end33

for.body22:                                       ; preds = %for.cond20
  %mul23 = mul nsw i32 %i.1, 32, !taffo.info !24, !taffo.constinfo !26
  %add24 = add nsw i32 %mul23, %j.1, !taffo.info !27
  %idxprom25 = sext i32 %add24 to i64, !taffo.info !27
  %arrayidx26 = getelementptr inbounds float, float* %in_b_f, i64 %idxprom25
  %3 = load float, float* %arrayidx26, align 4
  %4 = fmul float 0x4160000000000000, %3, !taffo.info !24
  %5 = fptoui float %4 to i32, !taffo.info !24
  %mul27 = mul nsw i32 %i.1, 32, !taffo.info !24, !taffo.constinfo !26
  %add28 = add nsw i32 %mul27, %j.1, !taffo.info !27
  %idxprom29 = sext i32 %add28 to i64, !taffo.info !27
  %arrayidx30.u9_23fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %in_b.u9_23fixp, i64 0, i64 %idxprom29, !taffo.info !9, !taffo.target !13
  store i32 %5, i32* %arrayidx30.u9_23fixp, align 4, !taffo.info !29, !taffo.target !13
  br label %for.inc31

for.inc31:                                        ; preds = %for.body22
  %inc32 = add nsw i32 %j.1, 1, !taffo.info !30, !taffo.constinfo !26
  br label %for.cond20, !llvm.loop !37

for.end33:                                        ; preds = %for.cond20
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %inc35 = add nsw i32 %i.1, 1, !taffo.info !34, !taffo.constinfo !26
  br label %for.cond17, !llvm.loop !38

for.end36:                                        ; preds = %for.cond17
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc66, %for.end36
  %sum.0.u32_32fixp = phi i64 [ 0, %for.end36 ], [ %sum.1.u32_32fixp, %for.inc66 ], !taffo.info !14
  %i.2 = phi i32 [ 0, %for.end36 ], [ %inc67, %for.inc66 ], !taffo.info !18
  %cmp38 = icmp slt i32 %i.2, 32, !taffo.info !20
  br i1 %cmp38, label %for.body39, label %for.end68

for.body39:                                       ; preds = %for.cond37
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc63, %for.body39
  %sum.1.u32_32fixp = phi i64 [ %sum.0.u32_32fixp, %for.body39 ], [ %sum.2.u32_32fixp, %for.inc63 ], !taffo.info !14
  %j.2 = phi i32 [ 0, %for.body39 ], [ %inc64, %for.inc63 ], !taffo.info !22
  %cmp41 = icmp slt i32 %j.2, 32, !taffo.info !20
  br i1 %cmp41, label %for.body42, label %for.end65

for.body42:                                       ; preds = %for.cond40
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc56, %for.body42
  %sum.2.u32_32fixp = phi i64 [ %sum.1.u32_32fixp, %for.body42 ], [ %add55.u32_32fixp, %for.inc56 ], !taffo.info !14
  %k.0 = phi i32 [ 0, %for.body42 ], [ %inc57, %for.inc56 ], !taffo.info !39
  %cmp44 = icmp slt i32 %k.0, 32, !taffo.info !20
  br i1 %cmp44, label %for.body45, label %for.end58

for.body45:                                       ; preds = %for.cond43
  %mul46 = mul nsw i32 %i.2, 32, !taffo.info !24, !taffo.constinfo !26
  %add47 = add nsw i32 %mul46, %k.0, !taffo.info !41
  %idxprom48 = sext i32 %add47 to i64, !taffo.info !41
  %arrayidx49.u9_23fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %in_a.u9_23fixp, i64 0, i64 %idxprom48, !taffo.info !9, !taffo.target !12
  %u9_23fixp = load i32, i32* %arrayidx49.u9_23fixp, align 4, !taffo.info !9, !taffo.target !12
  %mul50 = mul nsw i32 %k.0, 32, !taffo.info !43, !taffo.constinfo !26
  %add51 = add nsw i32 %mul50, %j.2, !taffo.info !45
  %idxprom52 = sext i32 %add51 to i64, !taffo.info !45
  %arrayidx53.u9_23fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %in_b.u9_23fixp, i64 0, i64 %idxprom52, !taffo.info !9, !taffo.target !13
  %u9_23fixp5 = load i32, i32* %arrayidx53.u9_23fixp, align 4, !taffo.info !9, !taffo.target !13
  %6 = zext i32 %u9_23fixp to i64, !taffo.info !9, !taffo.target !12
  %7 = zext i32 %u9_23fixp5 to i64, !taffo.info !9, !taffo.target !13
  %8 = mul i64 %6, %7, !taffo.info !47
  %9 = lshr i64 %8, 31, !taffo.info !47
  %mul54.u17_15fixp = trunc i64 %9 to i32, !taffo.info !50
  %10 = zext i32 %mul54.u17_15fixp to i64, !taffo.info !50
  %11 = shl i64 %10, 17, !taffo.info !50
  %add55.u32_32fixp = add i64 %sum.2.u32_32fixp, %11, !taffo.info !14
  br label %for.inc56

for.inc56:                                        ; preds = %for.body45
  %inc57 = add nsw i32 %k.0, 1, !taffo.info !52, !taffo.constinfo !26
  br label %for.cond43, !llvm.loop !54

for.end58:                                        ; preds = %for.cond43
  %mul59 = mul nsw i32 %i.2, 32, !taffo.info !24, !taffo.constinfo !26
  %add60 = add nsw i32 %mul59, %j.2, !taffo.info !27
  %idxprom61 = sext i32 %add60 to i64, !taffo.info !27
  %arrayidx62.u32_32fixp = getelementptr inbounds [1024 x i64], [1024 x i64]* %out_c.u32_32fixp, i64 0, i64 %idxprom61, !taffo.info !14, !taffo.target !17
  store i64 %sum.2.u32_32fixp, i64* %arrayidx62.u32_32fixp, align 4, !taffo.info !56, !taffo.target !17
  br label %for.inc63

for.inc63:                                        ; preds = %for.end58
  %inc64 = add nsw i32 %j.2, 1, !taffo.info !30, !taffo.constinfo !26
  br label %for.cond40, !llvm.loop !57

for.end65:                                        ; preds = %for.cond40
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %inc67 = add nsw i32 %i.2, 1, !taffo.info !34, !taffo.constinfo !26
  br label %for.cond37, !llvm.loop !58

for.end68:                                        ; preds = %for.cond37
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc86, %for.end68
  %i.3 = phi i32 [ 0, %for.end68 ], [ %inc87, %for.inc86 ], !taffo.info !18
  %cmp70 = icmp slt i32 %i.3, 32, !taffo.info !20
  br i1 %cmp70, label %for.body71, label %for.end88

for.body71:                                       ; preds = %for.cond69
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc83, %for.body71
  %j.3 = phi i32 [ 0, %for.body71 ], [ %inc84, %for.inc83 ], !taffo.info !22
  %cmp73 = icmp slt i32 %j.3, 32, !taffo.info !20
  br i1 %cmp73, label %for.body74, label %for.end85

for.body74:                                       ; preds = %for.cond72
  %mul75 = mul nsw i32 %i.3, 32, !taffo.info !24, !taffo.constinfo !26
  %add76 = add nsw i32 %mul75, %j.3, !taffo.info !27
  %idxprom77 = sext i32 %add76 to i64, !taffo.info !27
  %arrayidx78.u32_32fixp = getelementptr inbounds [1024 x i64], [1024 x i64]* %out_c.u32_32fixp, i64 0, i64 %idxprom77, !taffo.info !14, !taffo.target !17
  %u32_32fixp = load i64, i64* %arrayidx78.u32_32fixp, align 4, !taffo.info !14, !taffo.target !17
  %12 = uitofp i64 %u32_32fixp to float, !taffo.info !14, !taffo.target !17
  %13 = fdiv float %12, 0x41F0000000000000, !taffo.info !14, !taffo.target !17
  %mul79 = mul nsw i32 %i.3, 32, !taffo.info !24, !taffo.constinfo !26
  %add80 = add nsw i32 %mul79, %j.3, !taffo.info !27
  %idxprom81 = sext i32 %add80 to i64, !taffo.info !27
  %arrayidx82 = getelementptr inbounds float, float* %out_c_f, i64 %idxprom81
  store float %13, float* %arrayidx82, align 4, !taffo.info !56, !taffo.target !17
  br label %for.inc83

for.inc83:                                        ; preds = %for.body74
  %inc84 = add nsw i32 %j.3, 1, !taffo.info !30, !taffo.constinfo !26
  br label %for.cond72, !llvm.loop !59

for.end85:                                        ; preds = %for.cond72
  br label %for.inc86

for.inc86:                                        ; preds = %for.end85
  %inc87 = add nsw i32 %i.3, 1, !taffo.info !34, !taffo.constinfo !26
  br label %for.cond69, !llvm.loop !60

for.end88:                                        ; preds = %for.cond69
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !61 !taffo.funinfo !61 {
entry:
  %in_a = alloca [1024 x float], align 16
  %in_b = alloca [1024 x float], align 16
  %out_c = alloca [1024 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc5, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc6, %for.inc5 ]
  %cmp = icmp slt i32 %i.0, 32
  br i1 %cmp, label %for.body, label %for.end7

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, 32
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %add = add nsw i32 %j.0, 1, !taffo.constinfo !26
  %rem = srem i32 %add, 16, !taffo.constinfo !26
  %conv = sitofp i32 %rem to float
  %mul = mul nsw i32 %i.0, 32, !taffo.constinfo !26
  %add4 = add nsw i32 %mul, %j.0
  %idxprom = sext i32 %add4 to i64
  %arrayidx = getelementptr inbounds [1024 x float], [1024 x float]* %in_a, i64 0, i64 %idxprom
  store float %conv, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !26
  br label %for.cond1, !llvm.loop !62

for.end:                                          ; preds = %for.cond1
  br label %for.inc5

for.inc5:                                         ; preds = %for.end
  %inc6 = add nsw i32 %i.0, 1, !taffo.constinfo !26
  br label %for.cond, !llvm.loop !63

for.end7:                                         ; preds = %for.cond
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc26, %for.end7
  %i.1 = phi i32 [ 0, %for.end7 ], [ %inc27, %for.inc26 ]
  %cmp9 = icmp slt i32 %i.1, 32
  br i1 %cmp9, label %for.body11, label %for.end28

for.body11:                                       ; preds = %for.cond8
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc23, %for.body11
  %j.1 = phi i32 [ 0, %for.body11 ], [ %inc24, %for.inc23 ]
  %cmp13 = icmp slt i32 %j.1, 32
  br i1 %cmp13, label %for.body15, label %for.end25

for.body15:                                       ; preds = %for.cond12
  %add16 = add nsw i32 %j.1, 1, !taffo.constinfo !26
  %rem17 = srem i32 %add16, 16, !taffo.constinfo !26
  %conv18 = sitofp i32 %rem17 to float
  %mul19 = mul nsw i32 %i.1, 32, !taffo.constinfo !26
  %add20 = add nsw i32 %mul19, %j.1
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds [1024 x float], [1024 x float]* %in_b, i64 0, i64 %idxprom21
  store float %conv18, float* %arrayidx22, align 4
  br label %for.inc23

for.inc23:                                        ; preds = %for.body15
  %inc24 = add nsw i32 %j.1, 1, !taffo.constinfo !26
  br label %for.cond12, !llvm.loop !64

for.end25:                                        ; preds = %for.cond12
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %inc27 = add nsw i32 %i.1, 1, !taffo.constinfo !26
  br label %for.cond8, !llvm.loop !65

for.end28:                                        ; preds = %for.cond8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !26
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc47, %for.end28
  %i.2 = phi i32 [ 0, %for.end28 ], [ %inc48, %for.inc47 ]
  %cmp30 = icmp slt i32 %i.2, 32
  br i1 %cmp30, label %for.body32, label %for.end49

for.body32:                                       ; preds = %for.cond29
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc43, %for.body32
  %j.2 = phi i32 [ 0, %for.body32 ], [ %inc44, %for.inc43 ]
  %cmp34 = icmp slt i32 %j.2, 32
  br i1 %cmp34, label %for.body36, label %for.end45

for.body36:                                       ; preds = %for.cond33
  %mul37 = mul nsw i32 %i.2, 32, !taffo.constinfo !26
  %add38 = add nsw i32 %mul37, %j.2
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [1024 x float], [1024 x float]* %in_a, i64 0, i64 %idxprom39
  %0 = load float, float* %arrayidx40, align 4
  %conv41 = fpext float %0 to double
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %conv41), !taffo.constinfo !66
  br label %for.inc43

for.inc43:                                        ; preds = %for.body36
  %inc44 = add nsw i32 %j.2, 1, !taffo.constinfo !26
  br label %for.cond33, !llvm.loop !67

for.end45:                                        ; preds = %for.cond33
  %call46 = call i32 @putchar(i32 10), !taffo.constinfo !26
  br label %for.inc47

for.inc47:                                        ; preds = %for.end45
  %inc48 = add nsw i32 %i.2, 1, !taffo.constinfo !26
  br label %for.cond29, !llvm.loop !68

for.end49:                                        ; preds = %for.cond29
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)), !taffo.constinfo !26
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc69, %for.end49
  %i.3 = phi i32 [ 0, %for.end49 ], [ %inc70, %for.inc69 ]
  %cmp52 = icmp slt i32 %i.3, 32
  br i1 %cmp52, label %for.body54, label %for.end71

for.body54:                                       ; preds = %for.cond51
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc65, %for.body54
  %j.3 = phi i32 [ 0, %for.body54 ], [ %inc66, %for.inc65 ]
  %cmp56 = icmp slt i32 %j.3, 32
  br i1 %cmp56, label %for.body58, label %for.end67

for.body58:                                       ; preds = %for.cond55
  %mul59 = mul nsw i32 %i.3, 32, !taffo.constinfo !26
  %add60 = add nsw i32 %mul59, %j.3
  %idxprom61 = sext i32 %add60 to i64
  %arrayidx62 = getelementptr inbounds [1024 x float], [1024 x float]* %in_b, i64 0, i64 %idxprom61
  %1 = load float, float* %arrayidx62, align 4
  %conv63 = fpext float %1 to double
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %conv63), !taffo.constinfo !66
  br label %for.inc65

for.inc65:                                        ; preds = %for.body58
  %inc66 = add nsw i32 %j.3, 1, !taffo.constinfo !26
  br label %for.cond55, !llvm.loop !69

for.end67:                                        ; preds = %for.cond55
  %call68 = call i32 @putchar(i32 10), !taffo.constinfo !26
  br label %for.inc69

for.inc69:                                        ; preds = %for.end67
  %inc70 = add nsw i32 %i.3, 1, !taffo.constinfo !26
  br label %for.cond51, !llvm.loop !70

for.end71:                                        ; preds = %for.cond51
  %arraydecay = getelementptr inbounds [1024 x float], [1024 x float]* %in_a, i64 0, i64 0
  %arraydecay72 = getelementptr inbounds [1024 x float], [1024 x float]* %in_b, i64 0, i64 0
  %arraydecay73 = getelementptr inbounds [1024 x float], [1024 x float]* %out_c, i64 0, i64 0
  call void @mm(float* %arraydecay, float* %arraydecay72, float* %arraydecay73), !taffo.constinfo !71
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)), !taffo.constinfo !26
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc93, %for.end71
  %i.4 = phi i32 [ 0, %for.end71 ], [ %inc94, %for.inc93 ]
  %cmp76 = icmp slt i32 %i.4, 32
  br i1 %cmp76, label %for.body78, label %for.end95

for.body78:                                       ; preds = %for.cond75
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc89, %for.body78
  %j.4 = phi i32 [ 0, %for.body78 ], [ %inc90, %for.inc89 ]
  %cmp80 = icmp slt i32 %j.4, 32
  br i1 %cmp80, label %for.body82, label %for.end91

for.body82:                                       ; preds = %for.cond79
  %mul83 = mul nsw i32 %i.4, 32, !taffo.constinfo !26
  %add84 = add nsw i32 %mul83, %j.4
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds [1024 x float], [1024 x float]* %out_c, i64 0, i64 %idxprom85
  %2 = load float, float* %arrayidx86, align 4
  %conv87 = fpext float %2 to double
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %conv87), !taffo.constinfo !66
  br label %for.inc89

for.inc89:                                        ; preds = %for.body82
  %inc90 = add nsw i32 %j.4, 1, !taffo.constinfo !26
  br label %for.cond79, !llvm.loop !72

for.end91:                                        ; preds = %for.cond79
  %call92 = call i32 @putchar(i32 10), !taffo.constinfo !26
  br label %for.inc93

for.inc93:                                        ; preds = %for.end91
  %inc94 = add nsw i32 %i.4, 1, !taffo.constinfo !26
  br label %for.cond75, !llvm.loop !73

for.end95:                                        ; preds = %for.cond75
  ret i32 0
}

declare !taffo.initweight !74 !taffo.funinfo !75 dso_local i32 @printf(i8*, ...) #1

declare !taffo.initweight !74 !taffo.funinfo !75 dso_local i32 @putchar(i32) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!4}
!llvm.ident = !{!5}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.170000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.020000e+02}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!6 = !{i1 true}
!7 = !{i32 -1, i32 -1, i32 -1}
!8 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!9 = !{!10, !11, i1 false, i2 1}
!10 = !{!"fixp", i32 32, i32 23}
!11 = !{double 0.000000e+00, double 2.560000e+02}
!12 = !{!"input_a"}
!13 = !{!"input_b"}
!14 = !{!15, !16, i1 false, i2 1}
!15 = !{!"fixp", i32 64, i32 32}
!16 = !{double 0.000000e+00, double 0x41E18C2000000000}
!17 = !{!"result_c"}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 0.000000e+00, double 3.300000e+01}
!20 = !{i1 false, !21, i1 false, i2 0}
!21 = !{double 0.000000e+00, double 1.000000e+00}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 0.000000e+00, double 1.089000e+03}
!24 = !{i1 false, !25, i1 false, i2 0}
!25 = !{double 0.000000e+00, double 1.024000e+03}
!26 = !{i1 false, i1 false}
!27 = !{i1 false, !28, i1 false, i2 0}
!28 = !{double 0.000000e+00, double 2.112000e+03}
!29 = !{i1 false, !11, i1 false, i2 1}
!30 = !{i1 false, !31, i1 false, i2 0}
!31 = !{double 1.000000e+00, double 1.089000e+03}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{i1 false, !35, i1 false, i2 0}
!35 = !{double 1.000000e+00, double 3.300000e+01}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = !{i1 false, !40, i1 false, i2 0}
!40 = !{double 0.000000e+00, double 3.593700e+04}
!41 = !{i1 false, !42, i1 false, i2 0}
!42 = !{double 0.000000e+00, double 3.696000e+04}
!43 = !{i1 false, !44, i1 false, i2 0}
!44 = !{double 0.000000e+00, double 0x41318C0000000000}
!45 = !{i1 false, !46, i1 false, i2 0}
!46 = !{double 0.000000e+00, double 1.151040e+06}
!47 = !{!48, !49, i1 false, i2 1}
!48 = !{!"fixp", i32 64, i32 46}
!49 = !{double 0.000000e+00, double 6.553600e+04}
!50 = !{!51, !49, i1 false, i2 1}
!51 = !{!"fixp", i32 32, i32 15}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 1.000000e+00, double 3.593700e+04}
!54 = distinct !{!54, !33, !55}
!55 = !{!"llvm.loop.unroll.count", i32 4}
!56 = !{i1 false, i1 false, i1 false, i2 1}
!57 = distinct !{!57, !33}
!58 = distinct !{!58, !33}
!59 = distinct !{!59, !33}
!60 = distinct !{!60, !33}
!61 = !{}
!62 = distinct !{!62, !33}
!63 = distinct !{!63, !33}
!64 = distinct !{!64, !33}
!65 = distinct !{!65, !33}
!66 = !{i1 false, i1 false, i1 false}
!67 = distinct !{!67, !33}
!68 = distinct !{!68, !33}
!69 = distinct !{!69, !33}
!70 = distinct !{!70, !33}
!71 = !{i1 false, i1 false, i1 false, i1 false}
!72 = distinct !{!72, !33}
!73 = distinct !{!73, !33}
!74 = !{i32 -1}
!75 = !{i32 0, i1 false}
