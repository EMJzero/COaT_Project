; ModuleID = '/tmp/tmp.HhPfmK7Kq7/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.source_a = private unnamed_addr constant [256 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01], align 16, !taffo.info !0
@.str.6 = private unnamed_addr constant [10 x i8] c"Input A:\0A\00", align 1, !taffo.info !2
@.str.7 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1, !taffo.info !4
@.str.8 = private unnamed_addr constant [10 x i8] c"Input B:\0A\00", align 1, !taffo.info !2
@.str.9 = private unnamed_addr constant [9 x i8] c"Result:\0A\00", align 1, !taffo.info !2

; Function Attrs: noinline nounwind uwtable
define dso_local void @mm(float* noalias %in_a_f, float* noalias %in_b_f, float* noalias %out_c_f) #0 !taffo.start !8 !taffo.initweight !9 !taffo.funinfo !10 {
entry:
  %in_a.u9_23fixp = alloca [256 x i32], align 16, !taffo.info !11, !taffo.target !14
  %in_b.u9_23fixp = alloca [256 x i32], align 16, !taffo.info !11, !taffo.target !15
  %out_c.u29_3fixp = alloca [256 x i32], align 16, !taffo.info !16, !taffo.target !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc15, %for.inc14 ], !taffo.info !20
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !22
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !24
  %cmp8 = icmp slt i32 %j.0, 16, !taffo.info !22
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %mul = mul nsw i32 %i.0, 16, !taffo.info !26, !taffo.constinfo !27
  %add = add nsw i32 %mul, %j.0, !taffo.info !28
  %idxprom = sext i32 %add to i64, !taffo.info !28
  %arrayidx = getelementptr inbounds float, float* %in_a_f, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %1 = fmul float 0x4160000000000000, %0, !taffo.info !26
  %2 = fptoui float %1 to i32, !taffo.info !26
  %mul10 = mul nsw i32 %i.0, 16, !taffo.info !26, !taffo.constinfo !27
  %add11 = add nsw i32 %mul10, %j.0, !taffo.info !28
  %idxprom12 = sext i32 %add11 to i64, !taffo.info !28
  %arrayidx13.u9_23fixp = getelementptr inbounds [256 x i32], [256 x i32]* %in_a.u9_23fixp, i64 0, i64 %idxprom12, !taffo.info !11, !taffo.target !14
  store i32 %2, i32* %arrayidx13.u9_23fixp, align 4, !taffo.info !30, !taffo.target !14
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.info !31, !taffo.constinfo !27
  br label %for.cond7, !llvm.loop !33

for.end:                                          ; preds = %for.cond7
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %inc15 = add nsw i32 %i.0, 1, !taffo.info !35, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !37

for.end16:                                        ; preds = %for.cond
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc34, %for.end16
  %i.1 = phi i32 [ 0, %for.end16 ], [ %inc35, %for.inc34 ], !taffo.info !20
  %cmp18 = icmp slt i32 %i.1, 16, !taffo.info !22
  br i1 %cmp18, label %for.body19, label %for.end36

for.body19:                                       ; preds = %for.cond17
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc31, %for.body19
  %j.1 = phi i32 [ 0, %for.body19 ], [ %inc32, %for.inc31 ], !taffo.info !24
  %cmp21 = icmp slt i32 %j.1, 16, !taffo.info !22
  br i1 %cmp21, label %for.body22, label %for.end33

for.body22:                                       ; preds = %for.cond20
  %mul23 = mul nsw i32 %i.1, 16, !taffo.info !26, !taffo.constinfo !27
  %add24 = add nsw i32 %mul23, %j.1, !taffo.info !28
  %idxprom25 = sext i32 %add24 to i64, !taffo.info !28
  %arrayidx26 = getelementptr inbounds float, float* %in_b_f, i64 %idxprom25
  %3 = load float, float* %arrayidx26, align 4
  %4 = fmul float 0x4160000000000000, %3, !taffo.info !26
  %5 = fptoui float %4 to i32, !taffo.info !26
  %mul27 = mul nsw i32 %i.1, 16, !taffo.info !26, !taffo.constinfo !27
  %add28 = add nsw i32 %mul27, %j.1, !taffo.info !28
  %idxprom29 = sext i32 %add28 to i64, !taffo.info !28
  %arrayidx30.u9_23fixp = getelementptr inbounds [256 x i32], [256 x i32]* %in_b.u9_23fixp, i64 0, i64 %idxprom29, !taffo.info !11, !taffo.target !15
  store i32 %5, i32* %arrayidx30.u9_23fixp, align 4, !taffo.info !30, !taffo.target !15
  br label %for.inc31

