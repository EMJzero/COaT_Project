; ModuleID = '/tmp/tmp.Zv3ZlMiTWp/test_synth_conversion.ll.4.taffotmp.ll'
source_filename = "test_synth_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.input = private unnamed_addr constant [4 x float] [float 2.700000e+01, float 1.500000e+01, float 3.500000e+01, float 2.100000e+01], align 16, !taffo.info !0
@.str.2 = private unnamed_addr constant [23 x i8] c"%.2f, %.2f, %.2f, %.2f\00", align 1, !taffo.info !2

; Function Attrs: noinline nounwind uwtable
define dso_local void @synth_conversion_test(float* noalias %value, float* noalias %result) #0 !taffo.start !6 !taffo.initweight !7 !taffo.funinfo !8 {
entry:
  %fix_value.u14_18fixp = alloca [4 x i32], align 16, !taffo.info !9, !taffo.target !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !13
  %cmp = icmp slt i32 %i.0, 4, !taffo.info !15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !17
  %arrayidx = getelementptr inbounds float, float* %value, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %1 = fmul float 2.621440e+05, %0, !taffo.info !17
  %2 = fptoui float %1 to i32, !taffo.info !17
  %idxprom2 = sext i32 %i.0 to i64, !taffo.info !17
  %arrayidx3.u14_18fixp = getelementptr inbounds [4 x i32], [4 x i32]* %fix_value.u14_18fixp, i64 0, i64 %idxprom2, !taffo.info !9, !taffo.target !12
  store i32 %2, i32* %arrayidx3.u14_18fixp, align 4, !taffo.info !19, !taffo.target !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !21, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc17, %for.end
  %i4.0 = phi i32 [ 0, %for.end ], [ %inc18, %for.inc17 ], !taffo.info !13
  %cmp6 = icmp slt i32 %i4.0, 4, !taffo.info !15
  br i1 %cmp6, label %for.body7, label %for.end19

for.body7:                                        ; preds = %for.cond5
  %idxprom8 = sext i32 %i4.0 to i64, !taffo.info !17
  %arrayidx9.u14_18fixp = getelementptr inbounds [4 x i32], [4 x i32]* %fix_value.u14_18fixp, i64 0, i64 %idxprom8, !taffo.info !9, !taffo.target !12
  %u14_18fixp2 = load i32, i32* %arrayidx9.u14_18fixp, align 4, !taffo.info !26, !taffo.target !12
  %3 = zext i32 %u14_18fixp2 to i64, !taffo.info !26, !taffo.target !12
  %4 = mul i64 %3, 2, !taffo.info !28, !taffo.target !12, !taffo.constinfo !31
  %mul.u14_18fixp = trunc i64 %4 to i32, !taffo.info !35, !taffo.target !12
  %idxprom10 = sext i32 %i4.0 to i64, !taffo.info !17
  %arrayidx11.u14_18fixp = getelementptr inbounds [4 x i32], [4 x i32]* %fix_value.u14_18fixp, i64 0, i64 %idxprom10, !taffo.info !9, !taffo.target !12
  store i32 %mul.u14_18fixp, i32* %arrayidx11.u14_18fixp, align 4, !taffo.info !19, !taffo.target !12
  %idxprom12 = sext i32 %i4.0 to i64, !taffo.info !17
  %arrayidx13.u14_18fixp = getelementptr inbounds [4 x i32], [4 x i32]* %fix_value.u14_18fixp, i64 0, i64 %idxprom12, !taffo.info !9, !taffo.target !12
  %u14_18fixp1 = load i32, i32* %arrayidx13.u14_18fixp, align 4, !taffo.info !35, !taffo.target !12
  %add.u14_18fixp = add i32 %u14_18fixp1, 3407872, !taffo.info !36, !taffo.target !12, !taffo.constinfo !38
  %conv.u3_29fixp = shl i32 %i4.0, 29, !taffo.info !41
  %5 = lshr i32 %conv.u3_29fixp, 11, !taffo.info !41
  %add14.u14_18fixp = add i32 %add.u14_18fixp, %5, !taffo.info !43, !taffo.target !12
  %idxprom15 = sext i32 %i4.0 to i64, !taffo.info !17
  %arrayidx16.u14_18fixp = getelementptr inbounds [4 x i32], [4 x i32]* %fix_value.u14_18fixp, i64 0, i64 %idxprom15, !taffo.info !9, !taffo.target !12
  store i32 %add14.u14_18fixp, i32* %arrayidx16.u14_18fixp, align 4, !taffo.info !19, !taffo.target !12
  br label %for.inc17

for.inc17:                                        ; preds = %for.body7
  %inc18 = add nsw i32 %i4.0, 1, !taffo.info !21, !taffo.constinfo !23
  br label %for.cond5, !llvm.loop !45

for.end19:                                        ; preds = %for.cond5
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc29, %for.end19
  %i20.0 = phi i32 [ 0, %for.end19 ], [ %inc30, %for.inc29 ], !taffo.info !13
  %cmp22 = icmp slt i32 %i20.0, 4, !taffo.info !15
  br i1 %cmp22, label %for.body24, label %for.end31

