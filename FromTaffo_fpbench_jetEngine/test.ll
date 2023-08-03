; ModuleID = '/tmp/tmp.L9C8DK8Z50/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.6 = private unnamed_addr constant [14 x i8] c"Values Begin\0A\00", align 1, !taffo.info !0
@.str.7 = private unnamed_addr constant [28 x i8] c"In: (%.8f, %.8f) Out: %.8f\0A\00", align 1, !taffo.info !0
@.str.8 = private unnamed_addr constant [12 x i8] c"Values End\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local float @ex0(float noundef %x1, float noundef %x2) #0 !taffo.start !8 !taffo.initweight !9 !taffo.equivalentChild !10 !taffo.funinfo !11 {
entry:
  %0 = fmul float 0x4170000000000000, %x1
  %1 = fptosi float %0 to i32
  %2 = fmul float 0x41A0000000000000, %x1
  %3 = fptoui float %2 to i32
  %4 = fmul float 0x41A0000000000000, %x1
  %5 = fptoui float %4 to i32
  %6 = fmul float 0x4170000000000000, %x1
  %7 = fptosi float %6 to i32
  %8 = fmul float 0x4170000000000000, %x1
  %9 = fptosi float %8 to i32
  %10 = fmul float 0x41A0000000000000, %x1
  %11 = fptoui float %10 to i32
  %12 = fmul float 0x41A0000000000000, %x1
  %13 = fptoui float %12 to i32
  %mul = fmul float 3.000000e+00, %x1, !taffo.constinfo !12
  %mul3 = fmul float 2.000000e+00, %x2, !taffo.constinfo !15
  %14 = call float @llvm.fmuladd.f32(float %mul, float %x1, float %mul3), !taffo.constinfo !18
  %15 = fmul float 0x4170000000000000, %14, !taffo.info !19
  %16 = fptosi float %15 to i32, !taffo.info !19
  %sub.s8_24fixp = sub i32 %16, %9, !taffo.info !19
  %mul5 = fmul float 3.000000e+00, %x1, !taffo.constinfo !12
  %mul7 = fmul float 2.000000e+00, %x2, !taffo.constinfo !15
  %neg = fneg float %mul7
  %17 = call float @llvm.fmuladd.f32(float %mul5, float %x1, float %neg), !taffo.constinfo !18
  %18 = fmul float 0x4170000000000000, %17, !taffo.info !19
  %19 = fptosi float %18 to i32, !taffo.info !19
  %sub8.s8_24fixp = sub i32 %19, %7, !taffo.info !19
  %20 = lshr i32 -2147483648, 4
  %21 = zext i32 %13 to i64
  %22 = zext i32 %11 to i64
  %23 = mul i64 %21, %22, !taffo.info !22
  %24 = lshr i64 %23, 27
  %25 = trunc i64 %24 to i32
  %u5_27fixp = add i32 %25, %20, !taffo.info !25
  %26 = sext i32 %sub.s8_24fixp to i64, !taffo.info !19
  %27 = shl i64 %26, 24, !taffo.info !19
  %28 = zext i32 %u5_27fixp to i64, !taffo.info !25
  %29 = lshr i64 %28, 1, !taffo.info !25
  %30 = sdiv i64 %27, %29, !taffo.info !27
  %div.s10_22fixp = trunc i64 %30 to i32, !taffo.info !29
  %31 = sext i32 %sub8.s8_24fixp to i64, !taffo.info !19
  %32 = shl i64 %31, 26, !taffo.info !19
  %33 = zext i32 %u5_27fixp to i64, !taffo.info !25
  %34 = lshr i64 %33, 1, !taffo.info !25
  %35 = sdiv i64 %32, %34, !taffo.info !31
  %div13.s8_24fixp = trunc i64 %35 to i32, !taffo.info !19
  %mul15 = fmul float 2.000000e+00, %x1, !taffo.constinfo !15
  %36 = fmul float 0x4170000000000000, %mul15, !taffo.info !19, !taffo.constinfo !15
  %37 = fptosi float %36 to i32, !taffo.info !19
  %38 = sext i32 %37 to i64, !taffo.info !19
  %39 = sext i32 %div.s10_22fixp to i64, !taffo.info !29
  %40 = mul i64 %38, %39, !taffo.info !33
  %41 = ashr i64 %40, 22, !taffo.info !33
  %mul16.s8_24fixp = trunc i64 %41 to i32, !taffo.info !19
  %42 = shl i32 %div.s10_22fixp, 2, !taffo.info !29
  %43 = lshr i32 -1073741824, 6
  %sub17.s8_24fixp = sub i32 %42, %43, !taffo.info !35, !taffo.constinfo !37
  %mul19 = fmul float %x1, %x1
  %44 = ashr i32 -1610612736, 6
  %45 = zext i32 4 to i64
  %46 = sext i32 %div.s10_22fixp to i64, !taffo.info !29
  %47 = mul i64 %45, %46, !taffo.info !38
  %48 = trunc i64 %47 to i32
  %s10_22fixp = add i32 %48, %44, !taffo.info !40
  %49 = fmul float 0x4150000000000000, %mul19, !taffo.info !29
  %50 = fptosi float %49 to i32, !taffo.info !29
  %51 = sext i32 %50 to i64, !taffo.info !29
  %52 = sext i32 %s10_22fixp to i64, !taffo.info !40
  %53 = mul i64 %51, %52, !taffo.info !41
  %54 = ashr i64 %53, 22, !taffo.info !41
  %mul21.s10_22fixp = trunc i64 %54 to i32, !taffo.info !29
  %55 = shl i32 %mul21.s10_22fixp, 2, !taffo.info !29
  %56 = sext i32 %mul16.s8_24fixp to i64, !taffo.info !19
  %57 = sext i32 %sub17.s8_24fixp to i64, !taffo.info !35
  %58 = mul i64 %56, %57, !taffo.info !43
  %59 = ashr i64 %58, 24
  %60 = trunc i64 %59 to i32
  %s8_24fixp = add i32 %60, %55, !taffo.info !19
  %mul23 = fmul float 3.000000e+00, %x1, !taffo.constinfo !12
  %mul24 = fmul float %mul23, %x1
  %61 = fmul float 0x4170000000000000, %mul24, !taffo.info !19
  %62 = fptosi float %61 to i32, !taffo.info !19
  %63 = sext i32 %62 to i64, !taffo.info !19
  %64 = sext i32 %div.s10_22fixp to i64, !taffo.info !29
  %65 = mul i64 %63, %64, !taffo.info !33
  %66 = ashr i64 %65, 22, !taffo.info !33
  %mul25.s8_24fixp = trunc i64 %66 to i32, !taffo.info !19
  %67 = shl i32 %mul25.s8_24fixp, 3, !taffo.info !19
  %68 = sext i32 %s8_24fixp to i64, !taffo.info !19
  %69 = zext i32 %u5_27fixp to i64, !taffo.info !25
  %70 = mul i64 %68, %69, !taffo.info !45
  %71 = lshr i64 %70, 24
  %72 = trunc i64 %71 to i32
  %u5_27fixp1 = add i32 %72, %67, !taffo.info !25
  %mul26 = fmul float %x1, %x1
  %73 = fmul float 0x41A0000000000000, %mul26, !taffo.info !25
  %74 = fptoui float %73 to i32, !taffo.info !25
  %75 = zext i32 %74 to i64, !taffo.info !25
  %76 = zext i32 %5 to i64
  %77 = mul i64 %75, %76, !taffo.info !22
  %78 = lshr i64 %77, 27
  %79 = trunc i64 %78 to i32
  %u5_27fixp2 = add i32 %79, %u5_27fixp1, !taffo.info !25
  %add.u5_27fixp = add i32 %u5_27fixp2, %3, !taffo.info !25
  %80 = lshr i32 %add.u5_27fixp, 3, !taffo.info !25
  %81 = zext i32 3 to i64
  %82 = sext i32 %div13.s8_24fixp to i64, !taffo.info !19
  %83 = mul i64 %81, %82, !taffo.info !31
  %84 = trunc i64 %83 to i32
  %s8_24fixp3 = add i32 %84, %80, !taffo.info !19
  %add29.s8_24fixp = add i32 %1, %s8_24fixp3, !taffo.info !19
  %85 = sitofp i32 %add29.s8_24fixp to float, !taffo.info !19
  %86 = fdiv float %85, 0x4170000000000000, !taffo.info !19
  ret float %86, !taffo.info !47, !taffo.initweight !48, !taffo.target !49
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare !taffo.initweight !50 !taffo.funinfo !51 float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(float* noundef %arr, float* noundef %res) #0 !taffo.start !8 !taffo.initweight !9 !taffo.funinfo !11 {
entry:
  %x1.u3_29fixp = alloca [100 x i32], align 16, !taffo.info !52, !taffo.target !55
  %x2.s4_28fixp = alloca [100 x i32], align 16, !taffo.info !56, !taffo.target !59
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !60
  %cmp = icmp slt i32 %i.0, 100, !taffo.info !62
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 2, !taffo.info !64, !taffo.constinfo !66
  %idxprom = sext i32 %mul to i64, !taffo.info !64
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %.flt1 = load float, float* %arrayidx, align 4, !taffo.info !52, !taffo.initweight !67, !taffo.target !55
  %0 = fmul float 0x41C0000000000000, %.flt1, !taffo.info !52, !taffo.target !55
  %.flt1.fallback.u3_29fixp = fptoui float %0 to i32, !taffo.info !52, !taffo.target !55
  %idxprom3 = sext i32 %i.0 to i64, !taffo.info !68
  %arrayidx4.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom3, !taffo.info !52, !taffo.target !55
  store i32 %.flt1.fallback.u3_29fixp, i32* %arrayidx4.u3_29fixp, align 4, !taffo.info !70, !taffo.target !55
  %mul5 = mul nsw i32 %i.0, 2, !taffo.info !64, !taffo.constinfo !66
  %add = add nsw i32 %mul5, 1, !taffo.info !71, !taffo.constinfo !66
  %idxprom6 = sext i32 %add to i64, !taffo.info !71
  %arrayidx7 = getelementptr inbounds float, float* %arr, i64 %idxprom6
  %.flt = load float, float* %arrayidx7, align 4, !taffo.info !56, !taffo.initweight !67, !taffo.target !59
  %1 = fmul float 0x41B0000000000000, %.flt, !taffo.info !56, !taffo.target !59
  %.flt.fallback.s4_28fixp = fptosi float %1 to i32, !taffo.info !56, !taffo.target !59
  %idxprom8 = sext i32 %i.0 to i64, !taffo.info !68
  %arrayidx9.s4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x2.s4_28fixp, i64 0, i64 %idxprom8, !taffo.info !56, !taffo.target !59
  store i32 %.flt.fallback.s4_28fixp, i32* %arrayidx9.s4_28fixp, align 4, !taffo.info !73, !taffo.target !59
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !66
  br label %for.cond, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc26, %for.end
  %i10.0 = phi i32 [ 0, %for.end ], [ %inc27, %for.inc26 ], !taffo.info !78
  %cmp12 = icmp slt i32 %i10.0, 1, !taffo.info !62
  br i1 %cmp12, label %for.body13, label %for.end28

