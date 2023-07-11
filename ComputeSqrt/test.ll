; ModuleID = '/tmp/tmp.WBqqOR22Qq/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.5 = private unnamed_addr constant [37 x i8] c"Sqrt argument (between 0 and 4096): \00", align 1, !taffo.info !0
@.str.6 = private unnamed_addr constant [3 x i8] c"%f\00", align 1, !taffo.info !2
@.str.7 = private unnamed_addr constant [12 x i8] c"Result: %f\0A\00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local void @NRsqrt(float* noundef %n_f, float* noundef %result) #0 !taffo.start !12 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %.flt = load float, float* %n_f, align 4, !taffo.info !15, !taffo.initweight !18, !taffo.target !19
  %0 = fmul float 5.242880e+05, %.flt, !taffo.info !15, !taffo.target !19
  %.flt.fallback.u13_19fixp = fptoui float %0 to i32, !taffo.info !15, !taffo.target !19
  %1 = zext i32 %.flt.fallback.u13_19fixp to i33, !taffo.info !15, !taffo.target !19
  %2 = lshr i33 -4294967296, 13
  %3 = icmp slt i33 %1, %2, !taffo.info !20, !taffo.target !19
  br i1 %3, label %if.then, label %if.else, !taffo.info !21, !taffo.initweight !22, !taffo.target !19

if.then:                                          ; preds = %entry
  %4 = lshr i32 -2147483648, 12
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = lshr i32 -2147483648, 12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %lo.0.u13_19fixp = phi i32 [ %.flt.fallback.u13_19fixp, %if.then ], [ %5, %if.else ], !taffo.info !15
  %hi.0.u13_19fixp = phi i32 [ %4, %if.then ], [ %.flt.fallback.u13_19fixp, %if.else ], !taffo.info !15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %lo.1.u13_19fixp = phi i32 [ %lo.0.u13_19fixp, %if.end ], [ %20, %while.body ], !taffo.info !15
  %6 = zext i32 100 to i64
  %7 = zext i32 %lo.1.u13_19fixp to i64, !taffo.info !15
  %8 = mul i64 %6, %7, !taffo.info !23, !taffo.target !26, !taffo.constinfo !27
  %9 = lshr i64 %8, 6, !taffo.info !23, !taffo.target !26, !taffo.constinfo !27
  %mul.u19_13fixp = trunc i64 %9 to i32, !taffo.info !30, !taffo.target !26
  %10 = zext i32 %mul.u19_13fixp to i64, !taffo.info !30, !taffo.target !26
  %11 = zext i32 %lo.1.u13_19fixp to i64, !taffo.info !15
  %12 = mul i64 %10, %11, !taffo.info !32, !taffo.target !26
  %mul5.u31_33fixp = shl i64 %12, 1, !taffo.info !35, !taffo.target !26
  %13 = zext i32 %.flt.fallback.u13_19fixp to i64, !taffo.info !15, !taffo.target !19
  %14 = shl i64 %13, 14, !taffo.info !15, !taffo.target !19
  %15 = icmp ult i64 %mul5.u31_33fixp, %14, !taffo.info !20, !taffo.target !19
  br i1 %15, label %while.body, label %while.end, !taffo.info !21, !taffo.initweight !22, !taffo.target !19

while.body:                                       ; preds = %while.cond
  %16 = zext i32 %lo.1.u13_19fixp to i64, !taffo.info !15
  %17 = zext i32 10 to i64
  %18 = mul i64 %16, %17, !taffo.info !37, !taffo.target !26, !taffo.constinfo !39
  %19 = lshr i64 %18, 3, !taffo.info !37, !taffo.target !26, !taffo.constinfo !39
  %mul7.u16_16fixp = trunc i64 %19 to i32, !taffo.info !42, !taffo.target !26
  %20 = shl i32 %mul7.u16_16fixp, 3, !taffo.info !42, !taffo.target !26
  br label %while.cond, !llvm.loop !44

