; ModuleID = '/tmp/tmp.jaq3UzLXxl/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.5 = private unnamed_addr constant [17 x i8] c"Initial vector: \00", align 1, !taffo.info !0
@.str.6 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1, !taffo.info !2
@.str.7 = private unnamed_addr constant [21 x i8] c"Max: %.2f\0AMin: %.2f\0A\00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local void @min_max(float* %input, i32 %num_elements, float* %max, float* %min) #0 !taffo.initweight !8 !taffo.equivalentChild !9 !taffo.funinfo !10 {
entry:
  %arrayidx.flt.u9_23fixp = getelementptr inbounds float, float* %input, i64 0, !taffo.info !11, !taffo.initweight !14
  %.flt11 = load float, float* %arrayidx.flt.u9_23fixp, align 4, !taffo.info !11, !taffo.initweight !15
  %0 = fmul float 0x4160000000000000, %.flt11, !taffo.info !11
  %.flt11.fallback.u9_23fixp = fptoui float %0 to i32, !taffo.info !11
  %arrayidx6.flt.u9_23fixp = getelementptr inbounds float, float* %input, i64 0, !taffo.info !11, !taffo.initweight !14
  %.flt10 = load float, float* %arrayidx6.flt.u9_23fixp, align 4, !taffo.info !11, !taffo.initweight !15
  %1 = fmul float 0x4160000000000000, %.flt10, !taffo.info !11
  %.flt10.fallback.u9_23fixp = fptoui float %1 to i32, !taffo.info !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %local_max.0.u9_23fixp = phi i32 [ %.flt11.fallback.u9_23fixp, %entry ], [ %local_max.1.u9_23fixp, %for.inc ], !taffo.info !16
  %local_min.0.u9_23fixp = phi i32 [ %.flt10.fallback.u9_23fixp, %entry ], [ %local_min.2.u9_23fixp, %for.inc ], !taffo.info !16
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %2 = uitofp i32 %local_max.0.u9_23fixp to float, !taffo.info !16
  %3 = fdiv float %2, 0x4160000000000000, !taffo.info !16
  %4 = uitofp i32 %local_min.0.u9_23fixp to float, !taffo.info !16
  %5 = fdiv float %4, 0x4160000000000000, !taffo.info !16
  %cmp = icmp slt i32 %i.0, %num_elements
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx7.flt.u9_23fixp = getelementptr inbounds float, float* %input, i64 %idxprom, !taffo.info !11, !taffo.initweight !14
  %.flt12 = load float, float* %arrayidx7.flt.u9_23fixp, align 4, !taffo.info !11, !taffo.initweight !15
  %6 = fmul float 0x4160000000000000, %.flt12, !taffo.info !11
  %.flt12.fallback.u9_23fixp = fptoui float %6 to i32, !taffo.info !11
  %7 = icmp ugt i32 %.flt12.fallback.u9_23fixp, %local_max.0.u9_23fixp, !taffo.info !16
  br i1 %7, label %if.then, label %if.else, !taffo.info !17, !taffo.initweight !15

if.then:                                          ; preds = %for.body
  %idxprom9 = sext i32 %i.0 to i64
  %arrayidx10.flt.u9_23fixp = getelementptr inbounds float, float* %input, i64 %idxprom9, !taffo.info !11, !taffo.initweight !14
  %.flt = load float, float* %arrayidx10.flt.u9_23fixp, align 4, !taffo.info !11, !taffo.initweight !15
  %8 = fmul float 0x4160000000000000, %.flt, !taffo.info !11
  %.flt.fallback.u9_23fixp = fptoui float %8 to i32, !taffo.info !11
  br label %if.end17

if.else:                                          ; preds = %for.body
  %idxprom11 = sext i32 %i.0 to i64
  %arrayidx12.flt.u9_23fixp = getelementptr inbounds float, float* %input, i64 %idxprom11, !taffo.info !11, !taffo.initweight !14
  %.flt9 = load float, float* %arrayidx12.flt.u9_23fixp, align 4, !taffo.info !11, !taffo.initweight !15
  %9 = fmul float 0x4160000000000000, %.flt9, !taffo.info !11
  %.flt9.fallback.u9_23fixp = fptoui float %9 to i32, !taffo.info !11
  %10 = icmp ult i32 %.flt9.fallback.u9_23fixp, %local_min.0.u9_23fixp, !taffo.info !16
  br i1 %10, label %if.then14, label %if.end, !taffo.info !17, !taffo.initweight !15

