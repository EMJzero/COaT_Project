; ModuleID = '/tmp/tmp.tEMrZADMCN/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"scalar(range(-1, 1))\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", section "llvm.metadata", !taffo.info !2
@.str.3 = private unnamed_addr constant [3 x i8] c"%f\00", align 1, !taffo.info !4
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32, i8* }] [{ i8*, i8*, i8*, i32, i8* } { i8* bitcast (float ()* @foo to i8*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 3, i8* null }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local float @foo() #0 !taffo.initweight !8 !taffo.equivalentChild !9 !taffo.funinfo !8 {
entry:
  ret float 0x3FC99999A0000000
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !8 !taffo.funinfo !8 !taffo.start !10 {
entry:
  %call.u1_31fixp = call i32 @foo.1_u1_31fixp(), !taffo.info !11, !taffo.constinfo !14
  %conv8.s2_30fixp = lshr i32 %call.u1_31fixp, 1, !taffo.info !15
  %add9.s2_30fixp = add i32 -268435456, %conv8.s2_30fixp, !taffo.info !17, !taffo.target !19
  %0 = sitofp i32 %add9.s2_30fixp to double, !taffo.info !17, !taffo.target !19
  %1 = fdiv double %0, 0x41D0000000000000, !taffo.info !17, !taffo.target !19
  %call12.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double %1), !taffo.info !20, !taffo.initweight !21, !taffo.constinfo !22, !taffo.target !19
  ret i32 0
}

declare !taffo.initweight !23 !taffo.funinfo !24 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo.1_u1_31fixp() #0 !taffo.initweight !8 !taffo.funinfo !8 !taffo.sourceFunction !25 {
entry:
  ret i32 429496736
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!6}
!llvm.ident = !{!7}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.150000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.160000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.020000e+02}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!8 = !{}
!9 = distinct !{null}
!10 = !{i1 true}
!11 = !{!12, !13, i1 false, i2 1}
!12 = !{!"fixp", i32 32, i32 31}
!13 = !{double 0x3FC99999A0000000, double 0x3FC99999A0000000}
!14 = !{i1 false}
!15 = !{!16, !13, i1 false, i2 1}
!16 = !{!"fixp", i32 -32, i32 30}
!17 = !{!16, !18, i1 false, i2 1}
!18 = !{double 0xBFE19999A0000000, double 0xBFE1999980000000}
!19 = !{!"output"}
!20 = !{!16, i1 false, i1 false, i2 1}
!21 = !{i32 3}
!22 = !{i1 false, i1 false, i1 false}
!23 = !{i32 -1}
!24 = !{i32 0, i1 false}
!25 = !{float ()* @foo}
