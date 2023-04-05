; ModuleID = '/tmp/tmp.HFuVv0BBG6/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.v = private unnamed_addr constant [8 x float] [float 4.000000e+00, float 2.000000e+00, float 7.000000e+00, float 8.000000e+00, float 2.000000e+00, float 1.000000e+00, float 5.000000e+00, float 1.100000e+01], align 16, !taffo.info !0
@.str.3 = private unnamed_addr constant [12 x i8] c"Norm: %.4f\0A\00", align 1, !taffo.info !2
@.str.4 = private unnamed_addr constant [9 x i8] c"Result: \00", align 1, !taffo.info !4
@.str.5 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1, !taffo.info !6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.start !10 !taffo.initweight !11 !taffo.funinfo !11 {
entry:
  %v = alloca [8 x float], align 16, !taffo.info !12, !taffo.initweight !13, !taffo.target !14
  %0 = bitcast [8 x float]* %v to i8*, !taffo.info !12, !taffo.initweight !15, !taffo.target !14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([8 x float]* @__const.main.v to i8*), i64 32, i1 false), !taffo.info !12, !taffo.initweight !16, !taffo.target !14, !taffo.constinfo !17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !18
  %norm_squared.0.u0_32fixp = phi i32 [ 0, %entry ], [ %add.u0_32fixp, %for.inc ], !taffo.info !20
  %1 = uitofp i32 %norm_squared.0.u0_32fixp to float, !taffo.info !20
  %2 = fdiv float %1, 0x41F0000000000000, !taffo.info !20
  %cmp = icmp slt i32 %i.0, 8, !taffo.info !23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !25
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %v, i64 0, i64 %idxprom, !taffo.info !12, !taffo.initweight !15, !taffo.target !14
  %3 = load float, float* %arrayidx, align 4, !taffo.info !12, !taffo.initweight !16, !taffo.target !14
  %idxprom3 = sext i32 %i.0 to i64, !taffo.info !25
  %arrayidx4 = getelementptr inbounds [8 x float], [8 x float]* %v, i64 0, i64 %idxprom3, !taffo.info !12, !taffo.initweight !15, !taffo.target !14
  %4 = load float, float* %arrayidx4, align 4, !taffo.info !12, !taffo.initweight !16, !taffo.target !14
  %mul = fmul float %3, %4, !taffo.info !12, !taffo.initweight !27, !taffo.target !14
  %5 = fmul float 0x41F0000000000000, %mul, !taffo.info !12, !taffo.target !14
  %6 = fptoui float %5 to i32, !taffo.info !12, !taffo.target !14
  %add.u0_32fixp = add i32 %norm_squared.0.u0_32fixp, %6, !taffo.info !28
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !29, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %call.flt = call float @sqrtf(float %2) #4, !taffo.info !20, !taffo.initweight !16, !taffo.constinfo !31
  %7 = fmul float 0x41F0000000000000, %call.flt, !taffo.info !20, !taffo.constinfo !31
  %call.flt.fallback.u0_32fixp = fptoui float %7 to i32, !taffo.info !20
  %8 = uitofp i32 %call.flt.fallback.u0_32fixp to double, !taffo.info !20
  %9 = fdiv double %8, 0x41F0000000000000, !taffo.info !20
  %call6.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), double %9), !taffo.info !28, !taffo.initweight !27, !taffo.constinfo !34
  %10 = zext i32 %call.flt.fallback.u0_32fixp to i33, !taffo.info !20
  %11 = icmp ne i33 %10, 0, !taffo.info !28
  br i1 %11, label %if.then, label %if.end, !taffo.info !12, !taffo.initweight !27

if.then:                                          ; preds = %for.end
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc18, %if.then
  %i9.0 = phi i32 [ 0, %if.then ], [ %inc19, %for.inc18 ], !taffo.info !18
  %cmp11 = icmp slt i32 %i9.0, 8, !taffo.info !23
  br i1 %cmp11, label %for.body13, label %for.end20

