; ModuleID = '/tmp/tmp.fPTGXxwZlN/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.4 = private unnamed_addr constant [14 x i8] c"Values Begin\0A\00", align 1, !taffo.info !0
@.str.5 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1, !taffo.info !2
@.str.6 = private unnamed_addr constant [12 x i8] c"Values End\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local float @ex0(float %v, float %w, float %r) #0 !taffo.initweight !6 !taffo.equivalentChild !7 !taffo.funinfo !8 {
entry:
  %mul = fmul float %r, %r
  %div = fdiv float 2.000000e+00, %mul, !taffo.constinfo !9
  %add = fadd float 3.000000e+00, %div, !taffo.constinfo !12
  %mul1 = fmul float 2.000000e+00, %v, !taffo.constinfo !9
  %sub = fsub float 3.000000e+00, %mul1, !taffo.constinfo !12
  %mul2 = fmul float 1.250000e-01, %sub, !taffo.constinfo !15
  %mul3 = fmul float %w, %w
  %mul4 = fmul float %mul3, %r
  %mul5 = fmul float %mul4, %r
  %mul6 = fmul float %mul2, %mul5
  %sub7 = fsub float 1.000000e+00, %v, !taffo.constinfo !18
  %div8 = fdiv float %mul6, %sub7
  %sub9 = fsub float %add, %div8
  %sub10 = fsub float %sub9, 4.500000e+00, !taffo.constinfo !21
  ret float %sub10
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(float* %arr) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.start !26 {
entry:
  %v.s4_28fixp = alloca [100 x i32], align 16, !taffo.info !27, !taffo.target !30
  %w.u1_31fixp = alloca [100 x i32], align 16, !taffo.info !31
  %e.u4_28fixp = alloca [100 x i32], align 16, !taffo.info !34
  %res = alloca [100 x float], align 16, !taffo.info !37
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !39
  %cmp = icmp slt i32 %i.0, 100, !taffo.info !41
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 3, !taffo.info !42, !taffo.constinfo !44
  %idxprom = sext i32 %mul to i64, !taffo.info !42
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %1 = fmul float 0x41B0000000000000, %0, !taffo.info !45
  %2 = fptosi float %1 to i32, !taffo.info !45
  %idxprom4 = sext i32 %i.0 to i64, !taffo.info !45
  %arrayidx5.s4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %v.s4_28fixp, i64 0, i64 %idxprom4, !taffo.info !27, !taffo.target !30
  store i32 %2, i32* %arrayidx5.s4_28fixp, align 4, !taffo.info !47, !taffo.target !30
  %mul6 = mul nsw i32 %i.0, 3, !taffo.info !42, !taffo.constinfo !44
  %add = add nsw i32 %mul6, 1, !taffo.info !48, !taffo.constinfo !44
  %idxprom7 = sext i32 %add to i64, !taffo.info !48
  %arrayidx8 = getelementptr inbounds float, float* %arr, i64 %idxprom7
  %3 = load float, float* %arrayidx8, align 4
  %4 = fmul float 0x41E0000000000000, %3, !taffo.info !45
  %5 = fptoui float %4 to i32, !taffo.info !45
  %idxprom9 = sext i32 %i.0 to i64, !taffo.info !45
  %arrayidx10.u1_31fixp = getelementptr inbounds [100 x i32], [100 x i32]* %w.u1_31fixp, i64 0, i64 %idxprom9, !taffo.info !31
  store i32 %5, i32* %arrayidx10.u1_31fixp, align 4, !taffo.info !50
  %mul11 = mul nsw i32 %i.0, 3, !taffo.info !42, !taffo.constinfo !44
  %add12 = add nsw i32 %mul11, 2, !taffo.info !51, !taffo.constinfo !44
  %idxprom13 = sext i32 %add12 to i64, !taffo.info !51
  %arrayidx14 = getelementptr inbounds float, float* %arr, i64 %idxprom13
  %6 = load float, float* %arrayidx14, align 4
  %7 = fmul float 0x41B0000000000000, %6, !taffo.info !45
  %8 = fptoui float %7 to i32, !taffo.info !45
  %idxprom15 = sext i32 %i.0 to i64, !taffo.info !45
  %arrayidx16.u4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %e.u4_28fixp, i64 0, i64 %idxprom15, !taffo.info !34
  store i32 %8, i32* %arrayidx16.u4_28fixp, align 4, !taffo.info !53
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !54, !taffo.constinfo !44
  br label %for.cond, !llvm.loop !56

for.end:                                          ; preds = %for.cond
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc35, %for.end
  %i17.0 = phi i32 [ 0, %for.end ], [ %inc36, %for.inc35 ], !taffo.info !58
  %cmp19 = icmp slt i32 %i17.0, 1, !taffo.info !41
  br i1 %cmp19, label %for.body20, label %for.end37

for.body20:                                       ; preds = %for.cond18
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc32, %for.body20
  %j.0 = phi i32 [ 0, %for.body20 ], [ %inc33, %for.inc32 ], !taffo.info !60
  %cmp22 = icmp slt i32 %j.0, 100, !taffo.info !41
  br i1 %cmp22, label %for.body23, label %for.end34

for.body23:                                       ; preds = %for.cond21
  %idxprom24 = sext i32 %j.0 to i64, !taffo.info !62
  %arrayidx25.s4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %v.s4_28fixp, i64 0, i64 %idxprom24, !taffo.info !27, !taffo.target !30
  %s4_28fixp = load i32, i32* %arrayidx25.s4_28fixp, align 4, !taffo.info !64, !taffo.target !30
  %idxprom26 = sext i32 %j.0 to i64, !taffo.info !62
  %arrayidx27.u1_31fixp = getelementptr inbounds [100 x i32], [100 x i32]* %w.u1_31fixp, i64 0, i64 %idxprom26, !taffo.info !31
  %u1_31fixp = load i32, i32* %arrayidx27.u1_31fixp, align 4, !taffo.info !31
  %idxprom28 = sext i32 %j.0 to i64, !taffo.info !62
  %arrayidx29.u4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %e.u4_28fixp, i64 0, i64 %idxprom28, !taffo.info !34
  %u4_28fixp = load i32, i32* %arrayidx29.u4_28fixp, align 4, !taffo.info !66
  %9 = ashr i32 %s4_28fixp, 1, !taffo.info !64, !taffo.target !30
  %10 = lshr i32 %u4_28fixp, 2, !taffo.info !66
  %call.s8_24fixp = call i32 @ex0.1_s8_24fixp(i32 %9, i32 %u1_31fixp, i32 %10), !taffo.info !68, !taffo.constinfo !70, !taffo.target !30
  %11 = sitofp i32 %call.s8_24fixp to float, !taffo.info !68, !taffo.target !30
  %12 = fdiv float %11, 0x4170000000000000, !taffo.info !68, !taffo.target !30
  %idxprom30 = sext i32 %j.0 to i64, !taffo.info !62
  %arrayidx31 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 %idxprom30, !taffo.info !37
  store float %12, float* %arrayidx31, align 4, !taffo.info !47, !taffo.target !30
  br label %for.inc32

for.inc32:                                        ; preds = %for.body23
  %inc33 = add nsw i32 %j.0, 1, !taffo.info !71, !taffo.constinfo !44
  br label %for.cond21, !llvm.loop !73

for.end34:                                        ; preds = %for.cond21
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %inc36 = add nsw i32 %i17.0, 1, !taffo.info !74, !taffo.constinfo !44
  br label %for.cond18, !llvm.loop !76

for.end37:                                        ; preds = %for.cond18
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)), !taffo.constinfo !44
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc46, %for.end37
  %j39.0 = phi i32 [ 0, %for.end37 ], [ %inc47, %for.inc46 ], !taffo.info !39
  %cmp41 = icmp slt i32 %j39.0, 100, !taffo.info !41
  br i1 %cmp41, label %for.body42, label %for.end48