for.inc31:                                        ; preds = %for.body22
  %inc32 = add nsw i32 %j.1, 1, !taffo.info !31, !taffo.constinfo !27
  br label %for.cond20, !llvm.loop !38

for.end33:                                        ; preds = %for.cond20
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %inc35 = add nsw i32 %i.1, 1, !taffo.info !35, !taffo.constinfo !27
  br label %for.cond17, !llvm.loop !39

for.end36:                                        ; preds = %for.cond17
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc66, %for.end36
  %sum.0.u29_3fixp = phi i32 [ 0, %for.end36 ], [ %sum.1.u29_3fixp, %for.inc66 ], !taffo.info !16
  %i.2 = phi i32 [ 0, %for.end36 ], [ %inc67, %for.inc66 ], !taffo.info !20
  %cmp38 = icmp slt i32 %i.2, 16, !taffo.info !22
  br i1 %cmp38, label %for.body39, label %for.end68

for.body39:                                       ; preds = %for.cond37
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc63, %for.body39
  %sum.1.u29_3fixp = phi i32 [ %sum.0.u29_3fixp, %for.body39 ], [ %sum.2.u29_3fixp, %for.inc63 ], !taffo.info !16
  %j.2 = phi i32 [ 0, %for.body39 ], [ %inc64, %for.inc63 ], !taffo.info !24
  %cmp41 = icmp slt i32 %j.2, 16, !taffo.info !22
  br i1 %cmp41, label %for.body42, label %for.end65

for.body42:                                       ; preds = %for.cond40
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc56, %for.body42
  %sum.2.u29_3fixp = phi i32 [ %sum.1.u29_3fixp, %for.body42 ], [ %add55.u29_3fixp, %for.inc56 ], !taffo.info !16
  %k.0 = phi i32 [ 0, %for.body42 ], [ %inc57, %for.inc56 ], !taffo.info !40
  %cmp44 = icmp slt i32 %k.0, 16, !taffo.info !22
  br i1 %cmp44, label %for.body45, label %for.end58

for.body45:                                       ; preds = %for.cond43
  %mul46 = mul nsw i32 %i.2, 16, !taffo.info !26, !taffo.constinfo !27
  %add47 = add nsw i32 %mul46, %k.0, !taffo.info !42
  %idxprom48 = sext i32 %add47 to i64, !taffo.info !42
  %arrayidx49.u9_23fixp = getelementptr inbounds [256 x i32], [256 x i32]* %in_a.u9_23fixp, i64 0, i64 %idxprom48, !taffo.info !11, !taffo.target !14
  %u9_23fixp = load i32, i32* %arrayidx49.u9_23fixp, align 4, !taffo.info !11, !taffo.target !14
  %mul50 = mul nsw i32 %k.0, 16, !taffo.info !44, !taffo.constinfo !27
  %add51 = add nsw i32 %mul50, %j.2, !taffo.info !46
  %idxprom52 = sext i32 %add51 to i64, !taffo.info !46
  %arrayidx53.u9_23fixp = getelementptr inbounds [256 x i32], [256 x i32]* %in_b.u9_23fixp, i64 0, i64 %idxprom52, !taffo.info !11, !taffo.target !15
  %u9_23fixp5 = load i32, i32* %arrayidx53.u9_23fixp, align 4, !taffo.info !11, !taffo.target !15
  %6 = zext i32 %u9_23fixp to i64, !taffo.info !11, !taffo.target !14
  %7 = zext i32 %u9_23fixp5 to i64, !taffo.info !11, !taffo.target !15
  %8 = mul i64 %6, %7, !taffo.info !48
  %9 = lshr i64 %8, 31, !taffo.info !48
  %mul54.u17_15fixp = trunc i64 %9 to i32, !taffo.info !51
  %10 = lshr i32 %mul54.u17_15fixp, 12, !taffo.info !51
  %add55.u29_3fixp = add i32 %sum.2.u29_3fixp, %10, !taffo.info !16
  br label %for.inc56

