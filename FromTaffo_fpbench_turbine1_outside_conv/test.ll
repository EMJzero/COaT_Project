; ModuleID = '/tmp/tmp.NCeDmLSoyp/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.5 = private unnamed_addr constant [14 x i8] c"Values Begin\0A\00", align 1, !taffo.info !0
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1, !taffo.info !2
@.str.7 = private unnamed_addr constant [12 x i8] c"Values End\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local float @ex0(float noundef %v, float noundef %w, float noundef %r) #0 !taffo.initweight !10 !taffo.equivalentChild !11 !taffo.funinfo !12 {
entry:
  %mul = fmul float %r, %r
  %div = fdiv float 2.000000e+00, %mul, !taffo.constinfo !13
  %add = fadd float 3.000000e+00, %div, !taffo.constinfo !16
  %0 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %v, float 3.000000e+00), !taffo.constinfo !19
  %mul2 = fmul float 1.250000e-01, %0, !taffo.constinfo !22
  %mul3 = fmul float %w, %w
  %mul4 = fmul float %mul3, %r
  %mul5 = fmul float %mul4, %r
  %mul6 = fmul float %mul2, %mul5
  %sub = fsub float 1.000000e+00, %v, !taffo.constinfo !25
  %div7 = fdiv float %mul6, %sub
  %sub8 = fsub float %add, %div7
  %sub9 = fsub float %sub8, 4.500000e+00, !taffo.constinfo !28
  ret float %sub9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare !taffo.initweight !10 !taffo.funinfo !12 float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(float* noundef %v, float* noundef %w, float* noundef %e, float* noundef %res) #0 !taffo.initweight !31 !taffo.equivalentChild !32 !taffo.funinfo !33 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ]
  %cmp = icmp slt i32 %i.0, 1
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, 100
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds float, float* %v, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds float, float* %w, i64 %idxprom4
  %1 = load float, float* %arrayidx5, align 4
  %idxprom6 = sext i32 %j.0 to i64
  %arrayidx7 = getelementptr inbounds float, float* %e, i64 %idxprom6
  %2 = load float, float* %arrayidx7, align 4
  %call = call float @ex0(float noundef %0, float noundef %1, float noundef %2), !taffo.constinfo !34
  %idxprom8 = sext i32 %j.0 to i64
  %arrayidx9 = getelementptr inbounds float, float* %res, i64 %idxprom8
  store float %call, float* %arrayidx9, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !35
  br label %for.cond1, !llvm.loop !36

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.constinfo !35
  br label %for.cond, !llvm.loop !38

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !39 !taffo.funinfo !39 !taffo.start !40 {
entry:
  %arr = alloca [300 x float], align 16, !taffo.info !41
  %res.s8_24fixp = alloca [100 x i32], align 16, !taffo.info !43, !taffo.target !46
  %v.s4_28fixp = alloca [100 x i32], align 16, !taffo.info !47, !taffo.target !50
  %w.u1_31fixp = alloca [100 x i32], align 16, !taffo.info !51
  %e.u4_28fixp = alloca [100 x i32], align 16, !taffo.info !54
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add13, %for.inc ], !taffo.info !57
  %cmp = icmp slt i32 %i.0, 300, !taffo.info !59
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 6, !taffo.info !60, !taffo.constinfo !35
  %sub = sub nsw i32 %rem, 5, !taffo.info !62, !taffo.constinfo !35
  %conv = sitofp i32 %sub to float, !taffo.info !62
  %idxprom = sext i32 %i.0 to i64, !taffo.info !63
  %arrayidx = getelementptr inbounds [300 x float], [300 x float]* %arr, i64 0, i64 %idxprom, !taffo.info !41
  store float %conv, float* %arrayidx, align 4
  %rem2 = srem i32 %i.0, 2, !taffo.info !59, !taffo.constinfo !35
  %conv3 = sitofp i32 %rem2 to float, !taffo.info !59
  %add = add nsw i32 %i.0, 1, !taffo.info !65, !taffo.constinfo !35
  %idxprom4 = sext i32 %add to i64, !taffo.info !65
  %arrayidx5 = getelementptr inbounds [300 x float], [300 x float]* %arr, i64 0, i64 %idxprom4, !taffo.info !41
  store float %conv3, float* %arrayidx5, align 4
  %rem6 = srem i32 %i.0, 4, !taffo.info !67, !taffo.constinfo !35
  %conv7 = sitofp i32 %rem6 to double, !taffo.info !67
  %add8 = fadd double %conv7, 3.400000e+00, !taffo.info !69, !taffo.constinfo !71
  %conv9 = fptrunc double %add8 to float, !taffo.info !74
  %add10 = add nsw i32 %i.0, 2, !taffo.info !76, !taffo.constinfo !35
  %idxprom11 = sext i32 %add10 to i64, !taffo.info !76
  %arrayidx12 = getelementptr inbounds [300 x float], [300 x float]* %arr, i64 0, i64 %idxprom11, !taffo.info !41
  store float %conv9, float* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %add13 = add nsw i32 %i.0, 3, !taffo.info !78, !taffo.constinfo !35
  br label %for.cond, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc38, %for.end
  %i17.0 = phi i32 [ 0, %for.end ], [ %inc, %for.inc38 ], !taffo.info !81
  %cmp19 = icmp slt i32 %i17.0, 100, !taffo.info !59
  br i1 %cmp19, label %for.body21, label %for.end39

