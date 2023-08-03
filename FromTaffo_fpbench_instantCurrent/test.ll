; ModuleID = '/tmp/tmp.9G90ptmMY7/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.21 = private unnamed_addr constant [14 x i8] c"Values Begin\0A\00", align 1, !taffo.info !0
@.str.22 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1, !taffo.info !2
@.str.23 = private unnamed_addr constant [12 x i8] c"Values End\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local float @ex0(float noundef %t, float noundef %resistance, float noundef %frequency, float noundef %inductance, float noundef %maxVoltage) #0 !taffo.start !10 !taffo.initweight !11 !taffo.equivalentChild !12 !taffo.funinfo !13 {
entry:
  %0 = fmul float 0x4180000000000000, %resistance
  %1 = fptosi float %0 to i32
  %2 = fmul float 0x4180000000000000, %resistance
  %3 = fptosi float %2 to i32
  %4 = fmul float 0x4140000000000000, %t
  %5 = fptosi float %4 to i32
  %6 = fmul float 0x4130000000000000, %maxVoltage
  %7 = fptosi float %6 to i32
  %8 = fmul float 0x41C0000000000000, %frequency
  %9 = fptoui float %8 to i32
  %10 = fmul float 0x4180000000000000, %resistance
  %11 = fptosi float %10 to i32
  %12 = fmul float 0x4180000000000000, %maxVoltage
  %13 = fptosi float %12 to i32
  %14 = fmul float 0x4130000000000000, %inductance
  %15 = fptosi float %14 to i32
  %mul = fmul float 0x401921FB60000000, %frequency, !taffo.constinfo !14
  %16 = fmul float 0x4130000000000000, %mul, !taffo.info !17, !taffo.constinfo !14
  %17 = fptosi float %16 to i32, !taffo.info !17
  %18 = sext i32 %17 to i64, !taffo.info !17
  %19 = sext i32 %15 to i64
  %20 = mul i64 %18, %19, !taffo.info !20
  %21 = ashr i64 %20, 20, !taffo.info !20
  %mul3.s12_20fixp = trunc i64 %21 to i32, !taffo.info !17
  %22 = sext i32 %mul3.s12_20fixp to i64, !taffo.info !17
  %23 = sext i32 %mul3.s12_20fixp to i64, !taffo.info !17
  %24 = mul i64 %22, %23, !taffo.info !22
  %25 = lshr i64 %24, 29, !taffo.info !22
  %mul6.u21_11fixp = trunc i64 %25 to i32, !taffo.info !25
  %26 = shl i32 %mul6.u21_11fixp, 14, !taffo.info !25
  %27 = sext i32 %3 to i64
  %28 = sext i32 %1 to i64
  %29 = mul i64 %27, %28, !taffo.info !27
  %30 = ashr i64 %29, 25
  %31 = trunc i64 %30 to i32
  %s7_25fixp = add i32 %31, %26, !taffo.info !30
  %32 = sext i32 %13 to i64
  %33 = sext i32 %11 to i64
  %34 = mul i64 %32, %33, !taffo.info !27
  %35 = ashr i64 %34, 25, !taffo.info !27
  %mul8.s7_25fixp = trunc i64 %35 to i32, !taffo.info !30
  %36 = sext i32 %7 to i64
  %37 = sext i32 %mul3.s12_20fixp to i64, !taffo.info !17
  %38 = mul i64 %36, %37, !taffo.info !20
  %39 = ashr i64 %38, 20, !taffo.info !20
  %mul10.s12_20fixp = trunc i64 %39 to i32, !taffo.info !17
  %fneg.s12_20fixp = sub i32 0, %mul10.s12_20fixp, !taffo.info !17
  %40 = sext i32 %mul8.s7_25fixp to i64, !taffo.info !30
  %41 = shl i64 %40, 30, !taffo.info !30
  %42 = sext i32 %s7_25fixp to i64, !taffo.info !30
  %div.s34_30fixp = sdiv i64 %41, %42, !taffo.info !32
  %43 = sitofp i64 %div.s34_30fixp to float, !taffo.info !32
  %44 = fdiv float %43, 0x41D0000000000000, !taffo.info !32
  %45 = sitofp i64 %div.s34_30fixp to float, !taffo.info !32
  %46 = fdiv float %45, 0x41D0000000000000, !taffo.info !32
  %47 = sitofp i64 %div.s34_30fixp to float, !taffo.info !32
  %48 = fdiv float %47, 0x41D0000000000000, !taffo.info !32
  %49 = sext i32 %fneg.s12_20fixp to i64, !taffo.info !17
  %50 = shl i64 %49, 30, !taffo.info !17
  %51 = sext i32 %s7_25fixp to i64, !taffo.info !30
  %div13.s39_25fixp = sdiv i64 %50, %51, !taffo.info !35
  %52 = sitofp i64 %div13.s39_25fixp to float, !taffo.info !35
  %53 = fdiv float %52, 0x4180000000000000, !taffo.info !35
  %54 = sitofp i64 %div13.s39_25fixp to float, !taffo.info !35
  %55 = fdiv float %54, 0x4180000000000000, !taffo.info !35
  %56 = sitofp i64 %div13.s39_25fixp to float, !taffo.info !35
  %57 = fdiv float %56, 0x4180000000000000, !taffo.info !35
  %mul16 = fmul float %57, %55, !taffo.info !38, !taffo.initweight !40
  ;%58 = call float @llvm.fmuladd.f32(float %46, float %44, float %mul16), !taffo.info !38, !taffo.initweight !40, !taffo.constinfo !41
  %temp58 = fmul float %46, %44
  %58 = fadd float %temp58, %mul16
  %conv = fpext float %58 to double, !taffo.info !38, !taffo.initweight !42
  %call = call double @sqrt(double noundef %conv) #4, !taffo.info !43, !taffo.initweight !45, !taffo.constinfo !46
  %conv17 = fptrunc double %call to float, !taffo.info !47, !taffo.initweight !49
  %div19 = fdiv float %53, %48, !taffo.info !38, !taffo.initweight !40
  %conv21 = fpext float %div19 to double, !taffo.info !50, !taffo.initweight !40
  %call22 = call double @atan(double noundef %conv21) #4, !taffo.info !51, !taffo.initweight !42, !taffo.constinfo !46
  %59 = zext i32 13176795 to i64
  %60 = zext i32 %9 to i64
  %61 = mul i64 %59, %60, !taffo.info !52, !taffo.constinfo !14
  %62 = lshr i64 %61, 21, !taffo.info !52, !taffo.constinfo !14
  %mul26.u3_29fixp = trunc i64 %62 to i32, !taffo.info !55
  %63 = zext i32 %mul26.u3_29fixp to i64, !taffo.info !55
  %64 = sext i32 %5 to i64
  %65 = mul i64 %63, %64, !taffo.info !57
  %66 = ashr i64 %65, 29, !taffo.info !57
  %mul28.s11_21fixp = trunc i64 %66 to i32, !taffo.info !59
  %conv31.s19_13fixp = ashr i32 %mul28.s11_21fixp, 8, !taffo.info !61
  %67 = sitofp i32 %conv31.s19_13fixp to double, !taffo.info !61
  %68 = fdiv double %67, 8.192000e+03, !taffo.info !61
  %call32.flt = call double @cos(double noundef %68) #4, !taffo.info !64, !taffo.initweight !42, !taffo.constinfo !46
  %69 = fmul double 0x41D0000000000000, %call32.flt, !taffo.info !64, !taffo.constinfo !46
  %call32.flt.fallback.s2_30fixp = fptosi double %69 to i32, !taffo.info !64
  %70 = fmul float 0x41C0000000000000, %conv17, !taffo.info !47
  %71 = fptoui float %70 to i32, !taffo.info !47
  %72 = zext i32 %71 to i64, !taffo.info !47
  %73 = sext i32 %call32.flt.fallback.s2_30fixp to i64, !taffo.info !64
  %74 = mul i64 %72, %73, !taffo.info !67
  %75 = ashr i64 %74, 29, !taffo.info !67
  %mul36.s2_30fixp = trunc i64 %75 to i32, !taffo.info !64
  %76 = sitofp i32 %mul36.s2_30fixp to float, !taffo.info !64
  %77 = fdiv float %76, 0x41D0000000000000, !taffo.info !64
  ret float %77, !taffo.info !69, !taffo.initweight !40, !taffo.target !71
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
;declare !taffo.initweight !72 !taffo.funinfo !73 float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nounwind
declare !taffo.initweight !74 !taffo.funinfo !75 double @sqrt(double noundef) #2

