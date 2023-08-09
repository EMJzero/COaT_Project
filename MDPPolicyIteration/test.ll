; ModuleID = '/tmp/tmp.pvNqIHyD5Q/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.M = private unnamed_addr constant [16 x double] [double -1.000000e+00, double 0xBFE6666666666666, double -5.000000e-01, double -5.000000e-01, double -9.000000e-01, double -8.000000e-01, double -4.500000e-01, double -6.000000e-01, double -8.000000e-01, double -5.700000e-01, double -5.000000e-01, double -4.000000e-01, double -2.000000e-01, double -2.200000e-01, double -1.000000e-01, double 0.000000e+00], align 16, !taffo.info !0
@.str.6 = private unnamed_addr constant [24 x i8] c"Optimal Policy Matrix:\0A\00", align 1, !taffo.info !2
@.str.7 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1, !taffo.info !4
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !6

; Function Attrs: noinline nounwind uwtable
define dso_local void @evaluateValueFunction(i32 noundef %N, double* noundef %M, i32* noundef %P, double* noundef %V) #0 !taffo.start !14 !taffo.initweight !15 !taffo.equivalentChild !16 !taffo.funinfo !17 {
entry:
  br label %while.body

while.body:                                       ; preds = %if.end75, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc70, %while.body
  %maxDiff.0.u0_32fixp = phi i32 [ 0, %while.body ], [ %maxDiff.1.u0_32fixp, %for.inc70 ], !taffo.info !18
  %i.0 = phi i32 [ 0, %while.body ], [ %inc71, %for.inc70 ], !taffo.info !21
  %cmp = icmp slt i32 %i.0, %N, !taffo.info !21
  br i1 %cmp, label %for.body, label %for.end72

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %maxDiff.1.u0_32fixp = phi i32 [ %maxDiff.0.u0_32fixp, %for.body ], [ %maxDiff.2.u0_32fixp, %for.inc ], !taffo.info !18
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !21
  %cmp5 = icmp slt i32 %j.0, %N, !taffo.info !21
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %i.0, %N
  %add = add nsw i32 %mul, %j.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %P, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4
  %mul8 = mul nsw i32 %i.0, %N
  %add9 = add nsw i32 %mul8, %j.0
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds double, double* %V, i64 %idxprom10
  %1 = load double, double* %arrayidx11, align 8, !taffo.info !23, !taffo.initweight !24
  %mul13 = mul nsw i32 %i.0, %N
  %add14 = add nsw i32 %mul13, %j.0
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds double, double* %M, i64 %idxprom15
  %2 = load double, double* %arrayidx16, align 8
  %fneg = fneg double %2, !taffo.info !23, !taffo.initweight !24
  %cmp17 = icmp eq i32 %0, 1, !taffo.info !21
  br i1 %cmp17, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body6
  %cmp18 = icmp sgt i32 %i.0, 0, !taffo.info !25
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %sub = sub nsw i32 %i.0, 1, !taffo.info !26, !taffo.constinfo !28
  %mul19 = mul nsw i32 %sub, %N
  %add20 = add nsw i32 %mul19, %j.0
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds double, double* %V, i64 %idxprom21
  %3 = load double, double* %arrayidx22, align 8
  %4 = call double @llvm.fmuladd.f64(double 9.000000e-01, double %3, double %fneg), !taffo.info !23, !taffo.initweight !24, !taffo.constinfo !29
  br label %if.end60

if.else:                                          ; preds = %land.lhs.true, %for.body6
  %cmp24 = icmp eq i32 %0, 2, !taffo.info !21
  br i1 %cmp24, label %land.lhs.true25, label %if.else35

land.lhs.true25:                                  ; preds = %if.else
  %sub26 = sub nsw i32 %N, 1, !taffo.constinfo !28
  %cmp27 = icmp slt i32 %i.0, %sub26, !taffo.info !21
  br i1 %cmp27, label %if.then28, label %if.else35

if.then28:                                        ; preds = %land.lhs.true25
  %add29 = add nsw i32 %i.0, 1, !taffo.info !32, !taffo.constinfo !28
  %mul30 = mul nsw i32 %add29, %N
  %add31 = add nsw i32 %mul30, %j.0
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds double, double* %V, i64 %idxprom32
  %5 = load double, double* %arrayidx33, align 8
  %6 = call double @llvm.fmuladd.f64(double 9.000000e-01, double %5, double %fneg), !taffo.info !23, !taffo.initweight !24, !taffo.constinfo !29
  br label %if.end59

if.else35:                                        ; preds = %land.lhs.true25, %if.else
  %cmp36 = icmp eq i32 %0, 3, !taffo.info !21
  br i1 %cmp36, label %land.lhs.true37, label %if.else46

land.lhs.true37:                                  ; preds = %if.else35
  %cmp38 = icmp sgt i32 %j.0, 0, !taffo.info !25
  br i1 %cmp38, label %if.then39, label %if.else46

if.then39:                                        ; preds = %land.lhs.true37
  %mul40 = mul nsw i32 %i.0, %N
  %sub41 = sub nsw i32 %j.0, 1, !taffo.info !26, !taffo.constinfo !28
  %add42 = add nsw i32 %mul40, %sub41
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds double, double* %V, i64 %idxprom43
  %7 = load double, double* %arrayidx44, align 8
  %8 = call double @llvm.fmuladd.f64(double 9.000000e-01, double %7, double %fneg), !taffo.info !23, !taffo.initweight !24, !taffo.constinfo !29
  br label %if.end58

if.else46:                                        ; preds = %land.lhs.true37, %if.else35
  %cmp47 = icmp eq i32 %0, 4, !taffo.info !21
  br i1 %cmp47, label %land.lhs.true48, label %if.end

land.lhs.true48:                                  ; preds = %if.else46
  %sub49 = sub nsw i32 %N, 1, !taffo.constinfo !28
  %cmp50 = icmp slt i32 %j.0, %sub49, !taffo.info !21
  br i1 %cmp50, label %if.then51, label %if.end