for.inc56:                                        ; preds = %for.body45
  %inc57 = add nsw i32 %k.0, 1, !taffo.info !53, !taffo.constinfo !27
  br label %for.cond43, !llvm.loop !55

for.end58:                                        ; preds = %for.cond43
  %mul59 = mul nsw i32 %i.2, 16, !taffo.info !26, !taffo.constinfo !27
  %add60 = add nsw i32 %mul59, %j.2, !taffo.info !28
  %idxprom61 = sext i32 %add60 to i64, !taffo.info !28
  %arrayidx62.u29_3fixp = getelementptr inbounds [256 x i32], [256 x i32]* %out_c.u29_3fixp, i64 0, i64 %idxprom61, !taffo.info !16, !taffo.target !19
  store i32 %sum.2.u29_3fixp, i32* %arrayidx62.u29_3fixp, align 4, !taffo.info !57, !taffo.target !19
  br label %for.inc63

for.inc63:                                        ; preds = %for.end58
  %inc64 = add nsw i32 %j.2, 1, !taffo.info !31, !taffo.constinfo !27
  br label %for.cond40, !llvm.loop !58

for.end65:                                        ; preds = %for.cond40
  br label %for.inc66

for.inc66:                                        ; preds = %for.end65
  %inc67 = add nsw i32 %i.2, 1, !taffo.info !35, !taffo.constinfo !27
  br label %for.cond37, !llvm.loop !59

for.end68:                                        ; preds = %for.cond37
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc86, %for.end68
  %i.3 = phi i32 [ 0, %for.end68 ], [ %inc87, %for.inc86 ], !taffo.info !20
  %cmp70 = icmp slt i32 %i.3, 16, !taffo.info !22
  br i1 %cmp70, label %for.body71, label %for.end88

for.body71:                                       ; preds = %for.cond69
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc83, %for.body71
  %j.3 = phi i32 [ 0, %for.body71 ], [ %inc84, %for.inc83 ], !taffo.info !24
  %cmp73 = icmp slt i32 %j.3, 16, !taffo.info !22
  br i1 %cmp73, label %for.body74, label %for.end85

for.body74:                                       ; preds = %for.cond72
  %mul75 = mul nsw i32 %i.3, 16, !taffo.info !26, !taffo.constinfo !27
  %add76 = add nsw i32 %mul75, %j.3, !taffo.info !28
  %idxprom77 = sext i32 %add76 to i64, !taffo.info !28
  %arrayidx78.u29_3fixp = getelementptr inbounds [256 x i32], [256 x i32]* %out_c.u29_3fixp, i64 0, i64 %idxprom77, !taffo.info !16, !taffo.target !19
  %u29_3fixp = load i32, i32* %arrayidx78.u29_3fixp, align 4, !taffo.info !16, !taffo.target !19
  %11 = uitofp i32 %u29_3fixp to float, !taffo.info !16, !taffo.target !19
  %12 = fdiv float %11, 8.000000e+00, !taffo.info !16, !taffo.target !19
  %mul79 = mul nsw i32 %i.3, 16, !taffo.info !26, !taffo.constinfo !27
  %add80 = add nsw i32 %mul79, %j.3, !taffo.info !28
  %idxprom81 = sext i32 %add80 to i64, !taffo.info !28
  %arrayidx82 = getelementptr inbounds float, float* %out_c_f, i64 %idxprom81
  store float %12, float* %arrayidx82, align 4, !taffo.info !57, !taffo.target !19
  br label %for.inc83

for.inc83:                                        ; preds = %for.body74
  %inc84 = add nsw i32 %j.3, 1, !taffo.info !31, !taffo.constinfo !27
  br label %for.cond72, !llvm.loop !60

