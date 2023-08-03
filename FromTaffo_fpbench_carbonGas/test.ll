; ModuleID = '/tmp/tmp.ROxN1yqrrW/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.5 = private unnamed_addr constant [14 x i8] c"Values Begin\0A\00", align 1, !taffo.info !0
@.str.6 = private unnamed_addr constant [19 x i8] c"In:%.8f, Out:%.8f\0A\00", align 1, !taffo.info !0
@.str.7 = private unnamed_addr constant [12 x i8] c"Values End\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(float* noundef %arr, float* noundef %res) #0 !taffo.start !8 !taffo.initweight !9 !taffo.funinfo !10 {
entry:
  %v.u1_31fixp = alloca [100 x i32], align 16, !taffo.info !11, !taffo.target !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !15
  %cmp = icmp slt i32 %i.0, 100, !taffo.info !17
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !19
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %.flt = load float, float* %arrayidx, align 4, !taffo.info !11, !taffo.initweight !21, !taffo.target !14
  %0 = fmul float 0x41E0000000000000, %.flt, !taffo.info !11, !taffo.target !14
  %.flt.fallback.u1_31fixp = fptoui float %0 to i32, !taffo.info !11, !taffo.target !14
  %idxprom2 = sext i32 %i.0 to i64, !taffo.info !19
  %arrayidx3.u1_31fixp = getelementptr inbounds [100 x i32], [100 x i32]* %v.u1_31fixp, i64 0, i64 %idxprom2, !taffo.info !11, !taffo.target !14
  store i32 %.flt.fallback.u1_31fixp, i32* %arrayidx3.u1_31fixp, align 4, !taffo.info !22, !taffo.target !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !23, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !26

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc30, %for.end
  %i4.0 = phi i32 [ 0, %for.end ], [ %inc31, %for.inc30 ], !taffo.info !28
  %cmp6 = icmp slt i32 %i4.0, 1, !taffo.info !17
  br i1 %cmp6, label %for.body7, label %for.end32

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc27, %for.body7
  %j.0 = phi i32 [ 0, %for.body7 ], [ %inc28, %for.inc27 ], !taffo.info !30
  %cmp9 = icmp slt i32 %j.0, 100, !taffo.info !17
  br i1 %cmp9, label %for.body10, label %for.end29

