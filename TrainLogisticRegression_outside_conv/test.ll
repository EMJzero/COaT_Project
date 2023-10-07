; ModuleID = '/tmp/tmp.opeOnHcXy2/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.4 = private unnamed_addr constant [10 x i8] c"Weights:\0A\00", align 1, !taffo.info !0
@.str.5 = private unnamed_addr constant [6 x i8] c"%.4f \00", align 1, !taffo.info !2
@.str.6 = private unnamed_addr constant [11 x i8] c"\0ALoss: %f\0A\00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local float @sigmoid(float noundef %z) #0 !taffo.initweight !12 !taffo.equivalentChild !13 !taffo.funinfo !14 {
entry:
  %fneg = fneg float %z, !taffo.info !17
  %conv = fpext float %fneg to double, !taffo.info !17
  %call = call double @exp(double noundef %conv) #5, !taffo.info !19, !taffo.constinfo !21
  %add = fadd double 1.000000e+00, %call, !taffo.info !22, !taffo.constinfo !24
  %div = fdiv double 1.000000e+00, %add, !taffo.info !27, !taffo.constinfo !24
  %conv1 = fptrunc double %div to float, !taffo.info !29
  ret float %conv1
}

; Function Attrs: nounwind
declare !taffo.initweight !12 !taffo.funinfo !31 double @exp(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local float @logistic_loss(float noundef %predicted, float noundef %actual) #0 !taffo.initweight !32 !taffo.equivalentChild !33 !taffo.funinfo !34 {
entry:
  %fneg = fneg float %actual
  %conv = fpext float %fneg to double
  %conv1 = fpext float %predicted to double
  %call = call double @log(double noundef %conv1) #5, !taffo.constinfo !21
  %conv2 = fpext float %actual to double
  %sub = fsub double 1.000000e+00, %conv2, !taffo.constinfo !24
  %conv3 = fpext float %predicted to double
  %sub4 = fsub double 1.000000e+00, %conv3, !taffo.constinfo !24
  %call5 = call double @log(double noundef %sub4) #5, !taffo.constinfo !21
  %mul6 = fmul double %sub, %call5
  %neg = fneg double %mul6
  %0 = call double @llvm.fmuladd.f64(double %conv, double %call, double %neg), !taffo.constinfo !35
  %conv7 = fptrunc double %0 to float
  ret float %conv7
}

; Function Attrs: nounwind
declare !taffo.initweight !12 !taffo.funinfo !31 double @log(double noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare !taffo.initweight !36 !taffo.funinfo !37 double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @gradient_descent(i32 noundef %n, float* noundef %w, float* noundef %s, float* noundef %o) #0 !taffo.initweight !38 !taffo.equivalentChild !39 !taffo.funinfo !40 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc45, %entry
  %epoch.0 = phi i32 [ 0, %entry ], [ %inc46, %for.inc45 ]
  %cmp = icmp slt i32 %epoch.0, 1000
  br i1 %cmp, label %for.body, label %for.end47

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc42, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc43, %for.inc42 ]
  %cmp5 = icmp slt i32 %i.0, %n
  br i1 %cmp5, label %for.body6, label %for.end44

for.body6:                                        ; preds = %for.cond4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %j.0 = phi i32 [ 0, %for.body6 ], [ %inc, %for.inc ]
  %cmp8 = icmp slt i32 %j.0, 8
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %mul = mul nsw i32 %i.0, 8, !taffo.constinfo !21
  %add = add nsw i32 %mul, %j.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds float, float* %s, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %idxprom10 = sext i32 %j.0 to i64
  %arrayidx11 = getelementptr inbounds float, float* %s, i64 %idxprom10
  store float %0, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond7, !llvm.loop !41

for.end:                                          ; preds = %for.cond7
  %idxprom12 = sext i32 %i.0 to i64
  %arrayidx13 = getelementptr inbounds float, float* %o, i64 %idxprom12
  %.flt = load float, float* %arrayidx13, align 4, !taffo.info !43, !taffo.initweight !46
  %1 = fmul float 0x41C0000000000000, %.flt, !taffo.info !43
  %.flt.fallback.s3_29fixp = fptosi float %1 to i32, !taffo.info !43
  %2 = lshr i32 0, 6
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc23, %for.end
  %z.0.s6_26fixp = phi i32 [ %2, %for.end ], [ %s6_26fixp, %for.inc23 ], !taffo.info !47
  %j14.0 = phi i32 [ 0, %for.end ], [ %inc24, %for.inc23 ]
  %cmp16 = icmp slt i32 %j14.0, 8
  br i1 %cmp16, label %for.body17, label %for.end25

for.body17:                                       ; preds = %for.cond15
  %idxprom18 = sext i32 %j14.0 to i64
  %arrayidx19 = getelementptr inbounds float, float* %w, i64 %idxprom18
  %3 = load float, float* %arrayidx19, align 4
  %idxprom20 = sext i32 %j14.0 to i64
  %arrayidx21 = getelementptr inbounds float, float* %s, i64 %idxprom20
  %4 = load float, float* %arrayidx21, align 4
  %5 = fmul float 0x4190000000000000, %3, !taffo.info !47
  %6 = fptosi float %5 to i32, !taffo.info !47
  %7 = fmul float 0x4190000000000000, %4, !taffo.info !47
  %8 = fptosi float %7 to i32, !taffo.info !47
  %9 = sext i32 %6 to i64, !taffo.info !47
  %10 = sext i32 %8 to i64, !taffo.info !47
  %11 = mul i64 %9, %10, !taffo.info !50
  %12 = ashr i64 %11, 26
  %13 = trunc i64 %12 to i32
  %s6_26fixp = add i32 %13, %z.0.s6_26fixp, !taffo.info !47
  br label %for.inc23