for.body13:                                       ; preds = %for.cond10
  %idxprom14 = sext i32 %i9.0 to i64, !taffo.info !25
  %arrayidx15 = getelementptr inbounds [8 x float], [8 x float]* %v, i64 0, i64 %idxprom14, !taffo.info !12, !taffo.initweight !15, !taffo.target !14
  %12 = load float, float* %arrayidx15, align 4, !taffo.info !12, !taffo.initweight !16, !taffo.target !14
  %13 = fmul float 0x41F0000000000000, %12, !taffo.info !12, !taffo.target !14
  %14 = fptoui float %13 to i32, !taffo.info !12, !taffo.target !14
  %15 = zext i32 %14 to i64, !taffo.info !12, !taffo.target !14
  %16 = shl i64 %15, 32, !taffo.info !12, !taffo.target !14
  %17 = zext i32 %call.flt.fallback.u0_32fixp to i64, !taffo.info !20
  %18 = udiv i64 %16, %17, !taffo.info !35
  %div.u0_32fixp = trunc i64 %18 to i32, !taffo.info !28
  %19 = uitofp i32 %div.u0_32fixp to float, !taffo.info !28
  %20 = fdiv float %19, 0x41F0000000000000, !taffo.info !28
  %idxprom16 = sext i32 %i9.0 to i64, !taffo.info !25
  %arrayidx17 = getelementptr inbounds [8 x float], [8 x float]* %v, i64 0, i64 %idxprom16, !taffo.info !12, !taffo.initweight !15, !taffo.target !14
  store float %20, float* %arrayidx17, align 4, !taffo.info !12, !taffo.target !14
  br label %for.inc18

for.inc18:                                        ; preds = %for.body13
  %inc19 = add nsw i32 %i9.0, 1, !taffo.info !29, !taffo.constinfo !31
  br label %for.cond10, !llvm.loop !37

for.end20:                                        ; preds = %for.cond10
  br label %if.end

if.end:                                           ; preds = %for.end, %for.end20
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !taffo.constinfo !31
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc31, %if.end
  %i22.0 = phi i32 [ 0, %if.end ], [ %inc32, %for.inc31 ], !taffo.info !18
  %cmp24 = icmp slt i32 %i22.0, 8, !taffo.info !23
  br i1 %cmp24, label %for.body26, label %for.end33

for.body26:                                       ; preds = %for.cond23
  %idxprom27 = sext i32 %i22.0 to i64, !taffo.info !25
  %arrayidx28 = getelementptr inbounds [8 x float], [8 x float]* %v, i64 0, i64 %idxprom27, !taffo.info !12, !taffo.initweight !15, !taffo.target !14
  %21 = load float, float* %arrayidx28, align 4, !taffo.info !12, !taffo.initweight !16, !taffo.target !14
  %conv29 = fpext float %21 to double, !taffo.info !12, !taffo.initweight !27, !taffo.target !14
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double %conv29), !taffo.info !12, !taffo.initweight !38, !taffo.target !14, !taffo.constinfo !34
  br label %for.inc31

for.inc31:                                        ; preds = %for.body26
  %inc32 = add nsw i32 %i22.0, 1, !taffo.info !29, !taffo.constinfo !31
  br label %for.cond23, !llvm.loop !39

for.end33:                                        ; preds = %for.cond23
  %call34 = call i32 @putchar(i32 10), !taffo.constinfo !31
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare !taffo.initweight !40 !taffo.funinfo !41 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare !taffo.initweight !42 !taffo.funinfo !43 dso_local float @sqrtf(float) #2

declare !taffo.initweight !42 !taffo.funinfo !43 dso_local i32 @printf(i8*, ...) #3

declare !taffo.initweight !42 !taffo.funinfo !43 dso_local i32 @putchar(i32) #3

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!8}
!llvm.ident = !{!9}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 1.000000e+00, double 1.100000e+01}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.140000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.170000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.020000e+02}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!10 = !{i1 true}
!11 = !{}
!12 = !{i1 false, i1 false, i1 false, i2 1}
!13 = !{i32 0}
!14 = !{!"vector"}
!15 = !{i32 1}
!16 = !{i32 2}
!17 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 0.000000e+00, double 9.000000e+00}
!20 = !{!21, !22, i1 false, i2 1}
!21 = !{!"fixp", i32 32, i32 32}
!22 = !{double 0.000000e+00, double 0.000000e+00}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 0.000000e+00, double 1.000000e+00}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 0.000000e+00, double 8.000000e+00}
!27 = !{i32 3}
!28 = !{!21, i1 false, i1 false, i2 1}
!29 = !{i1 false, !30, i1 false, i2 0}
!30 = !{double 1.000000e+00, double 9.000000e+00}
!31 = !{i1 false, i1 false}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{i1 false, i1 false, i1 false}
!35 = !{!36, i1 false, i1 false, i2 1}
!36 = !{!"fixp", i32 64, i32 32}
!37 = distinct !{!37, !33}
!38 = !{i32 4}
!39 = distinct !{!39, !33}
!40 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!41 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!42 = !{i32 -1}
!43 = !{i32 0, i1 false}