for.end85:                                        ; preds = %for.cond72
  br label %for.inc86

for.inc86:                                        ; preds = %for.end85
  %inc87 = add nsw i32 %i.3, 1, !taffo.info !35, !taffo.constinfo !27
  br label %for.cond69, !llvm.loop !61

for.end88:                                        ; preds = %for.cond69
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !62 !taffo.funinfo !62 {
entry:
  %source_a = alloca [256 x float], align 16
  %in_a = alloca [256 x float], align 16
  %in_b = alloca [256 x float], align 16
  %out_c = alloca [256 x float], align 16
  %0 = bitcast [256 x float]* %source_a to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([256 x float]* @__const.main.source_a to i8*), i64 1024, i1 false), !taffo.constinfo !63
  %arraydecay = getelementptr inbounds [256 x float], [256 x float]* %source_a, i64 0, i64 0
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ]
  %cmp = icmp slt i32 %i.0, 16
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, 16
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, 16, !taffo.constinfo !27
  %add = add nsw i32 %mul, %j.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [256 x float], [256 x float]* %source_a, i64 0, i64 %idxprom
  %1 = load float, float* %arrayidx, align 4
  %mul4 = mul nsw i32 %i.0, 16, !taffo.constinfo !27
  %add5 = add nsw i32 %mul4, %j.0
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds [256 x float], [256 x float]* %in_a, i64 0, i64 %idxprom6
  store float %1, float* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !27
  br label %for.cond1, !llvm.loop !64

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.constinfo !27
  br label %for.cond, !llvm.loop !65

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc28, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc29, %for.inc28 ]
  %cmp12 = icmp slt i32 %i.1, 16
  br i1 %cmp12, label %for.body13, label %for.end30

for.body13:                                       ; preds = %for.cond11
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc25, %for.body13
  %j.1 = phi i32 [ 0, %for.body13 ], [ %inc26, %for.inc25 ]
  %cmp15 = icmp slt i32 %j.1, 16
  br i1 %cmp15, label %for.body16, label %for.end27

for.body16:                                       ; preds = %for.cond14
  %mul17 = mul nsw i32 %i.1, 16, !taffo.constinfo !27
  %add18 = add nsw i32 %mul17, %j.1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds float, float* %arraydecay, i64 %idxprom19
  %2 = load float, float* %arrayidx20, align 4
  %mul21 = mul nsw i32 %i.1, 16, !taffo.constinfo !27
  %add22 = add nsw i32 %mul21, %j.1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [256 x float], [256 x float]* %in_b, i64 0, i64 %idxprom23
  store float %2, float* %arrayidx24, align 4
  br label %for.inc25

for.inc25:                                        ; preds = %for.body16
  %inc26 = add nsw i32 %j.1, 1, !taffo.constinfo !27
  br label %for.cond14, !llvm.loop !66

for.end27:                                        ; preds = %for.cond14
  br label %for.inc28

for.inc28:                                        ; preds = %for.end27
  %inc29 = add nsw i32 %i.1, 1, !taffo.constinfo !27
  br label %for.cond11, !llvm.loop !67

for.end30:                                        ; preds = %for.cond11
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !27
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc46, %for.end30
  %i.2 = phi i32 [ 0, %for.end30 ], [ %inc47, %for.inc46 ]
  %cmp32 = icmp slt i32 %i.2, 16
  br i1 %cmp32, label %for.body33, label %for.end48

for.body33:                                       ; preds = %for.cond31
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc42, %for.body33
  %j.2 = phi i32 [ 0, %for.body33 ], [ %inc43, %for.inc42 ]
  %cmp35 = icmp slt i32 %j.2, 16
  br i1 %cmp35, label %for.body36, label %for.end44

for.body36:                                       ; preds = %for.cond34
  %mul37 = mul nsw i32 %i.2, 16, !taffo.constinfo !27
  %add38 = add nsw i32 %mul37, %j.2
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds [256 x float], [256 x float]* %in_a, i64 0, i64 %idxprom39
  %3 = load float, float* %arrayidx40, align 4
  %conv = fpext float %3 to double
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %conv), !taffo.constinfo !68
  br label %for.inc42