while.end:                                        ; preds = %while.cond
  br label %while.cond8

while.cond8:                                      ; preds = %while.body15, %while.end
  %hi.1.u13_19fixp = phi i32 [ %hi.0.u13_19fixp, %while.end ], [ %37, %while.body15 ], !taffo.info !15
  %21 = zext i32 21474836 to i64
  %22 = zext i32 %hi.1.u13_19fixp to i64, !taffo.info !15, !taffo.target !46
  %23 = mul i64 %21, %22, !taffo.info !47, !taffo.target !46, !taffo.constinfo !50
  %24 = lshr i64 %23, 24, !taffo.info !47, !taffo.target !46, !taffo.constinfo !50
  %mul9.u6_26fixp = trunc i64 %24 to i32, !taffo.info !53, !taffo.target !46
  %25 = zext i32 %mul9.u6_26fixp to i64, !taffo.info !53, !taffo.target !46
  %26 = zext i32 %hi.1.u13_19fixp to i64, !taffo.info !15, !taffo.target !46
  %27 = mul i64 %25, %26, !taffo.info !55, !taffo.target !46
  %28 = lshr i64 %27, 31, !taffo.info !55, !taffo.target !46
  %mul11.u18_14fixp = trunc i64 %28 to i32, !taffo.info !58, !taffo.target !46
  %29 = zext i32 %mul11.u18_14fixp to i37, !taffo.info !58, !taffo.target !46
  %30 = shl i37 %29, 5, !taffo.info !58, !taffo.target !46
  %31 = zext i32 %.flt.fallback.u13_19fixp to i37, !taffo.info !15, !taffo.target !19
  %32 = icmp ugt i37 %30, %31, !taffo.info !60, !taffo.target !19
  br i1 %32, label %while.body15, label %while.end19, !taffo.info !21, !taffo.initweight !61, !taffo.target !19

while.body15:                                     ; preds = %while.cond8
  %33 = zext i32 %hi.1.u13_19fixp to i64, !taffo.info !15, !taffo.target !46
  %34 = zext i32 214748364 to i64
  %35 = mul i64 %33, %34, !taffo.info !62, !taffo.target !46, !taffo.constinfo !64
  %36 = lshr i64 %35, 27, !taffo.info !62, !taffo.target !46, !taffo.constinfo !64
  %mul17.u9_23fixp = trunc i64 %36 to i32, !taffo.info !67, !taffo.target !46
  %37 = lshr i32 %mul17.u9_23fixp, 4, !taffo.info !67, !taffo.target !46
  br label %while.cond8, !llvm.loop !70

while.end19:                                      ; preds = %while.cond8
  %38 = lshr i32 %lo.1.u13_19fixp, 1, !taffo.info !15
  %39 = lshr i32 %hi.1.u13_19fixp, 1, !taffo.info !15, !taffo.target !46
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end19
  %lo.2.u14_18fixp = phi i32 [ %38, %while.end19 ], [ %58, %for.inc ], !taffo.info !71
  %hi.2.u14_18fixp = phi i32 [ %39, %while.end19 ], [ %59, %for.inc ], !taffo.info !71
  %mid.0.u13_19fixp = phi i32 [ undef, %while.end19 ], [ %60, %for.inc ], !taffo.info !15
  %i.0 = phi i32 [ 0, %while.end19 ], [ %inc, %for.inc ], !taffo.info !73
  %40 = uitofp i32 %mid.0.u13_19fixp to float, !taffo.info !15
  %41 = fdiv float %40, 5.242880e+05, !taffo.info !15
  %cmp20 = icmp slt i32 %i.0, 100, !taffo.info !75
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add.u14_18fixp = add i32 %lo.2.u14_18fixp, %hi.2.u14_18fixp, !taffo.info !77, !taffo.target !26
  %div.u14_18fixp = udiv i32 %add.u14_18fixp, 2, !taffo.info !71, !taffo.target !26, !taffo.constinfo !79
  %42 = uitofp i32 %div.u14_18fixp to float, !taffo.info !71, !taffo.target !26
  %43 = fdiv float %42, 2.621440e+05, !taffo.info !71, !taffo.target !26, !taffo.constinfo !79
  %44 = zext i32 %div.u14_18fixp to i64, !taffo.info !71, !taffo.target !26
  %45 = zext i32 %div.u14_18fixp to i64, !taffo.info !71, !taffo.target !26
  %46 = mul i64 %44, %45, !taffo.info !82, !taffo.target !84
  %47 = lshr i64 %46, 17, !taffo.info !82, !taffo.target !84
  %mul22.u13_19fixp = trunc i64 %47 to i32, !taffo.info !15, !taffo.target !84
  %48 = icmp eq i32 %mul22.u13_19fixp, %.flt.fallback.u13_19fixp, !taffo.info !20, !taffo.target !19
  br i1 %48, label %if.then25, label %if.end26, !taffo.info !21, !taffo.initweight !22, !taffo.target !19

