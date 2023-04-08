; ModuleID = '/tmp/tmp.ql3afgO4rx/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", section "llvm.metadata", !taffo.info !0
@.str.2 = private unnamed_addr constant [27 x i8] c"scalar(range(0, 64) final)\00", section "llvm.metadata", !taffo.info !2
@.str.3 = private unnamed_addr constant [37 x i8] c"Sqrt argument (between 0 and 4096): \00", align 1, !taffo.info !4
@.str.4 = private unnamed_addr constant [3 x i8] c"%f\00", align 1, !taffo.info !6
@.str.6 = private unnamed_addr constant [12 x i8] c"Result: %f\0A\00", align 1, !taffo.info !8
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32, i8* }] [{ i8*, i8*, i8*, i32, i8* } { i8* bitcast (float (float)* @NRsqrt to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 4, i8* null }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @NRsqrt(float noundef %n) #0 !taffo.initweight !16 !taffo.equivalentChild !17 !taffo.funinfo !18 {
entry:
  %0 = fmul float 5.242880e+05, %n, !taffo.info !19
  %1 = fptoui float %0 to i32, !taffo.info !19
  %2 = fmul float 5.242880e+05, %n, !taffo.info !19
  %3 = fptoui float %2 to i32, !taffo.info !19
  %4 = fmul float 5.242880e+05, %n, !taffo.info !19
  %5 = fptoui float %4 to i32, !taffo.info !19
  %6 = fmul float 5.242880e+05, %n, !taffo.info !19
  %conv17.u13_19fixp = fptoui float %6 to i32, !taffo.info !19
  %7 = fmul float 0x4130000000000000, %n, !taffo.info !19
  %8 = fptoui float %7 to i33, !taffo.info !19
  %9 = fmul float 5.242880e+05, %n, !taffo.info !19
  %10 = fptoui float %9 to i32, !taffo.info !19
  %11 = fmul float 0x4130000000000000, %n, !taffo.info !19
  %12 = fptoui float %11 to i33, !taffo.info !19
  %13 = fmul float 5.242880e+05, %n, !taffo.info !19
  %14 = fptoui float %13 to i32, !taffo.info !19
  %15 = lshr i33 %8, 1, !taffo.info !19
  %16 = lshr i33 -4294967296, 13
  %17 = icmp slt i33 %15, %16, !taffo.info !22
  br i1 %17, label %cond.true, label %cond.false, !taffo.info !23, !taffo.initweight !24

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %18 = lshr i32 -2147483648, 12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.u13_19fixp = phi i32 [ %10, %cond.true ], [ %18, %cond.false ], !taffo.info !19
  %19 = lshr i33 %12, 1, !taffo.info !19
  %20 = lshr i33 -4294967296, 13
  %21 = icmp sgt i33 %19, %20, !taffo.info !22
  br i1 %21, label %cond.true5, label %cond.false6, !taffo.info !23, !taffo.initweight !24

cond.true5:                                       ; preds = %cond.end
  br label %cond.end7

cond.false6:                                      ; preds = %cond.end
  %22 = lshr i32 -2147483648, 12
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8.u13_19fixp = phi i32 [ %14, %cond.true5 ], [ %22, %cond.false6 ], !taffo.info !19
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end7
  %lo.0.u13_19fixp = phi i32 [ %cond.u13_19fixp, %cond.end7 ], [ %mul12.u13_19fixp, %while.body ], !taffo.info !19
  %23 = zext i32 100 to i64
  %24 = zext i32 %lo.0.u13_19fixp to i64, !taffo.info !19
  %25 = mul i64 %23, %24, !taffo.info !25, !taffo.constinfo !27
  %mul.u13_19fixp = trunc i64 %25 to i32, !taffo.info !19
  %26 = zext i32 %mul.u13_19fixp to i64, !taffo.info !19
  %27 = zext i32 %lo.0.u13_19fixp to i64, !taffo.info !19
  %28 = mul i64 %26, %27, !taffo.info !30
  %29 = lshr i64 %28, 19, !taffo.info !30
  %mul10.u13_19fixp = trunc i64 %29 to i32, !taffo.info !19
  %30 = icmp ult i32 %mul10.u13_19fixp, %5, !taffo.info !22
  br i1 %30, label %while.body, label %while.end, !taffo.info !23, !taffo.initweight !24

while.body:                                       ; preds = %while.cond
  %31 = zext i32 %lo.0.u13_19fixp to i64, !taffo.info !19
  %32 = zext i32 10 to i64
  %33 = mul i64 %31, %32, !taffo.info !25, !taffo.constinfo !32
  %mul12.u13_19fixp = trunc i64 %33 to i32, !taffo.info !19
  br label %while.cond, !llvm.loop !35

while.end:                                        ; preds = %while.cond
  br label %while.cond13

while.cond13:                                     ; preds = %while.body20, %while.end
  %hi.0.u13_19fixp = phi i32 [ %cond8.u13_19fixp, %while.end ], [ %mul22.u13_19fixp, %while.body20 ], !taffo.info !19
  %34 = zext i32 21474836 to i64
  %35 = zext i32 %hi.0.u13_19fixp to i64, !taffo.info !19
  %36 = mul i64 %34, %35, !taffo.info !37, !taffo.constinfo !39
  %37 = lshr i64 %36, 31, !taffo.info !37, !taffo.constinfo !39
  %mul14.u13_19fixp = trunc i64 %37 to i32, !taffo.info !19
  %38 = zext i32 %mul14.u13_19fixp to i64, !taffo.info !19
  %39 = zext i32 %hi.0.u13_19fixp to i64, !taffo.info !19
  %40 = mul i64 %38, %39, !taffo.info !30
  %41 = lshr i64 %40, 19, !taffo.info !30
  %mul16.u13_19fixp = trunc i64 %41 to i32, !taffo.info !19
  %42 = icmp ugt i32 %mul16.u13_19fixp, %conv17.u13_19fixp, !taffo.info !22
  br i1 %42, label %while.body20, label %while.end24, !taffo.info !23, !taffo.initweight !42

while.body20:                                     ; preds = %while.cond13
  %43 = zext i32 %hi.0.u13_19fixp to i64, !taffo.info !19
  %44 = zext i32 214748364 to i64
  %45 = mul i64 %43, %44, !taffo.info !37, !taffo.constinfo !43
  %46 = lshr i64 %45, 31, !taffo.info !37, !taffo.constinfo !43
  %mul22.u13_19fixp = trunc i64 %46 to i32, !taffo.info !19
  br label %while.cond13, !llvm.loop !46

while.end24:                                      ; preds = %while.cond13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end24
  %hi.1.u13_19fixp = phi i32 [ %hi.0.u13_19fixp, %while.end24 ], [ %hi.2.u13_19fixp, %for.inc ], !taffo.info !19
  %lo.1.u13_19fixp = phi i32 [ %lo.0.u13_19fixp, %while.end24 ], [ %lo.2.u13_19fixp, %for.inc ], !taffo.info !19
  %i.0 = phi i32 [ 0, %while.end24 ], [ %inc, %for.inc ]
  %cmp25 = icmp slt i32 %i.0, 100
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add.u13_19fixp = add i32 %lo.1.u13_19fixp, %hi.1.u13_19fixp, !taffo.info !19
  %div.u13_19fixp = udiv i32 %add.u13_19fixp, 2, !taffo.info !19, !taffo.constinfo !47
  %47 = zext i32 %div.u13_19fixp to i64, !taffo.info !19
  %48 = zext i32 %div.u13_19fixp to i64, !taffo.info !19
  %49 = mul i64 %47, %48, !taffo.info !30
  %50 = lshr i64 %49, 19, !taffo.info !30
  %mul27.u13_19fixp = trunc i64 %50 to i32, !taffo.info !19
  %51 = icmp eq i32 %mul27.u13_19fixp, %1, !taffo.info !22
  br i1 %51, label %if.then, label %if.end, !taffo.info !23, !taffo.initweight !24

if.then:                                          ; preds = %for.body
  br label %return

if.end:                                           ; preds = %for.body
  %52 = zext i32 %div.u13_19fixp to i64, !taffo.info !19
  %53 = zext i32 %div.u13_19fixp to i64, !taffo.info !19
  %54 = mul i64 %52, %53, !taffo.info !30
  %55 = lshr i64 %54, 19, !taffo.info !30
  %mul30.u13_19fixp = trunc i64 %55 to i32, !taffo.info !19
  %56 = icmp ugt i32 %mul30.u13_19fixp, %3, !taffo.info !22
  br i1 %56, label %if.then33, label %if.else, !taffo.info !23, !taffo.initweight !24

if.then33:                                        ; preds = %if.end
  br label %if.end34

if.else:                                          ; preds = %if.end
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then33
  %hi.2.u13_19fixp = phi i32 [ %div.u13_19fixp, %if.then33 ], [ %hi.1.u13_19fixp, %if.else ], !taffo.info !19
  %lo.2.u13_19fixp = phi i32 [ %lo.1.u13_19fixp, %if.then33 ], [ %div.u13_19fixp, %if.else ], !taffo.info !19
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !50
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret float undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !52 !taffo.funinfo !52 !taffo.start !53 {
entry:
  %in = alloca float, align 4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0)), !taffo.constinfo !50
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), float* noundef %in), !taffo.constinfo !54
  %0 = load float, float* %in, align 4
  %call3.u7_25fixp = call i32 @NRsqrt.1_u7_25fixp(float %0), !taffo.info !55, !taffo.constinfo !50, !taffo.target !58
  %1 = uitofp i32 %call3.u7_25fixp to double, !taffo.info !55, !taffo.target !58
  %2 = fdiv double %1, 0x4180000000000000, !taffo.info !55, !taffo.constinfo !50, !taffo.target !58
  %call4.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), double noundef %2), !taffo.info !59, !taffo.initweight !24, !taffo.constinfo !54, !taffo.target !58
  ret i32 0
}

