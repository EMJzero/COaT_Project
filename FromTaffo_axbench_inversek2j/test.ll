; ModuleID = '/tmp/tmp.jb5b7pZ30d/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@l1 = dso_local global float 5.000000e-01, align 4, !taffo.initweight !0, !taffo.info !1
@.str = private unnamed_addr constant [35 x i8] c"scalar(range(0.5,0.5) error(1e-8))\00", section "llvm.metadata", !taffo.info !5
@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", section "llvm.metadata", !taffo.info !7
@l2 = dso_local global float 5.000000e-01, align 4, !taffo.initweight !0, !taffo.info !1
@.str.4 = private unnamed_addr constant [14 x i8] c"somedata.data\00", align 1, !taffo.info !7
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !taffo.info !9
@.str.6 = private unnamed_addr constant [54 x i8] c"Cannot allocate memory for the coordinates an angles!\00", align 1, !taffo.info !11
@.str.7 = private unnamed_addr constant [6 x i8] c"%f\09%f\00", align 1, !taffo.info !13
@.str.8 = private unnamed_addr constant [7 x i8] c"%f\09%f\0A\00", align 1, !taffo.info !13
@llvm.global.annotations = appending global [2 x { i8*, i8*, i8*, i32, i8* }] [{ i8*, i8*, i8*, i32, i8* } { i8* bitcast (float* @l1 to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 20, i8* null }, { i8*, i8*, i8*, i32, i8* } { i8* bitcast (float* @l2 to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 21, i8* null }], section "llvm.metadata"
@l1.fixp = global i32 1073741824, align 4, !taffo.info !1
@l2.fixp = global i32 1073741824, align 4, !taffo.info !1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(float* %t1t2xy_f) #0 !taffo.initweight !17 !taffo.start !18 !taffo.funinfo !19 {
entry:
  %t1t2xy = alloca [400 x float], align 16, !taffo.initweight !0, !taffo.info !20, !taffo.target !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add9, %for.inc ], !taffo.info !22
  %cmp = icmp slt i32 %i.0, 400, !taffo.info !24
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !26
  %arrayidx = getelementptr inbounds float, float* %t1t2xy_f, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %idxprom2 = sext i32 %i.0 to i64, !taffo.info !26
  %arrayidx3 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom2, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  store float %0, float* %arrayidx3, align 4, !taffo.info !20, !taffo.target !21
  %add = add nsw i32 %i.0, 1, !taffo.info !29, !taffo.constinfo !31
  %idxprom4 = sext i32 %add to i64, !taffo.info !29
  %arrayidx5 = getelementptr inbounds float, float* %t1t2xy_f, i64 %idxprom4
  %1 = load float, float* %arrayidx5, align 4
  %add6 = add nsw i32 %i.0, 1, !taffo.info !29, !taffo.constinfo !31
  %idxprom7 = sext i32 %add6 to i64, !taffo.info !29
  %arrayidx8 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom7, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  store float %1, float* %arrayidx8, align 4, !taffo.info !20, !taffo.target !21
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %add9 = add nsw i32 %i.0, 4, !taffo.info !32, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc57, %for.end
  %i10.0 = phi i32 [ 0, %for.end ], [ %add58, %for.inc57 ], !taffo.info !22
  %cmp12 = icmp slt i32 %i10.0, 400, !taffo.info !24
  br i1 %cmp12, label %for.body13, label %for.end59

for.body13:                                       ; preds = %for.cond11
  %u1_31fixp5 = load i32, i32* @l1.fixp, align 4, !taffo.info !1
  %add14 = add nsw i32 %i10.0, 0, !taffo.info !26, !taffo.constinfo !31
  %idxprom15 = sext i32 %add14 to i64, !taffo.info !26
  %arrayidx16 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom15, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %2 = load float, float* %arrayidx16, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %conv17 = fpext float %2 to double, !taffo.initweight !37, !taffo.info !20, !taffo.target !21
  %call = call double @cos(double %conv17) #3, !taffo.initweight !38, !taffo.info !20, !taffo.target !21, !taffo.constinfo !31
  %3 = fmul double 0x41E0000000000000, %call, !taffo.info !20, !taffo.target !21, !taffo.constinfo !31
  %4 = fptoui double %3 to i32, !taffo.info !20, !taffo.target !21
  %5 = zext i32 %u1_31fixp5 to i64, !taffo.info !1
  %6 = zext i32 %4 to i64, !taffo.info !20, !taffo.target !21
  %7 = mul i64 %5, %6, !taffo.info !39
  %8 = lshr i64 %7, 31, !taffo.info !39
  %mul.u1_31fixp = trunc i64 %8 to i32, !taffo.info !1
  %u1_31fixp12 = load i32, i32* @l2.fixp, align 4, !taffo.info !1
  %add19 = add nsw i32 %i10.0, 0, !taffo.info !26, !taffo.constinfo !31
  %idxprom20 = sext i32 %add19 to i64, !taffo.info !26
  %arrayidx21 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom20, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %9 = load float, float* %arrayidx21, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %add22 = add nsw i32 %i10.0, 1, !taffo.info !29, !taffo.constinfo !31
  %idxprom23 = sext i32 %add22 to i64, !taffo.info !29
  %arrayidx24 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom23, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %10 = load float, float* %arrayidx24, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %add25 = fadd float %9, %10, !taffo.initweight !37, !taffo.info !20, !taffo.target !21
  %conv26 = fpext float %add25 to double, !taffo.initweight !38, !taffo.info !20, !taffo.target !21
  %call27 = call double @cos(double %conv26) #3, !taffo.initweight !41, !taffo.info !20, !taffo.target !21, !taffo.constinfo !31
  %11 = fmul double 0x41E0000000000000, %call27, !taffo.info !20, !taffo.target !21, !taffo.constinfo !31
  %12 = fptoui double %11 to i32, !taffo.info !20, !taffo.target !21
  %13 = zext i32 %u1_31fixp12 to i64, !taffo.info !1
  %14 = zext i32 %12 to i64, !taffo.info !20, !taffo.target !21
  %15 = mul i64 %13, %14, !taffo.info !39
  %16 = lshr i64 %15, 31, !taffo.info !39
  %mul28.u1_31fixp = trunc i64 %16 to i32, !taffo.info !1
  %add29.u1_31fixp = add i32 %mul.u1_31fixp, %mul28.u1_31fixp, !taffo.info !1
  %17 = uitofp i32 %add29.u1_31fixp to float, !taffo.info !1
  %18 = fdiv float %17, 0x41E0000000000000, !taffo.info !1
  %add31 = add nsw i32 %i10.0, 2, !taffo.info !42, !taffo.constinfo !31
  %idxprom32 = sext i32 %add31 to i64, !taffo.info !42
  %arrayidx33 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom32, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  store float %18, float* %arrayidx33, align 4, !taffo.info !20, !taffo.target !21
  %u1_31fixp4 = load i32, i32* @l1.fixp, align 4, !taffo.info !1
  %add35 = add nsw i32 %i10.0, 0, !taffo.info !26, !taffo.constinfo !31
  %idxprom36 = sext i32 %add35 to i64, !taffo.info !26
  %arrayidx37 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom36, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %19 = load float, float* %arrayidx37, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %conv38 = fpext float %19 to double, !taffo.initweight !37, !taffo.info !20, !taffo.target !21
  %call39 = call double @sin(double %conv38) #3, !taffo.initweight !38, !taffo.info !20, !taffo.target !21, !taffo.constinfo !31
  %20 = fmul double 0x41E0000000000000, %call39, !taffo.info !20, !taffo.target !21, !taffo.constinfo !31
  %21 = fptoui double %20 to i32, !taffo.info !20, !taffo.target !21
  %22 = zext i32 %u1_31fixp4 to i64, !taffo.info !1
  %23 = zext i32 %21 to i64, !taffo.info !20, !taffo.target !21
  %24 = mul i64 %22, %23, !taffo.info !39
  %25 = lshr i64 %24, 31, !taffo.info !39
  %mul40.u1_31fixp = trunc i64 %25 to i32, !taffo.info !1
  %u1_31fixp11 = load i32, i32* @l2.fixp, align 4, !taffo.info !1
  %add42 = add nsw i32 %i10.0, 0, !taffo.info !26, !taffo.constinfo !31
  %idxprom43 = sext i32 %add42 to i64, !taffo.info !26
  %arrayidx44 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom43, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %26 = load float, float* %arrayidx44, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %add45 = add nsw i32 %i10.0, 1, !taffo.info !29, !taffo.constinfo !31
  %idxprom46 = sext i32 %add45 to i64, !taffo.info !29
  %arrayidx47 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom46, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %27 = load float, float* %arrayidx47, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %add48 = fadd float %26, %27, !taffo.initweight !37, !taffo.info !20, !taffo.target !21
  %conv49 = fpext float %add48 to double, !taffo.initweight !38, !taffo.info !20, !taffo.target !21
  %call50 = call double @sin(double %conv49) #3, !taffo.initweight !41, !taffo.info !20, !taffo.target !21, !taffo.constinfo !31
  %28 = fmul double 0x41E0000000000000, %call50, !taffo.info !20, !taffo.target !21, !taffo.constinfo !31
  %29 = fptoui double %28 to i32, !taffo.info !20, !taffo.target !21
  %30 = zext i32 %u1_31fixp11 to i64, !taffo.info !1
  %31 = zext i32 %29 to i64, !taffo.info !20, !taffo.target !21
  %32 = mul i64 %30, %31, !taffo.info !39
  %33 = lshr i64 %32, 31, !taffo.info !39
  %mul51.u1_31fixp = trunc i64 %33 to i32, !taffo.info !1
  %add52.u1_31fixp = add i32 %mul40.u1_31fixp, %mul51.u1_31fixp, !taffo.info !1
  %34 = uitofp i32 %add52.u1_31fixp to float, !taffo.info !1
  %35 = fdiv float %34, 0x41E0000000000000, !taffo.info !1
  %add54 = add nsw i32 %i10.0, 3, !taffo.info !44, !taffo.constinfo !31
  %idxprom55 = sext i32 %add54 to i64, !taffo.info !44
  %arrayidx56 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom55, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  store float %35, float* %arrayidx56, align 4, !taffo.info !20, !taffo.target !21
  br label %for.inc57

for.inc57:                                        ; preds = %for.body13
  %add58 = add nsw i32 %i10.0, 4, !taffo.info !32, !taffo.constinfo !31
  br label %for.cond11, !llvm.loop !46

for.end59:                                        ; preds = %for.cond11
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc140, %for.end59
  %i60.0 = phi i32 [ 0, %for.end59 ], [ %add141, %for.inc140 ], !taffo.info !22
  %cmp62 = icmp slt i32 %i60.0, 400, !taffo.info !24
  br i1 %cmp62, label %for.body64, label %for.end142

for.body64:                                       ; preds = %for.cond61
  %add66 = add nsw i32 %i60.0, 2, !taffo.info !42, !taffo.constinfo !31
  %idxprom67 = sext i32 %add66 to i64, !taffo.info !42
  %arrayidx68 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom67, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %36 = load float, float* %arrayidx68, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %add69 = add nsw i32 %i60.0, 2, !taffo.info !42, !taffo.constinfo !31
  %idxprom70 = sext i32 %add69 to i64, !taffo.info !42
  %arrayidx71 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom70, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %37 = load float, float* %arrayidx71, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %mul72 = fmul float %36, %37, !taffo.initweight !37, !taffo.info !20, !taffo.target !21
  %add73 = add nsw i32 %i60.0, 3, !taffo.info !44, !taffo.constinfo !31
  %idxprom74 = sext i32 %add73 to i64, !taffo.info !44
  %arrayidx75 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom74, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %38 = load float, float* %arrayidx75, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %add76 = add nsw i32 %i60.0, 3, !taffo.info !44, !taffo.constinfo !31
  %idxprom77 = sext i32 %add76 to i64, !taffo.info !44
  %arrayidx78 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom77, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %39 = load float, float* %arrayidx78, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %mul79 = fmul float %38, %39, !taffo.initweight !37, !taffo.info !20, !taffo.target !21
  %add80 = fadd float %mul72, %mul79, !taffo.initweight !38, !taffo.info !20, !taffo.target !21
  %add81 = add nsw i32 %i60.0, 2, !taffo.info !42, !taffo.constinfo !31
  %idxprom82 = sext i32 %add81 to i64, !taffo.info !42
  %arrayidx83 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom82, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %40 = load float, float* %arrayidx83, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %add84 = add nsw i32 %i60.0, 2, !taffo.info !42, !taffo.constinfo !31
  %idxprom85 = sext i32 %add84 to i64, !taffo.info !42
  %arrayidx86 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom85, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %41 = load float, float* %arrayidx86, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %mul87 = fmul float %40, %41, !taffo.initweight !37, !taffo.info !20, !taffo.target !21
  %add88 = add nsw i32 %i60.0, 3, !taffo.info !44, !taffo.constinfo !31
  %idxprom89 = sext i32 %add88 to i64, !taffo.info !44
  %arrayidx90 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom89, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %42 = load float, float* %arrayidx90, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %add91 = add nsw i32 %i60.0, 3, !taffo.info !44, !taffo.constinfo !31
  %idxprom92 = sext i32 %add91 to i64, !taffo.info !44
  %arrayidx93 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom92, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %43 = load float, float* %arrayidx93, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %mul94 = fmul float %42, %43, !taffo.initweight !37, !taffo.info !20, !taffo.target !21
  %add95 = fadd float %mul87, %mul94, !taffo.initweight !38, !taffo.info !20, !taffo.target !21
  %u1_31fixp3 = load i32, i32* @l1.fixp, align 4, !taffo.info !1
  %u1_31fixp2 = load i32, i32* @l1.fixp, align 4, !taffo.info !1
  %44 = zext i32 %u1_31fixp3 to i64, !taffo.info !1
  %45 = zext i32 %u1_31fixp2 to i64, !taffo.info !1
  %46 = mul i64 %44, %45, !taffo.info !47
  %47 = lshr i64 %46, 31, !taffo.info !47
  %mul96.u1_31fixp = trunc i64 %47 to i32, !taffo.info !49
  %48 = fmul float 0x41E0000000000000, %add95, !taffo.info !20, !taffo.target !21
  %49 = fptoui float %48 to i32, !taffo.info !20, !taffo.target !21
  %sub.u1_31fixp = sub i32 %49, %mul96.u1_31fixp, !taffo.info !1
  %u1_31fixp10 = load i32, i32* @l2.fixp, align 4, !taffo.info !1
  %u1_31fixp9 = load i32, i32* @l2.fixp, align 4, !taffo.info !1
  %50 = zext i32 %u1_31fixp10 to i64, !taffo.info !1
  %51 = zext i32 %u1_31fixp9 to i64, !taffo.info !1
  %52 = mul i64 %50, %51, !taffo.info !47
  %53 = lshr i64 %52, 31, !taffo.info !47
  %mul97.u1_31fixp = trunc i64 %53 to i32, !taffo.info !49
  %sub98.u1_31fixp = sub i32 %sub.u1_31fixp, %mul97.u1_31fixp, !taffo.info !1
  %u1_31fixp1 = load i32, i32* @l1.fixp, align 4, !taffo.info !1
  %54 = zext i32 %u1_31fixp1 to i64, !taffo.info !1
  %55 = mul i64 2, %54, !taffo.info !50, !taffo.constinfo !53
  %mul99.u1_31fixp = trunc i64 %55 to i32, !taffo.info !57
  %u1_31fixp8 = load i32, i32* @l2.fixp, align 4, !taffo.info !1
  %56 = zext i32 %mul99.u1_31fixp to i64, !taffo.info !57
  %57 = zext i32 %u1_31fixp8 to i64, !taffo.info !1
  %58 = mul i64 %56, %57, !taffo.info !39
  %59 = lshr i64 %58, 31, !taffo.info !39
  %mul100.u1_31fixp = trunc i64 %59 to i32, !taffo.info !1
  %60 = zext i32 %sub98.u1_31fixp to i64, !taffo.info !1
  %61 = shl i64 %60, 31, !taffo.info !1
  %62 = zext i32 %mul100.u1_31fixp to i64, !taffo.info !1
  %63 = udiv i64 %61, %62, !taffo.info !58
  %div.u1_31fixp = trunc i64 %63 to i32, !taffo.info !1
  %64 = uitofp i32 %div.u1_31fixp to double, !taffo.info !1
  %65 = fdiv double %64, 0x41E0000000000000, !taffo.info !1
  %call102.flt = call double @acos(double %65) #3, !taffo.initweight !41, !taffo.info !1, !taffo.constinfo !31
  %66 = fmul double 0x41E0000000000000, %call102.flt, !taffo.info !1, !taffo.constinfo !31
  %call102.flt.fallback.u1_31fixp = fptoui double %66 to i32, !taffo.info !1
  %67 = uitofp i32 %call102.flt.fallback.u1_31fixp to float, !taffo.info !1
  %68 = fdiv float %67, 0x41E0000000000000, !taffo.info !1
  %add104 = add nsw i32 %i60.0, 1, !taffo.info !29, !taffo.constinfo !31
  %idxprom105 = sext i32 %add104 to i64, !taffo.info !29
  %arrayidx106 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom105, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  store float %68, float* %arrayidx106, align 4, !taffo.info !20, !taffo.target !21
  %add107 = add nsw i32 %i60.0, 3, !taffo.info !44, !taffo.constinfo !31
  %idxprom108 = sext i32 %add107 to i64, !taffo.info !44
  %arrayidx109 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom108, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %69 = load float, float* %arrayidx109, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %conv110 = fpext float %69 to double, !taffo.initweight !37, !taffo.info !20, !taffo.target !21
  %u1_31fixp = load i32, i32* @l1.fixp, align 4, !taffo.info !1
  %u1_31fixp7 = load i32, i32* @l2.fixp, align 4, !taffo.info !1
  %add113 = add nsw i32 %i60.0, 1, !taffo.info !29, !taffo.constinfo !31
  %idxprom114 = sext i32 %add113 to i64, !taffo.info !29
  %arrayidx115 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom114, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %70 = load float, float* %arrayidx115, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %conv116 = fpext float %70 to double, !taffo.initweight !37, !taffo.info !20, !taffo.target !21
  %call117 = call double @cos(double %conv116) #3, !taffo.initweight !38, !taffo.info !20, !taffo.target !21, !taffo.constinfo !31
  %71 = fmul double 0x41E0000000000000, %call117, !taffo.info !20, !taffo.target !21, !taffo.constinfo !31
  %72 = fptoui double %71 to i32, !taffo.info !20, !taffo.target !21
  %73 = zext i32 %u1_31fixp7 to i64, !taffo.info !1
  %74 = zext i32 %72 to i64, !taffo.info !20, !taffo.target !21
  %75 = mul i64 %73, %74, !taffo.info !39
  %76 = lshr i64 %75, 31, !taffo.info !39
  %mul118.u1_31fixp = trunc i64 %76 to i32, !taffo.info !1
  %add119.u1_31fixp = add i32 %u1_31fixp, %mul118.u1_31fixp, !taffo.info !1
  %77 = fmul double 0x41E0000000000000, %conv110, !taffo.info !20, !taffo.target !21
  %78 = fptoui double %77 to i32, !taffo.info !20, !taffo.target !21
  %79 = zext i32 %78 to i64, !taffo.info !20, !taffo.target !21
  %80 = zext i32 %add119.u1_31fixp to i64, !taffo.info !1
  %81 = mul i64 %79, %80, !taffo.info !39
  %82 = lshr i64 %81, 31, !taffo.info !39
  %mul120.u1_31fixp = trunc i64 %82 to i32, !taffo.info !1
  %add121 = add nsw i32 %i60.0, 2, !taffo.info !42, !taffo.constinfo !31
  %idxprom122 = sext i32 %add121 to i64, !taffo.info !42
  %arrayidx123 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom122, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %83 = load float, float* %arrayidx123, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %u1_31fixp6 = load i32, i32* @l2.fixp, align 4, !taffo.info !1
  %84 = fmul float 0x41E0000000000000, %83, !taffo.info !20, !taffo.target !21
  %85 = fptoui float %84 to i32, !taffo.info !20, !taffo.target !21
  %86 = zext i32 %85 to i64, !taffo.info !20, !taffo.target !21
  %87 = zext i32 %u1_31fixp6 to i64, !taffo.info !1
  %88 = mul i64 %86, %87, !taffo.info !39
  %89 = lshr i64 %88, 31, !taffo.info !39
  %mul124.u1_31fixp = trunc i64 %89 to i32, !taffo.info !1
  %add126 = add nsw i32 %i60.0, 1, !taffo.info !29, !taffo.constinfo !31
  %idxprom127 = sext i32 %add126 to i64, !taffo.info !29
  %arrayidx128 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom127, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  %90 = load float, float* %arrayidx128, align 4, !taffo.initweight !36, !taffo.info !20, !taffo.target !21
  %conv129 = fpext float %90 to double, !taffo.initweight !37, !taffo.info !20, !taffo.target !21
  %call130 = call double @sin(double %conv129) #3, !taffo.initweight !38, !taffo.info !20, !taffo.target !21, !taffo.constinfo !31
  %91 = fmul double 0x41E0000000000000, %call130, !taffo.info !20, !taffo.target !21, !taffo.constinfo !31
  %92 = fptoui double %91 to i32, !taffo.info !20, !taffo.target !21
  %93 = zext i32 %mul124.u1_31fixp to i64, !taffo.info !1
  %94 = zext i32 %92 to i64, !taffo.info !20, !taffo.target !21
  %95 = mul i64 %93, %94, !taffo.info !39
  %96 = lshr i64 %95, 31, !taffo.info !39
  %mul131.u1_31fixp = trunc i64 %96 to i32, !taffo.info !1
  %97 = lshr i32 %mul120.u1_31fixp, 2, !taffo.info !1
  %98 = lshr i32 %mul131.u1_31fixp, 2, !taffo.info !1
  %sub132.u3_29fixp = sub i32 %97, %98, !taffo.info !59
  %99 = fmul float 0x41C0000000000000, %add80, !taffo.info !20, !taffo.target !21
  %conv133.u3_29fixp = fptoui float %99 to i32, !taffo.info !61, !taffo.target !21
  %100 = zext i32 %sub132.u3_29fixp to i64, !taffo.info !59
  %101 = shl i64 %100, 29, !taffo.info !59
  %102 = zext i32 %conv133.u3_29fixp to i64, !taffo.info !61, !taffo.target !21
  %103 = udiv i64 %101, %102, !taffo.info !63
  %div134.u3_29fixp = trunc i64 %103 to i32, !taffo.info !61
  %104 = uitofp i32 %div134.u3_29fixp to double, !taffo.info !61
  %105 = fdiv double %104, 0x41C0000000000000, !taffo.info !61
  %call135.flt = call double @asin(double %105) #3, !taffo.initweight !38, !taffo.info !61, !taffo.constinfo !31
  %106 = fmul double 0x41C0000000000000, %call135.flt, !taffo.info !61, !taffo.constinfo !31
  %call135.flt.fallback.u3_29fixp = fptoui double %106 to i32, !taffo.info !61
  %107 = uitofp i32 %call135.flt.fallback.u3_29fixp to float, !taffo.info !61
  %108 = fdiv float %107, 0x41C0000000000000, !taffo.info !61
  %add137 = add nsw i32 %i60.0, 0, !taffo.info !26, !taffo.constinfo !31
  %idxprom138 = sext i32 %add137 to i64, !taffo.info !26
  %arrayidx139 = getelementptr inbounds [400 x float], [400 x float]* %t1t2xy, i64 0, i64 %idxprom138, !taffo.initweight !28, !taffo.info !20, !taffo.target !21
  store float %108, float* %arrayidx139, align 4, !taffo.info !20, !taffo.target !21
  br label %for.inc140

for.inc140:                                       ; preds = %for.body64
  %add141 = add nsw i32 %i60.0, 4, !taffo.info !32, !taffo.constinfo !31
  br label %for.cond61, !llvm.loop !65

for.end142:                                       ; preds = %for.cond61
  ret void
}