if.then51:                                        ; preds = %land.lhs.true48
  %mul52 = mul nsw i32 %i.0, %N
  %add53 = add nsw i32 %j.0, 1, !taffo.info !32, !taffo.constinfo !28
  %add54 = add nsw i32 %mul52, %add53
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds double, double* %V, i64 %idxprom55
  %9 = load double, double* %arrayidx56, align 8
  %10 = call double @llvm.fmuladd.f64(double 9.000000e-01, double %9, double %fneg), !taffo.info !23, !taffo.initweight !24, !taffo.constinfo !29
  br label %if.end

if.end:                                           ; preds = %if.then51, %land.lhs.true48, %if.else46
  %newValue.0 = phi double [ %10, %if.then51 ], [ %fneg, %land.lhs.true48 ], [ %fneg, %if.else46 ], !taffo.info !23, !taffo.initweight !34
  br label %if.end58

if.end58:                                         ; preds = %if.end, %if.then39
  %newValue.1 = phi double [ %8, %if.then39 ], [ %newValue.0, %if.end ], !taffo.info !23, !taffo.initweight !34
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then28
  %newValue.2 = phi double [ %6, %if.then28 ], [ %newValue.1, %if.end58 ], !taffo.info !23, !taffo.initweight !34
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then
  %newValue.3 = phi double [ %4, %if.then ], [ %newValue.2, %if.end59 ], !taffo.info !23, !taffo.initweight !34
  %mul61 = mul nsw i32 %i.0, %N
  %add62 = add nsw i32 %mul61, %j.0
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds double, double* %V, i64 %idxprom63
  store double %newValue.3, double* %arrayidx64, align 8, !taffo.info !23
  %sub66 = fsub double %newValue.3, %1, !taffo.info !23, !taffo.initweight !24
  %11 = call double @llvm.fabs.f64(double %sub66), !taffo.info !23, !taffo.initweight !35, !taffo.constinfo !28
  %12 = fmul double 0x41F0000000000000, %11, !taffo.info !23, !taffo.constinfo !28
  %13 = fptosi double %12 to i33, !taffo.info !23
  %14 = zext i32 %maxDiff.1.u0_32fixp to i33, !taffo.info !18
  %15 = icmp sgt i33 %13, %14, !taffo.info !36, !taffo.target !37
  br i1 %15, label %if.then68, label %if.end69, !taffo.info !23, !taffo.initweight !35, !taffo.target !37

if.then68:                                        ; preds = %if.end60
  %16 = fmul double 0x41F0000000000000, %11, !taffo.info !23, !taffo.constinfo !28
  %17 = fptoui double %16 to i32, !taffo.info !23
  br label %if.end69

if.end69:                                         ; preds = %if.end60, %if.then68
  %maxDiff.2.u0_32fixp = phi i32 [ %17, %if.then68 ], [ %maxDiff.1.u0_32fixp, %if.end60 ], !taffo.info !18
  br label %for.inc

for.inc:                                          ; preds = %if.end69
  %inc = add nsw i32 %j.0, 1, !taffo.info !32, !taffo.constinfo !28
  br label %for.cond4, !llvm.loop !38

for.end:                                          ; preds = %for.cond4
  br label %for.inc70

for.inc70:                                        ; preds = %for.end
  %inc71 = add nsw i32 %i.0, 1, !taffo.info !32, !taffo.constinfo !28
  br label %for.cond, !llvm.loop !40

for.end72:                                        ; preds = %for.cond
  %18 = zext i32 %maxDiff.0.u0_32fixp to i33, !taffo.info !18
  %19 = icmp slt i33 %18, 4294967, !taffo.info !36, !taffo.target !37
  br i1 %19, label %if.then74, label %if.end75, !taffo.info !23, !taffo.initweight !35, !taffo.target !37

if.then74:                                        ; preds = %for.end72
  br label %while.end

if.end75:                                         ; preds = %for.end72
  br label %while.body

while.end:                                        ; preds = %if.then74
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare !taffo.initweight !41 !taffo.funinfo !42 double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare !taffo.initweight !43 !taffo.funinfo !44 double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @policyIteration(i32 noundef %N, double* noundef %M_f, i32* noundef %P) #0 !taffo.start !14 !taffo.initweight !41 !taffo.funinfo !42 {
entry:
  %V.s8_24fixp = alloca [16 x i32], align 16, !taffo.info !45, !taffo.target !48
  %M.s2_30fixp = alloca [16 x i32], align 16, !taffo.info !49, !taffo.target !51
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.info !21
  %cmp = icmp slt i32 %i.0, %N, !taffo.info !21
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !21
  %cmp4 = icmp slt i32 %j.0, %N, !taffo.info !21
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %N
  %add = add nsw i32 %mul, %j.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double, double* %M_f, i64 %idxprom
  %.flt = load double, double* %arrayidx, align 8, !taffo.info !49, !taffo.initweight !35, !taffo.target !51
  %0 = fmul double 0x41D0000000000000, %.flt, !taffo.info !49, !taffo.target !51
  %.flt.fallback.s2_30fixp = fptosi double %0 to i32, !taffo.info !49, !taffo.target !51
  %mul6 = mul nsw i32 %i.0, %N
  %add7 = add nsw i32 %mul6, %j.0
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9.s2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s2_30fixp, i64 0, i64 %idxprom8, !taffo.info !49, !taffo.target !51
  store i32 %.flt.fallback.s2_30fixp, i32* %arrayidx9.s2_30fixp, align 8, !taffo.info !52, !taffo.target !51
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !32, !taffo.constinfo !28
  br label %for.cond3, !llvm.loop !53

for.end:                                          ; preds = %for.cond3
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.info !32, !taffo.constinfo !28
  br label %for.cond, !llvm.loop !54

for.end12:                                        ; preds = %for.cond
  br label %while.body