for.inc23:                                        ; preds = %for.body17
  %inc24 = add nsw i32 %j14.0, 1, !taffo.constinfo !21
  br label %for.cond15, !llvm.loop !52

for.end25:                                        ; preds = %for.cond15
  %call.s6_26fixp = call i32 @sigmoid.1_s6_26fixp(i32 %z.0.s6_26fixp), !taffo.info !47, !taffo.constinfo !21
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc39, %for.end25
  %j26.0 = phi i32 [ 0, %for.end25 ], [ %inc40, %for.inc39 ]
  %cmp28 = icmp slt i32 %j26.0, 8
  br i1 %cmp28, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond27
  %14 = shl i32 %call.s6_26fixp, 3, !taffo.info !47, !taffo.constinfo !21
  %sub.s3_29fixp = sub i32 %14, %.flt.fallback.s3_29fixp, !taffo.info !43
  %15 = zext i32 21474836 to i64
  %16 = sext i32 %sub.s3_29fixp to i64, !taffo.info !43
  %17 = mul i64 %15, %16, !taffo.info !53, !taffo.constinfo !55
  %18 = ashr i64 %17, 31, !taffo.info !53, !taffo.constinfo !55
  %mul30.s3_29fixp = trunc i64 %18 to i32, !taffo.info !43
  %idxprom31 = sext i32 %j26.0 to i64
  %arrayidx32 = getelementptr inbounds float, float* %s, i64 %idxprom31
  %19 = load float, float* %arrayidx32, align 4
  %conv33 = fpext float %19 to double
  %idxprom35 = sext i32 %j26.0 to i64
  %arrayidx36 = getelementptr inbounds float, float* %w, i64 %idxprom35
  %20 = load float, float* %arrayidx36, align 4
  %conv37 = fpext float %20 to double
  %neg.s3_29fixp = sub i32 0, %mul30.s3_29fixp, !taffo.info !43
  %21 = fmul double 0x41C0000000000000, %conv33, !taffo.info !43
  %22 = fptosi double %21 to i32, !taffo.info !43
  %23 = fmul double 0x41C0000000000000, %conv37, !taffo.info !43
  %24 = fptosi double %23 to i32, !taffo.info !43
  %25 = sext i32 %neg.s3_29fixp to i64, !taffo.info !43
  %26 = sext i32 %22 to i64, !taffo.info !43
  %27 = mul i64 %25, %26, !taffo.info !58
  %28 = ashr i64 %27, 29
  %29 = trunc i64 %28 to i32
  %s3_29fixp = add i32 %29, %24, !taffo.info !43
  %30 = sitofp i32 %s3_29fixp to float, !taffo.info !43
  %31 = fdiv float %30, 0x41C0000000000000, !taffo.info !43
  store float %31, float* %arrayidx36, align 4, !taffo.info !60
  br label %for.inc39

for.inc39:                                        ; preds = %for.body29
  %inc40 = add nsw i32 %j26.0, 1, !taffo.constinfo !21
  br label %for.cond27, !llvm.loop !61

for.end41:                                        ; preds = %for.cond27
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !62

for.end44:                                        ; preds = %for.cond4
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %inc46 = add nsw i32 %epoch.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !63

for.end47:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_dataset(i32 noundef %n, float* noundef %s, float* noundef %o) #0 !taffo.initweight !36 !taffo.equivalentChild !64 !taffo.funinfo !37 {
entry:
  %call = call i64 @time(i64* noundef null) #5, !taffo.constinfo !21
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv) #5, !taffo.constinfo !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc13, %for.inc12 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp3 = icmp slt i32 %j.0, 8
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %call6 = call i32 @rand() #5, !taffo.constinfo !65
  %conv7 = sitofp i32 %call6 to float
  %div = fdiv float %conv7, 0x41E0000000000000, !taffo.constinfo !66
  %mul = mul nsw i32 %i.0, 8, !taffo.constinfo !21
  %add = add nsw i32 %mul, %j.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds float, float* %s, i64 %idxprom
  store float %div, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !21
  br label %for.cond2, !llvm.loop !69

for.end:                                          ; preds = %for.cond2
  %call8 = call i32 @rand() #5, !taffo.constinfo !65
  %rem = srem i32 %call8, 2, !taffo.constinfo !21
  %conv9 = sitofp i32 %rem to float
  %idxprom10 = sext i32 %i.0 to i64
  %arrayidx11 = getelementptr inbounds float, float* %o, i64 %idxprom10
  store float %conv9, float* %arrayidx11, align 4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %i.0, 1, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !70

for.end14:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare !taffo.initweight !12 !taffo.funinfo !31 void @srand(i32 noundef) #1

; Function Attrs: nounwind
declare !taffo.initweight !12 !taffo.funinfo !31 i64 @time(i64* noundef) #1

