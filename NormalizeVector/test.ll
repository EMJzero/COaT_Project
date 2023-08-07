; ModuleID = '/tmp/tmp.2wmcaAyAmm/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.in_v = private unnamed_addr constant [8 x float] [float 4.000000e+00, float 2.000000e+00, float 7.000000e+00, float 8.000000e+00, float 2.000000e+00, float 1.000000e+00, float 5.000000e+00, float 1.100000e+01], align 16, !taffo.info !0
@.str.4 = private unnamed_addr constant [17 x i8] c"Initial vector: \00", align 1, !taffo.info !2
@.str.5 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1, !taffo.info !4
@.str.6 = private unnamed_addr constant [9 x i8] c"Result: \00", align 1, !taffo.info !6

; Function Attrs: noinline nounwind uwtable
define dso_local void @normalize(float* noundef %in_v_f, float* noundef %out_v_f) #0 !taffo.start !14 !taffo.initweight !15 !taffo.funinfo !16 {
entry:
  %in_v.u9_23fixp = alloca [8 x i32], align 16, !taffo.info !17, !taffo.target !20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !21
  %cmp = icmp slt i32 %i.0, 8, !taffo.info !23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !25
  %arrayidx = getelementptr inbounds float, float* %in_v_f, i64 %idxprom
  %.flt = load float, float* %arrayidx, align 4, !taffo.info !17, !taffo.initweight !27, !taffo.target !20
  %0 = fmul float 0x4160000000000000, %.flt, !taffo.info !17, !taffo.target !20
  %.flt.fallback.u9_23fixp = fptoui float %0 to i32, !taffo.info !17, !taffo.target !20
  %idxprom2 = sext i32 %i.0 to i64, !taffo.info !25
  %arrayidx3.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %in_v.u9_23fixp, i64 0, i64 %idxprom2, !taffo.info !17, !taffo.target !20
  store i32 %.flt.fallback.u9_23fixp, i32* %arrayidx3.u9_23fixp, align 4, !taffo.info !28, !taffo.target !20
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !29, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  %1 = lshr i32 0, 21
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc13, %for.end
  %norm_squared.0.u21_11fixp = phi i32 [ %1, %for.end ], [ %u21_11fixp, %for.inc13 ], !taffo.info !34
  %i5.0 = phi i32 [ 0, %for.end ], [ %inc14, %for.inc13 ], !taffo.info !21
  %2 = uitofp i32 %norm_squared.0.u21_11fixp to float, !taffo.info !34
  %3 = fdiv float %2, 2.048000e+03, !taffo.info !34
  %cmp7 = icmp slt i32 %i5.0, 8, !taffo.info !23
  br i1 %cmp7, label %for.body8, label %for.end15

for.body8:                                        ; preds = %for.cond6
  %idxprom9 = sext i32 %i5.0 to i64, !taffo.info !25
  %arrayidx10.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %in_v.u9_23fixp, i64 0, i64 %idxprom9, !taffo.info !17, !taffo.target !20
  %u9_23fixp2 = load i32, i32* %arrayidx10.u9_23fixp, align 4, !taffo.info !17, !taffo.target !20
  %idxprom11 = sext i32 %i5.0 to i64, !taffo.info !25
  %arrayidx12.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %in_v.u9_23fixp, i64 0, i64 %idxprom11, !taffo.info !17, !taffo.target !20
  %u9_23fixp1 = load i32, i32* %arrayidx12.u9_23fixp, align 4, !taffo.info !17, !taffo.target !20
  %4 = zext i32 %u9_23fixp2 to i64, !taffo.info !17, !taffo.target !20
  %5 = zext i32 %u9_23fixp1 to i64, !taffo.info !17, !taffo.target !20
  %6 = mul i64 %4, %5, !taffo.info !37
  %7 = lshr i64 %6, 35
  %8 = trunc i64 %7 to i32
  %u21_11fixp = add i32 %8, %norm_squared.0.u21_11fixp, !taffo.info !34
  br label %for.inc13

for.inc13:                                        ; preds = %for.body8
  %inc14 = add nsw i32 %i5.0, 1, !taffo.info !29, !taffo.constinfo !31
  br label %for.cond6, !llvm.loop !39

for.end15:                                        ; preds = %for.cond6
  %call.flt = call float @sqrtf(float noundef %3) #4, !taffo.info !41, !taffo.initweight !44, !taffo.constinfo !31
  %9 = fmul float 0x4140000000000000, %call.flt, !taffo.info !41, !taffo.constinfo !31
  %call.flt.fallback.u11_21fixp = fptoui float %9 to i32, !taffo.info !41
  %10 = zext i32 %call.flt.fallback.u11_21fixp to i33, !taffo.info !41
  %11 = lshr i33 0, 12
  %12 = icmp ne i33 %10, %11, !taffo.info !45
  br i1 %12, label %if.then, label %if.end, !taffo.info !46, !taffo.initweight !27

if.then:                                          ; preds = %for.end15
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc26, %if.then
  %i18.0 = phi i32 [ 0, %if.then ], [ %inc27, %for.inc26 ], !taffo.info !21
  %cmp20 = icmp slt i32 %i18.0, 8, !taffo.info !23
  br i1 %cmp20, label %for.body21, label %for.end28

