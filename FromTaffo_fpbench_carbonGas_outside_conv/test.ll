; ModuleID = '/tmp/tmp.1iG58V4MBv/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.7 = private unnamed_addr constant [14 x i8] c"Values Begin\0A\00", align 1, !taffo.info !0
@.str.8 = private unnamed_addr constant [19 x i8] c"In:%.8f, Out:%.8f\0A\00", align 1, !taffo.info !0
@.str.9 = private unnamed_addr constant [12 x i8] c"Values End\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(float* noundef %arr, float* noundef %res) #0 !taffo.initweight !8 !taffo.equivalentChild !9 !taffo.funinfo !10 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ]
  %cmp = icmp slt i32 %i.0, 1
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, 100
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %mul = fmul float 3.500000e+07, %0, !taffo.constinfo !11
  %idxprom5 = sext i32 %j.0 to i64
  %arrayidx6 = getelementptr inbounds float, float* %arr, i64 %idxprom5
  %1 = load float, float* %arrayidx6, align 4
  %2 = fmul float 0x41F0000000000000, %1, !taffo.info !14
  %3 = fptoui float %2 to i64, !taffo.info !14
  %4 = lshr i64 %3, 27, !taffo.info !14
  %5 = udiv i64 -4337810866087919616, %4, !taffo.info !17, !taffo.constinfo !19
  %div.u32_32fixp = lshr i64 %5, 8, !taffo.info !14, !taffo.constinfo !23
  %idxprom8 = sext i32 %j.0 to i64
  %arrayidx9 = getelementptr inbounds float, float* %arr, i64 %idxprom8
  %6 = load float, float* %arrayidx9, align 4
  %div10 = fdiv float 0x40D0B8ACE0000000, %6, !taffo.constinfo !25
  %idxprom11 = sext i32 %j.0 to i64
  %arrayidx12 = getelementptr inbounds float, float* %arr, i64 %idxprom11
  %7 = load float, float* %arrayidx12, align 4
  %8 = fmul float 0x4170000000000000, %div10, !taffo.info !28, !taffo.constinfo !25
  %9 = fptoui float %8 to i64, !taffo.info !28
  %10 = fmul float 0x4170000000000000, %7, !taffo.info !28
  %11 = fptoui float %10 to i64, !taffo.info !28
  %12 = lshr i64 %11, 19, !taffo.info !28
  %13 = udiv i64 %9, %12, !taffo.info !31
  %div13.u40_24fixp = shl i64 %13, 5, !taffo.info !28
  %14 = fmul float 0x41F0000000000000, %mul, !taffo.info !14, !taffo.constinfo !11
  %15 = fptoui float %14 to i64, !taffo.info !14
  %add.u32_32fixp = add i64 %15, %div.u32_32fixp, !taffo.info !14
  %16 = lshr i64 588590908178432000, 31
  %sub.u32_32fixp = sub i64 %add.u32_32fixp, %16, !taffo.info !14, !taffo.constinfo !33
  %17 = lshr i64 %sub.u32_32fixp, 8, !taffo.info !14, !taffo.constinfo !33
  %sub15.u40_24fixp = sub i64 %17, %div13.u40_24fixp, !taffo.info !28
  %18 = uitofp i64 %sub15.u40_24fixp to float, !taffo.info !28
  %19 = fdiv float %18, 0x4170000000000000, !taffo.info !28
  %idxprom16 = sext i32 %j.0 to i64
  %arrayidx17 = getelementptr inbounds float, float* %res, i64 %idxprom16
  store float %19, float* %arrayidx17, align 4, !taffo.info !36
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !38
  br label %for.cond1, !llvm.loop !39

for.end:                                          ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %inc19 = add nsw i32 %i.0, 1, !taffo.constinfo !38
  br label %for.cond, !llvm.loop !41