; Function Attrs: nounwind
declare !taffo.initweight !71 !taffo.funinfo !71 i32 @rand() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !71 !taffo.funinfo !71 !taffo.start !72 {
entry:
  %w.s6_26fixp = alloca [8 x i32], align 16, !taffo.info !73, !taffo.target !75
  %s.s3_29fixp = alloca [800 x i32], align 16, !taffo.info !43
  %o.s3_29fixp = alloca [100 x i32], align 16, !taffo.info !43
  %0 = bitcast [8 x i32]* %w.s6_26fixp to i8*, !taffo.info !76, !taffo.target !75
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 32, i1 false), !taffo.info !77, !taffo.initweight !46, !taffo.constinfo !79, !taffo.target !75
  %arraydecay.s3_29fixp = getelementptr inbounds [800 x i32], [800 x i32]* %s.s3_29fixp, i64 0, i64 0, !taffo.info !43
  %arraydecay4.s3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %o.s3_29fixp, i64 0, i64 0, !taffo.info !43
  call void @generate_dataset.2_fixp(i32 100, i32* %arraydecay.s3_29fixp, i32* %arraydecay4.s3_29fixp), !taffo.info !60, !taffo.constinfo !35
  %arraydecay5.s6_26fixp = getelementptr inbounds [8 x i32], [8 x i32]* %w.s6_26fixp, i64 0, i64 0, !taffo.info !73, !taffo.target !75
  %arraydecay6.s3_29fixp = getelementptr inbounds [800 x i32], [800 x i32]* %s.s3_29fixp, i64 0, i64 0, !taffo.info !43
  %arraydecay7.s3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %o.s3_29fixp, i64 0, i64 0, !taffo.info !43
  call void @gradient_descent_3_fixp(i32 100, i32* %arraydecay5.s6_26fixp, i32* %arraydecay6.s3_29fixp, i32* %arraydecay7.s3_29fixp), !taffo.info !77, !taffo.constinfo !79, !taffo.target !75
  %div = sdiv i32 100, 10, !taffo.info !80, !taffo.constinfo !21
  %arraydecay8.s3_29fixp = getelementptr inbounds [800 x i32], [800 x i32]* %s.s3_29fixp, i64 0, i64 0, !taffo.info !43
  %arraydecay9.s3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %o.s3_29fixp, i64 0, i64 0, !taffo.info !43
  call void @generate_dataset.2_fixp(i32 %div, i32* %arraydecay8.s3_29fixp, i32* %arraydecay9.s3_29fixp), !taffo.info !60, !taffo.constinfo !35
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc21, %for.inc20 ], !taffo.info !82
  %loss.0.1flp = phi float [ 0.000000e+00, %entry ], [ %add19.1flp, %for.inc20 ], !taffo.info !84
  %cmp = icmp slt i32 %i.0, %div, !taffo.info !29
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  %1 = lshr i32 0, 13
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %z.0.s13_19fixp = phi i32 [ %1, %for.body ], [ %s13_19fixp, %for.inc ], !taffo.info !87
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !90
  %cmp11 = icmp slt i32 %j.0, 8, !taffo.info !29
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %idxprom = sext i32 %j.0 to i64, !taffo.info !92
  %arrayidx.s6_26fixp = getelementptr inbounds [8 x i32], [8 x i32]* %w.s6_26fixp, i64 0, i64 %idxprom, !taffo.info !73, !taffo.target !75
  %s6_26fixp4 = load i32, i32* %arrayidx.s6_26fixp, align 4, !taffo.info !73, !taffo.target !75
  %mul = mul nsw i32 %i.0, 8, !taffo.info !94, !taffo.constinfo !21
  %add = add nsw i32 %mul, %j.0, !taffo.info !96
  %idxprom13 = sext i32 %add to i64, !taffo.info !96
  %arrayidx14.s3_29fixp = getelementptr inbounds [800 x i32], [800 x i32]* %s.s3_29fixp, i64 0, i64 %idxprom13, !taffo.info !43
  %s3_29fixp3 = load i32, i32* %arrayidx14.s3_29fixp, align 4, !taffo.info !43
  %2 = sext i32 %s6_26fixp4 to i64, !taffo.info !73, !taffo.target !75
  %3 = sext i32 %s3_29fixp3 to i64, !taffo.info !43
  %4 = mul i64 %2, %3, !taffo.info !98, !taffo.target !75
  %5 = ashr i64 %4, 36
  %6 = trunc i64 %5 to i32
  %s13_19fixp = add i32 %6, %z.0.s13_19fixp, !taffo.info !87, !taffo.target !75
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %inc = add nsw i32 %j.0, 1, !taffo.info !100, !taffo.constinfo !21
  br label %for.cond10, !llvm.loop !102

for.end:                                          ; preds = %for.cond10
  %call = call float @sigmoid(float noundef undef), !taffo.info !29, !taffo.constinfo !21
  %idxprom16 = sext i32 %i.0 to i64, !taffo.info !103
  %arrayidx17.s3_29fixp = getelementptr inbounds [100 x i32], [100 x i32]* %o.s3_29fixp, i64 0, i64 %idxprom16, !taffo.info !43
  %s3_29fixp = load i32, i32* %arrayidx17.s3_29fixp, align 4, !taffo.info !43
  %call18.1flp = call float @logistic_loss.5_1flp(float %call, i32 %s3_29fixp), !taffo.info !105, !taffo.constinfo !106
  %add19.1flp = fadd float %loss.0.1flp, %call18.1flp, !taffo.info !105
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %i.0, 1, !taffo.info !107, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !109

for.end22:                                        ; preds = %for.cond
  %call23 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)), !taffo.constinfo !21
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc31, %for.end22
  %j24.0 = phi i32 [ 0, %for.end22 ], [ %inc32, %for.inc31 ], !taffo.info !110
  %cmp26 = icmp slt i32 %j24.0, 8, !taffo.info !29
  br i1 %cmp26, label %for.body27, label %for.end33

