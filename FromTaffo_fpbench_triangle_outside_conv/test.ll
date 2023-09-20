; ModuleID = '/tmp/tmp.X8cR3MaQFu/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.7 = private unnamed_addr constant [14 x i8] c"Values Begin\0A\00", align 1, !taffo.info !0
@.str.8 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1, !taffo.info !2
@.str.9 = private unnamed_addr constant [12 x i8] c"Values End\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local float @ex0(float noundef %a, float noundef %b, float noundef %c) #0 !taffo.initweight !10 !taffo.equivalentChild !11 !taffo.funinfo !12 {
entry:
  %add = fadd float %a, %b
  %add1 = fadd float %add, %c
  %conv = fpext float %add1 to double
  %div = fdiv double %conv, 2.000000e+00, !taffo.constinfo !13
  %conv2 = fptrunc double %div to float
  %sub = fsub float %conv2, %a
  %mul = fmul float %conv2, %sub
  %sub3 = fsub float %conv2, %b
  %mul4 = fmul float %mul, %sub3
  %sub5 = fsub float %conv2, %c
  %mul6 = fmul float %mul4, %sub5
  %conv7 = fpext float %mul6 to double
  %call = call double @sqrt(double noundef %conv7) #3, !taffo.constinfo !16
  %conv8 = fptrunc double %call to float
  ret float %conv8
}