; Function Attrs: nounwind
declare !taffo.initweight !17 !taffo.funinfo !19 dso_local double @cos(double) #1

; Function Attrs: nounwind
declare !taffo.initweight !17 !taffo.funinfo !19 dso_local double @sin(double) #1

; Function Attrs: nounwind
declare !taffo.initweight !17 !taffo.funinfo !19 dso_local double @acos(double) #1

; Function Attrs: nounwind
declare !taffo.initweight !17 !taffo.funinfo !19 dso_local double @asin(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !taffo.initweight !66 !taffo.funinfo !67 {
entry:
  %theta1 = alloca float, align 4
  %theta2 = alloca float, align 4
  %call = call noalias %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)), !taffo.constinfo !68
  %call1 = call noalias i8* @malloc(i64 1600) #3, !taffo.constinfo !31
  %0 = bitcast i8* %call1 to float*
  %cmp = icmp eq float* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !31
  br label %return

if.end:                                           ; preds = %entry
  %call3 = call i64 @time(i64* null) #3, !taffo.constinfo !31
  %conv = trunc i64 %call3 to i32
  call void @srand(i32 %conv) #3, !taffo.constinfo !31
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %add9, %for.inc ]
  %cmp4 = icmp slt i32 %i.0, 400
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), float* %theta1, float* %theta2), !taffo.constinfo !69
  %1 = load float, float* %theta1, align 4
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds float, float* %0, i64 %idxprom
  store float %1, float* %arrayidx, align 4
  %2 = load float, float* %theta2, align 4
  %add = add nsw i32 %i.0, 1, !taffo.constinfo !31
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds float, float* %0, i64 %idxprom7
  store float %2, float* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %add9 = add nsw i32 %i.0, 4, !taffo.constinfo !31
  br label %for.cond, !llvm.loop !70