while.body:                                       ; preds = %if.end140, %for.end12
  %arraydecay.s2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s2_30fixp, i64 0, i64 0, !taffo.info !49, !taffo.target !51
  %arraydecay13.s8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %V.s8_24fixp, i64 0, i64 0, !taffo.info !45, !taffo.target !48
  call void @evaluateValueFunction.1_fixp(i32 %N, i32* %arraydecay.s2_30fixp, i32* %P, i32* %arraydecay13.s8_24fixp), !taffo.info !55, !taffo.constinfo !56, !taffo.target !48
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc136, %while.body
  %policyStable.0 = phi i32 [ 1, %while.body ], [ %policyStable.1, %for.inc136 ], !taffo.info !21
  %i14.0 = phi i32 [ 0, %while.body ], [ %inc137, %for.inc136 ], !taffo.info !21
  %cmp16 = icmp slt i32 %i14.0, %N, !taffo.info !21
  br i1 %cmp16, label %for.body17, label %for.end138

for.body17:                                       ; preds = %for.cond15
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc133, %for.body17
  %policyStable.1 = phi i32 [ %policyStable.0, %for.body17 ], [ %policyStable.2, %for.inc133 ], !taffo.info !21
  %j18.0 = phi i32 [ 0, %for.body17 ], [ %inc134, %for.inc133 ], !taffo.info !21
  %cmp20 = icmp slt i32 %j18.0, %N, !taffo.info !21
  br i1 %cmp20, label %for.body21, label %for.end135

for.body21:                                       ; preds = %for.cond19
  %mul22 = mul nsw i32 %i14.0, %N
  %add23 = add nsw i32 %mul22, %j18.0
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i32, i32* %P, i64 %idxprom24
  %1 = load i32, i32* %arrayidx25, align 4
  %mul27 = mul nsw i32 %i14.0, %N
  %add28 = add nsw i32 %mul27, %j18.0
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30.s2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s2_30fixp, i64 0, i64 %idxprom29, !taffo.info !49, !taffo.target !51
  %s2_30fixp21 = load i32, i32* %arrayidx30.s2_30fixp, align 8, !taffo.info !49, !taffo.target !51
  %fneg.s2_30fixp = sub i32 0, %s2_30fixp21, !taffo.info !57, !taffo.target !51
  %cmp31 = icmp sgt i32 %i14.0, 0, !taffo.info !25
  %2 = ashr i32 %fneg.s2_30fixp, 6, !taffo.info !57, !taffo.target !51
  br i1 %cmp31, label %if.then, label %if.end51

if.then:                                          ; preds = %for.body21
  %sub = sub nsw i32 %i14.0, 1, !taffo.info !26, !taffo.constinfo !28
  %mul33 = mul nsw i32 %sub, %N
  %add34 = add nsw i32 %mul33, %j18.0
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36.s8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %V.s8_24fixp, i64 0, i64 %idxprom35, !taffo.info !45, !taffo.target !48
  %s8_24fixp13 = load i32, i32* %arrayidx36.s8_24fixp, align 8, !taffo.info !45, !taffo.target !48
  %mul37 = mul nsw i32 %i14.0, %N
  %add38 = add nsw i32 %mul37, %j18.0
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40.s2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s2_30fixp, i64 0, i64 %idxprom39, !taffo.info !49, !taffo.target !51
  %s2_30fixp20 = load i32, i32* %arrayidx40.s2_30fixp, align 8, !taffo.info !49, !taffo.target !51
  %fneg41.s2_30fixp = sub i32 0, %s2_30fixp20, !taffo.info !57, !taffo.target !51
  %3 = ashr i32 %fneg41.s2_30fixp, 6, !taffo.info !57, !taffo.target !51
  %4 = zext i32 1932735283 to i64
  %5 = sext i32 %s8_24fixp13 to i64, !taffo.info !45, !taffo.target !48
  %6 = mul i64 %4, %5, !taffo.info !59
  %7 = ashr i64 %6, 31
  %8 = trunc i64 %7 to i32
  %s8_24fixp29 = add i32 %8, %3, !taffo.info !62
  %9 = sext i32 %s8_24fixp29 to i38, !taffo.info !62
  %10 = shl i38 %9, 6, !taffo.info !62
  %11 = sext i32 %fneg.s2_30fixp to i38, !taffo.info !57, !taffo.target !51
  %12 = icmp sgt i38 %10, %11, !taffo.info !63
  %13 = ashr i32 %fneg.s2_30fixp, 6, !taffo.info !57, !taffo.target !51
  br i1 %12, label %if.then44, label %if.end, !taffo.info !64, !taffo.initweight !35

if.then44:                                        ; preds = %if.then
  %mul45 = mul nsw i32 %i14.0, %N
  %add46 = add nsw i32 %mul45, %j18.0
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48.s2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s2_30fixp, i64 0, i64 %idxprom47, !taffo.info !49, !taffo.target !51
  %s2_30fixp19 = load i32, i32* %arrayidx48.s2_30fixp, align 8, !taffo.info !49, !taffo.target !51
  %fneg49.s2_30fixp = sub i32 0, %s2_30fixp19, !taffo.info !57, !taffo.target !51
  %14 = ashr i32 %fneg49.s2_30fixp, 6, !taffo.info !57, !taffo.target !51
  %15 = zext i32 1932735283 to i64
  %16 = sext i32 %s8_24fixp13 to i64, !taffo.info !45, !taffo.target !48
  %17 = mul i64 %15, %16, !taffo.info !59
  %18 = ashr i64 %17, 31
  %19 = trunc i64 %18 to i32
  %s8_24fixp28 = add i32 %19, %14, !taffo.info !62
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then44
  %bestAction.0 = phi i32 [ 1, %if.then44 ], [ %1, %if.then ], !taffo.info !32
  %bestValue.0.s8_24fixp = phi i32 [ %s8_24fixp28, %if.then44 ], [ %13, %if.then ], !taffo.info !62
  br label %if.end51

