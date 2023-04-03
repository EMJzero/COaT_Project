; ModuleID = '/tmp/tmp.wgTrjLQ9gH/test.ll.4.taffotmp.ll'
source_filename = "test_inline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.2 = private unnamed_addr constant [10 x i8] c"Sqrt of: \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Result: %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.start !2 !taffo.initweight !3 !taffo.funinfo !3 {
entry:
  %retval = alloca i32, align 4
  %in = alloca float, align 4, !taffo.initweight !4, !taffo.target !5, !taffo.info !6
  %lo = alloca float, align 4, !taffo.initweight !4, !taffo.info !6
  %hi = alloca float, align 4, !taffo.initweight !4, !taffo.info !6
  %mid = alloca float, align 4, !taffo.initweight !4, !taffo.target !7, !taffo.info !6
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %call2 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float* %in), !taffo.initweight !8, !taffo.target !5, !taffo.info !6
  %0 = load float, float* %in, align 4, !taffo.initweight !8, !taffo.target !5, !taffo.info !6
  %cmp = fcmp olt float %0, 1.000000e+00, !taffo.initweight !9, !taffo.target !5, !taffo.info !6
  br i1 %cmp, label %cond.true, label %cond.false, !taffo.initweight !10, !taffo.target !5, !taffo.info !6

cond.true:                                        ; preds = %entry
  %1 = load float, float* %in, align 4, !taffo.initweight !8, !taffo.target !5, !taffo.info !6
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %1, %cond.true ], [ 1.000000e+00, %cond.false ], !taffo.initweight !9, !taffo.target !5, !taffo.info !6
  store float %cond, float* %lo, align 4, !taffo.info !6
  %2 = load float, float* %in, align 4, !taffo.initweight !8, !taffo.target !5, !taffo.info !6
  %cmp5 = fcmp ogt float %2, 1.000000e+00, !taffo.initweight !9, !taffo.target !5, !taffo.info !6
  br i1 %cmp5, label %cond.true6, label %cond.false7, !taffo.initweight !10, !taffo.target !5, !taffo.info !6

cond.true6:                                       ; preds = %cond.end
  %3 = load float, float* %in, align 4, !taffo.initweight !8, !taffo.target !5, !taffo.info !6
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi float [ %3, %cond.true6 ], [ 1.000000e+00, %cond.false7 ], !taffo.initweight !9, !taffo.target !5, !taffo.info !6
  store float %cond9, float* %hi, align 4, !taffo.info !6
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end8
  %4 = load float, float* %lo, align 4, !taffo.initweight !8, !taffo.info !6
  %mul = fmul float 1.000000e+02, %4, !taffo.initweight !9, !taffo.info !6
  %5 = load float, float* %lo, align 4, !taffo.initweight !8, !taffo.info !6
  %mul11 = fmul float %mul, %5, !taffo.initweight !9, !taffo.info !6
  %6 = load float, float* %in, align 4, !taffo.initweight !8, !taffo.target !5, !taffo.info !6
  %cmp12 = fcmp olt float %mul11, %6, !taffo.initweight !9, !taffo.target !5, !taffo.info !6
  br i1 %cmp12, label %while.body, label %while.end, !taffo.initweight !10, !taffo.target !5, !taffo.info !6

while.body:                                       ; preds = %while.cond
  %7 = load float, float* %lo, align 4, !taffo.initweight !8, !taffo.info !6
  %mul13 = fmul float %7, 1.000000e+01, !taffo.initweight !9, !taffo.info !6
  store float %mul13, float* %lo, align 4, !taffo.info !6
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  br label %while.cond14

while.cond14:                                     ; preds = %while.body21, %while.end
  %8 = load float, float* %hi, align 4, !taffo.initweight !8, !taffo.info !6
  %conv = fpext float %8 to double, !taffo.initweight !9, !taffo.info !6
  %mul15 = fmul double 1.000000e-02, %conv, !taffo.initweight !10, !taffo.info !6
  %9 = load float, float* %hi, align 4, !taffo.initweight !8, !taffo.info !6
  %conv16 = fpext float %9 to double, !taffo.initweight !9, !taffo.info !6
  %mul17 = fmul double %mul15, %conv16, !taffo.initweight !10, !taffo.info !6
  %10 = load float, float* %in, align 4, !taffo.initweight !8, !taffo.target !5, !taffo.info !6
  %conv18 = fpext float %10 to double, !taffo.initweight !9, !taffo.target !5, !taffo.info !6
  %cmp19 = fcmp ogt double %mul17, %conv18, !taffo.initweight !10, !taffo.target !5, !taffo.info !6
  br i1 %cmp19, label %while.body21, label %while.end25, !taffo.initweight !13, !taffo.target !5, !taffo.info !6