for.body27:                                       ; preds = %for.cond25
  %idxprom28 = sext i32 %j24.0 to i64, !taffo.info !112
  %arrayidx29.s6_26fixp = getelementptr inbounds [8 x i32], [8 x i32]* %w.s6_26fixp, i64 0, i64 %idxprom28, !taffo.info !73, !taffo.target !75
  %s6_26fixp = load i32, i32* %arrayidx29.s6_26fixp, align 4, !taffo.info !73, !taffo.target !75
  %7 = sitofp i32 %s6_26fixp to double, !taffo.info !73, !taffo.target !75
  %8 = fdiv double %7, 0x4190000000000000, !taffo.info !73, !taffo.target !75
  %call30.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double noundef %8), !taffo.info !76, !taffo.initweight !114, !taffo.constinfo !106, !taffo.target !75
  br label %for.inc31

for.inc31:                                        ; preds = %for.body27
  %inc32 = add nsw i32 %j24.0, 1, !taffo.info !115, !taffo.constinfo !21
  br label %for.cond25, !llvm.loop !117

for.end33:                                        ; preds = %for.cond25
  %conv34 = fpext float undef to double, !taffo.info !118
  %call35 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), double noundef %conv34), !taffo.constinfo !106
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare !taffo.initweight !38 !taffo.funinfo !40 void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare !taffo.initweight !12 !taffo.funinfo !31 i32 @printf(i8* noundef, ...) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @sigmoid.1_s6_26fixp(i32 noundef %z.s6_26fixp) #0 !taffo.initweight !46 !taffo.equivalentChild !119 !taffo.funinfo !120 !taffo.sourceFunction !121 {
entry:
  %fneg.s6_26fixp = sub i32 0, %z.s6_26fixp, !taffo.info !47
  %0 = sitofp i32 %fneg.s6_26fixp to double, !taffo.info !47
  %1 = fdiv double %0, 0x4190000000000000, !taffo.info !47
  %call.flt = call double @exp(double noundef %1) #5, !taffo.info !47, !taffo.initweight !122, !taffo.constinfo !21
  %2 = fmul double 0x4190000000000000, %call.flt, !taffo.info !47, !taffo.constinfo !21
  %call.flt.fallback.s6_26fixp = fptosi double %2 to i32, !taffo.info !47
  %3 = lshr i32 -2147483648, 5
  %add.s6_26fixp = add i32 %3, %call.flt.fallback.s6_26fixp, !taffo.info !47, !taffo.constinfo !24
  %4 = zext i32 -2147483648 to i64
  %5 = shl i64 %4, 21
  %6 = sext i32 %add.s6_26fixp to i64, !taffo.info !47
  %7 = sdiv i64 %5, %6, !taffo.info !123, !taffo.constinfo !24
  %div.s6_26fixp = trunc i64 %7 to i32, !taffo.info !47
  ret i32 %div.s6_26fixp, !taffo.info !125, !taffo.initweight !126
}

; Function Attrs: noinline nounwind uwtable
define internal void @generate_dataset.2_fixp(i32 noundef %n, i32* noundef %s.s3_29fixp, i32* noundef %o.s3_29fixp) #0 !taffo.initweight !127 !taffo.funinfo !128 !taffo.sourceFunction !129 {
entry:
  %call = call i64 @time(i64* noundef null) #5, !taffo.constinfo !21
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv) #5, !taffo.constinfo !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc13, %for.inc12 ], !taffo.info !29
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !25
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !110
  %cmp3 = icmp slt i32 %j.0, 8, !taffo.info !29
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %call6 = call i32 @rand() #5, !taffo.info !130, !taffo.constinfo !65
  %0 = sext i32 %call6 to i64, !taffo.info !130, !taffo.constinfo !65
  %1 = shl i64 %0, 29, !taffo.info !130
  %2 = zext i32 -2147483648 to i64
  %3 = sdiv i64 %1, %2, !taffo.info !132, !taffo.constinfo !66
  %div.s3_29fixp = trunc i64 %3 to i32, !taffo.info !43
  %mul = mul nsw i32 %i.0, 8, !taffo.info !134, !taffo.constinfo !21
  %add = add nsw i32 %mul, %j.0, !taffo.info !112
  %idxprom = sext i32 %add to i64, !taffo.info !112
  %arrayidx.s3_29fixp = getelementptr inbounds i32, i32* %s.s3_29fixp, i64 %idxprom, !taffo.info !43
  store i32 %div.s3_29fixp, i32* %arrayidx.s3_29fixp, align 4, !taffo.info !60
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !115, !taffo.constinfo !21
  br label %for.cond2, !llvm.loop !136

for.end:                                          ; preds = %for.cond2
  %call8 = call i32 @rand() #5, !taffo.info !130, !taffo.constinfo !65
  %rem = srem i32 %call8, 2, !taffo.info !29, !taffo.constinfo !21
  %conv9.s3_29fixp = shl i32 %rem, 29, !taffo.info !43, !taffo.constinfo !21
  %idxprom10 = sext i32 %i.0 to i64, !taffo.info !134
  %arrayidx11.s3_29fixp = getelementptr inbounds i32, i32* %o.s3_29fixp, i64 %idxprom10, !taffo.info !43
  store i32 %conv9.s3_29fixp, i32* %arrayidx11.s3_29fixp, align 4, !taffo.info !60
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %i.0, 1, !taffo.info !25, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !137