if.end51:                                         ; preds = %if.end, %for.body21
  %bestAction.1 = phi i32 [ %bestAction.0, %if.end ], [ %1, %for.body21 ], !taffo.info !32
  %bestValue.1.s8_24fixp = phi i32 [ %bestValue.0.s8_24fixp, %if.end ], [ %2, %for.body21 ], !taffo.info !62
  %sub52 = sub nsw i32 %N, 1, !taffo.constinfo !28
  %cmp53 = icmp slt i32 %i14.0, %sub52, !taffo.info !21
  br i1 %cmp53, label %if.then54, label %if.end76

if.then54:                                        ; preds = %if.end51
  %add56 = add nsw i32 %i14.0, 1, !taffo.info !32, !taffo.constinfo !28
  %mul57 = mul nsw i32 %add56, %N
  %add58 = add nsw i32 %mul57, %j18.0
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60.s8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %V.s8_24fixp, i64 0, i64 %idxprom59, !taffo.info !45, !taffo.target !48
  %s8_24fixp12 = load i32, i32* %arrayidx60.s8_24fixp, align 8, !taffo.info !45, !taffo.target !48
  %mul61 = mul nsw i32 %i14.0, %N
  %add62 = add nsw i32 %mul61, %j18.0
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64.s2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s2_30fixp, i64 0, i64 %idxprom63, !taffo.info !49, !taffo.target !51
  %s2_30fixp18 = load i32, i32* %arrayidx64.s2_30fixp, align 8, !taffo.info !49, !taffo.target !51
  %fneg65.s2_30fixp = sub i32 0, %s2_30fixp18, !taffo.info !57, !taffo.target !51
  %20 = ashr i32 %fneg65.s2_30fixp, 6, !taffo.info !57, !taffo.target !51
  %21 = zext i32 1932735283 to i64
  %22 = sext i32 %s8_24fixp12 to i64, !taffo.info !45, !taffo.target !48
  %23 = mul i64 %21, %22, !taffo.info !59
  %24 = ashr i64 %23, 31
  %25 = trunc i64 %24 to i32
  %s8_24fixp27 = add i32 %25, %20, !taffo.info !62
  %26 = icmp sgt i32 %s8_24fixp27, %bestValue.1.s8_24fixp, !taffo.info !63
  br i1 %26, label %if.then68, label %if.end75, !taffo.info !64, !taffo.initweight !35

if.then68:                                        ; preds = %if.then54
  %mul69 = mul nsw i32 %i14.0, %N
  %add70 = add nsw i32 %mul69, %j18.0
  %idxprom71 = sext i32 %add70 to i64
  %arrayidx72.s2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s2_30fixp, i64 0, i64 %idxprom71, !taffo.info !49, !taffo.target !51
  %s2_30fixp17 = load i32, i32* %arrayidx72.s2_30fixp, align 8, !taffo.info !49, !taffo.target !51
  %fneg73.s2_30fixp = sub i32 0, %s2_30fixp17, !taffo.info !57, !taffo.target !51
  %27 = ashr i32 %fneg73.s2_30fixp, 6, !taffo.info !57, !taffo.target !51
  %28 = zext i32 1932735283 to i64
  %29 = sext i32 %s8_24fixp12 to i64, !taffo.info !45, !taffo.target !48
  %30 = mul i64 %28, %29, !taffo.info !59
  %31 = ashr i64 %30, 31
  %32 = trunc i64 %31 to i32
  %s8_24fixp26 = add i32 %32, %27, !taffo.info !62
  br label %if.end75

if.end75:                                         ; preds = %if.then54, %if.then68
  %bestAction.2 = phi i32 [ 2, %if.then68 ], [ %bestAction.1, %if.then54 ], !taffo.info !65
  %bestValue.2.s8_24fixp = phi i32 [ %s8_24fixp26, %if.then68 ], [ %bestValue.1.s8_24fixp, %if.then54 ], !taffo.info !62
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end51
  %bestAction.3 = phi i32 [ %bestAction.2, %if.end75 ], [ %bestAction.1, %if.end51 ], !taffo.info !65
  %bestValue.3.s8_24fixp = phi i32 [ %bestValue.2.s8_24fixp, %if.end75 ], [ %bestValue.1.s8_24fixp, %if.end51 ], !taffo.info !62
  %cmp77 = icmp sgt i32 %j18.0, 0, !taffo.info !25
  br i1 %cmp77, label %if.then78, label %if.end100

if.then78:                                        ; preds = %if.end76
  %mul80 = mul nsw i32 %i14.0, %N
  %sub81 = sub nsw i32 %j18.0, 1, !taffo.info !26, !taffo.constinfo !28
  %add82 = add nsw i32 %mul80, %sub81
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84.s8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %V.s8_24fixp, i64 0, i64 %idxprom83, !taffo.info !45, !taffo.target !48
  %s8_24fixp11 = load i32, i32* %arrayidx84.s8_24fixp, align 8, !taffo.info !45, !taffo.target !48
  %mul85 = mul nsw i32 %i14.0, %N
  %add86 = add nsw i32 %mul85, %j18.0
  %idxprom87 = sext i32 %add86 to i64
  %arrayidx88.s2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s2_30fixp, i64 0, i64 %idxprom87, !taffo.info !49, !taffo.target !51
  %s2_30fixp16 = load i32, i32* %arrayidx88.s2_30fixp, align 8, !taffo.info !49, !taffo.target !51
  %fneg89.s2_30fixp = sub i32 0, %s2_30fixp16, !taffo.info !57, !taffo.target !51
  %33 = ashr i32 %fneg89.s2_30fixp, 6, !taffo.info !57, !taffo.target !51
  %34 = zext i32 1932735283 to i64
  %35 = sext i32 %s8_24fixp11 to i64, !taffo.info !45, !taffo.target !48
  %36 = mul i64 %34, %35, !taffo.info !59
  %37 = ashr i64 %36, 31
  %38 = trunc i64 %37 to i32
  %s8_24fixp25 = add i32 %38, %33, !taffo.info !62
  %39 = icmp sgt i32 %s8_24fixp25, %bestValue.3.s8_24fixp, !taffo.info !63
  br i1 %39, label %if.then92, label %if.end99, !taffo.info !64, !taffo.initweight !35

