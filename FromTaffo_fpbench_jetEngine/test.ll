; ModuleID = '/tmp/tmp.9miUffpxsj/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @test(float* %arr, float* %res) #0 !taffo.start !2 !taffo.initweight !3 !taffo.funinfo !4 {
entry:
  %x1.u3_29fixp = alloca [100 x i32], align 16, !taffo.info !5, !taffo.target !8
  %x2.s4_28fixp = alloca [100 x i32], align 16, !taffo.info !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !12
  %cmp = icmp slt i32 %i.0, 100, !taffo.info !14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 2, !taffo.info !16, !taffo.constinfo !18
  %idxprom = sext i32 %mul to i64, !taffo.info !16
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %1 = fmul float 0x41C0000000000000, %0, !taffo.info !19
  %2 = fptoui float %1 to i32, !taffo.info !19
  %idxprom3 = sext i32 %i.0 to i64, !taffo.info !19
  %arrayidx4.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom3, !taffo.info !5, !taffo.target !8
  store i32 %2, i32* %arrayidx4.u3_29fixp, align 4, !taffo.info !21, !taffo.target !8
  %mul5 = mul nsw i32 %i.0, 2, !taffo.info !16, !taffo.constinfo !18
  %add = add nsw i32 %mul5, 1, !taffo.info !22, !taffo.constinfo !18
  %idxprom6 = sext i32 %add to i64, !taffo.info !22
  %arrayidx7 = getelementptr inbounds float, float* %arr, i64 %idxprom6
  %3 = load float, float* %arrayidx7, align 4
  %4 = fmul float 0x41B0000000000000, %3, !taffo.info !19
  %5 = fptosi float %4 to i32, !taffo.info !19
  %idxprom8 = sext i32 %i.0 to i64, !taffo.info !19
  %arrayidx9.s4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x2.s4_28fixp, i64 0, i64 %idxprom8, !taffo.info !9
  store i32 %5, i32* %arrayidx9.s4_28fixp, align 4, !taffo.info !24
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !25, !taffo.constinfo !18
  br label %for.cond, !llvm.loop !27

for.end:                                          ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc95, %for.end
  %i10.0 = phi i32 [ 0, %for.end ], [ %inc96, %for.inc95 ], !taffo.info !12
  %cmp12 = icmp slt i32 %i10.0, 100, !taffo.info !14
  br i1 %cmp12, label %for.body13, label %for.end97