declare !taffo.initweight !60 !taffo.funinfo !61 i32 @printf(i8* noundef, ...) #1

declare !taffo.initweight !60 !taffo.funinfo !61 i32 @__isoc99_scanf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @NRsqrt.1_u7_25fixp(float noundef %n) #0 !taffo.initweight !60 !taffo.funinfo !61 !taffo.sourceFunction !62 {
entry:
  %0 = fmul float 5.242880e+05, %n, !taffo.info !23
  %1 = fptosi float %0 to i33, !taffo.info !23
  %2 = fmul float 5.242880e+05, %n, !taffo.info !23
  %3 = fptosi float %2 to i33, !taffo.info !23
  %4 = fmul float 0x4200000000000000, %n, !taffo.info !23
  %5 = fptosi float %4 to i65, !taffo.info !23
  %6 = fmul float 5.242880e+05, %n, !taffo.info !23
  %7 = fptoui float %6 to i32, !taffo.info !23
  %8 = fmul float 5.242880e+05, %n, !taffo.info !23
  %9 = fptoui float %8 to i32, !taffo.info !23
  %10 = fmul float 5.242880e+05, %n, !taffo.info !23
  %conv17.u13_19fixp = fptoui float %10 to i32, !taffo.info !19
  %cmp = fcmp olt float %n, 1.000000e+00, !taffo.info !23, !taffo.initweight !16
  br i1 %cmp, label %cond.true, label %cond.false, !taffo.info !23, !taffo.initweight !24

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = lshr i32 -2147483648, 12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.u13_19fixp = phi i32 [ %7, %cond.true ], [ %11, %cond.false ], !taffo.info !19
  %cmp4 = fcmp ogt float %n, 1.000000e+00, !taffo.info !23, !taffo.initweight !16
  br i1 %cmp4, label %cond.true5, label %cond.false6, !taffo.info !23, !taffo.initweight !24