if.then92:                                        ; preds = %if.then78
  %mul93 = mul nsw i32 %i14.0, %N
  %add94 = add nsw i32 %mul93, %j18.0
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96.s2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s2_30fixp, i64 0, i64 %idxprom95, !taffo.info !49, !taffo.target !51
  %s2_30fixp15 = load i32, i32* %arrayidx96.s2_30fixp, align 8, !taffo.info !49, !taffo.target !51
  %fneg97.s2_30fixp = sub i32 0, %s2_30fixp15, !taffo.info !57, !taffo.target !51
  %40 = ashr i32 %fneg97.s2_30fixp, 6, !taffo.info !57, !taffo.target !51
  %41 = zext i32 1932735283 to i64
  %42 = sext i32 %s8_24fixp11 to i64, !taffo.info !45, !taffo.target !48
  %43 = mul i64 %41, %42, !taffo.info !59
  %44 = ashr i64 %43, 31
  %45 = trunc i64 %44 to i32
  %s8_24fixp24 = add i32 %45, %40, !taffo.info !62
  br label %if.end99

if.end99:                                         ; preds = %if.then78, %if.then92
  %bestAction.4 = phi i32 [ 3, %if.then92 ], [ %bestAction.3, %if.then78 ], !taffo.info !67
  %bestValue.4.s8_24fixp = phi i32 [ %s8_24fixp24, %if.then92 ], [ %bestValue.3.s8_24fixp, %if.then78 ], !taffo.info !62
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.end76
  %bestAction.5 = phi i32 [ %bestAction.4, %if.end99 ], [ %bestAction.3, %if.end76 ], !taffo.info !67
  %bestValue.5.s8_24fixp = phi i32 [ %bestValue.4.s8_24fixp, %if.end99 ], [ %bestValue.3.s8_24fixp, %if.end76 ], !taffo.info !62
  %sub101 = sub nsw i32 %N, 1, !taffo.constinfo !28
  %cmp102 = icmp slt i32 %j18.0, %sub101, !taffo.info !21
  br i1 %cmp102, label %if.then103, label %if.end125

if.then103:                                       ; preds = %if.end100
  %mul105 = mul nsw i32 %i14.0, %N
  %add106 = add nsw i32 %j18.0, 1, !taffo.info !32, !taffo.constinfo !28
  %add107 = add nsw i32 %mul105, %add106
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109.s8_24fixp = getelementptr inbounds [16 x i32], [16 x i32]* %V.s8_24fixp, i64 0, i64 %idxprom108, !taffo.info !45, !taffo.target !48
  %s8_24fixp = load i32, i32* %arrayidx109.s8_24fixp, align 8, !taffo.info !45, !taffo.target !48
  %mul110 = mul nsw i32 %i14.0, %N
  %add111 = add nsw i32 %mul110, %j18.0
  %idxprom112 = sext i32 %add111 to i64
  %arrayidx113.s2_30fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s2_30fixp, i64 0, i64 %idxprom112, !taffo.info !49, !taffo.target !51
  %s2_30fixp14 = load i32, i32* %arrayidx113.s2_30fixp, align 8, !taffo.info !49, !taffo.target !51
  %fneg114.s2_30fixp = sub i32 0, %s2_30fixp14, !taffo.info !57, !taffo.target !51
  %46 = ashr i32 %fneg114.s2_30fixp, 6, !taffo.info !57, !taffo.target !51
  %47 = zext i32 1932735283 to i64
  %48 = sext i32 %s8_24fixp to i64, !taffo.info !45, !taffo.target !48
  %49 = mul i64 %47, %48, !taffo.info !59
  %50 = ashr i64 %49, 31
  %51 = trunc i64 %50 to i32
  %s8_24fixp23 = add i32 %51, %46, !taffo.info !62
  %52 = icmp sgt i32 %s8_24fixp23, %bestValue.5.s8_24fixp, !taffo.info !63
  br i1 %52, label %if.then117, label %if.end124, !taffo.info !64, !taffo.initweight !35

if.then117:                                       ; preds = %if.then103
  br label %if.end124

if.end124:                                        ; preds = %if.then103, %if.then117
  %bestAction.6 = phi i32 [ 4, %if.then117 ], [ %bestAction.5, %if.then103 ], !taffo.info !69
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.end100
  %bestAction.7 = phi i32 [ %bestAction.6, %if.end124 ], [ %bestAction.5, %if.end100 ], !taffo.info !69
  %cmp126 = icmp ne i32 %bestAction.7, %1, !taffo.info !21
  br i1 %cmp126, label %if.then127, label %if.end128

if.then127:                                       ; preds = %if.end125
  br label %if.end128

if.end128:                                        ; preds = %if.then127, %if.end125
  %policyStable.2 = phi i32 [ 0, %if.then127 ], [ %policyStable.1, %if.end125 ], !taffo.info !21
  %mul129 = mul nsw i32 %i14.0, %N
  %add130 = add nsw i32 %mul129, %j18.0
  %idxprom131 = sext i32 %add130 to i64
  %arrayidx132 = getelementptr inbounds i32, i32* %P, i64 %idxprom131
  store i32 %bestAction.7, i32* %arrayidx132, align 4
  br label %for.inc133

for.inc133:                                       ; preds = %if.end128
  %inc134 = add nsw i32 %j18.0, 1, !taffo.info !32, !taffo.constinfo !28
  br label %for.cond19, !llvm.loop !71

for.end135:                                       ; preds = %for.cond19
  br label %for.inc136

for.inc136:                                       ; preds = %for.end135
  %inc137 = add nsw i32 %i14.0, 1, !taffo.info !32, !taffo.constinfo !28
  br label %for.cond15, !llvm.loop !72