for.body13:                                       ; preds = %for.cond11
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc23, %for.body13
  %j.0 = phi i32 [ 0, %for.body13 ], [ %inc24, %for.inc23 ], !taffo.info !80
  %cmp15 = icmp slt i32 %j.0, 100, !taffo.info !62
  br i1 %cmp15, label %for.body16, label %for.end25

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %j.0 to i64, !taffo.info !82
  %arrayidx18.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom17, !taffo.info !52, !taffo.target !55
  %u3_29fixp = load i32, i32* %arrayidx18.u3_29fixp, align 4, !taffo.info !84, !taffo.target !55
  %idxprom19 = sext i32 %j.0 to i64, !taffo.info !82
  %arrayidx20.s4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x2.s4_28fixp, i64 0, i64 %idxprom19, !taffo.info !56, !taffo.target !59
  %s4_28fixp = load i32, i32* %arrayidx20.s4_28fixp, align 4, !taffo.info !86, !taffo.target !59
  %2 = lshr i32 %u3_29fixp, 1, !taffo.info !84, !taffo.target !55
  %3 = ashr i32 %s4_28fixp, 1, !taffo.info !86, !taffo.target !59
  %call.s22_10fixp = call i32 @ex0.1_s22_10fixp(i32 %2, i32 %3), !taffo.info !88, !taffo.constinfo !91, !taffo.target !55
  %4 = sitofp i32 %call.s22_10fixp to float, !taffo.info !88, !taffo.target !55
  %5 = fdiv float %4, 1.024000e+03, !taffo.info !88, !taffo.target !55
  %idxprom21 = sext i32 %j.0 to i64, !taffo.info !82
  %arrayidx22 = getelementptr inbounds float, float* %res, i64 %idxprom21
  store float %5, float* %arrayidx22, align 4, !taffo.info !70, !taffo.target !55
  br label %for.inc23