for.end:                                          ; preds = %for.cond
  call void @test(float* %0), !taffo.constinfo !31
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc24, %for.end
  %i10.0 = phi i32 [ 0, %for.end ], [ %add25, %for.inc24 ]
  %cmp12 = icmp slt i32 %i10.0, 400
  br i1 %cmp12, label %for.body14, label %for.end26

for.body14:                                       ; preds = %for.cond11
  %add15 = add nsw i32 %i10.0, 0, !taffo.constinfo !31
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds float, float* %0, i64 %idxprom16
  %3 = load float, float* %arrayidx17, align 4
  %conv18 = fpext float %3 to double
  %add19 = add nsw i32 %i10.0, 1, !taffo.constinfo !31
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds float, float* %0, i64 %idxprom20
  %4 = load float, float* %arrayidx21, align 4
  %conv22 = fpext float %4 to double
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), double %conv18, double %conv22), !taffo.constinfo !71
  br label %for.inc24

for.inc24:                                        ; preds = %for.body14
  %add25 = add nsw i32 %i10.0, 4, !taffo.constinfo !31
  br label %for.cond11, !llvm.loop !72

for.end26:                                        ; preds = %for.cond11
  %5 = bitcast float* %0 to i8*
  call void @free(i8* %5) #3, !taffo.constinfo !31
  br label %return

