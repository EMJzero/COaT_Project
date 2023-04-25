; ModuleID = '/tmp/tmp.czsH8g0Lyl/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.4 = private unnamed_addr constant [10 x i8] c"%d %e %e\0A\00", align 1, !taffo.info !0
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !2

; Function Attrs: noinline nounwind uwtable
define dso_local signext i16 @FFT(i16 noundef signext %dir, i64 noundef %m, float* noundef %x, float* noundef %y) #0 !taffo.initweight !10 !taffo.equivalentChild !11 !taffo.funinfo !12 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ]
  %n.0 = phi i64 [ 1, %entry ], [ %mul, %for.inc ]
  %cmp = icmp slt i64 %i.0, %m
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i64 %n.0, 2, !taffo.constinfo !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i64 %i.0, 1, !taffo.constinfo !13
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %shr = ashr i64 %n.0, 1, !taffo.constinfo !13
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc26, %for.end
  %j.0 = phi i64 [ 0, %for.end ], [ %add, %for.inc26 ]
  %i.1 = phi i64 [ 0, %for.end ], [ %inc27, %for.inc26 ]
  %sub = sub nsw i64 %n.0, 1, !taffo.constinfo !13
  %cmp13 = icmp slt i64 %i.1, %sub
  br i1 %cmp13, label %for.body14, label %for.end28

for.body14:                                       ; preds = %for.cond12
  %cmp15 = icmp slt i64 %i.1, %j.0
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body14
  %arrayidx = getelementptr inbounds float, float* %x, i64 %i.1, !taffo.info !16, !taffo.initweight !17
  %0 = load float, float* %arrayidx, align 4, !taffo.info !16, !taffo.initweight !18
  %arrayidx16 = getelementptr inbounds float, float* %y, i64 %i.1, !taffo.info !16, !taffo.initweight !17
  %1 = load float, float* %arrayidx16, align 4, !taffo.info !16, !taffo.initweight !18
  %arrayidx17 = getelementptr inbounds float, float* %x, i64 %j.0, !taffo.info !16, !taffo.initweight !17
  %2 = load float, float* %arrayidx17, align 4, !taffo.info !16, !taffo.initweight !18
  %arrayidx18 = getelementptr inbounds float, float* %x, i64 %i.1, !taffo.info !16, !taffo.initweight !17
  store float %2, float* %arrayidx18, align 4, !taffo.info !16
  %arrayidx19 = getelementptr inbounds float, float* %y, i64 %j.0, !taffo.info !16, !taffo.initweight !17
  %3 = load float, float* %arrayidx19, align 4, !taffo.info !16, !taffo.initweight !18
  %arrayidx20 = getelementptr inbounds float, float* %y, i64 %i.1, !taffo.info !16, !taffo.initweight !17
  store float %3, float* %arrayidx20, align 4, !taffo.info !16
  %arrayidx21 = getelementptr inbounds float, float* %x, i64 %j.0, !taffo.info !16, !taffo.initweight !17
  store float %0, float* %arrayidx21, align 4, !taffo.info !16
  %arrayidx22 = getelementptr inbounds float, float* %y, i64 %j.0, !taffo.info !16, !taffo.initweight !17
  store float %1, float* %arrayidx22, align 4, !taffo.info !16
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %k.0 = phi i64 [ %shr, %if.end ], [ %shr25, %while.body ]
  %j.1 = phi i64 [ %j.0, %if.end ], [ %sub24, %while.body ]
  %cmp23 = icmp sle i64 %k.0, %j.1
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %sub24 = sub nsw i64 %j.1, %k.0
  %shr25 = ashr i64 %k.0, 1, !taffo.constinfo !13
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %add = add nsw i64 %j.1, %k.0
  br label %for.inc26

for.inc26:                                        ; preds = %while.end
  %inc27 = add nsw i64 %i.1, 1, !taffo.constinfo !13
  br label %for.cond12, !llvm.loop !20

for.end28:                                        ; preds = %for.cond12
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc80, %for.end28
  %l.0 = phi i64 [ 0, %for.end28 ], [ %inc81, %for.inc80 ]
  %l2.0 = phi i64 [ 1, %for.end28 ], [ %shl, %for.inc80 ]
  %c1.0 = phi float [ -1.000000e+00, %for.end28 ], [ %call79, %for.inc80 ], !taffo.info !16, !taffo.initweight !21
  %c2.0 = phi float [ 0.000000e+00, %for.end28 ], [ %c2.1, %for.inc80 ], !taffo.info !16, !taffo.initweight !21
  %cmp30 = icmp slt i64 %l.0, %m
  br i1 %cmp30, label %for.body31, label %for.end82

for.body31:                                       ; preds = %for.cond29
  %shl = shl i64 %l2.0, 1, !taffo.constinfo !13
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc65, %for.body31
  %j.2 = phi i64 [ 0, %for.body31 ], [ %inc66, %for.inc65 ]
  %u1.0 = phi float [ 1.000000e+00, %for.body31 ], [ %14, %for.inc65 ], !taffo.info !16, !taffo.initweight !21
  %u2.0 = phi float [ 0.000000e+00, %for.body31 ], [ %15, %for.inc65 ], !taffo.info !16, !taffo.initweight !21
  %cmp33 = icmp slt i64 %j.2, %l2.0
  br i1 %cmp33, label %for.body34, label %for.end67

for.body34:                                       ; preds = %for.cond32
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc57, %for.body34
  %i.2 = phi i64 [ %j.2, %for.body34 ], [ %add58, %for.inc57 ]
  %cmp36 = icmp slt i64 %i.2, %n.0
  br i1 %cmp36, label %for.body37, label %for.end59

