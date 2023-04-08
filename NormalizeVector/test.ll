; ModuleID = '/tmp/tmp.py1xdZTstp/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", section "llvm.metadata", !taffo.info !2
@__const.main.v = private unnamed_addr constant [8 x float] [float 4.000000e+00, float 2.000000e+00, float 7.000000e+00, float 8.000000e+00, float 2.000000e+00, float 1.000000e+00, float 5.000000e+00, float 1.100000e+01], align 16, !taffo.info !4
@.str.3 = private unnamed_addr constant [20 x i8] c"Norm squared: %.4f\0A\00", align 1, !taffo.info !6
@.str.4 = private unnamed_addr constant [12 x i8] c"Norm: %.4f\0A\00", align 1, !taffo.info !8
@.str.5 = private unnamed_addr constant [9 x i8] c"Result: \00", align 1, !taffo.info !6
@.str.6 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1, !taffo.info !10
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32, i8* }] [{ i8*, i8*, i8*, i32, i8* } { i8* bitcast (float (float)* @NRsqrt to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 6, i8* null }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @NRsqrt(float noundef %n) #0 !taffo.initweight !18 !taffo.equivalentChild !19 !taffo.funinfo !20 {
entry:
  %cmp = fcmp olt float %n, 1.000000e+00, !taffo.info !21, !taffo.initweight !18
  br i1 %cmp, label %cond.true, label %cond.false, !taffo.info !21, !taffo.initweight !22

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %n, %cond.true ], [ 1.000000e+00, %cond.false ], !taffo.info !21, !taffo.initweight !18
  %cmp4 = fcmp ogt float %n, 1.000000e+00, !taffo.info !21, !taffo.initweight !18
  br i1 %cmp4, label %cond.true5, label %cond.false6, !taffo.info !21, !taffo.initweight !22

cond.true5:                                       ; preds = %cond.end
  br label %cond.end7

cond.false6:                                      ; preds = %cond.end
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8 = phi float [ %n, %cond.true5 ], [ 1.000000e+00, %cond.false6 ], !taffo.info !21, !taffo.initweight !18
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end7
  %lo.0 = phi float [ %cond, %cond.end7 ], [ %mul12, %while.body ], !taffo.info !21, !taffo.initweight !23
  %mul = fmul float 1.000000e+02, %lo.0, !taffo.info !21, !taffo.initweight !18, !taffo.constinfo !24
  %mul10 = fmul float %mul, %lo.0, !taffo.info !21, !taffo.initweight !18
  %cmp11 = fcmp olt float %mul10, %n, !taffo.info !21, !taffo.initweight !18
  br i1 %cmp11, label %while.body, label %while.end, !taffo.info !21, !taffo.initweight !22

while.body:                                       ; preds = %while.cond
  %mul12 = fmul float %lo.0, 1.000000e+01, !taffo.info !21, !taffo.initweight !18, !taffo.constinfo !27
  br label %while.cond, !llvm.loop !30

while.end:                                        ; preds = %while.cond
  br label %while.cond13

while.cond13:                                     ; preds = %while.body20, %while.end
  %hi.0 = phi float [ %cond8, %while.end ], [ %conv23, %while.body20 ], !taffo.info !21, !taffo.initweight !23
  %conv = fpext float %hi.0 to double, !taffo.info !21, !taffo.initweight !18
  %mul14 = fmul double 1.000000e-02, %conv, !taffo.info !21, !taffo.initweight !22, !taffo.constinfo !32
  %conv15 = fpext float %hi.0 to double, !taffo.info !21, !taffo.initweight !18
  %mul16 = fmul double %mul14, %conv15, !taffo.info !21, !taffo.initweight !22
  %conv17 = fpext float %n to double, !taffo.info !21, !taffo.initweight !18
  %cmp18 = fcmp ogt double %mul16, %conv17, !taffo.info !21, !taffo.initweight !22
  br i1 %cmp18, label %while.body20, label %while.end24, !taffo.info !21, !taffo.initweight !35

while.body20:                                     ; preds = %while.cond13
  %conv21 = fpext float %hi.0 to double, !taffo.info !21, !taffo.initweight !18
  %mul22 = fmul double %conv21, 1.000000e-01, !taffo.info !21, !taffo.initweight !22, !taffo.constinfo !36
  %conv23 = fptrunc double %mul22 to float, !taffo.info !21, !taffo.initweight !35
  br label %while.cond13, !llvm.loop !39

while.end24:                                      ; preds = %while.cond13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end24
  %mid.0 = phi float [ undef, %while.end24 ], [ %div, %for.inc ], !taffo.info !21, !taffo.initweight !23
  %hi.1 = phi float [ %hi.0, %while.end24 ], [ %hi.2, %for.inc ], !taffo.info !21, !taffo.initweight !23
  %lo.1 = phi float [ %lo.0, %while.end24 ], [ %lo.2, %for.inc ], !taffo.info !21, !taffo.initweight !23
  %i.0 = phi i32 [ 0, %while.end24 ], [ %inc, %for.inc ]
  %cmp25 = icmp slt i32 %i.0, 100
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add = fadd float %lo.1, %hi.1, !taffo.info !21, !taffo.initweight !18
  %div = fdiv float %add, 2.000000e+00, !taffo.info !21, !taffo.initweight !22, !taffo.constinfo !40
  %mul27 = fmul float %div, %div, !taffo.info !21, !taffo.initweight !18
  %cmp28 = fcmp oeq float %mul27, %n, !taffo.info !21, !taffo.initweight !18
  br i1 %cmp28, label %if.then, label %if.end, !taffo.info !21, !taffo.initweight !22

if.then:                                          ; preds = %for.body
  br label %return

if.end:                                           ; preds = %for.body
  %mul30 = fmul float %div, %div, !taffo.info !21, !taffo.initweight !18
  %cmp31 = fcmp ogt float %mul30, %n, !taffo.info !21, !taffo.initweight !18
  br i1 %cmp31, label %if.then33, label %if.else, !taffo.info !21, !taffo.initweight !22

if.then33:                                        ; preds = %if.end
  br label %if.end34

if.else:                                          ; preds = %if.end
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then33
  %hi.2 = phi float [ %div, %if.then33 ], [ %hi.1, %if.else ], !taffo.info !21, !taffo.initweight !23
  %lo.2 = phi float [ %lo.1, %if.then33 ], [ %div, %if.else ], !taffo.info !21, !taffo.initweight !23
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !43
  br label %for.cond, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi float [ %div, %if.then ], [ %mid.0, %for.end ]
  ret float %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !45 !taffo.funinfo !45 !taffo.start !46 {
entry:
  %v = alloca [8 x float], align 16, !taffo.info !21, !taffo.initweight !23, !taffo.target !47
  %0 = bitcast [8 x float]* %v to i8*, !taffo.info !21, !taffo.initweight !48, !taffo.target !47
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([8 x float]* @__const.main.v to i8*), i64 32, i1 false), !taffo.info !21, !taffo.initweight !18, !taffo.constinfo !49, !taffo.target !47
  %1 = lshr i32 0, 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !50
  %norm_squared.0.u1_31fixp = phi i32 [ %1, %entry ], [ %14, %for.inc ], !taffo.info !52
  %cmp = icmp slt i32 %i.0, 8, !taffo.info !55
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !57
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %v, i64 0, i64 %idxprom, !taffo.info !21, !taffo.initweight !48, !taffo.target !47
  %2 = load float, float* %arrayidx, align 4, !taffo.info !21, !taffo.initweight !18, !taffo.target !47
  %idxprom3 = sext i32 %i.0 to i64, !taffo.info !57
  %arrayidx4 = getelementptr inbounds [8 x float], [8 x float]* %v, i64 0, i64 %idxprom3, !taffo.info !21, !taffo.initweight !48, !taffo.target !47
  %3 = load float, float* %arrayidx4, align 4, !taffo.info !21, !taffo.initweight !18, !taffo.target !47
  %4 = fmul float 0x41F0000000000000, %2, !taffo.info !21, !taffo.target !47
  %5 = fptoui float %4 to i32, !taffo.info !21, !taffo.target !47
  %6 = fmul float 0x41F0000000000000, %3, !taffo.info !21, !taffo.target !47
  %7 = fptoui float %6 to i32, !taffo.info !21, !taffo.target !47
  %8 = shl i32 %norm_squared.0.u1_31fixp, 1, !taffo.info !52
  %9 = zext i32 %5 to i64, !taffo.info !21, !taffo.target !47
  %10 = zext i32 %7 to i64, !taffo.info !21, !taffo.target !47
  %11 = mul i64 %9, %10, !taffo.info !59
  %12 = lshr i64 %11, 32
  %13 = trunc i64 %12 to i32
  %u0_32fixp = add i32 %13, %8, !taffo.info !61
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !63, !taffo.constinfo !43
  %14 = lshr i32 %u0_32fixp, 1, !taffo.info !61
  br label %for.cond, !llvm.loop !65

for.end:                                          ; preds = %for.cond
  %conv.u0_32fixp = shl i32 %norm_squared.0.u1_31fixp, 1, !taffo.info !66
  %15 = uitofp i32 %conv.u0_32fixp to double, !taffo.info !66
  %16 = fdiv double %15, 0x41F0000000000000, !taffo.info !66
  %call.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), double noundef %16), !taffo.info !61, !taffo.initweight !22, !taffo.constinfo !67
  %call6.u3_29fixp = call i32 @NRsqrt.1_u3_29fixp(i32 %norm_squared.0.u1_31fixp), !taffo.info !68, !taffo.constinfo !43
  %17 = uitofp i32 %call6.u3_29fixp to double, !taffo.info !68
  %18 = fdiv double %17, 0x41C0000000000000, !taffo.info !68, !taffo.constinfo !43
  %call8.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), double noundef %18), !taffo.info !71, !taffo.initweight !22, !taffo.constinfo !67
  %19 = zext i32 %call6.u3_29fixp to i33, !taffo.info !68
  %20 = lshr i33 0, 4
  %21 = icmp ne i33 %19, %20, !taffo.info !71
  br i1 %21, label %if.then, label %if.end, !taffo.info !21, !taffo.initweight !22

