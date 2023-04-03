; ModuleID = '/tmp/tmp.IzEwwASGEd/test.ll.4.taffotmp.ll'
source_filename = "test_optimized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.2 = private unnamed_addr constant [42 x i8] c"How many iterations to calculate pi for? \00", align 1, !taffo.info !0
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !taffo.info !2
@.str.4 = private unnamed_addr constant [24 x i8] c"The value of pi is: %f\0A\00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.start !8 !taffo.initweight !9 !taffo.funinfo !9 {
entry:
  %iters = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0)), !taffo.constinfo !10
  %call2 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %iters), !taffo.constinfo !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %pi.0.u3_29fixp = phi i32 [ 0, %entry ], [ %sub.u3_29fixp, %for.inc ], !taffo.info !12
  %i.0 = phi i32 [ 0, %entry ], [ %add7, %for.inc ], !taffo.info !15
  %0 = load i32, i32* %iters, align 4
  %mul = mul nsw i32 %0, 2, !taffo.constinfo !10
  %cmp = icmp slt i32 %i.0, %mul, !taffo.info !16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %i.0, 1, !taffo.info !18, !taffo.constinfo !10
  %conv.u1_31fixp = shl i32 %add, 31, !taffo.info !20, !taffo.constinfo !10
  %1 = uitofp i32 %conv.u1_31fixp to double, !taffo.info !20
  %2 = fdiv double %1, 0x41E0000000000000, !taffo.info !20, !taffo.constinfo !10
  %div = fdiv double 1.000000e+00, %2, !taffo.info !18, !taffo.constinfo !22
  %3 = fmul double 0x41E0000000000000, %div, !taffo.info !18, !taffo.constinfo !22
  %4 = fptoui double %3 to i32, !taffo.info !18
  %5 = lshr i32 %4, 2, !taffo.info !18
  %add3.u3_29fixp = add i32 %pi.0.u3_29fixp, %5, !taffo.info !23, !taffo.target !24
  %add4 = add nsw i32 %i.0, 3, !taffo.info !25, !taffo.constinfo !10
  %conv5.u2_30fixp = shl i32 %add4, 30, !taffo.info !27, !taffo.constinfo !10
  %6 = uitofp i32 %conv5.u2_30fixp to double, !taffo.info !27
  %7 = fdiv double %6, 0x41D0000000000000, !taffo.info !27, !taffo.constinfo !10
  %div6 = fdiv double 1.000000e+00, %7, !taffo.info !29, !taffo.constinfo !22
  %8 = fmul double 0x41E0000000000000, %div6, !taffo.info !29, !taffo.constinfo !22
  %9 = fptoui double %8 to i32, !taffo.info !29
  %10 = lshr i32 %9, 2, !taffo.info !29
  %sub.u3_29fixp = sub i32 %add3.u3_29fixp, %10, !taffo.info !23, !taffo.target !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %add7 = add nsw i32 %i.0, 4, !taffo.info !31, !taffo.constinfo !10
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %11 = zext i32 %pi.0.u3_29fixp to i64, !taffo.info !12
  %12 = mul i64 %11, 4, !taffo.info !35, !taffo.constinfo !37, !taffo.target !24
  %mul8.u3_29fixp = trunc i64 %12 to i32, !taffo.info !23, !taffo.target !24
  %13 = uitofp i32 %mul8.u3_29fixp to double, !taffo.info !23, !taffo.target !24
  %14 = fdiv double %13, 0x41C0000000000000, !taffo.info !23, !taffo.target !24
  %call9.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), double %14), !taffo.info !40, !taffo.initweight !41, !taffo.constinfo !11, !taffo.target !24
  ret i32 0
}

declare !taffo.initweight !42 !taffo.funinfo !43 dso_local i32 @printf(i8*, ...) #1

declare !taffo.initweight !42 !taffo.funinfo !43 dso_local i32 @scanf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!6}
!llvm.ident = !{!7}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.210000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.000000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.180000e+02}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!8 = !{i1 true}
!9 = !{}
!10 = !{i1 false, i1 false}
!11 = !{i1 false, i1 false, i1 false}
!12 = !{!13, !14, i1 false, i2 1}
!13 = !{!"fixp", i32 32, i32 29}
!14 = !{double 0.000000e+00, double 4.000000e+00}
!15 = !{i1 false, !14, i1 false, i2 0}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 0.000000e+00, double 1.000000e+00}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 1.000000e+00, double 1.000000e+00}
!20 = !{!21, !19, i1 false, i2 1}
!21 = !{!"fixp", i32 32, i32 31}
!22 = !{!18, i1 false}
!23 = !{!13, !14, i1 false, i2 -1}
!24 = !{!"pi"}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 3.000000e+00, double 3.000000e+00}
!27 = !{!28, !26, i1 false, i2 1}
!28 = !{!"fixp", i32 32, i32 30}
!29 = !{i1 false, !30, i1 false, i2 0}
!30 = !{double 0x3FD5555555555555, double 0x3FD5555555555555}
!31 = !{i1 false, !32, i1 false, i2 0}
!32 = !{double 4.000000e+00, double 4.000000e+00}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!36, !14, i1 false, i2 -1}
!36 = !{!"fixp", i32 64, i32 29}
!37 = !{i1 false, !38}
!38 = !{!39, !32, i1 false, i2 0}
!39 = !{!"fixp", i32 32, i32 0}
!40 = !{!13, i1 false, i1 false, i2 -1}
!41 = !{i32 3}
!42 = !{i32 -1}
!43 = !{i32 0, i1 false}