for.body37:                                       ; preds = %for.cond35
  %add38 = add nsw i64 %i.2, %l2.0
  %arrayidx39 = getelementptr inbounds float, float* %x, i64 %add38, !taffo.info !16, !taffo.initweight !17
  %4 = load float, float* %arrayidx39, align 4, !taffo.info !16, !taffo.initweight !18
  %arrayidx41 = getelementptr inbounds float, float* %y, i64 %add38, !taffo.info !16, !taffo.initweight !17
  %5 = load float, float* %arrayidx41, align 4, !taffo.info !16, !taffo.initweight !18
  %mul42 = fmul float %u2.0, %5, !taffo.info !16, !taffo.initweight !17
  %neg = fneg float %mul42, !taffo.info !16, !taffo.initweight !18
  %6 = call float @llvm.fmuladd.f32(float %u1.0, float %4, float %neg), !taffo.info !16, !taffo.initweight !17, !taffo.constinfo !22
  %arrayidx43 = getelementptr inbounds float, float* %y, i64 %add38, !taffo.info !16, !taffo.initweight !17
  %7 = load float, float* %arrayidx43, align 4, !taffo.info !16, !taffo.initweight !18
  %arrayidx45 = getelementptr inbounds float, float* %x, i64 %add38, !taffo.info !16, !taffo.initweight !17
  %8 = load float, float* %arrayidx45, align 4, !taffo.info !16, !taffo.initweight !18
  %mul46 = fmul float %u2.0, %8, !taffo.info !16, !taffo.initweight !17
  %9 = call float @llvm.fmuladd.f32(float %u1.0, float %7, float %mul46), !taffo.info !16, !taffo.initweight !17, !taffo.constinfo !22
  %arrayidx47 = getelementptr inbounds float, float* %x, i64 %i.2, !taffo.info !16, !taffo.initweight !17
  %10 = load float, float* %arrayidx47, align 4, !taffo.info !16, !taffo.initweight !18
  %sub48 = fsub float %10, %6, !taffo.info !16, !taffo.initweight !17
  %arrayidx49 = getelementptr inbounds float, float* %x, i64 %add38, !taffo.info !16, !taffo.initweight !17
  store float %sub48, float* %arrayidx49, align 4, !taffo.info !16
  %arrayidx50 = getelementptr inbounds float, float* %y, i64 %i.2, !taffo.info !16, !taffo.initweight !17
  %11 = load float, float* %arrayidx50, align 4, !taffo.info !16, !taffo.initweight !18
  %sub51 = fsub float %11, %9, !taffo.info !16, !taffo.initweight !17
  %arrayidx52 = getelementptr inbounds float, float* %y, i64 %add38, !taffo.info !16, !taffo.initweight !17
  store float %sub51, float* %arrayidx52, align 4, !taffo.info !16
  %arrayidx53 = getelementptr inbounds float, float* %x, i64 %i.2, !taffo.info !16, !taffo.initweight !17
  %12 = load float, float* %arrayidx53, align 4, !taffo.info !16, !taffo.initweight !18
  %add54 = fadd float %12, %6, !taffo.info !16, !taffo.initweight !17
  store float %add54, float* %arrayidx53, align 4, !taffo.info !16
  %arrayidx55 = getelementptr inbounds float, float* %y, i64 %i.2, !taffo.info !16, !taffo.initweight !17
  %13 = load float, float* %arrayidx55, align 4, !taffo.info !16, !taffo.initweight !18
  %add56 = fadd float %13, %9, !taffo.info !16, !taffo.initweight !17
  store float %add56, float* %arrayidx55, align 4, !taffo.info !16
  br label %for.inc57

for.inc57:                                        ; preds = %for.body37
  %add58 = add nsw i64 %i.2, %shl
  br label %for.cond35, !llvm.loop !23

for.end59:                                        ; preds = %for.cond35
  %mul61 = fmul float %u2.0, %c2.0, !taffo.info !16, !taffo.initweight !17
  %neg62 = fneg float %mul61, !taffo.info !16, !taffo.initweight !18
  %14 = call float @llvm.fmuladd.f32(float %u1.0, float %c1.0, float %neg62), !taffo.info !16, !taffo.initweight !17, !taffo.constinfo !22
  %mul64 = fmul float %u2.0, %c1.0, !taffo.info !16, !taffo.initweight !17
  %15 = call float @llvm.fmuladd.f32(float %u1.0, float %c2.0, float %mul64), !taffo.info !16, !taffo.initweight !17, !taffo.constinfo !22
  br label %for.inc65

for.inc65:                                        ; preds = %for.end59
  %inc66 = add nsw i64 %j.2, 1, !taffo.constinfo !13
  br label %for.cond32, !llvm.loop !24

for.end67:                                        ; preds = %for.cond32
  %conv = fpext float %c1.0 to double, !taffo.info !16, !taffo.initweight !17
  %sub68 = fsub double 1.000000e+00, %conv, !taffo.info !16, !taffo.initweight !18, !taffo.constinfo !25
  %div = fdiv double %sub68, 2.000000e+00, !taffo.info !16, !taffo.initweight !28, !taffo.constinfo !29
  %conv69 = fptrunc double %div to float, !taffo.info !16, !taffo.initweight !32
  %call = call float @sqrtf(float noundef %conv69) #4, !taffo.info !16, !taffo.initweight !33, !taffo.constinfo !13
  %conv70 = sext i16 %dir to i32
  %cmp71 = icmp eq i32 %conv70, 1
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %for.end67
  %fneg = fneg float %call, !taffo.info !16, !taffo.initweight !17
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %for.end67
  %c2.1 = phi float [ %fneg, %if.then73 ], [ %call, %for.end67 ], !taffo.info !16, !taffo.initweight !21
  %conv75 = fpext float %c1.0 to double, !taffo.info !16, !taffo.initweight !17
  %add76 = fadd double 1.000000e+00, %conv75, !taffo.info !16, !taffo.initweight !18, !taffo.constinfo !25
  %div77 = fdiv double %add76, 2.000000e+00, !taffo.info !16, !taffo.initweight !28, !taffo.constinfo !29
  %conv78 = fptrunc double %div77 to float, !taffo.info !16, !taffo.initweight !32
  %call79 = call float @sqrtf(float noundef %conv78) #4, !taffo.info !16, !taffo.initweight !33, !taffo.constinfo !13
  br label %for.inc80

for.inc80:                                        ; preds = %if.end74
  %inc81 = add nsw i64 %l.0, 1, !taffo.constinfo !13
  br label %for.cond29, !llvm.loop !34

for.end82:                                        ; preds = %for.cond29
  %conv83 = sext i16 %dir to i32
  %cmp84 = icmp eq i32 %conv83, 1
  br i1 %cmp84, label %if.then86, label %if.end100