for.end20:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !42 !taffo.funinfo !42 !taffo.start !43 {
entry:
  %arr.u1_31fixp = alloca [100 x i32], align 16, !taffo.info !44, !taffo.target !47
  %res.s35_29fixp = alloca [100 x i64], align 16, !taffo.info !48, !taffo.target !51
  %add = fadd float 0x40389999A0000000, 1.000000e+00, !taffo.info !52, !taffo.initweight !54, !taffo.constinfo !55
  %0 = fmul float 0x41E0000000000000, %add, !taffo.info !52, !taffo.constinfo !55
  %1 = fptoui float %0 to i32, !taffo.info !52
  %arrayidx.u1_31fixp = getelementptr inbounds [100 x i32], [100 x i32]* %arr.u1_31fixp, i64 0, i64 0, !taffo.info !44, !taffo.target !47
  store i32 %1, i32* %arrayidx.u1_31fixp, align 16, !taffo.info !60, !taffo.target !47
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !61
  %cmp = icmp slt i32 %i.0, 100, !taffo.info !63
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %conv = sitofp i32 %i.0 to float, !taffo.info !65
  %div = fdiv float %conv, 1.000000e+02, !taffo.info !63, !taffo.constinfo !67
  %2 = fmul float 0x41E0000000000000, %div, !taffo.info !63, !taffo.constinfo !67
  %3 = fptoui float %2 to i32, !taffo.info !63
  %add4.u1_31fixp = add i32 %3, 2147483, !taffo.info !44, !taffo.constinfo !70, !taffo.target !47
  %idxprom = sext i32 %i.0 to i64, !taffo.info !65
  %arrayidx5.u1_31fixp = getelementptr inbounds [100 x i32], [100 x i32]* %arr.u1_31fixp, i64 0, i64 %idxprom, !taffo.info !44, !taffo.target !47
  store i32 %add4.u1_31fixp, i32* %arrayidx5.u1_31fixp, align 4, !taffo.info !60, !taffo.target !47
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !73, !taffo.constinfo !38
  br label %for.cond, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  %arraydecay.u1_31fixp = getelementptr inbounds [100 x i32], [100 x i32]* %arr.u1_31fixp, i64 0, i64 0, !taffo.info !44, !taffo.target !47
  %arraydecay6.s35_29fixp = getelementptr inbounds [100 x i64], [100 x i64]* %res.s35_29fixp, i64 0, i64 0, !taffo.info !48, !taffo.target !51
  call void @test_1_fixp(i32* %arraydecay.u1_31fixp, i64* %arraydecay6.s35_29fixp), !taffo.info !60, !taffo.constinfo !76, !taffo.target !47
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)), !taffo.constinfo !38
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc18, %for.end
  %j.0 = phi i32 [ 0, %for.end ], [ %inc19, %for.inc18 ], !taffo.info !61
  %cmp8 = icmp slt i32 %j.0, 100, !taffo.info !63
  br i1 %cmp8, label %for.body10, label %for.end20

for.body10:                                       ; preds = %for.cond7
  %idxprom11 = sext i32 %j.0 to i64, !taffo.info !65
  %arrayidx12.u1_31fixp = getelementptr inbounds [100 x i32], [100 x i32]* %arr.u1_31fixp, i64 0, i64 %idxprom11, !taffo.info !44, !taffo.target !47
  %u1_31fixp = load i32, i32* %arrayidx12.u1_31fixp, align 4, !taffo.info !44, !taffo.target !47
  %4 = uitofp i32 %u1_31fixp to double, !taffo.info !44, !taffo.target !47
  %5 = fdiv double %4, 0x41E0000000000000, !taffo.info !44, !taffo.target !47
  %idxprom14 = sext i32 %j.0 to i64, !taffo.info !65
  %arrayidx15.s35_29fixp = getelementptr inbounds [100 x i64], [100 x i64]* %res.s35_29fixp, i64 0, i64 %idxprom14, !taffo.info !48, !taffo.target !51
  %s35_29fixp = load i64, i64* %arrayidx15.s35_29fixp, align 4, !taffo.info !48, !taffo.target !51
  %6 = sitofp i64 %s35_29fixp to double, !taffo.info !48, !taffo.target !51
  %7 = fdiv double %6, 0x41C0000000000000, !taffo.info !48, !taffo.target !51
  %call17.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), double noundef %5, double noundef %7), !taffo.info !77, !taffo.initweight !78, !taffo.constinfo !79, !taffo.target !47
  br label %for.inc18

for.inc18:                                        ; preds = %for.body10
  %inc19 = add nsw i32 %j.0, 1, !taffo.info !73, !taffo.constinfo !38
  br label %for.cond7, !llvm.loop !80

for.end20:                                        ; preds = %for.cond7
  %call21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)), !taffo.constinfo !38
  ret i32 0
}