if.then14:                                        ; preds = %if.else
  %idxprom15 = sext i32 %i.0 to i64
  %arrayidx16.flt.u9_23fixp = getelementptr inbounds float, float* %input, i64 %idxprom15, !taffo.info !11, !taffo.initweight !14
  %.flt13 = load float, float* %arrayidx16.flt.u9_23fixp, align 4, !taffo.info !11, !taffo.initweight !15
  %11 = fmul float 0x4160000000000000, %.flt13, !taffo.info !11
  %.flt13.fallback.u9_23fixp = fptoui float %11 to i32, !taffo.info !11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then14
  %local_min.1.u9_23fixp = phi i32 [ %.flt13.fallback.u9_23fixp, %if.then14 ], [ %local_min.0.u9_23fixp, %if.else ], !taffo.info !16
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  %local_max.1.u9_23fixp = phi i32 [ %.flt.fallback.u9_23fixp, %if.then ], [ %local_max.0.u9_23fixp, %if.end ], !taffo.info !16
  %local_min.2.u9_23fixp = phi i32 [ %local_min.0.u9_23fixp, %if.then ], [ %local_min.1.u9_23fixp, %if.end ], !taffo.info !16
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !18
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  store float %5, float* %min, align 4, !taffo.info !17
  store float %3, float* %max, align 4, !taffo.info !17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !21 !taffo.funinfo !21 !taffo.start !22 {
entry:
  %in_v.u9_23fixp = alloca [8 x i32], align 16, !taffo.info !11, !taffo.target !23
  %out_max_u9_23fixp = alloca i32, align 4, !taffo.info !11, !taffo.target !24
  %out_min_u9_23fixp = alloca i32, align 4, !taffo.info !11, !taffo.target !25
  %call = call i64 @time(i64* null) #3, !taffo.constinfo !18
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #3, !taffo.constinfo !18
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !26
  %cmp = icmp slt i32 %i.0, 8, !taffo.info !28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call5 = call i32 @rand() #3, !taffo.info !30, !taffo.constinfo !32
  %0 = sext i32 %call5 to i64, !taffo.info !30, !taffo.constinfo !32
  %conv6.u31_33fixp = shl i64 %0, 33, !taffo.info !33
  %1 = uitofp i64 %conv6.u31_33fixp to float, !taffo.info !33
  %2 = fdiv float %1, 0x4200000000000000, !taffo.info !33
  %div = fdiv float %2, 0x4170000000000000, !taffo.info !35, !taffo.constinfo !37
  %3 = fmul float 0x4160000000000000, %div, !taffo.info !35, !taffo.constinfo !37
  %4 = fptoui float %3 to i32, !taffo.info !35
  %idxprom = sext i32 %i.0 to i64, !taffo.info !40
  %arrayidx.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %in_v.u9_23fixp, i64 0, i64 %idxprom, !taffo.info !11, !taffo.target !23
  store i32 %4, i32* %arrayidx.u9_23fixp, align 4, !taffo.info !17, !taffo.target !23
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !42, !taffo.constinfo !18
  br label %for.cond, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0)), !taffo.constinfo !18
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc17, %for.end
  %i8.0 = phi i32 [ 0, %for.end ], [ %inc18, %for.inc17 ], !taffo.info !26
  %cmp10 = icmp slt i32 %i8.0, 8, !taffo.info !28
  br i1 %cmp10, label %for.body12, label %for.end19

for.body12:                                       ; preds = %for.cond9
  %idxprom13 = sext i32 %i8.0 to i64, !taffo.info !40
  %arrayidx14.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %in_v.u9_23fixp, i64 0, i64 %idxprom13, !taffo.info !11, !taffo.target !23
  %u9_23fixp2 = load i32, i32* %arrayidx14.u9_23fixp, align 4, !taffo.info !11, !taffo.target !23
  %5 = uitofp i32 %u9_23fixp2 to double, !taffo.info !11, !taffo.target !23
  %6 = fdiv double %5, 0x4160000000000000, !taffo.info !11, !taffo.target !23
  %call16.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), double %6), !taffo.info !16, !taffo.initweight !45, !taffo.constinfo !46, !taffo.target !23
  br label %for.inc17