; Function Attrs: nounwind
declare !taffo.initweight !17 !taffo.funinfo !18 double @sqrt(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(float* noundef %arr, float* noundef %res) #0 !taffo.initweight !19 !taffo.equivalentChild !20 !taffo.funinfo !21 !taffo.start !22 {
entry:
  %a.s5_27fixp = alloca [100 x i32], align 16, !taffo.info !23, !taffo.target !26
  %b.s5_27fixp = alloca [100 x i32], align 16, !taffo.info !23, !taffo.target !27
  %c.s5_27fixp = alloca [100 x i32], align 16, !taffo.info !23, !taffo.target !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !29
  %cmp = icmp slt i32 %i.0, 100, !taffo.info !31
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 3, !taffo.info !33, !taffo.constinfo !16
  %idxprom = sext i32 %mul to i64, !taffo.info !33
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %.flt = load float, float* %arrayidx, align 4, !taffo.info !23, !taffo.initweight !35, !taffo.target !26
  %0 = fmul float 0x41A0000000000000, %.flt, !taffo.info !23, !taffo.target !26
  %.flt.fallback.s5_27fixp = fptosi float %0 to i32, !taffo.info !23, !taffo.target !26
  %idxprom4 = sext i32 %i.0 to i64, !taffo.info !36
  %arrayidx5.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %a.s5_27fixp, i64 0, i64 %idxprom4, !taffo.info !23, !taffo.target !26
  store i32 %.flt.fallback.s5_27fixp, i32* %arrayidx5.s5_27fixp, align 4, !taffo.info !38, !taffo.target !26
  %mul6 = mul nsw i32 %i.0, 3, !taffo.info !33, !taffo.constinfo !16
  %add = add nsw i32 %mul6, 1, !taffo.info !39, !taffo.constinfo !16
  %idxprom7 = sext i32 %add to i64, !taffo.info !39
  %arrayidx8 = getelementptr inbounds float, float* %arr, i64 %idxprom7
  %.flt1 = load float, float* %arrayidx8, align 4, !taffo.info !23, !taffo.initweight !35, !taffo.target !27
  %1 = fmul float 0x41A0000000000000, %.flt1, !taffo.info !23, !taffo.target !27
  %.flt1.fallback.s5_27fixp = fptosi float %1 to i32, !taffo.info !23, !taffo.target !27
  %idxprom9 = sext i32 %i.0 to i64, !taffo.info !36
  %arrayidx10.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %b.s5_27fixp, i64 0, i64 %idxprom9, !taffo.info !23, !taffo.target !27
  store i32 %.flt1.fallback.s5_27fixp, i32* %arrayidx10.s5_27fixp, align 4, !taffo.info !38, !taffo.target !27
  %mul11 = mul nsw i32 %i.0, 3, !taffo.info !33, !taffo.constinfo !16
  %add12 = add nsw i32 %mul11, 2, !taffo.info !41, !taffo.constinfo !16
  %idxprom13 = sext i32 %add12 to i64, !taffo.info !41
  %arrayidx14 = getelementptr inbounds float, float* %arr, i64 %idxprom13
  %.flt2 = load float, float* %arrayidx14, align 4, !taffo.info !23, !taffo.initweight !35, !taffo.target !28
  %2 = fmul float 0x41A0000000000000, %.flt2, !taffo.info !23, !taffo.target !28
  %.flt2.fallback.s5_27fixp = fptosi float %2 to i32, !taffo.info !23, !taffo.target !28
  %idxprom15 = sext i32 %i.0 to i64, !taffo.info !36
  %arrayidx16.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %c.s5_27fixp, i64 0, i64 %idxprom15, !taffo.info !23, !taffo.target !28
  store i32 %.flt2.fallback.s5_27fixp, i32* %arrayidx16.s5_27fixp, align 4, !taffo.info !38, !taffo.target !28
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !43, !taffo.constinfo !16
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc35, %for.end
  %i17.0 = phi i32 [ 0, %for.end ], [ %inc36, %for.inc35 ], !taffo.info !47
  %cmp19 = icmp slt i32 %i17.0, 1, !taffo.info !31
  br i1 %cmp19, label %for.body20, label %for.end37

for.body20:                                       ; preds = %for.cond18
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc32, %for.body20
  %j.0 = phi i32 [ 0, %for.body20 ], [ %inc33, %for.inc32 ], !taffo.info !49
  %cmp22 = icmp slt i32 %j.0, 100, !taffo.info !31
  br i1 %cmp22, label %for.body23, label %for.end34

for.body23:                                       ; preds = %for.cond21
  %idxprom24 = sext i32 %j.0 to i64, !taffo.info !51
  %arrayidx25.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %a.s5_27fixp, i64 0, i64 %idxprom24, !taffo.info !23, !taffo.target !26
  %s5_27fixp = load i32, i32* %arrayidx25.s5_27fixp, align 4, !taffo.info !53, !taffo.target !26
  %idxprom26 = sext i32 %j.0 to i64, !taffo.info !51
  %arrayidx27.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %b.s5_27fixp, i64 0, i64 %idxprom26, !taffo.info !23, !taffo.target !27
  %s5_27fixp3 = load i32, i32* %arrayidx27.s5_27fixp, align 4, !taffo.info !53, !taffo.target !27
  %idxprom28 = sext i32 %j.0 to i64, !taffo.info !51
  %arrayidx29.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %c.s5_27fixp, i64 0, i64 %idxprom28, !taffo.info !23, !taffo.target !28
  %s5_27fixp4 = load i32, i32* %arrayidx29.s5_27fixp, align 4, !taffo.info !53, !taffo.target !28
  %3 = ashr i32 %s5_27fixp, 1, !taffo.info !53, !taffo.target !26
  %4 = ashr i32 %s5_27fixp3, 1, !taffo.info !53, !taffo.target !27
  %5 = ashr i32 %s5_27fixp4, 1, !taffo.info !53, !taffo.target !28
  %call.u9_23fixp = call i32 @ex0.2_u9_23fixp(i32 %3, i32 %4, i32 %5), !taffo.info !55, !taffo.constinfo !58, !taffo.target !26
  %6 = uitofp i32 %call.u9_23fixp to float, !taffo.info !55, !taffo.target !26
  %7 = fdiv float %6, 0x4160000000000000, !taffo.info !55, !taffo.target !26
  %idxprom30 = sext i32 %j.0 to i64, !taffo.info !51
  %arrayidx31 = getelementptr inbounds float, float* %res, i64 %idxprom30
  store float %7, float* %arrayidx31, align 4, !taffo.info !38, !taffo.target !26
  br label %for.inc32

for.inc32:                                        ; preds = %for.body23
  %inc33 = add nsw i32 %j.0, 1, !taffo.info !59, !taffo.constinfo !16
  br label %for.cond21, !llvm.loop !61

for.end34:                                        ; preds = %for.cond21
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %inc36 = add nsw i32 %i17.0, 1, !taffo.info !62, !taffo.constinfo !16
  br label %for.cond18, !llvm.loop !64

for.end37:                                        ; preds = %for.cond18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !65 !taffo.funinfo !65 !taffo.start !22 {
entry:
  %arr.s5_27fixp = alloca [300 x i32], align 16, !taffo.info !23, !taffo.target !66
  %res.u9_23fixp = alloca [100 x i32], align 16, !taffo.info !67, !taffo.target !68
  %add = fadd float 0x40389999A0000000, 1.000000e+00, !taffo.info !69, !taffo.initweight !71, !taffo.constinfo !72
  %0 = fmul float 0x41A0000000000000, %add, !taffo.info !69, !taffo.constinfo !72
  %1 = fptosi float %0 to i32, !taffo.info !69
  %arrayidx.s5_27fixp = getelementptr inbounds [300 x i32], [300 x i32]* %arr.s5_27fixp, i64 0, i64 0, !taffo.info !23, !taffo.target !66
  store i32 %1, i32* %arrayidx.s5_27fixp, align 16, !taffo.info !38, !taffo.target !66
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !77
  %cmp = icmp slt i32 %i.0, 300, !taffo.info !75
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 19, !taffo.info !79, !taffo.constinfo !16
  %sub = sub nsw i32 %rem, 9, !taffo.info !81, !taffo.constinfo !16
  %conv.s5_27fixp = shl i32 %sub, 27, !taffo.info !23, !taffo.constinfo !16, !taffo.target !66
  %idxprom = sext i32 %i.0 to i64, !taffo.info !82
  %arrayidx4.s5_27fixp = getelementptr inbounds [300 x i32], [300 x i32]* %arr.s5_27fixp, i64 0, i64 %idxprom, !taffo.info !23, !taffo.target !66
  store i32 %conv.s5_27fixp, i32* %arrayidx4.s5_27fixp, align 4, !taffo.info !38, !taffo.target !66
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !84, !taffo.constinfo !16
  br label %for.cond, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  %arraydecay.s5_27fixp = getelementptr inbounds [300 x i32], [300 x i32]* %arr.s5_27fixp, i64 0, i64 0, !taffo.info !23, !taffo.target !66
  %arraydecay5.u9_23fixp = getelementptr inbounds [100 x i32], [100 x i32]* %res.u9_23fixp, i64 0, i64 0, !taffo.info !67, !taffo.target !68
  call void @test_1_fixp(i32* %arraydecay.s5_27fixp, i32* %arraydecay5.u9_23fixp), !taffo.info !38, !taffo.constinfo !87, !taffo.target !66
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)), !taffo.constinfo !16
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc14, %for.end
  %j.0 = phi i32 [ 0, %for.end ], [ %inc15, %for.inc14 ], !taffo.info !29
  %cmp7 = icmp slt i32 %j.0, 100, !taffo.info !31
  br i1 %cmp7, label %for.body9, label %for.end16