for.end138:                                       ; preds = %for.cond15
  %tobool = icmp ne i32 %policyStable.0, 0, !taffo.info !21
  br i1 %tobool, label %if.then139, label %if.end140

if.then139:                                       ; preds = %for.end138
  br label %while.end

if.end140:                                        ; preds = %for.end138
  br label %while.body

while.end:                                        ; preds = %if.then139
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !73 !taffo.funinfo !73 {
entry:
  %M = alloca [16 x double], align 16
  %P = alloca [16 x i32], align 16
  %0 = bitcast [16 x double]* %M to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([16 x double]* @__const.main.M to i8*), i64 128, i1 false), !taffo.constinfo !56
  %1 = bitcast [16 x i32]* %P to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 64, i1 false), !taffo.constinfo !56
  %arraydecay = getelementptr inbounds [16 x double], [16 x double]* %M, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [16 x i32], [16 x i32]* %P, i64 0, i64 0
  call void @policyIteration(i32 noundef 4, double* noundef %arraydecay, i32* noundef %arraydecay1), !taffo.constinfo !74
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %cmp = icmp slt i32 %i.0, 4
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp3 = icmp slt i32 %j.0, 4
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %mul = mul nsw i32 %i.0, 4, !taffo.constinfo !28
  %add = add nsw i32 %mul, %j.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %P, i64 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 noundef %2), !taffo.constinfo !75
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !28
  br label %for.cond2, !llvm.loop !76

for.end:                                          ; preds = %for.cond2
  %call6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)), !taffo.constinfo !28
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %i.0, 1, !taffo.constinfo !28
  br label %for.cond, !llvm.loop !77

for.end9:                                         ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare !taffo.initweight !15 !taffo.funinfo !17 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare !taffo.initweight !15 !taffo.funinfo !17 void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare !taffo.initweight !43 !taffo.funinfo !44 i32 @printf(i8* noundef, ...) #4

; Function Attrs: noinline nounwind uwtable
define internal void @evaluateValueFunction.1_fixp(i32 noundef %N, i32* noundef %M.s2_30fixp, i32* noundef %P, i32* noundef %V.s8_24fixp) #0 !taffo.start !14 !taffo.initweight !78 !taffo.funinfo !79 !taffo.sourceFunction !80 {
entry:
  br label %while.body

while.body:                                       ; preds = %if.end75, %entry
  %0 = lshr i32 0, 7
  br label %for.cond

for.cond:                                         ; preds = %for.inc70, %while.body
  %maxDiff.0.u7_25fixp = phi i32 [ %0, %while.body ], [ %maxDiff.1.u7_25fixp, %for.inc70 ], !taffo.info !81
  %i.0 = phi i32 [ 0, %while.body ], [ %inc71, %for.inc70 ], !taffo.info !21
  %cmp = icmp slt i32 %i.0, %N, !taffo.info !21
  br i1 %cmp, label %for.body, label %for.end72

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %maxDiff.1.u7_25fixp = phi i32 [ %maxDiff.0.u7_25fixp, %for.body ], [ %maxDiff.2.u7_25fixp, %for.inc ], !taffo.info !81
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !21
  %cmp5 = icmp slt i32 %j.0, %N, !taffo.info !21
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %mul = mul nsw i32 %i.0, %N
  %add = add nsw i32 %mul, %j.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %P, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %mul8 = mul nsw i32 %i.0, %N
  %add9 = add nsw i32 %mul8, %j.0
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11.s8_24fixp = getelementptr inbounds i32, i32* %V.s8_24fixp, i64 %idxprom10, !taffo.info !45
  %s8_24fixp = load i32, i32* %arrayidx11.s8_24fixp, align 8, !taffo.info !84
  %mul13 = mul nsw i32 %i.0, %N
  %add14 = add nsw i32 %mul13, %j.0
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16.s2_30fixp = getelementptr inbounds i32, i32* %M.s2_30fixp, i64 %idxprom15, !taffo.info !49
  %s2_30fixp = load i32, i32* %arrayidx16.s2_30fixp, align 8, !taffo.info !49
  %fneg.s2_30fixp = sub i32 0, %s2_30fixp, !taffo.info !85
  %cmp17 = icmp eq i32 %1, 1, !taffo.info !21
  br i1 %cmp17, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body6
  %cmp18 = icmp sgt i32 %i.0, 0, !taffo.info !25
  br i1 %cmp18, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %sub = sub nsw i32 %i.0, 1, !taffo.info !26, !taffo.constinfo !28
  %mul19 = mul nsw i32 %sub, %N
  %add20 = add nsw i32 %mul19, %j.0
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22.s8_24fixp = getelementptr inbounds i32, i32* %V.s8_24fixp, i64 %idxprom21, !taffo.info !45
  %s8_24fixp13 = load i32, i32* %arrayidx22.s8_24fixp, align 8, !taffo.info !45
  %2 = ashr i32 %fneg.s2_30fixp, 6, !taffo.info !85
  %3 = zext i32 1932735283 to i64
  %4 = sext i32 %s8_24fixp13 to i64, !taffo.info !45
  %5 = mul i64 %3, %4, !taffo.info !59
  %6 = ashr i64 %5, 31
  %7 = trunc i64 %6 to i32
  %s8_24fixp20 = add i32 %7, %2, !taffo.info !62
  br label %if.end60

if.else:                                          ; preds = %land.lhs.true, %for.body6
  %cmp24 = icmp eq i32 %1, 2, !taffo.info !21
  br i1 %cmp24, label %land.lhs.true25, label %if.else35

land.lhs.true25:                                  ; preds = %if.else
  %sub26 = sub nsw i32 %N, 1, !taffo.constinfo !28
  %cmp27 = icmp slt i32 %i.0, %sub26, !taffo.info !21
  br i1 %cmp27, label %if.then28, label %if.else35

