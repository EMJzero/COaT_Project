; ModuleID = '/tmp/tmp.yEEbsAKKwV/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.4 = private unnamed_addr constant [10 x i8] c"Weights:\0A\00", align 1, !taffo.info !0
@.str.5 = private unnamed_addr constant [6 x i8] c"%.4f \00", align 1, !taffo.info !2
@.str.6 = private unnamed_addr constant [11 x i8] c"\0ALoss: %f\0A\00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local float @sigmoid(float noundef %z) #0 !taffo.initweight !12 !taffo.equivalentChild !13 !taffo.funinfo !14 {
entry:
  %fneg = fneg float %z
  %conv = fpext float %fneg to double
  %call = call double @exp(double noundef %conv) #5, !taffo.constinfo !15
  %add = fadd double 1.000000e+00, %call, !taffo.constinfo !16
  %div = fdiv double 1.000000e+00, %add, !taffo.constinfo !16
  %conv1 = fptrunc double %div to float
  ret float %conv1
}

; Function Attrs: nounwind
declare !taffo.initweight !12 !taffo.funinfo !14 double @exp(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local float @logistic_loss(float noundef %predicted, float noundef %actual) #0 !taffo.initweight !19 !taffo.funinfo !20 {
entry:
  %fneg = fneg float %actual
  %conv = fpext float %fneg to double
  %conv1 = fpext float %predicted to double
  %call = call double @log(double noundef %conv1) #5, !taffo.constinfo !15
  %conv2 = fpext float %actual to double
  %sub = fsub double 1.000000e+00, %conv2, !taffo.constinfo !16
  %conv3 = fpext float %predicted to double
  %sub4 = fsub double 1.000000e+00, %conv3, !taffo.constinfo !16
  %call5 = call double @log(double noundef %sub4) #5, !taffo.constinfo !15
  %mul6 = fmul double %sub, %call5
  %neg = fneg double %mul6
  %0 = call double @llvm.fmuladd.f64(double %conv, double %call, double %neg), !taffo.constinfo !21
  %conv7 = fptrunc double %0 to float
  ret float %conv7
}

; Function Attrs: nounwind
declare !taffo.initweight !12 !taffo.funinfo !14 double @log(double noundef) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare !taffo.initweight !22 !taffo.funinfo !23 double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @gradient_descent(i32 noundef %n, float* noundef %w, float* noundef %s, float* noundef %o) #0 !taffo.initweight !24 !taffo.funinfo !25 !taffo.start !26 {
entry:
  %w_.s6_26fixp = alloca [8 x i32], align 16, !taffo.info !27, !taffo.target !30
  %s_.s3_29fixp = alloca [8 x i32], align 16, !taffo.info !31
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !34
  %cmp = icmp slt i32 %j.0, 8, !taffo.info !36
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %j.0 to i64, !taffo.info !38
  %arrayidx = getelementptr inbounds float, float* %w, i64 %idxprom
  %.flt2 = load float, float* %arrayidx, align 4, !taffo.info !40, !taffo.initweight !42, !taffo.target !30
  %0 = fmul float 0x41C0000000000000, %.flt2, !taffo.info !40, !taffo.target !30
  %.flt2.fallback.s3_29fixp = fptosi float %0 to i32, !taffo.info !40, !taffo.target !30
  %idxprom3 = sext i32 %j.0 to i64, !taffo.info !38
  %arrayidx4.s6_26fixp = getelementptr inbounds [8 x i32], [8 x i32]* %w_.s6_26fixp, i64 0, i64 %idxprom3, !taffo.info !27, !taffo.target !30
  %1 = ashr i32 %.flt2.fallback.s3_29fixp, 3, !taffo.info !40, !taffo.target !30
  store i32 %1, i32* %arrayidx4.s6_26fixp, align 4, !taffo.info !43, !taffo.target !30
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %j.0, 1, !taffo.info !44, !taffo.constinfo !15
  br label %for.cond, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc58, %for.end
  %epoch.0 = phi i32 [ 0, %for.end ], [ %inc59, %for.inc58 ], !taffo.info !48
  %cmp9 = icmp slt i32 %epoch.0, 1000, !taffo.info !17
  br i1 %cmp9, label %for.body10, label %for.end60