for.inc23:                                        ; preds = %for.body16
  %inc24 = add nsw i32 %j.0, 1, !taffo.info !92, !taffo.constinfo !66
  br label %for.cond14, !llvm.loop !94

for.end25:                                        ; preds = %for.cond14
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %inc27 = add nsw i32 %i10.0, 1, !taffo.info !95, !taffo.constinfo !66
  br label %for.cond11, !llvm.loop !97

for.end28:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !98 !taffo.funinfo !98 {
entry:
  %arr = alloca [200 x float], align 16
  %res = alloca [100 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add8, %for.inc ]
  %cmp = icmp slt i32 %i.0, 200
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %i.0, 2, !taffo.constinfo !66
  %conv = sitofp i32 %add to float
  %mul = fmul float %conv, 5.000000e+00, !taffo.constinfo !99
  %div = fdiv float %mul, 2.000000e+02, !taffo.constinfo !102
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 %idxprom
  store float %div, float* %arrayidx, align 4
  %add1 = add nsw i32 %i.0, 2, !taffo.constinfo !66
  %conv2 = sitofp i32 %add1 to float
  %mul3 = fmul float %conv2, 1.000000e+01, !taffo.constinfo !105
  %div4 = fdiv float %mul3, 2.000000e+02, !taffo.constinfo !102
  %sub = fsub float %div4, 5.000000e+00, !taffo.constinfo !99
  %add5 = add nsw i32 %i.0, 1, !taffo.constinfo !66
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 %idxprom6
  store float %sub, float* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %add8 = add nsw i32 %i.0, 2, !taffo.constinfo !66
  br label %for.cond, !llvm.loop !108

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 0
  call void @test(float* noundef %arraydecay, float* noundef %arraydecay9), !taffo.constinfo !91
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !66
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc27, %for.end
  %j.0 = phi i32 [ 0, %for.end ], [ %inc, %for.inc27 ]
  %cmp11 = icmp slt i32 %j.0, 100
  br i1 %cmp11, label %for.body13, label %for.end28

for.body13:                                       ; preds = %for.cond10
  %mul14 = mul nsw i32 %j.0, 2, !taffo.constinfo !66
  %idxprom15 = sext i32 %mul14 to i64
  %arrayidx16 = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 %idxprom15
  %0 = load float, float* %arrayidx16, align 4
  %conv17 = fpext float %0 to double
  %mul18 = mul nsw i32 %j.0, 2, !taffo.constinfo !66
  %add19 = add nsw i32 %mul18, 1, !taffo.constinfo !66
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 %idxprom20
  %1 = load float, float* %arrayidx21, align 4
  %conv22 = fpext float %1 to double
  %idxprom23 = sext i32 %j.0 to i64
  %arrayidx24 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 %idxprom23
  %2 = load float, float* %arrayidx24, align 4
  %conv25 = fpext float %2 to double
  %call26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), double noundef %conv17, double noundef %conv22, double noundef %conv25), !taffo.constinfo !109
  br label %for.inc27

