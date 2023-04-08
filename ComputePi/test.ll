; ModuleID = '/tmp/tmp.S26cXX0tV0/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.3 = private unnamed_addr constant [34 x i8] c"Number of iterations to perform: \00", align 1, !taffo.info !0
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !taffo.info !2
@.str.5 = private unnamed_addr constant [24 x i8] c"The value of pi is: %f\0A\00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.start !12 !taffo.initweight !13 !taffo.funinfo !13 {
entry:
  %iters = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0)), !taffo.constinfo !14
  %call3 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* noundef %iters), !taffo.constinfo !15
  %0 = lshr i32 0, 5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %pi.0.u5_27fixp = phi i32 [ %0, %entry ], [ %5, %for.inc ], !taffo.info !16
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !19
  %1 = load i32, i32* %iters, align 4
  %cmp = icmp slt i32 %i.0, %1, !taffo.info !19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 2, %i.0, !taffo.info !21, !taffo.constinfo !14
  %add = add nsw i32 %mul, 1, !taffo.info !23, !taffo.constinfo !14
  %div.u1_31fixp = udiv i32 -2147483648, %add, !taffo.info !25, !taffo.constinfo !27
  %rem = srem i32 %i.0, 2, !taffo.info !21, !taffo.constinfo !14
  %cmp4 = icmp eq i32 %rem, 1, !taffo.info !21
  %2 = lshr i32 %div.u1_31fixp, 2, !taffo.info !25, !taffo.constinfo !27
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %fneg.u1_31fixp = sub i32 0, %div.u1_31fixp, !taffo.info !25
  %3 = lshr i32 %fneg.u1_31fixp, 2, !taffo.info !25
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %z.0.u3_29fixp = phi i32 [ %3, %if.then ], [ %2, %for.body ], !taffo.info !28
  %4 = shl i32 %pi.0.u5_27fixp, 2, !taffo.info !16
  %add6.u3_29fixp = add i32 %4, %z.0.u3_29fixp, !taffo.info !30, !taffo.target !32
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !23, !taffo.constinfo !14
  %5 = lshr i32 %add6.u3_29fixp, 2, !taffo.info !30, !taffo.target !32
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %6 = zext i32 %pi.0.u5_27fixp to i64, !taffo.info !16
  %7 = zext i32 4 to i64
  %8 = mul i64 %6, %7, !taffo.info !35, !taffo.constinfo !38, !taffo.target !32
  %mul7.u5_27fixp = trunc i64 %8 to i32, !taffo.info !41, !taffo.target !32
  %9 = uitofp i32 %mul7.u5_27fixp to double, !taffo.info !41, !taffo.target !32
  %10 = fdiv double %9, 0x41A0000000000000, !taffo.info !41, !taffo.target !32
  %call8.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), double noundef %10), !taffo.info !42, !taffo.initweight !43, !taffo.constinfo !15, !taffo.target !32
  ret i32 0
}

declare !taffo.initweight !44 !taffo.funinfo !45 i32 @printf(i8* noundef, ...) #1

declare !taffo.initweight !44 !taffo.funinfo !45 i32 @__isoc99_scanf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.170000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.000000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.180000e+02}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!12 = !{i1 true}
!13 = !{}
!14 = !{i1 false, i1 false}
!15 = !{i1 false, i1 false, i1 false}
!16 = !{!17, !18, i1 false, i2 -1}
!17 = !{!"fixp", i32 32, i32 27}
!18 = !{double 0.000000e+00, double 4.000000e+00}
!19 = !{i1 false, !20, i1 false, i2 0}
!20 = !{double 0.000000e+00, double 1.000000e+00}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double 0.000000e+00, double 0.000000e+00}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 1.000000e+00, double 1.000000e+00}
!25 = !{!26, !20, i1 false, i2 -1}
!26 = !{!"fixp", i32 32, i32 31}
!27 = !{!23, i1 false}
!28 = !{!29, !20, i1 false, i2 -1}
!29 = !{!"fixp", i32 32, i32 29}
!30 = !{!29, !31, i1 false, i2 -1}
!31 = !{double 0.000000e+00, double 5.000000e+00}
!32 = !{!"pi"}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!36, !37, i1 false, i2 -1}
!36 = !{!"fixp", i32 64, i32 27}
!37 = !{double 0.000000e+00, double 1.600000e+01}
!38 = !{i1 false, !39}
!39 = !{i1 false, !40, i1 false, i2 0}
!40 = !{double 4.000000e+00, double 4.000000e+00}
!41 = !{!17, !37, i1 false, i2 -1}
!42 = !{!17, i1 false, i1 false, i2 -1}
!43 = !{i32 3}
!44 = !{i32 -1}
!45 = !{i32 0, i1 false}