for.body10:                                       ; preds = %for.cond8
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc55, %for.body10
  %i.0 = phi i32 [ 0, %for.body10 ], [ %inc56, %for.inc55 ], !taffo.info !48
  %cmp12 = icmp slt i32 %i.0, %n, !taffo.info !36
  br i1 %cmp12, label %for.body13, label %for.end57

for.body13:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc22, %for.body13
  %j14.0 = phi i32 [ 0, %for.body13 ], [ %inc23, %for.inc22 ], !taffo.info !50
  %cmp16 = icmp slt i32 %j14.0, 8, !taffo.info !36
  br i1 %cmp16, label %for.body17, label %for.end24

for.body17:                                       ; preds = %for.cond15
  %mul = mul nsw i32 %i.0, 8, !taffo.info !52, !taffo.constinfo !15
  %add = add nsw i32 %mul, %j14.0, !taffo.info !54
  %idxprom18 = sext i32 %add to i64, !taffo.info !54
  %arrayidx19 = getelementptr inbounds float, float* %s, i64 %idxprom18
  %.flt1 = load float, float* %arrayidx19, align 4, !taffo.info !31, !taffo.initweight !42
  %2 = fmul float 0x41C0000000000000, %.flt1, !taffo.info !31
  %.flt1.fallback.s3_29fixp = fptosi float %2 to i32, !taffo.info !31
  %idxprom20 = sext i32 %j14.0 to i64, !taffo.info !56
  %arrayidx21.s3_29fixp = getelementptr inbounds [8 x i32], [8 x i32]* %s_.s3_29fixp, i64 0, i64 %idxprom20, !taffo.info !31
  store i32 %.flt1.fallback.s3_29fixp, i32* %arrayidx21.s3_29fixp, align 4, !taffo.info !58
  br label %for.inc22

for.inc22:                                        ; preds = %for.body17
  %inc23 = add nsw i32 %j14.0, 1, !taffo.info !59, !taffo.constinfo !15
  br label %for.cond15, !llvm.loop !61

for.end24:                                        ; preds = %for.cond15
  %idxprom25 = sext i32 %i.0 to i64, !taffo.info !62
  %arrayidx26 = getelementptr inbounds float, float* %o, i64 %idxprom25
  %.flt = load float, float* %arrayidx26, align 4, !taffo.info !31, !taffo.initweight !64
  %3 = fmul float 0x41C0000000000000, %.flt, !taffo.info !31
  %.flt.fallback.s3_29fixp = fptosi float %3 to i32, !taffo.info !31
  %4 = lshr i32 0, 7
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc36, %for.end24
  %z.0.s7_25fixp = phi i32 [ %4, %for.end24 ], [ %11, %for.inc36 ], !taffo.info !65
  %j27.0 = phi i32 [ 0, %for.end24 ], [ %inc37, %for.inc36 ], !taffo.info !50
  %cmp29 = icmp slt i32 %j27.0, 8, !taffo.info !36
  br i1 %cmp29, label %for.body30, label %for.end38