for.body13:                                       ; preds = %for.cond11
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc92, %for.body13
  %j.0 = phi i32 [ 0, %for.body13 ], [ %inc93, %for.inc92 ], !taffo.info !29
  %cmp15 = icmp slt i32 %j.0, 100, !taffo.info !14
  br i1 %cmp15, label %for.body16, label %for.end94

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx18.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom17, !taffo.info !5, !taffo.target !8
  %u3_29fixp17 = load i32, i32* %arrayidx18.u3_29fixp, align 4, !taffo.info !33, !taffo.target !8
  %6 = zext i32 %u3_29fixp17 to i64, !taffo.info !33, !taffo.target !8
  %7 = mul i64 3, %6, !taffo.info !35, !taffo.target !8, !taffo.constinfo !38
  %8 = lshr i64 %7, 1, !taffo.info !35, !taffo.target !8, !taffo.constinfo !38
  %mul19.u4_28fixp = trunc i64 %8 to i32, !taffo.info !42, !taffo.target !8
  %idxprom20 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx21.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom20, !taffo.info !5, !taffo.target !8
  %u3_29fixp16 = load i32, i32* %arrayidx21.u3_29fixp, align 4, !taffo.info !5, !taffo.target !8
  %9 = zext i32 %mul19.u4_28fixp to i64, !taffo.info !42, !taffo.target !8
  %10 = zext i32 %u3_29fixp16 to i64, !taffo.info !5, !taffo.target !8
  %11 = mul i64 %9, %10, !taffo.info !43, !taffo.target !8
  %12 = ashr i64 %11, 33, !taffo.info !43, !taffo.target !8
  %mul22.s8_24fixp = trunc i64 %12 to i32, !taffo.info !46, !taffo.target !8
  %idxprom23 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx24.s4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x2.s4_28fixp, i64 0, i64 %idxprom23, !taffo.info !9
  %s4_28fixp18 = load i32, i32* %arrayidx24.s4_28fixp, align 4, !taffo.info !48
  %13 = sext i32 %s4_28fixp18 to i64, !taffo.info !48
  %14 = mul i64 2, %13, !taffo.info !50, !taffo.constinfo !53
  %15 = ashr i64 %14, 1, !taffo.info !50, !taffo.constinfo !53
  %mul25.s5_27fixp = trunc i64 %15 to i32, !taffo.info !56
  %16 = ashr i32 %mul25.s5_27fixp, 3, !taffo.info !56
  %add26.s8_24fixp = add i32 %mul22.s8_24fixp, %16, !taffo.info !57, !taffo.target !8
  %idxprom27 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx28.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom27, !taffo.info !5, !taffo.target !8
  %u3_29fixp15 = load i32, i32* %arrayidx28.u3_29fixp, align 4, !taffo.info !5, !taffo.target !8
  %17 = lshr i32 %u3_29fixp15, 5, !taffo.info !5, !taffo.target !8
  %sub.s8_24fixp = sub i32 %add26.s8_24fixp, %17, !taffo.info !59, !taffo.target !8
  %18 = sitofp i32 %sub.s8_24fixp to float, !taffo.info !59, !taffo.target !8
  %19 = fdiv float %18, 0x4170000000000000, !taffo.info !59, !taffo.target !8
  %idxprom29 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx30.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom29, !taffo.info !5, !taffo.target !8
  %u3_29fixp14 = load i32, i32* %arrayidx30.u3_29fixp, align 4, !taffo.info !33, !taffo.target !8
  %20 = zext i32 %u3_29fixp14 to i64, !taffo.info !33, !taffo.target !8
  %21 = mul i64 3, %20, !taffo.info !35, !taffo.target !8, !taffo.constinfo !38
  %22 = lshr i64 %21, 1, !taffo.info !35, !taffo.target !8, !taffo.constinfo !38
  %mul31.u4_28fixp = trunc i64 %22 to i32, !taffo.info !42, !taffo.target !8
  %idxprom32 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx33.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom32, !taffo.info !5, !taffo.target !8
  %u3_29fixp13 = load i32, i32* %arrayidx33.u3_29fixp, align 4, !taffo.info !5, !taffo.target !8
  %23 = zext i32 %mul31.u4_28fixp to i64, !taffo.info !42, !taffo.target !8
  %24 = zext i32 %u3_29fixp13 to i64, !taffo.info !5, !taffo.target !8
  %25 = mul i64 %23, %24, !taffo.info !43, !taffo.target !8
  %26 = ashr i64 %25, 33, !taffo.info !43, !taffo.target !8
  %mul34.s8_24fixp = trunc i64 %26 to i32, !taffo.info !46, !taffo.target !8
  %idxprom35 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx36.s4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x2.s4_28fixp, i64 0, i64 %idxprom35, !taffo.info !9
  %s4_28fixp = load i32, i32* %arrayidx36.s4_28fixp, align 4, !taffo.info !48
  %27 = sext i32 %s4_28fixp to i64, !taffo.info !48
  %28 = mul i64 2, %27, !taffo.info !50, !taffo.constinfo !53
  %29 = ashr i64 %28, 1, !taffo.info !50, !taffo.constinfo !53
  %mul37.s5_27fixp = trunc i64 %29 to i32, !taffo.info !56
  %30 = ashr i32 %mul37.s5_27fixp, 3, !taffo.info !56
  %sub38.s8_24fixp = sub i32 %mul34.s8_24fixp, %30, !taffo.info !57, !taffo.target !8
  %idxprom39 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx40.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom39, !taffo.info !5, !taffo.target !8
  %u3_29fixp12 = load i32, i32* %arrayidx40.u3_29fixp, align 4, !taffo.info !5, !taffo.target !8
  %31 = lshr i32 %u3_29fixp12, 5, !taffo.info !5, !taffo.target !8
  %sub41.s8_24fixp = sub i32 %sub38.s8_24fixp, %31, !taffo.info !59, !taffo.target !8
  %32 = sitofp i32 %sub41.s8_24fixp to float, !taffo.info !59, !taffo.target !8
  %33 = fdiv float %32, 0x4170000000000000, !taffo.info !59, !taffo.target !8
  %idxprom42 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx43.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom42, !taffo.info !5, !taffo.target !8
  %u3_29fixp11 = load i32, i32* %arrayidx43.u3_29fixp, align 4, !taffo.info !61, !taffo.target !8
  %idxprom44 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx45.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom44, !taffo.info !5, !taffo.target !8
  %u3_29fixp10 = load i32, i32* %arrayidx45.u3_29fixp, align 4, !taffo.info !61, !taffo.target !8
  %34 = zext i32 %u3_29fixp11 to i64, !taffo.info !61, !taffo.target !8
  %35 = zext i32 %u3_29fixp10 to i64, !taffo.info !61, !taffo.target !8
  %36 = mul i64 %34, %35, !taffo.info !63, !taffo.target !8
  %37 = lshr i64 %36, 31, !taffo.info !63, !taffo.target !8
  %mul46.u5_27fixp = trunc i64 %37 to i32, !taffo.info !66, !taffo.target !8
  %add47.u5_27fixp = add i32 %mul46.u5_27fixp, 134217728, !taffo.info !67, !taffo.target !8, !taffo.constinfo !69
  %38 = uitofp i32 %add47.u5_27fixp to float, !taffo.info !67, !taffo.target !8
  %39 = fdiv float %38, 0x41A0000000000000, !taffo.info !67, !taffo.target !8, !taffo.constinfo !69
  %40 = uitofp i32 %add47.u5_27fixp to float, !taffo.info !67, !taffo.target !8
  %41 = fdiv float %40, 0x41A0000000000000, !taffo.info !67, !taffo.target !8, !taffo.constinfo !69
  %div = fdiv float %19, %39, !taffo.info !72
  %div48 = fdiv float %33, %41, !taffo.info !72
  %idxprom49 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx50.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom49, !taffo.info !5, !taffo.target !8
  %u3_29fixp9 = load i32, i32* %arrayidx50.u3_29fixp, align 4, !taffo.info !5, !taffo.target !8
  %idxprom51 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx52.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom51, !taffo.info !5, !taffo.target !8
  %u3_29fixp8 = load i32, i32* %arrayidx52.u3_29fixp, align 4, !taffo.info !33, !taffo.target !8
  %42 = zext i32 %u3_29fixp8 to i64, !taffo.info !33, !taffo.target !8
  %43 = mul i64 2, %42, !taffo.info !73, !taffo.target !8, !taffo.constinfo !53
  %44 = lshr i64 %43, 1, !taffo.info !73, !taffo.target !8, !taffo.constinfo !53
  %mul53.u4_28fixp = trunc i64 %44 to i32, !taffo.info !75, !taffo.target !8
  %45 = fmul float 0x4170000000000000, %div, !taffo.info !72
  %46 = fptosi float %45 to i32, !taffo.info !72
  %47 = zext i32 %mul53.u4_28fixp to i64, !taffo.info !75, !taffo.target !8
  %48 = sext i32 %46 to i64, !taffo.info !72
  %49 = mul i64 %47, %48, !taffo.info !76, !taffo.target !8
  %50 = ashr i64 %49, 31, !taffo.info !76, !taffo.target !8
  %mul54.s11_21fixp = trunc i64 %50 to i32, !taffo.info !79, !taffo.target !8
  %sub55 = fsub float %div, 3.000000e+00, !taffo.info !81, !taffo.constinfo !83
  %51 = fmul float 0x4170000000000000, %sub55, !taffo.info !81, !taffo.constinfo !83
  %52 = fptosi float %51 to i32, !taffo.info !81
  %53 = sext i32 %mul54.s11_21fixp to i64, !taffo.info !79, !taffo.target !8
  %54 = sext i32 %52 to i64, !taffo.info !81
  %55 = mul i64 %53, %54, !taffo.info !85, !taffo.target !8
  %56 = ashr i64 %55, 31, !taffo.info !85, !taffo.target !8
  %mul56.s18_14fixp = trunc i64 %56 to i32, !taffo.info !88, !taffo.target !8
  %idxprom57 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx58.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom57, !taffo.info !5, !taffo.target !8
  %u3_29fixp7 = load i32, i32* %arrayidx58.u3_29fixp, align 4, !taffo.info !61, !taffo.target !8
  %idxprom59 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx60.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom59, !taffo.info !5, !taffo.target !8
  %u3_29fixp6 = load i32, i32* %arrayidx60.u3_29fixp, align 4, !taffo.info !61, !taffo.target !8
  %57 = zext i32 %u3_29fixp7 to i64, !taffo.info !61, !taffo.target !8
  %58 = zext i32 %u3_29fixp6 to i64, !taffo.info !61, !taffo.target !8
  %59 = mul i64 %57, %58, !taffo.info !63, !taffo.target !8
  %60 = lshr i64 %59, 31, !taffo.info !63, !taffo.target !8
  %mul61.u5_27fixp = trunc i64 %60 to i32, !taffo.info !66, !taffo.target !8
  %mul62 = fmul float 4.000000e+00, %div, !taffo.info !90, !taffo.constinfo !92
  %sub63 = fsub float %mul62, 6.000000e+00, !taffo.info !95, !taffo.constinfo !97
  %61 = fmul float 0x4150000000000000, %sub63, !taffo.info !95, !taffo.constinfo !97
  %62 = fptosi float %61 to i32, !taffo.info !95
  %63 = zext i32 %mul61.u5_27fixp to i64, !taffo.info !66, !taffo.target !8
  %64 = sext i32 %62 to i64, !taffo.info !95
  %65 = mul i64 %63, %64, !taffo.info !100, !taffo.target !8
  %66 = ashr i64 %65, 32, !taffo.info !100, !taffo.target !8
  %mul64.s15_17fixp = trunc i64 %66 to i32, !taffo.info !103, !taffo.target !8
  %67 = ashr i32 %mul64.s15_17fixp, 3, !taffo.info !103, !taffo.target !8
  %add65.s18_14fixp = add i32 %mul56.s18_14fixp, %67, !taffo.info !105, !taffo.target !8
  %68 = sext i32 %add65.s18_14fixp to i64, !taffo.info !105, !taffo.target !8
  %69 = zext i32 %add47.u5_27fixp to i64, !taffo.info !67, !taffo.target !8
  %70 = mul i64 %68, %69, !taffo.info !107, !taffo.target !8
  %71 = ashr i64 %70, 31, !taffo.info !107, !taffo.target !8
  %mul66.s22_10fixp = trunc i64 %71 to i32, !taffo.info !110, !taffo.target !8
  %idxprom67 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx68.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom67, !taffo.info !5, !taffo.target !8
  %u3_29fixp5 = load i32, i32* %arrayidx68.u3_29fixp, align 4, !taffo.info !33, !taffo.target !8
  %72 = zext i32 %u3_29fixp5 to i64, !taffo.info !33, !taffo.target !8
  %73 = mul i64 3, %72, !taffo.info !35, !taffo.target !8, !taffo.constinfo !38
  %74 = lshr i64 %73, 1, !taffo.info !35, !taffo.target !8, !taffo.constinfo !38
  %mul69.u4_28fixp = trunc i64 %74 to i32, !taffo.info !42, !taffo.target !8
  %idxprom70 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx71.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom70, !taffo.info !5, !taffo.target !8
  %u3_29fixp4 = load i32, i32* %arrayidx71.u3_29fixp, align 4, !taffo.info !5, !taffo.target !8
  %75 = zext i32 %mul69.u4_28fixp to i64, !taffo.info !42, !taffo.target !8
  %76 = zext i32 %u3_29fixp4 to i64, !taffo.info !5, !taffo.target !8
  %77 = mul i64 %75, %76, !taffo.info !112, !taffo.target !8
  %78 = lshr i64 %77, 32, !taffo.info !112, !taffo.target !8
  %mul72.u7_25fixp = trunc i64 %78 to i32, !taffo.info !114, !taffo.target !8
  %79 = fmul float 0x4170000000000000, %div, !taffo.info !72
  %80 = fptosi float %79 to i32, !taffo.info !72
  %81 = zext i32 %mul72.u7_25fixp to i64, !taffo.info !114, !taffo.target !8
  %82 = sext i32 %80 to i64, !taffo.info !72
  %83 = mul i64 %81, %82, !taffo.info !116, !taffo.target !8
  %84 = ashr i64 %83, 31, !taffo.info !116, !taffo.target !8
  %mul73.s14_18fixp = trunc i64 %84 to i32, !taffo.info !118, !taffo.target !8
  %85 = ashr i32 %mul73.s14_18fixp, 8, !taffo.info !118, !taffo.target !8
  %add74.s22_10fixp = add i32 %mul66.s22_10fixp, %85, !taffo.info !120, !taffo.target !8
  %idxprom75 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx76.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom75, !taffo.info !5, !taffo.target !8
  %u3_29fixp3 = load i32, i32* %arrayidx76.u3_29fixp, align 4, !taffo.info !61, !taffo.target !8
  %idxprom77 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx78.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom77, !taffo.info !5, !taffo.target !8
  %u3_29fixp2 = load i32, i32* %arrayidx78.u3_29fixp, align 4, !taffo.info !61, !taffo.target !8
  %86 = zext i32 %u3_29fixp3 to i64, !taffo.info !61, !taffo.target !8
  %87 = zext i32 %u3_29fixp2 to i64, !taffo.info !61, !taffo.target !8
  %88 = mul i64 %86, %87, !taffo.info !63, !taffo.target !8
  %89 = lshr i64 %88, 33, !taffo.info !63, !taffo.target !8
  %mul79.u7_25fixp = trunc i64 %89 to i32, !taffo.info !122, !taffo.target !8
  %idxprom80 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx81.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom80, !taffo.info !5, !taffo.target !8
  %u3_29fixp1 = load i32, i32* %arrayidx81.u3_29fixp, align 4, !taffo.info !5, !taffo.target !8
  %90 = zext i32 %mul79.u7_25fixp to i64, !taffo.info !122, !taffo.target !8
  %91 = zext i32 %u3_29fixp1 to i64, !taffo.info !5, !taffo.target !8
  %92 = mul i64 %90, %91, !taffo.info !123, !taffo.target !8
  %93 = lshr i64 %92, 29, !taffo.info !123, !taffo.target !8
  %mul82.u7_25fixp = trunc i64 %93 to i32, !taffo.info !126, !taffo.target !8
  %94 = lshr i32 %mul82.u7_25fixp, 15, !taffo.info !126, !taffo.target !8
  %add83.s22_10fixp = add i32 %add74.s22_10fixp, %94, !taffo.info !127, !taffo.target !8
  %idxprom84 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx85.u3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x1.u3_29fixp, i64 0, i64 %idxprom84, !taffo.info !5, !taffo.target !8
  %u3_29fixp = load i32, i32* %arrayidx85.u3_29fixp, align 4, !taffo.info !5, !taffo.target !8
  %95 = lshr i32 %u3_29fixp, 19, !taffo.info !5, !taffo.target !8
  %add86.s22_10fixp = add i32 %add83.s22_10fixp, %95, !taffo.info !129, !taffo.target !8
  %mul87 = fmul float 3.000000e+00, %div48, !taffo.info !131, !taffo.constinfo !133
  %96 = fmul float 0x4160000000000000, %mul87, !taffo.info !131, !taffo.constinfo !133
  %97 = fptosi float %96 to i32, !taffo.info !131
  %98 = ashr i32 %97, 13, !taffo.info !131
  %add88.s22_10fixp = add i32 %add86.s22_10fixp, %98, !taffo.info !134, !taffo.target !8
  %99 = lshr i32 %u3_29fixp9, 19, !taffo.info !5, !taffo.target !8
  %add89.s22_10fixp = add i32 %99, %add88.s22_10fixp, !taffo.info !136, !taffo.target !8
  %100 = sitofp i32 %add89.s22_10fixp to float, !taffo.info !136, !taffo.target !8
  %101 = fdiv float %100, 1.024000e+03, !taffo.info !136, !taffo.target !8
  %idxprom90 = sext i32 %j.0 to i64, !taffo.info !31
  %arrayidx91 = getelementptr inbounds float, float* %res, i64 %idxprom90
  store float %101, float* %arrayidx91, align 4, !taffo.info !21, !taffo.target !8
  br label %for.inc92