if.then25:                                        ; preds = %for.body
  store float %43, float* %result, align 4, !taffo.info !21, !taffo.target !84
  br label %return

if.end26:                                         ; preds = %for.body
  %49 = zext i32 %div.u14_18fixp to i64, !taffo.info !71, !taffo.target !26
  %50 = zext i32 %div.u14_18fixp to i64, !taffo.info !71, !taffo.target !26
  %51 = mul i64 %49, %50, !taffo.info !82, !taffo.target !84
  %52 = lshr i64 %51, 17, !taffo.info !82, !taffo.target !84
  %mul27.u13_19fixp = trunc i64 %52 to i32, !taffo.info !15, !taffo.target !84
  %53 = icmp ugt i32 %mul27.u13_19fixp, %.flt.fallback.u13_19fixp, !taffo.info !20, !taffo.target !19
  br i1 %53, label %if.then30, label %if.else31, !taffo.info !21, !taffo.initweight !22, !taffo.target !19

if.then30:                                        ; preds = %if.end26
  %54 = shl i32 %div.u14_18fixp, 1, !taffo.info !71, !taffo.target !26, !taffo.constinfo !79
  %55 = shl i32 %lo.2.u14_18fixp, 1, !taffo.info !71
  br label %if.end32

if.else31:                                        ; preds = %if.end26
  %56 = shl i32 %hi.2.u14_18fixp, 1, !taffo.info !71
  %57 = shl i32 %div.u14_18fixp, 1, !taffo.info !71, !taffo.target !26, !taffo.constinfo !79
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.then30
  %lo.3.u13_19fixp = phi i32 [ %55, %if.then30 ], [ %57, %if.else31 ], !taffo.info !15
  %hi.3.u13_19fixp = phi i32 [ %54, %if.then30 ], [ %56, %if.else31 ], !taffo.info !15
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %inc = add nsw i32 %i.0, 1, !taffo.info !75, !taffo.constinfo !85
  %58 = lshr i32 %lo.3.u13_19fixp, 1, !taffo.info !15
  %59 = lshr i32 %hi.3.u13_19fixp, 1, !taffo.info !15
  %60 = shl i32 %div.u14_18fixp, 1, !taffo.info !71, !taffo.target !26, !taffo.constinfo !79
  br label %for.cond, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  store float %41, float* %result, align 4, !taffo.info !21, !taffo.target !84
  br label %return

return:                                           ; preds = %for.end, %if.then25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !87 !taffo.funinfo !87 {
entry:
  %in = alloca float, align 4
  %res = alloca float, align 4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0)), !taffo.constinfo !85
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), float* noundef %in), !taffo.constinfo !88
  call void @NRsqrt(float* noundef %in, float* noundef %res), !taffo.constinfo !88
  %0 = load float, float* %res, align 4
  %conv = fpext float %0 to double
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), double noundef %conv), !taffo.constinfo !88
  ret i32 0
}