for.body30:                                       ; preds = %for.cond28
  %idxprom31 = sext i32 %j27.0 to i64, !taffo.info !56
  %arrayidx32.s6_26fixp = getelementptr inbounds [8 x i32], [8 x i32]* %w_.s6_26fixp, i64 0, i64 %idxprom31, !taffo.info !27, !taffo.target !30
  %s6_26fixp5 = load i32, i32* %arrayidx32.s6_26fixp, align 4, !taffo.info !68, !taffo.target !30
  %idxprom33 = sext i32 %j27.0 to i64, !taffo.info !56
  %arrayidx34.s3_29fixp = getelementptr inbounds [8 x i32], [8 x i32]* %s_.s3_29fixp, i64 0, i64 %idxprom33, !taffo.info !31
  %s3_29fixp3 = load i32, i32* %arrayidx34.s3_29fixp, align 4, !taffo.info !31
  %5 = ashr i32 %z.0.s7_25fixp, 10, !taffo.info !65
  %6 = sext i32 %s6_26fixp5 to i64, !taffo.info !68, !taffo.target !30
  %7 = sext i32 %s3_29fixp3 to i64, !taffo.info !31
  %8 = mul i64 %6, %7, !taffo.info !70
  %9 = ashr i64 %8, 40
  %10 = trunc i64 %9 to i32
  %s17_15fixp = add i32 %10, %5, !taffo.info !73
  br label %for.inc36

for.inc36:                                        ; preds = %for.body30
  %inc37 = add nsw i32 %j27.0, 1, !taffo.info !59, !taffo.constinfo !15
  %11 = shl i32 %s17_15fixp, 10, !taffo.info !73
  br label %for.cond28, !llvm.loop !75

for.end38:                                        ; preds = %for.cond28
  %call.u1_31fixp = call i32 @sigmoid.1_u1_31fixp(i32 %z.0.s7_25fixp), !taffo.info !76, !taffo.constinfo !15
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc52, %for.end38
  %j39.0 = phi i32 [ 0, %for.end38 ], [ %inc53, %for.inc52 ], !taffo.info !50
  %cmp41 = icmp slt i32 %j39.0, 8, !taffo.info !36
  br i1 %cmp41, label %for.body42, label %for.end54

for.body42:                                       ; preds = %for.cond40
  %12 = lshr i32 %call.u1_31fixp, 2, !taffo.info !76, !taffo.constinfo !15
  %sub.s3_29fixp = sub i32 %12, %.flt.fallback.s3_29fixp, !taffo.info !31
  %13 = zext i32 21474836 to i64
  %14 = sext i32 %sub.s3_29fixp to i64, !taffo.info !31
  %15 = mul i64 %13, %14, !taffo.info !79, !taffo.constinfo !82
  %16 = ashr i64 %15, 31, !taffo.info !79, !taffo.constinfo !82
  %mul43.s3_29fixp = trunc i64 %16 to i32, !taffo.info !85
  %idxprom44 = sext i32 %j39.0 to i64, !taffo.info !56
  %arrayidx45.s3_29fixp = getelementptr inbounds [8 x i32], [8 x i32]* %s_.s3_29fixp, i64 0, i64 %idxprom44, !taffo.info !31
  %s3_29fixp = load i32, i32* %arrayidx45.s3_29fixp, align 4, !taffo.info !31
  %idxprom48 = sext i32 %j39.0 to i64, !taffo.info !56
  %arrayidx49.s6_26fixp = getelementptr inbounds [8 x i32], [8 x i32]* %w_.s6_26fixp, i64 0, i64 %idxprom48, !taffo.info !27, !taffo.target !30
  %s6_26fixp4 = load i32, i32* %arrayidx49.s6_26fixp, align 4, !taffo.info !86, !taffo.target !30
  %17 = shl i32 %mul43.s3_29fixp, 1, !taffo.info !85
  %neg.s2_30fixp = sub i32 0, %17, !taffo.info !88
  %18 = sext i32 %neg.s2_30fixp to i64, !taffo.info !88
  %19 = sext i32 %s3_29fixp to i64, !taffo.info !31
  %20 = mul i64 %18, %19, !taffo.info !91, !taffo.target !30
  %21 = ashr i64 %20, 33
  %22 = trunc i64 %21 to i32
  %s6_26fixp6 = add i32 %22, %s6_26fixp4, !taffo.info !27, !taffo.target !30
  store i32 %s6_26fixp6, i32* %arrayidx49.s6_26fixp, align 4, !taffo.info !43, !taffo.target !30
  br label %for.inc52