if.then86:                                        ; preds = %for.end82
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc97, %if.then86
  %i.3 = phi i64 [ 0, %if.then86 ], [ %inc98, %for.inc97 ]
  %cmp88 = icmp slt i64 %i.3, %n.0
  br i1 %cmp88, label %for.body90, label %for.end99

for.body90:                                       ; preds = %for.cond87
  %conv91 = sitofp i64 %n.0 to float
  %arrayidx92 = getelementptr inbounds float, float* %x, i64 %i.3, !taffo.info !16, !taffo.initweight !17
  %16 = load float, float* %arrayidx92, align 4, !taffo.info !16, !taffo.initweight !18
  %div93 = fdiv float %16, %conv91, !taffo.info !16, !taffo.initweight !28
  store float %div93, float* %arrayidx92, align 4, !taffo.info !16
  %conv94 = sitofp i64 %n.0 to float
  %arrayidx95 = getelementptr inbounds float, float* %y, i64 %i.3, !taffo.info !16, !taffo.initweight !17
  %17 = load float, float* %arrayidx95, align 4, !taffo.info !16, !taffo.initweight !18
  %div96 = fdiv float %17, %conv94, !taffo.info !16, !taffo.initweight !28
  store float %div96, float* %arrayidx95, align 4, !taffo.info !16
  br label %for.inc97

for.inc97:                                        ; preds = %for.body90
  %inc98 = add nsw i64 %i.3, 1, !taffo.constinfo !13
  br label %for.cond87, !llvm.loop !35

for.end99:                                        ; preds = %for.cond87
  br label %if.end100

if.end100:                                        ; preds = %for.end99, %for.end82
  ret i16 0
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare !taffo.initweight !36 !taffo.funinfo !37 float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nounwind
declare !taffo.initweight !38 !taffo.funinfo !39 float @sqrtf(float noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !40 !taffo.funinfo !40 !taffo.start !41 {
entry:
  %x.s3_29fixp = alloca [128 x i32], align 16, !taffo.info !42, !taffo.target !45
  %y.s3_29fixp = alloca [128 x i32], align 16, !taffo.info !42, !taffo.target !46
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !47
  %cmp = icmp slt i32 %i.0, 128, !taffo.info !49
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !51
  %arrayidx.s3_29fixp = getelementptr inbounds [128 x i32], [128 x i32]* %x.s3_29fixp, i64 0, i64 %idxprom, !taffo.info !42, !taffo.target !45
  store i32 0, i32* %arrayidx.s3_29fixp, align 4, !taffo.info !53, !taffo.constinfo !55, !taffo.target !45
  %idxprom3 = sext i32 %i.0 to i64, !taffo.info !51
  %arrayidx4.s3_29fixp = getelementptr inbounds [128 x i32], [128 x i32]* %y.s3_29fixp, i64 0, i64 %idxprom3, !taffo.info !42, !taffo.target !46
  store i32 0, i32* %arrayidx4.s3_29fixp, align 4, !taffo.info !53, !taffo.constinfo !55, !taffo.target !46
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !58, !taffo.constinfo !13
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  %arrayidx5.s3_29fixp = getelementptr inbounds [128 x i32], [128 x i32]* %x.s3_29fixp, i64 0, i64 0, !taffo.info !42, !taffo.target !45
  store i32 536870912, i32* %arrayidx5.s3_29fixp, align 16, !taffo.info !53, !taffo.constinfo !25, !taffo.target !45
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc13, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc14, %for.inc13 ], !taffo.info !61
  %cmp7 = icmp sle i32 %i.1, 10, !taffo.info !49
  br i1 %cmp7, label %for.body8, label %for.end15

for.body8:                                        ; preds = %for.cond6
  %idxprom9 = sext i32 %i.1 to i64, !taffo.info !63
  %arrayidx10.s3_29fixp = getelementptr inbounds [128 x i32], [128 x i32]* %x.s3_29fixp, i64 0, i64 %idxprom9, !taffo.info !42, !taffo.target !45
  store i32 536870912, i32* %arrayidx10.s3_29fixp, align 4, !taffo.info !53, !taffo.constinfo !25, !taffo.target !45
  %sub = sub nsw i32 128, %i.1, !taffo.info !65, !taffo.constinfo !13
  %idxprom11 = sext i32 %sub to i64, !taffo.info !65
  %arrayidx12.s3_29fixp = getelementptr inbounds [128 x i32], [128 x i32]* %x.s3_29fixp, i64 0, i64 %idxprom11, !taffo.info !42, !taffo.target !45
  store i32 536870912, i32* %arrayidx12.s3_29fixp, align 4, !taffo.info !53, !taffo.constinfo !25, !taffo.target !45
  br label %for.inc13

for.inc13:                                        ; preds = %for.body8
  %inc14 = add nsw i32 %i.1, 1, !taffo.info !67, !taffo.constinfo !13
  br label %for.cond6, !llvm.loop !69

for.end15:                                        ; preds = %for.cond6
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc24, %for.end15
  %i.2 = phi i32 [ 0, %for.end15 ], [ %inc25, %for.inc24 ], !taffo.info !47
  %cmp17 = icmp slt i32 %i.2, 128, !taffo.info !49
  br i1 %cmp17, label %for.body18, label %for.end26

for.body18:                                       ; preds = %for.cond16
  %idxprom19 = sext i32 %i.2 to i64, !taffo.info !51
  %arrayidx20.s3_29fixp = getelementptr inbounds [128 x i32], [128 x i32]* %x.s3_29fixp, i64 0, i64 %idxprom19, !taffo.info !42, !taffo.target !45
  %s3_29fixp1 = load i32, i32* %arrayidx20.s3_29fixp, align 4, !taffo.info !70, !taffo.target !45
  %conv.s2_30fixp = shl i32 %s3_29fixp1, 1, !taffo.info !70, !taffo.target !45
  %0 = sitofp i32 %conv.s2_30fixp to double, !taffo.info !70, !taffo.target !45
  %1 = fdiv double %0, 0x41D0000000000000, !taffo.info !70, !taffo.target !45
  %idxprom21 = sext i32 %i.2 to i64, !taffo.info !51
  %arrayidx22.s3_29fixp = getelementptr inbounds [128 x i32], [128 x i32]* %y.s3_29fixp, i64 0, i64 %idxprom21, !taffo.info !42, !taffo.target !46
  %s3_29fixp3 = load i32, i32* %arrayidx22.s3_29fixp, align 4, !taffo.info !70, !taffo.target !46
  %conv23.s2_30fixp = shl i32 %s3_29fixp3, 1, !taffo.info !70, !taffo.target !46
  %2 = sitofp i32 %conv23.s2_30fixp to double, !taffo.info !70, !taffo.target !46
  %3 = fdiv double %2, 0x41D0000000000000, !taffo.info !70, !taffo.target !46
  %call.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 noundef %i.2, double noundef %1, double noundef %3), !taffo.info !72, !taffo.initweight !28, !taffo.constinfo !73, !taffo.target !45
  br label %for.inc24