cond.true5:                                       ; preds = %cond.end
  br label %cond.end7

cond.false6:                                      ; preds = %cond.end
  %12 = lshr i32 -2147483648, 12
  br label %cond.end7

cond.end7:                                        ; preds = %cond.false6, %cond.true5
  %cond8.u13_19fixp = phi i32 [ %9, %cond.true5 ], [ %12, %cond.false6 ], !taffo.info !19
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end7
  %lo.0.u13_19fixp = phi i32 [ %cond.u13_19fixp, %cond.end7 ], [ %26, %while.body ], !taffo.info !19
  %13 = zext i32 100 to i64
  %14 = zext i32 %lo.0.u13_19fixp to i64, !taffo.info !19
  %15 = mul i64 %13, %14, !taffo.info !63, !taffo.constinfo !27
  %16 = lshr i64 %15, 6, !taffo.info !63, !taffo.constinfo !27
  %mul.u19_13fixp = trunc i64 %16 to i32, !taffo.info !65
  %17 = zext i32 %mul.u19_13fixp to i64, !taffo.info !65
  %18 = zext i32 %lo.0.u13_19fixp to i64, !taffo.info !19
  %19 = mul i64 %17, %18, !taffo.info !67
  %mul10.u31_33fixp = shl i64 %19, 1, !taffo.info !70
  %20 = zext i64 %mul10.u31_33fixp to i65, !taffo.info !70
  %21 = icmp slt i65 %20, %5, !taffo.info !72
  br i1 %21, label %while.body, label %while.end, !taffo.info !23, !taffo.initweight !24

