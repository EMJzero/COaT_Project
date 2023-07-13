; ModuleID = '/tmp/tmp.I0vLe7G6g0/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @ex0(float %t, float %resistance, float %frequency, float %inductance, float %maxVoltage) #0 !taffo.initweight !2 !taffo.equivalentChild !3 !taffo.funinfo !4 {
entry:
  %0 = fmul float 0x41B0000000000000, %maxVoltage
  %1 = fptosi float %0 to i32
  %mul = fmul float 2.000000e+00, 0x400921FB60000000, !taffo.constinfo !5
  %mul2 = fmul float %mul, %frequency
  %mul3 = fmul float %mul2, %inductance
  %mul5 = fmul float %resistance, %resistance
  %2 = fmul float 0x41B0000000000000, %mul3, !taffo.info !10
  %3 = fptosi float %2 to i32, !taffo.info !10
  %4 = fmul float 0x41B0000000000000, %mul3, !taffo.info !10
  %5 = fptosi float %4 to i32, !taffo.info !10
  %6 = sext i32 %3 to i64, !taffo.info !10
  %7 = sext i32 %5 to i64, !taffo.info !10
  %8 = mul i64 %6, %7, !taffo.info !13
  %9 = ashr i64 %8, 28, !taffo.info !13
  %mul6.s4_28fixp = trunc i64 %9 to i32, !taffo.info !10
  %10 = fmul float 0x41B0000000000000, %mul5, !taffo.info !10
  %11 = fptosi float %10 to i32, !taffo.info !10
  %add.s4_28fixp = add i32 %11, %mul6.s4_28fixp, !taffo.info !10
  %mul7 = fmul float %maxVoltage, %resistance
  %12 = fmul float 0x41B0000000000000, %mul3, !taffo.info !10
  %13 = fptosi float %12 to i32, !taffo.info !10
  %14 = sext i32 %1 to i64
  %15 = sext i32 %13 to i64, !taffo.info !10
  %16 = mul i64 %14, %15, !taffo.info !13
  %17 = ashr i64 %16, 28, !taffo.info !13
  %mul8.s4_28fixp = trunc i64 %17 to i32, !taffo.info !10
  %18 = sitofp i32 %mul8.s4_28fixp to float, !taffo.info !10
  %19 = fdiv float %18, 0x41B0000000000000, !taffo.info !10
  %fneg = fneg float %19
  %20 = fmul float 5.242880e+05, %mul7, !taffo.info !15
  %21 = fptosi float %20 to i32, !taffo.info !15
  %22 = sext i32 %21 to i64, !taffo.info !15
  %23 = shl i64 %22, 28, !taffo.info !15
  %24 = sext i32 %add.s4_28fixp to i64, !taffo.info !10
  %25 = sdiv i64 %23, %24, !taffo.info !18
  %div.s13_19fixp = trunc i64 %25 to i32, !taffo.info !15
  %26 = sitofp i32 %div.s13_19fixp to float, !taffo.info !15
  %27 = fdiv float %26, 5.242880e+05, !taffo.info !15
  %28 = sitofp i32 %div.s13_19fixp to float, !taffo.info !15
  %29 = fdiv float %28, 5.242880e+05, !taffo.info !15
  %30 = sitofp i32 %div.s13_19fixp to float, !taffo.info !15
  %31 = fdiv float %30, 5.242880e+05, !taffo.info !15
  %32 = fmul float 5.242880e+05, %fneg, !taffo.info !15
  %33 = fptosi float %32 to i32, !taffo.info !15
  %34 = sext i32 %33 to i64, !taffo.info !15
  %35 = shl i64 %34, 28, !taffo.info !15
  %36 = sext i32 %add.s4_28fixp to i64, !taffo.info !10
  %37 = sdiv i64 %35, %36, !taffo.info !18
  %div9.s13_19fixp = trunc i64 %37 to i32, !taffo.info !15
  %38 = sitofp i32 %div9.s13_19fixp to float, !taffo.info !15
  %39 = fdiv float %38, 5.242880e+05, !taffo.info !15
  %40 = sitofp i32 %div9.s13_19fixp to float, !taffo.info !15
  %41 = fdiv float %40, 5.242880e+05, !taffo.info !15
  %42 = sitofp i32 %div9.s13_19fixp to float, !taffo.info !15
  %43 = fdiv float %42, 5.242880e+05, !taffo.info !15
  %mul11 = fmul float %31, %29
  %mul12 = fmul float %41, %39
  %add13 = fadd float %mul11, %mul12
  %conv = fpext float %add13 to double
  %call = call double @sqrt(double %conv) #2, !taffo.constinfo !20
  %conv14 = fptrunc double %call to float
  %div16 = fdiv float %43, %27
  %conv17 = fpext float %div16 to double
  %call18 = call double @atan(double %conv17) #2, !taffo.constinfo !20
  %mul20 = fmul float 2.000000e+00, 0x400921FB60000000, !taffo.constinfo !5
  %mul21 = fmul float %mul20, %frequency
  %mul22 = fmul float %mul21, %t
  %conv25 = fpext float %mul22 to double, !taffo.initweight !21, !taffo.info !22
  %call26 = call double @cos(double %conv25) #2, !taffo.initweight !23, !taffo.constinfo !20, !taffo.info !22
  %conv27 = fptrunc double %call26 to float, !taffo.initweight !24, !taffo.info !22
  %mul30 = fmul float %conv14, %conv27, !taffo.initweight !21, !taffo.info !22
  ret float %mul30, !taffo.initweight !21, !taffo.info !22
}