while.body21:                                     ; preds = %while.cond14
  %11 = load float, float* %hi, align 4, !taffo.initweight !8, !taffo.info !6
  %conv22 = fpext float %11 to double, !taffo.initweight !9, !taffo.info !6
  %mul23 = fmul double %conv22, 1.000000e-01, !taffo.initweight !10, !taffo.info !6
  %conv24 = fptrunc double %mul23 to float, !taffo.initweight !13, !taffo.info !6
  store float %conv24, float* %hi, align 4, !taffo.info !6
  br label %while.cond14, !llvm.loop !14

while.end25:                                      ; preds = %while.cond14
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end25
  %12 = load i32, i32* %i, align 4
  %cmp26 = icmp slt i32 %12, 100
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load float, float* %lo, align 4, !taffo.initweight !8, !taffo.info !6
  %14 = load float, float* %hi, align 4, !taffo.initweight !8, !taffo.info !6
  %add = fadd float %13, %14, !taffo.initweight !9, !taffo.info !6
  %div = fdiv float %add, 2.000000e+00, !taffo.initweight !10, !taffo.info !6
  store float %div, float* %mid, align 4, !taffo.target !7, !taffo.info !6
  %15 = load float, float* %mid, align 4, !taffo.initweight !8, !taffo.target !7, !taffo.info !6
  %16 = load float, float* %mid, align 4, !taffo.initweight !8, !taffo.target !7, !taffo.info !6
  %mul28 = fmul float %15, %16, !taffo.initweight !9, !taffo.target !7, !taffo.info !6
  %17 = load float, float* %in, align 4, !taffo.initweight !8, !taffo.target !5, !taffo.info !6
  %cmp29 = fcmp oeq float %mul28, %17, !taffo.initweight !9, !taffo.target !5, !taffo.info !6
  br i1 %cmp29, label %if.then, label %if.end, !taffo.initweight !10, !taffo.target !5, !taffo.info !6

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %18 = load float, float* %mid, align 4, !taffo.initweight !8, !taffo.target !7, !taffo.info !6
  %19 = load float, float* %mid, align 4, !taffo.initweight !8, !taffo.target !7, !taffo.info !6
  %mul31 = fmul float %18, %19, !taffo.initweight !9, !taffo.target !7, !taffo.info !6
  %20 = load float, float* %in, align 4, !taffo.initweight !8, !taffo.target !5, !taffo.info !6
  %cmp32 = fcmp ogt float %mul31, %20, !taffo.initweight !9, !taffo.target !5, !taffo.info !6
  br i1 %cmp32, label %if.then34, label %if.else, !taffo.initweight !10, !taffo.target !5, !taffo.info !6

if.then34:                                        ; preds = %if.end
  %21 = load float, float* %mid, align 4, !taffo.initweight !8, !taffo.target !7, !taffo.info !6
  store float %21, float* %hi, align 4, !taffo.info !6
  br label %if.end35

if.else:                                          ; preds = %if.end
  %22 = load float, float* %mid, align 4, !taffo.initweight !8, !taffo.target !7, !taffo.info !6
  store float %22, float* %lo, align 4, !taffo.info !6
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then34
  br label %for.inc

for.inc:                                          ; preds = %if.end35
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %if.then, %for.cond
  %24 = load float, float* %mid, align 4, !taffo.initweight !8, !taffo.target !7, !taffo.info !6
  %conv36 = fpext float %24 to double, !taffo.initweight !9, !taffo.target !7, !taffo.info !6
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), double %conv36), !taffo.initweight !10, !taffo.target !7, !taffo.info !6
  ret i32 0
}

declare !taffo.initweight !16 !taffo.funinfo !17 dso_local i32 @printf(i8*, ...) #1

declare !taffo.initweight !16 !taffo.funinfo !17 dso_local i32 @scanf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!2 = !{i1 true}
!3 = !{}
!4 = !{i32 0}
!5 = !{!"input"}
!6 = !{i1 false, i1 false, i1 false, i2 1}
!7 = !{!"result"}
!8 = !{i32 1}
!9 = !{i32 2}
!10 = !{i32 3}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{i32 4}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = !{i32 -1}
!17 = !{i32 0, i1 false}
