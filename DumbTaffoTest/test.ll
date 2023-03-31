; ModuleID = '/tmp/tmp.SU32H5rPeJ/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.2 = private unnamed_addr constant [3 x i8] c"%f\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local float @foo() #0 !taffo.initweight !4 !taffo.funinfo !4 {
  ret float 0x3FC99999A0000000
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !4 !taffo.funinfo !4 !taffo.start !5 {
  %1 = call float @foo(), !taffo.info !6, !taffo.constinfo !8
  %2 = fpext float %1 to double, !taffo.info !6
  %3 = fmul double 0x41E0000000000000, %2, !taffo.info !6
  %4 = fptoui double %3 to i32, !taffo.info !6
  %5 = lshr i32 %4, 1, !taffo.info !6
  %s2_30fixp = add i32 -268435456, %5, !taffo.info !9, !taffo.target !12
  %6 = sitofp i32 %s2_30fixp to float, !taffo.info !9, !taffo.target !12
  %7 = fdiv float %6, 0x41D0000000000000, !taffo.info !9, !taffo.target !12
  %8 = fpext float %7 to double, !taffo.info !13
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), double %8), !taffo.constinfo !14
  ret i32 0
}

declare !taffo.initweight !15 !taffo.funinfo !16 dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!2}
!llvm.ident = !{!3}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.020000e+02}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!4 = !{}
!5 = !{i1 true}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0x3FC99999A0000000, double 0x3FC99999A0000000}
!8 = !{i1 false}
!9 = !{!10, !11, i1 false, i2 1}
!10 = !{!"fixp", i32 -32, i32 30}
!11 = !{double 0xBFE19999A0000000, double 0xBFE1999980000000}
!12 = !{!"output_signal"}
!13 = !{i1 false, !11, i1 false, i2 0}
!14 = !{i1 false, i1 false, i1 false}
!15 = !{i32 -1}
!16 = !{i32 0, i1 false}