declare !taffo.initweight !81 !taffo.funinfo !82 i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_1_fixp(i32* noundef %arr, i64* noundef %res) #0 !taffo.initweight !83 !taffo.funinfo !84 !taffo.sourceFunction !85 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc19, %for.inc18 ], !taffo.info !86
  %cmp = icmp slt i32 %i.0, 1, !taffo.info !63
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !88
  %cmp2 = icmp slt i32 %j.0, 100, !taffo.info !63
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %j.0 to i64, !taffo.info !90
  %arrayidx.u1_31fixp = getelementptr inbounds i32, i32* %arr, i64 %idxprom, !taffo.info !44
  %u1_31fixp = load i32, i32* %arrayidx.u1_31fixp, align 4, !taffo.info !44
  %0 = zext i32 35000000 to i64
  %1 = zext i32 %u1_31fixp to i64, !taffo.info !44
  %2 = mul i64 %0, %1, !taffo.info !92, !taffo.constinfo !11
  %3 = lshr i64 %2, 25, !taffo.info !92, !taffo.constinfo !11
  %mul.u26_6fixp = trunc i64 %3 to i32, !taffo.info !95
  %idxprom5 = sext i32 %j.0 to i64, !taffo.info !90
  %arrayidx6.u1_31fixp = getelementptr inbounds i32, i32* %arr, i64 %idxprom5, !taffo.info !44
  %u1_31fixp1 = load i32, i32* %arrayidx6.u1_31fixp, align 4, !taffo.info !44
  %4 = zext i32 -1009975296 to i64
  %5 = shl i64 %4, 21
  %6 = zext i32 %u1_31fixp1 to i64, !taffo.info !44
  %7 = udiv i64 %5, %6, !taffo.info !97, !taffo.constinfo !23
  %div.u29_3fixp = trunc i64 %7 to i32, !taffo.info !100
  %idxprom8 = sext i32 %j.0 to i64, !taffo.info !90
  %arrayidx9.u1_31fixp = getelementptr inbounds i32, i32* %arr, i64 %idxprom8, !taffo.info !44
  %u1_31fixp2 = load i32, i32* %arrayidx9.u1_31fixp, align 4, !taffo.info !44
  %8 = zext i32 -2050660608 to i64
  %9 = shl i64 %8, 21
  %10 = zext i32 %u1_31fixp2 to i64, !taffo.info !44
  %11 = udiv i64 %9, %10, !taffo.info !102, !taffo.constinfo !25
  %div10.u25_7fixp = trunc i64 %11 to i32, !taffo.info !105
  %idxprom11 = sext i32 %j.0 to i64, !taffo.info !90
  %arrayidx12.u1_31fixp = getelementptr inbounds i32, i32* %arr, i64 %idxprom11, !taffo.info !44
  %u1_31fixp3 = load i32, i32* %arrayidx12.u1_31fixp, align 4, !taffo.info !44
  %12 = zext i32 %div10.u25_7fixp to i64, !taffo.info !105
  %13 = shl i64 %12, 52, !taffo.info !105
  %14 = zext i32 %u1_31fixp3 to i64, !taffo.info !44
  %15 = lshr i64 %14, 1, !taffo.info !44
  %div13.s35_29fixp = sdiv i64 %13, %15, !taffo.info !107
  %16 = lshr i32 %mul.u26_6fixp, 3, !taffo.info !95
  %add.u29_3fixp = add i32 %16, %div.u29_3fixp, !taffo.info !109
  %17 = lshr i32 137042000, 28
  %sub.u29_3fixp = sub i32 %add.u29_3fixp, %17, !taffo.info !111, !taffo.constinfo !33
  %18 = zext i32 %sub.u29_3fixp to i64, !taffo.info !111
  %19 = shl i64 %18, 26, !taffo.info !111
  %sub15.s35_29fixp = sub i64 %19, %div13.s35_29fixp, !taffo.info !48
  %idxprom16 = sext i32 %j.0 to i64, !taffo.info !90
  %arrayidx17.s35_29fixp = getelementptr inbounds i64, i64* %res, i64 %idxprom16, !taffo.info !48
  store i64 %sub15.s35_29fixp, i64* %arrayidx17.s35_29fixp, align 4, !taffo.info !36
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !113, !taffo.constinfo !38
  br label %for.cond1, !llvm.loop !115

for.end:                                          ; preds = %for.cond1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %inc19 = add nsw i32 %i.0, 1, !taffo.info !116, !taffo.constinfo !38
  br label %for.cond, !llvm.loop !118