for.inc92:                                        ; preds = %for.body16
  %inc93 = add nsw i32 %j.0, 1, !taffo.info !138, !taffo.constinfo !18
  br label %for.cond14, !llvm.loop !140

for.end94:                                        ; preds = %for.cond14
  br label %for.inc95

for.inc95:                                        ; preds = %for.end94
  %inc96 = add nsw i32 %i10.0, 1, !taffo.info !25, !taffo.constinfo !18
  br label %for.cond11, !llvm.loop !141

for.end97:                                        ; preds = %for.cond11
  ret i32 undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !142 !taffo.funinfo !142 {
entry:
  %arr = alloca [200 x float], align 16
  %res = alloca [100 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 200
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 16, !taffo.constinfo !18
  %conv = sitofp i32 %rem to float
  %add = fadd float %conv, 0x3FCD70A3E0000000, !taffo.constinfo !143
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 %idxprom
  store float %add, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !18
  br label %for.cond, !llvm.loop !146

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 0
  %call = call i32 @test(float* %arraydecay, float* %arraydecay1), !taffo.constinfo !147
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!2 = !{i1 true}
!3 = !{i32 -1, i32 -1}
!4 = !{i32 0, i1 false, i32 0, i1 false}
!5 = !{!6, !7, i1 false, i2 -1}
!6 = !{!"fixp", i32 32, i32 29}
!7 = !{double 0.000000e+00, double 5.000000e+00}
!8 = !{!"test"}
!9 = !{!10, !11, i1 false, i2 -1}
!10 = !{!"fixp", i32 -32, i32 28}
!11 = !{double -5.000000e+00, double 5.000000e+00}
!12 = !{i1 false, !13, i1 false, i2 0}
!13 = !{double 0.000000e+00, double 1.010000e+02}
!14 = !{i1 false, !15, i1 false, i2 0}
!15 = !{double 0.000000e+00, double 1.000000e+00}
!16 = !{i1 false, !17, i1 false, i2 0}
!17 = !{double 0.000000e+00, double 2.000000e+02}
!18 = !{i1 false, i1 false}
!19 = !{i1 false, !20, i1 false, i2 0}
!20 = !{double 0.000000e+00, double 1.000000e+02}
!21 = !{i1 false, !7, i1 false, i2 -1}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 1.000000e+00, double 2.010000e+02}
!24 = !{i1 false, !11, i1 false, i2 -1}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 1.000000e+00, double 1.010000e+02}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{i1 false, !30, i1 false, i2 0}
!30 = !{double 0.000000e+00, double 1.020100e+04}
!31 = !{i1 false, !32, i1 false, i2 0}
!32 = !{double 0.000000e+00, double 1.020000e+04}
!33 = !{!34, !7, i1 false, i2 -1}
!34 = !{!"fixp", i32 32, i32 28}
!35 = !{!36, !37, i1 false, i2 -1}
!36 = !{!"fixp", i32 64, i32 29}
!37 = !{double 0.000000e+00, double 1.500000e+01}
!38 = !{!39, i1 false}
!39 = !{!40, !41, i1 false, i2 0}
!40 = !{!"fixp", i32 32, i32 0}
!41 = !{double 3.000000e+00, double 3.000000e+00}
!42 = !{!34, !37, i1 false, i2 -1}
!43 = !{!44, !45, i1 false, i2 -1}
!44 = !{!"fixp", i32 -64, i32 57}
!45 = !{double 0.000000e+00, double 7.500000e+01}
!46 = !{!47, !45, i1 false, i2 -1}
!47 = !{!"fixp", i32 -32, i32 24}
!48 = !{!49, !11, i1 false, i2 -1}
!49 = !{!"fixp", i32 -32, i32 27}
!50 = !{!51, !52, i1 false, i2 -1}
!51 = !{!"fixp", i32 -64, i32 28}
!52 = !{double -1.000000e+01, double 1.000000e+01}
!53 = !{!54, i1 false}
!54 = !{!40, !55, i1 false, i2 0}
!55 = !{double 2.000000e+00, double 2.000000e+00}
!56 = !{!49, !52, i1 false, i2 -1}
!57 = !{!47, !58, i1 false, i2 -1}
!58 = !{double -1.000000e+01, double 8.500000e+01}
!59 = !{!47, !60, i1 false, i2 -1}
!60 = !{double -1.500000e+01, double 8.500000e+01}
!61 = !{!62, !7, i1 false, i2 -1}
!62 = !{!"fixp", i32 32, i32 27}
!63 = !{!64, !65, i1 false, i2 -1}
!64 = !{!"fixp", i32 64, i32 58}
!65 = !{double 0.000000e+00, double 2.500000e+01}
!66 = !{!62, !65, i1 false, i2 -1}
!67 = !{!62, !68, i1 false, i2 -1}
!68 = !{double 1.000000e+00, double 2.600000e+01}
!69 = !{i1 false, !70}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 1.000000e+00, double 1.000000e+00}
!72 = !{i1 false, !60, i1 false, i2 0}
!73 = !{!36, !74, i1 false, i2 -1}
!74 = !{double 0.000000e+00, double 1.000000e+01}
!75 = !{!34, !74, i1 false, i2 -1}
!76 = !{!77, !78, i1 false, i2 -1}
!77 = !{!"fixp", i32 -64, i32 52}
!78 = !{double -1.500000e+02, double 8.500000e+02}
!79 = !{!80, !78, i1 false, i2 -1}
!80 = !{!"fixp", i32 -32, i32 21}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double -1.800000e+01, double 8.200000e+01}
!83 = !{i1 false, !84}
!84 = !{i1 false, !41, i1 false, i2 0}
!85 = !{!86, !87, i1 false, i2 -1}
!86 = !{!"fixp", i32 -64, i32 45}
!87 = !{double -1.530000e+04, double 6.970000e+04}
!88 = !{!89, !87, i1 false, i2 -1}
!89 = !{!"fixp", i32 -32, i32 14}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double -6.000000e+01, double 3.400000e+02}
!92 = !{!93, i1 false}
!93 = !{i1 false, !94, i1 false, i2 0}
!94 = !{double 4.000000e+00, double 4.000000e+00}
!95 = !{i1 false, !96, i1 false, i2 0}
!96 = !{double -6.600000e+01, double 3.340000e+02}
!97 = !{i1 false, !98}
!98 = !{i1 false, !99, i1 false, i2 0}
!99 = !{double 6.000000e+00, double 6.000000e+00}
!100 = !{!101, !102, i1 false, i2 -1}
!101 = !{!"fixp", i32 -64, i32 49}
!102 = !{double -1.650000e+03, double 8.350000e+03}
!103 = !{!104, !102, i1 false, i2 -1}
!104 = !{!"fixp", i32 -32, i32 17}
!105 = !{!89, !106, i1 false, i2 -1}
!106 = !{double -1.695000e+04, double 7.805000e+04}
!107 = !{!108, !109, i1 false, i2 -1}
!108 = !{!"fixp", i32 -64, i32 41}
!109 = !{double -4.407000e+05, double 2.029300e+06}
!110 = !{!111, !109, i1 false, i2 -1}
!111 = !{!"fixp", i32 -32, i32 10}
!112 = !{!113, !45, i1 false, i2 -1}
!113 = !{!"fixp", i32 64, i32 57}
!114 = !{!115, !45, i1 false, i2 -1}
!115 = !{!"fixp", i32 32, i32 25}
!116 = !{!101, !117, i1 false, i2 -1}
!117 = !{double -1.125000e+03, double 6.375000e+03}
!118 = !{!119, !117, i1 false, i2 -1}
!119 = !{!"fixp", i32 -32, i32 18}
!120 = !{!111, !121, i1 false, i2 -1}
!121 = !{double -4.418250e+05, double 0x413F0FDB00000000}
!122 = !{!115, !65, i1 false, i2 -1}
!123 = !{!124, !125, i1 false, i2 -1}
!124 = !{!"fixp", i32 64, i32 54}
!125 = !{double 0.000000e+00, double 1.250000e+02}
!126 = !{!115, !125, i1 false, i2 -1}
!127 = !{!111, !128, i1 false, i2 -1}
!128 = !{double -4.418250e+05, double 2.035800e+06}
!129 = !{!111, !130, i1 false, i2 -1}
!130 = !{double -4.418250e+05, double 0x413F105D00000000}
!131 = !{i1 false, !132, i1 false, i2 0}
!132 = !{double -4.500000e+01, double 2.550000e+02}
!133 = !{!84, i1 false}
!134 = !{!111, !135, i1 false, i2 -1}
!135 = !{double -4.418700e+05, double 2.036060e+06}
!136 = !{!111, !137, i1 false, i2 -1}
!137 = !{double -4.418700e+05, double 0x413F116100000000}
!138 = !{i1 false, !139, i1 false, i2 0}
!139 = !{double 1.000000e+00, double 1.020100e+04}
!140 = distinct !{!140, !28}
!141 = distinct !{!141, !28}
!142 = !{}
!143 = !{i1 false, !144}
!144 = !{i1 false, !145, i1 false, i2 0}
!145 = !{double 0x3FCD70A3E0000000, double 0x3FCD70A3E0000000}
!146 = distinct !{!146, !28}
!147 = !{i1 false, i1 false, i1 false}