if.then:                                          ; preds = %for.end
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc20, %if.then
  %i11.0 = phi i32 [ 0, %if.then ], [ %inc21, %for.inc20 ], !taffo.info !50
  %cmp13 = icmp slt i32 %i11.0, 8, !taffo.info !55
  br i1 %cmp13, label %for.body15, label %for.end22

for.body15:                                       ; preds = %for.cond12
  %idxprom16 = sext i32 %i11.0 to i64, !taffo.info !57
  %arrayidx17 = getelementptr inbounds [8 x float], [8 x float]* %v, i64 0, i64 %idxprom16, !taffo.info !21, !taffo.initweight !48, !taffo.target !47
  %22 = load float, float* %arrayidx17, align 4, !taffo.info !21, !taffo.initweight !18, !taffo.target !47
  %23 = fmul float 0x41C0000000000000, %22, !taffo.info !21, !taffo.target !47
  %24 = fptoui float %23 to i32, !taffo.info !21, !taffo.target !47
  %25 = zext i32 %24 to i64, !taffo.info !21, !taffo.target !47
  %26 = shl i64 %25, 29, !taffo.info !21, !taffo.target !47
  %27 = zext i32 %call6.u3_29fixp to i64, !taffo.info !68
  %28 = udiv i64 %26, %27, !taffo.info !72
  %div.u3_29fixp = trunc i64 %28 to i32, !taffo.info !71
  %29 = uitofp i32 %div.u3_29fixp to float, !taffo.info !71
  %30 = fdiv float %29, 0x41C0000000000000, !taffo.info !71
  %idxprom18 = sext i32 %i11.0 to i64, !taffo.info !57
  %arrayidx19 = getelementptr inbounds [8 x float], [8 x float]* %v, i64 0, i64 %idxprom18, !taffo.info !21, !taffo.initweight !48, !taffo.target !47
  store float %30, float* %arrayidx19, align 4, !taffo.info !21, !taffo.target !47
  br label %for.inc20

