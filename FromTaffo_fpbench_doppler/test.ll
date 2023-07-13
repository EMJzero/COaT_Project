; ModuleID = '/tmp/tmp.xYFsDvSMok/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @ex0(float %u, float %v, float %T) #0 !taffo.start !2 !taffo.initweight !3 !taffo.equivalentChild !4 !taffo.funinfo !5 {
entry:
  %mul = fmul float 0x3FE3333340000000, %T, !taffo.constinfo !6
  %add = fadd float 0x4074B66660000000, %mul, !taffo.constinfo !9
  %fneg = fneg float %add, !taffo.initweight !12, !taffo.info !13, !taffo.target !14
  %mul2 = fmul float %fneg, %v, !taffo.initweight !15, !taffo.info !13, !taffo.target !14
  %add3 = fadd float %add, %u, !taffo.initweight !12, !taffo.info !13, !taffo.target !14
  %add4 = fadd float %add, %u, !taffo.initweight !12, !taffo.info !13, !taffo.target !14
  %mul5 = fmul float %add3, %add4, !taffo.initweight !15, !taffo.info !13, !taffo.target !14
  %div = fdiv float %mul2, %mul5, !taffo.initweight !16, !taffo.info !13, !taffo.target !14
  ret float %div, !taffo.initweight !17, !taffo.info !13, !taffo.target !14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(float* %arr, float* %res) #0 !taffo.start !2 !taffo.initweight !18 !taffo.funinfo !19 {
entry:
  %u.s10_22fixp = alloca [100 x i32], align 16, !taffo.info !20, !taffo.target !23
  %v.s16_16fixp = alloca [100 x i32], align 16, !taffo.info !24
  %T.s7_25fixp = alloca [100 x i32], align 16, !taffo.info !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !30
  %cmp = icmp slt i32 %i.0, 100, !taffo.info !32
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 3, !taffo.constinfo !34, !taffo.info !35
  %idxprom = sext i32 %mul to i64, !taffo.info !35
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %1 = fmul float 0x4150000000000000, %0, !taffo.info !37
  %2 = fptosi float %1 to i32, !taffo.info !37
  %idxprom4 = sext i32 %i.0 to i64, !taffo.info !37
  %arrayidx5.s10_22fixp = getelementptr inbounds [100 x i32], [100 x i32]* %u.s10_22fixp, i64 0, i64 %idxprom4, !taffo.info !20, !taffo.target !23
  store i32 %2, i32* %arrayidx5.s10_22fixp, align 4, !taffo.info !39, !taffo.target !23
  %mul6 = mul nsw i32 %i.0, 3, !taffo.constinfo !34, !taffo.info !35
  %add = add nsw i32 %mul6, 1, !taffo.constinfo !34, !taffo.info !40
  %idxprom7 = sext i32 %add to i64, !taffo.info !40
  %arrayidx8 = getelementptr inbounds float, float* %arr, i64 %idxprom7
  %3 = load float, float* %arrayidx8, align 4
  %4 = fmul float 6.553600e+04, %3, !taffo.info !37
  %5 = fptosi float %4 to i32, !taffo.info !37
  %idxprom9 = sext i32 %i.0 to i64, !taffo.info !37
  %arrayidx10.s16_16fixp = getelementptr inbounds [100 x i32], [100 x i32]* %v.s16_16fixp, i64 0, i64 %idxprom9, !taffo.info !24
  store i32 %5, i32* %arrayidx10.s16_16fixp, align 4, !taffo.info !42
  %mul11 = mul nsw i32 %i.0, 3, !taffo.constinfo !34, !taffo.info !35
  %add12 = add nsw i32 %mul11, 2, !taffo.constinfo !34, !taffo.info !43
  %idxprom13 = sext i32 %add12 to i64, !taffo.info !43
  %arrayidx14 = getelementptr inbounds float, float* %arr, i64 %idxprom13
  %6 = load float, float* %arrayidx14, align 4
  %7 = fmul float 0x4180000000000000, %6, !taffo.info !37
  %8 = fptosi float %7 to i32, !taffo.info !37
  %idxprom15 = sext i32 %i.0 to i64, !taffo.info !37
  %arrayidx16.s7_25fixp = getelementptr inbounds [100 x i32], [100 x i32]* %T.s7_25fixp, i64 0, i64 %idxprom15, !taffo.info !27
  store i32 %8, i32* %arrayidx16.s7_25fixp, align 4, !taffo.info !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !34, !taffo.info !46
  br label %for.cond, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc35, %for.end
  %i17.0 = phi i32 [ 0, %for.end ], [ %inc36, %for.inc35 ], !taffo.info !30
  %cmp19 = icmp slt i32 %i17.0, 100, !taffo.info !32
  br i1 %cmp19, label %for.body20, label %for.end37