for.body24:                                       ; preds = %for.cond21
  %idxprom25 = sext i32 %i20.0 to i64, !taffo.info !17
  %arrayidx26.u14_18fixp = getelementptr inbounds [4 x i32], [4 x i32]* %fix_value.u14_18fixp, i64 0, i64 %idxprom25, !taffo.info !9, !taffo.target !12
  %u14_18fixp = load i32, i32* %arrayidx26.u14_18fixp, align 4, !taffo.info !9, !taffo.target !12
  %6 = uitofp i32 %u14_18fixp to float, !taffo.info !9, !taffo.target !12
  %7 = fdiv float %6, 2.621440e+05, !taffo.info !9, !taffo.target !12
  %idxprom27 = sext i32 %i20.0 to i64, !taffo.info !17
  %arrayidx28 = getelementptr inbounds float, float* %result, i64 %idxprom27
  store float %7, float* %arrayidx28, align 4, !taffo.info !19, !taffo.target !12
  br label %for.inc29

for.inc29:                                        ; preds = %for.body24
  %inc30 = add nsw i32 %i20.0, 1, !taffo.info !21, !taffo.constinfo !23
  br label %for.cond21, !llvm.loop !46

for.end31:                                        ; preds = %for.cond21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !47 !taffo.funinfo !47 {
entry:
  %input = alloca [4 x float], align 16
  %result = alloca [4 x float], align 16
  %0 = bitcast [4 x float]* %input to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([4 x float]* @__const.main.input to i8*), i64 16, i1 false), !taffo.constinfo !48
  %arraydecay = getelementptr inbounds [4 x float], [4 x float]* %input, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [4 x float], [4 x float]* %result, i64 0, i64 0
  call void @synth_conversion_test(float* %arraydecay, float* %arraydecay1), !taffo.constinfo !49
  %arrayidx = getelementptr inbounds [4 x float], [4 x float]* %result, i64 0, i64 0
  %1 = load float, float* %arrayidx, align 16
  %conv = fpext float %1 to double
  %arrayidx2 = getelementptr inbounds [4 x float], [4 x float]* %result, i64 0, i64 1
  %2 = load float, float* %arrayidx2, align 4
  %conv3 = fpext float %2 to double
  %arrayidx4 = getelementptr inbounds [4 x float], [4 x float]* %result, i64 0, i64 2
  %3 = load float, float* %arrayidx4, align 8
  %conv5 = fpext float %3 to double
  %arrayidx6 = getelementptr inbounds [4 x float], [4 x float]* %result, i64 0, i64 3
  %4 = load float, float* %arrayidx6, align 4
  %conv7 = fpext float %4 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), double %conv, double %conv3, double %conv5, double %conv7), !taffo.constinfo !50
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare !taffo.initweight !51 !taffo.funinfo !52 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare !taffo.initweight !53 !taffo.funinfo !54 dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!4}
!llvm.ident = !{!5}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 1.500000e+01, double 3.500000e+01}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.020000e+02}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!6 = !{i1 true}
!7 = !{i32 -1, i32 -1}
!8 = !{i32 0, i1 false, i32 0, i1 false}
!9 = !{!10, !11, i1 false, i2 1}
!10 = !{!"fixp", i32 32, i32 18}
!11 = !{double 0.000000e+00, double 8.621000e+03}
!12 = !{!"value"}
!13 = !{i1 false, !14, i1 false, i2 0}
!14 = !{double 0.000000e+00, double 5.000000e+00}
!15 = !{i1 false, !16, i1 false, i2 0}
!16 = !{double 0.000000e+00, double 1.000000e+00}
!17 = !{i1 false, !18, i1 false, i2 0}
!18 = !{double 0.000000e+00, double 4.000000e+00}
!19 = !{i1 false, !20, i1 false, i2 1}
!20 = !{double 0.000000e+00, double 2.560000e+02}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double 1.000000e+00, double 5.000000e+00}
!23 = !{i1 false, i1 false}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!10, !27, i1 false, i2 1}
!27 = !{double 0.000000e+00, double 4.302000e+03}
!28 = !{!29, !30, i1 false, i2 1}
!29 = !{!"fixp", i32 64, i32 18}
!30 = !{double 0.000000e+00, double 8.604000e+03}
!31 = !{i1 false, !32}
!32 = !{!33, !34, i1 false, i2 0}
!33 = !{!"fixp", i32 32, i32 0}
!34 = !{double 2.000000e+00, double 2.000000e+00}
!35 = !{!10, !30, i1 false, i2 1}
!36 = !{!10, !37, i1 false, i2 1}
!37 = !{double 1.300000e+01, double 8.617000e+03}
!38 = !{i1 false, !39}
!39 = !{i1 false, !40, i1 false, i2 0}
!40 = !{double 1.300000e+01, double 1.300000e+01}
!41 = !{!42, !18, i1 false, i2 1}
!42 = !{!"fixp", i32 32, i32 29}
!43 = !{!10, !44, i1 false, i2 1}
!44 = !{double 1.300000e+01, double 8.621000e+03}
!45 = distinct !{!45, !25}
!46 = distinct !{!46, !25}
!47 = !{}
!48 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!49 = !{i1 false, i1 false, i1 false}
!50 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!51 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!52 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!53 = !{i32 -1}
!54 = !{i32 0, i1 false}