for.inc20:                                        ; preds = %for.body15
  %inc21 = add nsw i32 %i11.0, 1, !taffo.info !63, !taffo.constinfo !43
  br label %for.cond12, !llvm.loop !74

for.end22:                                        ; preds = %for.cond12
  br label %if.end

if.end:                                           ; preds = %for.end, %for.end22
  %call23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !taffo.constinfo !43
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc33, %if.end
  %i24.0 = phi i32 [ 0, %if.end ], [ %inc34, %for.inc33 ], !taffo.info !50
  %cmp26 = icmp slt i32 %i24.0, 8, !taffo.info !55
  br i1 %cmp26, label %for.body28, label %for.end35

for.body28:                                       ; preds = %for.cond25
  %idxprom29 = sext i32 %i24.0 to i64, !taffo.info !57
  %arrayidx30 = getelementptr inbounds [8 x float], [8 x float]* %v, i64 0, i64 %idxprom29, !taffo.info !21, !taffo.initweight !48, !taffo.target !47
  %31 = load float, float* %arrayidx30, align 4, !taffo.info !21, !taffo.initweight !18, !taffo.target !47
  %conv31 = fpext float %31 to double, !taffo.info !21, !taffo.initweight !22, !taffo.target !47
  %call32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), double noundef %conv31), !taffo.info !21, !taffo.initweight !35, !taffo.constinfo !67, !taffo.target !47
  br label %for.inc33