for.inc52:                                        ; preds = %for.body42
  %inc53 = add nsw i32 %j39.0, 1, !taffo.info !59, !taffo.constinfo !15
  br label %for.cond40, !llvm.loop !94

for.end54:                                        ; preds = %for.cond40
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %inc56 = add nsw i32 %i.0, 1, !taffo.info !95, !taffo.constinfo !15
  br label %for.cond11, !llvm.loop !97

for.end57:                                        ; preds = %for.cond11
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %inc59 = add nsw i32 %epoch.0, 1, !taffo.info !95, !taffo.constinfo !15
  br label %for.cond8, !llvm.loop !98

for.end60:                                        ; preds = %for.cond8
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc70, %for.end60
  %j61.0 = phi i32 [ 0, %for.end60 ], [ %inc71, %for.inc70 ], !taffo.info !34
  %cmp63 = icmp slt i32 %j61.0, 8, !taffo.info !36
  br i1 %cmp63, label %for.body65, label %for.end72

for.body65:                                       ; preds = %for.cond62
  %idxprom66 = sext i32 %j61.0 to i64, !taffo.info !38
  %arrayidx67.s6_26fixp = getelementptr inbounds [8 x i32], [8 x i32]* %w_.s6_26fixp, i64 0, i64 %idxprom66, !taffo.info !27, !taffo.target !30
  %s6_26fixp = load i32, i32* %arrayidx67.s6_26fixp, align 4, !taffo.info !27, !taffo.target !30
  %23 = sitofp i32 %s6_26fixp to float, !taffo.info !27, !taffo.target !30
  %24 = fdiv float %23, 0x4190000000000000, !taffo.info !27, !taffo.target !30
  %idxprom68 = sext i32 %j61.0 to i64, !taffo.info !38
  %arrayidx69 = getelementptr inbounds float, float* %w, i64 %idxprom68
  store float %24, float* %arrayidx69, align 4, !taffo.info !43, !taffo.target !30
  br label %for.inc70

for.inc70:                                        ; preds = %for.body65
  %inc71 = add nsw i32 %j61.0, 1, !taffo.info !44, !taffo.constinfo !15
  br label %for.cond62, !llvm.loop !99

for.end72:                                        ; preds = %for.cond62
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare !taffo.initweight !22 !taffo.funinfo !23 float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_dataset(i32 noundef %n, float* noundef %s, float* noundef %o) #0 !taffo.initweight !22 !taffo.funinfo !23 {
entry:
  %call = call i64 @time(i64* noundef null) #5, !taffo.constinfo !15
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv) #5, !taffo.constinfo !15
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
  %call6 = call i32 @rand() #5, !taffo.constinfo !100
  %conv7 = sitofp i32 %call6 to float
  %div = fdiv float %conv7, 0x41E0000000000000, !taffo.constinfo !101
  %mul = mul nsw i32 %i.0, 8, !taffo.constinfo !15
  %add = add nsw i32 %mul, %j.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds float, float* %s, i64 %idxprom
  store float %div, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !15
  br label %for.cond2, !llvm.loop !104

for.end:                                          ; preds = %for.cond2
  %call8 = call i32 @rand() #5, !taffo.constinfo !100
  %rem = srem i32 %call8, 2, !taffo.constinfo !15
  %conv9 = sitofp i32 %rem to float
  %idxprom10 = sext i32 %i.0 to i64
  %arrayidx11 = getelementptr inbounds float, float* %o, i64 %idxprom10
  store float %conv9, float* %arrayidx11, align 4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %inc13 = add nsw i32 %i.0, 1, !taffo.constinfo !15
  br label %for.cond, !llvm.loop !105

for.end14:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare !taffo.initweight !12 !taffo.funinfo !14 void @srand(i32 noundef) #1