for.body21:                                       ; preds = %for.cond18
  %mul = mul nsw i32 %i17.0, 3, !taffo.info !63, !taffo.constinfo !35
  %idxprom22 = sext i32 %mul to i64, !taffo.info !63
  %arrayidx23 = getelementptr inbounds [300 x float], [300 x float]* %arr, i64 0, i64 %idxprom22, !taffo.info !41
  %.flt = load float, float* %arrayidx23, align 4, !taffo.info !47, !taffo.initweight !83, !taffo.target !50
  %0 = fmul float 0x41B0000000000000, %.flt, !taffo.info !47, !taffo.target !50
  %.flt.fallback.s4_28fixp = fptosi float %0 to i32, !taffo.info !47, !taffo.target !50
  %idxprom24 = sext i32 %i17.0 to i64, !taffo.info !84
  %arrayidx25.s4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %v.s4_28fixp, i64 0, i64 %idxprom24, !taffo.info !47, !taffo.target !50
  store i32 %.flt.fallback.s4_28fixp, i32* %arrayidx25.s4_28fixp, align 4, !taffo.info !86, !taffo.target !50
  %mul26 = mul nsw i32 %i17.0, 3, !taffo.info !63, !taffo.constinfo !35
  %add27 = add nsw i32 %mul26, 1, !taffo.info !65, !taffo.constinfo !35
  %idxprom28 = sext i32 %add27 to i64, !taffo.info !65
  %arrayidx29 = getelementptr inbounds [300 x float], [300 x float]* %arr, i64 0, i64 %idxprom28, !taffo.info !41
  %.flt1 = load float, float* %arrayidx29, align 4, !taffo.info !51, !taffo.initweight !83
  %1 = fmul float 0x41E0000000000000, %.flt1, !taffo.info !51
  %.flt1.fallback.u1_31fixp = fptoui float %1 to i32, !taffo.info !51
  %idxprom30 = sext i32 %i17.0 to i64, !taffo.info !84
  %arrayidx31.u1_31fixp = getelementptr inbounds [100 x i32], [100 x i32]* %w.u1_31fixp, i64 0, i64 %idxprom30, !taffo.info !51
  store i32 %.flt1.fallback.u1_31fixp, i32* %arrayidx31.u1_31fixp, align 4, !taffo.info !87
  %mul32 = mul nsw i32 %i17.0, 3, !taffo.info !63, !taffo.constinfo !35
  %add33 = add nsw i32 %mul32, 2, !taffo.info !76, !taffo.constinfo !35
  %idxprom34 = sext i32 %add33 to i64, !taffo.info !76
  %arrayidx35 = getelementptr inbounds [300 x float], [300 x float]* %arr, i64 0, i64 %idxprom34, !taffo.info !41
  %.flt2 = load float, float* %arrayidx35, align 4, !taffo.info !54, !taffo.initweight !83
  %2 = fmul float 0x41B0000000000000, %.flt2, !taffo.info !54
  %.flt2.fallback.u4_28fixp = fptoui float %2 to i32, !taffo.info !54
  %idxprom36 = sext i32 %i17.0 to i64, !taffo.info !84
  %arrayidx37.u4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %e.u4_28fixp, i64 0, i64 %idxprom36, !taffo.info !54
  store i32 %.flt2.fallback.u4_28fixp, i32* %arrayidx37.u4_28fixp, align 4, !taffo.info !88
  br label %for.inc38