while.body:                                       ; preds = %while.cond
  %22 = zext i32 %lo.0.u13_19fixp to i64, !taffo.info !19
  %23 = zext i32 10 to i64
  %24 = mul i64 %22, %23, !taffo.info !73, !taffo.constinfo !32
  %25 = lshr i64 %24, 3, !taffo.info !73, !taffo.constinfo !32
  %mul12.u16_16fixp = trunc i64 %25 to i32, !taffo.info !75
  %26 = shl i32 %mul12.u16_16fixp, 3, !taffo.info !75
  br label %while.cond, !llvm.loop !77

while.end:                                        ; preds = %while.cond
  br label %while.cond13

while.cond13:                                     ; preds = %while.body20, %while.end
  %hi.0.u13_19fixp = phi i32 [ %cond8.u13_19fixp, %while.end ], [ %43, %while.body20 ], !taffo.info !19
  %27 = zext i32 21474836 to i64
  %28 = zext i32 %hi.0.u13_19fixp to i64, !taffo.info !19
  %29 = mul i64 %27, %28, !taffo.info !78, !taffo.constinfo !39
  %30 = lshr i64 %29, 24, !taffo.info !78, !taffo.constinfo !39
  %mul14.u6_26fixp = trunc i64 %30 to i32, !taffo.info !80
  %31 = zext i32 %mul14.u6_26fixp to i64, !taffo.info !80
  %32 = zext i32 %hi.0.u13_19fixp to i64, !taffo.info !19
  %33 = mul i64 %31, %32, !taffo.info !82
  %34 = lshr i64 %33, 31, !taffo.info !82
  %mul16.u18_14fixp = trunc i64 %34 to i32, !taffo.info !85
  %35 = zext i32 %mul16.u18_14fixp to i37, !taffo.info !85
  %36 = shl i37 %35, 5, !taffo.info !85
  %37 = zext i32 %conv17.u13_19fixp to i37, !taffo.info !19
  %38 = icmp ugt i37 %36, %37, !taffo.info !87
  br i1 %38, label %while.body20, label %while.end24, !taffo.info !23, !taffo.initweight !42

while.body20:                                     ; preds = %while.cond13
  %39 = zext i32 %hi.0.u13_19fixp to i64, !taffo.info !19
  %40 = zext i32 214748364 to i64
  %41 = mul i64 %39, %40, !taffo.info !88, !taffo.constinfo !43
  %42 = lshr i64 %41, 27, !taffo.info !88, !taffo.constinfo !43
  %mul22.u9_23fixp = trunc i64 %42 to i32, !taffo.info !90
  %43 = lshr i32 %mul22.u9_23fixp, 4, !taffo.info !90
  br label %while.cond13, !llvm.loop !93