; Function Attrs: nounwind
declare !taffo.initweight !74 !taffo.funinfo !75 double @atan(double noundef) #2

; Function Attrs: nounwind
declare !taffo.initweight !74 !taffo.funinfo !75 double @cos(double noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(float* noundef %arr, float* noundef %res) #0 !taffo.start !10 !taffo.initweight !76 !taffo.funinfo !77 {
entry:
  %t.s10_22fixp = alloca [100 x i32], align 16, !taffo.info !78, !taffo.target !81
  %resistance.s7_25fixp = alloca [100 x i32], align 16, !taffo.info !82, !taffo.target !83
  %frequency.s8_24fixp = alloca [100 x i32], align 16, !taffo.info !84, !taffo.target !87
  %inductance.s3_29fixp = alloca [100 x i32], align 16, !taffo.info !88, !taffo.target !91
  %maxVoltage.s5_27fixp = alloca [100 x i32], align 16, !taffo.info !92, !taffo.target !95
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !96
  %cmp = icmp slt i32 %i.0, 100, !taffo.info !98
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 5, !taffo.info !100, !taffo.constinfo !46
  %idxprom = sext i32 %mul to i64, !taffo.info !100
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %.flt1 = load float, float* %arrayidx, align 4, !taffo.info !78, !taffo.initweight !42, !taffo.target !81
  %0 = fmul float 0x4150000000000000, %.flt1, !taffo.info !78, !taffo.target !81
  %.flt1.fallback.s10_22fixp = fptosi float %0 to i32, !taffo.info !78, !taffo.target !81
  %idxprom6 = sext i32 %i.0 to i64, !taffo.info !102
  %arrayidx7.s10_22fixp = getelementptr inbounds [100 x i32], [100 x i32]* %t.s10_22fixp, i64 0, i64 %idxprom6, !taffo.info !78, !taffo.target !81
  store i32 %.flt1.fallback.s10_22fixp, i32* %arrayidx7.s10_22fixp, align 4, !taffo.info !104, !taffo.target !81
  %mul8 = mul nsw i32 %i.0, 5, !taffo.info !100, !taffo.constinfo !46
  %add = add nsw i32 %mul8, 1, !taffo.info !105, !taffo.constinfo !46
  %idxprom9 = sext i32 %add to i64, !taffo.info !105
  %arrayidx10 = getelementptr inbounds float, float* %arr, i64 %idxprom9
  %.flt = load float, float* %arrayidx10, align 4, !taffo.info !82, !taffo.initweight !42, !taffo.target !83
  %1 = fmul float 0x4180000000000000, %.flt, !taffo.info !82, !taffo.target !83
  %.flt.fallback.s7_25fixp = fptosi float %1 to i32, !taffo.info !82, !taffo.target !83
  %idxprom11 = sext i32 %i.0 to i64, !taffo.info !102
  %arrayidx12.s7_25fixp = getelementptr inbounds [100 x i32], [100 x i32]* %resistance.s7_25fixp, i64 0, i64 %idxprom11, !taffo.info !82, !taffo.target !83
  store i32 %.flt.fallback.s7_25fixp, i32* %arrayidx12.s7_25fixp, align 4, !taffo.info !107, !taffo.target !83
  %mul13 = mul nsw i32 %i.0, 5, !taffo.info !100, !taffo.constinfo !46
  %add14 = add nsw i32 %mul13, 2, !taffo.info !108, !taffo.constinfo !46
  %idxprom15 = sext i32 %add14 to i64, !taffo.info !108
  %arrayidx16 = getelementptr inbounds float, float* %arr, i64 %idxprom15
  %.flt4 = load float, float* %arrayidx16, align 4, !taffo.info !84, !taffo.initweight !42, !taffo.target !87
  %2 = fmul float 0x4170000000000000, %.flt4, !taffo.info !84, !taffo.target !87
  %.flt4.fallback.s8_24fixp = fptosi float %2 to i32, !taffo.info !84, !taffo.target !87
  %idxprom17 = sext i32 %i.0 to i64, !taffo.info !102
  %arrayidx18.s8_24fixp = getelementptr inbounds [100 x i32], [100 x i32]* %frequency.s8_24fixp, i64 0, i64 %idxprom17, !taffo.info !84, !taffo.target !87
  store i32 %.flt4.fallback.s8_24fixp, i32* %arrayidx18.s8_24fixp, align 4, !taffo.info !110, !taffo.target !87
  %mul19 = mul nsw i32 %i.0, 5, !taffo.info !100, !taffo.constinfo !46
  %add20 = add nsw i32 %mul19, 3, !taffo.info !111, !taffo.constinfo !46
  %idxprom21 = sext i32 %add20 to i64, !taffo.info !111
  %arrayidx22 = getelementptr inbounds float, float* %arr, i64 %idxprom21
  %.flt2 = load float, float* %arrayidx22, align 4, !taffo.info !88, !taffo.initweight !42, !taffo.target !91
  %3 = fmul float 0x41C0000000000000, %.flt2, !taffo.info !88, !taffo.target !91
  %.flt2.fallback.s3_29fixp = fptosi float %3 to i32, !taffo.info !88, !taffo.target !91
  %idxprom23 = sext i32 %i.0 to i64, !taffo.info !102
  %arrayidx24.s3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %inductance.s3_29fixp, i64 0, i64 %idxprom23, !taffo.info !88, !taffo.target !91
  store i32 %.flt2.fallback.s3_29fixp, i32* %arrayidx24.s3_29fixp, align 4, !taffo.info !113, !taffo.target !91
  %mul25 = mul nsw i32 %i.0, 5, !taffo.info !100, !taffo.constinfo !46
  %add26 = add nsw i32 %mul25, 4, !taffo.info !114, !taffo.constinfo !46
  %idxprom27 = sext i32 %add26 to i64, !taffo.info !114
  %arrayidx28 = getelementptr inbounds float, float* %arr, i64 %idxprom27
  %.flt3 = load float, float* %arrayidx28, align 4, !taffo.info !92, !taffo.initweight !42, !taffo.target !95
  %4 = fmul float 0x41A0000000000000, %.flt3, !taffo.info !92, !taffo.target !95
  %.flt3.fallback.s5_27fixp = fptosi float %4 to i32, !taffo.info !92, !taffo.target !95
  %idxprom29 = sext i32 %i.0 to i64, !taffo.info !102
  %arrayidx30.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %maxVoltage.s5_27fixp, i64 0, i64 %idxprom29, !taffo.info !92, !taffo.target !95
  store i32 %.flt3.fallback.s5_27fixp, i32* %arrayidx30.s5_27fixp, align 4, !taffo.info !116, !taffo.target !95
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !117, !taffo.constinfo !46
  br label %for.cond, !llvm.loop !119

for.end:                                          ; preds = %for.cond
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc53, %for.end
  %i31.0 = phi i32 [ 0, %for.end ], [ %inc54, %for.inc53 ], !taffo.info !121
  %cmp33 = icmp slt i32 %i31.0, 1, !taffo.info !98
  br i1 %cmp33, label %for.body34, label %for.end55

for.body34:                                       ; preds = %for.cond32
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc50, %for.body34
  %j.0 = phi i32 [ 0, %for.body34 ], [ %inc51, %for.inc50 ], !taffo.info !123
  %cmp36 = icmp slt i32 %j.0, 100, !taffo.info !98
  br i1 %cmp36, label %for.body37, label %for.end52

for.body37:                                       ; preds = %for.cond35
  %idxprom38 = sext i32 %j.0 to i64, !taffo.info !125
  %arrayidx39.s10_22fixp = getelementptr inbounds [100 x i32], [100 x i32]* %t.s10_22fixp, i64 0, i64 %idxprom38, !taffo.info !78, !taffo.target !81
  %s10_22fixp = load i32, i32* %arrayidx39.s10_22fixp, align 4, !taffo.info !78, !taffo.target !81
  %idxprom40 = sext i32 %j.0 to i64, !taffo.info !125
  %arrayidx41.s7_25fixp = getelementptr inbounds [100 x i32], [100 x i32]* %resistance.s7_25fixp, i64 0, i64 %idxprom40, !taffo.info !82, !taffo.target !83
  %s7_25fixp = load i32, i32* %arrayidx41.s7_25fixp, align 4, !taffo.info !82, !taffo.target !83
  %idxprom42 = sext i32 %j.0 to i64, !taffo.info !125
  %arrayidx43.s8_24fixp = getelementptr inbounds [100 x i32], [100 x i32]* %frequency.s8_24fixp, i64 0, i64 %idxprom42, !taffo.info !84, !taffo.target !87
  %s8_24fixp = load i32, i32* %arrayidx43.s8_24fixp, align 4, !taffo.info !84, !taffo.target !87
  %idxprom44 = sext i32 %j.0 to i64, !taffo.info !125
  %arrayidx45.s3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %inductance.s3_29fixp, i64 0, i64 %idxprom44, !taffo.info !88, !taffo.target !91
  %s3_29fixp = load i32, i32* %arrayidx45.s3_29fixp, align 4, !taffo.info !88, !taffo.target !91
  %idxprom46 = sext i32 %j.0 to i64, !taffo.info !125
  %arrayidx47.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %maxVoltage.s5_27fixp, i64 0, i64 %idxprom46, !taffo.info !92, !taffo.target !95
  %s5_27fixp = load i32, i32* %arrayidx47.s5_27fixp, align 4, !taffo.info !92, !taffo.target !95
  %call.s3_29fixp = call i32 @ex0.1_s3_29fixp(i32 %s10_22fixp, i32 %s7_25fixp, i32 %s8_24fixp, i32 %s3_29fixp, i32 %s5_27fixp), !taffo.info !127, !taffo.constinfo !128, !taffo.target !81
  %5 = sitofp i32 %call.s3_29fixp to float, !taffo.info !127, !taffo.target !81
  %6 = fdiv float %5, 0x41C0000000000000, !taffo.info !127, !taffo.target !81
  %idxprom48 = sext i32 %j.0 to i64, !taffo.info !125
  %arrayidx49 = getelementptr inbounds float, float* %res, i64 %idxprom48
  store float %6, float* %arrayidx49, align 4, !taffo.info !104, !taffo.target !81
  br label %for.inc50

for.inc50:                                        ; preds = %for.body37
  %inc51 = add nsw i32 %j.0, 1, !taffo.info !129, !taffo.constinfo !46
  br label %for.cond35, !llvm.loop !131

for.end52:                                        ; preds = %for.cond35
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %inc54 = add nsw i32 %i31.0, 1, !taffo.info !132, !taffo.constinfo !46
  br label %for.cond32, !llvm.loop !134

for.end55:                                        ; preds = %for.cond32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !135 !taffo.funinfo !135 {
entry:
  %arr = alloca [500 x float], align 16
  %res = alloca [100 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add24, %for.inc ]
  %cmp = icmp slt i32 %i.0, 500
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 300, !taffo.constinfo !46
  %conv = sitofp i32 %rem to float
  %sub = fsub float %conv, 0x3FE1EB8520000000, !taffo.constinfo !136
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [500 x float], [500 x float]* %arr, i64 0, i64 %idxprom
  store float %sub, float* %arrayidx, align 4
  %rem1 = srem i32 %i.0, 56, !taffo.constinfo !46
  %conv2 = sitofp i32 %rem1 to float
  %sub3 = fsub float %conv2, 0x4014EB8520000000, !taffo.constinfo !139
  %add = add nsw i32 %i.0, 1, !taffo.constinfo !46
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [500 x float], [500 x float]* %arr, i64 0, i64 %idxprom4
  store float %sub3, float* %arrayidx5, align 4
  %rem6 = srem i32 %i.0, 107, !taffo.constinfo !46
  %conv7 = sitofp i32 %rem6 to float
  %sub8 = fsub float %conv7, 0x401BB851E0000000, !taffo.constinfo !142
  %add9 = add nsw i32 %i.0, 2, !taffo.constinfo !46
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [500 x float], [500 x float]* %arr, i64 0, i64 %idxprom10
  store float %sub8, float* %arrayidx11, align 4
  %rem12 = srem i32 %i.0, 4, !taffo.constinfo !46
  %conv13 = sitofp i32 %rem12 to float
  %sub14 = fsub float %conv13, 0x3FF7851EC0000000, !taffo.constinfo !145
  %add15 = add nsw i32 %i.0, 3, !taffo.constinfo !46
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds [500 x float], [500 x float]* %arr, i64 0, i64 %idxprom16
  store float %sub14, float* %arrayidx17, align 4
  %rem18 = srem i32 %i.0, 14, !taffo.constinfo !46
  %conv19 = sitofp i32 %rem18 to float
  %sub20 = fsub float %conv19, 1.750000e+00, !taffo.constinfo !148
  %add21 = add nsw i32 %i.0, 4, !taffo.constinfo !46
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds [500 x float], [500 x float]* %arr, i64 0, i64 %idxprom22
  store float %sub20, float* %arrayidx23, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %add24 = add nsw i32 %i.0, 5, !taffo.constinfo !46
  br label %for.cond, !llvm.loop !151

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [500 x float], [500 x float]* %arr, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 0
  call void @test(float* noundef %arraydecay, float* noundef %arraydecay25), !taffo.constinfo !152
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0)), !taffo.constinfo !46
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc34, %for.end
  %j.0 = phi i32 [ 0, %for.end ], [ %inc, %for.inc34 ]
  %cmp27 = icmp slt i32 %j.0, 100
  br i1 %cmp27, label %for.body29, label %for.end35

