; ModuleID = '/tmp/tmp.neVre53SrD/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.3 = private unnamed_addr constant [14 x i8] c"Values Begin\0A\00", align 1, !taffo.info !0
@.str.4 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1, !taffo.info !2
@.str.5 = private unnamed_addr constant [12 x i8] c"Values End\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test(float* %arr) #0 !taffo.start !6 !taffo.initweight !7 !taffo.funinfo !8 {
entry:
  %res = alloca [100 x float], align 16, !taffo.info !9
  %x1.u3_29fixp = alloca [100 x i32], align 16, !taffo.info !11, !taffo.target !14
  %x2.s4_28fixp = alloca [100 x i32], align 16, !taffo.info !15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !18
  %cmp = icmp slt i32 %i.0, 100, !taffo.info !20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 2, !taffo.info !22, !taffo.constinfo !24
  %idxprom = sext i32 %mul to i64, !taffo.info !22
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %1 = fmul float 0x41C0000000000000, %0, !taffo.info !25
  %2 = fptoui float %1 to i32, !taffo.info !25
  %idxprom3 = sext i32 %i.0 to i64, !taffo.info !25
  %arrayidx4.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom3, !taffo.info !11, !taffo.target !14
  store i32 %2, i32* %arrayidx4.u3_29fixp, align 4, !taffo.info !27, !taffo.target !14
  %mul5 = mul nsw i32 %i.0, 2, !taffo.info !22, !taffo.constinfo !24
  %add = add nsw i32 %mul5, 1, !taffo.info !28, !taffo.constinfo !24
  %idxprom6 = sext i32 %add to i64, !taffo.info !28
  %arrayidx7 = getelementptr inbounds float, float* %arr, i64 %idxprom6
  %3 = load float, float* %arrayidx7, align 4
  %4 = fmul float 0x41B0000000000000, %3, !taffo.info !25
  %5 = fptosi float %4 to i32, !taffo.info !25
  %idxprom8 = sext i32 %i.0 to i64, !taffo.info !25
  %arrayidx9.s4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x2.s4_28fixp, i64 0, i64 %idxprom8, !taffo.info !15
  store i32 %5, i32* %arrayidx9.s4_28fixp, align 4, !taffo.info !30
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !31, !taffo.constinfo !24
  br label %for.cond, !llvm.loop !33

for.end:                                          ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc95, %for.end
  %i10.0 = phi i32 [ 0, %for.end ], [ %inc96, %for.inc95 ], !taffo.info !35
  %cmp12 = icmp slt i32 %i10.0, 10, !taffo.info !20
  br i1 %cmp12, label %for.body13, label %for.end97