while.end24:                                      ; preds = %while.cond13
  %44 = lshr i32 %hi.0.u13_19fixp, 1, !taffo.info !19
  %45 = lshr i32 %lo.0.u13_19fixp, 1, !taffo.info !19
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end24
  %mid.0.u13_19fixp = phi i32 [ undef, %while.end24 ], [ %65, %for.inc ], !taffo.info !19
  %hi.1.u14_18fixp = phi i32 [ %44, %while.end24 ], [ %63, %for.inc ], !taffo.info !94
  %lo.1.u14_18fixp = phi i32 [ %45, %while.end24 ], [ %64, %for.inc ], !taffo.info !94
  %i.0 = phi i32 [ 0, %while.end24 ], [ %inc, %for.inc ], !taffo.info !96
  %cmp25 = icmp slt i32 %i.0, 100, !taffo.info !98
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add.u14_18fixp = add i32 %lo.1.u14_18fixp, %hi.1.u14_18fixp, !taffo.info !100
  %div.u14_18fixp = udiv i32 %add.u14_18fixp, 2, !taffo.info !94, !taffo.constinfo !47
  %46 = zext i32 %div.u14_18fixp to i64, !taffo.info !94
  %47 = zext i32 %div.u14_18fixp to i64, !taffo.info !94
  %48 = mul i64 %46, %47, !taffo.info !102
  %49 = lshr i64 %48, 17, !taffo.info !102
  %mul27.u13_19fixp = trunc i64 %49 to i32, !taffo.info !19
  %50 = zext i32 %mul27.u13_19fixp to i33, !taffo.info !19
  %51 = icmp eq i33 %50, %1, !taffo.info !22
  br i1 %51, label %if.then, label %if.end, !taffo.info !23, !taffo.initweight !24

if.then:                                          ; preds = %for.body
  %52 = shl i32 %div.u14_18fixp, 1, !taffo.info !94, !taffo.constinfo !47
  br label %return

if.end:                                           ; preds = %for.body
  %53 = zext i32 %div.u14_18fixp to i64, !taffo.info !94
  %54 = zext i32 %div.u14_18fixp to i64, !taffo.info !94
  %55 = mul i64 %53, %54, !taffo.info !102
  %56 = lshr i64 %55, 17, !taffo.info !102
  %mul30.u13_19fixp = trunc i64 %56 to i32, !taffo.info !19
  %57 = zext i32 %mul30.u13_19fixp to i33, !taffo.info !19
  %58 = icmp sgt i33 %57, %3, !taffo.info !22
  br i1 %58, label %if.then33, label %if.else, !taffo.info !23, !taffo.initweight !24

if.then33:                                        ; preds = %if.end
  %59 = shl i32 %lo.1.u14_18fixp, 1, !taffo.info !94
  %60 = shl i32 %div.u14_18fixp, 1, !taffo.info !94, !taffo.constinfo !47
  br label %if.end34

if.else:                                          ; preds = %if.end
  %61 = shl i32 %div.u14_18fixp, 1, !taffo.info !94, !taffo.constinfo !47
  %62 = shl i32 %hi.1.u14_18fixp, 1, !taffo.info !94
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then33
  %hi.2.u13_19fixp = phi i32 [ %60, %if.then33 ], [ %62, %if.else ], !taffo.info !19
  %lo.2.u13_19fixp = phi i32 [ %59, %if.then33 ], [ %61, %if.else ], !taffo.info !19
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %inc = add nsw i32 %i.0, 1, !taffo.info !98, !taffo.constinfo !50
  %63 = lshr i32 %hi.2.u13_19fixp, 1, !taffo.info !19
  %64 = lshr i32 %lo.2.u13_19fixp, 1, !taffo.info !19
  %65 = shl i32 %div.u14_18fixp, 1, !taffo.info !94, !taffo.constinfo !47
  br label %for.cond, !llvm.loop !104