for.body29:                                       ; preds = %for.cond26
  %idxprom30 = sext i32 %j.0 to i64
  %arrayidx31 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 %idxprom30
  %0 = load float, float* %arrayidx31, align 4
  %conv32 = fpext float %0 to double
  %call33 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double noundef %conv32), !taffo.constinfo !152
  br label %for.inc34

for.inc34:                                        ; preds = %for.body29
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !46
  br label %for.cond26, !llvm.loop !153

for.end35:                                        ; preds = %for.cond26
  %call36 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0)), !taffo.constinfo !46
  ret i32 0
}

declare !taffo.initweight !74 !taffo.funinfo !75 i32 @printf(i8* noundef, ...) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @ex0.1_s3_29fixp(i32 noundef %t.s10_22fixp, i32 noundef %resistance.s7_25fixp, i32 noundef %frequency.s8_24fixp, i32 noundef %inductance.s3_29fixp, i32 noundef %maxVoltage.s5_27fixp) #0 !taffo.start !10 !taffo.initweight !154 !taffo.funinfo !155 !taffo.sourceFunction !156 {
entry:
  %0 = zext i32 13176795 to i64
  %1 = sext i32 %frequency.s8_24fixp to i64, !taffo.info !84
  %2 = mul i64 %0, %1, !taffo.info !157, !taffo.constinfo !14
  %3 = ashr i64 %2, 25, !taffo.info !157, !taffo.constinfo !14
  %mul.s12_20fixp = trunc i64 %3 to i32, !taffo.info !160
  %4 = sext i32 %mul.s12_20fixp to i64, !taffo.info !160
  %5 = sext i32 %inductance.s3_29fixp to i64, !taffo.info !88
  %6 = mul i64 %4, %5, !taffo.info !161
  %7 = ashr i64 %6, 29, !taffo.info !161
  %mul3.s12_20fixp = trunc i64 %7 to i32, !taffo.info !164
  %8 = sext i32 %mul3.s12_20fixp to i64, !taffo.info !164
  %9 = sext i32 %mul3.s12_20fixp to i64, !taffo.info !164
  %10 = mul i64 %8, %9, !taffo.info !22
  %11 = lshr i64 %10, 29, !taffo.info !22
  %mul6.u21_11fixp = trunc i64 %11 to i32, !taffo.info !25
  %12 = sext i32 %resistance.s7_25fixp to i64, !taffo.info !82
  %13 = sext i32 %resistance.s7_25fixp to i64, !taffo.info !82
  %14 = mul i64 %12, %13, !taffo.info !165
  %15 = lshr i64 %14, 39
  %16 = trunc i64 %15 to i32
  %u21_11fixp = add i32 %16, %mul6.u21_11fixp, !taffo.info !167
  %17 = sext i32 %maxVoltage.s5_27fixp to i64, !taffo.info !92
  %18 = sext i32 %resistance.s7_25fixp to i64, !taffo.info !82
  %19 = mul i64 %17, %18, !taffo.info !168
  %20 = ashr i64 %19, 31, !taffo.info !168
  %mul8.s11_21fixp = trunc i64 %20 to i32, !taffo.info !171
  %21 = sext i32 %maxVoltage.s5_27fixp to i64, !taffo.info !92
  %22 = sext i32 %mul3.s12_20fixp to i64, !taffo.info !164
  %23 = mul i64 %21, %22, !taffo.info !172
  %24 = ashr i64 %23, 30, !taffo.info !172
  %mul10.s15_17fixp = trunc i64 %24 to i32, !taffo.info !175
  %fneg.s15_17fixp = sub i32 0, %mul10.s15_17fixp, !taffo.info !175
  %25 = sext i32 %mul8.s11_21fixp to i64, !taffo.info !171
  %26 = shl i64 %25, 16, !taffo.info !171
  %27 = zext i32 %u21_11fixp to i64, !taffo.info !167
  %28 = lshr i64 %27, 1, !taffo.info !167
  %div.s37_27fixp = sdiv i64 %26, %28, !taffo.info !177
  %29 = sitofp i64 %div.s37_27fixp to float, !taffo.info !177
  %30 = fdiv float %29, 0x41A0000000000000, !taffo.info !177
  %31 = sitofp i64 %div.s37_27fixp to float, !taffo.info !177
  %32 = fdiv float %31, 0x41A0000000000000, !taffo.info !177
  %33 = sitofp i64 %div.s37_27fixp to float, !taffo.info !177
  %34 = fdiv float %33, 0x41A0000000000000, !taffo.info !177
  %35 = sext i32 %fneg.s15_17fixp to i64, !taffo.info !175
  %36 = shl i64 %35, 15, !taffo.info !175
  %37 = zext i32 %u21_11fixp to i64, !taffo.info !167
  %38 = lshr i64 %37, 1, !taffo.info !167
  %div13.s42_22fixp = sdiv i64 %36, %38, !taffo.info !180
  %39 = sitofp i64 %div13.s42_22fixp to float, !taffo.info !180
  %40 = fdiv float %39, 0x4150000000000000, !taffo.info !180
  %41 = sitofp i64 %div13.s42_22fixp to float, !taffo.info !180
  %42 = fdiv float %41, 0x4150000000000000, !taffo.info !180
  %43 = sitofp i64 %div13.s42_22fixp to float, !taffo.info !180
  %44 = fdiv float %43, 0x4150000000000000, !taffo.info !180
  %mul16 = fmul float %44, %42, !taffo.info !38, !taffo.initweight !40
  ;%45 = call float @llvm.fmuladd.f32(float %32, float %30, float %mul16), !taffo.info !38, !taffo.initweight !40, !taffo.constinfo !41
  %temp45 = fmul float %32, %30
  %45 = fadd float %temp45, %mul16
  %conv = fpext float %45 to double, !taffo.info !38, !taffo.initweight !42
  %call = call double @sqrt(double noundef %conv) #4, !taffo.info !43, !taffo.initweight !45, !taffo.constinfo !46
  %conv17 = fptrunc double %call to float, !taffo.info !47, !taffo.initweight !49
  %div19 = fdiv float %40, %34, !taffo.info !38, !taffo.initweight !40
  %conv21 = fpext float %div19 to double, !taffo.info !50, !taffo.initweight !40
  %call22 = call double @atan(double noundef %conv21) #4, !taffo.info !51, !taffo.initweight !42, !taffo.constinfo !46
  %46 = zext i32 13176795 to i64
  %47 = sext i32 %frequency.s8_24fixp to i64, !taffo.info !84
  %48 = mul i64 %46, %47, !taffo.info !183, !taffo.constinfo !14
  %49 = ashr i64 %48, 24, !taffo.info !183, !taffo.constinfo !14
  %mul26.s11_21fixp = trunc i64 %49 to i32, !taffo.info !184
  %50 = sext i32 %mul26.s11_21fixp to i64, !taffo.info !184
  %51 = sext i32 %t.s10_22fixp to i64, !taffo.info !78
  %52 = mul i64 %50, %51, !taffo.info !185
  %53 = ashr i64 %52, 30, !taffo.info !185
  %mul28.s19_13fixp = trunc i64 %53 to i32, !taffo.info !61
  %54 = sitofp i32 %mul28.s19_13fixp to double, !taffo.info !61
  %55 = fdiv double %54, 8.192000e+03, !taffo.info !61
  %call32.flt = call double @cos(double noundef %55) #4, !taffo.info !64, !taffo.initweight !42, !taffo.constinfo !46
  %56 = fmul double 0x41D0000000000000, %call32.flt, !taffo.info !64, !taffo.constinfo !46
  %call32.flt.fallback.s2_30fixp = fptosi double %56 to i32, !taffo.info !64
  %57 = fmul float 0x41C0000000000000, %conv17, !taffo.info !47
  %58 = fptoui float %57 to i32, !taffo.info !47
  %59 = zext i32 %58 to i64, !taffo.info !47
  %60 = sext i32 %call32.flt.fallback.s2_30fixp to i64, !taffo.info !64
  %61 = mul i64 %59, %60, !taffo.info !67
  %62 = ashr i64 %61, 29, !taffo.info !67
  %mul36.s2_30fixp = trunc i64 %62 to i32, !taffo.info !64
  %63 = ashr i32 %mul36.s2_30fixp, 1, !taffo.info !64
  ret i32 %63, !taffo.info !69, !taffo.initweight !40, !taffo.target !71
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.170000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.020000e+02}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 15.0.7"}
!10 = !{i1 true}
!11 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!12 = distinct !{null}
!13 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!14 = !{!15, i1 false}
!15 = !{i1 false, !16, i1 false, i2 0}
!16 = !{double 0x401921FB60000000, double 0x401921FB60000000}
!17 = !{!18, !19, i1 false, i2 1}
!18 = !{!"fixp", i32 -32, i32 20}
!19 = !{double -1.400000e+03, double 1.400000e+03}
!20 = !{!21, !19, i1 false, i2 1}
!21 = !{!"fixp", i32 -64, i32 40}
!22 = !{!23, !24, i1 false, i2 1}
!23 = !{!"fixp", i32 64, i32 40}
!24 = !{double 0.000000e+00, double 1.960000e+06}
!25 = !{!26, !24, i1 false, i2 1}
!26 = !{!"fixp", i32 32, i32 11}
!27 = !{!28, !29, i1 false, i2 1}
!28 = !{!"fixp", i32 -64, i32 50}
!29 = !{double -1.000000e+01, double 5.000000e+01}
!30 = !{!31, !29, i1 false, i2 1}
!31 = !{!"fixp", i32 -32, i32 25}
!32 = !{!33, !34, i1 false, i2 1}
!33 = !{!"fixp", i32 -64, i32 30}
!34 = !{double -5.000000e+09, double 5.000000e+09}
!35 = !{!36, !37, i1 false, i2 1}
!36 = !{!"fixp", i32 -64, i32 25}
!37 = !{double -1.400000e+11, double 1.400000e+11}
!38 = !{i1 false, !39, i1 false, i2 -2}
!39 = !{double -1.000000e+01, double 1.000000e+01}
!40 = !{i32 2}
!41 = !{i1 false, i1 false, i1 false, i1 false}
!42 = !{i32 3}
!43 = !{i1 false, !44, i1 false, i2 -2}
!44 = !{double 0.000000e+00, double 0x40094C583ADA5B53}
!45 = !{i32 4}
!46 = !{i1 false, i1 false}
!47 = !{i1 false, !48, i1 false, i2 -2}
!48 = !{double 0.000000e+00, double 0x40094C5840000000}
!49 = !{i32 5}
!50 = !{i1 false, !39, i1 false, i2 0}
!51 = !{i1 false, i1 false, i1 false, i2 0}
!52 = !{!53, !54, i1 false, i2 1}
!53 = !{!"fixp", i32 64, i32 50}
!54 = !{double 6.000000e+00, double 7.000000e+00}
!55 = !{!56, !54, i1 false, i2 1}
!56 = !{!"fixp", i32 32, i32 29}
!57 = !{!28, !58, i1 false, i2 1}
!58 = !{double -7.000000e+01, double 7.000000e+02}
!59 = !{!60, !58, i1 false, i2 1}
!60 = !{!"fixp", i32 -32, i32 21}
!61 = !{!62, !63, i1 false, i2 -1}
!62 = !{!"fixp", i32 -32, i32 13}
!63 = !{double -2.100000e+05, double 2.100000e+05}
!64 = !{!65, !66, i1 false, i2 -1}
!65 = !{!"fixp", i32 -32, i32 30}
!66 = !{double -1.000000e+00, double 1.000000e+00}
!67 = !{!68, !66, i1 false, i2 -1}
!68 = !{!"fixp", i32 -64, i32 59}
!69 = !{i1 false, !70, i1 false, i2 1}
!70 = !{double -2.048000e+03, double 2.048000e+03}
!71 = !{!"result"}
!72 = !{i32 -1, i32 -1, i32 -1}
!73 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!74 = !{i32 -1}
!75 = !{i32 0, i1 false}
!76 = !{i32 -1, i32 -1}
!77 = !{i32 0, i1 false, i32 0, i1 false}
!78 = !{!79, !80, i1 false, i2 -1}
!79 = !{!"fixp", i32 -32, i32 22}
!80 = !{double -2.000000e+00, double 3.000000e+02}
!81 = !{!"t"}
!82 = !{!31, !29, i1 false, i2 -1}
!83 = !{!"resistence"}
!84 = !{!85, !86, i1 false, i2 -1}
!85 = !{!"fixp", i32 -32, i32 24}
!86 = !{double -1.000000e+01, double 1.000000e+02}
!87 = !{!"frequency"}
!88 = !{!89, !90, i1 false, i2 -1}
!89 = !{!"fixp", i32 -32, i32 29}
!90 = !{double -2.000000e+00, double 2.000000e+00}
!91 = !{!"inductance"}
!92 = !{!93, !94, i1 false, i2 -1}
!93 = !{!"fixp", i32 -32, i32 27}
!94 = !{double -2.000000e+00, double 1.200000e+01}
!95 = !{!"maxVoltage"}
!96 = !{i1 false, !97, i1 false, i2 0}
!97 = !{double 0.000000e+00, double 1.010000e+02}
!98 = !{i1 false, !99, i1 false, i2 0}
!99 = !{double 0.000000e+00, double 1.000000e+00}
!100 = !{i1 false, !101, i1 false, i2 0}
!101 = !{double 0.000000e+00, double 5.000000e+02}
!102 = !{i1 false, !103, i1 false, i2 0}
!103 = !{double 0.000000e+00, double 1.000000e+02}
!104 = !{i1 false, !80, i1 false, i2 -1}
!105 = !{i1 false, !106, i1 false, i2 0}
!106 = !{double 1.000000e+00, double 5.010000e+02}
!107 = !{i1 false, !29, i1 false, i2 -1}
!108 = !{i1 false, !109, i1 false, i2 0}
!109 = !{double 2.000000e+00, double 5.020000e+02}
!110 = !{i1 false, !86, i1 false, i2 -1}
!111 = !{i1 false, !112, i1 false, i2 0}
!112 = !{double 3.000000e+00, double 5.030000e+02}
!113 = !{i1 false, !90, i1 false, i2 -1}
!114 = !{i1 false, !115, i1 false, i2 0}
!115 = !{double 4.000000e+00, double 5.040000e+02}
!116 = !{i1 false, !94, i1 false, i2 -1}
!117 = !{i1 false, !118, i1 false, i2 0}
!118 = !{double 1.000000e+00, double 1.010000e+02}
!119 = distinct !{!119, !120}
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{i1 false, !122, i1 false, i2 0}
!122 = !{double 0.000000e+00, double 2.000000e+00}
!123 = !{i1 false, !124, i1 false, i2 0}
!124 = !{double 0.000000e+00, double 2.020000e+02}
!125 = !{i1 false, !126, i1 false, i2 0}
!126 = !{double 0.000000e+00, double 2.010000e+02}
!127 = !{!89, !66, i1 false, i2 -1}
!128 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!129 = !{i1 false, !130, i1 false, i2 0}
!130 = !{double 1.000000e+00, double 2.020000e+02}
!131 = distinct !{!131, !120}
!132 = !{i1 false, !133, i1 false, i2 0}
!133 = !{double 1.000000e+00, double 2.000000e+00}
!134 = distinct !{!134, !120}
!135 = !{}
!136 = !{i1 false, !137}
!137 = !{i1 false, !138, i1 false, i2 0}
!138 = !{double 0x3FE1EB8520000000, double 0x3FE1EB8520000000}
!139 = !{i1 false, !140}
!140 = !{i1 false, !141, i1 false, i2 0}
!141 = !{double 0x4014EB8520000000, double 0x4014EB8520000000}
!142 = !{i1 false, !143}
!143 = !{i1 false, !144, i1 false, i2 0}
!144 = !{double 0x401BB851E0000000, double 0x401BB851E0000000}
!145 = !{i1 false, !146}
!146 = !{i1 false, !147, i1 false, i2 0}
!147 = !{double 0x3FF7851EC0000000, double 0x3FF7851EC0000000}
!148 = !{i1 false, !149}
!149 = !{i1 false, !150, i1 false, i2 0}
!150 = !{double 1.750000e+00, double 1.750000e+00}
!151 = distinct !{!151, !120}
!152 = !{i1 false, i1 false, i1 false}
!153 = distinct !{!153, !120}
!154 = !{i32 3, i32 3, i32 3, i32 3, i32 3}
!155 = !{i32 1, !78, i32 1, !82, i32 1, !84, i32 1, !88, i32 1, !92}
!156 = !{float (float, float, float, float, float)* @ex0}
!157 = !{!158, !159, i1 false, i2 -1}
!158 = !{!"fixp", i32 -64, i32 45}
!159 = !{double 0xC04F6A7A38000000, double 0x4083A28C63000000}
!160 = !{!18, !159, i1 false, i2 -1}
!161 = !{!162, !163, i1 false, i2 1}
!162 = !{!"fixp", i32 -64, i32 49}
!163 = !{double 0xC093A28C63000000, double 0x4093A28C63000000}
!164 = !{!18, !163, i1 false, i2 1}
!165 = !{!53, !166, i1 false, i2 1}
!166 = !{double 0.000000e+00, double 0x41382244CAC486E5}
!167 = !{!26, !166, i1 false, i2 1}
!168 = !{!169, !170, i1 false, i2 1}
!169 = !{!"fixp", i32 -64, i32 52}
!170 = !{double -1.200000e+02, double 6.000000e+02}
!171 = !{!60, !170, i1 false, i2 1}
!172 = !{!173, !174, i1 false, i2 1}
!173 = !{!"fixp", i32 -64, i32 47}
!174 = !{double 0xC0CD73D294800000, double 0x40CD73D294800000}
!175 = !{!176, !174, i1 false, i2 1}
!176 = !{!"fixp", i32 -32, i32 17}
!177 = !{!178, !179, i1 false, i2 1}
!178 = !{!"fixp", i32 -64, i32 27}
!179 = !{double -1.200000e+10, double 6.000000e+10}
!180 = !{!181, !182, i1 false, i2 1}
!181 = !{!"fixp", i32 -64, i32 22}
!182 = !{double 0xC275F19B07566090, double 0x4275F19B07566090}
!183 = !{!158, !159, i1 false, i2 1}
!184 = !{!60, !159, i1 false, i2 1}
!185 = !{!186, !187, i1 false, i2 1}
!186 = !{!"fixp", i32 -64, i32 43}
!187 = !{double 0xC0D268639CD00000, double 0x4107027C84040000}