return:                                           ; preds = %for.end26, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %for.end26 ]
  ret i32 %retval.0
}

declare !taffo.initweight !66 !taffo.funinfo !67 dso_local noalias %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind
declare !taffo.initweight !17 !taffo.funinfo !19 dso_local noalias i8* @malloc(i64) #1

declare !taffo.initweight !17 !taffo.funinfo !19 dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare !taffo.initweight !17 !taffo.funinfo !19 dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare !taffo.initweight !17 !taffo.funinfo !19 dso_local i64 @time(i64*) #1

declare !taffo.initweight !66 !taffo.funinfo !67 dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare !taffo.initweight !17 !taffo.funinfo !19 dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!15}
!llvm.ident = !{!16}

!0 = !{i32 0}
!1 = !{!2, !3, !4, i2 1}
!2 = !{!"fixp", i32 32, i32 31}
!3 = !{double 5.000000e-01, double 5.000000e-01}
!4 = !{double 1.000000e-08}
!5 = !{i1 false, !6, i1 false, i2 0}
!6 = !{double 0.000000e+00, double 1.150000e+02}
!7 = !{i1 false, !8, i1 false, i2 0}
!8 = !{double 0.000000e+00, double 1.160000e+02}
!9 = !{i1 false, !10, i1 false, i2 0}
!10 = !{double 0.000000e+00, double 1.140000e+02}
!11 = !{i1 false, !12, i1 false, i2 0}
!12 = !{double 0.000000e+00, double 1.210000e+02}
!13 = !{i1 false, !14, i1 false, i2 0}
!14 = !{double 0.000000e+00, double 1.020000e+02}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!17 = !{i32 -1}
!18 = !{i1 true}
!19 = !{i32 0, i1 false}
!20 = !{i1 false, i1 false, i1 false, i2 1}
!21 = !{!"t1t2xy"}
!22 = !{i1 false, !23, i1 false, i2 0}
!23 = !{double 0.000000e+00, double 4.040000e+02}
!24 = !{i1 false, !25, i1 false, i2 0}
!25 = !{double 0.000000e+00, double 1.000000e+00}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 0.000000e+00, double 4.000000e+02}
!28 = !{i32 1}
!29 = !{i1 false, !30, i1 false, i2 0}
!30 = !{double 1.000000e+00, double 4.010000e+02}
!31 = !{i1 false, i1 false}
!32 = !{i1 false, !33, i1 false, i2 0}
!33 = !{double 4.000000e+00, double 4.040000e+02}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{i32 2}
!37 = !{i32 3}
!38 = !{i32 4}
!39 = !{!40, !3, !4, i2 1}
!40 = !{!"fixp", i32 64, i32 62}
!41 = !{i32 5}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 2.000000e+00, double 4.020000e+02}
!44 = !{i1 false, !45, i1 false, i2 0}
!45 = !{double 3.000000e+00, double 4.030000e+02}
!46 = distinct !{!46, !35}
!47 = !{!40, !48, !4, i2 1}
!48 = !{double 2.500000e-01, double 2.500000e-01}
!49 = !{!2, !48, !4, i2 1}
!50 = !{!51, !52, !4, i2 1}
!51 = !{!"fixp", i32 64, i32 31}
!52 = !{double 1.000000e+00, double 1.000000e+00}
!53 = !{!54, i1 false}
!54 = !{!55, !56, i1 false, i2 0}
!55 = !{!"fixp", i32 32, i32 0}
!56 = !{double 2.000000e+00, double 2.000000e+00}
!57 = !{!2, !52, !4, i2 1}
!58 = !{!51, !3, !4, i2 1}
!59 = !{!60, !3, !4, i2 1}
!60 = !{!"fixp", i32 32, i32 29}
!61 = !{!60, !62, i1 false, i2 -1}
!62 = !{double 5.000000e-01, double 0x4013BD3CBC48F10B}
!63 = !{!64, !62, i1 false, i2 -1}
!64 = !{!"fixp", i32 64, i32 29}
!65 = distinct !{!65, !35}
!66 = !{i32 -1, i32 -1}
!67 = !{i32 0, i1 false, i32 0, i1 false}
!68 = !{i1 false, i1 false, i1 false}
!69 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!70 = distinct !{!70, !35}
!71 = !{i1 false, i1 false, i1 false, i1 false}
!72 = distinct !{!72, !35}