for.inc17:                                        ; preds = %for.body12
  %inc18 = add nsw i32 %i8.0, 1, !taffo.info !42, !taffo.constinfo !18
  br label %for.cond9, !llvm.loop !47

for.end19:                                        ; preds = %for.cond9
  %call20 = call i32 @putchar(i32 10), !taffo.constinfo !18
  %arraydecay.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %in_v.u9_23fixp, i64 0, i64 0, !taffo.info !11, !taffo.target !23
  call void @min_max_1_fixp(i32* %arraydecay.u9_23fixp, i32 8, i32* %out_max_u9_23fixp, i32* %out_min_u9_23fixp), !taffo.info !17, !taffo.constinfo !48, !taffo.target !24
  %u9_23fixp1 = load i32, i32* %out_max_u9_23fixp, align 4, !taffo.info !11, !taffo.target !24
  %7 = uitofp i32 %u9_23fixp1 to double, !taffo.info !11, !taffo.target !24
  %8 = fdiv double %7, 0x4160000000000000, !taffo.info !11, !taffo.target !24
  %u9_23fixp = load i32, i32* %out_min_u9_23fixp, align 4, !taffo.info !11, !taffo.target !25
  %9 = uitofp i32 %u9_23fixp to double, !taffo.info !11, !taffo.target !25
  %10 = fdiv double %9, 0x4160000000000000, !taffo.info !11, !taffo.target !25
  %call23.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), double %8, double %10), !taffo.info !16, !taffo.initweight !15, !taffo.constinfo !49, !taffo.target !24
  ret i32 0
}

; Function Attrs: nounwind
declare !taffo.initweight !50 !taffo.funinfo !51 dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare !taffo.initweight !50 !taffo.funinfo !51 dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare !taffo.initweight !21 !taffo.funinfo !21 dso_local i32 @rand() #1

declare !taffo.initweight !50 !taffo.funinfo !51 dso_local i32 @printf(i8*, ...) #2