; Function Attrs: nounwind
declare !taffo.initweight !25 !taffo.funinfo !26 dso_local double @sqrt(double) #1

; Function Attrs: nounwind
declare !taffo.initweight !25 !taffo.funinfo !26 dso_local double @atan(double) #1

; Function Attrs: nounwind
declare !taffo.initweight !25 !taffo.funinfo !26 dso_local double @cos(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test(float* %arr, float* %res) #0 !taffo.initweight !27 !taffo.funinfo !28 !taffo.start !29 {
entry:
  %t.s10_22fixp = alloca [100 x i32], align 16, !taffo.info !30, !taffo.target !33
  %resistance.s7_25fixp = alloca [100 x i32], align 16, !taffo.info !34
  %frequency.s8_24fixp = alloca [100 x i32], align 16, !taffo.info !37
  %inductance.s3_29fixp = alloca [100 x i32], align 16, !taffo.info !40
  %maxVoltage.s5_27fixp = alloca [100 x i32], align 16, !taffo.info !43
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !46
  %cmp = icmp slt i32 %i.0, 100, !taffo.info !48
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 5, !taffo.constinfo !20, !taffo.info !50
  %idxprom = sext i32 %mul to i64, !taffo.info !50
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %1 = fmul float 0x4150000000000000, %0, !taffo.info !52
  %2 = fptosi float %1 to i32, !taffo.info !52
  %idxprom6 = sext i32 %i.0 to i64, !taffo.info !52
  %arrayidx7.s10_22fixp = getelementptr inbounds [100 x i32], [100 x i32]* %t.s10_22fixp, i64 0, i64 %idxprom6, !taffo.info !30, !taffo.target !33
  store i32 %2, i32* %arrayidx7.s10_22fixp, align 4, !taffo.info !54, !taffo.target !33
  %mul8 = mul nsw i32 %i.0, 5, !taffo.constinfo !20, !taffo.info !50
  %add = add nsw i32 %mul8, 1, !taffo.constinfo !20, !taffo.info !55
  %idxprom9 = sext i32 %add to i64, !taffo.info !55
  %arrayidx10 = getelementptr inbounds float, float* %arr, i64 %idxprom9
  %3 = load float, float* %arrayidx10, align 4
  %4 = fmul float 0x4180000000000000, %3, !taffo.info !52
  %5 = fptosi float %4 to i32, !taffo.info !52
  %idxprom11 = sext i32 %i.0 to i64, !taffo.info !52
  %arrayidx12.s7_25fixp = getelementptr inbounds [100 x i32], [100 x i32]* %resistance.s7_25fixp, i64 0, i64 %idxprom11, !taffo.info !34
  store i32 %5, i32* %arrayidx12.s7_25fixp, align 4, !taffo.info !57
  %mul13 = mul nsw i32 %i.0, 5, !taffo.constinfo !20, !taffo.info !50
  %add14 = add nsw i32 %mul13, 2, !taffo.constinfo !20, !taffo.info !58
  %idxprom15 = sext i32 %add14 to i64, !taffo.info !58
  %arrayidx16 = getelementptr inbounds float, float* %arr, i64 %idxprom15
  %6 = load float, float* %arrayidx16, align 4
  %7 = fmul float 0x4170000000000000, %6, !taffo.info !52
  %8 = fptosi float %7 to i32, !taffo.info !52
  %idxprom17 = sext i32 %i.0 to i64, !taffo.info !52
  %arrayidx18.s8_24fixp = getelementptr inbounds [100 x i32], [100 x i32]* %frequency.s8_24fixp, i64 0, i64 %idxprom17, !taffo.info !37
  store i32 %8, i32* %arrayidx18.s8_24fixp, align 4, !taffo.info !60
  %mul19 = mul nsw i32 %i.0, 5, !taffo.constinfo !20, !taffo.info !50
  %add20 = add nsw i32 %mul19, 3, !taffo.constinfo !20, !taffo.info !61
  %idxprom21 = sext i32 %add20 to i64, !taffo.info !61
  %arrayidx22 = getelementptr inbounds float, float* %arr, i64 %idxprom21
  %9 = load float, float* %arrayidx22, align 4
  %10 = fmul float 0x41C0000000000000, %9, !taffo.info !52
  %11 = fptosi float %10 to i32, !taffo.info !52
  %idxprom23 = sext i32 %i.0 to i64, !taffo.info !52
  %arrayidx24.s3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %inductance.s3_29fixp, i64 0, i64 %idxprom23, !taffo.info !40
  store i32 %11, i32* %arrayidx24.s3_29fixp, align 4, !taffo.info !63
  %mul25 = mul nsw i32 %i.0, 5, !taffo.constinfo !20, !taffo.info !50
  %add26 = add nsw i32 %mul25, 4, !taffo.constinfo !20, !taffo.info !64
  %idxprom27 = sext i32 %add26 to i64, !taffo.info !64
  %arrayidx28 = getelementptr inbounds float, float* %arr, i64 %idxprom27
  %12 = load float, float* %arrayidx28, align 4
  %13 = fmul float 0x41A0000000000000, %12, !taffo.info !52
  %14 = fptosi float %13 to i32, !taffo.info !52
  %idxprom29 = sext i32 %i.0 to i64, !taffo.info !52
  %arrayidx30.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %maxVoltage.s5_27fixp, i64 0, i64 %idxprom29, !taffo.info !43
  store i32 %14, i32* %arrayidx30.s5_27fixp, align 4, !taffo.info !66
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !20, !taffo.info !67
  br label %for.cond, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc53, %for.end
  %i31.0 = phi i32 [ 0, %for.end ], [ %inc54, %for.inc53 ], !taffo.info !46
  %cmp33 = icmp slt i32 %i31.0, 100, !taffo.info !48
  br i1 %cmp33, label %for.body34, label %for.end55

for.body34:                                       ; preds = %for.cond32
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc50, %for.body34
  %j.0 = phi i32 [ 0, %for.body34 ], [ %inc51, %for.inc50 ], !taffo.info !71
  %cmp36 = icmp slt i32 %j.0, 100, !taffo.info !48
  br i1 %cmp36, label %for.body37, label %for.end52

for.body37:                                       ; preds = %for.cond35
  %idxprom38 = sext i32 %j.0 to i64, !taffo.info !73
  %arrayidx39.s10_22fixp = getelementptr inbounds [100 x i32], [100 x i32]* %t.s10_22fixp, i64 0, i64 %idxprom38, !taffo.info !30, !taffo.target !33
  %s10_22fixp = load i32, i32* %arrayidx39.s10_22fixp, align 4, !taffo.info !30, !taffo.target !33
  %idxprom40 = sext i32 %j.0 to i64, !taffo.info !73
  %arrayidx41.s7_25fixp = getelementptr inbounds [100 x i32], [100 x i32]* %resistance.s7_25fixp, i64 0, i64 %idxprom40, !taffo.info !34
  %s7_25fixp = load i32, i32* %arrayidx41.s7_25fixp, align 4, !taffo.info !34
  %idxprom42 = sext i32 %j.0 to i64, !taffo.info !73
  %arrayidx43.s8_24fixp = getelementptr inbounds [100 x i32], [100 x i32]* %frequency.s8_24fixp, i64 0, i64 %idxprom42, !taffo.info !37
  %s8_24fixp = load i32, i32* %arrayidx43.s8_24fixp, align 4, !taffo.info !37
  %idxprom44 = sext i32 %j.0 to i64, !taffo.info !73
  %arrayidx45.s3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %inductance.s3_29fixp, i64 0, i64 %idxprom44, !taffo.info !40
  %s3_29fixp = load i32, i32* %arrayidx45.s3_29fixp, align 4, !taffo.info !40
  %idxprom46 = sext i32 %j.0 to i64, !taffo.info !73
  %arrayidx47.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %maxVoltage.s5_27fixp, i64 0, i64 %idxprom46, !taffo.info !43
  %s5_27fixp = load i32, i32* %arrayidx47.s5_27fixp, align 4, !taffo.info !43
  %call.s13_19fixp = call i32 @ex0.1_s13_19fixp(i32 %s10_22fixp, i32 %s7_25fixp, i32 %s8_24fixp, i32 %s3_29fixp, i32 %s5_27fixp), !taffo.constinfo !75, !taffo.info !76, !taffo.target !33
  %15 = sitofp i32 %call.s13_19fixp to float, !taffo.info !76, !taffo.target !33
  %16 = fdiv float %15, 5.242880e+05, !taffo.info !76, !taffo.target !33
  %idxprom48 = sext i32 %j.0 to i64, !taffo.info !73
  %arrayidx49 = getelementptr inbounds float, float* %res, i64 %idxprom48
  store float %16, float* %arrayidx49, align 4, !taffo.info !54, !taffo.target !33
  br label %for.inc50

for.inc50:                                        ; preds = %for.body37
  %inc51 = add nsw i32 %j.0, 1, !taffo.constinfo !20, !taffo.info !78
  br label %for.cond35, !llvm.loop !80

for.end52:                                        ; preds = %for.cond35
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %inc54 = add nsw i32 %i31.0, 1, !taffo.constinfo !20, !taffo.info !67
  br label %for.cond32, !llvm.loop !81

for.end55:                                        ; preds = %for.cond32
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !82 !taffo.funinfo !82 {
entry:
  %arr = alloca [500 x float], align 16
  %res = alloca [500 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 500
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 32, !taffo.constinfo !20
  %conv = sitofp i32 %rem to float
  %add = fadd float %conv, 0x3FCD70A3E0000000, !taffo.constinfo !83
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [500 x float], [500 x float]* %arr, i64 0, i64 %idxprom
  store float %add, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !20
  br label %for.cond, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [500 x float], [500 x float]* %arr, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [500 x float], [500 x float]* %res, i64 0, i64 0
  %call = call i32 @test(float* %arraydecay, float* %arraydecay1), !taffo.constinfo !87
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ex0.1_s13_19fixp(i32 %t.s10_22fixp, i32 %resistance.s7_25fixp, i32 %frequency.s8_24fixp, i32 %inductance.s3_29fixp, i32 %maxVoltage.s5_27fixp) #0 !taffo.initweight !88 !taffo.funinfo !89 !taffo.sourceFunction !90 {
entry:
  %0 = sitofp i32 %resistance.s7_25fixp to float, !taffo.info !34
  %1 = fdiv float %0, 0x4180000000000000, !taffo.info !34
  %2 = sitofp i32 %resistance.s7_25fixp to float, !taffo.info !34
  %3 = fdiv float %2, 0x4180000000000000, !taffo.info !34
  %mul = fmul float 2.000000e+00, 0x400921FB60000000, !taffo.constinfo !5, !taffo.info !91
  %4 = fmul float 0x41C0000000000000, %mul, !taffo.constinfo !5, !taffo.info !91
  %5 = fptoui float %4 to i32, !taffo.info !91
  %6 = zext i32 %5 to i64, !taffo.info !91
  %7 = sext i32 %frequency.s8_24fixp to i64, !taffo.info !37
  %8 = mul i64 %6, %7, !taffo.info !93
  %9 = ashr i64 %8, 33, !taffo.info !93
  %mul2.s12_20fixp = trunc i64 %9 to i32, !taffo.info !96
  %10 = sext i32 %mul2.s12_20fixp to i64, !taffo.info !96
  %11 = sext i32 %inductance.s3_29fixp to i64, !taffo.info !40
  %12 = mul i64 %10, %11, !taffo.info !98
  %13 = ashr i64 %12, 29, !taffo.info !98
  %mul3.s12_20fixp = trunc i64 %13 to i32, !taffo.info !101
  %mul5 = fmul float %3, %1, !taffo.info !102
  %14 = sext i32 %mul3.s12_20fixp to i64, !taffo.info !101
  %15 = sext i32 %mul3.s12_20fixp to i64, !taffo.info !101
  %16 = mul i64 %14, %15, !taffo.info !104
  %17 = ashr i64 %16, 12, !taffo.info !104
  %mul6.s4_28fixp = trunc i64 %17 to i32, !taffo.info !10
  %18 = fmul float 0x4130000000000000, %mul5, !taffo.info !102
  %19 = fptoui float %18 to i32, !taffo.info !102
  %20 = lshr i32 %19, 1, !taffo.info !102
  %21 = ashr i32 %mul6.s4_28fixp, 9, !taffo.info !10
  %add.s13_19fixp = add i32 %20, %21, !taffo.info !106
  %22 = sext i32 %maxVoltage.s5_27fixp to i64, !taffo.info !43
  %23 = sext i32 %resistance.s7_25fixp to i64, !taffo.info !34
  %24 = mul i64 %22, %23, !taffo.info !108
  %25 = ashr i64 %24, 33, !taffo.info !108
  %mul7.s13_19fixp = trunc i64 %25 to i32, !taffo.info !111
  %26 = sext i32 %maxVoltage.s5_27fixp to i64, !taffo.info !43
  %27 = sext i32 %mul3.s12_20fixp to i64, !taffo.info !101
  %28 = mul i64 %26, %27, !taffo.info !112
  %29 = ashr i64 %28, 20, !taffo.info !112
  %mul8.s5_27fixp = trunc i64 %29 to i32, !taffo.info !114
  %30 = sitofp i32 %mul8.s5_27fixp to float, !taffo.info !114
  %31 = fdiv float %30, 0x41A0000000000000, !taffo.info !114
  %fneg = fneg float %31, !taffo.info !115
  %32 = sext i32 %mul7.s13_19fixp to i64, !taffo.info !111
  %33 = shl i64 %32, 19, !taffo.info !111
  %34 = sext i32 %add.s13_19fixp to i64, !taffo.info !106
  %35 = sdiv i64 %33, %34, !taffo.info !18
  %div.s13_19fixp = trunc i64 %35 to i32, !taffo.info !15
  %36 = sitofp i32 %div.s13_19fixp to float, !taffo.info !15
  %37 = fdiv float %36, 5.242880e+05, !taffo.info !15
  %38 = sitofp i32 %div.s13_19fixp to float, !taffo.info !15
  %39 = fdiv float %38, 5.242880e+05, !taffo.info !15
  %40 = sitofp i32 %div.s13_19fixp to float, !taffo.info !15
  %41 = fdiv float %40, 5.242880e+05, !taffo.info !15
  %42 = fmul float 0x41B0000000000000, %fneg, !taffo.info !115
  %43 = fptosi float %42 to i32, !taffo.info !115
  %44 = sext i32 %43 to i64, !taffo.info !115
  %45 = shl i64 %44, 19, !taffo.info !115
  %46 = sext i32 %add.s13_19fixp to i64, !taffo.info !106
  %47 = sdiv i64 %45, %46, !taffo.info !117
  %48 = ashr i64 %47, 9, !taffo.info !117
  %div9.s13_19fixp = trunc i64 %48 to i32, !taffo.info !15
  %49 = sitofp i32 %div9.s13_19fixp to float, !taffo.info !15
  %50 = fdiv float %49, 5.242880e+05, !taffo.info !15
  %51 = sitofp i32 %div9.s13_19fixp to float, !taffo.info !15
  %52 = fdiv float %51, 5.242880e+05, !taffo.info !15
  %53 = sitofp i32 %div9.s13_19fixp to float, !taffo.info !15
  %54 = fdiv float %53, 5.242880e+05, !taffo.info !15
  %mul11 = fmul float %39, %37, !taffo.info !119
  %mul12 = fmul float %54, %52, !taffo.info !119
  %add13 = fadd float %mul11, %mul12, !taffo.info !121
  %conv = fpext float %add13 to double, !taffo.info !121
  %call = call double @sqrt(double %conv) #2, !taffo.constinfo !20, !taffo.info !123
  %conv14 = fptrunc double %call to float, !taffo.info !125
  %div16 = fdiv float %50, %41, !taffo.info !127
  %conv17 = fpext float %div16 to double, !taffo.info !127
  %call18 = call double @atan(double %conv17) #2, !taffo.constinfo !20
  %mul20 = fmul float 2.000000e+00, 0x400921FB60000000, !taffo.constinfo !5, !taffo.info !91
  %55 = fmul float 0x41C0000000000000, %mul20, !taffo.constinfo !5, !taffo.info !91
  %56 = fptoui float %55 to i32, !taffo.info !91
  %57 = zext i32 %56 to i64, !taffo.info !91
  %58 = sext i32 %frequency.s8_24fixp to i64, !taffo.info !37
  %59 = mul i64 %57, %58, !taffo.info !93
  %60 = ashr i64 %59, 32, !taffo.info !93
  %mul21.s11_21fixp = trunc i64 %60 to i32, !taffo.info !129
  %61 = sext i32 %mul21.s11_21fixp to i64, !taffo.info !129
  %62 = sext i32 %t.s10_22fixp to i64, !taffo.info !30
  %63 = mul i64 %61, %62, !taffo.info !131
  %64 = ashr i64 %63, 30, !taffo.info !131
  %mul22.s19_13fixp = trunc i64 %64 to i32, !taffo.info !134
  %65 = sitofp i32 %mul22.s19_13fixp to double, !taffo.info !134
  %66 = fdiv double %65, 8.192000e+03, !taffo.info !134
  %call26.flt = call double @cos(double %66) #2, !taffo.initweight !23, !taffo.constinfo !20, !taffo.info !136
  %67 = fmul double 0x41D0000000000000, %call26.flt, !taffo.constinfo !20, !taffo.info !136
  %call26.flt.fallback.s2_30fixp = fptosi double %67 to i32, !taffo.info !136
  %68 = fmul float 0x4130000000000000, %conv14, !taffo.info !125
  %69 = fptoui float %68 to i32, !taffo.info !125
  %70 = zext i32 %69 to i64, !taffo.info !125
  %71 = sext i32 %call26.flt.fallback.s2_30fixp to i64, !taffo.info !136
  %72 = mul i64 %70, %71, !taffo.info !139
  %73 = ashr i64 %72, 31, !taffo.info !139
  %mul30.s13_19fixp = trunc i64 %73 to i32, !taffo.info !141
  ret i32 %mul30.s13_19fixp, !taffo.initweight !21, !taffo.info !22
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!2 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!3 = distinct !{null}
!4 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!5 = !{!6, !8}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 2.000000e+00, double 2.000000e+00}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0x400921FB60000000, double 0x400921FB60000000}
!10 = !{!11, !12, i1 false, i2 -1}
!11 = !{!"fixp", i32 -32, i32 28}
!12 = !{double -1.000000e+00, double 4.000000e+00}
!13 = !{!14, !12, i1 false, i2 -1}
!14 = !{!"fixp", i32 -64, i32 56}
!15 = !{!16, !17, i1 false, i2 -1}
!16 = !{!"fixp", i32 -32, i32 19}
!17 = !{double -1.000000e+00, double 2.503000e+03}
!18 = !{!19, !17, i1 false, i2 -1}
!19 = !{!"fixp", i32 -64, i32 19}
!20 = !{i1 false, i1 false}
!21 = !{i32 2}
!22 = !{i1 false, i1 false, i1 false, i2 1}
!23 = !{i32 3}
!24 = !{i32 4}
!25 = !{i32 -1}
!26 = !{i32 0, i1 false}
!27 = !{i32 -1, i32 -1}
!28 = !{i32 0, i1 false, i32 0, i1 false}
!29 = !{i1 true}
!30 = !{!31, !32, i1 false, i2 -1}
!31 = !{!"fixp", i32 -32, i32 22}
!32 = !{double -2.000000e+00, double 3.000000e+02}
!33 = !{!"main"}
!34 = !{!35, !36, i1 false, i2 -1}
!35 = !{!"fixp", i32 -32, i32 25}
!36 = !{double -1.000000e+01, double 5.000000e+01}
!37 = !{!38, !39, i1 false, i2 -1}
!38 = !{!"fixp", i32 -32, i32 24}
!39 = !{double -1.000000e+01, double 1.000000e+02}
!40 = !{!41, !42, i1 false, i2 -1}
!41 = !{!"fixp", i32 -32, i32 29}
!42 = !{double -2.000000e+00, double 2.000000e+00}
!43 = !{!44, !45, i1 false, i2 -1}
!44 = !{!"fixp", i32 -32, i32 27}
!45 = !{double -2.000000e+00, double 1.200000e+01}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 0.000000e+00, double 1.010000e+02}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 0.000000e+00, double 1.000000e+00}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 0.000000e+00, double 5.000000e+02}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 0.000000e+00, double 1.000000e+02}
!54 = !{i1 false, !32, i1 false, i2 -1}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 1.000000e+00, double 5.010000e+02}
!57 = !{i1 false, !36, i1 false, i2 -1}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 2.000000e+00, double 5.020000e+02}
!60 = !{i1 false, !39, i1 false, i2 -1}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 3.000000e+00, double 5.030000e+02}
!63 = !{i1 false, !42, i1 false, i2 -1}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 4.000000e+00, double 5.040000e+02}
!66 = !{i1 false, !45, i1 false, i2 -1}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 1.000000e+00, double 1.010000e+02}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 0.000000e+00, double 1.020100e+04}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 0.000000e+00, double 1.020000e+04}
!75 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!76 = !{!16, !77, i1 false, i2 -1}
!77 = !{double 0xC0ABA78DA0000000, double 0x40ABA78DA0000000}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.000000e+00, double 1.020100e+04}
!80 = distinct !{!80, !70}
!81 = distinct !{!81, !70}
!82 = !{}
!83 = !{i1 false, !84}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 0x3FCD70A3E0000000, double 0x3FCD70A3E0000000}
!86 = distinct !{!86, !70}
!87 = !{i1 false, i1 false, i1 false}
!88 = !{i32 3, i32 3, i32 3, i32 3, i32 3}
!89 = !{i32 1, !30, i32 1, !34, i32 1, !37, i32 1, !40, i32 1, !43}
!90 = !{float (float, float, float, float, float)* @ex0}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 0x401921FB60000000, double 0x401921FB60000000}
!93 = !{!94, !95, i1 false, i2 -1}
!94 = !{!"fixp", i32 -64, i32 53}
!95 = !{double 0xC04F6A7A38000000, double 0x4083A28C63000000}
!96 = !{!97, !95, i1 false, i2 -1}
!97 = !{!"fixp", i32 -32, i32 20}
!98 = !{!99, !100, i1 false, i2 -1}
!99 = !{!"fixp", i32 -64, i32 49}
!100 = !{double 0xC093A28C63000000, double 0x4093A28C63000000}
!101 = !{!97, !100, i1 false, i2 -1}
!102 = !{i1 false, !103, i1 false, i2 0}
!103 = !{double 0.000000e+00, double 2.500000e+03}
!104 = !{!105, !12, i1 false, i2 -1}
!105 = !{!"fixp", i32 -64, i32 40}
!106 = !{!16, !107, i1 false, i2 -1}
!107 = !{double -1.000000e+00, double 2.504000e+03}
!108 = !{!109, !110, i1 false, i2 -1}
!109 = !{!"fixp", i32 -64, i32 52}
!110 = !{double -1.200000e+02, double 6.000000e+02}
!111 = !{!16, !110, i1 false, i2 -1}
!112 = !{!113, !12, i1 false, i2 -1}
!113 = !{!"fixp", i32 -64, i32 47}
!114 = !{!44, !12, i1 false, i2 -1}
!115 = !{i1 false, !116, i1 false, i2 0}
!116 = !{double -4.000000e+00, double 1.000000e+00}
!117 = !{!118, !17, i1 false, i2 -1}
!118 = !{!"fixp", i32 -64, i32 28}
!119 = !{i1 false, !120, i1 false, i2 0}
!120 = !{double 0.000000e+00, double 0x4157E62C40000000}
!121 = !{i1 false, !122, i1 false, i2 0}
!122 = !{double 0.000000e+00, double 0x4167E62C40000000}
!123 = !{i1 false, !124, i1 false, i2 0}
!124 = !{double 0.000000e+00, double 0x40ABA78D9784C036}
!125 = !{i1 false, !126, i1 false, i2 0}
!126 = !{double 0.000000e+00, double 0x40ABA78DA0000000}
!127 = !{i1 false, !128, i1 false, i2 0}
!128 = !{double -2.503000e+11, double 2.503000e+11}
!129 = !{!130, !95, i1 false, i2 -1}
!130 = !{!"fixp", i32 -32, i32 21}
!131 = !{!132, !133, i1 false, i2 -1}
!132 = !{!"fixp", i32 -64, i32 43}
!133 = !{double 0xC0D268639CD00000, double 0x4107027C84040000}
!134 = !{!135, !133, i1 false, i2 1}
!135 = !{!"fixp", i32 -32, i32 13}
!136 = !{!137, !138, i1 false, i2 1}
!137 = !{!"fixp", i32 -32, i32 30}
!138 = !{double -1.000000e+00, double 1.000000e+00}
!139 = !{!140, !77, i1 false, i2 1}
!140 = !{!"fixp", i32 -64, i32 50}
!141 = !{!16, !77, i1 false, i2 1}