; Function Attrs: nounwind
declare !taffo.initweight !12 !taffo.funinfo !14 i64 @time(i64* noundef) #1

; Function Attrs: nounwind
declare !taffo.initweight !106 !taffo.funinfo !106 i32 @rand() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !106 !taffo.funinfo !106 {
entry:
  %w = alloca [8 x float], align 16
  %s = alloca [800 x float], align 16
  %o = alloca [100 x float], align 16
  %0 = bitcast [8 x float]* %w to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 32, i1 false), !taffo.constinfo !107
  %arraydecay = getelementptr inbounds [800 x float], [800 x float]* %s, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [100 x float], [100 x float]* %o, i64 0, i64 0
  call void @generate_dataset(i32 noundef 100, float* noundef %arraydecay, float* noundef %arraydecay1), !taffo.constinfo !21
  %arraydecay2 = getelementptr inbounds [8 x float], [8 x float]* %w, i64 0, i64 0
  %arraydecay3 = getelementptr inbounds [800 x float], [800 x float]* %s, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [100 x float], [100 x float]* %o, i64 0, i64 0
  call void @gradient_descent(i32 noundef 100, float* noundef %arraydecay2, float* noundef %arraydecay3, float* noundef %arraydecay4), !taffo.constinfo !107
  %div = sdiv i32 100, 10, !taffo.constinfo !15
  %arraydecay5 = getelementptr inbounds [800 x float], [800 x float]* %s, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [100 x float], [100 x float]* %o, i64 0, i64 0
  call void @generate_dataset(i32 noundef %div, float* noundef %arraydecay5, float* noundef %arraydecay6), !taffo.constinfo !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc18, %for.inc17 ]
  %loss.0 = phi float [ 0.000000e+00, %entry ], [ %add16, %for.inc17 ]
  %cmp = icmp slt i32 %i.0, %div
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body
  %z.0 = phi float [ 0.000000e+00, %for.body ], [ %3, %for.inc ]
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp8 = icmp slt i32 %j.0, 8
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %w, i64 0, i64 %idxprom
  %1 = load float, float* %arrayidx, align 4
  %mul = mul nsw i32 %i.0, 8, !taffo.constinfo !15
  %add = add nsw i32 %mul, %j.0
  %idxprom10 = sext i32 %add to i64
  %arrayidx11 = getelementptr inbounds [800 x float], [800 x float]* %s, i64 0, i64 %idxprom10
  %2 = load float, float* %arrayidx11, align 4
  %3 = call float @llvm.fmuladd.f32(float %1, float %2, float %z.0), !taffo.constinfo !21
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !15
  br label %for.cond7, !llvm.loop !108

for.end:                                          ; preds = %for.cond7
  %call = call float @sigmoid(float noundef %z.0), !taffo.constinfo !15
  %idxprom13 = sext i32 %i.0 to i64
  %arrayidx14 = getelementptr inbounds [100 x float], [100 x float]* %o, i64 0, i64 %idxprom13
  %4 = load float, float* %arrayidx14, align 4
  %call15 = call float @logistic_loss(float noundef %call, float noundef %4), !taffo.constinfo !109
  %add16 = fadd float %loss.0, %call15
  br label %for.inc17

for.inc17:                                        ; preds = %for.end
  %inc18 = add nsw i32 %i.0, 1, !taffo.constinfo !15
  br label %for.cond, !llvm.loop !110

for.end19:                                        ; preds = %for.cond
  %call20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)), !taffo.constinfo !15
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc28, %for.end19
  %j21.0 = phi i32 [ 0, %for.end19 ], [ %inc29, %for.inc28 ]
  %cmp23 = icmp slt i32 %j21.0, 8
  br i1 %cmp23, label %for.body24, label %for.end30

for.body24:                                       ; preds = %for.cond22
  %idxprom25 = sext i32 %j21.0 to i64
  %arrayidx26 = getelementptr inbounds [8 x float], [8 x float]* %w, i64 0, i64 %idxprom25
  %5 = load float, float* %arrayidx26, align 4
  %conv = fpext float %5 to double
  %call27 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double noundef %conv), !taffo.constinfo !109
  br label %for.inc28

