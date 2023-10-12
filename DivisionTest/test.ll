; ModuleID = '/tmp/tmp.so2PuCFGrc/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(float* %arr, float* %res_f) #0 !taffo.start !2 !taffo.initweight !3 !taffo.funinfo !4 {
entry:
  %n.s10_22fixp = alloca [1024 x i32], align 16, !taffo.info !5, !taffo.target !8
  %d.s10_22fixp = alloca [1024 x i32], align 16, !taffo.info !5, !taffo.target !9
  %res.s36_28fixp = alloca [1024 x i64], align 16, !taffo.info !10, !taffo.target !13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !14
  %cmp = icmp slt i32 %i.0, 1024, !taffo.info !16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 2, !taffo.info !18, !taffo.constinfo !20
  %idxprom = sext i32 %mul to i64, !taffo.info !18
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %1 = fmul float 0x4150000000000000, %0, !taffo.info !21
  %2 = fptosi float %1 to i32, !taffo.info !21
  %idxprom4 = sext i32 %i.0 to i64, !taffo.info !21
  %arrayidx5.s10_22fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %n.s10_22fixp, i64 0, i64 %idxprom4, !taffo.info !5, !taffo.target !8
  store i32 %2, i32* %arrayidx5.s10_22fixp, align 4, !taffo.info !23, !taffo.target !8
  %mul6 = mul nsw i32 %i.0, 2, !taffo.info !18, !taffo.constinfo !20
  %add = add nsw i32 %mul6, 1, !taffo.info !24, !taffo.constinfo !20
  %idxprom7 = sext i32 %add to i64, !taffo.info !24
  %arrayidx8 = getelementptr inbounds float, float* %arr, i64 %idxprom7
  %3 = load float, float* %arrayidx8, align 4
  %4 = fmul float 0x4150000000000000, %3, !taffo.info !21
  %5 = fptosi float %4 to i32, !taffo.info !21
  %idxprom9 = sext i32 %i.0 to i64, !taffo.info !21
  %arrayidx10.s10_22fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %d.s10_22fixp, i64 0, i64 %idxprom9, !taffo.info !5, !taffo.target !9
  store i32 %5, i32* %arrayidx10.s10_22fixp, align 4, !taffo.info !23, !taffo.target !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !26, !taffo.constinfo !20
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc20, %for.end
  %j.0 = phi i32 [ 0, %for.end ], [ %inc21, %for.inc20 ], !taffo.info !14
  %cmp12 = icmp slt i32 %j.0, 1024, !taffo.info !16
  br i1 %cmp12, label %for.body13, label %for.end22

for.body13:                                       ; preds = %for.cond11
  %idxprom14 = sext i32 %j.0 to i64, !taffo.info !21
  %arrayidx15.s10_22fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %n.s10_22fixp, i64 0, i64 %idxprom14, !taffo.info !5, !taffo.target !8
  %s10_22fixp = load i32, i32* %arrayidx15.s10_22fixp, align 4, !taffo.info !5, !taffo.target !8
  %idxprom16 = sext i32 %j.0 to i64, !taffo.info !21
  %arrayidx17.s10_22fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %d.s10_22fixp, i64 0, i64 %idxprom16, !taffo.info !5, !taffo.target !9
  %s10_22fixp1 = load i32, i32* %arrayidx17.s10_22fixp, align 4, !taffo.info !5, !taffo.target !9
  %6 = sext i32 %s10_22fixp to i64, !taffo.info !5, !taffo.target !8
  %7 = shl i64 %6, 22, !taffo.info !5, !taffo.target !8
  %8 = sext i32 %s10_22fixp1 to i64, !taffo.info !5, !taffo.target !9
  %9 = sdiv i64 %7, %8, !taffo.info !30, !taffo.target !8
  %div.s36_28fixp = shl i64 %9, 6, !taffo.info !32, !taffo.target !8
  %idxprom18 = sext i32 %j.0 to i64, !taffo.info !21
  %arrayidx19.s36_28fixp = getelementptr inbounds [1024 x i64], [1024 x i64]* %res.s36_28fixp, i64 0, i64 %idxprom18, !taffo.info !10, !taffo.target !13
  store i64 %div.s36_28fixp, i64* %arrayidx19.s36_28fixp, align 4, !taffo.info !33, !taffo.target !13
  br label %for.inc20