for.body20:                                       ; preds = %for.cond18
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc32, %for.body20
  %j.0 = phi i32 [ 0, %for.body20 ], [ %inc33, %for.inc32 ], !taffo.info !50
  %cmp22 = icmp slt i32 %j.0, 100, !taffo.info !32
  br i1 %cmp22, label %for.body23, label %for.end34

for.body23:                                       ; preds = %for.cond21
  %idxprom24 = sext i32 %j.0 to i64, !taffo.info !52
  %arrayidx25.s10_22fixp = getelementptr inbounds [100 x i32], [100 x i32]* %u.s10_22fixp, i64 0, i64 %idxprom24, !taffo.info !20, !taffo.target !23
  %s10_22fixp = load i32, i32* %arrayidx25.s10_22fixp, align 4, !taffo.info !54, !taffo.target !23
  %idxprom26 = sext i32 %j.0 to i64, !taffo.info !52
  %arrayidx27.s16_16fixp = getelementptr inbounds [100 x i32], [100 x i32]* %v.s16_16fixp, i64 0, i64 %idxprom26, !taffo.info !24
  %s16_16fixp = load i32, i32* %arrayidx27.s16_16fixp, align 4, !taffo.info !24
  %idxprom28 = sext i32 %j.0 to i64, !taffo.info !52
  %arrayidx29.s7_25fixp = getelementptr inbounds [100 x i32], [100 x i32]* %T.s7_25fixp, i64 0, i64 %idxprom28, !taffo.info !27
  %s7_25fixp = load i32, i32* %arrayidx29.s7_25fixp, align 4, !taffo.info !27
  %9 = ashr i32 %s10_22fixp, 1, !taffo.info !54, !taffo.target !23
  %call.s51_13fixp = call i64 @ex0.1_s51_13fixp(i32 %9, i32 %s16_16fixp, i32 %s7_25fixp), !taffo.constinfo !56, !taffo.info !57, !taffo.target !23
  %10 = sitofp i64 %call.s51_13fixp to float, !taffo.info !57, !taffo.target !23
  %11 = fdiv float %10, 8.192000e+03, !taffo.info !57, !taffo.target !23
  %idxprom30 = sext i32 %j.0 to i64, !taffo.info !52
  %arrayidx31 = getelementptr inbounds float, float* %res, i64 %idxprom30
  store float %11, float* %arrayidx31, align 4, !taffo.info !39, !taffo.target !23
  br label %for.inc32

for.inc32:                                        ; preds = %for.body23
  %inc33 = add nsw i32 %j.0, 1, !taffo.constinfo !34, !taffo.info !60
  br label %for.cond21, !llvm.loop !62

for.end34:                                        ; preds = %for.cond21
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %inc36 = add nsw i32 %i17.0, 1, !taffo.constinfo !34, !taffo.info !46
  br label %for.cond18, !llvm.loop !63