for.body13:                                       ; preds = %for.cond11
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc92, %for.body13
  %j.0 = phi i32 [ 0, %for.body13 ], [ %inc93, %for.inc92 ], !taffo.info !37
  %cmp15 = icmp slt i32 %j.0, 100, !taffo.info !20
  br i1 %cmp15, label %for.body16, label %for.end94

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx18.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom17, !taffo.info !11, !taffo.target !14
  %u3_29fixp17 = load i32, i32* %arrayidx18.u3_29fixp, align 4, !taffo.info !41, !taffo.target !14
  %6 = zext i32 %u3_29fixp17 to i64, !taffo.info !41, !taffo.target !14
  %7 = mul i64 3, %6, !taffo.info !43, !taffo.target !14, !taffo.constinfo !46
  %8 = lshr i64 %7, 1, !taffo.info !43, !taffo.target !14, !taffo.constinfo !46
  %mul19.u4_28fixp = trunc i64 %8 to i32, !taffo.info !50, !taffo.target !14
  %idxprom20 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx21.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom20, !taffo.info !11, !taffo.target !14
  %u3_29fixp16 = load i32, i32* %arrayidx21.u3_29fixp, align 4, !taffo.info !11, !taffo.target !14
  %9 = zext i32 %mul19.u4_28fixp to i64, !taffo.info !50, !taffo.target !14
  %10 = zext i32 %u3_29fixp16 to i64, !taffo.info !11, !taffo.target !14
  %11 = mul i64 %9, %10, !taffo.info !51, !taffo.target !14
  %12 = ashr i64 %11, 33, !taffo.info !51, !taffo.target !14
  %mul22.s8_24fixp = trunc i64 %12 to i32, !taffo.info !54, !taffo.target !14
  %idxprom23 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx24.s4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x2.s4_28fixp, i64 0, i64 %idxprom23, !taffo.info !15
  %s4_28fixp18 = load i32, i32* %arrayidx24.s4_28fixp, align 4, !taffo.info !56
  %13 = sext i32 %s4_28fixp18 to i64, !taffo.info !56
  %14 = mul i64 2, %13, !taffo.info !58, !taffo.constinfo !61
  %15 = ashr i64 %14, 1, !taffo.info !58, !taffo.constinfo !61
  %mul25.s5_27fixp = trunc i64 %15 to i32, !taffo.info !64
  %16 = ashr i32 %mul25.s5_27fixp, 3, !taffo.info !64
  %add26.s8_24fixp = add i32 %mul22.s8_24fixp, %16, !taffo.info !65, !taffo.target !14
  %idxprom27 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx28.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom27, !taffo.info !11, !taffo.target !14
  %u3_29fixp15 = load i32, i32* %arrayidx28.u3_29fixp, align 4, !taffo.info !11, !taffo.target !14
  %17 = lshr i32 %u3_29fixp15, 5, !taffo.info !11, !taffo.target !14
  %sub.s8_24fixp = sub i32 %add26.s8_24fixp, %17, !taffo.info !67, !taffo.target !14
  %18 = sitofp i32 %sub.s8_24fixp to float, !taffo.info !67, !taffo.target !14
  %19 = fdiv float %18, 0x4170000000000000, !taffo.info !67, !taffo.target !14
  %idxprom29 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx30.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom29, !taffo.info !11, !taffo.target !14
  %u3_29fixp14 = load i32, i32* %arrayidx30.u3_29fixp, align 4, !taffo.info !41, !taffo.target !14
  %20 = zext i32 %u3_29fixp14 to i64, !taffo.info !41, !taffo.target !14
  %21 = mul i64 3, %20, !taffo.info !43, !taffo.target !14, !taffo.constinfo !46
  %22 = lshr i64 %21, 1, !taffo.info !43, !taffo.target !14, !taffo.constinfo !46
  %mul31.u4_28fixp = trunc i64 %22 to i32, !taffo.info !50, !taffo.target !14
  %idxprom32 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx33.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom32, !taffo.info !11, !taffo.target !14
  %u3_29fixp13 = load i32, i32* %arrayidx33.u3_29fixp, align 4, !taffo.info !11, !taffo.target !14
  %23 = zext i32 %mul31.u4_28fixp to i64, !taffo.info !50, !taffo.target !14
  %24 = zext i32 %u3_29fixp13 to i64, !taffo.info !11, !taffo.target !14
  %25 = mul i64 %23, %24, !taffo.info !51, !taffo.target !14
  %26 = ashr i64 %25, 33, !taffo.info !51, !taffo.target !14
  %mul34.s8_24fixp = trunc i64 %26 to i32, !taffo.info !54, !taffo.target !14
  %idxprom35 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx36.s4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x2.s4_28fixp, i64 0, i64 %idxprom35, !taffo.info !15
  %s4_28fixp = load i32, i32* %arrayidx36.s4_28fixp, align 4, !taffo.info !56
  %27 = sext i32 %s4_28fixp to i64, !taffo.info !56
  %28 = mul i64 2, %27, !taffo.info !58, !taffo.constinfo !61
  %29 = ashr i64 %28, 1, !taffo.info !58, !taffo.constinfo !61
  %mul37.s5_27fixp = trunc i64 %29 to i32, !taffo.info !64
  %30 = ashr i32 %mul37.s5_27fixp, 3, !taffo.info !64
  %sub38.s8_24fixp = sub i32 %mul34.s8_24fixp, %30, !taffo.info !65, !taffo.target !14
  %idxprom39 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx40.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom39, !taffo.info !11, !taffo.target !14
  %u3_29fixp12 = load i32, i32* %arrayidx40.u3_29fixp, align 4, !taffo.info !11, !taffo.target !14
  %31 = lshr i32 %u3_29fixp12, 5, !taffo.info !11, !taffo.target !14
  %sub41.s8_24fixp = sub i32 %sub38.s8_24fixp, %31, !taffo.info !67, !taffo.target !14
  %32 = sitofp i32 %sub41.s8_24fixp to float, !taffo.info !67, !taffo.target !14
  %33 = fdiv float %32, 0x4170000000000000, !taffo.info !67, !taffo.target !14
  %idxprom42 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx43.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom42, !taffo.info !11, !taffo.target !14
  %u3_29fixp11 = load i32, i32* %arrayidx43.u3_29fixp, align 4, !taffo.info !69, !taffo.target !14
  %idxprom44 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx45.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom44, !taffo.info !11, !taffo.target !14
  %u3_29fixp10 = load i32, i32* %arrayidx45.u3_29fixp, align 4, !taffo.info !69, !taffo.target !14
  %34 = zext i32 %u3_29fixp11 to i64, !taffo.info !69, !taffo.target !14
  %35 = zext i32 %u3_29fixp10 to i64, !taffo.info !69, !taffo.target !14
  %36 = mul i64 %34, %35, !taffo.info !71, !taffo.target !14
  %37 = lshr i64 %36, 31, !taffo.info !71, !taffo.target !14
  %mul46.u5_27fixp = trunc i64 %37 to i32, !taffo.info !74, !taffo.target !14
  %add47.u5_27fixp = add i32 %mul46.u5_27fixp, 134217728, !taffo.info !75, !taffo.target !14, !taffo.constinfo !77
  %38 = uitofp i32 %add47.u5_27fixp to float, !taffo.info !75, !taffo.target !14
  %39 = fdiv float %38, 0x41A0000000000000, !taffo.info !75, !taffo.target !14, !taffo.constinfo !77
  %40 = uitofp i32 %add47.u5_27fixp to float, !taffo.info !75, !taffo.target !14
  %41 = fdiv float %40, 0x41A0000000000000, !taffo.info !75, !taffo.target !14, !taffo.constinfo !77
  %div = fdiv float %19, %39, !taffo.info !80
  %div48 = fdiv float %33, %41, !taffo.info !80
  %idxprom49 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx50.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom49, !taffo.info !11, !taffo.target !14
  %u3_29fixp9 = load i32, i32* %arrayidx50.u3_29fixp, align 4, !taffo.info !11, !taffo.target !14
  %idxprom51 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx52.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom51, !taffo.info !11, !taffo.target !14
  %u3_29fixp8 = load i32, i32* %arrayidx52.u3_29fixp, align 4, !taffo.info !41, !taffo.target !14
  %42 = zext i32 %u3_29fixp8 to i64, !taffo.info !41, !taffo.target !14
  %43 = mul i64 2, %42, !taffo.info !81, !taffo.target !14, !taffo.constinfo !61
  %44 = lshr i64 %43, 1, !taffo.info !81, !taffo.target !14, !taffo.constinfo !61
  %mul53.u4_28fixp = trunc i64 %44 to i32, !taffo.info !83, !taffo.target !14
  %45 = fmul float 0x4170000000000000, %div, !taffo.info !80
  %46 = fptosi float %45 to i32, !taffo.info !80
  %47 = zext i32 %mul53.u4_28fixp to i64, !taffo.info !83, !taffo.target !14
  %48 = sext i32 %46 to i64, !taffo.info !80
  %49 = mul i64 %47, %48, !taffo.info !84, !taffo.target !14
  %50 = ashr i64 %49, 31, !taffo.info !84, !taffo.target !14
  %mul54.s11_21fixp = trunc i64 %50 to i32, !taffo.info !87, !taffo.target !14
  %sub55 = fsub float %div, 3.000000e+00, !taffo.info !89, !taffo.constinfo !91
  %51 = fmul float 0x4170000000000000, %sub55, !taffo.info !89, !taffo.constinfo !91
  %52 = fptosi float %51 to i32, !taffo.info !89
  %53 = sext i32 %mul54.s11_21fixp to i64, !taffo.info !87, !taffo.target !14
  %54 = sext i32 %52 to i64, !taffo.info !89
  %55 = mul i64 %53, %54, !taffo.info !93, !taffo.target !14
  %56 = ashr i64 %55, 31, !taffo.info !93, !taffo.target !14
  %mul56.s18_14fixp = trunc i64 %56 to i32, !taffo.info !96, !taffo.target !14
  %idxprom57 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx58.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom57, !taffo.info !11, !taffo.target !14
  %u3_29fixp7 = load i32, i32* %arrayidx58.u3_29fixp, align 4, !taffo.info !69, !taffo.target !14
  %idxprom59 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx60.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom59, !taffo.info !11, !taffo.target !14
  %u3_29fixp6 = load i32, i32* %arrayidx60.u3_29fixp, align 4, !taffo.info !69, !taffo.target !14
  %57 = zext i32 %u3_29fixp7 to i64, !taffo.info !69, !taffo.target !14
  %58 = zext i32 %u3_29fixp6 to i64, !taffo.info !69, !taffo.target !14
  %59 = mul i64 %57, %58, !taffo.info !71, !taffo.target !14
  %60 = lshr i64 %59, 31, !taffo.info !71, !taffo.target !14
  %mul61.u5_27fixp = trunc i64 %60 to i32, !taffo.info !74, !taffo.target !14
  %mul62 = fmul float 4.000000e+00, %div, !taffo.info !98, !taffo.constinfo !100
  %sub63 = fsub float %mul62, 6.000000e+00, !taffo.info !103, !taffo.constinfo !105
  %61 = fmul float 0x4150000000000000, %sub63, !taffo.info !103, !taffo.constinfo !105
  %62 = fptosi float %61 to i32, !taffo.info !103
  %63 = zext i32 %mul61.u5_27fixp to i64, !taffo.info !74, !taffo.target !14
  %64 = sext i32 %62 to i64, !taffo.info !103
  %65 = mul i64 %63, %64, !taffo.info !108, !taffo.target !14
  %66 = ashr i64 %65, 32, !taffo.info !108, !taffo.target !14
  %mul64.s15_17fixp = trunc i64 %66 to i32, !taffo.info !111, !taffo.target !14
  %67 = ashr i32 %mul64.s15_17fixp, 3, !taffo.info !111, !taffo.target !14
  %add65.s18_14fixp = add i32 %mul56.s18_14fixp, %67, !taffo.info !113, !taffo.target !14
  %68 = sext i32 %add65.s18_14fixp to i64, !taffo.info !113, !taffo.target !14
  %69 = zext i32 %add47.u5_27fixp to i64, !taffo.info !75, !taffo.target !14
  %70 = mul i64 %68, %69, !taffo.info !115, !taffo.target !14
  %71 = ashr i64 %70, 31, !taffo.info !115, !taffo.target !14
  %mul66.s22_10fixp = trunc i64 %71 to i32, !taffo.info !118, !taffo.target !14
  %idxprom67 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx68.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom67, !taffo.info !11, !taffo.target !14
  %u3_29fixp5 = load i32, i32* %arrayidx68.u3_29fixp, align 4, !taffo.info !41, !taffo.target !14
  %72 = zext i32 %u3_29fixp5 to i64, !taffo.info !41, !taffo.target !14
  %73 = mul i64 3, %72, !taffo.info !43, !taffo.target !14, !taffo.constinfo !46
  %74 = lshr i64 %73, 1, !taffo.info !43, !taffo.target !14, !taffo.constinfo !46
  %mul69.u4_28fixp = trunc i64 %74 to i32, !taffo.info !50, !taffo.target !14
  %idxprom70 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx71.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom70, !taffo.info !11, !taffo.target !14
  %u3_29fixp4 = load i32, i32* %arrayidx71.u3_29fixp, align 4, !taffo.info !11, !taffo.target !14
  %75 = zext i32 %mul69.u4_28fixp to i64, !taffo.info !50, !taffo.target !14
  %76 = zext i32 %u3_29fixp4 to i64, !taffo.info !11, !taffo.target !14
  %77 = mul i64 %75, %76, !taffo.info !120, !taffo.target !14
  %78 = lshr i64 %77, 32, !taffo.info !120, !taffo.target !14
  %mul72.u7_25fixp = trunc i64 %78 to i32, !taffo.info !122, !taffo.target !14
  %79 = fmul float 0x4170000000000000, %div, !taffo.info !80
  %80 = fptosi float %79 to i32, !taffo.info !80
  %81 = zext i32 %mul72.u7_25fixp to i64, !taffo.info !122, !taffo.target !14
  %82 = sext i32 %80 to i64, !taffo.info !80
  %83 = mul i64 %81, %82, !taffo.info !124, !taffo.target !14
  %84 = ashr i64 %83, 31, !taffo.info !124, !taffo.target !14
  %mul73.s14_18fixp = trunc i64 %84 to i32, !taffo.info !126, !taffo.target !14
  %85 = ashr i32 %mul73.s14_18fixp, 8, !taffo.info !126, !taffo.target !14
  %add74.s22_10fixp = add i32 %mul66.s22_10fixp, %85, !taffo.info !128, !taffo.target !14
  %idxprom75 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx76.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom75, !taffo.info !11, !taffo.target !14
  %u3_29fixp3 = load i32, i32* %arrayidx76.u3_29fixp, align 4, !taffo.info !69, !taffo.target !14
  %idxprom77 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx78.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom77, !taffo.info !11, !taffo.target !14
  %u3_29fixp2 = load i32, i32* %arrayidx78.u3_29fixp, align 4, !taffo.info !69, !taffo.target !14
  %86 = zext i32 %u3_29fixp3 to i64, !taffo.info !69, !taffo.target !14
  %87 = zext i32 %u3_29fixp2 to i64, !taffo.info !69, !taffo.target !14
  %88 = mul i64 %86, %87, !taffo.info !71, !taffo.target !14
  %89 = lshr i64 %88, 33, !taffo.info !71, !taffo.target !14
  %mul79.u7_25fixp = trunc i64 %89 to i32, !taffo.info !130, !taffo.target !14
  %idxprom80 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx81.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom80, !taffo.info !11, !taffo.target !14
  %u3_29fixp1 = load i32, i32* %arrayidx81.u3_29fixp, align 4, !taffo.info !11, !taffo.target !14
  %90 = zext i32 %mul79.u7_25fixp to i64, !taffo.info !130, !taffo.target !14
  %91 = zext i32 %u3_29fixp1 to i64, !taffo.info !11, !taffo.target !14
  %92 = mul i64 %90, %91, !taffo.info !131, !taffo.target !14
  %93 = lshr i64 %92, 29, !taffo.info !131, !taffo.target !14
  %mul82.u7_25fixp = trunc i64 %93 to i32, !taffo.info !134, !taffo.target !14
  %94 = lshr i32 %mul82.u7_25fixp, 15, !taffo.info !134, !taffo.target !14
  %add83.s22_10fixp = add i32 %add74.s22_10fixp, %94, !taffo.info !135, !taffo.target !14
  %idxprom84 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx85.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom84, !taffo.info !11, !taffo.target !14
  %u3_29fixp = load i32, i32* %arrayidx85.u3_29fixp, align 4, !taffo.info !11, !taffo.target !14
  %95 = lshr i32 %u3_29fixp, 19, !taffo.info !11, !taffo.target !14
  %add86.s22_10fixp = add i32 %add83.s22_10fixp, %95, !taffo.info !137, !taffo.target !14
  %mul87 = fmul float 3.000000e+00, %div48, !taffo.info !139, !taffo.constinfo !141
  %96 = fmul float 0x4160000000000000, %mul87, !taffo.info !139, !taffo.constinfo !141
  %97 = fptosi float %96 to i32, !taffo.info !139
  %98 = ashr i32 %97, 13, !taffo.info !139
  %add88.s22_10fixp = add i32 %add86.s22_10fixp, %98, !taffo.info !142, !taffo.target !14
  %99 = lshr i32 %u3_29fixp9, 19, !taffo.info !11, !taffo.target !14
  %add89.s22_10fixp = add i32 %99, %add88.s22_10fixp, !taffo.info !144, !taffo.target !14
  %100 = sitofp i32 %add89.s22_10fixp to float, !taffo.info !144, !taffo.target !14
  %101 = fdiv float %100, 1.024000e+03, !taffo.info !144, !taffo.target !14
  %idxprom90 = sext i32 %j.0 to i64, !taffo.info !39
  %arrayidx91 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 %idxprom90, !taffo.info !9
  store float %101, float* %arrayidx91, align 4, !taffo.info !27, !taffo.target !14
  br label %for.inc92