for.end14:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gradient_descent_3_fixp(i32 noundef %n, i32* noundef %w, i32* noundef %s, i32* noundef %o) #0 !taffo.initweight !138 !taffo.funinfo !139 !taffo.sourceFunction !142 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc45, %entry
  %epoch.0 = phi i32 [ 0, %entry ], [ %inc46, %for.inc45 ], !taffo.info !143
  %cmp = icmp slt i32 %epoch.0, 1000, !taffo.info !25
  br i1 %cmp, label %for.body, label %for.end47

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc42, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc43, %for.inc42 ], !taffo.info !143
  %cmp5 = icmp slt i32 %i.0, %n, !taffo.info !29
  br i1 %cmp5, label %for.body6, label %for.end44

for.body6:                                        ; preds = %for.cond4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %j.0 = phi i32 [ 0, %for.body6 ], [ %inc, %for.inc ], !taffo.info !145
  %cmp8 = icmp slt i32 %j.0, 8, !taffo.info !29
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %mul = mul nsw i32 %i.0, 8, !taffo.info !147, !taffo.constinfo !21
  %add = add nsw i32 %mul, %j.0, !taffo.info !149
  %idxprom = sext i32 %add to i64, !taffo.info !149
  %arrayidx.s3_29fixp = getelementptr inbounds i32, i32* %s, i64 %idxprom, !taffo.info !43
  %s3_29fixp = load i32, i32* %arrayidx.s3_29fixp, align 4, !taffo.info !43
  %idxprom10 = sext i32 %j.0 to i64, !taffo.info !151
  %arrayidx11.s3_29fixp = getelementptr inbounds i32, i32* %s, i64 %idxprom10, !taffo.info !43
  store i32 %s3_29fixp, i32* %arrayidx11.s3_29fixp, align 4, !taffo.info !60
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.info !153, !taffo.constinfo !21
  br label %for.cond7, !llvm.loop !155

for.end:                                          ; preds = %for.cond7
  %idxprom12 = sext i32 %i.0 to i64, !taffo.info !156
  %arrayidx13.s3_29fixp = getelementptr inbounds i32, i32* %o, i64 %idxprom12, !taffo.info !43
  %s3_29fixp4 = load i32, i32* %arrayidx13.s3_29fixp, align 4, !taffo.info !43
  %0 = lshr i32 0, 7
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc23, %for.end
  %z.0.s7_25fixp = phi i32 [ %0, %for.end ], [ %7, %for.inc23 ], !taffo.info !158
  %j14.0 = phi i32 [ 0, %for.end ], [ %inc24, %for.inc23 ], !taffo.info !145
  %cmp16 = icmp slt i32 %j14.0, 8, !taffo.info !29
  br i1 %cmp16, label %for.body17, label %for.end25

for.body17:                                       ; preds = %for.cond15
  %idxprom18 = sext i32 %j14.0 to i64, !taffo.info !151
  %arrayidx19.s6_26fixp = getelementptr inbounds i32, i32* %w, i64 %idxprom18, !taffo.info !73
  %s6_26fixp = load i32, i32* %arrayidx19.s6_26fixp, align 4, !taffo.info !161
  %idxprom20 = sext i32 %j14.0 to i64, !taffo.info !151
  %arrayidx21.s3_29fixp = getelementptr inbounds i32, i32* %s, i64 %idxprom20, !taffo.info !43
  %s3_29fixp2 = load i32, i32* %arrayidx21.s3_29fixp, align 4, !taffo.info !43
  %1 = ashr i32 %z.0.s7_25fixp, 10, !taffo.info !158
  %2 = sext i32 %s6_26fixp to i64, !taffo.info !161
  %3 = sext i32 %s3_29fixp2 to i64, !taffo.info !43
  %4 = mul i64 %2, %3, !taffo.info !163
  %5 = ashr i64 %4, 40
  %6 = trunc i64 %5 to i32
  %s17_15fixp = add i32 %6, %1, !taffo.info !165
  br label %for.inc23

for.inc23:                                        ; preds = %for.body17
  %inc24 = add nsw i32 %j14.0, 1, !taffo.info !153, !taffo.constinfo !21
  %7 = shl i32 %s17_15fixp, 10, !taffo.info !165
  br label %for.cond15, !llvm.loop !167

for.end25:                                        ; preds = %for.cond15
  %call.u1_31fixp = call i32 @sigmoid.1.6_u1_31fixp(i32 %z.0.s7_25fixp), !taffo.info !168, !taffo.constinfo !21
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc39, %for.end25
  %j26.0 = phi i32 [ 0, %for.end25 ], [ %inc40, %for.inc39 ], !taffo.info !145
  %cmp28 = icmp slt i32 %j26.0, 8, !taffo.info !29
  br i1 %cmp28, label %for.body29, label %for.end41