for.inc33:                                        ; preds = %for.body28
  %inc34 = add nsw i32 %i24.0, 1, !taffo.info !63, !taffo.constinfo !43
  br label %for.cond25, !llvm.loop !75

for.end35:                                        ; preds = %for.cond25
  %call36 = call i32 @putchar(i32 noundef 10), !taffo.constinfo !43
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare !taffo.initweight !76 !taffo.funinfo !77 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare !taffo.initweight !78 !taffo.funinfo !79 i32 @printf(i8* noundef, ...) #2

declare !taffo.initweight !78 !taffo.funinfo !79 i32 @putchar(i32 noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @NRsqrt.1_u3_29fixp(i32 noundef %n.u1_31fixp) #0 !taffo.initweight !18 !taffo.funinfo !80 !taffo.sourceFunction !81 {
entry:
  %0 = zext i32 %n.u1_31fixp to i33, !taffo.info !52
  %1 = lshr i33 -4294967296, 1
  %2 = icmp slt i33 %0, %1, !taffo.info !61
  br i1 %2, label %cond.true, label %cond.false, !taffo.info !21, !taffo.initweight !22

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.u1_31fixp = phi i32 [ %n.u1_31fixp, %cond.true ], [ -2147483648, %cond.false ], !taffo.info !82
  %3 = zext i32 %n.u1_31fixp to i33, !taffo.info !52
  %4 = lshr i33 -4294967296, 1
  %5 = icmp sgt i33 %3, %4, !taffo.info !61
  br i1 %5, label %cond.true5, label %cond.false6, !taffo.info !21, !taffo.initweight !22

cond.true5:                                       ; preds = %cond.end
  br label %cond.end7

cond.false6:                                      ; preds = %cond.end
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8.u1_31fixp = phi i32 [ %n.u1_31fixp, %cond.true5 ], [ -2147483648, %cond.false6 ], !taffo.info !82
  %6 = lshr i32 %cond.u1_31fixp, 3, !taffo.info !82
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end7
  %lo.0.u4_28fixp = phi i32 [ %6, %cond.end7 ], [ %mul12.u4_28fixp, %while.body ], !taffo.info !83
  %7 = zext i32 100 to i64
  %8 = zext i32 %lo.0.u4_28fixp to i64, !taffo.info !83
  %9 = mul i64 %7, %8, !taffo.info !86, !taffo.constinfo !24
  %10 = lshr i64 %9, 6, !taffo.info !86, !taffo.constinfo !24
  %mul.u10_22fixp = trunc i64 %10 to i32, !taffo.info !89
  %11 = zext i32 %mul.u10_22fixp to i64, !taffo.info !89
  %12 = zext i32 %lo.0.u4_28fixp to i64, !taffo.info !83
  %13 = mul i64 %11, %12, !taffo.info !91
  %14 = lshr i64 %13, 32, !taffo.info !91
  %mul10.u14_18fixp = trunc i64 %14 to i32, !taffo.info !94
  %15 = zext i32 %mul10.u14_18fixp to i45, !taffo.info !94
  %16 = shl i45 %15, 13, !taffo.info !94
  %17 = zext i32 %n.u1_31fixp to i45, !taffo.info !52
  %18 = icmp ult i45 %16, %17, !taffo.info !61
  br i1 %18, label %while.body, label %while.end, !taffo.info !21, !taffo.initweight !22

while.body:                                       ; preds = %while.cond
  %19 = zext i32 %lo.0.u4_28fixp to i64, !taffo.info !83
  %20 = zext i32 10 to i64
  %21 = mul i64 %19, %20, !taffo.info !96, !taffo.constinfo !27
  %mul12.u4_28fixp = trunc i64 %21 to i32, !taffo.info !83
  br label %while.cond, !llvm.loop !97

while.end:                                        ; preds = %while.cond
  %22 = lshr i32 %cond8.u1_31fixp, 2, !taffo.info !82
  br label %while.cond13

while.cond13:                                     ; preds = %while.body20, %while.end
  %hi.0.u3_29fixp = phi i32 [ %22, %while.end ], [ %36, %while.body20 ], !taffo.info !98
  %conv.u1_31fixp = shl i32 %hi.0.u3_29fixp, 2, !taffo.info !82
  %23 = zext i32 21474836 to i64
  %24 = zext i32 %conv.u1_31fixp to i64, !taffo.info !82
  %25 = mul i64 %23, %24, !taffo.info !99, !taffo.constinfo !32
  %26 = lshr i64 %25, 31, !taffo.info !99, !taffo.constinfo !32
  %mul14.u1_31fixp = trunc i64 %26 to i32, !taffo.info !102
  %conv15.u1_31fixp = shl i32 %hi.0.u3_29fixp, 2, !taffo.info !82
  %27 = zext i32 %mul14.u1_31fixp to i64, !taffo.info !102
  %28 = zext i32 %conv15.u1_31fixp to i64, !taffo.info !82
  %29 = mul i64 %27, %28, !taffo.info !99
  %30 = lshr i64 %29, 31, !taffo.info !99
  %mul16.u1_31fixp = trunc i64 %30 to i32, !taffo.info !102
  %31 = icmp ugt i32 %mul16.u1_31fixp, %n.u1_31fixp, !taffo.info !103
  br i1 %31, label %while.body20, label %while.end24, !taffo.info !21, !taffo.initweight !35

while.body20:                                     ; preds = %while.cond13
  %conv21.u1_31fixp = shl i32 %hi.0.u3_29fixp, 2, !taffo.info !82
  %32 = zext i32 %conv21.u1_31fixp to i64, !taffo.info !82
  %33 = zext i32 214748364 to i64
  %34 = mul i64 %32, %33, !taffo.info !104, !taffo.constinfo !36
  %35 = lshr i64 %34, 31, !taffo.info !104, !taffo.constinfo !36
  %mul22.u1_31fixp = trunc i64 %35 to i32, !taffo.info !106
  %36 = lshr i32 %mul22.u1_31fixp, 2, !taffo.info !106
  br label %while.cond13, !llvm.loop !108

while.end24:                                      ; preds = %while.cond13
  %37 = lshr i32 %hi.0.u3_29fixp, 1, !taffo.info !98
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end24
  %mid.0.u3_29fixp = phi i32 [ undef, %while.end24 ], [ %58, %for.inc ], !taffo.info !68
  %hi.1.u4_28fixp = phi i32 [ %37, %while.end24 ], [ %57, %for.inc ], !taffo.info !109
  %lo.1.u4_28fixp = phi i32 [ %lo.0.u4_28fixp, %while.end24 ], [ %lo.2.u4_28fixp, %for.inc ], !taffo.info !83
  %i.0 = phi i32 [ 0, %while.end24 ], [ %inc, %for.inc ], !taffo.info !55
  %cmp25 = icmp slt i32 %i.0, 100, !taffo.info !110
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add.u4_28fixp = add i32 %lo.1.u4_28fixp, %hi.1.u4_28fixp, !taffo.info !112
  %div.u4_28fixp = udiv i32 %add.u4_28fixp, 2, !taffo.info !109, !taffo.constinfo !40
  %38 = zext i32 %div.u4_28fixp to i64, !taffo.info !109
  %39 = zext i32 %div.u4_28fixp to i64, !taffo.info !109
  %40 = mul i64 %38, %39, !taffo.info !114
  %41 = lshr i64 %40, 29, !taffo.info !114
  %mul27.u5_27fixp = trunc i64 %41 to i32, !taffo.info !117
  %42 = zext i32 %mul27.u5_27fixp to i36, !taffo.info !117
  %43 = shl i36 %42, 4, !taffo.info !117
  %44 = zext i32 %n.u1_31fixp to i36, !taffo.info !52
  %45 = icmp eq i36 %43, %44, !taffo.info !61
  br i1 %45, label %if.then, label %if.end, !taffo.info !21, !taffo.initweight !22

if.then:                                          ; preds = %for.body
  %46 = shl i32 %div.u4_28fixp, 1, !taffo.info !109, !taffo.constinfo !40
  br label %return

if.end:                                           ; preds = %for.body
  %47 = zext i32 %div.u4_28fixp to i64, !taffo.info !109
  %48 = zext i32 %div.u4_28fixp to i64, !taffo.info !109
  %49 = mul i64 %47, %48, !taffo.info !114
  %50 = lshr i64 %49, 29, !taffo.info !114
  %mul30.u5_27fixp = trunc i64 %50 to i32, !taffo.info !117
  %51 = zext i32 %mul30.u5_27fixp to i36, !taffo.info !117
  %52 = shl i36 %51, 4, !taffo.info !117
  %53 = zext i32 %n.u1_31fixp to i36, !taffo.info !52
  %54 = icmp ugt i36 %52, %53, !taffo.info !61
  br i1 %54, label %if.then33, label %if.else, !taffo.info !21, !taffo.initweight !22

if.then33:                                        ; preds = %if.end
  %55 = shl i32 %div.u4_28fixp, 1, !taffo.info !109, !taffo.constinfo !40
  br label %if.end34

if.else:                                          ; preds = %if.end
  %56 = shl i32 %hi.1.u4_28fixp, 1, !taffo.info !109
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then33
  %hi.2.u3_29fixp = phi i32 [ %55, %if.then33 ], [ %56, %if.else ], !taffo.info !68
  %lo.2.u4_28fixp = phi i32 [ %lo.1.u4_28fixp, %if.then33 ], [ %div.u4_28fixp, %if.else ], !taffo.info !83
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %inc = add nsw i32 %i.0, 1, !taffo.info !110, !taffo.constinfo !43
  %57 = lshr i32 %hi.2.u3_29fixp, 1, !taffo.info !68
  %58 = shl i32 %div.u4_28fixp, 1, !taffo.info !109, !taffo.constinfo !40
  br label %for.cond, !llvm.loop !119

for.end:                                          ; preds = %for.cond
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0.u3_29fixp = phi i32 [ %46, %if.then ], [ %mid.0.u3_29fixp, %for.end ], !taffo.info !68
  ret i32 %retval.0.u3_29fixp
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.150000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.160000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 1.000000e+00, double 1.100000e+01}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.170000e+02}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 1.140000e+02}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0.000000e+00, double 1.020000e+02}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!18 = !{i32 2}
!19 = distinct !{null}
!20 = !{i32 1, !21}
!21 = !{i1 false, i1 false, i1 false, i2 1}
!22 = !{i32 3}
!23 = !{i32 0}
!24 = !{!25, i1 false}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 1.000000e+02, double 1.000000e+02}
!27 = !{i1 false, !28}
!28 = !{i1 false, !29, i1 false, i2 0}
!29 = !{double 1.000000e+01, double 1.000000e+01}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!33, i1 false}
!33 = !{i1 false, !34, i1 false, i2 0}
!34 = !{double 1.000000e-02, double 1.000000e-02}
!35 = !{i32 4}
!36 = !{i1 false, !37}
!37 = !{i1 false, !38, i1 false, i2 0}
!38 = !{double 1.000000e-01, double 1.000000e-01}
!39 = distinct !{!39, !31}
!40 = !{i1 false, !41}
!41 = !{i1 false, !42, i1 false, i2 0}
!42 = !{double 2.000000e+00, double 2.000000e+00}
!43 = !{i1 false, i1 false}
!44 = distinct !{!44, !31}
!45 = !{}
!46 = !{i1 true}
!47 = !{!"vector"}
!48 = !{i32 1}
!49 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 0.000000e+00, double 9.000000e+00}
!52 = !{!53, !54, i1 false, i2 1}
!53 = !{!"fixp", i32 32, i32 31}
!54 = !{double 0.000000e+00, double 0.000000e+00}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 0.000000e+00, double 1.000000e+00}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 0.000000e+00, double 8.000000e+00}
!59 = !{!60, i1 false, i1 false, i2 1}
!60 = !{!"fixp", i32 64, i32 64}
!61 = !{!62, i1 false, i1 false, i2 1}
!62 = !{!"fixp", i32 32, i32 32}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 1.000000e+00, double 9.000000e+00}
!65 = distinct !{!65, !31}
!66 = !{!62, !54, i1 false, i2 1}
!67 = !{i1 false, i1 false, i1 false}
!68 = !{!69, !70, i1 false, i2 1}
!69 = !{!"fixp", i32 32, i32 29}
!70 = !{double 0.000000e+00, double 5.500000e+00}
!71 = !{!69, i1 false, i1 false, i2 1}
!72 = !{!73, i1 false, i1 false, i2 1}
!73 = !{!"fixp", i32 64, i32 29}
!74 = distinct !{!74, !31}
!75 = distinct !{!75, !31}
!76 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!77 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!78 = !{i32 -1}
!79 = !{i32 0, i1 false}
!80 = !{i32 1, !52}
!81 = !{float (float)* @NRsqrt}
!82 = !{!53, !56, i1 false, i2 1}
!83 = !{!84, !85, i1 false, i2 1}
!84 = !{!"fixp", i32 32, i32 28}
!85 = !{double 0.000000e+00, double 1.000000e+01}
!86 = !{!87, !88, i1 false, i2 1}
!87 = !{!"fixp", i32 64, i32 28}
!88 = !{double 0.000000e+00, double 1.000000e+03}
!89 = !{!90, !88, i1 false, i2 1}
!90 = !{!"fixp", i32 32, i32 22}
!91 = !{!92, !93, i1 false, i2 1}
!92 = !{!"fixp", i32 64, i32 50}
!93 = !{double 0.000000e+00, double 1.000000e+04}
!94 = !{!95, !93, i1 false, i2 1}
!95 = !{!"fixp", i32 32, i32 18}
!96 = !{!87, !85, i1 false, i2 1}
!97 = distinct !{!97, !31}
!98 = !{!69, !56, i1 false, i2 1}
!99 = !{!100, !101, i1 false, i2 1}
!100 = !{!"fixp", i32 64, i32 62}
!101 = !{double 0.000000e+00, double 1.000000e-02}
!102 = !{!53, !101, i1 false, i2 1}
!103 = !{!53, i1 false, i1 false, i2 1}
!104 = !{!100, !105, i1 false, i2 1}
!105 = !{double 0.000000e+00, double 1.000000e-01}
!106 = !{!53, !107, i1 false, i2 1}
!107 = !{double 0.000000e+00, double 0x3FB99999A0000000}
!108 = distinct !{!108, !31}
!109 = !{!84, !70, i1 false, i2 1}
!110 = !{i1 false, !111, i1 false, i2 0}
!111 = !{double 1.000000e+00, double 1.000000e+00}
!112 = !{!84, !113, i1 false, i2 1}
!113 = !{double 0.000000e+00, double 1.100000e+01}
!114 = !{!115, !116, i1 false, i2 1}
!115 = !{!"fixp", i32 64, i32 56}
!116 = !{double 0.000000e+00, double 3.025000e+01}
!117 = !{!118, !116, i1 false, i2 1}
!118 = !{!"fixp", i32 32, i32 27}
!119 = distinct !{!119, !31}