for.inc20:                                        ; preds = %for.body13
  %inc21 = add nsw i32 %j.0, 1, !taffo.info !26, !taffo.constinfo !20
  br label %for.cond11, !llvm.loop !34

for.end22:                                        ; preds = %for.cond11
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc31, %for.end22
  %i23.0 = phi i32 [ 0, %for.end22 ], [ %inc32, %for.inc31 ], !taffo.info !14
  %cmp25 = icmp slt i32 %i23.0, 1024, !taffo.info !16
  br i1 %cmp25, label %for.body26, label %for.end33

for.body26:                                       ; preds = %for.cond24
  %idxprom27 = sext i32 %i23.0 to i64, !taffo.info !21
  %arrayidx28.s36_28fixp = getelementptr inbounds [1024 x i64], [1024 x i64]* %res.s36_28fixp, i64 0, i64 %idxprom27, !taffo.info !10, !taffo.target !13
  %s36_28fixp = load i64, i64* %arrayidx28.s36_28fixp, align 4, !taffo.info !10, !taffo.target !13
  %10 = sitofp i64 %s36_28fixp to float, !taffo.info !10, !taffo.target !13
  %11 = fdiv float %10, 0x41B0000000000000, !taffo.info !10, !taffo.target !13
  %idxprom29 = sext i32 %i23.0 to i64, !taffo.info !21
  %arrayidx30 = getelementptr inbounds float, float* %res_f, i64 %idxprom29
  store float %11, float* %arrayidx30, align 4, !taffo.info !33, !taffo.target !13
  br label %for.inc31

for.inc31:                                        ; preds = %for.body26
  %inc32 = add nsw i32 %i23.0, 1, !taffo.info !26, !taffo.constinfo !20
  br label %for.cond24, !llvm.loop !35

for.end33:                                        ; preds = %for.cond24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !36 !taffo.funinfo !36 {
entry:
  %arr = alloca [2048 x float], align 16
  %res = alloca [1024 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 2048
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 32, !taffo.constinfo !20
  %conv = sitofp i32 %rem to float
  %add = fadd float %conv, 0x3FCD70A3E0000000, !taffo.constinfo !37
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [2048 x float], [2048 x float]* %arr, i64 0, i64 %idxprom
  store float %add, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !20
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [2048 x float], [2048 x float]* %arr, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [1024 x float], [1024 x float]* %res, i64 0, i64 0
  call void @test(float* %arraydecay, float* %arraydecay1), !taffo.constinfo !41
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!2 = !{i1 true}
!3 = !{i32 -1, i32 -1}
!4 = !{i32 0, i1 false, i32 0, i1 false}
!5 = !{!6, !7, i1 false, i2 -1}
!6 = !{!"fixp", i32 -32, i32 22}
!7 = !{double -2.560000e+02, double 2.560000e+02}
!8 = !{!"numerator"}
!9 = !{!"denominator"}
!10 = !{!11, !12, i1 false, i2 1}
!11 = !{!"fixp", i32 -64, i32 28}
!12 = !{double -2.560000e+10, double 2.560000e+10}
!13 = !{!"res"}
!14 = !{i1 false, !15, i1 false, i2 0}
!15 = !{double 0.000000e+00, double 2.560000e+02}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 1.000000e+00, double 1.000000e+00}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 0.000000e+00, double 5.100000e+02}
!20 = !{i1 false, i1 false}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double 0.000000e+00, double 2.550000e+02}
!23 = !{i1 false, !7, i1 false, i2 -1}
!24 = !{i1 false, !25, i1 false, i2 0}
!25 = !{double 1.000000e+00, double 5.110000e+02}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 1.000000e+00, double 2.560000e+02}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!31, !12, i1 false, i2 -1}
!31 = !{!"fixp", i32 -64, i32 22}
!32 = !{!11, !12, i1 false, i2 -1}
!33 = !{i1 false, i1 false, i1 false, i2 1}
!34 = distinct !{!34, !29}
!35 = distinct !{!35, !29}
!36 = !{}
!37 = !{i1 false, !38}
!38 = !{i1 false, !39, i1 false, i2 0}
!39 = !{double 0x3FCD70A3E0000000, double 0x3FCD70A3E0000000}
!40 = distinct !{!40, !29}
!41 = !{i1 false, i1 false, i1 false}