if.then28:                                        ; preds = %land.lhs.true25
  %add29 = add nsw i32 %i.0, 1, !taffo.info !32, !taffo.constinfo !28
  %mul30 = mul nsw i32 %add29, %N
  %add31 = add nsw i32 %mul30, %j.0
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33.s8_24fixp = getelementptr inbounds i32, i32* %V.s8_24fixp, i64 %idxprom32, !taffo.info !45
  %s8_24fixp14 = load i32, i32* %arrayidx33.s8_24fixp, align 8, !taffo.info !45
  %8 = ashr i32 %fneg.s2_30fixp, 6, !taffo.info !85
  %9 = zext i32 1932735283 to i64
  %10 = sext i32 %s8_24fixp14 to i64, !taffo.info !45
  %11 = mul i64 %9, %10, !taffo.info !59
  %12 = ashr i64 %11, 31
  %13 = trunc i64 %12 to i32
  %s8_24fixp19 = add i32 %13, %8, !taffo.info !62
  br label %if.end59

if.else35:                                        ; preds = %land.lhs.true25, %if.else
  %cmp36 = icmp eq i32 %1, 3, !taffo.info !21
  br i1 %cmp36, label %land.lhs.true37, label %if.else46

land.lhs.true37:                                  ; preds = %if.else35
  %cmp38 = icmp sgt i32 %j.0, 0, !taffo.info !25
  br i1 %cmp38, label %if.then39, label %if.else46

if.then39:                                        ; preds = %land.lhs.true37
  %mul40 = mul nsw i32 %i.0, %N
  %sub41 = sub nsw i32 %j.0, 1, !taffo.info !26, !taffo.constinfo !28
  %add42 = add nsw i32 %mul40, %sub41
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44.s8_24fixp = getelementptr inbounds i32, i32* %V.s8_24fixp, i64 %idxprom43, !taffo.info !45
  %s8_24fixp15 = load i32, i32* %arrayidx44.s8_24fixp, align 8, !taffo.info !45
  %14 = ashr i32 %fneg.s2_30fixp, 6, !taffo.info !85
  %15 = zext i32 1932735283 to i64
  %16 = sext i32 %s8_24fixp15 to i64, !taffo.info !45
  %17 = mul i64 %15, %16, !taffo.info !59
  %18 = ashr i64 %17, 31
  %19 = trunc i64 %18 to i32
  %s8_24fixp18 = add i32 %19, %14, !taffo.info !62
  br label %if.end58

if.else46:                                        ; preds = %land.lhs.true37, %if.else35
  %cmp47 = icmp eq i32 %1, 4, !taffo.info !21
  %20 = ashr i32 %fneg.s2_30fixp, 6, !taffo.info !85
  br i1 %cmp47, label %land.lhs.true48, label %if.end

land.lhs.true48:                                  ; preds = %if.else46
  %sub49 = sub nsw i32 %N, 1, !taffo.constinfo !28
  %cmp50 = icmp slt i32 %j.0, %sub49, !taffo.info !21
  %21 = ashr i32 %fneg.s2_30fixp, 6, !taffo.info !85
  br i1 %cmp50, label %if.then51, label %if.end

if.then51:                                        ; preds = %land.lhs.true48
  %mul52 = mul nsw i32 %i.0, %N
  %add53 = add nsw i32 %j.0, 1, !taffo.info !32, !taffo.constinfo !28
  %add54 = add nsw i32 %mul52, %add53
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56.s8_24fixp = getelementptr inbounds i32, i32* %V.s8_24fixp, i64 %idxprom55, !taffo.info !45
  %s8_24fixp16 = load i32, i32* %arrayidx56.s8_24fixp, align 8, !taffo.info !45
  %22 = ashr i32 %fneg.s2_30fixp, 6, !taffo.info !85
  %23 = zext i32 1932735283 to i64
  %24 = sext i32 %s8_24fixp16 to i64, !taffo.info !45
  %25 = mul i64 %23, %24, !taffo.info !59
  %26 = ashr i64 %25, 31
  %27 = trunc i64 %26 to i32
  %s8_24fixp17 = add i32 %27, %22, !taffo.info !62
  br label %if.end

if.end:                                           ; preds = %if.then51, %land.lhs.true48, %if.else46
  %newValue.0.s8_24fixp = phi i32 [ %s8_24fixp17, %if.then51 ], [ %21, %land.lhs.true48 ], [ %20, %if.else46 ], !taffo.info !62
  br label %if.end58

if.end58:                                         ; preds = %if.end, %if.then39
  %newValue.1.s8_24fixp = phi i32 [ %s8_24fixp18, %if.then39 ], [ %newValue.0.s8_24fixp, %if.end ], !taffo.info !62
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then28
  %newValue.2.s8_24fixp = phi i32 [ %s8_24fixp19, %if.then28 ], [ %newValue.1.s8_24fixp, %if.end58 ], !taffo.info !62
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then
  %newValue.3.s8_24fixp = phi i32 [ %s8_24fixp20, %if.then ], [ %newValue.2.s8_24fixp, %if.end59 ], !taffo.info !62
  %mul61 = mul nsw i32 %i.0, %N
  %add62 = add nsw i32 %mul61, %j.0
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64.s8_24fixp = getelementptr inbounds i32, i32* %V.s8_24fixp, i64 %idxprom63, !taffo.info !45
  store i32 %newValue.3.s8_24fixp, i32* %arrayidx64.s8_24fixp, align 8, !taffo.info !23
  %sub66.s8_24fixp = sub i32 %newValue.3.s8_24fixp, %s8_24fixp, !taffo.info !86
  %28 = sitofp i32 %sub66.s8_24fixp to double, !taffo.info !86
  %29 = fdiv double %28, 0x4170000000000000, !taffo.info !86
  %.flt = call double @llvm.fabs.f64(double %29), !taffo.info !88, !taffo.initweight !35, !taffo.constinfo !28
  %30 = fmul double 0x4170000000000000, %.flt, !taffo.info !88, !taffo.constinfo !28
  %.flt.fallback.s8_24fixp = fptosi double %30 to i32, !taffo.info !88
  %31 = sext i32 %.flt.fallback.s8_24fixp to i34, !taffo.info !88
  %32 = shl i34 %31, 1, !taffo.info !88
  %33 = zext i32 %maxDiff.1.u7_25fixp to i34, !taffo.info !81
  %34 = icmp sgt i34 %32, %33, !taffo.info !90, !taffo.target !37
  br i1 %34, label %if.then68, label %if.end69, !taffo.info !23, !taffo.initweight !35, !taffo.target !37