for.body10:                                       ; preds = %for.cond8
  %idxprom11 = sext i32 %j.0 to i64, !taffo.info !32
  %arrayidx12.u1_31fixp = getelementptr inbounds [100 x i32], [100 x i32]* %v.u1_31fixp, i64 0, i64 %idxprom11, !taffo.info !11, !taffo.target !14
  %u1_31fixp3 = load i32, i32* %arrayidx12.u1_31fixp, align 4, !taffo.info !11, !taffo.target !14
  %1 = zext i32 35000000 to i64
  %2 = zext i32 %u1_31fixp3 to i64, !taffo.info !11, !taffo.target !14
  %3 = mul i64 %1, %2, !taffo.info !34, !taffo.target !14, !taffo.constinfo !37
  %4 = lshr i64 %3, 25, !taffo.info !34, !taffo.target !14, !taffo.constinfo !37
  %mul.u26_6fixp = trunc i64 %4 to i32, !taffo.info !40, !taffo.target !14
  %idxprom14 = sext i32 %j.0 to i64, !taffo.info !32
  %arrayidx15.u1_31fixp = getelementptr inbounds [100 x i32], [100 x i32]* %v.u1_31fixp, i64 0, i64 %idxprom14, !taffo.info !11, !taffo.target !14
  %u1_31fixp2 = load i32, i32* %arrayidx15.u1_31fixp, align 4, !taffo.info !11, !taffo.target !14
  %5 = zext i32 -1009975296 to i64
  %6 = shl i64 %5, 21
  %7 = zext i32 %u1_31fixp2 to i64, !taffo.info !11, !taffo.target !14
  %8 = udiv i64 %6, %7, !taffo.info !42, !taffo.target !14, !taffo.constinfo !45
  %div.u29_3fixp = trunc i64 %8 to i32, !taffo.info !48, !taffo.target !14
  %idxprom17 = sext i32 %j.0 to i64, !taffo.info !32
  %arrayidx18.u1_31fixp = getelementptr inbounds [100 x i32], [100 x i32]* %v.u1_31fixp, i64 0, i64 %idxprom17, !taffo.info !11, !taffo.target !14
  %u1_31fixp1 = load i32, i32* %arrayidx18.u1_31fixp, align 4, !taffo.info !11, !taffo.target !14
  %9 = zext i32 -2050660608 to i64
  %10 = shl i64 %9, 21
  %11 = zext i32 %u1_31fixp1 to i64, !taffo.info !11, !taffo.target !14
  %12 = udiv i64 %10, %11, !taffo.info !50, !taffo.target !14, !taffo.constinfo !53
  %div19.u25_7fixp = trunc i64 %12 to i32, !taffo.info !56, !taffo.target !14
  %idxprom20 = sext i32 %j.0 to i64, !taffo.info !32
  %arrayidx21.u1_31fixp = getelementptr inbounds [100 x i32], [100 x i32]* %v.u1_31fixp, i64 0, i64 %idxprom20, !taffo.info !11, !taffo.target !14
  %u1_31fixp = load i32, i32* %arrayidx21.u1_31fixp, align 4, !taffo.info !11, !taffo.target !14
  %13 = zext i32 %div19.u25_7fixp to i64, !taffo.info !56, !taffo.target !14
  %14 = shl i64 %13, 52, !taffo.info !56, !taffo.target !14
  %15 = zext i32 %u1_31fixp to i64, !taffo.info !11, !taffo.target !14
  %16 = lshr i64 %15, 1, !taffo.info !11, !taffo.target !14
  %div22.s35_29fixp = sdiv i64 %14, %16, !taffo.info !58, !taffo.target !14
  %17 = lshr i32 %mul.u26_6fixp, 3, !taffo.info !40, !taffo.target !14
  %add.u29_3fixp = add i32 %17, %div.u29_3fixp, !taffo.info !61
  %18 = lshr i32 137042000, 28
  %sub.u29_3fixp = sub i32 %add.u29_3fixp, %18, !taffo.info !63, !taffo.constinfo !65
  %19 = zext i32 %sub.u29_3fixp to i64, !taffo.info !63
  %20 = shl i64 %19, 26, !taffo.info !63
  %sub24.s35_29fixp = sub i64 %20, %div22.s35_29fixp, !taffo.info !68
  %21 = sitofp i64 %sub24.s35_29fixp to float, !taffo.info !68
  %22 = fdiv float %21, 0x41C0000000000000, !taffo.info !68
  %idxprom25 = sext i32 %j.0 to i64, !taffo.info !32
  %arrayidx26 = getelementptr inbounds float, float* %res, i64 %idxprom25
  store float %22, float* %arrayidx26, align 4, !taffo.info !70
  br label %for.inc27

for.inc27:                                        ; preds = %for.body10
  %inc28 = add nsw i32 %j.0, 1, !taffo.info !72, !taffo.constinfo !25
  br label %for.cond8, !llvm.loop !74

for.end29:                                        ; preds = %for.cond8
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %inc31 = add nsw i32 %i4.0, 1, !taffo.info !75, !taffo.constinfo !25
  br label %for.cond5, !llvm.loop !77

for.end32:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !78 !taffo.funinfo !78 {
entry:
  %arr = alloca [100 x float], align 16
  %res = alloca [100 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %conv = sitofp i32 %i.0 to float
  %div = fdiv float %conv, 1.000000e+02, !taffo.constinfo !79
  %add = fadd float %div, 0x3F50624DE0000000, !taffo.constinfo !82
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x float], [100 x float]* %arr, i64 0, i64 %idxprom
  store float %add, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !85

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [100 x float], [100 x float]* %arr, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 0
  call void @test(float* noundef %arraydecay, float* noundef %arraydecay1), !taffo.constinfo !86
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)), !taffo.constinfo !25
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.end
  %j.0 = phi i32 [ 0, %for.end ], [ %inc14, %for.inc13 ]
  %cmp3 = icmp slt i32 %j.0, 100
  br i1 %cmp3, label %for.body5, label %for.end15

for.body5:                                        ; preds = %for.cond2
  %idxprom6 = sext i32 %j.0 to i64
  %arrayidx7 = getelementptr inbounds [100 x float], [100 x float]* %arr, i64 0, i64 %idxprom6
  %0 = load float, float* %arrayidx7, align 4
  %conv8 = fpext float %0 to double
  %idxprom9 = sext i32 %j.0 to i64
  %arrayidx10 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 %idxprom9
  %1 = load float, float* %arrayidx10, align 4
  %conv11 = fpext float %1 to double
  %call12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), double noundef %conv8, double noundef %conv11), !taffo.constinfo !87
  br label %for.inc13

for.inc13:                                        ; preds = %for.body5
  %inc14 = add nsw i32 %j.0, 1, !taffo.constinfo !25
  br label %for.cond2, !llvm.loop !88