for.inc28:                                        ; preds = %for.body24
  %inc29 = add nsw i32 %j21.0, 1, !taffo.constinfo !15
  br label %for.cond22, !llvm.loop !111

for.end30:                                        ; preds = %for.cond22
  %conv31 = fpext float %loss.0 to double
  %call32 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), double noundef %conv31), !taffo.constinfo !109
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare !taffo.initweight !24 !taffo.funinfo !25 void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare !taffo.initweight !12 !taffo.funinfo !14 i32 @printf(i8* noundef, ...) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @sigmoid.1_u1_31fixp(i32 noundef %z.s7_25fixp) #0 !taffo.initweight !64 !taffo.funinfo !112 !taffo.sourceFunction !113 {
entry:
  %fneg.s7_25fixp = sub i32 0, %z.s7_25fixp, !taffo.info !65
  %0 = sitofp i32 %fneg.s7_25fixp to double, !taffo.info !65
  %1 = fdiv double %0, 0x4180000000000000, !taffo.info !65
  %call.flt = call double @exp(double noundef %1) #5, !taffo.info !114, !taffo.initweight !117, !taffo.constinfo !15
  %2 = fmul double 4.096000e+03, %call.flt, !taffo.info !114, !taffo.constinfo !15
  %call.flt.fallback.u52_12fixp = fptoui double %2 to i64, !taffo.info !114
  %3 = lshr i64 -9223372036854775808, 51
  %add.u52_12fixp = add i64 %3, %call.flt.fallback.u52_12fixp, !taffo.info !118, !taffo.constinfo !16
  %4 = zext i32 -2147483648 to i64
  %5 = shl i64 %4, 12
  %6 = udiv i64 %5, %add.u52_12fixp, !taffo.info !120, !taffo.constinfo !16
  %div.u1_31fixp = trunc i64 %6 to i32, !taffo.info !76
  ret i32 %div.u1_31fixp, !taffo.info !123, !taffo.initweight !125
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
!14 = !{i32 0, i1 false}
!15 = !{i1 false, i1 false}
!16 = !{!17, i1 false}
!17 = !{i1 false, !18, i1 false, i2 0}
!18 = !{double 1.000000e+00, double 1.000000e+00}
!19 = !{i32 -1, i32 -1}
!20 = !{i32 0, i1 false, i32 0, i1 false}
!21 = !{i1 false, i1 false, i1 false, i1 false}
!22 = !{i32 -1, i32 -1, i32 -1}
!23 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!24 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!25 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!26 = !{i1 true}
!27 = !{!28, !29, i1 false, i2 1}
!28 = !{!"fixp", i32 -32, i32 26}
!29 = !{double 0xC03DE10000000000, double 0x4012236000000000}
!30 = !{!"weights"}
!31 = !{!32, !33, i1 false, i2 -1}
!32 = !{!"fixp", i32 -32, i32 29}
!33 = !{double -1.000000e-01, double 1.100000e+00}
!34 = !{i1 false, !35, i1 false, i2 0}
!35 = !{double 0.000000e+00, double 9.000000e+00}
!36 = !{i1 false, !37, i1 false, i2 0}
!37 = !{double 0.000000e+00, double 1.000000e+00}
!38 = !{i1 false, !39, i1 false, i2 0}
!39 = !{double 0.000000e+00, double 8.000000e+00}
!40 = !{!32, !41, i1 false, i2 1}
!41 = !{double -2.000000e+00, double 2.000000e+00}
!42 = !{i32 3}
!43 = !{i1 false, !41, i1 false, i2 1}
!44 = !{i1 false, !45, i1 false, i2 0}
!45 = !{double 1.000000e+00, double 9.000000e+00}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 0.000000e+00, double 2.560000e+02}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 0.000000e+00, double 2.304000e+03}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 0.000000e+00, double 2.040000e+03}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 0.000000e+00, double 4.343000e+03}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 0.000000e+00, double 2.303000e+03}
!58 = !{i1 false, !33, i1 false, i2 -1}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 1.000000e+00, double 2.304000e+03}
!61 = distinct !{!61, !47}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 2.550000e+02}
!64 = !{i32 2}
!65 = !{!66, !67, i1 false, i2 1}
!66 = !{!"fixp", i32 -32, i32 25}
!67 = !{double -3.580000e+01, double 3.580000e+01}
!68 = !{!28, !69, i1 false, i2 1}
!69 = !{double 0xC03DC51F00000000, double 0x4012193CA0000000}
!70 = !{!71, !72, i1 false, i2 1}
!71 = !{!"fixp", i32 -64, i32 55}
!72 = !{double 0xC0E3AA5E61999994, double 0x40C02E03E9666666}
!73 = !{!74, !72, i1 false, i2 1}
!74 = !{!"fixp", i32 -32, i32 15}
!75 = distinct !{!75, !47}
!76 = !{!77, !78, i1 false, i2 1}
!77 = !{!"fixp", i32 32, i32 31}
!78 = !{double 0x3CB46A1820000000, double 1.000000e+00}
!79 = !{!80, !81, i1 false, i2 -1}
!80 = !{!"fixp", i32 -64, i32 60}
!81 = !{double -1.000000e-03, double 0x3F86872B020C49BB}
!82 = !{!83, i1 false}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 1.000000e-02, double 1.000000e-02}
!85 = !{!32, !81, i1 false, i2 -1}
!86 = !{!28, !87, i1 false, i2 1}
!87 = !{double 0xC03DDDE700000000, double 0x4012223FA0000000}
!88 = !{!89, !90, i1 false, i2 -1}
!89 = !{!"fixp", i32 -32, i32 30}
!90 = !{double 0xBF86872B020C49BB, double 1.000000e-03}
!91 = !{!92, !93, i1 false, i2 1}
!92 = !{!"fixp", i32 -64, i32 59}
!93 = !{double 0xC03DE0FFFC504817, double 0x4012235FFBC01A37}
!94 = distinct !{!94, !47}
!95 = !{i1 false, !96, i1 false, i2 0}
!96 = !{double 1.000000e+00, double 2.560000e+02}
!97 = distinct !{!97, !47}
!98 = distinct !{!98, !47}
!99 = distinct !{!99, !47}
!100 = !{i1 false}
!101 = !{i1 false, !102}
!102 = !{i1 false, !103, i1 false, i2 0}
!103 = !{double 0x41E0000000000000, double 0x41E0000000000000}
!104 = distinct !{!104, !47}
!105 = distinct !{!105, !47}
!106 = !{}
!107 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!108 = distinct !{!108, !47}
!109 = !{i1 false, i1 false, i1 false}
!110 = distinct !{!110, !47}
!111 = distinct !{!111, !47}
!112 = !{i32 1, !65}
!113 = !{float (float)* @sigmoid}
!114 = !{!115, !116, i1 false, i2 1}
!115 = !{!"fixp", i32 64, i32 12}
!116 = !{double 0x3CB46A183A7CAF3B, double 0x4329148E458CB17D}
!117 = !{i32 7}
!118 = !{!115, !119, i1 false, i2 1}
!119 = !{double 0x3FF0000000000001, double 0x4329148E458CB17F}
!120 = !{!121, !122, i1 false, i2 1}
!121 = !{!"fixp", i32 64, i32 31}
!122 = !{double 0x3CB46A183A7CAF3A, double 0x3FEFFFFFFFFFFFFE}
!123 = !{i1 false, !124, i1 false, i2 1}
!124 = !{double -1.600000e+01, double 1.600000e+01}
!125 = !{i32 11}
