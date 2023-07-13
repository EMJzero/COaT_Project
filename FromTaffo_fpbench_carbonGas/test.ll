; ModuleID = '/tmp/tmp.KvMPG3S82S/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(float* noundef %arr, float* noundef %res) #0 !taffo.start !6 !taffo.initweight !7 !taffo.funinfo !8 {
entry:
  %v.u1_31fixp = alloca [2000 x i32], align 16, !taffo.info !9, !taffo.target !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !13
  %cmp = icmp slt i32 %i.0, 2000, !taffo.info !15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !17
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %.flt = load float, float* %arrayidx, align 4, !taffo.initweight !19, !taffo.info !9, !taffo.target !12
  %0 = fmul float 0x41E0000000000000, %.flt, !taffo.info !9, !taffo.target !12
  %.flt.fallback.u1_31fixp = fptoui float %0 to i32, !taffo.info !9, !taffo.target !12
  %idxprom2 = sext i32 %i.0 to i64, !taffo.info !17
  %arrayidx3.u1_31fixp = getelementptr inbounds [2000 x i32], [2000 x i32]* %v.u1_31fixp, i64 0, i64 %idxprom2, !taffo.info !9, !taffo.target !12
  store i32 %.flt.fallback.u1_31fixp, i32* %arrayidx3.u1_31fixp, align 4, !taffo.info !20, !taffo.target !12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !21, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc30, %for.end
  %i4.0 = phi i32 [ 0, %for.end ], [ %inc31, %for.inc30 ], !taffo.info !13
  %cmp6 = icmp slt i32 %i4.0, 1000, !taffo.info !15
  br i1 %cmp6, label %for.body7, label %for.end32

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc27, %for.body7
  %j.0 = phi i32 [ 0, %for.body7 ], [ %inc28, %for.inc27 ], !taffo.info !26
  %cmp9 = icmp slt i32 %j.0, 2000, !taffo.info !28
  br i1 %cmp9, label %for.body10, label %for.end29

for.body10:                                       ; preds = %for.cond8
  %idxprom14 = sext i32 %j.0 to i64, !taffo.info !29
  %arrayidx15.u1_31fixp = getelementptr inbounds [2000 x i32], [2000 x i32]* %v.u1_31fixp, i64 0, i64 %idxprom14, !taffo.info !9, !taffo.target !12
  %u1_31fixp2 = load i32, i32* %arrayidx15.u1_31fixp, align 4, !taffo.info !9, !taffo.target !12
  %1 = zext i64 -4337810866087919616 to i96
  %2 = shl i96 %1, 4
  %3 = zext i32 %u1_31fixp2 to i96, !taffo.info !9, !taffo.target !12
  %4 = udiv i96 %2, %3, !taffo.info !31, !taffo.target !12, !taffo.constinfo !34
  %div.u46_18fixp = trunc i96 %4 to i64, !taffo.info !37, !taffo.target !12
  %5 = uitofp i64 %div.u46_18fixp to float, !taffo.info !37, !taffo.target !12
  %6 = fdiv float %5, 2.621440e+05, !taffo.info !37, !taffo.target !12
  %idxprom25 = sext i32 %j.0 to i64, !taffo.info !29
  %arrayidx26 = getelementptr inbounds float, float* %res, i64 %idxprom25
  store float %6, float* %arrayidx26, align 4, !taffo.info !39
  br label %for.inc27

for.inc27:                                        ; preds = %for.body10
  %inc28 = add nsw i32 %j.0, 1, !taffo.info !40, !taffo.constinfo !23
  br label %for.cond8, !llvm.loop !42

for.end29:                                        ; preds = %for.cond8
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i4.0, 1, !taffo.info !21, !taffo.constinfo !23
  br label %for.cond5, !llvm.loop !43

for.end32:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !44 !taffo.funinfo !44 {
entry:
  %arr = alloca [2000 x float], align 16
  %res = alloca [2000 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 2000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 32, !taffo.constinfo !23
  %conv = sitofp i32 %rem to float
  %add = fadd float %conv, 0x3FCD70A3E0000000, !taffo.constinfo !45
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [2000 x float], [2000 x float]* %arr, i64 0, i64 %idxprom
  store float %add, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [2000 x float], [2000 x float]* %arr, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [2000 x float], [2000 x float]* %res, i64 0, i64 0
  call void @test(float* noundef %arraydecay, float* noundef %arraydecay1), !taffo.constinfo !49
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 15.0.7"}
!6 = !{i1 true}
!7 = !{i32 -1, i32 -1}
!8 = !{i32 0, i1 false, i32 0, i1 false}
!9 = !{!10, !11, i1 false, i2 1}
!10 = !{!"fixp", i32 32, i32 31}
!11 = !{double 0.000000e+00, double 1.000000e+00}
!12 = !{!"v"}
!13 = !{i1 false, !14, i1 false, i2 0}
!14 = !{double 0.000000e+00, double 2.560000e+02}
!15 = !{i1 false, !16, i1 false, i2 0}
!16 = !{double 1.000000e+00, double 1.000000e+00}
!17 = !{i1 false, !18, i1 false, i2 0}
!18 = !{double 0.000000e+00, double 2.550000e+02}
!19 = !{i32 3}
!20 = !{i1 false, !11, i1 false, i2 1}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double 1.000000e+00, double 2.560000e+02}
!23 = !{i1 false, i1 false}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 0.000000e+00, double 6.553600e+04}
!28 = !{i1 false, !11, i1 false, i2 0}
!29 = !{i1 false, !30, i1 false, i2 0}
!30 = !{double 0.000000e+00, double 6.553500e+04}
!31 = !{!32, !33, i1 false, i2 1}
!32 = !{!"fixp", i32 96, i32 18}
!33 = !{double 4.010000e+05, double 4.010000e+13}
!34 = !{!35, i1 false}
!35 = !{i1 false, !36, i1 false, i2 0}
!36 = !{double 4.010000e+05, double 4.010000e+05}
!37 = !{!38, !33, i1 false, i2 1}
!38 = !{!"fixp", i32 64, i32 18}
!39 = !{i1 false, i1 false, i1 false, i2 1}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 1.000000e+00, double 6.553600e+04}
!42 = distinct !{!42, !25}
!43 = distinct !{!43, !25}
!44 = !{}
!45 = !{i1 false, !46}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 0x3FCD70A3E0000000, double 0x3FCD70A3E0000000}
!48 = distinct !{!48, !25}
!49 = !{i1 false, i1 false, i1 false}