declare !taffo.initweight !50 !taffo.funinfo !51 dso_local i32 @putchar(i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @min_max_1_fixp(i32* %input_u9_23fixp, i32 %num_elements, i32* %max_u9_23fixp, i32* %min_u9_23fixp) #0 !taffo.initweight !52 !taffo.funinfo !53 !taffo.sourceFunction !56 {
entry:
  %arrayidx.u9_23fixp = getelementptr inbounds i32, i32* %input_u9_23fixp, i64 0, !taffo.info !11
  %u9_23fixp = load i32, i32* %arrayidx.u9_23fixp, align 4, !taffo.info !11
  %arrayidx6.u9_23fixp = getelementptr inbounds i32, i32* %input_u9_23fixp, i64 0, !taffo.info !11
  %u9_23fixp9 = load i32, i32* %arrayidx6.u9_23fixp, align 4, !taffo.info !11
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %local_max.0.u9_23fixp = phi i32 [ %u9_23fixp, %entry ], [ %local_max.1.u9_23fixp, %for.inc ], !taffo.info !11
  %local_min.0.u9_23fixp = phi i32 [ %u9_23fixp9, %entry ], [ %local_min.2.u9_23fixp, %for.inc ], !taffo.info !11
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !28
  %cmp = icmp slt i32 %i.0, %num_elements, !taffo.info !57
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !59
  %arrayidx7.u9_23fixp = getelementptr inbounds i32, i32* %input_u9_23fixp, i64 %idxprom, !taffo.info !11
  %u9_23fixp10 = load i32, i32* %arrayidx7.u9_23fixp, align 4, !taffo.info !11
  %0 = icmp ugt i32 %u9_23fixp10, %local_max.0.u9_23fixp, !taffo.info !16
  br i1 %0, label %if.then, label %if.else, !taffo.info !17, !taffo.initweight !15

if.then:                                          ; preds = %for.body
  %idxprom9 = sext i32 %i.0 to i64, !taffo.info !59
  %arrayidx10.u9_23fixp = getelementptr inbounds i32, i32* %input_u9_23fixp, i64 %idxprom9, !taffo.info !11
  %u9_23fixp11 = load i32, i32* %arrayidx10.u9_23fixp, align 4, !taffo.info !11
  br label %if.end17

if.else:                                          ; preds = %for.body
  %idxprom11 = sext i32 %i.0 to i64, !taffo.info !59
  %arrayidx12.u9_23fixp = getelementptr inbounds i32, i32* %input_u9_23fixp, i64 %idxprom11, !taffo.info !11
  %u9_23fixp12 = load i32, i32* %arrayidx12.u9_23fixp, align 4, !taffo.info !11
  %1 = icmp ult i32 %u9_23fixp12, %local_min.0.u9_23fixp, !taffo.info !16
  br i1 %1, label %if.then14, label %if.end, !taffo.info !17, !taffo.initweight !15

if.then14:                                        ; preds = %if.else
  %idxprom15 = sext i32 %i.0 to i64, !taffo.info !59
  %arrayidx16.u9_23fixp = getelementptr inbounds i32, i32* %input_u9_23fixp, i64 %idxprom15, !taffo.info !11
  %u9_23fixp13 = load i32, i32* %arrayidx16.u9_23fixp, align 4, !taffo.info !11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then14
  %local_min.1.u9_23fixp = phi i32 [ %u9_23fixp13, %if.then14 ], [ %local_min.0.u9_23fixp, %if.else ], !taffo.info !11
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  %local_max.1.u9_23fixp = phi i32 [ %u9_23fixp11, %if.then ], [ %local_max.0.u9_23fixp, %if.end ], !taffo.info !11
  %local_min.2.u9_23fixp = phi i32 [ %local_min.0.u9_23fixp, %if.then ], [ %local_min.1.u9_23fixp, %if.end ], !taffo.info !11
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %inc = add nsw i32 %i.0, 1, !taffo.info !57, !taffo.constinfo !18
  br label %for.cond, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  store i32 %local_min.0.u9_23fixp, i32* %min_u9_23fixp, align 4, !taffo.info !17
  store i32 %local_max.0.u9_23fixp, i32* %max_u9_23fixp, align 4, !taffo.info !17
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!6}
!llvm.ident = !{!7}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.180000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.020000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.200000e+02}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!8 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!9 = distinct !{null}
!10 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!11 = !{!12, !13, i1 false, i2 1}
!12 = !{!"fixp", i32 32, i32 23}
!13 = !{double 0.000000e+00, double 2.560000e+02}
!14 = !{i32 2}
!15 = !{i32 3}
!16 = !{!12, i1 false, i1 false, i2 1}
!17 = !{i1 false, !13, i1 false, i2 1}
!18 = !{i1 false, i1 false}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{}
!22 = !{i1 true}
!23 = !{!"in_vector"}
!24 = !{!"out_max"}
!25 = !{!"out_min"}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 0.000000e+00, double 9.000000e+00}
!28 = !{i1 false, !29, i1 false, i2 0}
!29 = !{double 0.000000e+00, double 1.000000e+00}
!30 = !{i1 false, !31, i1 false, i2 0}
!31 = !{double 0.000000e+00, double 0x41DFFFFFFFC00000}
!32 = !{i1 false}
!33 = !{!34, !31, i1 false, i2 1}
!34 = !{!"fixp", i32 64, i32 33}
!35 = !{i1 false, !36, i1 false, i2 0}
!36 = !{double 0.000000e+00, double 0x405FFFFFFFC00000}
!37 = !{i1 false, !38}
!38 = !{i1 false, !39, i1 false, i2 0}
!39 = !{double 0x4170000000000000, double 0x4170000000000000}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 0.000000e+00, double 8.000000e+00}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 1.000000e+00, double 9.000000e+00}
!44 = distinct !{!44, !20}
!45 = !{i32 4}
!46 = !{i1 false, i1 false, i1 false}
!47 = distinct !{!47, !20}
!48 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!49 = !{i1 false, i1 false, i1 false, i1 false}
!50 = !{i32 -1}
!51 = !{i32 0, i1 false}
!52 = !{i32 2, i32 -1, i32 1, i32 1}
!53 = !{i32 1, !11, i32 1, !54, i32 1, !11, i32 1, !11}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 8.000000e+00, double 8.000000e+00}
!56 = !{void (float*, i32, float*, float*)* @min_max}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 1.000000e+00, double 1.000000e+00}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 0.000000e+00, double 0.000000e+00}
!61 = distinct !{!61, !20}