for.body9:                                        ; preds = %for.cond6
  %idxprom10 = sext i32 %j.0 to i64, !taffo.info !36
  %arrayidx11.u9_23fixp = getelementptr inbounds [100 x i32], [100 x i32]* %res.u9_23fixp, i64 0, i64 %idxprom10, !taffo.info !67, !taffo.target !68
  %u9_23fixp = load i32, i32* %arrayidx11.u9_23fixp, align 4, !taffo.info !67, !taffo.target !68
  %2 = uitofp i32 %u9_23fixp to double, !taffo.info !67, !taffo.target !68
  %3 = fdiv double %2, 0x4160000000000000, !taffo.info !67, !taffo.target !68
  %call13.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), double noundef %3), !taffo.info !88, !taffo.initweight !89, !taffo.constinfo !87, !taffo.target !68
  br label %for.inc14

for.inc14:                                        ; preds = %for.body9
  %inc15 = add nsw i32 %j.0, 1, !taffo.info !43, !taffo.constinfo !16
  br label %for.cond6, !llvm.loop !90

for.end16:                                        ; preds = %for.cond6
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0)), !taffo.constinfo !16
  ret i32 0
}

declare !taffo.initweight !17 !taffo.funinfo !18 i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_1_fixp(i32* noundef %arr, i32* noundef %res) #0 !taffo.initweight !91 !taffo.funinfo !92 !taffo.start !22 !taffo.sourceFunction !93 {
entry:
  %a.s5_27fixp = alloca [100 x i32], align 16, !taffo.info !23, !taffo.target !26
  %b.s5_27fixp = alloca [100 x i32], align 16, !taffo.info !23, !taffo.target !27
  %c.s5_27fixp = alloca [100 x i32], align 16, !taffo.info !23, !taffo.target !28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !29
  %cmp = icmp slt i32 %i.0, 100, !taffo.info !31
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 3, !taffo.info !33, !taffo.constinfo !16
  %idxprom = sext i32 %mul to i64, !taffo.info !33
  %arrayidx.s5_27fixp = getelementptr inbounds i32, i32* %arr, i64 %idxprom, !taffo.info !23
  %s5_27fixp = load i32, i32* %arrayidx.s5_27fixp, align 4, !taffo.info !23, !taffo.target !26
  %idxprom4 = sext i32 %i.0 to i64, !taffo.info !36
  %arrayidx5.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %a.s5_27fixp, i64 0, i64 %idxprom4, !taffo.info !23, !taffo.target !26
  store i32 %s5_27fixp, i32* %arrayidx5.s5_27fixp, align 4, !taffo.info !38, !taffo.target !26
  %mul6 = mul nsw i32 %i.0, 3, !taffo.info !33, !taffo.constinfo !16
  %add = add nsw i32 %mul6, 1, !taffo.info !39, !taffo.constinfo !16
  %idxprom7 = sext i32 %add to i64, !taffo.info !39
  %arrayidx8.s5_27fixp = getelementptr inbounds i32, i32* %arr, i64 %idxprom7, !taffo.info !23
  %s5_27fixp1 = load i32, i32* %arrayidx8.s5_27fixp, align 4, !taffo.info !23, !taffo.target !27
  %idxprom9 = sext i32 %i.0 to i64, !taffo.info !36
  %arrayidx10.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %b.s5_27fixp, i64 0, i64 %idxprom9, !taffo.info !23, !taffo.target !27
  store i32 %s5_27fixp1, i32* %arrayidx10.s5_27fixp, align 4, !taffo.info !38, !taffo.target !27
  %mul11 = mul nsw i32 %i.0, 3, !taffo.info !33, !taffo.constinfo !16
  %add12 = add nsw i32 %mul11, 2, !taffo.info !41, !taffo.constinfo !16
  %idxprom13 = sext i32 %add12 to i64, !taffo.info !41
  %arrayidx14.s5_27fixp = getelementptr inbounds i32, i32* %arr, i64 %idxprom13, !taffo.info !23
  %s5_27fixp2 = load i32, i32* %arrayidx14.s5_27fixp, align 4, !taffo.info !23, !taffo.target !28
  %idxprom15 = sext i32 %i.0 to i64, !taffo.info !36
  %arrayidx16.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %c.s5_27fixp, i64 0, i64 %idxprom15, !taffo.info !23, !taffo.target !28
  store i32 %s5_27fixp2, i32* %arrayidx16.s5_27fixp, align 4, !taffo.info !38, !taffo.target !28
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !43, !taffo.constinfo !16
  br label %for.cond, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc35, %for.end
  %i17.0 = phi i32 [ 0, %for.end ], [ %inc36, %for.inc35 ], !taffo.info !47
  %cmp19 = icmp slt i32 %i17.0, 1, !taffo.info !31
  br i1 %cmp19, label %for.body20, label %for.end37