for.body29:                                       ; preds = %for.cond27
  %8 = lshr i32 %call.u1_31fixp, 2, !taffo.info !168, !taffo.constinfo !21
  %sub.s3_29fixp = sub i32 %8, %s3_29fixp4, !taffo.info !43
  %9 = zext i32 21474836 to i64
  %10 = sext i32 %sub.s3_29fixp to i64, !taffo.info !43
  %11 = mul i64 %9, %10, !taffo.info !171, !taffo.constinfo !55
  %12 = ashr i64 %11, 31, !taffo.info !171, !taffo.constinfo !55
  %mul30.s3_29fixp = trunc i64 %12 to i32, !taffo.info !173
  %idxprom31 = sext i32 %j26.0 to i64, !taffo.info !151
  %arrayidx32.s3_29fixp = getelementptr inbounds i32, i32* %s, i64 %idxprom31, !taffo.info !43
  %s3_29fixp3 = load i32, i32* %arrayidx32.s3_29fixp, align 4, !taffo.info !43
  %idxprom35 = sext i32 %j26.0 to i64, !taffo.info !151
  %arrayidx36.s6_26fixp = getelementptr inbounds i32, i32* %w, i64 %idxprom35, !taffo.info !73
  %s6_26fixp1 = load i32, i32* %arrayidx36.s6_26fixp, align 4, !taffo.info !174
  %13 = shl i32 %mul30.s3_29fixp, 1, !taffo.info !173
  %neg.s2_30fixp = sub i32 0, %13, !taffo.info !176
  %14 = sext i32 %neg.s2_30fixp to i64, !taffo.info !176
  %15 = sext i32 %s3_29fixp3 to i64, !taffo.info !43
  %16 = mul i64 %14, %15, !taffo.info !179
  %17 = ashr i64 %16, 33
  %18 = trunc i64 %17 to i32
  %s6_26fixp5 = add i32 %18, %s6_26fixp1, !taffo.info !182
  store i32 %s6_26fixp5, i32* %arrayidx36.s6_26fixp, align 4, !taffo.info !60
  br label %for.inc39

for.inc39:                                        ; preds = %for.body29
  %inc40 = add nsw i32 %j26.0, 1, !taffo.info !153, !taffo.constinfo !21
  br label %for.cond27, !llvm.loop !183

for.end41:                                        ; preds = %for.cond27
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %inc43 = add nsw i32 %i.0, 1, !taffo.info !184, !taffo.constinfo !21
  br label %for.cond4, !llvm.loop !186

for.end44:                                        ; preds = %for.cond4
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %inc46 = add nsw i32 %epoch.0, 1, !taffo.info !184, !taffo.constinfo !21
  br label %for.cond, !llvm.loop !187