for.body21:                                       ; preds = %for.cond19
  %idxprom22 = sext i32 %i18.0 to i64, !taffo.info !25
  %arrayidx23.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %in_v.u9_23fixp, i64 0, i64 %idxprom22, !taffo.info !17, !taffo.target !20
  %u9_23fixp = load i32, i32* %arrayidx23.u9_23fixp, align 4, !taffo.info !17, !taffo.target !20
  %13 = zext i32 %u9_23fixp to i64, !taffo.info !17, !taffo.target !20
  %14 = shl i64 %13, 27, !taffo.info !17, !taffo.target !20
  %15 = zext i32 %call.flt.fallback.u11_21fixp to i64, !taffo.info !41
  %div.u35_29fixp = udiv i64 %14, %15, !taffo.info !48
  %16 = uitofp i64 %div.u35_29fixp to float, !taffo.info !48
  %17 = fdiv float %16, 0x41C0000000000000, !taffo.info !48
  %idxprom24 = sext i32 %i18.0 to i64, !taffo.info !25
  %arrayidx25 = getelementptr inbounds float, float* %out_v_f, i64 %idxprom24
  store float %17, float* %arrayidx25, align 4, !taffo.info !46
  br label %for.inc26

for.inc26:                                        ; preds = %for.body21
  %inc27 = add nsw i32 %i18.0, 1, !taffo.info !29, !taffo.constinfo !31
  br label %for.cond19, !llvm.loop !51

for.end28:                                        ; preds = %for.cond19
  br label %if.end

if.end:                                           ; preds = %for.end15, %for.end28
  ret void
}

; Function Attrs: nounwind
declare !taffo.initweight !52 !taffo.funinfo !53 float @sqrtf(float noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !54 !taffo.funinfo !54 {
entry:
  %in_v = alloca [8 x float], align 16
  %out_v = alloca [8 x float], align 16
  %0 = bitcast [8 x float]* %in_v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([8 x float]* @__const.main.in_v to i8*), i64 32, i1 false), !taffo.constinfo !55
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)), !taffo.constinfo !31
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %in_v, i64 0, i64 %idxprom
  %1 = load float, float* %arrayidx, align 4
  %conv = fpext float %1 to double
  %call1 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double noundef %conv), !taffo.constinfo !56
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  %call2 = call i32 @putchar(i32 noundef 10), !taffo.constinfo !31
  %arraydecay = getelementptr inbounds [8 x float], [8 x float]* %in_v, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [8 x float], [8 x float]* %out_v, i64 0, i64 0
  call void @normalize(float* noundef %arraydecay, float* noundef %arraydecay3), !taffo.constinfo !56
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !31
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc14, %for.end
  %i5.0 = phi i32 [ 0, %for.end ], [ %inc15, %for.inc14 ]
  %cmp7 = icmp slt i32 %i5.0, 8
  br i1 %cmp7, label %for.body9, label %for.end16

for.body9:                                        ; preds = %for.cond6
  %idxprom10 = sext i32 %i5.0 to i64
  %arrayidx11 = getelementptr inbounds [8 x float], [8 x float]* %out_v, i64 0, i64 %idxprom10
  %2 = load float, float* %arrayidx11, align 4
  %conv12 = fpext float %2 to double
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double noundef %conv12), !taffo.constinfo !56
  br label %for.inc14

for.inc14:                                        ; preds = %for.body9
  %inc15 = add nsw i32 %i5.0, 1, !taffo.constinfo !31
  br label %for.cond6, !llvm.loop !58

for.end16:                                        ; preds = %for.cond6
  %call17 = call i32 @putchar(i32 noundef 10), !taffo.constinfo !31
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare !taffo.initweight !59 !taffo.funinfo !60 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare !taffo.initweight !52 !taffo.funinfo !53 i32 @printf(i8* noundef, ...) #3

declare !taffo.initweight !52 !taffo.funinfo !53 i32 @putchar(i32 noundef) #3

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 1.000000e+00, double 1.100000e+01}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.180000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.020000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.170000e+02}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 15.0.7"}
!14 = !{i1 true}
!15 = !{i32 -1, i32 -1}
!16 = !{i32 0, i1 false, i32 0, i1 false}
!17 = !{!18, !19, i1 false, i2 1}
!18 = !{!"fixp", i32 32, i32 23}
!19 = !{double 0.000000e+00, double 2.560000e+02}
!20 = !{!"in_vector"}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double 0.000000e+00, double 9.000000e+00}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 0.000000e+00, double 1.000000e+00}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 0.000000e+00, double 8.000000e+00}
!27 = !{i32 3}
!28 = !{i1 false, !19, i1 false, i2 1}
!29 = !{i1 false, !30, i1 false, i2 0}
!30 = !{double 1.000000e+00, double 9.000000e+00}
!31 = !{i1 false, i1 false}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!35, !36, i1 false, i2 1}
!35 = !{!"fixp", i32 32, i32 11}
!36 = !{double 0.000000e+00, double 0x4131000000000000}
!37 = !{!38, !36, i1 false, i2 1}
!38 = !{!"fixp", i32 64, i32 46}
!39 = distinct !{!39, !33, !40}
!40 = !{!"llvm.loop.unroll.count", i32 8}
!41 = !{!42, !43, i1 false, i2 1}
!42 = !{!"fixp", i32 32, i32 21}
!43 = !{double 0.000000e+00, double 0x40907E0F66AFED07}
!44 = !{i32 2}
!45 = !{!42, i1 false, i1 false, i2 1}
!46 = !{i1 false, !47, i1 false, i2 1}
!47 = !{double 0.000000e+00, double 1.024000e+03}
!48 = !{!49, !50, i1 false, i2 1}
!49 = !{!"fixp", i32 64, i32 29}
!50 = !{double 0.000000e+00, double 2.560000e+10}
!51 = distinct !{!51, !33}
!52 = !{i32 -1}
!53 = !{i32 0, i1 false}
!54 = !{}
!55 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!56 = !{i1 false, i1 false, i1 false}
!57 = distinct !{!57, !33}
!58 = distinct !{!58, !33}
!59 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!60 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