for.inc38:                                        ; preds = %for.body21
  %inc = add nsw i32 %i17.0, 1, !taffo.info !89, !taffo.constinfo !35
  br label %for.cond18, !llvm.loop !91

for.end39:                                        ; preds = %for.cond18
  %arraydecay.s4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %v.s4_28fixp, i64 0, i64 0, !taffo.info !47, !taffo.target !50
  %arraydecay40.u1_31fixp = getelementptr inbounds [100 x i32], [100 x i32]* %w.u1_31fixp, i64 0, i64 0, !taffo.info !51
  %arraydecay41.u4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %e.u4_28fixp, i64 0, i64 0, !taffo.info !54
  %arraydecay42.s8_24fixp = getelementptr inbounds [100 x i32], [100 x i32]* %res.s8_24fixp, i64 0, i64 0, !taffo.info !43, !taffo.target !46
  call void @test_1_fixp(i32* %arraydecay.s4_28fixp, i32* %arraydecay40.u1_31fixp, i32* %arraydecay41.u4_28fixp, i32* %arraydecay42.s8_24fixp), !taffo.info !92, !taffo.constinfo !93, !taffo.target !46
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)), !taffo.constinfo !35
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc51, %for.end39
  %j.0 = phi i32 [ 0, %for.end39 ], [ %inc52, %for.inc51 ], !taffo.info !81
  %cmp44 = icmp slt i32 %j.0, 100, !taffo.info !59
  br i1 %cmp44, label %for.body46, label %for.end53

for.body46:                                       ; preds = %for.cond43
  %idxprom47 = sext i32 %j.0 to i64, !taffo.info !84
  %arrayidx48.s8_24fixp = getelementptr inbounds [100 x i32], [100 x i32]* %res.s8_24fixp, i64 0, i64 %idxprom47, !taffo.info !43, !taffo.target !46
  %s8_24fixp = load i32, i32* %arrayidx48.s8_24fixp, align 4, !taffo.info !43, !taffo.target !46
  %3 = sitofp i32 %s8_24fixp to double, !taffo.info !43, !taffo.target !46
  %4 = fdiv double %3, 0x4170000000000000, !taffo.info !43, !taffo.target !46
  %call50.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double noundef %4), !taffo.info !94, !taffo.initweight !95, !taffo.constinfo !96, !taffo.target !46
  br label %for.inc51

for.inc51:                                        ; preds = %for.body46
  %inc52 = add nsw i32 %j.0, 1, !taffo.info !89, !taffo.constinfo !35
  br label %for.cond43, !llvm.loop !97

for.end53:                                        ; preds = %for.cond43
  %call54 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)), !taffo.constinfo !35
  ret i32 0
}

declare !taffo.initweight !98 !taffo.funinfo !99 i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_1_fixp(i32* noundef %v, i32* noundef %w, i32* noundef %e, i32* noundef %res) #0 !taffo.initweight !100 !taffo.funinfo !101 !taffo.sourceFunction !102 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.info !103
  %cmp = icmp slt i32 %i.0, 1, !taffo.info !59
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !105
  %cmp2 = icmp slt i32 %j.0, 100, !taffo.info !59
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %j.0 to i64, !taffo.info !107
  %arrayidx.s4_28fixp = getelementptr inbounds i32, i32* %v, i64 %idxprom, !taffo.info !47
  %s4_28fixp = load i32, i32* %arrayidx.s4_28fixp, align 4, !taffo.info !109
  %idxprom4 = sext i32 %j.0 to i64, !taffo.info !107
  %arrayidx5.u1_31fixp = getelementptr inbounds i32, i32* %w, i64 %idxprom4, !taffo.info !51
  %u1_31fixp = load i32, i32* %arrayidx5.u1_31fixp, align 4, !taffo.info !51
  %idxprom6 = sext i32 %j.0 to i64, !taffo.info !107
  %arrayidx7.u4_28fixp = getelementptr inbounds i32, i32* %e, i64 %idxprom6, !taffo.info !54
  %u4_28fixp = load i32, i32* %arrayidx7.u4_28fixp, align 4, !taffo.info !111
  %0 = ashr i32 %s4_28fixp, 1, !taffo.info !109
  %1 = lshr i32 %u4_28fixp, 2, !taffo.info !111
  %call.s8_24fixp = call i32 @ex0.2_s8_24fixp(i32 %0, i32 %u1_31fixp, i32 %1), !taffo.info !113, !taffo.constinfo !34
  %idxprom8 = sext i32 %j.0 to i64, !taffo.info !107
  %arrayidx9.s8_24fixp = getelementptr inbounds i32, i32* %res, i64 %idxprom8, !taffo.info !43
  store i32 %call.s8_24fixp, i32* %arrayidx9.s8_24fixp, align 4, !taffo.info !92
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !114, !taffo.constinfo !35
  br label %for.cond1, !llvm.loop !116

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.info !117, !taffo.constinfo !35
  br label %for.cond, !llvm.loop !119