for.inc92:                                        ; preds = %for.body16
  %inc93 = add nsw i32 %j.0, 1, !taffo.info !145, !taffo.constinfo !24
  br label %for.cond14, !llvm.loop !147

for.end94:                                        ; preds = %for.cond14
  br label %for.inc95

for.inc95:                                        ; preds = %for.end94
  %inc96 = add nsw i32 %i10.0, 1, !taffo.info !148, !taffo.constinfo !24
  br label %for.cond11, !llvm.loop !150

for.end97:                                        ; preds = %for.cond11
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)), !taffo.constinfo !24
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc105, %for.end97
  %j98.0 = phi i32 [ 0, %for.end97 ], [ %inc106, %for.inc105 ], !taffo.info !18
  %cmp100 = icmp slt i32 %j98.0, 100, !taffo.info !20
  br i1 %cmp100, label %for.body101, label %for.end107

for.body101:                                      ; preds = %for.cond99
  %idxprom102 = sext i32 %j98.0 to i64, !taffo.info !25
  %arrayidx103 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 %idxprom102, !taffo.info !9
  %102 = load float, float* %arrayidx103, align 4, !taffo.info !9
  %conv = fpext float %102 to double, !taffo.info !9
  %call104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), double %conv), !taffo.constinfo !151
  br label %for.inc105