declare !taffo.initweight !89 !taffo.funinfo !90 i32 @printf(i8* noundef, ...) #1

declare !taffo.initweight !89 !taffo.funinfo !90 i32 @__isoc99_scanf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.190000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.020000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.170000e+02}
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
!16 = !{!"fixp", i32 32, i32 19}
!17 = !{double 0.000000e+00, double 4.096000e+03}
!18 = !{i32 2}
!19 = !{!"input"}
!20 = !{!16, i1 false, i1 false, i2 -1}
!21 = !{i1 false, !17, i1 false, i2 -1}
!22 = !{i32 3}
!23 = !{!24, !25, i1 false, i2 -1}
!24 = !{!"fixp", i32 64, i32 19}
!25 = !{double 0.000000e+00, double 4.096000e+05}
!26 = !{!"lo"}
!27 = !{!28, i1 false}
!28 = !{i1 false, !29, i1 false, i2 0}
!29 = !{double 1.000000e+02, double 1.000000e+02}
!30 = !{!31, !25, i1 false, i2 -1}
!31 = !{!"fixp", i32 32, i32 13}
!32 = !{!33, !34, i1 false, i2 -1}
!33 = !{!"fixp", i32 64, i32 32}
!34 = !{double 0.000000e+00, double 0x41D9000000000000}
!35 = !{!36, !34, i1 false, i2 -1}
!36 = !{!"fixp", i32 64, i32 33}
!37 = !{!24, !38, i1 false, i2 -1}
!38 = !{double 0.000000e+00, double 4.096000e+04}
!39 = !{i1 false, !40}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 1.000000e+01, double 1.000000e+01}
!42 = !{!43, !38, i1 false, i2 -1}
!43 = !{!"fixp", i32 32, i32 16}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"hi"}
!47 = !{!48, !49, i1 false, i2 -1}
!48 = !{!"fixp", i32 64, i32 50}
!49 = !{double 0.000000e+00, double 4.096000e+01}
!50 = !{!51, i1 false}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 1.000000e-02, double 1.000000e-02}
!53 = !{!54, !49, i1 false, i2 -1}
!54 = !{!"fixp", i32 32, i32 26}
!55 = !{!56, !57, i1 false, i2 -1}
!56 = !{!"fixp", i32 64, i32 45}
!57 = !{double 0.000000e+00, double 0x41047AE147AE147B}
!58 = !{!59, !57, i1 false, i2 -1}
!59 = !{!"fixp", i32 32, i32 14}
!60 = !{!59, i1 false, i1 false, i2 -1}
!61 = !{i32 4}
!62 = !{!48, !63, i1 false, i2 -1}
!63 = !{double 0.000000e+00, double 4.096000e+02}
!64 = !{i1 false, !65}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 1.000000e-01, double 1.000000e-01}
!67 = !{!68, !69, i1 false, i2 -1}
!68 = !{!"fixp", i32 32, i32 23}
!69 = !{double 0.000000e+00, double 0x40799999A0000000}
!70 = distinct !{!70, !45}
!71 = !{!72, !17, i1 false, i2 -1}
!72 = !{!"fixp", i32 32, i32 18}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 0.000000e+00, double 1.000000e+00}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 1.000000e+00, double 1.000000e+00}
!77 = !{!72, !78, i1 false, i2 -1}
!78 = !{double 0.000000e+00, double 8.192000e+03}
!79 = !{i1 false, !80}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 2.000000e+00, double 2.000000e+00}
!82 = !{!83, !17, i1 false, i2 -1}
!83 = !{!"fixp", i32 64, i32 36}
!84 = !{!"mid"}
!85 = !{i1 false, i1 false}
!86 = distinct !{!86, !45}
!87 = !{}
!88 = !{i1 false, i1 false, i1 false}
!89 = !{i32 -1}
!90 = !{i32 0, i1 false}