for.inc24:                                        ; preds = %for.body18
  %inc25 = add nsw i32 %i.2, 1, !taffo.info !58, !taffo.constinfo !13
  br label %for.cond16, !llvm.loop !74

for.end26:                                        ; preds = %for.cond16
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)), !taffo.constinfo !13
  %arraydecay.s3_29fixp = getelementptr inbounds [128 x i32], [128 x i32]* %x.s3_29fixp, i64 0, i64 0, !taffo.info !42, !taffo.target !45
  %arraydecay28.s3_29fixp = getelementptr inbounds [128 x i32], [128 x i32]* %y.s3_29fixp, i64 0, i64 0, !taffo.info !42, !taffo.target !46
  %4 = call i16 @FFT.1_fixp(i16 1, i64 7, i32* %arraydecay.s3_29fixp, i32* %arraydecay28.s3_29fixp), !taffo.info !75, !taffo.constinfo !73, !taffo.target !45
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc45, %for.end26
  %i.3 = phi i32 [ 0, %for.end26 ], [ %inc46, %for.inc45 ], !taffo.info !47
  %cmp32 = icmp slt i32 %i.3, 128, !taffo.info !49
  br i1 %cmp32, label %for.body34, label %for.end47

for.body34:                                       ; preds = %for.cond31
  %idxprom35 = sext i32 %i.3 to i64, !taffo.info !51
  %arrayidx36.s3_29fixp = getelementptr inbounds [128 x i32], [128 x i32]* %x.s3_29fixp, i64 0, i64 %idxprom35, !taffo.info !42, !taffo.target !45
  %s3_29fixp = load i32, i32* %arrayidx36.s3_29fixp, align 4, !taffo.info !42, !taffo.target !45
  %call37 = call float @sqrtf(float noundef 1.280000e+02) #4, !taffo.info !76, !taffo.constinfo !78
  %5 = fmul float 0x41B0000000000000, %call37, !taffo.info !76, !taffo.constinfo !78
  %6 = fptoui float %5 to i32, !taffo.info !76
  %7 = sext i32 %s3_29fixp to i64, !taffo.info !42, !taffo.target !45
  %8 = shl i64 %7, 27, !taffo.info !42, !taffo.target !45
  %9 = zext i32 %6 to i64, !taffo.info !76
  %10 = lshr i64 %9, 1, !taffo.info !76
  %11 = sdiv i64 %8, %10, !taffo.info !81, !taffo.target !45
  %div.s3_29fixp = trunc i64 %11 to i32, !taffo.info !84, !taffo.target !45
  %conv38.s2_30fixp = shl i32 %div.s3_29fixp, 1, !taffo.info !85, !taffo.target !45
  %12 = sitofp i32 %conv38.s2_30fixp to double, !taffo.info !85, !taffo.target !45
  %13 = fdiv double %12, 0x41D0000000000000, !taffo.info !85, !taffo.target !45
  %idxprom39 = sext i32 %i.3 to i64, !taffo.info !51
  %arrayidx40.s3_29fixp = getelementptr inbounds [128 x i32], [128 x i32]* %y.s3_29fixp, i64 0, i64 %idxprom39, !taffo.info !42, !taffo.target !46
  %s3_29fixp2 = load i32, i32* %arrayidx40.s3_29fixp, align 4, !taffo.info !42, !taffo.target !46
  %call41 = call float @sqrtf(float noundef 1.280000e+02) #4, !taffo.info !76, !taffo.constinfo !78
  %14 = fmul float 0x41B0000000000000, %call41, !taffo.info !76, !taffo.constinfo !78
  %15 = fptoui float %14 to i32, !taffo.info !76
  %16 = sext i32 %s3_29fixp2 to i64, !taffo.info !42, !taffo.target !46
  %17 = shl i64 %16, 27, !taffo.info !42, !taffo.target !46
  %18 = zext i32 %15 to i64, !taffo.info !76
  %19 = lshr i64 %18, 1, !taffo.info !76
  %20 = sdiv i64 %17, %19, !taffo.info !81, !taffo.target !46
  %div42.s3_29fixp = trunc i64 %20 to i32, !taffo.info !84, !taffo.target !46
  %conv43.s2_30fixp = shl i32 %div42.s3_29fixp, 1, !taffo.info !85, !taffo.target !46
  %21 = sitofp i32 %conv43.s2_30fixp to double, !taffo.info !85, !taffo.target !46
  %22 = fdiv double %21, 0x41D0000000000000, !taffo.info !85, !taffo.target !46
  %call44.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 noundef %i.3, double noundef %13, double noundef %22), !taffo.info !72, !taffo.initweight !32, !taffo.constinfo !73, !taffo.target !45
  br label %for.inc45

for.inc45:                                        ; preds = %for.body34
  %inc46 = add nsw i32 %i.3, 1, !taffo.info !58, !taffo.constinfo !13
  br label %for.cond31, !llvm.loop !86

for.end47:                                        ; preds = %for.cond31
  ret i32 0
}

