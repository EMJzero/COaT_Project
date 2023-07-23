; ModuleID = '/tmp/tmp.TYXq4Hn8RD/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local float @ex0(float noundef %t, float noundef %resistance, float noundef %frequency, float noundef %inductance, float noundef %maxVoltage) #0 !taffo.initweight !6 !taffo.equivalentChild !7 !taffo.funinfo !8 {
entry:
  %0 = fmul float 0x41B0000000000000, %resistance
  %1 = fptosi float %0 to i32
  %2 = fmul float 0x41B0000000000000, %resistance
  %3 = fptosi float %2 to i32
  %4 = fmul float 0x41B0000000000000, %maxVoltage
  %5 = fptosi float %4 to i32
  %6 = fmul float 0x41B0000000000000, %inductance
  %7 = fptosi float %6 to i32
  %mul = fmul float 2.000000e+00, 0x400921FB60000000, !taffo.constinfo !9
  %mul2 = fmul float %mul, %frequency
  %8 = fmul float 0x41B0000000000000, %mul2, !taffo.info !14
  %9 = fptosi float %8 to i32, !taffo.info !14
  %10 = sext i32 %9 to i64, !taffo.info !14
  %11 = sext i32 %7 to i64
  %12 = mul i64 %10, %11, !taffo.info !17
  %13 = ashr i64 %12, 28, !taffo.info !17
  %mul3.s4_28fixp = trunc i64 %13 to i32, !taffo.info !14
  %14 = sext i32 %mul3.s4_28fixp to i64, !taffo.info !14
  %15 = sext i32 %mul3.s4_28fixp to i64, !taffo.info !14
  %16 = mul i64 %14, %15, !taffo.info !17
  %17 = ashr i64 %16, 28, !taffo.info !17
  %mul6.s4_28fixp = trunc i64 %17 to i32, !taffo.info !14
  %18 = sext i32 %3 to i64
  %19 = sext i32 %1 to i64
  %20 = mul i64 %18, %19, !taffo.info !17
  %21 = ashr i64 %20, 28
  %22 = trunc i64 %21 to i32
  %s4_28fixp = add i32 %22, %mul6.s4_28fixp, !taffo.info !14
  %mul7 = fmul float %maxVoltage, %resistance
  %23 = sext i32 %5 to i64
  %24 = sext i32 %mul3.s4_28fixp to i64, !taffo.info !14
  %25 = mul i64 %23, %24, !taffo.info !17
  %26 = ashr i64 %25, 28, !taffo.info !17
  %mul8.s4_28fixp = trunc i64 %26 to i32, !taffo.info !14
  %27 = sitofp i32 %mul8.s4_28fixp to float, !taffo.info !14
  %28 = fdiv float %27, 0x41B0000000000000, !taffo.info !14
  %fneg = fneg float %28
  %29 = fmul float 5.242880e+05, %mul7, !taffo.info !19
  %30 = fptosi float %29 to i32, !taffo.info !19
  %31 = sext i32 %30 to i64, !taffo.info !19
  %32 = shl i64 %31, 28, !taffo.info !19
  %33 = sext i32 %s4_28fixp to i64, !taffo.info !14
  %34 = sdiv i64 %32, %33, !taffo.info !22
  %div.s13_19fixp = trunc i64 %34 to i32, !taffo.info !19
  %35 = sitofp i32 %div.s13_19fixp to float, !taffo.info !19
  %36 = fdiv float %35, 5.242880e+05, !taffo.info !19
  %37 = sitofp i32 %div.s13_19fixp to float, !taffo.info !19
  %38 = fdiv float %37, 5.242880e+05, !taffo.info !19
  %39 = sitofp i32 %div.s13_19fixp to float, !taffo.info !19
  %40 = fdiv float %39, 5.242880e+05, !taffo.info !19
  %41 = fmul float 5.242880e+05, %fneg, !taffo.info !19
  %42 = fptosi float %41 to i32, !taffo.info !19
  %43 = sext i32 %42 to i64, !taffo.info !19
  %44 = shl i64 %43, 28, !taffo.info !19
  %45 = sext i32 %s4_28fixp to i64, !taffo.info !14
  %46 = sdiv i64 %44, %45, !taffo.info !22
  %div9.s13_19fixp = trunc i64 %46 to i32, !taffo.info !19
  %47 = sitofp i32 %div9.s13_19fixp to float, !taffo.info !19
  %48 = fdiv float %47, 5.242880e+05, !taffo.info !19
  %49 = sitofp i32 %div9.s13_19fixp to float, !taffo.info !19
  %50 = fdiv float %49, 5.242880e+05, !taffo.info !19
  %51 = sitofp i32 %div9.s13_19fixp to float, !taffo.info !19
  %52 = fdiv float %51, 5.242880e+05, !taffo.info !19
  %mul12 = fmul float %52, %50
  %53 = call float @llvm.fmuladd.f32(float %38, float %36, float %mul12), !taffo.constinfo !24
  %conv = fpext float %53 to double
  %call = call double @sqrt(double noundef %conv) #3, !taffo.constinfo !25
  %54 = fmul double 0x41A0000000000000, %call, !taffo.constinfo !25, !taffo.info !26
  %conv13.s5_27fixp = fptosi double %54 to i32, !taffo.info !26
  %div15 = fdiv float %48, %40
  %conv16 = fpext float %div15 to double
  %call17 = call double @atan(double noundef %conv16) #3, !taffo.constinfo !25
  %mul19 = fmul float 2.000000e+00, 0x400921FB60000000, !taffo.constinfo !9
  %mul20 = fmul float %mul19, %frequency
  %mul21 = fmul float %mul20, %t
  %conv24 = fpext float %mul21 to double, !taffo.initweight !29, !taffo.info !30
  %call25 = call double @cos(double noundef %conv24) #3, !taffo.initweight !31, !taffo.constinfo !25, !taffo.info !30
  %conv26 = fptrunc double %call25 to float, !taffo.initweight !32, !taffo.info !30
  %55 = fmul float 0x41A0000000000000, %conv26, !taffo.info !30
  %56 = fptosi float %55 to i32, !taffo.info !30
  %57 = sext i32 %conv13.s5_27fixp to i64, !taffo.info !26
  %58 = sext i32 %56 to i64, !taffo.info !30
  %59 = mul i64 %57, %58, !taffo.info !33
  %60 = ashr i64 %59, 27, !taffo.info !33
  %mul29.s5_27fixp = trunc i64 %60 to i32, !taffo.info !35
  %61 = sitofp i32 %mul29.s5_27fixp to float, !taffo.info !35
  %62 = fdiv float %61, 0x41A0000000000000, !taffo.info !35
  ret float %62, !taffo.initweight !29, !taffo.info !30
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare !taffo.initweight !36 !taffo.funinfo !37 float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nounwind
declare !taffo.initweight !38 !taffo.funinfo !39 double @sqrt(double noundef) #2

