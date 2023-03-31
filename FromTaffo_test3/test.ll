; ModuleID = '/tmp/tmp.FYIJ6COoBV/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@random.seed = internal global i32 123456, align 4, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local float @random() #0 !taffo.initweight !4 !taffo.funinfo !4 {
  %1 = load i32, i32* @random.seed, align 4
  %2 = mul i32 %1, -928963441, !taffo.constinfo !5
  %3 = add i32 %2, 42, !taffo.constinfo !5
  %4 = urem i32 %3, -2, !taffo.constinfo !5
  store i32 %4, i32* @random.seed, align 4, !taffo.constinfo !5
  %5 = load i32, i32* @random.seed, align 4
  %6 = uitofp i32 %5 to double
  %7 = fdiv double %6, 0x41EFFFFFFFE00000, !taffo.constinfo !6
  %8 = fptrunc double %7 to float
  ret float %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @test(i32 %0, i32 %1, i32 %2, float %3, float %4, float %5) #0 !taffo.initweight !9 !taffo.funinfo !10 {
  %7 = fmul float 6.553600e+04, %3
  %8 = fptosi float %7 to i32
  %9 = icmp ne i32 %0, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %12

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11, %10
  %.0 = phi float [ %5, %10 ], [ 1.500000e+00, %11 ]
  %13 = call float @random(), !taffo.constinfo !11
  %14 = fmul float 6.553600e+04, %.0, !taffo.info !12
  %15 = fptosi float %14 to i32, !taffo.info !12
  %16 = fmul float 6.553600e+04, %13, !taffo.info !12
  %17 = fptosi float %16 to i32, !taffo.info !12, !taffo.constinfo !11
  %18 = sext i32 %15 to i64, !taffo.info !12
  %19 = sext i32 %17 to i64, !taffo.info !12, !taffo.constinfo !11
  %20 = mul i64 %18, %19, !taffo.info !15
  %21 = ashr i64 %20, 16, !taffo.info !15
  %s16_16fixp = trunc i64 %21 to i32, !taffo.info !12
  %22 = icmp ne i32 %1, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %12
  %s16_16fixp2 = add i32 %s16_16fixp, %8, !taffo.info !12
  %24 = call float @random(), !taffo.constinfo !11
  %25 = fmul float 6.553600e+04, %24, !taffo.info !12
  %26 = fptosi float %25 to i32, !taffo.info !12, !taffo.constinfo !11
  %27 = sext i32 %s16_16fixp2 to i64, !taffo.info !12
  %28 = sext i32 %26 to i64, !taffo.info !12, !taffo.constinfo !11
  %29 = mul i64 %27, %28, !taffo.info !15
  %30 = ashr i64 %29, 16, !taffo.info !15
  %s16_16fixp3 = trunc i64 %30 to i32, !taffo.info !12
  br label %39

31:                                               ; preds = %12
  %32 = call float @random(), !taffo.constinfo !11
  %33 = fmul float 6.553600e+04, %32, !taffo.info !12
  %34 = fptosi float %33 to i32, !taffo.info !12, !taffo.constinfo !11
  %35 = sext i32 %s16_16fixp to i64, !taffo.info !12
  %36 = shl i64 %35, 16, !taffo.info !12
  %37 = sext i32 %34 to i64, !taffo.info !12, !taffo.constinfo !11
  %38 = sdiv i64 %36, %37, !taffo.info !17
  %s16_16fixp1 = trunc i64 %38 to i32, !taffo.info !12
  br label %39

39:                                               ; preds = %31, %23
  %.1.s16_16fixp = phi i32 [ %s16_16fixp3, %23 ], [ %s16_16fixp1, %31 ], !taffo.info !19
  %40 = sitofp i32 %.1.s16_16fixp to float, !taffo.info !19
  %41 = fdiv float %40, 6.553600e+04, !taffo.info !19
  ret float %41, !taffo.info !20, !taffo.initweight !21
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @test2(i32 %0) #0 !taffo.initweight !22 !taffo.funinfo !23 {
  %2 = icmp ne i32 %0, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = call float @random(), !taffo.constinfo !11
  %5 = fmul float 6.553600e+04, %4, !taffo.info !12
  %6 = fptosi float %5 to i32, !taffo.info !12, !taffo.constinfo !11
  %s16_16fixp = add i32 0, %6, !taffo.info !12, !taffo.constinfo !24
  br label %8

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7, %3
  %.0.s16_16fixp = phi i32 [ %s16_16fixp, %3 ], [ 131072, %7 ], !taffo.info !19
  %9 = call float @random(), !taffo.constinfo !11
  %10 = fmul float 6.553600e+04, %9, !taffo.info !12
  %11 = fptosi float %10 to i32, !taffo.info !12, !taffo.constinfo !11
  %s16_16fixp1 = add i32 %.0.s16_16fixp, %11, !taffo.info !12
  %12 = sitofp i32 %s16_16fixp1 to float, !taffo.info !12
  %13 = fdiv float %12, 6.553600e+04, !taffo.info !12
  ret float %13, !taffo.info !20, !taffo.initweight !21
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!2}
!llvm.ident = !{!3}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 1.234560e+05, double 1.234560e+05}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!4 = !{}
!5 = !{i1 false, i1 false}
!6 = !{i1 false, !7}
!7 = !{i1 false, !8, i1 false, i2 0}
!8 = !{double 0x41EFFFFFFFE00000, double 0x41EFFFFFFFE00000}
!9 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!10 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!11 = !{i1 false}
!12 = !{!13, !14, i1 false, i2 1}
!13 = !{!"fixp", i32 -32, i32 16}
!14 = !{double -3.276700e+04, double 3.276700e+04}
!15 = !{!16, !14, i1 false, i2 1}
!16 = !{!"fixp", i32 -64, i32 32}
!17 = !{!18, !14, i1 false, i2 1}
!18 = !{!"fixp", i32 -64, i32 16}
!19 = !{!13, i1 false, i1 false, i2 1}
!20 = !{i1 false, !14, i1 false, i2 1}
!21 = !{i32 2}
!22 = !{i32 -1}
!23 = !{i32 0, i1 false}
!24 = !{!25, i1 false}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 0.000000e+00, double 0.000000e+00}
