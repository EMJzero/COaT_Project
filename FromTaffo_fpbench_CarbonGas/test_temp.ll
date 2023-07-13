; ModuleID = '/tmp/tmp.N7DNp3spLa/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @ex0(float %v) #0 !taffo.initweight !2 !taffo.equivalentChild !3 !taffo.funinfo !4 {
entry:
  %mul = fmul float 3.500000e+07, %v, !taffo.constinfo !5
  %div = fdiv float 4.010000e+05, %v, !taffo.constinfo !8
  %div3 = fdiv float 0x40D0B8ACE0000000, %v, !taffo.constinfo !11
  %div4 = fdiv float %div3, %v
  %0 = fmul float 0x41F0000000000000, %mul, !taffo.constinfo !5, !taffo.info !14
  %1 = fptoui float %0 to i64, !taffo.info !14
  %2 = fmul float 0x41F0000000000000, %div, !taffo.constinfo !8, !taffo.info !14
  %3 = fptoui float %2 to i64, !taffo.info !14
  %add.u32_32fixp = add i64 %1, %3, !taffo.info !14
  %sub.u32_32fixp = sub i64 %add.u32_32fixp, 274084000, !taffo.constinfo !17, !taffo.info !14
  %4 = lshr i64 %sub.u32_32fixp, 8, !taffo.constinfo !17, !taffo.info !14
  %5 = fmul float 0x4170000000000000, %div4, !taffo.info !20
  %6 = fptoui float %5 to i64, !taffo.info !20
  %sub6.u40_24fixp = sub i64 %4, %6, !taffo.info !20
  %7 = uitofp i64 %sub6.u40_24fixp to float, !taffo.info !20
  %8 = fdiv float %7, 0x4170000000000000, !taffo.info !20
  ret float %8, !taffo.initweight !23, !taffo.info !24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test(float* %arr) #0 !taffo.initweight !2 !taffo.funinfo !4 !taffo.start !26 {
entry:
  %v.u1_31fixp = alloca [2000 x i32], align 16, !taffo.info !27, !taffo.target !30
  %res = alloca [2000 x float], align 16, !taffo.info !31
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !33
  %cmp = icmp slt i32 %i.0, 2000, !taffo.info !35
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !37
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %1 = fmul float 0x41E0000000000000, %0, !taffo.info !37
  %2 = fptoui float %1 to i32, !taffo.info !37
  %idxprom2 = sext i32 %i.0 to i64, !taffo.info !37
  %arrayidx3.u1_31fixp = getelementptr inbounds [2000 x i32], [2000 x i32]* %v.u1_31fixp, i64 0, i64 %idxprom2, !taffo.info !27, !taffo.target !30
  store i32 %2, i32* %arrayidx3.u1_31fixp, align 4, !taffo.info !39, !taffo.target !30
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !40, !taffo.info !41
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc18, %for.end
  %i4.0 = phi i32 [ 0, %for.end ], [ %inc19, %for.inc18 ], !taffo.info !33
  %cmp6 = icmp slt i32 %i4.0, 1000, !taffo.info !35
  br i1 %cmp6, label %for.body7, label %for.end20

for.body7:                                        ; preds = %for.cond5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc15, %for.body7
  %j.0 = phi i32 [ 0, %for.body7 ], [ %inc16, %for.inc15 ], !taffo.info !45
  %cmp9 = icmp slt i32 %j.0, 2000, !taffo.info !47
  br i1 %cmp9, label %for.body10, label %for.end17

for.body10:                                       ; preds = %for.cond8
  %idxprom11 = sext i32 %j.0 to i64, !taffo.info !48
  %arrayidx12.u1_31fixp = getelementptr inbounds [2000 x i32], [2000 x i32]* %v.u1_31fixp, i64 0, i64 %idxprom11, !taffo.info !27, !taffo.target !30
  %u1_31fixp = load i32, i32* %arrayidx12.u1_31fixp, align 4, !taffo.info !27, !taffo.target !30
  %call.s64_0fixp = call i64 @ex0.1_s64_0fixp(i32 %u1_31fixp), !taffo.constinfo !40, !taffo.info !50, !taffo.target !30
  %3 = sitofp i64 %call.s64_0fixp to float, !taffo.info !50, !taffo.target !30
  %idxprom13 = sext i32 %j.0 to i64, !taffo.info !48
  %arrayidx14 = getelementptr inbounds [2000 x float], [2000 x float]* %res, i64 0, i64 %idxprom13, !taffo.info !31
  store float %3, float* %arrayidx14, align 4, !taffo.info !39, !taffo.target !30
  br label %for.inc15