declare !taffo.initweight !38 !taffo.funinfo !39 i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define internal signext i16 @FFT.1_fixp(i16 noundef signext %dir, i64 noundef %m, i32* noundef %x.s3_29fixp, i32* noundef %y.s3_29fixp) #0 !taffo.initweight !87 !taffo.funinfo !88 !taffo.sourceFunction !91 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !49
  %n.0 = phi i64 [ 1, %entry ], [ %mul, %for.inc ], !taffo.info !92
  %cmp = icmp slt i64 %i.0, %m, !taffo.info !26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i64 %n.0, 2, !taffo.info !30, !taffo.constinfo !13
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i64 %i.0, 1, !taffo.info !26, !taffo.constinfo !13
  br label %for.cond, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  %shr = ashr i64 %n.0, 1, !taffo.info !49, !taffo.constinfo !13
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc26, %for.end
  %j.0 = phi i64 [ 0, %for.end ], [ %add, %for.inc26 ], !taffo.info !95
  %i.1 = phi i64 [ 0, %for.end ], [ %inc27, %for.inc26 ], !taffo.info !49
  %sub = sub nsw i64 %n.0, 1, !taffo.info !49, !taffo.constinfo !13
  %cmp13 = icmp slt i64 %i.1, %sub, !taffo.info !49
  br i1 %cmp13, label %for.body14, label %for.end28

for.body14:                                       ; preds = %for.cond12
  %cmp15 = icmp slt i64 %i.1, %j.0, !taffo.info !56
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body14
  %arrayidx.s3_29fixp = getelementptr inbounds i32, i32* %x.s3_29fixp, i64 %i.1, !taffo.info !42
  %s3_29fixp = load i32, i32* %arrayidx.s3_29fixp, align 4, !taffo.info !70
  %arrayidx16.s3_29fixp = getelementptr inbounds i32, i32* %y.s3_29fixp, i64 %i.1, !taffo.info !42
  %s3_29fixp15 = load i32, i32* %arrayidx16.s3_29fixp, align 4, !taffo.info !70
  %arrayidx17.s3_29fixp = getelementptr inbounds i32, i32* %x.s3_29fixp, i64 %j.0, !taffo.info !42
  %s3_29fixp9 = load i32, i32* %arrayidx17.s3_29fixp, align 4, !taffo.info !70
  %arrayidx18.s3_29fixp = getelementptr inbounds i32, i32* %x.s3_29fixp, i64 %i.1, !taffo.info !42
  store i32 %s3_29fixp9, i32* %arrayidx18.s3_29fixp, align 4, !taffo.info !16
  %arrayidx19.s3_29fixp = getelementptr inbounds i32, i32* %y.s3_29fixp, i64 %j.0, !taffo.info !42
  %s3_29fixp16 = load i32, i32* %arrayidx19.s3_29fixp, align 4, !taffo.info !70
  %arrayidx20.s3_29fixp = getelementptr inbounds i32, i32* %y.s3_29fixp, i64 %i.1, !taffo.info !42
  store i32 %s3_29fixp16, i32* %arrayidx20.s3_29fixp, align 4, !taffo.info !16
  %arrayidx21.s3_29fixp = getelementptr inbounds i32, i32* %x.s3_29fixp, i64 %j.0, !taffo.info !42
  store i32 %s3_29fixp, i32* %arrayidx21.s3_29fixp, align 4, !taffo.info !16
  %arrayidx22.s3_29fixp = getelementptr inbounds i32, i32* %y.s3_29fixp, i64 %j.0, !taffo.info !42
  store i32 %s3_29fixp15, i32* %arrayidx22.s3_29fixp, align 4, !taffo.info !16
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %k.0 = phi i64 [ %shr, %if.end ], [ %shr25, %while.body ], !taffo.info !49
  %j.1 = phi i64 [ %j.0, %if.end ], [ %sub24, %while.body ], !taffo.info !96
  %cmp23 = icmp sle i64 %k.0, %j.1, !taffo.info !49
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %sub24 = sub nsw i64 %j.1, %k.0, !taffo.info !96
  %shr25 = ashr i64 %k.0, 1, !taffo.info !56, !taffo.constinfo !13
  br label %while.cond, !llvm.loop !98

while.end:                                        ; preds = %while.cond
  %add = add nsw i64 %j.1, %k.0, !taffo.info !95
  br label %for.inc26

for.inc26:                                        ; preds = %while.end
  %inc27 = add nsw i64 %i.1, 1, !taffo.info !26, !taffo.constinfo !13
  br label %for.cond12, !llvm.loop !99

for.end28:                                        ; preds = %for.cond12
  %0 = lshr i32 0, 2
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc80, %for.end28
  %l.0 = phi i64 [ 0, %for.end28 ], [ %inc81, %for.inc80 ], !taffo.info !49
  %l2.0 = phi i64 [ 1, %for.end28 ], [ %shl, %for.inc80 ], !taffo.info !92
  %c1.0.s2_30fixp = phi i32 [ -1073741824, %for.end28 ], [ %51, %for.inc80 ], !taffo.info !100
  %c2.0.s2_30fixp = phi i32 [ %0, %for.end28 ], [ %c2.1.s2_30fixp, %for.inc80 ], !taffo.info !70
  %cmp30 = icmp slt i64 %l.0, %m, !taffo.info !26
  br i1 %cmp30, label %for.body31, label %for.end82

for.body31:                                       ; preds = %for.cond29
  %shl = shl i64 %l2.0, 1, !taffo.info !30, !taffo.constinfo !13
  %1 = lshr i32 -2147483648, 1
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc65, %for.body31
  %j.2 = phi i64 [ 0, %for.body31 ], [ %inc66, %for.inc65 ], !taffo.info !49
  %u1.0.s2_30fixp = phi i32 [ %1, %for.body31 ], [ %s2_30fixp, %for.inc65 ], !taffo.info !70
  %u2.0.u0_32fixp = phi i32 [ 0, %for.body31 ], [ %u0_32fixp, %for.inc65 ], !taffo.info !101
  %cmp33 = icmp slt i64 %j.2, %l2.0, !taffo.info !49
  br i1 %cmp33, label %for.body34, label %for.end67

for.body34:                                       ; preds = %for.cond32
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc57, %for.body34
  %i.2 = phi i64 [ %j.2, %for.body34 ], [ %add58, %for.inc57 ], !taffo.info !103
  %cmp36 = icmp slt i64 %i.2, %n.0, !taffo.info !49
  br i1 %cmp36, label %for.body37, label %for.end59