for.inc27:                                        ; preds = %for.body13
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !66
  br label %for.cond10, !llvm.loop !110

for.end28:                                        ; preds = %for.cond10
  %call29 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0)), !taffo.constinfo !66
  ret i32 0
}

declare !taffo.initweight !111 !taffo.funinfo !112 i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ex0.1_s22_10fixp(i32 noundef %x1.u4_28fixp, i32 noundef %x2.s5_27fixp) #0 !taffo.start !8 !taffo.initweight !113 !taffo.funinfo !114 !taffo.sourceFunction !115 {
entry:
  %0 = zext i32 3 to i64
  %1 = zext i32 %x1.u4_28fixp to i64, !taffo.info !84
  %2 = mul i64 %0, %1, !taffo.info !116, !taffo.constinfo !12
  %mul.u4_28fixp = trunc i64 %2 to i32, !taffo.info !119
  %3 = zext i32 2 to i64
  %4 = sext i32 %x2.s5_27fixp to i64, !taffo.info !86
  %5 = mul i64 %3, %4, !taffo.info !120, !taffo.constinfo !15
  %mul3.s5_27fixp = trunc i64 %5 to i32, !taffo.info !123
  %6 = ashr i32 %mul3.s5_27fixp, 3, !taffo.info !123
  %7 = zext i32 %mul.u4_28fixp to i64, !taffo.info !119
  %8 = zext i32 %x1.u4_28fixp to i64, !taffo.info !84
  %9 = mul i64 %7, %8, !taffo.info !124
  %10 = ashr i64 %9, 32
  %11 = trunc i64 %10 to i32
  %s8_24fixp = add i32 %11, %6, !taffo.info !127
  %12 = lshr i32 %x1.u4_28fixp, 4, !taffo.info !84
  %sub.s8_24fixp = sub i32 %s8_24fixp, %12, !taffo.info !19
  %13 = zext i32 3 to i64
  %14 = zext i32 %x1.u4_28fixp to i64, !taffo.info !84
  %15 = mul i64 %13, %14, !taffo.info !116, !taffo.constinfo !12
  %mul5.u4_28fixp = trunc i64 %15 to i32, !taffo.info !119
  %16 = zext i32 2 to i64
  %17 = sext i32 %x2.s5_27fixp to i64, !taffo.info !86
  %18 = mul i64 %16, %17, !taffo.info !120, !taffo.constinfo !15
  %mul7.s5_27fixp = trunc i64 %18 to i32, !taffo.info !123
  %neg.s5_27fixp = sub i32 0, %mul7.s5_27fixp, !taffo.info !123
  %19 = ashr i32 %neg.s5_27fixp, 3, !taffo.info !123
  %20 = zext i32 %mul5.u4_28fixp to i64, !taffo.info !119
  %21 = zext i32 %x1.u4_28fixp to i64, !taffo.info !84
  %22 = mul i64 %20, %21, !taffo.info !124
  %23 = ashr i64 %22, 32
  %24 = trunc i64 %23 to i32
  %s8_24fixp1 = add i32 %24, %19, !taffo.info !127
  %25 = lshr i32 %x1.u4_28fixp, 4, !taffo.info !84
  %sub8.s8_24fixp = sub i32 %s8_24fixp1, %25, !taffo.info !19
  %26 = lshr i32 -2147483648, 4
  %27 = zext i32 %x1.u4_28fixp to i64, !taffo.info !84
  %28 = zext i32 %x1.u4_28fixp to i64, !taffo.info !84
  %29 = mul i64 %27, %28, !taffo.info !128
  %30 = lshr i64 %29, 29
  %31 = trunc i64 %30 to i32
  %u5_27fixp = add i32 %31, %26, !taffo.info !25
  %32 = sext i32 %sub.s8_24fixp to i64, !taffo.info !19
  %33 = shl i64 %32, 24, !taffo.info !19
  %34 = zext i32 %u5_27fixp to i64, !taffo.info !25
  %35 = lshr i64 %34, 1, !taffo.info !25
  %36 = sdiv i64 %33, %35, !taffo.info !27
  %div.s10_22fixp = trunc i64 %36 to i32, !taffo.info !29
  %37 = sext i32 %sub8.s8_24fixp to i64, !taffo.info !19
  %38 = shl i64 %37, 26, !taffo.info !19
  %39 = zext i32 %u5_27fixp to i64, !taffo.info !25
  %40 = lshr i64 %39, 1, !taffo.info !25
  %41 = sdiv i64 %38, %40, !taffo.info !31
  %div13.s8_24fixp = trunc i64 %41 to i32, !taffo.info !19
  %42 = zext i32 2 to i64
  %43 = zext i32 %x1.u4_28fixp to i64, !taffo.info !84
  %44 = mul i64 %42, %43, !taffo.info !130, !taffo.constinfo !15
  %mul15.u4_28fixp = trunc i64 %44 to i32, !taffo.info !132
  %45 = zext i32 %mul15.u4_28fixp to i64, !taffo.info !132
  %46 = sext i32 %div.s10_22fixp to i64, !taffo.info !29
  %47 = mul i64 %45, %46, !taffo.info !133
  %48 = ashr i64 %47, 29, !taffo.info !133
  %mul16.s11_21fixp = trunc i64 %48 to i32, !taffo.info !136
  %49 = shl i32 %div.s10_22fixp, 2, !taffo.info !29
  %50 = lshr i32 -1073741824, 6
  %sub17.s8_24fixp = sub i32 %49, %50, !taffo.info !35, !taffo.constinfo !37
  %51 = zext i32 %x1.u4_28fixp to i64, !taffo.info !84
  %52 = zext i32 %x1.u4_28fixp to i64, !taffo.info !84
  %53 = mul i64 %51, %52, !taffo.info !138
  %54 = lshr i64 %53, 29, !taffo.info !138
  %mul19.u5_27fixp = trunc i64 %54 to i32, !taffo.info !140
  %55 = ashr i32 -1610612736, 6
  %56 = zext i32 4 to i64
  %57 = sext i32 %div.s10_22fixp to i64, !taffo.info !29
  %58 = mul i64 %56, %57, !taffo.info !38
  %59 = trunc i64 %58 to i32
  %s10_22fixp = add i32 %59, %55, !taffo.info !40
  %60 = zext i32 %mul19.u5_27fixp to i64, !taffo.info !140
  %61 = sext i32 %s10_22fixp to i64, !taffo.info !40
  %62 = mul i64 %60, %61, !taffo.info !141
  %63 = ashr i64 %62, 32, !taffo.info !141
  %mul21.s15_17fixp = trunc i64 %63 to i32, !taffo.info !144
  %64 = ashr i32 %mul21.s15_17fixp, 3, !taffo.info !144
  %65 = sext i32 %mul16.s11_21fixp to i64, !taffo.info !136
  %66 = sext i32 %sub17.s8_24fixp to i64, !taffo.info !35
  %67 = mul i64 %65, %66, !taffo.info !146
  %68 = ashr i64 %67, 31
  %69 = trunc i64 %68 to i32
  %s18_14fixp = add i32 %69, %64, !taffo.info !149
  %70 = zext i32 3 to i64
  %71 = zext i32 %x1.u4_28fixp to i64, !taffo.info !84
  %72 = mul i64 %70, %71, !taffo.info !116, !taffo.constinfo !12
  %mul23.u4_28fixp = trunc i64 %72 to i32, !taffo.info !119
  %73 = zext i32 %mul23.u4_28fixp to i64, !taffo.info !119
  %74 = zext i32 %x1.u4_28fixp to i64, !taffo.info !84
  %75 = mul i64 %73, %74, !taffo.info !151
  %76 = lshr i64 %75, 31, !taffo.info !151
  %mul24.u7_25fixp = trunc i64 %76 to i32, !taffo.info !153
  %77 = zext i32 %mul24.u7_25fixp to i64, !taffo.info !153
  %78 = sext i32 %div.s10_22fixp to i64, !taffo.info !29
  %79 = mul i64 %77, %78, !taffo.info !155
  %80 = ashr i64 %79, 29, !taffo.info !155
  %mul25.s14_18fixp = trunc i64 %80 to i32, !taffo.info !158
  %81 = ashr i32 %mul25.s14_18fixp, 8, !taffo.info !158
  %82 = sext i32 %s18_14fixp to i64, !taffo.info !149
  %83 = zext i32 %u5_27fixp to i64, !taffo.info !25
  %84 = mul i64 %82, %83, !taffo.info !160
  %85 = ashr i64 %84, 31
  %86 = trunc i64 %85 to i32
  %s22_10fixp = add i32 %86, %81, !taffo.info !163
  %87 = zext i32 %x1.u4_28fixp to i64, !taffo.info !84
  %88 = zext i32 %x1.u4_28fixp to i64, !taffo.info !84
  %89 = mul i64 %87, %88, !taffo.info !138
  %90 = lshr i64 %89, 29, !taffo.info !138
  %mul26.u5_27fixp = trunc i64 %90 to i32, !taffo.info !140
  %91 = zext i32 %mul26.u5_27fixp to i64, !taffo.info !140
  %92 = zext i32 %x1.u4_28fixp to i64, !taffo.info !84
  %93 = mul i64 %91, %92, !taffo.info !164
  %94 = ashr i64 %93, 45
  %95 = trunc i64 %94 to i32
  %s22_10fixp2 = add i32 %95, %s22_10fixp, !taffo.info !167
  %96 = lshr i32 %x1.u4_28fixp, 18, !taffo.info !84
  %add.s22_10fixp = add i32 %s22_10fixp2, %96, !taffo.info !168
  %97 = zext i32 3 to i64
  %98 = sext i32 %div13.s8_24fixp to i64, !taffo.info !19
  %99 = mul i64 %97, %98, !taffo.info !170
  %100 = ashr i64 %99, 14
  %101 = trunc i64 %100 to i32
  %s22_10fixp3 = add i32 %101, %add.s22_10fixp, !taffo.info !172
  %102 = lshr i32 %x1.u4_28fixp, 18, !taffo.info !84
  %add29.s22_10fixp = add i32 %102, %s22_10fixp3, !taffo.info !173
  ret i32 %add29.s22_10fixp, !taffo.info !47, !taffo.initweight !48, !taffo.target !49
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = distinct !{null}
!11 = !{i32 0, i1 false, i32 0, i1 false}
!12 = !{!13, i1 false}
!13 = !{i1 false, !14, i1 false, i2 0}
!14 = !{double 3.000000e+00, double 3.000000e+00}
!15 = !{!16, i1 false}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 2.000000e+00, double 2.000000e+00}
!18 = !{i1 false, i1 false, i1 false, i1 false}
!19 = !{!20, !21, i1 false, i2 1}
!20 = !{!"fixp", i32 -32, i32 24}
!21 = !{double -1.500000e+01, double 8.500000e+01}
!22 = !{!23, !24, i1 false, i2 1}
!23 = !{!"fixp", i32 64, i32 54}
!24 = !{double 1.000000e+00, double 2.600000e+01}
!25 = !{!26, !24, i1 false, i2 1}
!26 = !{!"fixp", i32 32, i32 27}
!27 = !{!28, !21, i1 false, i2 1}
!28 = !{!"fixp", i32 -64, i32 22}
!29 = !{!30, !21, i1 false, i2 1}
!30 = !{!"fixp", i32 -32, i32 22}
!31 = !{!32, !21, i1 false, i2 1}
!32 = !{!"fixp", i32 -64, i32 24}
!33 = !{!34, !21, i1 false, i2 1}
!34 = !{!"fixp", i32 -64, i32 46}
!35 = !{!20, !36, i1 false, i2 1}
!36 = !{double -1.800000e+01, double 8.200000e+01}
!37 = !{i1 false, !13}
!38 = !{!28, !39, i1 false, i2 1}
!39 = !{double -6.600000e+01, double 3.340000e+02}
!40 = !{!30, !39, i1 false, i2 1}
!41 = !{!42, !21, i1 false, i2 1}
!42 = !{!"fixp", i32 -64, i32 44}
!43 = !{!44, !21, i1 false, i2 1}
!44 = !{!"fixp", i32 -64, i32 48}
!45 = !{!46, !24, i1 false, i2 1}
!46 = !{!"fixp", i32 64, i32 51}
!47 = !{i1 false, i1 false, i1 false, i2 1}
!48 = !{i32 2}
!49 = !{!"result"}
!50 = !{i32 -1, i32 -1, i32 -1}
!51 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!52 = !{!53, !54, i1 false, i2 -1}
!53 = !{!"fixp", i32 32, i32 29}
!54 = !{double 0.000000e+00, double 5.000000e+00}
!55 = !{!"test_x1"}
!56 = !{!57, !58, i1 false, i2 -1}
!57 = !{!"fixp", i32 -32, i32 28}
!58 = !{double -5.000000e+00, double 5.000000e+00}
!59 = !{!"test_x2"}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 0.000000e+00, double 1.010000e+02}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 1.000000e+00}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 2.000000e+02}
!66 = !{i1 false, i1 false}
!67 = !{i32 3}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0.000000e+00, double 1.000000e+02}
!70 = !{i1 false, !54, i1 false, i2 -1}
!71 = !{i1 false, !72, i1 false, i2 0}
!72 = !{double 1.000000e+00, double 2.010000e+02}
!73 = !{i1 false, !58, i1 false, i2 -1}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 1.000000e+00, double 1.010000e+02}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 0.000000e+00, double 2.000000e+00}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 0.000000e+00, double 2.020000e+02}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 0.000000e+00, double 2.010000e+02}
!84 = !{!85, !54, i1 false, i2 -1}
!85 = !{!"fixp", i32 32, i32 28}
!86 = !{!87, !58, i1 false, i2 -1}
!87 = !{!"fixp", i32 -32, i32 27}
!88 = !{!89, !90, i1 false, i2 -1}
!89 = !{!"fixp", i32 -32, i32 10}
!90 = !{double -4.418700e+05, double 0x413F116100000000}
!91 = !{i1 false, i1 false, i1 false}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 1.000000e+00, double 2.020000e+02}
!94 = distinct !{!94, !77}
!95 = !{i1 false, !96, i1 false, i2 0}
!96 = !{double 1.000000e+00, double 2.000000e+00}
!97 = distinct !{!97, !77}
!98 = !{}
!99 = !{i1 false, !100}
!100 = !{i1 false, !101, i1 false, i2 0}
!101 = !{double 5.000000e+00, double 5.000000e+00}
!102 = !{i1 false, !103}
!103 = !{i1 false, !104, i1 false, i2 0}
!104 = !{double 2.000000e+02, double 2.000000e+02}
!105 = !{i1 false, !106}
!106 = !{i1 false, !107, i1 false, i2 0}
!107 = !{double 1.000000e+01, double 1.000000e+01}
!108 = distinct !{!108, !77}
!109 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!110 = distinct !{!110, !77}
!111 = !{i32 -1}
!112 = !{i32 0, i1 false}
!113 = !{i32 3, i32 3}
!114 = !{i32 1, !84, i32 1, !86}
!115 = !{float (float, float)* @ex0}
!116 = !{!117, !118, i1 false, i2 -1}
!117 = !{!"fixp", i32 64, i32 28}
!118 = !{double 0.000000e+00, double 1.500000e+01}
!119 = !{!85, !118, i1 false, i2 -1}
!120 = !{!121, !122, i1 false, i2 -1}
!121 = !{!"fixp", i32 -64, i32 27}
!122 = !{double -1.000000e+01, double 1.000000e+01}
!123 = !{!87, !122, i1 false, i2 -1}
!124 = !{!125, !126, i1 false, i2 -1}
!125 = !{!"fixp", i32 -64, i32 56}
!126 = !{double -1.000000e+01, double 8.500000e+01}
!127 = !{!20, !126, i1 false, i2 -1}
!128 = !{!129, !24, i1 false, i2 1}
!129 = !{!"fixp", i32 64, i32 56}
!130 = !{!117, !131, i1 false, i2 -1}
!131 = !{double 0.000000e+00, double 1.000000e+01}
!132 = !{!85, !131, i1 false, i2 -1}
!133 = !{!134, !135, i1 false, i2 1}
!134 = !{!"fixp", i32 -64, i32 50}
!135 = !{double -1.500000e+02, double 8.500000e+02}
!136 = !{!137, !135, i1 false, i2 1}
!137 = !{!"fixp", i32 -32, i32 21}
!138 = !{!129, !139, i1 false, i2 -1}
!139 = !{double 0.000000e+00, double 2.500000e+01}
!140 = !{!26, !139, i1 false, i2 -1}
!141 = !{!142, !143, i1 false, i2 1}
!142 = !{!"fixp", i32 -64, i32 49}
!143 = !{double -1.650000e+03, double 8.350000e+03}
!144 = !{!145, !143, i1 false, i2 1}
!145 = !{!"fixp", i32 -32, i32 17}
!146 = !{!147, !148, i1 false, i2 1}
!147 = !{!"fixp", i32 -64, i32 45}
!148 = !{double -1.695000e+04, double 7.805000e+04}
!149 = !{!150, !148, i1 false, i2 1}
!150 = !{!"fixp", i32 -32, i32 14}
!151 = !{!129, !152, i1 false, i2 -1}
!152 = !{double 0.000000e+00, double 7.500000e+01}
!153 = !{!154, !152, i1 false, i2 -1}
!154 = !{!"fixp", i32 32, i32 25}
!155 = !{!156, !157, i1 false, i2 1}
!156 = !{!"fixp", i32 -64, i32 47}
!157 = !{double -1.125000e+03, double 6.375000e+03}
!158 = !{!159, !157, i1 false, i2 1}
!159 = !{!"fixp", i32 -32, i32 18}
!160 = !{!161, !162, i1 false, i2 1}
!161 = !{!"fixp", i32 -64, i32 41}
!162 = !{double -4.418250e+05, double 0x413F0FDB00000000}
!163 = !{!89, !162, i1 false, i2 1}
!164 = !{!165, !166, i1 false, i2 1}
!165 = !{!"fixp", i32 -64, i32 55}
!166 = !{double -4.418250e+05, double 2.035800e+06}
!167 = !{!89, !166, i1 false, i2 1}
!168 = !{!89, !169, i1 false, i2 1}
!169 = !{double -4.418250e+05, double 0x413F105D00000000}
!170 = !{!32, !171, i1 false, i2 1}
!171 = !{double -4.418700e+05, double 2.036060e+06}
!172 = !{!89, !171, i1 false, i2 1}
!173 = !{!89, !90, i1 false, i2 1}