if.then68:                                        ; preds = %if.end60
  %35 = shl i32 %.flt.fallback.s8_24fixp, 1, !taffo.info !88
  br label %if.end69

if.end69:                                         ; preds = %if.end60, %if.then68
  %maxDiff.2.u7_25fixp = phi i32 [ %35, %if.then68 ], [ %maxDiff.1.u7_25fixp, %if.end60 ], !taffo.info !81
  br label %for.inc

for.inc:                                          ; preds = %if.end69
  %inc = add nsw i32 %j.0, 1, !taffo.info !32, !taffo.constinfo !28
  br label %for.cond4, !llvm.loop !91

for.end:                                          ; preds = %for.cond4
  br label %for.inc70

for.inc70:                                        ; preds = %for.end
  %inc71 = add nsw i32 %i.0, 1, !taffo.info !32, !taffo.constinfo !28
  br label %for.cond, !llvm.loop !92

for.end72:                                        ; preds = %for.cond
  %36 = zext i32 %maxDiff.0.u7_25fixp to i33, !taffo.info !81
  %37 = lshr i33 4294967, 7
  %38 = icmp slt i33 %36, %37, !taffo.info !90, !taffo.target !37
  br i1 %38, label %if.then74, label %if.end75, !taffo.info !23, !taffo.initweight !35, !taffo.target !37

if.then74:                                        ; preds = %for.end72
  br label %while.end

if.end75:                                         ; preds = %for.end72
  br label %while.body

while.end:                                        ; preds = %if.then74
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double -1.000000e+00, double 0.000000e+00}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.210000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.000000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.000000e+01}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 15.0.7"}
!14 = !{i1 true}
!15 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!16 = distinct !{null}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = !{!19, !20, i1 false, i2 1}
!19 = !{!"fixp", i32 32, i32 32}
!20 = !{double 0.000000e+00, double 0.000000e+00}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double 0.000000e+00, double 1.000000e+00}
!23 = !{i1 false, i1 false, i1 false, i2 1}
!24 = !{i32 2}
!25 = !{i1 false, !20, i1 false, i2 0}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double -1.000000e+00, double -1.000000e+00}
!28 = !{i1 false, i1 false}
!29 = !{!30, i1 false, i1 false, i1 false}
!30 = !{i1 false, !31, i1 false, i2 0}
!31 = !{double 9.000000e-01, double 9.000000e-01}
!32 = !{i1 false, !33, i1 false, i2 0}
!33 = !{double 1.000000e+00, double 1.000000e+00}
!34 = !{i32 0}
!35 = !{i32 3}
!36 = !{!19, i1 false, i1 false, i2 1}
!37 = !{!"max_difference"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = !{i32 -1, i32 -1, i32 -1}
!42 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!43 = !{i32 -1}
!44 = !{i32 0, i1 false}
!45 = !{!46, !47, i1 false, i2 -1}
!46 = !{!"fixp", i32 -32, i32 24}
!47 = !{double -1.000000e+02, double 0.000000e+00}
!48 = !{!"state_value_function"}
!49 = !{!50, !1, i1 false, i2 -1}
!50 = !{!"fixp", i32 -32, i32 30}
!51 = !{!"rewards_matrix"}
!52 = !{i1 false, !1, i1 false, i2 -1}
!53 = distinct !{!53, !39}
!54 = distinct !{!54, !39}
!55 = !{i1 false, !47, i1 false, i2 -1}
!56 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!57 = !{!50, !58, i1 false, i2 -1}
!58 = !{double -0.000000e+00, double 1.000000e+00}
!59 = !{!60, !61, i1 false, i2 1}
!60 = !{!"fixp", i32 -64, i32 55}
!61 = !{double -9.000000e+01, double 1.000000e+00}
!62 = !{!46, !61, i1 false, i2 1}
!63 = !{!46, i1 false, i1 false, i2 1}
!64 = !{i1 false, !22, i1 false, i2 1}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 1.000000e+00, double 2.000000e+00}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 1.000000e+00, double 3.000000e+00}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 1.000000e+00, double 4.000000e+00}
!71 = distinct !{!71, !39}
!72 = distinct !{!72, !39}
!73 = !{}
!74 = !{i1 false, i1 false, i1 false, i1 false}
!75 = !{i1 false, i1 false, i1 false}
!76 = distinct !{!76, !39}
!77 = distinct !{!77, !39}
!78 = !{i32 -1, i32 2, i32 -1, i32 2}
!79 = !{i32 0, i1 false, i32 1, !49, i32 0, i1 false, i32 1, !45}
!80 = !{void (i32, double*, i32*, double*)* @evaluateValueFunction}
!81 = !{!82, !83, i1 false, i2 1}
!82 = !{!"fixp", i32 32, i32 25}
!83 = !{double 0.000000e+00, double 1.010000e+02}
!84 = !{!46, !47, i1 false, i2 1}
!85 = !{!50, !58, i1 false, i2 1}
!86 = !{!46, !87, i1 false, i2 1}
!87 = !{double -9.000000e+01, double 1.010000e+02}
!88 = !{!46, !89, i1 false, i2 1}
!89 = !{double 9.000000e+01, double 1.010000e+02}
!90 = !{!82, i1 false, i1 false, i2 1}
!91 = distinct !{!91, !39}
!92 = distinct !{!92, !39}