for.body37:                                       ; preds = %for.cond35
  %add38 = add nsw i64 %i.2, %l2.0, !taffo.info !26
  %arrayidx39.s3_29fixp = getelementptr inbounds i32, i32* %x.s3_29fixp, i64 %add38, !taffo.info !42
  %s3_29fixp10 = load i32, i32* %arrayidx39.s3_29fixp, align 4, !taffo.info !70
  %arrayidx41.s3_29fixp = getelementptr inbounds i32, i32* %y.s3_29fixp, i64 %add38, !taffo.info !42
  %s3_29fixp17 = load i32, i32* %arrayidx41.s3_29fixp, align 4, !taffo.info !70
  %2 = zext i32 %u2.0.u0_32fixp to i64, !taffo.info !101
  %3 = sext i32 %s3_29fixp17 to i64, !taffo.info !70
  %4 = mul i64 %2, %3, !taffo.info !105
  %5 = lshr i64 %4, 29, !taffo.info !105
  %mul42.u0_32fixp = trunc i64 %5 to i32, !taffo.info !108
  %neg.u0_32fixp = sub i32 0, %mul42.u0_32fixp, !taffo.info !101
  %6 = lshr i32 %neg.u0_32fixp, 3, !taffo.info !101
  %7 = sext i32 %u1.0.s2_30fixp to i64, !taffo.info !70
  %8 = sext i32 %s3_29fixp10 to i64, !taffo.info !70
  %9 = mul i64 %7, %8, !taffo.info !109
  %10 = ashr i64 %9, 30
  %11 = trunc i64 %10 to i32
  %s3_29fixp23 = add i32 %11, %6, !taffo.info !111
  %arrayidx43.s3_29fixp = getelementptr inbounds i32, i32* %y.s3_29fixp, i64 %add38, !taffo.info !42
  %s3_29fixp18 = load i32, i32* %arrayidx43.s3_29fixp, align 4, !taffo.info !70
  %arrayidx45.s3_29fixp = getelementptr inbounds i32, i32* %x.s3_29fixp, i64 %add38, !taffo.info !42
  %s3_29fixp11 = load i32, i32* %arrayidx45.s3_29fixp, align 4, !taffo.info !70
  %12 = zext i32 %u2.0.u0_32fixp to i64, !taffo.info !101
  %13 = sext i32 %s3_29fixp11 to i64, !taffo.info !70
  %14 = mul i64 %12, %13, !taffo.info !105
  %15 = lshr i64 %14, 29, !taffo.info !105
  %mul46.u0_32fixp = trunc i64 %15 to i32, !taffo.info !108
  %16 = lshr i32 %mul46.u0_32fixp, 3, !taffo.info !108
  %17 = sext i32 %u1.0.s2_30fixp to i64, !taffo.info !70
  %18 = sext i32 %s3_29fixp18 to i64, !taffo.info !70
  %19 = mul i64 %17, %18, !taffo.info !109
  %20 = ashr i64 %19, 30
  %21 = trunc i64 %20 to i32
  %s3_29fixp22 = add i32 %21, %16, !taffo.info !111
  %arrayidx47.s3_29fixp = getelementptr inbounds i32, i32* %x.s3_29fixp, i64 %i.2, !taffo.info !42
  %s3_29fixp12 = load i32, i32* %arrayidx47.s3_29fixp, align 4, !taffo.info !111
  %sub48.s3_29fixp = sub i32 %s3_29fixp12, %s3_29fixp23, !taffo.info !112
  %arrayidx49.s3_29fixp = getelementptr inbounds i32, i32* %x.s3_29fixp, i64 %add38, !taffo.info !42
  store i32 %sub48.s3_29fixp, i32* %arrayidx49.s3_29fixp, align 4, !taffo.info !16
  %arrayidx50.s3_29fixp = getelementptr inbounds i32, i32* %y.s3_29fixp, i64 %i.2, !taffo.info !42
  %s3_29fixp19 = load i32, i32* %arrayidx50.s3_29fixp, align 4, !taffo.info !111
  %sub51.s3_29fixp = sub i32 %s3_29fixp19, %s3_29fixp22, !taffo.info !112
  %arrayidx52.s3_29fixp = getelementptr inbounds i32, i32* %y.s3_29fixp, i64 %add38, !taffo.info !42
  store i32 %sub51.s3_29fixp, i32* %arrayidx52.s3_29fixp, align 4, !taffo.info !16
  %arrayidx53.s3_29fixp = getelementptr inbounds i32, i32* %x.s3_29fixp, i64 %i.2, !taffo.info !42
  %s3_29fixp13 = load i32, i32* %arrayidx53.s3_29fixp, align 4, !taffo.info !112
  %add54.s3_29fixp = add i32 %s3_29fixp13, %s3_29fixp23, !taffo.info !42
  store i32 %add54.s3_29fixp, i32* %arrayidx53.s3_29fixp, align 4, !taffo.info !16
  %arrayidx55.s3_29fixp = getelementptr inbounds i32, i32* %y.s3_29fixp, i64 %i.2, !taffo.info !42
  %s3_29fixp20 = load i32, i32* %arrayidx55.s3_29fixp, align 4, !taffo.info !112
  %add56.s3_29fixp = add i32 %s3_29fixp20, %s3_29fixp22, !taffo.info !42
  store i32 %add56.s3_29fixp, i32* %arrayidx55.s3_29fixp, align 4, !taffo.info !16
  br label %for.inc57

for.inc57:                                        ; preds = %for.body37
  %add58 = add nsw i64 %i.2, %shl, !taffo.info !30
  br label %for.cond35, !llvm.loop !114