for.end12:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ex0.2_s8_24fixp(i32 noundef %v.s5_27fixp, i32 noundef %w.u1_31fixp, i32 noundef %r.u6_26fixp) #0 !taffo.initweight !120 !taffo.funinfo !121 !taffo.sourceFunction !122 {
entry:
  %0 = zext i32 %r.u6_26fixp to i64, !taffo.info !111
  %1 = zext i32 %r.u6_26fixp to i64, !taffo.info !111
  %2 = mul i64 %0, %1, !taffo.info !123
  %3 = lshr i64 %2, 26, !taffo.info !123
  %mul.u6_26fixp = trunc i64 %3 to i32, !taffo.info !126
  %4 = zext i32 -2147483648 to i64
  %5 = shl i64 %4, 25
  %6 = zext i32 %mul.u6_26fixp to i64, !taffo.info !126
  %7 = udiv i64 %5, %6, !taffo.info !127, !taffo.constinfo !13
  %div.u3_29fixp = trunc i64 %7 to i32, !taffo.info !130
  %8 = lshr i32 -1073741824, 1
  %add.u3_29fixp = add i32 %8, %div.u3_29fixp, !taffo.info !132, !taffo.constinfo !16
  %9 = lshr i32 -1073741824, 2
  %10 = sext i32 -2 to i64
  %11 = sext i32 %v.s5_27fixp to i64, !taffo.info !109
  %12 = mul i64 %10, %11, !taffo.info !134
  %13 = shl i64 %12, 1
  %14 = trunc i64 %13 to i32
  %u4_28fixp = add i32 %14, %9, !taffo.info !137
  %15 = zext i32 1 to i64
  %16 = zext i32 %u4_28fixp to i64, !taffo.info !137
  %17 = mul i64 %15, %16, !taffo.info !138, !taffo.constinfo !22
  %18 = lshr i64 %17, 3, !taffo.info !138, !taffo.constinfo !22
  %mul2.u4_28fixp = trunc i64 %18 to i32, !taffo.info !141
  %19 = zext i32 %w.u1_31fixp to i64, !taffo.info !51
  %20 = zext i32 %w.u1_31fixp to i64, !taffo.info !51
  %21 = mul i64 %19, %20, !taffo.info !142
  %22 = lshr i64 %21, 31, !taffo.info !142
  %mul3.u1_31fixp = trunc i64 %22 to i32, !taffo.info !51
  %23 = zext i32 %mul3.u1_31fixp to i64, !taffo.info !51
  %24 = zext i32 %r.u6_26fixp to i64, !taffo.info !111
  %25 = mul i64 %23, %24, !taffo.info !144
  %26 = lshr i64 %25, 31, !taffo.info !144
  %mul4.u6_26fixp = trunc i64 %26 to i32, !taffo.info !147
  %27 = zext i32 %mul4.u6_26fixp to i64, !taffo.info !147
  %28 = zext i32 %r.u6_26fixp to i64, !taffo.info !111
  %29 = mul i64 %27, %28, !taffo.info !148
  %30 = lshr i64 %29, 27, !taffo.info !148
  %mul5.u7_25fixp = trunc i64 %30 to i32, !taffo.info !150
  %31 = zext i32 %mul2.u4_28fixp to i64, !taffo.info !141
  %32 = zext i32 %mul5.u7_25fixp to i64, !taffo.info !150
  %33 = mul i64 %31, %32, !taffo.info !152
  %34 = lshr i64 %33, 28, !taffo.info !152
  %mul6.u7_25fixp = trunc i64 %34 to i32, !taffo.info !155
  %35 = lshr i32 -2147483648, 3
  %36 = shl i32 %v.s5_27fixp, 1, !taffo.info !109
  %sub.s4_28fixp = sub i32 %35, %36, !taffo.info !156, !taffo.constinfo !25
  %37 = zext i32 %mul6.u7_25fixp to i64, !taffo.info !155
  %38 = shl i64 %37, 27, !taffo.info !155
  %39 = sext i32 %sub.s4_28fixp to i64, !taffo.info !156
  %40 = sdiv i64 %38, %39, !taffo.info !158
  %div7.s8_24fixp = trunc i64 %40 to i32, !taffo.info !160
  %41 = lshr i32 %add.u3_29fixp, 5, !taffo.info !132, !taffo.constinfo !16
  %sub8.s8_24fixp = sub i32 %41, %div7.s8_24fixp, !taffo.info !161
  %42 = lshr i32 -1879048192, 5
  %sub9.s8_24fixp = sub i32 %sub8.s8_24fixp, %42, !taffo.info !113, !taffo.constinfo !28
  ret i32 %sub9.s8_24fixp, !taffo.info !86, !taffo.initweight !163
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{i32 -1, i32 -1, i32 -1}
!11 = distinct !{null}
!12 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!13 = !{!14, i1 false}
!14 = !{i1 false, !15, i1 false, i2 0}
!15 = !{double 2.000000e+00, double 2.000000e+00}
!16 = !{!17, i1 false}
!17 = !{i1 false, !18, i1 false, i2 0}
!18 = !{double 3.000000e+00, double 3.000000e+00}
!19 = !{!20, i1 false, !17, i1 false}
!20 = !{i1 false, !21, i1 false, i2 0}
!21 = !{double -2.000000e+00, double -2.000000e+00}
!22 = !{!23, i1 false}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 1.250000e-01, double 1.250000e-01}
!25 = !{!26, i1 false}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 1.000000e+00, double 1.000000e+00}
!28 = !{i1 false, !29}
!29 = !{i1 false, !30, i1 false, i2 0}
!30 = !{double 4.500000e+00, double 4.500000e+00}
!31 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!32 = distinct !{null}
!33 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!34 = !{i1 false, i1 false, i1 false, i1 false}
!35 = !{i1 false, i1 false}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = distinct !{!38, !37}
!39 = !{}
!40 = !{i1 true}
!41 = !{i1 false, !42, i1 false, i2 0}
!42 = !{double -5.000000e+00, double 0x40199999A0000000}
!43 = !{!44, !45, i1 false, i2 1}
!44 = !{!"fixp", i32 -32, i32 24}
!45 = !{double 0xC05915419124E30B, double 0xBFF5C8AFDDF61270}
!46 = !{!"res"}
!47 = !{!48, !49, i1 false, i2 -1}
!48 = !{!"fixp", i32 -32, i32 28}
!49 = !{double -5.000000e+00, double 0.000000e+00}
!50 = !{!"main"}
!51 = !{!52, !53, i1 false, i2 -1}
!52 = !{!"fixp", i32 32, i32 31}
!53 = !{double 0.000000e+00, double 1.000000e+00}
!54 = !{!55, !56, i1 false, i2 -1}
!55 = !{!"fixp", i32 32, i32 28}
!56 = !{double 3.800000e+00, double 0x401F333333333333}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 0.000000e+00, double 3.030000e+02}
!59 = !{i1 false, !53, i1 false, i2 0}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 0.000000e+00, double 5.000000e+00}
!62 = !{i1 false, !49, i1 false, i2 0}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double 0.000000e+00, double 3.000000e+02}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 1.000000e+00, double 3.010000e+02}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 0.000000e+00, double 3.000000e+00}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 3.400000e+00, double 6.400000e+00}
!71 = !{i1 false, !72}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 3.400000e+00, double 3.400000e+00}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 0x400B333320000000, double 0x40199999A0000000}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 2.000000e+00, double 3.020000e+02}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 3.000000e+00, double 3.030000e+02}
!80 = distinct !{!80, !37}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 0.000000e+00, double 1.010000e+02}
!83 = !{i32 3}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 0.000000e+00, double 1.000000e+02}
!86 = !{i1 false, !49, i1 false, i2 -1}
!87 = !{i1 false, !53, i1 false, i2 -1}
!88 = !{i1 false, !56, i1 false, i2 -1}
!89 = !{i1 false, !90, i1 false, i2 0}
!90 = !{double 1.000000e+00, double 1.010000e+02}
!91 = distinct !{!91, !37}
!92 = !{i1 false, i1 false, i1 false, i2 1}
!93 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!94 = !{!44, i1 false, i1 false, i2 1}
!95 = !{i32 4}
!96 = !{i1 false, i1 false, i1 false}
!97 = distinct !{!97, !37}
!98 = !{i32 -1}
!99 = !{i32 0, i1 false}
!100 = !{i32 2, i32 2, i32 2, i32 2}
!101 = !{i32 1, !47, i32 1, !51, i32 1, !54, i32 1, !43}
!102 = !{void (float*, float*, float*, float*)* @test}
!103 = !{i1 false, !104, i1 false, i2 0}
!104 = !{double 0.000000e+00, double 2.000000e+00}
!105 = !{i1 false, !106, i1 false, i2 0}
!106 = !{double 0.000000e+00, double 2.020000e+02}
!107 = !{i1 false, !108, i1 false, i2 0}
!108 = !{double 0.000000e+00, double 2.010000e+02}
!109 = !{!110, !49, i1 false, i2 -1}
!110 = !{!"fixp", i32 -32, i32 27}
!111 = !{!112, !56, i1 false, i2 -1}
!112 = !{!"fixp", i32 32, i32 26}
!113 = !{!44, !45, i1 false, i2 -1}
!114 = !{i1 false, !115, i1 false, i2 0}
!115 = !{double 1.000000e+00, double 2.020000e+02}
!116 = distinct !{!116, !37}
!117 = !{i1 false, !118, i1 false, i2 0}
!118 = !{double 1.000000e+00, double 2.000000e+00}
!119 = distinct !{!119, !37}
!120 = !{i32 7, i32 7, i32 7}
!121 = !{i32 1, !109, i32 1, !51, i32 1, !111}
!122 = !{float (float, float, float)* @ex0}
!123 = !{!124, !125, i1 false, i2 -1}
!124 = !{!"fixp", i32 64, i32 52}
!125 = !{double 1.444000e+01, double 0x404E6B851EB851EB}
!126 = !{!112, !125, i1 false, i2 -1}
!127 = !{!128, !129, i1 false, i2 -1}
!128 = !{!"fixp", i32 64, i32 29}
!129 = !{double 0x3FA0D4BE86FC20FD, double 0x3FC1BA81104F6C80}
!130 = !{!131, !129, i1 false, i2 -1}
!131 = !{!"fixp", i32 32, i32 29}
!132 = !{!131, !133, i1 false, i2 -1}
!133 = !{double 0x40084352FA1BF084, double 0x40091BA81104F6C8}
!134 = !{!135, !136, i1 false, i2 -1}
!135 = !{!"fixp", i32 64, i32 27}
!136 = !{double 3.000000e+00, double 1.300000e+01}
!137 = !{!55, !136, i1 false, i2 -1}
!138 = !{!139, !140, i1 false, i2 -1}
!139 = !{!"fixp", i32 64, i32 31}
!140 = !{double 3.750000e-01, double 1.625000e+00}
!141 = !{!55, !140, i1 false, i2 -1}
!142 = !{!143, !53, i1 false, i2 -1}
!143 = !{!"fixp", i32 64, i32 62}
!144 = !{!145, !146, i1 false, i2 -1}
!145 = !{!"fixp", i32 64, i32 57}
!146 = !{double 0.000000e+00, double 0x401F333333333333}
!147 = !{!112, !146, i1 false, i2 -1}
!148 = !{!124, !149, i1 false, i2 -1}
!149 = !{double 0.000000e+00, double 0x404E6B851EB851EB}
!150 = !{!151, !149, i1 false, i2 -1}
!151 = !{!"fixp", i32 32, i32 25}
!152 = !{!153, !154, i1 false, i2 -1}
!153 = !{!"fixp", i32 64, i32 53}
!154 = !{double 0.000000e+00, double 0x4058B75C28F5C28F}
!155 = !{!151, !154, i1 false, i2 -1}
!156 = !{!48, !157, i1 false, i2 -1}
!157 = !{double 1.000000e+00, double 6.000000e+00}
!158 = !{!159, !154, i1 false, i2 -1}
!159 = !{!"fixp", i32 -64, i32 24}
!160 = !{!44, !154, i1 false, i2 -1}
!161 = !{!44, !162, i1 false, i2 -1}
!162 = !{double 0xC057F5419124E30B, double 0x40091BA81104F6C8}
!163 = !{i32 14}
