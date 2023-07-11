; ModuleID = '/tmp/tmp.Ja3POXAs5v/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.3 = private unnamed_addr constant [10 x i8] c"Value: %f\00", align 1, !taffo.info !0
@.str.4 = private unnamed_addr constant [34 x i8] c"Number of iterations to perform: \00", align 1, !taffo.info !0
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !taffo.info !2
@.str.6 = private unnamed_addr constant [24 x i8] c"The value of pi is: %f\0A\00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local void @compute_pi(i32 noundef %iters, float* noundef %res) #0 !taffo.start !12 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %0 = lshr i32 0, 5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %pi.0.u5_27fixp = phi i32 [ %0, %entry ], [ %6, %for.inc ], !taffo.info !15
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !18
  %1 = uitofp i32 %pi.0.u5_27fixp to double, !taffo.info !15
  %2 = fdiv double %1, 0x41A0000000000000, !taffo.info !15
  %cmp = icmp slt i32 %i.0, %iters, !taffo.info !18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 2, %i.0, !taffo.info !20, !taffo.constinfo !22
  %add = add nsw i32 %mul, 1, !taffo.info !23, !taffo.constinfo !22
  %div.u1_31fixp = udiv i32 -2147483648, %add, !taffo.info !25, !taffo.constinfo !27
  %rem = srem i32 %i.0, 2, !taffo.info !20, !taffo.constinfo !22
  %cmp3 = icmp eq i32 %rem, 1, !taffo.info !20
  %3 = lshr i32 %div.u1_31fixp, 2, !taffo.info !25, !taffo.constinfo !27
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %fneg.u1_31fixp = sub i32 0, %div.u1_31fixp, !taffo.info !25
  %4 = lshr i32 %fneg.u1_31fixp, 2, !taffo.info !25
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %z.0.u3_29fixp = phi i32 [ %4, %if.then ], [ %3, %for.body ], !taffo.info !28
  %5 = shl i32 %pi.0.u5_27fixp, 2, !taffo.info !15
  %add5.u3_29fixp = add i32 %5, %z.0.u3_29fixp, !taffo.info !30, !taffo.target !32
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !taffo.info !23, !taffo.constinfo !22
  %6 = lshr i32 %add5.u3_29fixp, 2, !taffo.info !30, !taffo.target !32
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  %call.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), double noundef %2), !taffo.info !35, !taffo.initweight !36, !taffo.constinfo !37, !taffo.target !32
  %7 = zext i32 %pi.0.u5_27fixp to i64, !taffo.info !15
  %8 = zext i32 4 to i64
  %9 = mul i64 %7, %8, !taffo.info !38, !taffo.constinfo !41, !taffo.target !32
  %mul6.u5_27fixp = trunc i64 %9 to i32, !taffo.info !44, !taffo.target !32
  %10 = uitofp i32 %mul6.u5_27fixp to float, !taffo.info !44, !taffo.target !32
  %11 = fdiv float %10, 0x41A0000000000000, !taffo.info !44, !taffo.target !32
  store float %11, float* %res, align 4, !taffo.info !45, !taffo.target !32
  ret void
}

declare !taffo.initweight !46 !taffo.funinfo !47 i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !48 !taffo.funinfo !48 {
entry:
  %iters = alloca i32, align 4
  %pi = alloca float, align 4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0)), !taffo.constinfo !22
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32* noundef %iters), !taffo.constinfo !37
  %0 = load i32, i32* %iters, align 4
  call void @compute_pi(i32 noundef %0, float* noundef %pi), !taffo.constinfo !37
  %1 = load float, float* %pi, align 4
  %conv = fpext float %1 to double
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), double noundef %conv), !taffo.constinfo !37
  ret i32 0
}

declare !taffo.initweight !46 !taffo.funinfo !47 i32 @__isoc99_scanf(i8* noundef, ...) #1

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
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 15.0.7"}
!12 = !{i1 true}
!13 = !{i32 -1, i32 -1}
!14 = !{i32 0, i1 false, i32 0, i1 false}
!15 = !{!16, !17, i1 false, i2 -1}
!16 = !{!"fixp", i32 32, i32 27}
!17 = !{double 0.000000e+00, double 4.000000e+00}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 0.000000e+00, double 1.000000e+00}
!20 = !{i1 false, !21, i1 false, i2 0}
!21 = !{double 0.000000e+00, double 0.000000e+00}
!22 = !{i1 false, i1 false}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 1.000000e+00, double 1.000000e+00}
!25 = !{!26, !19, i1 false, i2 -1}
!26 = !{!"fixp", i32 32, i32 31}
!27 = !{!23, i1 false}
!28 = !{!29, !19, i1 false, i2 -1}
!29 = !{!"fixp", i32 32, i32 29}
!30 = !{!29, !31, i1 false, i2 -1}
!31 = !{double 0.000000e+00, double 5.000000e+00}
!32 = !{!"pi"}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!29, i1 false, i1 false, i2 -1}
!36 = !{i32 2}
!37 = !{i1 false, i1 false, i1 false}
!38 = !{!39, !40, i1 false, i2 -1}
!39 = !{!"fixp", i32 64, i32 27}
!40 = !{double 0.000000e+00, double 1.600000e+01}
!41 = !{i1 false, !42}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 4.000000e+00, double 4.000000e+00}
!44 = !{!16, !40, i1 false, i2 -1}
!45 = !{i1 false, !17, i1 false, i2 -1}
!46 = !{i32 -1}
!47 = !{i32 0, i1 false}
!48 = !{}