for.body20:                                       ; preds = %for.cond18
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc32, %for.body20
  %j.0 = phi i32 [ 0, %for.body20 ], [ %inc33, %for.inc32 ], !taffo.info !49
  %cmp22 = icmp slt i32 %j.0, 100, !taffo.info !31
  br i1 %cmp22, label %for.body23, label %for.end34

for.body23:                                       ; preds = %for.cond21
  %idxprom24 = sext i32 %j.0 to i64, !taffo.info !51
  %arrayidx25.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %a.s5_27fixp, i64 0, i64 %idxprom24, !taffo.info !23, !taffo.target !26
  %s5_27fixp3 = load i32, i32* %arrayidx25.s5_27fixp, align 4, !taffo.info !53, !taffo.target !26
  %idxprom26 = sext i32 %j.0 to i64, !taffo.info !51
  %arrayidx27.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %b.s5_27fixp, i64 0, i64 %idxprom26, !taffo.info !23, !taffo.target !27
  %s5_27fixp4 = load i32, i32* %arrayidx27.s5_27fixp, align 4, !taffo.info !53, !taffo.target !27
  %idxprom28 = sext i32 %j.0 to i64, !taffo.info !51
  %arrayidx29.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %c.s5_27fixp, i64 0, i64 %idxprom28, !taffo.info !23, !taffo.target !28
  %s5_27fixp5 = load i32, i32* %arrayidx29.s5_27fixp, align 4, !taffo.info !53, !taffo.target !28
  %0 = ashr i32 %s5_27fixp3, 1, !taffo.info !53, !taffo.target !26
  %1 = ashr i32 %s5_27fixp4, 1, !taffo.info !53, !taffo.target !27
  %2 = ashr i32 %s5_27fixp5, 1, !taffo.info !53, !taffo.target !28
  %call.u9_23fixp = call i32 @ex0.2_u9_23fixp(i32 %0, i32 %1, i32 %2), !taffo.info !55, !taffo.constinfo !58, !taffo.target !26
  %idxprom30 = sext i32 %j.0 to i64, !taffo.info !51
  %arrayidx31.u9_23fixp = getelementptr inbounds i32, i32* %res, i64 %idxprom30, !taffo.info !67
  store i32 %call.u9_23fixp, i32* %arrayidx31.u9_23fixp, align 4, !taffo.info !38, !taffo.target !26
  br label %for.inc32