; Function Attrs: nounwind
declare !taffo.initweight !38 !taffo.funinfo !39 double @atan(double noundef) #2

; Function Attrs: nounwind
declare !taffo.initweight !38 !taffo.funinfo !39 double @cos(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(float* noundef %arr, float* noundef %res) #0 !taffo.initweight !40 !taffo.funinfo !41 !taffo.start !42 {
entry:
  %t.s10_22fixp = alloca [100 x i32], align 16, !taffo.info !43, !taffo.target !46
  %resistance.s7_25fixp = alloca [100 x i32], align 16, !taffo.info !47
  %frequency.s8_24fixp = alloca [100 x i32], align 16, !taffo.info !50
  %inductance.s3_29fixp = alloca [100 x i32], align 16, !taffo.info !53
  %maxVoltage.s5_27fixp = alloca [100 x i32], align 16, !taffo.info !56
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !58
  %cmp = icmp slt i32 %i.0, 100, !taffo.info !60
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 5, !taffo.constinfo !25, !taffo.info !62
  %idxprom = sext i32 %mul to i64, !taffo.info !62
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %.flt2 = load float, float* %arrayidx, align 4, !taffo.initweight !31, !taffo.info !43, !taffo.target !46
  %0 = fmul float 0x4150000000000000, %.flt2, !taffo.info !43, !taffo.target !46
  %.flt2.fallback.s10_22fixp = fptosi float %0 to i32, !taffo.info !43, !taffo.target !46
  %idxprom6 = sext i32 %i.0 to i64, !taffo.info !64
  %arrayidx7.s10_22fixp = getelementptr inbounds [100 x i32], [100 x i32]* %t.s10_22fixp, i64 0, i64 %idxprom6, !taffo.info !43, !taffo.target !46
  store i32 %.flt2.fallback.s10_22fixp, i32* %arrayidx7.s10_22fixp, align 4, !taffo.info !66, !taffo.target !46
  %mul8 = mul nsw i32 %i.0, 5, !taffo.constinfo !25, !taffo.info !62
  %add = add nsw i32 %mul8, 1, !taffo.constinfo !25, !taffo.info !67
  %idxprom9 = sext i32 %add to i64, !taffo.info !67
  %arrayidx10 = getelementptr inbounds float, float* %arr, i64 %idxprom9
  %.flt4 = load float, float* %arrayidx10, align 4, !taffo.initweight !31, !taffo.info !47
  %1 = fmul float 0x4180000000000000, %.flt4, !taffo.info !47
  %.flt4.fallback.s7_25fixp = fptosi float %1 to i32, !taffo.info !47
  %idxprom11 = sext i32 %i.0 to i64, !taffo.info !64
  %arrayidx12.s7_25fixp = getelementptr inbounds [100 x i32], [100 x i32]* %resistance.s7_25fixp, i64 0, i64 %idxprom11, !taffo.info !47
  store i32 %.flt4.fallback.s7_25fixp, i32* %arrayidx12.s7_25fixp, align 4, !taffo.info !69
  %mul13 = mul nsw i32 %i.0, 5, !taffo.constinfo !25, !taffo.info !62
  %add14 = add nsw i32 %mul13, 2, !taffo.constinfo !25, !taffo.info !70
  %idxprom15 = sext i32 %add14 to i64, !taffo.info !70
  %arrayidx16 = getelementptr inbounds float, float* %arr, i64 %idxprom15
  %.flt3 = load float, float* %arrayidx16, align 4, !taffo.initweight !31, !taffo.info !50
  %2 = fmul float 0x4170000000000000, %.flt3, !taffo.info !50
  %.flt3.fallback.s8_24fixp = fptosi float %2 to i32, !taffo.info !50
  %idxprom17 = sext i32 %i.0 to i64, !taffo.info !64
  %arrayidx18.s8_24fixp = getelementptr inbounds [100 x i32], [100 x i32]* %frequency.s8_24fixp, i64 0, i64 %idxprom17, !taffo.info !50
  store i32 %.flt3.fallback.s8_24fixp, i32* %arrayidx18.s8_24fixp, align 4, !taffo.info !72
  %mul19 = mul nsw i32 %i.0, 5, !taffo.constinfo !25, !taffo.info !62
  %add20 = add nsw i32 %mul19, 3, !taffo.constinfo !25, !taffo.info !73
  %idxprom21 = sext i32 %add20 to i64, !taffo.info !73
  %arrayidx22 = getelementptr inbounds float, float* %arr, i64 %idxprom21
  %.flt = load float, float* %arrayidx22, align 4, !taffo.initweight !31, !taffo.info !53
  %3 = fmul float 0x41C0000000000000, %.flt, !taffo.info !53
  %.flt.fallback.s3_29fixp = fptosi float %3 to i32, !taffo.info !53
  %idxprom23 = sext i32 %i.0 to i64, !taffo.info !64
  %arrayidx24.s3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %inductance.s3_29fixp, i64 0, i64 %idxprom23, !taffo.info !53
  store i32 %.flt.fallback.s3_29fixp, i32* %arrayidx24.s3_29fixp, align 4, !taffo.info !75
  %mul25 = mul nsw i32 %i.0, 5, !taffo.constinfo !25, !taffo.info !62
  %add26 = add nsw i32 %mul25, 4, !taffo.constinfo !25, !taffo.info !76
  %idxprom27 = sext i32 %add26 to i64, !taffo.info !76
  %arrayidx28 = getelementptr inbounds float, float* %arr, i64 %idxprom27
  %.flt1 = load float, float* %arrayidx28, align 4, !taffo.initweight !31, !taffo.info !56
  %4 = fmul float 0x41A0000000000000, %.flt1, !taffo.info !56
  %.flt1.fallback.s5_27fixp = fptosi float %4 to i32, !taffo.info !56
  %idxprom29 = sext i32 %i.0 to i64, !taffo.info !64
  %arrayidx30.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %maxVoltage.s5_27fixp, i64 0, i64 %idxprom29, !taffo.info !56
  store i32 %.flt1.fallback.s5_27fixp, i32* %arrayidx30.s5_27fixp, align 4, !taffo.info !78
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !25, !taffo.info !79
  br label %for.cond, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc53, %for.end
  %i31.0 = phi i32 [ 0, %for.end ], [ %inc54, %for.inc53 ], !taffo.info !58
  %cmp33 = icmp slt i32 %i31.0, 100, !taffo.info !60
  br i1 %cmp33, label %for.body34, label %for.end55

for.body34:                                       ; preds = %for.cond32
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc50, %for.body34
  %j.0 = phi i32 [ 0, %for.body34 ], [ %inc51, %for.inc50 ], !taffo.info !83
  %cmp36 = icmp slt i32 %j.0, 100, !taffo.info !60
  br i1 %cmp36, label %for.body37, label %for.end52

for.body37:                                       ; preds = %for.cond35
  %idxprom38 = sext i32 %j.0 to i64, !taffo.info !85
  %arrayidx39.s10_22fixp = getelementptr inbounds [100 x i32], [100 x i32]* %t.s10_22fixp, i64 0, i64 %idxprom38, !taffo.info !43, !taffo.target !46
  %s10_22fixp = load i32, i32* %arrayidx39.s10_22fixp, align 4, !taffo.info !43, !taffo.target !46
  %idxprom40 = sext i32 %j.0 to i64, !taffo.info !85
  %arrayidx41.s7_25fixp = getelementptr inbounds [100 x i32], [100 x i32]* %resistance.s7_25fixp, i64 0, i64 %idxprom40, !taffo.info !47
  %s7_25fixp = load i32, i32* %arrayidx41.s7_25fixp, align 4, !taffo.info !47
  %idxprom42 = sext i32 %j.0 to i64, !taffo.info !85
  %arrayidx43.s8_24fixp = getelementptr inbounds [100 x i32], [100 x i32]* %frequency.s8_24fixp, i64 0, i64 %idxprom42, !taffo.info !50
  %s8_24fixp = load i32, i32* %arrayidx43.s8_24fixp, align 4, !taffo.info !50
  %idxprom44 = sext i32 %j.0 to i64, !taffo.info !85
  %arrayidx45.s3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %inductance.s3_29fixp, i64 0, i64 %idxprom44, !taffo.info !53
  %s3_29fixp = load i32, i32* %arrayidx45.s3_29fixp, align 4, !taffo.info !87
  %idxprom46 = sext i32 %j.0 to i64, !taffo.info !85
  %arrayidx47.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %maxVoltage.s5_27fixp, i64 0, i64 %idxprom46, !taffo.info !56
  %s5_27fixp = load i32, i32* %arrayidx47.s5_27fixp, align 4, !taffo.info !56
  %5 = ashr i32 %s3_29fixp, 2, !taffo.info !87
  %call.s7_25fixp = call i32 @ex0.1_s7_25fixp(i32 %s10_22fixp, i32 %s7_25fixp, i32 %s8_24fixp, i32 %5, i32 %s5_27fixp), !taffo.constinfo !88, !taffo.info !89, !taffo.target !46
  %6 = sitofp i32 %call.s7_25fixp to float, !taffo.info !89, !taffo.target !46
  %7 = fdiv float %6, 0x4180000000000000, !taffo.info !89, !taffo.target !46
  %idxprom48 = sext i32 %j.0 to i64, !taffo.info !85
  %arrayidx49 = getelementptr inbounds float, float* %res, i64 %idxprom48
  store float %7, float* %arrayidx49, align 4, !taffo.info !66, !taffo.target !46
  br label %for.inc50

for.inc50:                                        ; preds = %for.body37
  %inc51 = add nsw i32 %j.0, 1, !taffo.constinfo !25, !taffo.info !91
  br label %for.cond35, !llvm.loop !93

for.end52:                                        ; preds = %for.cond35
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %inc54 = add nsw i32 %i31.0, 1, !taffo.constinfo !25, !taffo.info !79
  br label %for.cond32, !llvm.loop !94

for.end55:                                        ; preds = %for.cond32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @main() #0 !taffo.initweight !95 !taffo.funinfo !95 {
entry:
  %arr = alloca [500 x float], align 16
  %res = alloca [100 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 500
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 32, !taffo.constinfo !25
  %conv = sitofp i32 %rem to float
  %add = fadd float %conv, 0x3FCD70A3E0000000, !taffo.constinfo !96
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [500 x float], [500 x float]* %arr, i64 0, i64 %idxprom
  store float %add, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !25
  br label %for.cond, !llvm.loop !99

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [500 x float], [500 x float]* %arr, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 0
  call void @test(float* noundef %arraydecay, float* noundef %arraydecay1), !taffo.constinfo !100
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ex0.1_s7_25fixp(i32 noundef %t.s10_22fixp, i32 noundef %resistance.s7_25fixp, i32 noundef %frequency.s8_24fixp, i32 noundef %inductance.s5_27fixp, i32 noundef %maxVoltage.s5_27fixp) #0 !taffo.initweight !101 !taffo.funinfo !102 !taffo.sourceFunction !103 {
entry:
  %mul = fmul float 2.000000e+00, 0x400921FB60000000, !taffo.constinfo !9, !taffo.info !104
  %0 = fmul float 0x41C0000000000000, %mul, !taffo.constinfo !9, !taffo.info !104
  %1 = fptoui float %0 to i32, !taffo.info !104
  %2 = zext i32 %1 to i64, !taffo.info !104
  %3 = sext i32 %frequency.s8_24fixp to i64, !taffo.info !50
  %4 = mul i64 %2, %3, !taffo.info !106
  %5 = ashr i64 %4, 32, !taffo.info !106
  %mul2.s11_21fixp = trunc i64 %5 to i32, !taffo.info !109
  %6 = sext i32 %mul2.s11_21fixp to i64, !taffo.info !109
  %7 = sext i32 %inductance.s5_27fixp to i64, !taffo.info !87
  %8 = mul i64 %6, %7, !taffo.info !111
  %9 = ashr i64 %8, 20, !taffo.info !111
  %mul3.s4_28fixp = trunc i64 %9 to i32, !taffo.info !14
  %10 = sext i32 %mul3.s4_28fixp to i64, !taffo.info !14
  %11 = sext i32 %mul3.s4_28fixp to i64, !taffo.info !14
  %12 = mul i64 %10, %11, !taffo.info !17
  %13 = ashr i64 %12, 28, !taffo.info !17
  %mul6.s4_28fixp = trunc i64 %13 to i32, !taffo.info !14
  %14 = ashr i32 %mul6.s4_28fixp, 9, !taffo.info !14
  %15 = sext i32 %resistance.s7_25fixp to i64, !taffo.info !47
  %16 = sext i32 %resistance.s7_25fixp to i64, !taffo.info !47
  %17 = mul i64 %15, %16, !taffo.info !113
  %18 = ashr i64 %17, 31
  %19 = trunc i64 %18 to i32
  %s13_19fixp = add i32 %19, %14, !taffo.info !116
  %20 = sext i32 %maxVoltage.s5_27fixp to i64, !taffo.info !56
  %21 = sext i32 %resistance.s7_25fixp to i64, !taffo.info !47
  %22 = mul i64 %20, %21, !taffo.info !117
  %23 = ashr i64 %22, 33, !taffo.info !117
  %mul7.s13_19fixp = trunc i64 %23 to i32, !taffo.info !120
  %24 = sext i32 %maxVoltage.s5_27fixp to i64, !taffo.info !56
  %25 = sext i32 %mul3.s4_28fixp to i64, !taffo.info !14
  %26 = mul i64 %24, %25, !taffo.info !121
  %27 = ashr i64 %26, 28, !taffo.info !121
  %mul8.s5_27fixp = trunc i64 %27 to i32, !taffo.info !123
  %28 = sitofp i32 %mul8.s5_27fixp to float, !taffo.info !123
  %29 = fdiv float %28, 0x41A0000000000000, !taffo.info !123
  %fneg = fneg float %29, !taffo.info !124
  %30 = sext i32 %mul7.s13_19fixp to i64, !taffo.info !120
  %31 = shl i64 %30, 19, !taffo.info !120
  %32 = sext i32 %s13_19fixp to i64, !taffo.info !116
  %33 = sdiv i64 %31, %32, !taffo.info !22
  %div.s13_19fixp = trunc i64 %33 to i32, !taffo.info !19
  %34 = sitofp i32 %div.s13_19fixp to float, !taffo.info !19
  %35 = fdiv float %34, 5.242880e+05, !taffo.info !19
  %36 = sitofp i32 %div.s13_19fixp to float, !taffo.info !19
  %37 = fdiv float %36, 5.242880e+05, !taffo.info !19
  %38 = sitofp i32 %div.s13_19fixp to float, !taffo.info !19
  %39 = fdiv float %38, 5.242880e+05, !taffo.info !19
  %40 = fmul float 0x41B0000000000000, %fneg, !taffo.info !124
  %41 = fptosi float %40 to i32, !taffo.info !124
  %42 = sext i32 %41 to i64, !taffo.info !124
  %43 = shl i64 %42, 10, !taffo.info !124
  %44 = sext i32 %s13_19fixp to i64, !taffo.info !116
  %45 = sdiv i64 %43, %44, !taffo.info !22
  %div9.s13_19fixp = trunc i64 %45 to i32, !taffo.info !19
  %46 = sitofp i32 %div9.s13_19fixp to float, !taffo.info !19
  %47 = fdiv float %46, 5.242880e+05, !taffo.info !19
  %48 = sitofp i32 %div9.s13_19fixp to float, !taffo.info !19
  %49 = fdiv float %48, 5.242880e+05, !taffo.info !19
  %50 = sitofp i32 %div9.s13_19fixp to float, !taffo.info !19
  %51 = fdiv float %50, 5.242880e+05, !taffo.info !19
  %mul12 = fmul float %51, %49, !taffo.info !126
  %52 = call float @llvm.fmuladd.f32(float %37, float %35, float %mul12), !taffo.constinfo !24, !taffo.info !128
  %conv = fpext float %52 to double, !taffo.info !128
  %call = call double @sqrt(double noundef %conv) #3, !taffo.constinfo !25, !taffo.info !130
  %53 = fmul double 0x4130000000000000, %call, !taffo.constinfo !25, !taffo.info !130
  %54 = fptoui double %53 to i32, !taffo.info !130
  %conv13.s5_27fixp = shl i32 %54, 7, !taffo.info !26
  %div15 = fdiv float %47, %39, !taffo.info !132
  %conv16 = fpext float %div15 to double, !taffo.info !132
  %call17 = call double @atan(double noundef %conv16) #3, !taffo.constinfo !25
  %mul19 = fmul float 2.000000e+00, 0x400921FB60000000, !taffo.constinfo !9, !taffo.info !104
  %55 = fmul float 0x41C0000000000000, %mul19, !taffo.constinfo !9, !taffo.info !104
  %56 = fptoui float %55 to i32, !taffo.info !104
  %57 = zext i32 %56 to i64, !taffo.info !104
  %58 = sext i32 %frequency.s8_24fixp to i64, !taffo.info !50
  %59 = mul i64 %57, %58, !taffo.info !106
  %60 = ashr i64 %59, 32, !taffo.info !106
  %mul20.s11_21fixp = trunc i64 %60 to i32, !taffo.info !109
  %61 = sext i32 %mul20.s11_21fixp to i64, !taffo.info !109
  %62 = sext i32 %t.s10_22fixp to i64, !taffo.info !43
  %63 = mul i64 %61, %62, !taffo.info !134
  %64 = ashr i64 %63, 30, !taffo.info !134
  %mul21.s19_13fixp = trunc i64 %64 to i32, !taffo.info !137
  %65 = sitofp i32 %mul21.s19_13fixp to double, !taffo.info !137
  %66 = fdiv double %65, 8.192000e+03, !taffo.info !137
  %call25.flt = call double @cos(double noundef %66) #3, !taffo.initweight !31, !taffo.constinfo !25, !taffo.info !139
  %67 = fmul double 0x41D0000000000000, %call25.flt, !taffo.constinfo !25, !taffo.info !139
  %call25.flt.fallback.s2_30fixp = fptosi double %67 to i32, !taffo.info !139
  %68 = sext i32 %conv13.s5_27fixp to i64, !taffo.info !26
  %69 = sext i32 %call25.flt.fallback.s2_30fixp to i64, !taffo.info !139
  %70 = mul i64 %68, %69, !taffo.info !142
  %71 = ashr i64 %70, 30, !taffo.info !142
  %mul29.s5_27fixp = trunc i64 %71 to i32, !taffo.info !144
  %72 = ashr i32 %mul29.s5_27fixp, 2, !taffo.info !144
  ret i32 %72, !taffo.initweight !29, !taffo.info !30
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 15.0.7"}
!6 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!7 = distinct !{null}
!8 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!9 = !{!10, !12}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 2.000000e+00, double 2.000000e+00}
!12 = !{i1 false, !13, i1 false, i2 0}
!13 = !{double 0x400921FB60000000, double 0x400921FB60000000}
!14 = !{!15, !16, i1 false, i2 -1}
!15 = !{!"fixp", i32 -32, i32 28}
!16 = !{double -1.000000e+00, double 4.000000e+00}
!17 = !{!18, !16, i1 false, i2 -1}
!18 = !{!"fixp", i32 -64, i32 56}
!19 = !{!20, !21, i1 false, i2 -1}
!20 = !{!"fixp", i32 -32, i32 19}
!21 = !{double -1.000000e+00, double 2.503000e+03}
!22 = !{!23, !21, i1 false, i2 -1}
!23 = !{!"fixp", i32 -64, i32 19}
!24 = !{i1 false, i1 false, i1 false, i1 false}
!25 = !{i1 false, i1 false}
!26 = !{!27, !28, i1 false, i2 -1}
!27 = !{!"fixp", i32 -32, i32 27}
!28 = !{double -1.000000e+00, double 1.100000e+01}
!29 = !{i32 2}
!30 = !{i1 false, i1 false, i1 false, i2 1}
!31 = !{i32 3}
!32 = !{i32 4}
!33 = !{!34, i1 false, i1 false, i2 -1}
!34 = !{!"fixp", i32 -64, i32 54}
!35 = !{!27, i1 false, i1 false, i2 -1}
!36 = !{i32 -1, i32 -1, i32 -1}
!37 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!38 = !{i32 -1}
!39 = !{i32 0, i1 false}
!40 = !{i32 -1, i32 -1}
!41 = !{i32 0, i1 false, i32 0, i1 false}
!42 = !{i1 true}
!43 = !{!44, !45, i1 false, i2 -1}
!44 = !{!"fixp", i32 -32, i32 22}
!45 = !{double -2.000000e+00, double 3.000000e+02}
!46 = !{!"test"}
!47 = !{!48, !49, i1 false, i2 -1}
!48 = !{!"fixp", i32 -32, i32 25}
!49 = !{double -1.000000e+01, double 5.000000e+01}
!50 = !{!51, !52, i1 false, i2 -1}
!51 = !{!"fixp", i32 -32, i32 24}
!52 = !{double -1.000000e+01, double 1.000000e+02}
!53 = !{!54, !55, i1 false, i2 -1}
!54 = !{!"fixp", i32 -32, i32 29}
!55 = !{double -2.000000e+00, double 2.000000e+00}
!56 = !{!27, !57, i1 false, i2 -1}
!57 = !{double -2.000000e+00, double 1.200000e+01}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 0.000000e+00, double 1.010000e+02}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 0.000000e+00, double 1.000000e+00}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 5.000000e+02}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 1.000000e+02}
!66 = !{i1 false, !45, i1 false, i2 -1}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 1.000000e+00, double 5.010000e+02}
!69 = !{i1 false, !49, i1 false, i2 -1}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 2.000000e+00, double 5.020000e+02}
!72 = !{i1 false, !52, i1 false, i2 -1}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 3.000000e+00, double 5.030000e+02}
!75 = !{i1 false, !55, i1 false, i2 -1}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 4.000000e+00, double 5.040000e+02}
!78 = !{i1 false, !57, i1 false, i2 -1}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 1.000000e+00, double 1.010000e+02}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 0.000000e+00, double 1.020100e+04}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 0.000000e+00, double 1.020000e+04}
!87 = !{!27, !55, i1 false, i2 -1}
!88 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!89 = !{!48, !90, i1 false, i2 -1}
!90 = !{double -1.100000e+01, double 1.100000e+01}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 1.000000e+00, double 1.020100e+04}
!93 = distinct !{!93, !82}
!94 = distinct !{!94, !82}
!95 = !{}
!96 = !{i1 false, !97}
!97 = !{i1 false, !98, i1 false, i2 0}
!98 = !{double 0x3FCD70A3E0000000, double 0x3FCD70A3E0000000}
!99 = distinct !{!99, !82}
!100 = !{i1 false, i1 false, i1 false}
!101 = !{i32 3, i32 3, i32 3, i32 3, i32 3}
!102 = !{i32 1, !43, i32 1, !47, i32 1, !50, i32 1, !87, i32 1, !56}
!103 = !{float (float, float, float, float, float)* @ex0}
!104 = !{i1 false, !105, i1 false, i2 0}
!105 = !{double 0x401921FB60000000, double 0x401921FB60000000}
!106 = !{!107, !108, i1 false, i2 -1}
!107 = !{!"fixp", i32 -64, i32 53}
!108 = !{double 0xC04F6A7A38000000, double 0x4083A28C63000000}
!109 = !{!110, !108, i1 false, i2 -1}
!110 = !{!"fixp", i32 -32, i32 21}
!111 = !{!112, !16, i1 false, i2 -1}
!112 = !{!"fixp", i32 -64, i32 48}
!113 = !{!114, !115, i1 false, i2 -1}
!114 = !{!"fixp", i32 -64, i32 50}
!115 = !{double -1.000000e+00, double 2.504000e+03}
!116 = !{!20, !115, i1 false, i2 -1}
!117 = !{!118, !119, i1 false, i2 -1}
!118 = !{!"fixp", i32 -64, i32 52}
!119 = !{double -1.200000e+02, double 6.000000e+02}
!120 = !{!20, !119, i1 false, i2 -1}
!121 = !{!122, !16, i1 false, i2 -1}
!122 = !{!"fixp", i32 -64, i32 55}
!123 = !{!27, !16, i1 false, i2 -1}
!124 = !{i1 false, !125, i1 false, i2 0}
!125 = !{double -4.000000e+00, double 1.000000e+00}
!126 = !{i1 false, !127, i1 false, i2 0}
!127 = !{double 0.000000e+00, double 0x4157E62C40000000}
!128 = !{i1 false, !129, i1 false, i2 0}
!129 = !{double 0.000000e+00, double 0x4167E62C40000000}
!130 = !{i1 false, !131, i1 false, i2 0}
!131 = !{double 0.000000e+00, double 0x40ABA78D9784C036}
!132 = !{i1 false, !133, i1 false, i2 0}
!133 = !{double -2.503000e+11, double 2.503000e+11}
!134 = !{!135, !136, i1 false, i2 -1}
!135 = !{!"fixp", i32 -64, i32 43}
!136 = !{double 0xC0D268639CD00000, double 0x4107027C84040000}
!137 = !{!138, !136, i1 false, i2 1}
!138 = !{!"fixp", i32 -32, i32 13}
!139 = !{!140, !141, i1 false, i2 1}
!140 = !{!"fixp", i32 -32, i32 30}
!141 = !{double -1.000000e+00, double 1.000000e+00}
!142 = !{!143, !90, i1 false, i2 1}
!143 = !{!"fixp", i32 -64, i32 57}
!144 = !{!27, !90, i1 false, i2 1}