for.end:                                          ; preds = %for.cond
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0.u13_19fixp = phi i32 [ %52, %if.then ], [ %mid.0.u13_19fixp, %for.end ], !taffo.info !105
  %66 = shl i32 %retval.0.u13_19fixp, 6, !taffo.info !105
  ret i32 %66
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.160000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.150000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.190000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.020000e+02}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 1.170000e+02}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!16 = !{i32 2}
!17 = distinct !{null}
!18 = !{i32 1, !19}
!19 = !{!20, !21, i1 false, i2 -1}
!20 = !{!"fixp", i32 32, i32 19}
!21 = !{double 0.000000e+00, double 4.096000e+03}
!22 = !{!20, i1 false, i1 false, i2 -1}
!23 = !{i1 false, !21, i1 false, i2 -1}
!24 = !{i32 3}
!25 = !{!26, !21, i1 false, i2 -1}
!26 = !{!"fixp", i32 64, i32 19}
!27 = !{!28, i1 false}
!28 = !{i1 false, !29, i1 false, i2 0}
!29 = !{double 1.000000e+02, double 1.000000e+02}
!30 = !{!31, !21, i1 false, i2 -1}
!31 = !{!"fixp", i32 64, i32 38}
!32 = !{i1 false, !33}
!33 = !{i1 false, !34, i1 false, i2 0}
!34 = !{double 1.000000e+01, double 1.000000e+01}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!38, !21, i1 false, i2 -1}
!38 = !{!"fixp", i32 64, i32 50}
!39 = !{!40, i1 false}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 1.000000e-02, double 1.000000e-02}
!42 = !{i32 4}
!43 = !{i1 false, !44}
!44 = !{i1 false, !45, i1 false, i2 0}
!45 = !{double 1.000000e-01, double 1.000000e-01}
!46 = distinct !{!46, !36}
!47 = !{i1 false, !48}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 2.000000e+00, double 2.000000e+00}
!50 = !{i1 false, i1 false}
!51 = distinct !{!51, !36}
!52 = !{}
!53 = !{i1 true}
!54 = !{i1 false, i1 false, i1 false}
!55 = !{!56, !57, i1 false, i2 -1}
!56 = !{!"fixp", i32 32, i32 25}
!57 = !{double 0.000000e+00, double 6.400000e+01}
!58 = !{!"result"}
!59 = !{!56, i1 false, i1 false, i2 -1}
!60 = !{i32 -1}
!61 = !{i32 0, i1 false}
!62 = !{float (float)* @NRsqrt}
!63 = !{!26, !64, i1 false, i2 -1}
!64 = !{double 0.000000e+00, double 4.096000e+05}
!65 = !{!66, !64, i1 false, i2 -1}
!66 = !{!"fixp", i32 32, i32 13}
!67 = !{!68, !69, i1 false, i2 -1}
!68 = !{!"fixp", i32 64, i32 32}
!69 = !{double 0.000000e+00, double 0x41D9000000000000}
!70 = !{!71, !69, i1 false, i2 -1}
!71 = !{!"fixp", i32 64, i32 33}
!72 = !{!71, i1 false, i1 false, i2 -1}
!73 = !{!26, !74, i1 false, i2 -1}
!74 = !{double 0.000000e+00, double 4.096000e+04}
!75 = !{!76, !74, i1 false, i2 -1}
!76 = !{!"fixp", i32 32, i32 16}
!77 = distinct !{!77, !36}
!78 = !{!38, !79, i1 false, i2 -1}
!79 = !{double 0.000000e+00, double 4.096000e+01}
!80 = !{!81, !79, i1 false, i2 -1}
!81 = !{!"fixp", i32 32, i32 26}
!82 = !{!83, !84, i1 false, i2 -1}
!83 = !{!"fixp", i32 64, i32 45}
!84 = !{double 0.000000e+00, double 0x41047AE147AE147B}
!85 = !{!86, !84, i1 false, i2 -1}
!86 = !{!"fixp", i32 32, i32 14}
!87 = !{!86, i1 false, i1 false, i2 -1}
!88 = !{!38, !89, i1 false, i2 -1}
!89 = !{double 0.000000e+00, double 4.096000e+02}
!90 = !{!91, !92, i1 false, i2 -1}
!91 = !{!"fixp", i32 32, i32 23}
!92 = !{double 0.000000e+00, double 0x40799999A0000000}
!93 = distinct !{!93, !36}
!94 = !{!95, !21, i1 false, i2 -1}
!95 = !{!"fixp", i32 32, i32 18}
!96 = !{i1 false, !97, i1 false, i2 0}
!97 = !{double 0.000000e+00, double 1.000000e+00}
!98 = !{i1 false, !99, i1 false, i2 0}
!99 = !{double 1.000000e+00, double 1.000000e+00}
!100 = !{!95, !101, i1 false, i2 -1}
!101 = !{double 0.000000e+00, double 8.192000e+03}
!102 = !{!103, !21, i1 false, i2 -1}
!103 = !{!"fixp", i32 64, i32 36}
!104 = distinct !{!104, !36}
!105 = !{!20, !21, i1 false, i2 1}