for.inc32:                                        ; preds = %for.body23
  %inc33 = add nsw i32 %j.0, 1, !taffo.info !59, !taffo.constinfo !16
  br label %for.cond21, !llvm.loop !95

for.end34:                                        ; preds = %for.cond21
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %inc36 = add nsw i32 %i17.0, 1, !taffo.info !62, !taffo.constinfo !16
  br label %for.cond18, !llvm.loop !96

for.end37:                                        ; preds = %for.cond18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ex0.2_u9_23fixp(i32 noundef %a.s6_26fixp, i32 noundef %b.s6_26fixp, i32 noundef %c.s6_26fixp) #0 !taffo.initweight !97 !taffo.funinfo !98 !taffo.sourceFunction !99 {
entry:
  %add.s6_26fixp = add i32 %a.s6_26fixp, %b.s6_26fixp, !taffo.info !100
  %add1.s6_26fixp = add i32 %add.s6_26fixp, %c.s6_26fixp, !taffo.info !102
  %div.s6_26fixp = sdiv i32 %add1.s6_26fixp, 2, !taffo.info !104, !taffo.constinfo !13
  %sub.s6_26fixp = sub i32 %div.s6_26fixp, %a.s6_26fixp, !taffo.info !106
  %0 = sext i32 %div.s6_26fixp to i64, !taffo.info !104
  %1 = sext i32 %sub.s6_26fixp to i64, !taffo.info !106
  %2 = mul i64 %0, %1, !taffo.info !108
  %3 = ashr i64 %2, 30, !taffo.info !108
  %mul.s10_22fixp = trunc i64 %3 to i32, !taffo.info !111
  %sub3.s6_26fixp = sub i32 %div.s6_26fixp, %b.s6_26fixp, !taffo.info !106
  %4 = sext i32 %mul.s10_22fixp to i64, !taffo.info !111
  %5 = sext i32 %sub3.s6_26fixp to i64, !taffo.info !106
  %6 = mul i64 %4, %5, !taffo.info !113
  %7 = ashr i64 %6, 30, !taffo.info !113
  %mul4.s14_18fixp = trunc i64 %7 to i32, !taffo.info !116
  %sub5.s6_26fixp = sub i32 %div.s6_26fixp, %c.s6_26fixp, !taffo.info !106
  %8 = sext i32 %mul4.s14_18fixp to i64, !taffo.info !116
  %9 = sext i32 %sub5.s6_26fixp to i64, !taffo.info !106
  %10 = mul i64 %8, %9, !taffo.info !118
  %11 = ashr i64 %10, 31, !taffo.info !118
  %mul6.s19_13fixp = trunc i64 %11 to i32, !taffo.info !121
  %12 = sitofp i32 %mul6.s19_13fixp to double, !taffo.info !121
  %13 = fdiv double %12, 8.192000e+03, !taffo.info !121
  %call.flt = call double @sqrt(double noundef %13) #3, !taffo.info !123, !taffo.initweight !125, !taffo.constinfo !16
  %14 = fmul double 0x4160000000000000, %call.flt, !taffo.info !123, !taffo.constinfo !16
  %call.flt.fallback.u9_23fixp = fptoui double %14 to i32, !taffo.info !55
  ret i32 %call.flt.fallback.u9_23fixp, !taffo.info !38, !taffo.initweight !126
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!11 = distinct !{null, null}
!12 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!13 = !{i1 false, !14}
!14 = !{i1 false, !15, i1 false, i2 0}
!15 = !{double 2.000000e+00, double 2.000000e+00}
!16 = !{i1 false, i1 false}
!17 = !{i32 -1}
!18 = !{i32 0, i1 false}
!19 = !{i32 -1, i32 -1}
!20 = distinct !{null}
!21 = !{i32 0, i1 false, i32 0, i1 false}
!22 = !{i1 true}
!23 = !{!24, !25, i1 false, i2 -1}
!24 = !{!"fixp", i32 -32, i32 27}
!25 = !{double -9.000000e+00, double 9.000000e+00}
!26 = !{!"a"}
!27 = !{!"b"}
!28 = !{!"c"}
!29 = !{i1 false, !30, i1 false, i2 0}
!30 = !{double 0.000000e+00, double 1.010000e+02}
!31 = !{i1 false, !32, i1 false, i2 0}
!32 = !{double 0.000000e+00, double 1.000000e+00}
!33 = !{i1 false, !34, i1 false, i2 0}
!34 = !{double 0.000000e+00, double 3.000000e+02}
!35 = !{i32 3}
!36 = !{i1 false, !37, i1 false, i2 0}
!37 = !{double 0.000000e+00, double 1.000000e+02}
!38 = !{i1 false, !25, i1 false, i2 -1}
!39 = !{i1 false, !40, i1 false, i2 0}
!40 = !{double 1.000000e+00, double 3.010000e+02}
!41 = !{i1 false, !42, i1 false, i2 0}
!42 = !{double 2.000000e+00, double 3.020000e+02}
!43 = !{i1 false, !44, i1 false, i2 0}
!44 = !{double 1.000000e+00, double 1.010000e+02}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 0.000000e+00, double 2.000000e+00}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 0.000000e+00, double 2.020000e+02}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0.000000e+00, double 2.010000e+02}
!53 = !{!54, !25, i1 false, i2 -1}
!54 = !{!"fixp", i32 -32, i32 26}
!55 = !{!56, !57, i1 false, i2 -1}
!56 = !{!"fixp", i32 32, i32 23}
!57 = !{double 0.000000e+00, double 0x4078823BC0000000}
!58 = !{i1 false, i1 false, i1 false, i1 false}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 1.000000e+00, double 2.020000e+02}
!61 = distinct !{!61, !46}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 1.000000e+00, double 2.000000e+00}
!64 = distinct !{!64, !46}
!65 = !{}
!66 = !{!"arr"}
!67 = !{!56, !57, i1 false, i2 1}
!68 = !{!"res"}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 0x40399999A0000000, double 0x40399999A0000000}
!71 = !{i32 2}
!72 = !{!73, !75}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 0x40389999A0000000, double 0x40389999A0000000}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 1.000000e+00, double 1.000000e+00}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 0.000000e+00, double 2.560000e+02}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 0.000000e+00, double 1.800000e+01}
!81 = !{i1 false, !25, i1 false, i2 0}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 0.000000e+00, double 2.550000e+02}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 1.000000e+00, double 2.560000e+02}
!86 = distinct !{!86, !46}
!87 = !{i1 false, i1 false, i1 false}
!88 = !{!56, i1 false, i1 false, i2 1}
!89 = !{i32 4}
!90 = distinct !{!90, !46}
!91 = !{i32 2, i32 2}
!92 = !{i32 1, !23, i32 1, !67}
!93 = !{void (float*, float*)* @test}
!94 = distinct !{!94, !46}
!95 = distinct !{!95, !46}
!96 = distinct !{!96, !46}
!97 = !{i32 3, i32 3, i32 3}
!98 = !{i32 1, !53, i32 1, !53, i32 1, !53}
!99 = !{float (float, float, float)* @ex0}
!100 = !{!54, !101, i1 false, i2 -1}
!101 = !{double -1.800000e+01, double 1.800000e+01}
!102 = !{!54, !103, i1 false, i2 -1}
!103 = !{double -2.700000e+01, double 2.700000e+01}
!104 = !{!54, !105, i1 false, i2 -1}
!105 = !{double -1.350000e+01, double 1.350000e+01}
!106 = !{!54, !107, i1 false, i2 -1}
!107 = !{double -2.250000e+01, double 2.250000e+01}
!108 = !{!109, !110, i1 false, i2 -1}
!109 = !{!"fixp", i32 -64, i32 52}
!110 = !{double -3.037500e+02, double 3.037500e+02}
!111 = !{!112, !110, i1 false, i2 -1}
!112 = !{!"fixp", i32 -32, i32 22}
!113 = !{!114, !115, i1 false, i2 -1}
!114 = !{!"fixp", i32 -64, i32 48}
!115 = !{double 0xC0BAB26000000000, double 0x40BAB26000000000}
!116 = !{!117, !115, i1 false, i2 -1}
!117 = !{!"fixp", i32 -32, i32 18}
!118 = !{!119, !120, i1 false, i2 -1}
!119 = !{!"fixp", i32 -64, i32 44}
!120 = !{double 0xC102C56B80000000, double 0x4102C56B80000000}
!121 = !{!122, !120, i1 false, i2 -1}
!122 = !{!"fixp", i32 -32, i32 13}
!123 = !{!56, !124, i1 false, i2 -1}
!124 = !{double 0.000000e+00, double 0x4078823BA7413BDF}
!125 = !{i32 9}
!126 = !{i32 11}