for.inc105:                                       ; preds = %for.body101
  %inc106 = add nsw i32 %j98.0, 1, !taffo.info !31, !taffo.constinfo !24
  br label %for.cond99, !llvm.loop !152

for.end107:                                       ; preds = %for.cond99
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)), !taffo.constinfo !24
  ret i32 undef
}

declare !taffo.initweight !7 !taffo.funinfo !8 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !153 !taffo.funinfo !153 {
entry:
  %arr = alloca [200 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 200
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 16, !taffo.constinfo !24
  %conv = sitofp i32 %rem to float
  %add = fadd float %conv, 0x3FCD70A3E0000000, !taffo.constinfo !154
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 %idxprom
  store float %add, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !24
  br label %for.cond, !llvm.loop !157

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 0
  %call = call i32 @test(float* %arraydecay), !taffo.constinfo !24
  ret i32 0
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
!6 = !{i1 true}
!7 = !{i32 -1}
!8 = !{i32 0, i1 false}
!9 = !{i1 false, !10, i1 false, i2 0}
!10 = !{double -4.418700e+05, double 0x413F116100000000}
!11 = !{!12, !13, i1 false, i2 -1}
!12 = !{!"fixp", i32 32, i32 29}
!13 = !{double 0.000000e+00, double 5.000000e+00}
!14 = !{!"test"}
!15 = !{!16, !17, i1 false, i2 -1}
!16 = !{!"fixp", i32 -32, i32 28}
!17 = !{double -5.000000e+00, double 5.000000e+00}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 0.000000e+00, double 1.010000e+02}
!20 = !{i1 false, !21, i1 false, i2 0}
!21 = !{double 0.000000e+00, double 1.000000e+00}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 0.000000e+00, double 2.000000e+02}
!24 = !{i1 false, i1 false}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 0.000000e+00, double 1.000000e+02}
!27 = !{i1 false, !13, i1 false, i2 -1}
!28 = !{i1 false, !29, i1 false, i2 0}
!29 = !{double 1.000000e+00, double 2.010000e+02}
!30 = !{i1 false, !17, i1 false, i2 -1}
!31 = !{i1 false, !32, i1 false, i2 0}
!32 = !{double 1.000000e+00, double 1.010000e+02}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{i1 false, !36, i1 false, i2 0}
!36 = !{double 0.000000e+00, double 1.100000e+01}
!37 = !{i1 false, !38, i1 false, i2 0}
!38 = !{double 0.000000e+00, double 1.111000e+03}
!39 = !{i1 false, !40, i1 false, i2 0}
!40 = !{double 0.000000e+00, double 1.110000e+03}
!41 = !{!42, !13, i1 false, i2 -1}
!42 = !{!"fixp", i32 32, i32 28}
!43 = !{!44, !45, i1 false, i2 -1}
!44 = !{!"fixp", i32 64, i32 29}
!45 = !{double 0.000000e+00, double 1.500000e+01}
!46 = !{!47, i1 false}
!47 = !{!48, !49, i1 false, i2 0}
!48 = !{!"fixp", i32 32, i32 0}
!49 = !{double 3.000000e+00, double 3.000000e+00}
!50 = !{!42, !45, i1 false, i2 -1}
!51 = !{!52, !53, i1 false, i2 -1}
!52 = !{!"fixp", i32 -64, i32 57}
!53 = !{double 0.000000e+00, double 7.500000e+01}
!54 = !{!55, !53, i1 false, i2 -1}
!55 = !{!"fixp", i32 -32, i32 24}
!56 = !{!57, !17, i1 false, i2 -1}
!57 = !{!"fixp", i32 -32, i32 27}
!58 = !{!59, !60, i1 false, i2 -1}
!59 = !{!"fixp", i32 -64, i32 28}
!60 = !{double -1.000000e+01, double 1.000000e+01}
!61 = !{!62, i1 false}
!62 = !{!48, !63, i1 false, i2 0}
!63 = !{double 2.000000e+00, double 2.000000e+00}
!64 = !{!57, !60, i1 false, i2 -1}
!65 = !{!55, !66, i1 false, i2 -1}
!66 = !{double -1.000000e+01, double 8.500000e+01}
!67 = !{!55, !68, i1 false, i2 -1}
!68 = !{double -1.500000e+01, double 8.500000e+01}
!69 = !{!70, !13, i1 false, i2 -1}
!70 = !{!"fixp", i32 32, i32 27}
!71 = !{!72, !73, i1 false, i2 -1}
!72 = !{!"fixp", i32 64, i32 58}
!73 = !{double 0.000000e+00, double 2.500000e+01}
!74 = !{!70, !73, i1 false, i2 -1}
!75 = !{!70, !76, i1 false, i2 -1}
!76 = !{double 1.000000e+00, double 2.600000e+01}
!77 = !{i1 false, !78}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.000000e+00, double 1.000000e+00}
!80 = !{i1 false, !68, i1 false, i2 0}
!81 = !{!44, !82, i1 false, i2 -1}
!82 = !{double 0.000000e+00, double 1.000000e+01}
!83 = !{!42, !82, i1 false, i2 -1}
!84 = !{!85, !86, i1 false, i2 -1}
!85 = !{!"fixp", i32 -64, i32 52}
!86 = !{double -1.500000e+02, double 8.500000e+02}
!87 = !{!88, !86, i1 false, i2 -1}
!88 = !{!"fixp", i32 -32, i32 21}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double -1.800000e+01, double 8.200000e+01}
!91 = !{i1 false, !92}
!92 = !{i1 false, !49, i1 false, i2 0}
!93 = !{!94, !95, i1 false, i2 -1}
!94 = !{!"fixp", i32 -64, i32 45}
!95 = !{double -1.530000e+04, double 6.970000e+04}
!96 = !{!97, !95, i1 false, i2 -1}
!97 = !{!"fixp", i32 -32, i32 14}
!98 = !{i1 false, !99, i1 false, i2 0}
!99 = !{double -6.000000e+01, double 3.400000e+02}
!100 = !{!101, i1 false}
!101 = !{i1 false, !102, i1 false, i2 0}
!102 = !{double 4.000000e+00, double 4.000000e+00}
!103 = !{i1 false, !104, i1 false, i2 0}
!104 = !{double -6.600000e+01, double 3.340000e+02}
!105 = !{i1 false, !106}
!106 = !{i1 false, !107, i1 false, i2 0}
!107 = !{double 6.000000e+00, double 6.000000e+00}
!108 = !{!109, !110, i1 false, i2 -1}
!109 = !{!"fixp", i32 -64, i32 49}
!110 = !{double -1.650000e+03, double 8.350000e+03}
!111 = !{!112, !110, i1 false, i2 -1}
!112 = !{!"fixp", i32 -32, i32 17}
!113 = !{!97, !114, i1 false, i2 -1}
!114 = !{double -1.695000e+04, double 7.805000e+04}
!115 = !{!116, !117, i1 false, i2 -1}
!116 = !{!"fixp", i32 -64, i32 41}
!117 = !{double -4.407000e+05, double 2.029300e+06}
!118 = !{!119, !117, i1 false, i2 -1}
!119 = !{!"fixp", i32 -32, i32 10}
!120 = !{!121, !53, i1 false, i2 -1}
!121 = !{!"fixp", i32 64, i32 57}
!122 = !{!123, !53, i1 false, i2 -1}
!123 = !{!"fixp", i32 32, i32 25}
!124 = !{!109, !125, i1 false, i2 -1}
!125 = !{double -1.125000e+03, double 6.375000e+03}
!126 = !{!127, !125, i1 false, i2 -1}
!127 = !{!"fixp", i32 -32, i32 18}
!128 = !{!119, !129, i1 false, i2 -1}
!129 = !{double -4.418250e+05, double 0x413F0FDB00000000}
!130 = !{!123, !73, i1 false, i2 -1}
!131 = !{!132, !133, i1 false, i2 -1}
!132 = !{!"fixp", i32 64, i32 54}
!133 = !{double 0.000000e+00, double 1.250000e+02}
!134 = !{!123, !133, i1 false, i2 -1}
!135 = !{!119, !136, i1 false, i2 -1}
!136 = !{double -4.418250e+05, double 2.035800e+06}
!137 = !{!119, !138, i1 false, i2 -1}
!138 = !{double -4.418250e+05, double 0x413F105D00000000}
!139 = !{i1 false, !140, i1 false, i2 0}
!140 = !{double -4.500000e+01, double 2.550000e+02}
!141 = !{!92, i1 false}
!142 = !{!119, !143, i1 false, i2 -1}
!143 = !{double -4.418700e+05, double 2.036060e+06}
!144 = !{!119, !10, i1 false, i2 -1}
!145 = !{i1 false, !146, i1 false, i2 0}
!146 = !{double 1.000000e+00, double 1.111000e+03}
!147 = distinct !{!147, !34}
!148 = !{i1 false, !149, i1 false, i2 0}
!149 = !{double 1.000000e+00, double 1.100000e+01}
!150 = distinct !{!150, !34}
!151 = !{i1 false, i1 false, i1 false}
!152 = distinct !{!152, !34}
!153 = !{}
!154 = !{i1 false, !155}
!155 = !{i1 false, !156, i1 false, i2 0}
!156 = !{double 0x3FCD70A3E0000000, double 0x3FCD70A3E0000000}
!157 = distinct !{!157, !34}