for.end59:                                        ; preds = %for.cond35
  %22 = zext i32 %u2.0.u0_32fixp to i64, !taffo.info !101
  %23 = sext i32 %c2.0.s2_30fixp to i64, !taffo.info !70
  %24 = mul i64 %22, %23, !taffo.info !115
  %25 = lshr i64 %24, 30, !taffo.info !115
  %mul61.u0_32fixp = trunc i64 %25 to i32, !taffo.info !101
  %neg62.u0_32fixp = sub i32 0, %mul61.u0_32fixp, !taffo.info !108
  %26 = lshr i32 %neg62.u0_32fixp, 2, !taffo.info !108
  %27 = sext i32 %u1.0.s2_30fixp to i64, !taffo.info !70
  %28 = sext i32 %c1.0.s2_30fixp to i64, !taffo.info !117
  %29 = mul i64 %27, %28, !taffo.info !119
  %30 = ashr i64 %29, 30
  %31 = trunc i64 %30 to i32
  %s2_30fixp = add i32 %31, %26, !taffo.info !117
  %32 = zext i32 %u2.0.u0_32fixp to i64, !taffo.info !101
  %33 = sext i32 %c1.0.s2_30fixp to i64, !taffo.info !117
  %34 = mul i64 %32, %33, !taffo.info !121
  %35 = lshr i64 %34, 30, !taffo.info !121
  %mul64.u0_32fixp = trunc i64 %35 to i32, !taffo.info !108
  %36 = sext i32 %u1.0.s2_30fixp to i64, !taffo.info !70
  %37 = sext i32 %c2.0.s2_30fixp to i64, !taffo.info !70
  %38 = mul i64 %36, %37, !taffo.info !122
  %39 = lshr i64 %38, 28
  %40 = trunc i64 %39 to i32
  %u0_32fixp = add i32 %40, %mul64.u0_32fixp, !taffo.info !101
  br label %for.inc65

for.inc65:                                        ; preds = %for.end59
  %inc66 = add nsw i64 %j.2, 1, !taffo.info !26, !taffo.constinfo !13
  br label %for.cond32, !llvm.loop !124

for.end67:                                        ; preds = %for.cond32
  %conv.s3_29fixp = ashr i32 %c1.0.s2_30fixp, 1, !taffo.info !125
  %41 = lshr i32 -2147483648, 1
  %42 = shl i32 %conv.s3_29fixp, 1, !taffo.info !125
  %sub68.u2_30fixp = sub i32 %41, %42, !taffo.info !126, !taffo.constinfo !25
  %div.u2_30fixp = udiv i32 %sub68.u2_30fixp, 2, !taffo.info !128, !taffo.constinfo !29
  %conv69.u1_31fixp = shl i32 %div.u2_30fixp, 1, !taffo.info !129, !taffo.constinfo !29
  %43 = uitofp i32 %conv69.u1_31fixp to float, !taffo.info !129
  %44 = fdiv float %43, 0x41E0000000000000, !taffo.info !129, !taffo.constinfo !29
  %call.flt = call float @sqrtf(float noundef %44) #4, !taffo.info !131, !taffo.initweight !33, !taffo.constinfo !13
  %45 = fmul float 0x41D0000000000000, %call.flt, !taffo.info !131, !taffo.constinfo !13
  %call.flt.fallback.s2_30fixp = fptosi float %45 to i32, !taffo.info !131
  %conv70 = sext i16 %dir to i32, !taffo.info !26
  %cmp71 = icmp eq i32 %conv70, 1, !taffo.info !26
  br i1 %cmp71, label %if.then73, label %if.end74

if.then73:                                        ; preds = %for.end67
  %fneg.s2_30fixp = sub i32 0, %call.flt.fallback.s2_30fixp, !taffo.info !117
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %for.end67
  %c2.1.s2_30fixp = phi i32 [ %fneg.s2_30fixp, %if.then73 ], [ %call.flt.fallback.s2_30fixp, %for.end67 ], !taffo.info !70
  %46 = shl i32 -2147483648, 1
  %47 = shl i32 %c1.0.s2_30fixp, 2, !taffo.info !117
  %add76.u0_32fixp = add i32 %46, %47, !taffo.info !101, !taffo.constinfo !25
  %div77.u0_32fixp = udiv i32 %add76.u0_32fixp, 2, !taffo.info !101, !taffo.constinfo !29
  %48 = uitofp i32 %div77.u0_32fixp to float, !taffo.info !101
  %49 = fdiv float %48, 0x41F0000000000000, !taffo.info !101, !taffo.constinfo !29
  %call79.flt = call float @sqrtf(float noundef %49) #4, !taffo.info !101, !taffo.initweight !33, !taffo.constinfo !13
  %50 = fmul float 0x41F0000000000000, %call79.flt, !taffo.info !101, !taffo.constinfo !13
  %call79.flt.fallback.u0_32fixp = fptoui float %50 to i32, !taffo.info !101
  br label %for.inc80

for.inc80:                                        ; preds = %if.end74
  %inc81 = add nsw i64 %l.0, 1, !taffo.info !26, !taffo.constinfo !13
  %51 = lshr i32 %call79.flt.fallback.u0_32fixp, 2, !taffo.info !101
  br label %for.cond29, !llvm.loop !132

for.end82:                                        ; preds = %for.cond29
  %conv83 = sext i16 %dir to i32, !taffo.info !26
  %cmp84 = icmp eq i32 %conv83, 1, !taffo.info !26
  br i1 %cmp84, label %if.then86, label %if.end100

if.then86:                                        ; preds = %for.end82
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc97, %if.then86
  %i.3 = phi i64 [ 0, %if.then86 ], [ %inc98, %for.inc97 ], !taffo.info !49
  %cmp88 = icmp slt i64 %i.3, %n.0, !taffo.info !49
  br i1 %cmp88, label %for.body90, label %for.end99

for.body90:                                       ; preds = %for.cond87
  %arrayidx92.s3_29fixp = getelementptr inbounds i32, i32* %x.s3_29fixp, i64 %i.3, !taffo.info !42
  %s3_29fixp14 = load i32, i32* %arrayidx92.s3_29fixp, align 4, !taffo.info !42
  %52 = sext i32 %s3_29fixp14 to i64, !taffo.info !42
  %53 = sdiv i64 %52, %n.0, !taffo.info !133
  %div93.s3_29fixp = trunc i64 %53 to i32, !taffo.info !42
  store i32 %div93.s3_29fixp, i32* %arrayidx92.s3_29fixp, align 4, !taffo.info !16
  %arrayidx95.s3_29fixp = getelementptr inbounds i32, i32* %y.s3_29fixp, i64 %i.3, !taffo.info !42
  %s3_29fixp21 = load i32, i32* %arrayidx95.s3_29fixp, align 4, !taffo.info !42
  %54 = sext i32 %s3_29fixp21 to i64, !taffo.info !42
  %55 = sdiv i64 %54, %n.0, !taffo.info !133
  %div96.s3_29fixp = trunc i64 %55 to i32, !taffo.info !42
  store i32 %div96.s3_29fixp, i32* %arrayidx95.s3_29fixp, align 4, !taffo.info !16
  br label %for.inc97