for.end20:                                        ; preds = %for.cond
  ret void
}

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
!8 = !{i32 -1, i32 -1}
!9 = distinct !{null}
!10 = !{i32 0, i1 false, i32 0, i1 false}
!11 = !{!12, i1 false}
!12 = !{i1 false, !13, i1 false, i2 0}
!13 = !{double 3.500000e+07, double 3.500000e+07}
!14 = !{!15, !16, i1 false, i2 1}
!15 = !{!"fixp", i32 64, i32 32}
!16 = !{double 4.010140e+05, double 0x41E6D0CAC0200000}
!17 = !{!18, !16, i1 false, i2 1}
!18 = !{!"fixp", i32 64, i32 40}
!19 = !{!20, i1 false}
!20 = !{!21, !22, i1 false, i2 0}
!21 = !{!"fixp", i32 64, i32 45}
!22 = !{double 4.010000e+05, double 4.010000e+05}
!23 = !{!24, i1 false}
!24 = !{i1 false, !22, i1 false, i2 0}
!25 = !{!26, i1 false}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 0x40D0B8ACE0000000, double 0x40D0B8ACE0000000}
!28 = !{!29, !30, i1 false, i2 1}
!29 = !{!"fixp", i32 64, i32 24}
!30 = !{double 1.712300e+04, double 0x426D0FB9E0002000}
!31 = !{!32, !30, i1 false, i2 1}
!32 = !{!"fixp", i32 64, i32 19}
!33 = !{i1 false, !34}
!34 = !{i1 false, !35, i1 false, i2 0}
!35 = !{double 0x3FB05630A0000000, double 0x3FB05630A0000000}
!36 = !{i1 false, !37, i1 false, i2 1}
!37 = !{double 0xC26CF8E91FFFE000, double 0x4180DF29E8000000}
!38 = !{i1 false, i1 false}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = distinct !{!41, !40}
!42 = !{}
!43 = !{i1 true}
!44 = !{!45, !46, i1 false, i2 -1}
!45 = !{!"fixp", i32 32, i32 31}
!46 = !{double 1.000000e-03, double 1.000000e+00}
!47 = !{!"arr"}
!48 = !{!49, !50, i1 false, i2 1}
!49 = !{!"fixp", i32 -64, i32 29}
!50 = !{double 0xC20FE488429F82B2, double 0x41B9FC921D3C29CF}
!51 = !{!"res"}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 0x40399999A0000000, double 0x40399999A0000000}
!54 = !{i32 2}
!55 = !{!56, !58}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 0x40389999A0000000, double 0x40389999A0000000}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 1.000000e+00, double 1.000000e+00}
!60 = !{i1 false, !46, i1 false, i2 -1}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 0.000000e+00, double 1.010000e+02}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 0.000000e+00, double 1.000000e+00}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 0.000000e+00, double 1.000000e+02}
!67 = !{i1 false, !68}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 1.000000e+02, double 1.000000e+02}
!70 = !{i1 false, !71}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 0x3F50624DE0000000, double 0x3F50624DE0000000}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 1.000000e+00, double 1.010000e+02}
!75 = distinct !{!75, !40}
!76 = !{i1 false, i1 false, i1 false}
!77 = !{!45, i1 false, i1 false, i2 -1}
!78 = !{i32 4}
!79 = !{i1 false, i1 false, i1 false, i1 false}
!80 = distinct !{!80, !40}
!81 = !{i32 -1}
!82 = !{i32 0, i1 false}
!83 = !{i32 2, i32 2}
!84 = !{i32 1, !44, i32 1, !48}
!85 = !{void (float*, float*)* @test}
!86 = !{i1 false, !87, i1 false, i2 0}
!87 = !{double 0.000000e+00, double 2.000000e+00}
!88 = !{i1 false, !89, i1 false, i2 0}
!89 = !{double 0.000000e+00, double 2.020000e+02}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 0.000000e+00, double 2.010000e+02}
!92 = !{!93, !94, i1 false, i2 -1}
!93 = !{!"fixp", i32 64, i32 31}
!94 = !{double 3.500000e+04, double 3.500000e+07}
!95 = !{!96, !94, i1 false, i2 -1}
!96 = !{!"fixp", i32 32, i32 6}
!97 = !{!98, !99, i1 false, i2 1}
!98 = !{!"fixp", i32 64, i32 3}
!99 = !{double 4.010000e+05, double 4.010000e+08}
!100 = !{!101, !99, i1 false, i2 1}
!101 = !{!"fixp", i32 32, i32 3}
!102 = !{!103, !104, i1 false, i2 -1}
!103 = !{!"fixp", i32 64, i32 7}
!104 = !{double 0x40D0B8ACE0000000, double 0x41705458D2C00000}
!105 = !{!106, !104, i1 false, i2 -1}
!106 = !{!"fixp", i32 32, i32 7}
!107 = !{!49, !108, i1 false, i2 1}
!108 = !{double 0x40D0B8ACE0000000, double 0x420FE4BD7B9F0000}
!109 = !{!101, !110, i1 false, i2 1}
!110 = !{double 4.360000e+05, double 4.360000e+08}
!111 = !{!101, !112, i1 false, i2 1}
!112 = !{double 0x411A9C7FBEA73D80, double 0x41B9FCD4FFEFA9CF}
!113 = !{i1 false, !114, i1 false, i2 0}
!114 = !{double 1.000000e+00, double 2.020000e+02}
!115 = distinct !{!115, !40}
!116 = !{i1 false, !117, i1 false, i2 0}
!117 = !{double 1.000000e+00, double 2.000000e+00}
!118 = distinct !{!118, !40}