for.inc42:                                        ; preds = %for.body36
  %inc43 = add nsw i32 %j.2, 1, !taffo.constinfo !27
  br label %for.cond34, !llvm.loop !69

for.end44:                                        ; preds = %for.cond34
  %call45 = call i32 @putchar(i32 10), !taffo.constinfo !27
  br label %for.inc46

for.inc46:                                        ; preds = %for.end44
  %inc47 = add nsw i32 %i.2, 1, !taffo.constinfo !27
  br label %for.cond31, !llvm.loop !70

for.end48:                                        ; preds = %for.cond31
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)), !taffo.constinfo !27
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc68, %for.end48
  %i.3 = phi i32 [ 0, %for.end48 ], [ %inc69, %for.inc68 ]
  %cmp51 = icmp slt i32 %i.3, 16
  br i1 %cmp51, label %for.body53, label %for.end70

for.body53:                                       ; preds = %for.cond50
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc64, %for.body53
  %j.3 = phi i32 [ 0, %for.body53 ], [ %inc65, %for.inc64 ]
  %cmp55 = icmp slt i32 %j.3, 16
  br i1 %cmp55, label %for.body57, label %for.end66

for.body57:                                       ; preds = %for.cond54
  %mul58 = mul nsw i32 %i.3, 16, !taffo.constinfo !27
  %add59 = add nsw i32 %mul58, %j.3
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [256 x float], [256 x float]* %in_b, i64 0, i64 %idxprom60
  %4 = load float, float* %arrayidx61, align 4
  %conv62 = fpext float %4 to double
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %conv62), !taffo.constinfo !68
  br label %for.inc64

for.inc64:                                        ; preds = %for.body57
  %inc65 = add nsw i32 %j.3, 1, !taffo.constinfo !27
  br label %for.cond54, !llvm.loop !71

for.end66:                                        ; preds = %for.cond54
  %call67 = call i32 @putchar(i32 10), !taffo.constinfo !27
  br label %for.inc68

for.inc68:                                        ; preds = %for.end66
  %inc69 = add nsw i32 %i.3, 1, !taffo.constinfo !27
  br label %for.cond50, !llvm.loop !72

for.end70:                                        ; preds = %for.cond50
  %arraydecay71 = getelementptr inbounds [256 x float], [256 x float]* %in_a, i64 0, i64 0
  %arraydecay72 = getelementptr inbounds [256 x float], [256 x float]* %in_b, i64 0, i64 0
  %arraydecay73 = getelementptr inbounds [256 x float], [256 x float]* %out_c, i64 0, i64 0
  call void @mm(float* %arraydecay71, float* %arraydecay72, float* %arraydecay73), !taffo.constinfo !73
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)), !taffo.constinfo !27
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc93, %for.end70
  %i.4 = phi i32 [ 0, %for.end70 ], [ %inc94, %for.inc93 ]
  %cmp76 = icmp slt i32 %i.4, 16
  br i1 %cmp76, label %for.body78, label %for.end95

for.body78:                                       ; preds = %for.cond75
  br label %for.cond79

for.cond79:                                       ; preds = %for.inc89, %for.body78
  %j.4 = phi i32 [ 0, %for.body78 ], [ %inc90, %for.inc89 ]
  %cmp80 = icmp slt i32 %j.4, 16
  br i1 %cmp80, label %for.body82, label %for.end91

for.body82:                                       ; preds = %for.cond79
  %mul83 = mul nsw i32 %i.4, 16, !taffo.constinfo !27
  %add84 = add nsw i32 %mul83, %j.4
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds [256 x float], [256 x float]* %out_c, i64 0, i64 %idxprom85
  %5 = load float, float* %arrayidx86, align 4
  %conv87 = fpext float %5 to double
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %conv87), !taffo.constinfo !68
  br label %for.inc89

for.inc89:                                        ; preds = %for.body82
  %inc90 = add nsw i32 %j.4, 1, !taffo.constinfo !27
  br label %for.cond79, !llvm.loop !74