for.end37:                                        ; preds = %for.cond18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !64 !taffo.funinfo !64 {
entry:
  %arr = alloca [100 x float], align 16
  %res = alloca [100 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 32, !taffo.constinfo !34
  %conv = sitofp i32 %rem to float
  %add = fadd float %conv, 0x3FCD70A3E0000000, !taffo.constinfo !65
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x float], [100 x float]* %arr, i64 0, i64 %idxprom
  store float %add, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !34
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [100 x float], [100 x float]* %arr, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 0
  call void @test(float* %arraydecay, float* %arraydecay1), !taffo.constinfo !69
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @ex0.1_s51_13fixp(i32 %u.s11_21fixp, i32 %v.s16_16fixp, i32 %T.s7_25fixp) #0 !taffo.start !2 !taffo.initweight !70 !taffo.funinfo !71 !taffo.sourceFunction !72 {
entry:
  %0 = sext i32 %T.s7_25fixp to i64, !taffo.info !27
  %1 = mul i64 5033165, %0, !taffo.constinfo !73, !taffo.info !76
  %2 = ashr i64 %1, 23, !taffo.constinfo !73, !taffo.info !76
  %mul.s7_25fixp = trunc i64 %2 to i32, !taffo.info !79
  %3 = ashr i32 %mul.s7_25fixp, 3, !taffo.info !79
  %add.s10_22fixp = add i32 1389992320, %3, !taffo.constinfo !9, !taffo.info !80
  %fneg.s10_22fixp = sub i32 0, %add.s10_22fixp, !taffo.info !82, !taffo.target !14
  %4 = sext i32 %fneg.s10_22fixp to i64, !taffo.info !82, !taffo.target !14
  %5 = sext i32 %v.s16_16fixp to i64, !taffo.info !24
  %6 = mul i64 %4, %5, !taffo.info !84, !taffo.target !14
  %7 = ashr i64 %6, 30, !taffo.info !84, !taffo.target !14
  %mul2.s24_8fixp = trunc i64 %7 to i32, !taffo.info !87, !taffo.target !14
  %8 = ashr i32 %add.s10_22fixp, 1, !taffo.constinfo !9, !taffo.info !80
  %add3.s11_21fixp = add i32 %8, %u.s11_21fixp, !taffo.info !89, !taffo.target !14
  %9 = ashr i32 %add.s10_22fixp, 1, !taffo.constinfo !9, !taffo.info !80
  %add4.s11_21fixp = add i32 %9, %u.s11_21fixp, !taffo.info !89, !taffo.target !14
  %10 = sext i32 %add3.s11_21fixp to i64, !taffo.info !89, !taffo.target !14
  %11 = sext i32 %add4.s11_21fixp to i64, !taffo.info !89, !taffo.target !14
  %12 = mul i64 %10, %11, !taffo.info !91, !taffo.target !14
  %13 = ashr i64 %12, 31, !taffo.info !91, !taffo.target !14
  %mul5.s21_11fixp = trunc i64 %13 to i32, !taffo.info !94, !taffo.target !14
  %14 = sext i32 %mul2.s24_8fixp to i64, !taffo.info !87, !taffo.target !14
  %15 = shl i64 %14, 11, !taffo.info !87, !taffo.target !14
  %16 = sext i32 %mul5.s21_11fixp to i64, !taffo.info !94, !taffo.target !14
  %17 = sdiv i64 %15, %16, !taffo.info !96, !taffo.target !14
  %div.s51_13fixp = shl i64 %17, 5, !taffo.info !98, !taffo.target !14
  ret i64 %div.s51_13fixp, !taffo.initweight !17, !taffo.info !13, !taffo.target !14
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!2 = !{i1 true}
!3 = !{i32 -1, i32 -1, i32 -1}
!4 = distinct !{null}
!5 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!6 = !{!7, i1 false}
!7 = !{i1 false, !8, i1 false, i2 0}
!8 = !{double 0x3FE3333340000000, double 0x3FE3333340000000}
!9 = !{!10, i1 false}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0x4074B66660000000, double 0x4074B66660000000}
!12 = !{i32 2}
!13 = !{i1 false, i1 false, i1 false, i2 1}
!14 = !{!"x0"}
!15 = !{i32 3}
!16 = !{i32 4}
!17 = !{i32 5}
!18 = !{i32 -1, i32 -1}
!19 = !{i32 0, i1 false, i32 0, i1 false}
!20 = !{!21, !22, i1 false, i2 -1}
!21 = !{!"fixp", i32 -32, i32 22}
!22 = !{double -5.000000e+02, double 5.000000e+02}
!23 = !{!"main"}
!24 = !{!25, !26, i1 false, i2 -1}
!25 = !{!"fixp", i32 -32, i32 16}
!26 = !{double -2.000000e+01, double 2.000000e+04}
!27 = !{!28, !29, i1 false, i2 -1}
!28 = !{!"fixp", i32 -32, i32 25}
!29 = !{double -5.000000e+01, double 5.000000e+01}
!30 = !{i1 false, !31, i1 false, i2 0}
!31 = !{double 0.000000e+00, double 1.010000e+02}
!32 = !{i1 false, !33, i1 false, i2 0}
!33 = !{double 0.000000e+00, double 1.000000e+00}
!34 = !{i1 false, i1 false}
!35 = !{i1 false, !36, i1 false, i2 0}
!36 = !{double 0.000000e+00, double 3.000000e+02}
!37 = !{i1 false, !38, i1 false, i2 0}
!38 = !{double 0.000000e+00, double 1.000000e+02}
!39 = !{i1 false, !22, i1 false, i2 -1}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 1.000000e+00, double 3.010000e+02}
!42 = !{i1 false, !26, i1 false, i2 -1}
!43 = !{i1 false, !44, i1 false, i2 0}
!44 = !{double 2.000000e+00, double 3.020000e+02}
!45 = !{i1 false, !29, i1 false, i2 -1}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 1.000000e+00, double 1.010000e+02}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 0.000000e+00, double 1.020100e+04}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 0.000000e+00, double 1.020000e+04}
!54 = !{!55, !22, i1 false, i2 -1}
!55 = !{!"fixp", i32 -32, i32 21}
!56 = !{i1 false, i1 false, i1 false, i1 false}
!57 = !{!58, !59, i1 false, i2 -1}
!58 = !{!"fixp", i32 -64, i32 13}
!59 = !{double 0xC3048B0FE543EC14, double 0x43048B0FE543EC14}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 1.000000e+00, double 1.020100e+04}
!62 = distinct !{!62, !49}
!63 = distinct !{!63, !49}
!64 = !{}
!65 = !{i1 false, !66}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 0x3FCD70A3E0000000, double 0x3FCD70A3E0000000}
!68 = distinct !{!68, !49}
!69 = !{i1 false, i1 false, i1 false}
!70 = !{i32 3, i32 3, i32 3}
!71 = !{i32 1, !54, i32 1, !24, i32 1, !27}
!72 = !{float (float, float, float)* @ex0}
!73 = !{!74, i1 false}
!74 = !{!75, !8, i1 false, i2 0}
!75 = !{!"fixp", i32 32, i32 23}
!76 = !{!77, !78, i1 false, i2 -1}
!77 = !{!"fixp", i32 -64, i32 48}
!78 = !{double 0xC03E000014000000, double 0x403E000014000000}
!79 = !{!28, !78, i1 false, i2 -1}
!80 = !{!21, !81, i1 false, i2 -1}
!81 = !{double 0x4072D6665EC00000, double 0x4076966661400000}
!82 = !{!21, !83, i1 false, i2 1}
!83 = !{double 0xC076966661400000, double 0xC072D6665EC00000}
!84 = !{!85, !86, i1 false, i2 1}
!85 = !{!"fixp", i32 -64, i32 38}
!86 = !{double 0xC15B9297F9B6A000, double 0x40BC3BFFF9900000}
!87 = !{!88, !86, i1 false, i2 1}
!88 = !{!"fixp", i32 -32, i32 8}
!89 = !{!55, !90, i1 false, i2 1}
!90 = !{double 0xC068D33342800000, double 0x408AEB3330A00000}
!91 = !{!92, !93, i1 false, i2 1}
!92 = !{!"fixp", i32 -64, i32 42}
!93 = !{double 0xC104E2105CCAFAE0, double 0x4126A4F3E7301148}
!94 = !{!95, !93, i1 false, i2 1}
!95 = !{!"fixp", i32 -32, i32 11}
!96 = !{!97, !59, i1 false, i2 1}
!97 = !{!"fixp", i32 -64, i32 8}
!98 = !{!58, !59, i1 false, i2 1}