for.end15:                                        ; preds = %for.cond2
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)), !taffo.constinfo !25
  ret i32 0
}

declare !taffo.initweight !89 !taffo.funinfo !90 i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.170000e+02}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"Ubuntu clang version 15.0.7"}
!8 = !{i1 true}
!9 = !{i32 -1, i32 -1}
!10 = !{i32 0, i1 false, i32 0, i1 false}
!11 = !{!12, !13, i1 false, i2 -1}
!12 = !{!"fixp", i32 32, i32 31}
!13 = !{double 1.000000e-03, double 1.000000e+00}
!14 = !{!"v"}
!15 = !{i1 false, !16, i1 false, i2 0}
!16 = !{double 0.000000e+00, double 1.010000e+02}
!17 = !{i1 false, !18, i1 false, i2 0}
!18 = !{double 0.000000e+00, double 1.000000e+00}
!19 = !{i1 false, !20, i1 false, i2 0}
!20 = !{double 0.000000e+00, double 1.000000e+02}
!21 = !{i32 3}
!22 = !{i1 false, !13, i1 false, i2 -1}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 1.000000e+00, double 1.010000e+02}
!25 = !{i1 false, i1 false}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{i1 false, !29, i1 false, i2 0}
!29 = !{double 0.000000e+00, double 2.000000e+00}
!30 = !{i1 false, !31, i1 false, i2 0}
!31 = !{double 0.000000e+00, double 2.020000e+02}
!32 = !{i1 false, !33, i1 false, i2 0}
!33 = !{double 0.000000e+00, double 2.010000e+02}
!34 = !{!35, !36, i1 false, i2 -1}
!35 = !{!"fixp", i32 64, i32 31}
!36 = !{double 3.500000e+04, double 3.500000e+07}
!37 = !{!38, i1 false}
!38 = !{i1 false, !39, i1 false, i2 0}
!39 = !{double 3.500000e+07, double 3.500000e+07}
!40 = !{!41, !36, i1 false, i2 -1}
!41 = !{!"fixp", i32 32, i32 6}
!42 = !{!43, !44, i1 false, i2 -1}
!43 = !{!"fixp", i32 64, i32 3}
!44 = !{double 4.010000e+05, double 4.010000e+08}
!45 = !{!46, i1 false}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 4.010000e+05, double 4.010000e+05}
!48 = !{!49, !44, i1 false, i2 -1}
!49 = !{!"fixp", i32 32, i32 3}
!50 = !{!51, !52, i1 false, i2 -1}
!51 = !{!"fixp", i32 64, i32 7}
!52 = !{double 0x40D0B8ACE0000000, double 0x41705458D2C00000}
!53 = !{!54, i1 false}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 0x40D0B8ACE0000000, double 0x40D0B8ACE0000000}
!56 = !{!57, !52, i1 false, i2 -1}
!57 = !{!"fixp", i32 32, i32 7}
!58 = !{!59, !60, i1 false, i2 -1}
!59 = !{!"fixp", i32 -64, i32 29}
!60 = !{double 0x40D0B8ACE0000000, double 0x420FE4BD7B9F0000}
!61 = !{!49, !62, i1 false, i2 1}
!62 = !{double 4.360000e+05, double 4.360000e+08}
!63 = !{!49, !64, i1 false, i2 1}
!64 = !{double 0x411A9C7FBEA73D80, double 0x41B9FCD4FFEFA9CF}
!65 = !{i1 false, !66}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 0x3FB05630A0000000, double 0x3FB05630A0000000}
!68 = !{!59, !69, i1 false, i2 1}
!69 = !{double 0xC20FE488429F82B2, double 0x41B9FC921D3C29CF}
!70 = !{i1 false, !71, i1 false, i2 1}
!71 = !{double 0xC26CF8E91FFFE000, double 0x4180DF29E8000000}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 1.000000e+00, double 2.020000e+02}
!74 = distinct !{!74, !27}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 1.000000e+00, double 2.000000e+00}
!77 = distinct !{!77, !27}
!78 = !{}
!79 = !{i1 false, !80}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 1.000000e+02, double 1.000000e+02}
!82 = !{i1 false, !83}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 0x3F50624DE0000000, double 0x3F50624DE0000000}
!85 = distinct !{!85, !27}
!86 = !{i1 false, i1 false, i1 false}
!87 = !{i1 false, i1 false, i1 false, i1 false}
!88 = distinct !{!88, !27}
!89 = !{i32 -1}
!90 = !{i32 0, i1 false}