for.end91:                                        ; preds = %for.cond79
  %call92 = call i32 @putchar(i32 10), !taffo.constinfo !27
  br label %for.inc93

for.inc93:                                        ; preds = %for.end91
  %inc94 = add nsw i32 %i.4, 1, !taffo.constinfo !27
  br label %for.cond75, !llvm.loop !75

for.end95:                                        ; preds = %for.cond75
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare !taffo.initweight !76 !taffo.funinfo !77 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare !taffo.initweight !78 !taffo.funinfo !79 dso_local i32 @printf(i8*, ...) #2

declare !taffo.initweight !78 !taffo.funinfo !79 dso_local i32 @putchar(i32) #2

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!6}
!llvm.ident = !{!7}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 1.000000e+00, double 1.600000e+01}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.170000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.020000e+02}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!8 = !{i1 true}
!9 = !{i32 -1, i32 -1, i32 -1}
!10 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!11 = !{!12, !13, i1 false, i2 1}
!12 = !{!"fixp", i32 32, i32 23}
!13 = !{double 0.000000e+00, double 2.560000e+02}
!14 = !{!"input_a"}
!15 = !{!"input_b"}
!16 = !{!17, !18, i1 false, i2 1}
!17 = !{!"fixp", i32 32, i32 3}
!18 = !{double 0.000000e+00, double 0x41B3310000000000}
!19 = !{!"result_c"}
!20 = !{i1 false, !21, i1 false, i2 0}
!21 = !{double 0.000000e+00, double 1.700000e+01}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 0.000000e+00, double 1.000000e+00}
!24 = !{i1 false, !25, i1 false, i2 0}
!25 = !{double 0.000000e+00, double 2.890000e+02}
!26 = !{i1 false, !13, i1 false, i2 0}
!27 = !{i1 false, i1 false}
!28 = !{i1 false, !29, i1 false, i2 0}
!29 = !{double 0.000000e+00, double 5.440000e+02}
!30 = !{i1 false, !13, i1 false, i2 1}
!31 = !{i1 false, !32, i1 false, i2 0}
!32 = !{double 1.000000e+00, double 2.890000e+02}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{i1 false, !36, i1 false, i2 0}
!36 = !{double 1.000000e+00, double 1.700000e+01}
!37 = distinct !{!37, !34}
!38 = distinct !{!38, !34}
!39 = distinct !{!39, !34}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 0.000000e+00, double 4.913000e+03}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 0.000000e+00, double 5.168000e+03}
!44 = !{i1 false, !45, i1 false, i2 0}
!45 = !{double 0.000000e+00, double 7.859200e+04}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 0.000000e+00, double 7.888000e+04}
!48 = !{!49, !50, i1 false, i2 1}
!49 = !{!"fixp", i32 64, i32 46}
!50 = !{double 0.000000e+00, double 6.553600e+04}
!51 = !{!52, !50, i1 false, i2 1}
!52 = !{!"fixp", i32 32, i32 15}
!53 = !{i1 false, !54, i1 false, i2 0}
!54 = !{double 1.000000e+00, double 4.913000e+03}
!55 = distinct !{!55, !34, !56}
!56 = !{!"llvm.loop.unroll.count", i32 4}
!57 = !{i1 false, i1 false, i1 false, i2 1}
!58 = distinct !{!58, !34}
!59 = distinct !{!59, !34}
!60 = distinct !{!60, !34}
!61 = distinct !{!61, !34}
!62 = !{}
!63 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!64 = distinct !{!64, !34}
!65 = distinct !{!65, !34}
!66 = distinct !{!66, !34}
!67 = distinct !{!67, !34}
!68 = !{i1 false, i1 false, i1 false}
!69 = distinct !{!69, !34}
!70 = distinct !{!70, !34}
!71 = distinct !{!71, !34}
!72 = distinct !{!72, !34}
!73 = !{i1 false, i1 false, i1 false, i1 false}
!74 = distinct !{!74, !34}
!75 = distinct !{!75, !34}
!76 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!77 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!78 = !{i32 -1}
!79 = !{i32 0, i1 false}