for.inc97:                                        ; preds = %for.body90
  %inc98 = add nsw i64 %i.3, 1, !taffo.info !26, !taffo.constinfo !13
  br label %for.cond87, !llvm.loop !134

for.end99:                                        ; preds = %for.cond87
  br label %if.end100

if.end100:                                        ; preds = %for.end99, %for.end82
  ret i16 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.010000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.000000e+01}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!10 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!11 = distinct !{null}
!12 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!13 = !{i1 false, i1 false}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{i1 false, i1 false, i1 false, i2 1}
!17 = !{i32 2}
!18 = !{i32 3}
!19 = distinct !{!19, !15}
!20 = distinct !{!20, !15}
!21 = !{i32 0}
!22 = !{i1 false, i1 false, i1 false, i1 false}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = !{!26, i1 false}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 1.000000e+00, double 1.000000e+00}
!28 = !{i32 4}
!29 = !{i1 false, !30}
!30 = !{i1 false, !31, i1 false, i2 0}
!31 = !{double 2.000000e+00, double 2.000000e+00}
!32 = !{i32 5}
!33 = !{i32 6}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = !{i32 -1, i32 -1, i32 -1}
!37 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!38 = !{i32 -1}
!39 = !{i32 0, i1 false}
!40 = !{}
!41 = !{i1 true}
!42 = !{!43, !44, i1 false, i2 1}
!43 = !{!"fixp", i32 -32, i32 29}
!44 = !{double -3.000000e+00, double 3.000000e+00}
!45 = !{!"input_signal"}
!46 = !{!"output_signal"}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 0.000000e+00, double 1.290000e+02}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 0.000000e+00, double 1.000000e+00}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0.000000e+00, double 1.280000e+02}
!53 = !{i1 false, !54, i1 false, i2 1}
!54 = !{double -1.000000e+00, double 1.000000e+00}
!55 = !{!56, i1 false}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 0.000000e+00, double 0.000000e+00}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 1.000000e+00, double 1.290000e+02}
!60 = distinct !{!60, !15}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 1.000000e+00, double 1.200000e+01}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 1.000000e+00, double 1.100000e+01}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 1.170000e+02, double 1.270000e+02}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 2.000000e+00, double 1.200000e+01}
!69 = distinct !{!69, !15}
!70 = !{!71, !54, i1 false, i2 1}
!71 = !{!"fixp", i32 -32, i32 30}
!72 = !{!71, i1 false, i1 false, i2 1}
!73 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!74 = distinct !{!74, !15}
!75 = !{!43, i1 false, i1 false, i2 1}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 0x4026A09E667F3BCD, double 0x4026A09E667F3BCD}
!78 = !{!79, i1 false}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 1.280000e+02, double 1.280000e+02}
!81 = !{!82, !83, i1 false, i2 1}
!82 = !{!"fixp", i32 -64, i32 29}
!83 = !{double 0xBFD0F876CCDF6CD9, double 0x3FD0F876CCDF6CD9}
!84 = !{!43, !83, i1 false, i2 1}
!85 = !{!71, !83, i1 false, i2 1}
!86 = distinct !{!86, !15}
!87 = !{i32 -1, i32 -1, i32 2, i32 2}
!88 = !{i32 1, !26, i32 1, !89, i32 1, !42, i32 1, !42}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 7.000000e+00, double 7.000000e+00}
!91 = !{i16 (i16, i64, float*, float*)* @FFT}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 1.000000e+00, double 2.000000e+00}
!94 = distinct !{!94, !15}
!95 = !{i1 false, !54, i1 false, i2 0}
!96 = !{i1 false, !97, i1 false, i2 0}
!97 = !{double -1.000000e+00, double 0.000000e+00}
!98 = distinct !{!98, !15}
!99 = distinct !{!99, !15}
!100 = !{!71, !97, i1 false, i2 1}
!101 = !{!102, !57, i1 false, i2 1}
!102 = !{!"fixp", i32 32, i32 32}
!103 = !{i1 false, !104, i1 false, i2 0}
!104 = !{double 0.000000e+00, double 2.000000e+00}
!105 = !{!106, !107, i1 false, i2 1}
!106 = !{!"fixp", i32 64, i32 61}
!107 = !{double -0.000000e+00, double -0.000000e+00}
!108 = !{!102, !107, i1 false, i2 1}
!109 = !{!110, !54, i1 false, i2 1}
!110 = !{!"fixp", i32 -64, i32 59}
!111 = !{!43, !54, i1 false, i2 1}
!112 = !{!43, !113, i1 false, i2 1}
!113 = !{double -2.000000e+00, double 2.000000e+00}
!114 = distinct !{!114, !15}
!115 = !{!116, !57, i1 false, i2 1}
!116 = !{!"fixp", i32 64, i32 62}
!117 = !{!71, !118, i1 false, i2 1}
!118 = !{double -1.000000e+00, double -1.000000e+00}
!119 = !{!120, !118, i1 false, i2 1}
!120 = !{!"fixp", i32 -64, i32 60}
!121 = !{!116, !107, i1 false, i2 1}
!122 = !{!123, !57, i1 false, i2 1}
!123 = !{!"fixp", i32 64, i32 60}
!124 = distinct !{!124, !15}
!125 = !{!43, !118, i1 false, i2 1}
!126 = !{!127, !31, i1 false, i2 1}
!127 = !{!"fixp", i32 32, i32 30}
!128 = !{!127, !27, i1 false, i2 1}
!129 = !{!130, !27, i1 false, i2 1}
!130 = !{!"fixp", i32 32, i32 31}
!131 = !{!71, !27, i1 false, i2 1}
!132 = distinct !{!132, !15}
!133 = !{!82, !44, i1 false, i2 1}
!134 = distinct !{!134, !15}