for.inc15:                                        ; preds = %for.body10
  %inc16 = add nsw i32 %j.0, 1, !taffo.constinfo !40, !taffo.info !52
  br label %for.cond8, !llvm.loop !54

for.end17:                                        ; preds = %for.cond8
  br label %for.inc18

for.inc18:                                        ; preds = %for.end17
  %inc19 = add nsw i32 %i4.0, 1, !taffo.constinfo !40, !taffo.info !41
  br label %for.cond5, !llvm.loop !55

for.end20:                                        ; preds = %for.cond5
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !56 !taffo.funinfo !56 {
entry:
  %arr = alloca [2000 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 2000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 32, !taffo.constinfo !40
  %conv = sitofp i32 %rem to float
  %add = fadd float %conv, 0x3FCD70A3E0000000, !taffo.constinfo !57
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [2000 x float], [2000 x float]* %arr, i64 0, i64 %idxprom
  store float %add, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !40
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [2000 x float], [2000 x float]* %arr, i64 0, i64 0
  %call = call i32 @test(float* %arraydecay), !taffo.constinfo !40
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @ex0.1_s64_0fixp(i32 %v.u1_31fixp) #0 !taffo.initweight !61 !taffo.funinfo !62 !taffo.sourceFunction !63 {
entry:
  %0 = zext i32 %v.u1_31fixp to i64, !taffo.info !27
  %1 = mul i64 35000000, %0, !taffo.constinfo !64, !taffo.info !67
  %2 = lshr i64 %1, 25, !taffo.constinfo !64, !taffo.info !67
  %mul.u26_6fixp = trunc i64 %2 to i32, !taffo.info !70
  %3 = zext i32 %v.u1_31fixp to i96, !taffo.info !27
  %4 = udiv i96 30298703354091643691073536000, %3, !taffo.constinfo !72, !taffo.info !75
  %5 = lshr i96 %4, 27, !taffo.constinfo !72, !taffo.info !75
  %div.u46_18fixp = trunc i96 %5 to i64, !taffo.info !78
  %6 = zext i32 %v.u1_31fixp to i96, !taffo.info !27
  %7 = udiv i96 20700075548225355830635003904, %6, !taffo.constinfo !80, !taffo.info !83
  %8 = lshr i96 %7, 26, !taffo.constinfo !80, !taffo.info !83
  %div3.u41_23fixp = trunc i96 %8 to i64, !taffo.info !86
  %9 = zext i64 %div3.u41_23fixp to i96, !taffo.info !86
  %10 = shl i96 %9, 31, !taffo.info !86
  %11 = zext i32 %v.u1_31fixp to i96, !taffo.info !27
  %12 = udiv i96 %10, %11, !taffo.info !88
  %13 = lshr i96 %12, 23, !taffo.info !88
  %div4.u64_0fixp = trunc i96 %13 to i64, !taffo.info !91
  %14 = zext i32 %mul.u26_6fixp to i64, !taffo.info !70
  %15 = shl i64 %14, 12, !taffo.info !70
  %add.u46_18fixp = add i64 %15, %div.u46_18fixp, !taffo.info !93
  %sub.u46_18fixp = sub i64 %add.u46_18fixp, 16728, !taffo.constinfo !17, !taffo.info !95
  %16 = lshr i64 %sub.u46_18fixp, 18, !taffo.constinfo !17, !taffo.info !95
  %sub6.s64_0fixp = sub i64 %16, %div4.u64_0fixp, !taffo.info !50
  ret i64 %sub6.s64_0fixp, !taffo.initweight !23, !taffo.info !24
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!2 = !{i32 -1}
!3 = distinct !{null}
!4 = !{i32 0, i1 false}
!5 = !{!6, i1 false}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 3.500000e+07, double 3.500000e+07}
!8 = !{!9, i1 false}
!9 = !{i1 false, !10, i1 false, i2 0}
!10 = !{double 4.010000e+05, double 4.010000e+05}
!11 = !{!12, i1 false}
!12 = !{i1 false, !13, i1 false, i2 0}
!13 = !{double 0x40D0B8ACE0000000, double 0x40D0B8ACE0000000}
!14 = !{!15, !16, i1 false, i2 1}
!15 = !{!"fixp", i32 64, i32 32}
!16 = !{double 4.010140e+05, double 0x41E6D0CAC0200000}
!17 = !{i1 false, !18}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 0x3FB05630A0000000, double 0x3FB05630A0000000}
!20 = !{!21, !22, i1 false, i2 1}
!21 = !{!"fixp", i32 64, i32 24}
!22 = !{double 1.712300e+04, double 0x426D0FB9E0002000}
!23 = !{i32 2}
!24 = !{i1 false, !25, i1 false, i2 1}
!25 = !{double 0xC26CF8E91FFFE000, double 0x4180DF29E8000000}
!26 = !{i1 true}
!27 = !{!28, !29, i1 false, i2 1}
!28 = !{!"fixp", i32 32, i32 31}
!29 = !{double 0.000000e+00, double 1.000000e+00}
!30 = !{!"main"}
!31 = !{i1 false, !32, i1 false, i2 0}
!32 = !{double 0xC422908117EACF70, double 0x42C23C422B99EE9E}
!33 = !{i1 false, !34, i1 false, i2 0}
!34 = !{double 0.000000e+00, double 2.560000e+02}
!35 = !{i1 false, !36, i1 false, i2 0}
!36 = !{double 1.000000e+00, double 1.000000e+00}
!37 = !{i1 false, !38, i1 false, i2 0}
!38 = !{double 0.000000e+00, double 2.550000e+02}
!39 = !{i1 false, !29, i1 false, i2 1}
!40 = !{i1 false, i1 false}
!41 = !{i1 false, !42, i1 false, i2 0}
!42 = !{double 1.000000e+00, double 2.560000e+02}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{i1 false, !46, i1 false, i2 0}
!46 = !{double 0.000000e+00, double 6.553600e+04}
!47 = !{i1 false, !29, i1 false, i2 0}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 0.000000e+00, double 6.553500e+04}
!50 = !{!51, !32, i1 false, i2 1}
!51 = !{!"fixp", i32 -64, i32 0}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 1.000000e+00, double 6.553600e+04}
!54 = distinct !{!54, !44}
!55 = distinct !{!55, !44}
!56 = !{}
!57 = !{i1 false, !58}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 0x3FCD70A3E0000000, double 0x3FCD70A3E0000000}
!60 = distinct !{!60, !44}
!61 = !{i32 3}
!62 = !{i32 1, !27}
!63 = !{float (float)* @ex0}
!64 = !{!65, i1 false}
!65 = !{!66, !7, i1 false, i2 0}
!66 = !{!"fixp", i32 32, i32 0}
!67 = !{!68, !69, i1 false, i2 1}
!68 = !{!"fixp", i32 64, i32 31}
!69 = !{double 0.000000e+00, double 3.500000e+07}
!70 = !{!71, !69, i1 false, i2 1}
!71 = !{!"fixp", i32 32, i32 6}
!72 = !{!73, i1 false}
!73 = !{!74, !10, i1 false, i2 0}
!74 = !{!"fixp", i32 96, i32 76}
!75 = !{!76, !77, i1 false, i2 1}
!76 = !{!"fixp", i32 96, i32 45}
!77 = !{double 4.010000e+05, double 4.010000e+13}
!78 = !{!79, !77, i1 false, i2 1}
!79 = !{!"fixp", i32 64, i32 18}
!80 = !{!81, i1 false}
!81 = !{!82, !13, i1 false, i2 0}
!82 = !{!"fixp", i32 96, i32 80}
!83 = !{!84, !85, i1 false, i2 1}
!84 = !{!"fixp", i32 96, i32 49}
!85 = !{double 0x40D0B8ACE0000000, double 0x4278EAB408943800}
!86 = !{!87, !85, i1 false, i2 1}
!87 = !{!"fixp", i32 64, i32 23}
!88 = !{!89, !90, i1 false, i2 1}
!89 = !{!"fixp", i32 96, i32 23}
!90 = !{double 0x40D0B8ACE0000000, double 0x4422908117EACF7C}
!91 = !{!92, !90, i1 false, i2 1}
!92 = !{!"fixp", i32 64, i32 0}
!93 = !{!79, !94, i1 false, i2 1}
!94 = !{double 4.010000e+05, double 0x42C23C422BBB6000}
!95 = !{!79, !96, i1 false, i2 1}
!96 = !{double 0x4118799FBEA73D80, double 0x42C23C422BBB5FF8}