for.body42:                                       ; preds = %for.cond40
  %idxprom43 = sext i32 %j39.0 to i64, !taffo.info !45
  %arrayidx44 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 %idxprom43, !taffo.info !37
  %13 = load float, float* %arrayidx44, align 4, !taffo.info !37
  %conv = fpext float %13 to double, !taffo.info !37
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double %conv), !taffo.constinfo !77
  br label %for.inc46

for.inc46:                                        ; preds = %for.body42
  %inc47 = add nsw i32 %j39.0, 1, !taffo.info !54, !taffo.constinfo !44
  br label %for.cond40, !llvm.loop !78

for.end48:                                        ; preds = %for.cond40
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !44
  ret void
}

declare !taffo.initweight !24 !taffo.funinfo !25 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !79 !taffo.funinfo !79 {
entry:
  %arr = alloca [200 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 200
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 19, !taffo.constinfo !44
  %sub = sub nsw i32 %rem, 9, !taffo.constinfo !44
  %conv = sitofp i32 %sub to float
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 %idxprom
  store float %conv, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !44
  br label %for.cond, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 0
  call void @test(float* %arraydecay), !taffo.constinfo !44
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ex0.1_s8_24fixp(i32 %v.s5_27fixp, i32 %w.u1_31fixp, i32 %r.u6_26fixp) #0 !taffo.initweight !81 !taffo.funinfo !82 !taffo.sourceFunction !83 {
entry:
  %0 = zext i32 %r.u6_26fixp to i64, !taffo.info !66
  %1 = zext i32 %r.u6_26fixp to i64, !taffo.info !66
  %2 = mul i64 %0, %1, !taffo.info !84
  %3 = lshr i64 %2, 26, !taffo.info !84
  %mul.u6_26fixp = trunc i64 %3 to i32, !taffo.info !87
  %4 = zext i32 %mul.u6_26fixp to i64, !taffo.info !87
  %5 = udiv i64 144115188075855872, %4, !taffo.info !88, !taffo.constinfo !91
  %6 = lshr i64 %5, 1, !taffo.info !88, !taffo.constinfo !91
  %div.u3_29fixp = trunc i64 %6 to i32, !taffo.info !94
  %add.u3_29fixp = add i32 1610612736, %div.u3_29fixp, !taffo.info !96, !taffo.constinfo !12
  %7 = sext i32 %v.s5_27fixp to i64, !taffo.info !64
  %8 = mul i64 2, %7, !taffo.info !98, !taffo.constinfo !101
  %mul1.s5_27fixp = trunc i64 %8 to i32, !taffo.info !104
  %9 = shl i32 %mul1.s5_27fixp, 1, !taffo.info !104
  %sub.u4_28fixp = sub i32 805306368, %9, !taffo.info !105, !taffo.constinfo !12
  %10 = zext i32 %sub.u4_28fixp to i64, !taffo.info !105
  %11 = mul i64 1, %10, !taffo.info !107, !taffo.constinfo !110
  %12 = lshr i64 %11, 3, !taffo.info !107, !taffo.constinfo !110
  %mul2.u4_28fixp = trunc i64 %12 to i32, !taffo.info !113
  %13 = zext i32 %w.u1_31fixp to i64, !taffo.info !31
  %14 = zext i32 %w.u1_31fixp to i64, !taffo.info !31
  %15 = mul i64 %13, %14, !taffo.info !114
  %16 = lshr i64 %15, 31, !taffo.info !114
  %mul3.u1_31fixp = trunc i64 %16 to i32, !taffo.info !31
  %17 = zext i32 %mul3.u1_31fixp to i64, !taffo.info !31
  %18 = zext i32 %r.u6_26fixp to i64, !taffo.info !66
  %19 = mul i64 %17, %18, !taffo.info !116
  %20 = lshr i64 %19, 31, !taffo.info !116
  %mul4.u6_26fixp = trunc i64 %20 to i32, !taffo.info !119
  %21 = zext i32 %mul4.u6_26fixp to i64, !taffo.info !119
  %22 = zext i32 %r.u6_26fixp to i64, !taffo.info !66
  %23 = mul i64 %21, %22, !taffo.info !120
  %24 = lshr i64 %23, 27, !taffo.info !120
  %mul5.u7_25fixp = trunc i64 %24 to i32, !taffo.info !122
  %25 = zext i32 %mul2.u4_28fixp to i64, !taffo.info !113
  %26 = zext i32 %mul5.u7_25fixp to i64, !taffo.info !122
  %27 = mul i64 %25, %26, !taffo.info !124
  %28 = lshr i64 %27, 28, !taffo.info !124
  %mul6.u7_25fixp = trunc i64 %28 to i32, !taffo.info !127
  %29 = shl i32 %v.s5_27fixp, 1, !taffo.info !64
  %sub7.s4_28fixp = sub i32 268435456, %29, !taffo.info !128, !taffo.constinfo !18
  %30 = zext i32 %mul6.u7_25fixp to i64, !taffo.info !127
  %31 = shl i64 %30, 28, !taffo.info !127
  %32 = sext i32 %sub7.s4_28fixp to i64, !taffo.info !128
  %33 = sdiv i64 %31, %32, !taffo.info !130
  %34 = ashr i64 %33, 1, !taffo.info !130
  %div8.s8_24fixp = trunc i64 %34 to i32, !taffo.info !132
  %35 = lshr i32 %add.u3_29fixp, 5, !taffo.info !96, !taffo.constinfo !12
  %sub9.s8_24fixp = sub i32 %35, %div8.s8_24fixp, !taffo.info !133
  %sub10.s8_24fixp = sub i32 %sub9.s8_24fixp, 75497472, !taffo.info !68, !taffo.constinfo !21
  ret i32 %sub10.s8_24fixp, !taffo.info !47, !taffo.initweight !135
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!4}
!llvm.ident = !{!5}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.170000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.020000e+02}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!6 = !{i32 -1, i32 -1, i32 -1}
!7 = distinct !{null}
!8 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!9 = !{!10, i1 false}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 2.000000e+00, double 2.000000e+00}
!12 = !{!13, i1 false}
!13 = !{i1 false, !14, i1 false, i2 0}
!14 = !{double 3.000000e+00, double 3.000000e+00}
!15 = !{!16, i1 false}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 1.250000e-01, double 1.250000e-01}
!18 = !{!19, i1 false}
!19 = !{i1 false, !20, i1 false, i2 0}
!20 = !{double 1.000000e+00, double 1.000000e+00}
!21 = !{i1 false, !22}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 4.500000e+00, double 4.500000e+00}
!24 = !{i32 -1}
!25 = !{i32 0, i1 false}
!26 = !{i1 true}
!27 = !{!28, !29, i1 false, i2 -1}
!28 = !{!"fixp", i32 -32, i32 28}
!29 = !{double -5.000000e+00, double 0.000000e+00}
!30 = !{!"main"}
!31 = !{!32, !33, i1 false, i2 -1}
!32 = !{!"fixp", i32 32, i32 31}
!33 = !{double 0.000000e+00, double 1.000000e+00}
!34 = !{!35, !36, i1 false, i2 -1}
!35 = !{!"fixp", i32 32, i32 28}
!36 = !{double 3.800000e+00, double 0x401F333333333333}
!37 = !{i1 false, !38, i1 false, i2 0}
!38 = !{double 0xC05915419124E30B, double 0xBFF5C8AFDDF61270}
!39 = !{i1 false, !40, i1 false, i2 0}
!40 = !{double 0.000000e+00, double 1.010000e+02}
!41 = !{i1 false, !33, i1 false, i2 0}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 0.000000e+00, double 3.000000e+02}
!44 = !{i1 false, i1 false}
!45 = !{i1 false, !46, i1 false, i2 0}
!46 = !{double 0.000000e+00, double 1.000000e+02}
!47 = !{i1 false, !29, i1 false, i2 -1}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 1.000000e+00, double 3.010000e+02}
!50 = !{i1 false, !33, i1 false, i2 -1}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 2.000000e+00, double 3.020000e+02}
!53 = !{i1 false, !36, i1 false, i2 -1}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 1.000000e+00, double 1.010000e+02}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 0.000000e+00, double 2.000000e+00}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 0.000000e+00, double 2.020000e+02}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 2.010000e+02}
!64 = !{!65, !29, i1 false, i2 -1}
!65 = !{!"fixp", i32 -32, i32 27}
!66 = !{!67, !36, i1 false, i2 -1}
!67 = !{!"fixp", i32 32, i32 26}
!68 = !{!69, !38, i1 false, i2 -1}
!69 = !{!"fixp", i32 -32, i32 24}
!70 = !{i1 false, i1 false, i1 false, i1 false}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 1.000000e+00, double 2.020000e+02}
!73 = distinct !{!73, !57}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 1.000000e+00, double 2.000000e+00}
!76 = distinct !{!76, !57}
!77 = !{i1 false, i1 false, i1 false}
!78 = distinct !{!78, !57}
!79 = !{}
!80 = distinct !{!80, !57}
!81 = !{i32 3, i32 3, i32 3}
!82 = !{i32 1, !64, i32 1, !31, i32 1, !66}
!83 = !{float (float, float, float)* @ex0}
!84 = !{!85, !86, i1 false, i2 -1}
!85 = !{!"fixp", i32 64, i32 52}
!86 = !{double 1.444000e+01, double 0x404E6B851EB851EB}
!87 = !{!67, !86, i1 false, i2 -1}
!88 = !{!89, !90, i1 false, i2 -1}
!89 = !{!"fixp", i32 64, i32 30}
!90 = !{double 0x3FA0D4BE86FC20FD, double 0x3FC1BA81104F6C80}
!91 = !{!92, i1 false}
!92 = !{!93, !11, i1 false, i2 0}
!93 = !{!"fixp", i32 64, i32 56}
!94 = !{!95, !90, i1 false, i2 -1}
!95 = !{!"fixp", i32 32, i32 29}
!96 = !{!95, !97, i1 false, i2 -1}
!97 = !{double 0x40084352FA1BF084, double 0x40091BA81104F6C8}
!98 = !{!99, !100, i1 false, i2 -1}
!99 = !{!"fixp", i32 -64, i32 27}
!100 = !{double -1.000000e+01, double 0.000000e+00}
!101 = !{!102, i1 false}
!102 = !{!103, !11, i1 false, i2 0}
!103 = !{!"fixp", i32 32, i32 0}
!104 = !{!65, !100, i1 false, i2 -1}
!105 = !{!35, !106, i1 false, i2 -1}
!106 = !{double 3.000000e+00, double 1.300000e+01}
!107 = !{!108, !109, i1 false, i2 -1}
!108 = !{!"fixp", i32 64, i32 31}
!109 = !{double 3.750000e-01, double 1.625000e+00}
!110 = !{!111, i1 false}
!111 = !{!112, !17, i1 false, i2 0}
!112 = !{!"fixp", i32 32, i32 3}
!113 = !{!35, !109, i1 false, i2 -1}
!114 = !{!115, !33, i1 false, i2 -1}
!115 = !{!"fixp", i32 64, i32 62}
!116 = !{!117, !118, i1 false, i2 -1}
!117 = !{!"fixp", i32 64, i32 57}
!118 = !{double 0.000000e+00, double 0x401F333333333333}
!119 = !{!67, !118, i1 false, i2 -1}
!120 = !{!85, !121, i1 false, i2 -1}
!121 = !{double 0.000000e+00, double 0x404E6B851EB851EB}
!122 = !{!123, !121, i1 false, i2 -1}
!123 = !{!"fixp", i32 32, i32 25}
!124 = !{!125, !126, i1 false, i2 -1}
!125 = !{!"fixp", i32 64, i32 53}
!126 = !{double 0.000000e+00, double 0x4058B75C28F5C28F}
!127 = !{!123, !126, i1 false, i2 -1}
!128 = !{!28, !129, i1 false, i2 -1}
!129 = !{double 1.000000e+00, double 6.000000e+00}
!130 = !{!131, !126, i1 false, i2 -1}
!131 = !{!"fixp", i32 -64, i32 25}
!132 = !{!69, !126, i1 false, i2 -1}
!133 = !{!69, !134, i1 false, i2 -1}
!134 = !{double 0xC057F5419124E30B, double 0x40091BA81104F6C8}
!135 = !{i32 10}