for.end47:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal float @logistic_loss.5_1flp(float noundef %predicted, i32 noundef %actual.s3_29fixp) #0 !taffo.initweight !188 !taffo.funinfo !189 !taffo.sourceFunction !190 {
entry:
  %fneg.s3_29fixp = sub i32 0, %actual.s3_29fixp, !taffo.info !191
  %0 = sitofp i32 %fneg.s3_29fixp to double, !taffo.info !191
  %1 = fdiv double %0, 0x41C0000000000000, !taffo.info !191
  %conv1 = fpext float %predicted to double, !taffo.info !29
  %call = call double @log(double noundef %conv1) #5, !taffo.info !193, !taffo.constinfo !21
  %2 = lshr i32 -2147483648, 2
  %sub.s3_29fixp = sub i32 %2, %actual.s3_29fixp, !taffo.info !195, !taffo.constinfo !24
  %3 = sitofp i32 %sub.s3_29fixp to double, !taffo.info !195
  %4 = fdiv double %3, 0x41C0000000000000, !taffo.info !195, !taffo.constinfo !24
  %conv3 = fpext float %predicted to double, !taffo.info !29
  %sub4 = fsub double 1.000000e+00, %conv3, !taffo.info !29, !taffo.constinfo !24
  %call5 = call double @log(double noundef %sub4) #5, !taffo.info !193, !taffo.constinfo !21
  %mul6.2flp = fmul double %4, %call5, !taffo.info !197
  %neg.2flp = fneg double %mul6.2flp, !taffo.info !197
  %"2flp" = call double @llvm.fmuladd.f64(double %1, double %call, double %neg.2flp), !taffo.info !197, !taffo.constinfo !35
  %conv7.1flp = fptrunc double %"2flp" to float, !taffo.info !105
  ret float %conv7.1flp, !taffo.info !60, !taffo.initweight !199
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sigmoid.1.6_u1_31fixp(i32 noundef %z.s7_25fixp) #0 !taffo.initweight !46 !taffo.funinfo !200 !taffo.sourceFunction !13 {
entry:
  %fneg.s7_25fixp = sub i32 0, %z.s7_25fixp, !taffo.info !158
  %0 = sitofp i32 %fneg.s7_25fixp to double, !taffo.info !158
  %1 = fdiv double %0, 0x4180000000000000, !taffo.info !158
  %call.flt = call double @exp(double noundef %1) #5, !taffo.info !201, !taffo.initweight !122, !taffo.constinfo !21
  %2 = fmul double 4.096000e+03, %call.flt, !taffo.info !201, !taffo.constinfo !21
  %call.flt.fallback.u52_12fixp = fptoui double %2 to i64, !taffo.info !201
  %3 = lshr i64 -9223372036854775808, 51
  %add.u52_12fixp = add i64 %3, %call.flt.fallback.u52_12fixp, !taffo.info !204, !taffo.constinfo !24
  %4 = zext i32 -2147483648 to i64
  %5 = shl i64 %4, 12
  %6 = udiv i64 %5, %add.u52_12fixp, !taffo.info !206, !taffo.constinfo !24
  %div.u1_31fixp = trunc i64 %6 to i32, !taffo.info !168
  ret i32 %div.u1_31fixp, !taffo.info !125, !taffo.initweight !126
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.160000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.020000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.150000e+02}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 15.0.7"}
!12 = !{i32 -1}
!13 = distinct !{null}
!14 = !{i32 1, !15}
!15 = !{i1 false, !16, i1 false, i2 0}
!16 = !{double 0xC0727CD19999999A, double 0x4046722D33333334}
!17 = !{i1 false, !18, i1 false, i2 0}
!18 = !{double 0xC046722D33333334, double 0x40727CD19999999A}
!19 = !{i1 false, !20, i1 false, i2 0}
!20 = !{double 0x3BE2D30861068138, double 0x5A9AECD83100AEC8}
!21 = !{i1 false, i1 false}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 1.000000e+00, double 0x5A9AECD83100AEC8}
!24 = !{!25, i1 false}
!25 = !{i1 false, !26, i1 false, i2 0}
!26 = !{double 1.000000e+00, double 1.000000e+00}
!27 = !{i1 false, !28, i1 false, i2 0}
!28 = !{double 0x2543040269DE0574, double 1.000000e+00}
!29 = !{i1 false, !30, i1 false, i2 0}
!30 = !{double 0.000000e+00, double 1.000000e+00}
!31 = !{i32 0, i1 false}
!32 = !{i32 -1, i32 -1}
!33 = distinct !{null}
!34 = !{i32 0, i1 false, i32 0, i1 false}
!35 = !{i1 false, i1 false, i1 false, i1 false}
!36 = !{i32 -1, i32 -1, i32 -1}
!37 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!38 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!39 = distinct !{null}
!40 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!44, !45, i1 false, i2 -1}
!44 = !{!"fixp", i32 -32, i32 29}
!45 = !{double -1.000000e-01, double 1.100000e+00}
!46 = !{i32 2}
!47 = !{!48, !49, i1 false, i2 1}
!48 = !{!"fixp", i32 -32, i32 26}
!49 = !{double -1.600000e+01, double 1.600000e+01}
!50 = !{!51, !49, i1 false, i2 1}
!51 = !{!"fixp", i32 -64, i32 52}
!52 = distinct !{!52, !42}
!53 = !{!54, !45, i1 false, i2 -1}
!54 = !{!"fixp", i32 -64, i32 60}
!55 = !{!56, i1 false}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 1.000000e-02, double 1.000000e-02}
!58 = !{!59, !45, i1 false, i2 -1}
!59 = !{!"fixp", i32 -64, i32 58}
!60 = !{i1 false, !45, i1 false, i2 -1}
!61 = distinct !{!61, !42}
!62 = distinct !{!62, !42}
!63 = distinct !{!63, !42}
!64 = distinct !{null, null}
!65 = !{i1 false}
!66 = !{i1 false, !67}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 0x41E0000000000000, double 0x41E0000000000000}
!69 = distinct !{!69, !42}
!70 = distinct !{!70, !42}
!71 = !{}
!72 = !{i1 true}
!73 = !{!48, !74, i1 false, i2 1}
!74 = !{double 0xC03DE10000000000, double 0x4012236000000000}
!75 = !{!"weights"}
!76 = !{!48, i1 false, i1 false, i2 1}
!77 = !{i1 false, !78, i1 false, i2 1}
!78 = !{double -2.000000e+00, double 2.000000e+00}
!79 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 1.000000e+01, double 1.000000e+01}
!82 = !{i1 false, !83, i1 false, i2 0}
!83 = !{double 0.000000e+00, double 1.100000e+01}
!84 = !{!85, !86, i1 false, i2 1}
!85 = !{!"float", i32 1, double 0x7FF0000000000000}
!86 = !{double 0xFFF0000000000000, double 0x7FF0000000000000}
!87 = !{!88, !89, i1 false, i2 1}
!88 = !{!"fixp", i32 -32, i32 19}
!89 = !{double 0xC0A96BA03333333F, double 0x407EDCFE26666676}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 0.000000e+00, double 9.900000e+01}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 0.000000e+00, double 9.800000e+01}
!94 = !{i1 false, !95, i1 false, i2 0}
!95 = !{double 0.000000e+00, double 8.000000e+01}
!96 = !{i1 false, !97, i1 false, i2 0}
!97 = !{double 0.000000e+00, double 1.780000e+02}
!98 = !{!99, !89, i1 false, i2 1}
!99 = !{!"fixp", i32 -64, i32 55}
!100 = !{i1 false, !101, i1 false, i2 0}
!101 = !{double 1.000000e+00, double 9.900000e+01}
!102 = distinct !{!102, !42}
!103 = !{i1 false, !104, i1 false, i2 0}
!104 = !{double 0.000000e+00, double 1.000000e+01}
!105 = !{!85, !86, i1 false, i2 -1}
!106 = !{i1 false, i1 false, i1 false}
!107 = !{i1 false, !108, i1 false, i2 0}
!108 = !{double 1.000000e+00, double 1.100000e+01}
!109 = distinct !{!109, !42}
!110 = !{i1 false, !111, i1 false, i2 0}
!111 = !{double 0.000000e+00, double 9.000000e+00}
!112 = !{i1 false, !113, i1 false, i2 0}
!113 = !{double 0.000000e+00, double 8.000000e+00}
!114 = !{i32 4}
!115 = !{i1 false, !116, i1 false, i2 0}
!116 = !{double 1.000000e+00, double 9.000000e+00}
!117 = distinct !{!117, !42}
!118 = !{i1 false, !86, i1 false, i2 0}
!119 = distinct !{null}
!120 = !{i32 1, !47}
!121 = !{float (float)* @sigmoid}
!122 = !{i32 7}
!123 = !{!124, !49, i1 false, i2 1}
!124 = !{!"fixp", i32 -64, i32 26}
!125 = !{i1 false, !49, i1 false, i2 1}
!126 = !{i32 11}
!127 = !{i32 -1, i32 2, i32 2}
!128 = !{i32 1, !80, i32 1, !43, i32 1, !43}
!129 = !{void (i32, float*, float*)* @generate_dataset}
!130 = !{i1 false, !131, i1 false, i2 0}
!131 = !{double 0.000000e+00, double 0x41DFFFFFFFC00000}
!132 = !{!133, !45, i1 false, i2 -1}
!133 = !{!"fixp", i32 -64, i32 29}
!134 = !{i1 false, !135, i1 false, i2 0}
!135 = !{double 0.000000e+00, double 0.000000e+00}
!136 = distinct !{!136, !42}
!137 = distinct !{!137, !42}
!138 = !{i32 -1, i32 2, i32 2, i32 2}
!139 = !{i32 1, !140, i32 1, !73, i32 1, !43, i32 1, !43}
!140 = !{i1 false, !141, i1 false, i2 0}
!141 = !{double 1.000000e+02, double 1.000000e+02}
!142 = !{void (i32, float*, float*, float*)* @gradient_descent}
!143 = !{i1 false, !144, i1 false, i2 0}
!144 = !{double 0.000000e+00, double 2.560000e+02}
!145 = !{i1 false, !146, i1 false, i2 0}
!146 = !{double 0.000000e+00, double 2.304000e+03}
!147 = !{i1 false, !148, i1 false, i2 0}
!148 = !{double 0.000000e+00, double 2.040000e+03}
!149 = !{i1 false, !150, i1 false, i2 0}
!150 = !{double 0.000000e+00, double 4.343000e+03}
!151 = !{i1 false, !152, i1 false, i2 0}
!152 = !{double 0.000000e+00, double 2.303000e+03}
!153 = !{i1 false, !154, i1 false, i2 0}
!154 = !{double 1.000000e+00, double 2.304000e+03}
!155 = distinct !{!155, !42}
!156 = !{i1 false, !157, i1 false, i2 0}
!157 = !{double 0.000000e+00, double 2.550000e+02}
!158 = !{!159, !160, i1 false, i2 1}
!159 = !{!"fixp", i32 -32, i32 25}
!160 = !{double -3.580000e+01, double 3.580000e+01}
!161 = !{!48, !162, i1 false, i2 1}
!162 = !{double 0xC03DC51F00000000, double 0x4012193CA0000000}
!163 = !{!99, !164, i1 false, i2 1}
!164 = !{double 0xC0E3AA5E61999994, double 0x40C02E03E9666666}
!165 = !{!166, !164, i1 false, i2 1}
!166 = !{!"fixp", i32 -32, i32 15}
!167 = distinct !{!167, !42}
!168 = !{!169, !170, i1 false, i2 1}
!169 = !{!"fixp", i32 32, i32 31}
!170 = !{double 0x3CB46A1820000000, double 1.000000e+00}
!171 = !{!54, !172, i1 false, i2 -1}
!172 = !{double -1.000000e-03, double 0x3F86872B020C49BB}
!173 = !{!44, !172, i1 false, i2 -1}
!174 = !{!48, !175, i1 false, i2 1}
!175 = !{double 0xC03DDDE700000000, double 0x4012223FA0000000}
!176 = !{!177, !178, i1 false, i2 -1}
!177 = !{!"fixp", i32 -32, i32 30}
!178 = !{double 0xBF86872B020C49BB, double 1.000000e-03}
!179 = !{!180, !181, i1 false, i2 -1}
!180 = !{!"fixp", i32 -64, i32 59}
!181 = !{double 0xC03DE0FFFC504817, double 0x4012235FFBC01A37}
!182 = !{!48, !74, i1 false, i2 -1}
!183 = distinct !{!183, !42}
!184 = !{i1 false, !185, i1 false, i2 0}
!185 = !{double 1.000000e+00, double 2.560000e+02}
!186 = distinct !{!186, !42}
!187 = distinct !{!187, !42}
!188 = !{i32 -1, i32 3}
!189 = !{i32 1, !29, i32 1, !43}
!190 = !{float (float, float)* @logistic_loss}
!191 = !{!44, !192, i1 false, i2 -1}
!192 = !{double -1.100000e+00, double 1.000000e-01}
!193 = !{i1 false, !194, i1 false, i2 0}
!194 = !{double 0xFFF0000000000000, double 0.000000e+00}
!195 = !{!44, !196, i1 false, i2 -1}
!196 = !{double 0xBFB99999999999A0, double 1.100000e+00}
!197 = !{!198, !86, i1 false, i2 -1}
!198 = !{!"float", i32 2, double 0x7FF0000000000000}
!199 = !{i32 10}
!200 = !{i32 1, !158}
!201 = !{!202, !203, i1 false, i2 1}
!202 = !{!"fixp", i32 64, i32 12}
!203 = !{double 0x3CB46A183A7CAF3B, double 0x4329148E458CB17D}
!204 = !{!202, !205, i1 false, i2 1}
!205 = !{double 0x3FF0000000000001, double 0x4329148E458CB17F}
!206 = !{!207, !208, i1 false, i2 1}
!207 = !{!"fixp", i32 64, i32 31}
!208 = !{double 0x3CB46A183A7CAF3A, double 0x3FEFFFFFFFFFFFFE}
