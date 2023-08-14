; ModuleID = '/tmp/tmp.t6HjQx9Ucx/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", section "llvm.metadata", !taffo.info !0
@.str.3 = private unnamed_addr constant [41 x i8] c"target('abs_res') scalar(range(-16, 16))\00", section "llvm.metadata", !taffo.info !0
@__const.main.M = private unnamed_addr constant [16 x float] [float 1.600000e+01, float -1.600000e+01, float 9.000000e+00, float -2.000000e+00, float 0.000000e+00, float -1.100000e+01, float 1.400000e+01, float 8.000000e+00, float 2.000000e+00, float 5.000000e+00, float 9.000000e+00, float -1.000000e+00, float 1.100000e+01, float 0.000000e+00, float 2.000000e+00, float -1.000000e+00], align 16, !taffo.info !2
@.str.6 = private unnamed_addr constant [18 x i8] c"Original Matrix:\0A\00", align 1, !taffo.info !4
@.str.7 = private unnamed_addr constant [4 x i8] c"%f\09\00", align 1, !taffo.info !6
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !taffo.info !8
@.str.9 = private unnamed_addr constant [18 x i8] c"Inverted Matrix:\0A\00", align 1, !taffo.info !4
@llvm.global.annotations = appending global [1 x { i8*, i8*, i8*, i32, i8* }] [{ i8*, i8*, i8*, i32, i8* } { i8* bitcast (float (float)* @absolute to i8*), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 27, i8* null }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local void @swap_rows(float* noundef %matrix, i32 noundef %row1, i32 noundef %row2, i32 noundef %N) #0 !taffo.start !16 !taffo.initweight !17 !taffo.equivalentChild !18 !taffo.funinfo !19 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !20
  %cmp = icmp slt i32 %i.0, %N, !taffo.info !20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %row1, %N
  %add = add nsw i32 %mul, %i.0
  %idxprom = sext i32 %add to i64
  %arrayidx.flt.s6_26fixp = getelementptr inbounds float, float* %matrix, i64 %idxprom, !taffo.info !22, !taffo.initweight !24, !taffo.target !25
  %.flt1 = load float, float* %arrayidx.flt.s6_26fixp, align 4, !taffo.info !22, !taffo.initweight !26, !taffo.target !25
  %0 = fmul float 0x4190000000000000, %.flt1, !taffo.info !22, !taffo.target !25
  %.flt1.fallback.s6_26fixp = fptosi float %0 to i32, !taffo.info !22, !taffo.target !25
  %1 = sitofp i32 %.flt1.fallback.s6_26fixp to float, !taffo.info !22, !taffo.target !25
  %2 = fdiv float %1, 0x4190000000000000, !taffo.info !22, !taffo.target !25
  %mul3 = mul nsw i32 %row2, %N
  %add4 = add nsw i32 %mul3, %i.0
  %idxprom5 = sext i32 %add4 to i64
  %arrayidx6.flt.s6_26fixp = getelementptr inbounds float, float* %matrix, i64 %idxprom5, !taffo.info !22, !taffo.initweight !24, !taffo.target !25
  %.flt = load float, float* %arrayidx6.flt.s6_26fixp, align 4, !taffo.info !22, !taffo.initweight !26, !taffo.target !25
  %3 = fmul float 0x4190000000000000, %.flt, !taffo.info !22, !taffo.target !25
  %.flt.fallback.s6_26fixp = fptosi float %3 to i32, !taffo.info !22, !taffo.target !25
  %4 = sitofp i32 %.flt.fallback.s6_26fixp to float, !taffo.info !22, !taffo.target !25
  %5 = fdiv float %4, 0x4190000000000000, !taffo.info !22, !taffo.target !25
  %mul7 = mul nsw i32 %row1, %N
  %add8 = add nsw i32 %mul7, %i.0
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10.flt.s6_26fixp = getelementptr inbounds float, float* %matrix, i64 %idxprom9, !taffo.info !22, !taffo.initweight !24, !taffo.target !25
  store float %5, float* %arrayidx10.flt.s6_26fixp, align 4, !taffo.info !27, !taffo.target !25
  %mul11 = mul nsw i32 %row2, %N
  %add12 = add nsw i32 %mul11, %i.0
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14.flt.s6_26fixp = getelementptr inbounds float, float* %matrix, i64 %idxprom13, !taffo.info !22, !taffo.initweight !24, !taffo.target !25
  store float %2, float* %arrayidx14.flt.s6_26fixp, align 4, !taffo.info !27
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !28, !taffo.constinfo !30
  br label %for.cond, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @scale_row(float* noundef %matrix, i32 noundef %row, i32 noundef %N, float noundef %scalar) #0 !taffo.start !16 !taffo.initweight !33 !taffo.equivalentChild !34 !taffo.funinfo !35 {
entry:
  %0 = fmul float 0x4190000000000000, %scalar, !taffo.info !22
  %1 = fptosi float %0 to i32, !taffo.info !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !20
  %cmp = icmp slt i32 %i.0, %N, !taffo.info !20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %row, %N
  %add = add nsw i32 %mul, %i.0
  %idxprom = sext i32 %add to i64
  %arrayidx.flt.s6_26fixp = getelementptr inbounds float, float* %matrix, i64 %idxprom, !taffo.info !22, !taffo.initweight !24, !taffo.target !25
  %.flt = load float, float* %arrayidx.flt.s6_26fixp, align 4, !taffo.info !22, !taffo.initweight !26, !taffo.target !25
  %2 = fmul float 0x4190000000000000, %.flt, !taffo.info !22, !taffo.target !25
  %.flt.fallback.s6_26fixp = fptosi float %2 to i32, !taffo.info !22, !taffo.target !25
  %3 = sext i32 %.flt.fallback.s6_26fixp to i64, !taffo.info !22, !taffo.target !25
  %4 = sext i32 %1 to i64, !taffo.info !22
  %5 = mul i64 %3, %4, !taffo.info !36
  %6 = ashr i64 %5, 26, !taffo.info !36
  %mul3.s6_26fixp = trunc i64 %6 to i32, !taffo.info !22
  %7 = sitofp i32 %mul3.s6_26fixp to float, !taffo.info !22
  %8 = fdiv float %7, 0x4190000000000000, !taffo.info !22
  store float %8, float* %arrayidx.flt.s6_26fixp, align 4, !taffo.info !27, !taffo.target !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !28, !taffo.constinfo !30
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_scaled_row(float* noundef %matrix, i32 noundef %dest_row, i32 noundef %src_row, i32 noundef %N, float noundef %scalar) #0 !taffo.start !16 !taffo.initweight !39 !taffo.equivalentChild !40 !taffo.funinfo !41 {
entry:
  %0 = fmul float 0x4190000000000000, %scalar, !taffo.info !22
  %1 = fptosi float %0 to i32, !taffo.info !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !20
  %cmp = icmp slt i32 %i.0, %N, !taffo.info !20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %src_row, %N
  %add = add nsw i32 %mul, %i.0
  %idxprom = sext i32 %add to i64
  %arrayidx.flt.s6_26fixp = getelementptr inbounds float, float* %matrix, i64 %idxprom, !taffo.info !22, !taffo.initweight !24, !taffo.target !25
  %.flt1 = load float, float* %arrayidx.flt.s6_26fixp, align 4, !taffo.info !22, !taffo.initweight !26, !taffo.target !25
  %2 = fmul float 0x4190000000000000, %.flt1, !taffo.info !22, !taffo.target !25
  %.flt1.fallback.s6_26fixp = fptosi float %2 to i32, !taffo.info !22, !taffo.target !25
  %mul4 = mul nsw i32 %dest_row, %N
  %add5 = add nsw i32 %mul4, %i.0
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7.flt.s6_26fixp = getelementptr inbounds float, float* %matrix, i64 %idxprom6, !taffo.info !22, !taffo.initweight !24, !taffo.target !25
  %.flt = load float, float* %arrayidx7.flt.s6_26fixp, align 4, !taffo.info !22, !taffo.initweight !26, !taffo.target !25
  %3 = fmul float 0x4190000000000000, %.flt, !taffo.info !22, !taffo.target !25
  %.flt.fallback.s6_26fixp = fptosi float %3 to i32, !taffo.info !22, !taffo.target !25
  %4 = sext i32 %1 to i64, !taffo.info !22
  %5 = sext i32 %.flt1.fallback.s6_26fixp to i64, !taffo.info !22, !taffo.target !25
  %6 = mul i64 %4, %5, !taffo.info !36
  %7 = ashr i64 %6, 26
  %8 = trunc i64 %7 to i32
  %s6_26fixp = add i32 %8, %.flt.fallback.s6_26fixp, !taffo.info !22
  %9 = sitofp i32 %s6_26fixp to float, !taffo.info !22
  %10 = fdiv float %9, 0x4190000000000000, !taffo.info !22
  store float %10, float* %arrayidx7.flt.s6_26fixp, align 4, !taffo.info !27, !taffo.target !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !28, !taffo.constinfo !30
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @absolute(float noundef %x) #0 !taffo.initweight !24 !taffo.equivalentChild !43 !taffo.funinfo !44 {
entry:
  %0 = fmul float 0x4190000000000000, %x, !taffo.info !22
  %1 = fptosi float %0 to i32, !taffo.info !22
  %2 = fmul float 0x4190000000000000, %x, !taffo.info !22
  %3 = fptosi float %2 to i32, !taffo.info !22
  %4 = fmul float 0x4190000000000000, %x, !taffo.info !22
  %5 = fptosi float %4 to i32, !taffo.info !22
  %6 = lshr i32 0, 6
  %7 = icmp slt i32 %3, %6, !taffo.info !45
  br i1 %7, label %cond.true, label %cond.false, !taffo.info !27, !taffo.initweight !26

cond.true:                                        ; preds = %entry
  %fneg.s6_26fixp = sub i32 0, %5, !taffo.info !22
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.s6_26fixp = phi i32 [ %fneg.s6_26fixp, %cond.true ], [ %1, %cond.false ], !taffo.info !22
  %8 = sitofp i32 %cond.s6_26fixp to float, !taffo.info !22
  %9 = fdiv float %8, 0x4190000000000000, !taffo.info !22
  ret float %9, !taffo.info !27, !taffo.initweight !26
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @invert_matrix(i32 noundef %N, float* noundef %M_f, float* noundef %M_inv_f) #0 !taffo.start !16 !taffo.initweight !46 !taffo.funinfo !47 {
entry:
  %M.s18_14fixp = alloca [16 x i32], align 16, !taffo.info !48, !taffo.target !25
  %M_inv.s18_14fixp = alloca [16 x i32], align 16, !taffo.info !48, !taffo.target !51
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.info !20
  %cmp = icmp slt i32 %i.0, %N, !taffo.info !20
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !20
  %cmp4 = icmp slt i32 %j.0, %N, !taffo.info !20
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %mul = mul nsw i32 %i.0, %N
  %add = add nsw i32 %mul, %j.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds float, float* %M_f, i64 %idxprom
  %.flt = load float, float* %arrayidx, align 4, !taffo.info !22, !taffo.initweight !26, !taffo.target !25
  %0 = fmul float 0x4190000000000000, %.flt, !taffo.info !22, !taffo.target !25
  %.flt.fallback.s6_26fixp = fptosi float %0 to i32, !taffo.info !22, !taffo.target !25
  %mul6 = mul nsw i32 %i.0, %N
  %add7 = add nsw i32 %mul6, %j.0
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9.s18_14fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s18_14fixp, i64 0, i64 %idxprom8, !taffo.info !48, !taffo.target !25
  %1 = ashr i32 %.flt.fallback.s6_26fixp, 12, !taffo.info !22, !taffo.target !25
  store i32 %1, i32* %arrayidx9.s18_14fixp, align 4, !taffo.info !27, !taffo.target !25
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %inc = add nsw i32 %j.0, 1, !taffo.info !28, !taffo.constinfo !30
  br label %for.cond3, !llvm.loop !52

for.end:                                          ; preds = %for.cond3
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.info !28, !taffo.constinfo !30
  br label %for.cond, !llvm.loop !53

for.end12:                                        ; preds = %for.cond
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc29, %for.end12
  %i13.0 = phi i32 [ 0, %for.end12 ], [ %inc30, %for.inc29 ], !taffo.info !20
  %cmp15 = icmp slt i32 %i13.0, %N, !taffo.info !20
  br i1 %cmp15, label %for.body16, label %for.end31

for.body16:                                       ; preds = %for.cond14
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc26, %for.body16
  %j17.0 = phi i32 [ 0, %for.body16 ], [ %inc27, %for.inc26 ], !taffo.info !20
  %cmp19 = icmp slt i32 %j17.0, %N, !taffo.info !20
  br i1 %cmp19, label %for.body20, label %for.end28

for.body20:                                       ; preds = %for.cond18
  %cmp21 = icmp eq i32 %i13.0, %j17.0, !taffo.info !28
  %2 = lshr i32 0, 1
  %cond.u1_31fixp = select i1 %cmp21, i32 -2147483648, i32 %2, !taffo.info !54, !taffo.target !51
  %mul22 = mul nsw i32 %i13.0, %N
  %add23 = add nsw i32 %mul22, %j17.0
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25.s18_14fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M_inv.s18_14fixp, i64 0, i64 %idxprom24, !taffo.info !48, !taffo.target !51
  %3 = lshr i32 %cond.u1_31fixp, 17, !taffo.info !54, !taffo.target !51
  store i32 %3, i32* %arrayidx25.s18_14fixp, align 4, !taffo.info !27, !taffo.target !51
  br label %for.inc26

for.inc26:                                        ; preds = %for.body20
  %inc27 = add nsw i32 %j17.0, 1, !taffo.info !28, !taffo.constinfo !30
  br label %for.cond18, !llvm.loop !56

for.end28:                                        ; preds = %for.cond18
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %i13.0, 1, !taffo.info !28, !taffo.constinfo !30
  br label %for.cond14, !llvm.loop !57

for.end31:                                        ; preds = %for.cond14
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc82, %for.end31
  %pivot.0 = phi i32 [ 0, %for.end31 ], [ %inc83, %for.inc82 ], !taffo.info !20
  %cmp33 = icmp slt i32 %pivot.0, %N, !taffo.info !20
  br i1 %cmp33, label %for.body34, label %for.end84

for.body34:                                       ; preds = %for.cond32
  %add36 = add nsw i32 %pivot.0, 1, !taffo.info !28, !taffo.constinfo !30
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.body34
  %i35.0 = phi i32 [ %add36, %for.body34 ], [ %inc51, %for.inc50 ], !taffo.info !58
  %pivot_row.0 = phi i32 [ %pivot.0, %for.body34 ], [ %pivot_row.1, %for.inc50 ], !taffo.info !20
  %cmp38 = icmp slt i32 %i35.0, %N, !taffo.info !20
  br i1 %cmp38, label %for.body39, label %for.end52

for.body39:                                       ; preds = %for.cond37
  %mul40 = mul nsw i32 %i35.0, %N
  %add41 = add nsw i32 %mul40, %pivot.0
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43.s18_14fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s18_14fixp, i64 0, i64 %idxprom42, !taffo.info !48, !taffo.target !25
  %s18_14fixp3 = load i32, i32* %arrayidx43.s18_14fixp, align 4, !taffo.info !22, !taffo.target !25
  %4 = shl i32 %s18_14fixp3, 12, !taffo.info !22, !taffo.target !25
  %call.s6_26fixp = call i32 @absolute.5_s6_26fixp(i32 %4), !taffo.info !22, !taffo.target !60, !taffo.constinfo !30
  %mul44 = mul nsw i32 %pivot_row.0, %N
  %add45 = add nsw i32 %mul44, %pivot.0
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47.s18_14fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s18_14fixp, i64 0, i64 %idxprom46, !taffo.info !48, !taffo.target !25
  %s18_14fixp2 = load i32, i32* %arrayidx47.s18_14fixp, align 4, !taffo.info !22, !taffo.target !25
  %5 = shl i32 %s18_14fixp2, 12, !taffo.info !22, !taffo.target !25
  %call48.s6_26fixp = call i32 @absolute.5_s6_26fixp(i32 %5), !taffo.info !22, !taffo.target !60, !taffo.constinfo !30
  %6 = icmp sgt i32 %call.s6_26fixp, %call48.s6_26fixp, !taffo.info !45, !taffo.target !60
  br i1 %6, label %if.then, label %if.end, !taffo.info !27, !taffo.initweight !24, !taffo.target !60

if.then:                                          ; preds = %for.body39
  br label %if.end

if.end:                                           ; preds = %for.body39, %if.then
  %pivot_row.1 = phi i32 [ %i35.0, %if.then ], [ %pivot_row.0, %for.body39 ], !taffo.info !20
  br label %for.inc50

for.inc50:                                        ; preds = %if.end
  %inc51 = add nsw i32 %i35.0, 1, !taffo.info !61, !taffo.constinfo !30
  br label %for.cond37, !llvm.loop !63

for.end52:                                        ; preds = %for.cond37
  %cmp53 = icmp ne i32 %pivot_row.0, %pivot.0, !taffo.info !20
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %for.end52
  %arraydecay.s18_14fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s18_14fixp, i64 0, i64 0, !taffo.info !48, !taffo.target !25
  call void @swap_rows.1_fixp(i32* %arraydecay.s18_14fixp, i32 %pivot_row.0, i32 %pivot.0, i32 %N), !taffo.info !27, !taffo.target !25, !taffo.constinfo !64
  %arraydecay55.s18_14fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M_inv.s18_14fixp, i64 0, i64 0, !taffo.info !48, !taffo.target !51
  call void @swap_rows.1_fixp(i32* %arraydecay55.s18_14fixp, i32 %pivot_row.0, i32 %pivot.0, i32 %N), !taffo.info !27, !taffo.target !51, !taffo.constinfo !64
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %for.end52
  %mul58 = mul nsw i32 %pivot.0, %N
  %add59 = add nsw i32 %mul58, %pivot.0
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61.s18_14fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s18_14fixp, i64 0, i64 %idxprom60, !taffo.info !48, !taffo.target !25
  %s18_14fixp1 = load i32, i32* %arrayidx61.s18_14fixp, align 4, !taffo.info !22, !taffo.target !25
  %arraydecay62.s18_14fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s18_14fixp, i64 0, i64 0, !taffo.info !48, !taffo.target !25
  %7 = zext i32 -2147483648 to i64
  %8 = shl i64 %7, 9
  %9 = sext i32 %s18_14fixp1 to i64, !taffo.info !22, !taffo.target !25
  %10 = sdiv i64 %8, %9, !taffo.info !65, !taffo.target !25, !taffo.constinfo !67
  %div.s6_26fixp = trunc i64 %10 to i32, !taffo.info !68, !taffo.target !25
  call void @scale_row.7_fixp(i32* %arraydecay62.s18_14fixp, i32 %pivot.0, i32 %N, i32 %div.s6_26fixp), !taffo.info !27, !taffo.target !25, !taffo.constinfo !64
  %arraydecay63.s18_14fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M_inv.s18_14fixp, i64 0, i64 0, !taffo.info !48, !taffo.target !51
  %11 = zext i32 -2147483648 to i64
  %12 = shl i64 %11, 9
  %13 = sext i32 %s18_14fixp1 to i64, !taffo.info !22, !taffo.target !25
  %14 = sdiv i64 %12, %13, !taffo.info !65, !taffo.target !25, !taffo.constinfo !67
  %div64.s6_26fixp = trunc i64 %14 to i32, !taffo.info !68, !taffo.target !25
  call void @scale_row.7_fixp(i32* %arraydecay63.s18_14fixp, i32 %pivot.0, i32 %N, i32 %div64.s6_26fixp), !taffo.info !27, !taffo.target !51, !taffo.constinfo !64
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc79, %if.end56
  %i65.0 = phi i32 [ 0, %if.end56 ], [ %inc80, %for.inc79 ], !taffo.info !20
  %cmp67 = icmp slt i32 %i65.0, %N, !taffo.info !20
  br i1 %cmp67, label %for.body68, label %for.end81

for.body68:                                       ; preds = %for.cond66
  %cmp69 = icmp ne i32 %i65.0, %pivot.0, !taffo.info !69
  br i1 %cmp69, label %if.then70, label %if.end78

if.then70:                                        ; preds = %for.body68
  %mul72 = mul nsw i32 %i65.0, %N
  %add73 = add nsw i32 %mul72, %pivot.0
  %idxprom74 = sext i32 %add73 to i64
  %arrayidx75.s18_14fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s18_14fixp, i64 0, i64 %idxprom74, !taffo.info !48, !taffo.target !25
  %s18_14fixp = load i32, i32* %arrayidx75.s18_14fixp, align 4, !taffo.info !71, !taffo.target !25
  %15 = shl i32 %s18_14fixp, 8, !taffo.info !71, !taffo.target !25
  %fneg.s10_22fixp = sub i32 0, %15, !taffo.info !74, !taffo.target !25
  %arraydecay76.s18_14fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M.s18_14fixp, i64 0, i64 0, !taffo.info !48, !taffo.target !25
  call void @add_scaled_row.3_fixp(i32* %arraydecay76.s18_14fixp, i32 %i65.0, i32 %pivot.0, i32 %N, i32 %fneg.s10_22fixp), !taffo.info !27, !taffo.target !25, !taffo.constinfo !75
  %arraydecay77.s18_14fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M_inv.s18_14fixp, i64 0, i64 0, !taffo.info !48, !taffo.target !51
  call void @add_scaled_row.3_fixp(i32* %arraydecay77.s18_14fixp, i32 %i65.0, i32 %pivot.0, i32 %N, i32 %fneg.s10_22fixp), !taffo.info !27, !taffo.target !51, !taffo.constinfo !75
  br label %if.end78

if.end78:                                         ; preds = %if.then70, %for.body68
  br label %for.inc79

for.inc79:                                        ; preds = %if.end78
  %inc80 = add nsw i32 %i65.0, 1, !taffo.info !28, !taffo.constinfo !30
  br label %for.cond66, !llvm.loop !76

for.end81:                                        ; preds = %for.cond66
  br label %for.inc82

for.inc82:                                        ; preds = %for.end81
  %inc83 = add nsw i32 %pivot.0, 1, !taffo.info !28, !taffo.constinfo !30
  br label %for.cond32, !llvm.loop !77

for.end84:                                        ; preds = %for.cond32
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc104, %for.end84
  %i85.0 = phi i32 [ 0, %for.end84 ], [ %inc105, %for.inc104 ], !taffo.info !20
  %cmp87 = icmp slt i32 %i85.0, %N, !taffo.info !20
  br i1 %cmp87, label %for.body88, label %for.end106

for.body88:                                       ; preds = %for.cond86
  br label %for.cond90

for.cond90:                                       ; preds = %for.inc101, %for.body88
  %j89.0 = phi i32 [ 0, %for.body88 ], [ %inc102, %for.inc101 ], !taffo.info !20
  %cmp91 = icmp slt i32 %j89.0, %N, !taffo.info !20
  br i1 %cmp91, label %for.body92, label %for.end103

for.body92:                                       ; preds = %for.cond90
  %mul93 = mul nsw i32 %i85.0, %N
  %add94 = add nsw i32 %mul93, %j89.0
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96.s18_14fixp = getelementptr inbounds [16 x i32], [16 x i32]* %M_inv.s18_14fixp, i64 0, i64 %idxprom95, !taffo.info !48, !taffo.target !51
  %s18_14fixp4 = load i32, i32* %arrayidx96.s18_14fixp, align 4, !taffo.info !48, !taffo.target !51
  %16 = sitofp i32 %s18_14fixp4 to float, !taffo.info !48, !taffo.target !51
  %17 = fdiv float %16, 1.638400e+04, !taffo.info !48, !taffo.target !51
  %mul97 = mul nsw i32 %i85.0, %N
  %add98 = add nsw i32 %mul97, %j89.0
  %idxprom99 = sext i32 %add98 to i64
  %arrayidx100 = getelementptr inbounds float, float* %M_inv_f, i64 %idxprom99
  store float %17, float* %arrayidx100, align 4, !taffo.info !27, !taffo.target !51
  br label %for.inc101

for.inc101:                                       ; preds = %for.body92
  %inc102 = add nsw i32 %j89.0, 1, !taffo.info !28, !taffo.constinfo !30
  br label %for.cond90, !llvm.loop !78

for.end103:                                       ; preds = %for.cond90
  br label %for.inc104

for.inc104:                                       ; preds = %for.end103
  %inc105 = add nsw i32 %i85.0, 1, !taffo.info !28, !taffo.constinfo !30
  br label %for.cond86, !llvm.loop !79

for.end106:                                       ; preds = %for.cond86
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !80 !taffo.funinfo !80 {
entry:
  %M = alloca [16 x float], align 16
  %M_inv = alloca [16 x float], align 16
  %0 = bitcast [16 x float]* %M to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([16 x float]* @__const.main.M to i8*), i64 64, i1 false), !taffo.constinfo !64
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc7, %for.inc6 ]
  %cmp = icmp slt i32 %i.0, 4
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 %i.0, 4, !taffo.constinfo !30
  %add = add nsw i32 %mul, %j.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds [16 x float], [16 x float]* %M, i64 0, i64 %idxprom
  %1 = load float, float* %arrayidx, align 4
  %conv = fpext float %1 to double
  %call4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), double noundef %conv), !taffo.constinfo !81
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !30
  br label %for.cond1, !llvm.loop !82

for.end:                                          ; preds = %for.cond1
  %call5 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)), !taffo.constinfo !30
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %inc7 = add nsw i32 %i.0, 1, !taffo.constinfo !30
  br label %for.cond, !llvm.loop !83

for.end8:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [16 x float], [16 x float]* %M, i64 0, i64 0
  %arraydecay9 = getelementptr inbounds [16 x float], [16 x float]* %M_inv, i64 0, i64 0
  call void @invert_matrix(i32 noundef 4, float* noundef %arraydecay, float* noundef %arraydecay9), !taffo.constinfo !84
  %call10 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0)), !taffo.constinfo !30
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc31, %for.end8
  %i11.0 = phi i32 [ 0, %for.end8 ], [ %inc32, %for.inc31 ]
  %cmp13 = icmp slt i32 %i11.0, 4
  br i1 %cmp13, label %for.body15, label %for.end33

for.body15:                                       ; preds = %for.cond12
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc27, %for.body15
  %j16.0 = phi i32 [ 0, %for.body15 ], [ %inc28, %for.inc27 ]
  %cmp18 = icmp slt i32 %j16.0, 4
  br i1 %cmp18, label %for.body20, label %for.end29

for.body20:                                       ; preds = %for.cond17
  %mul21 = mul nsw i32 %i11.0, 4, !taffo.constinfo !30
  %add22 = add nsw i32 %mul21, %j16.0
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [16 x float], [16 x float]* %M_inv, i64 0, i64 %idxprom23
  %2 = load float, float* %arrayidx24, align 4
  %conv25 = fpext float %2 to double
  %call26 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), double noundef %conv25), !taffo.constinfo !81
  br label %for.inc27

for.inc27:                                        ; preds = %for.body20
  %inc28 = add nsw i32 %j16.0, 1, !taffo.constinfo !30
  br label %for.cond17, !llvm.loop !85

for.end29:                                        ; preds = %for.cond17
  %call30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)), !taffo.constinfo !30
  br label %for.inc31

for.inc31:                                        ; preds = %for.end29
  %inc32 = add nsw i32 %i11.0, 1, !taffo.constinfo !30
  br label %for.cond12, !llvm.loop !86

for.end33:                                        ; preds = %for.cond12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare !taffo.initweight !17 !taffo.funinfo !19 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare !taffo.initweight !87 !taffo.funinfo !88 i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @swap_rows.1_fixp(i32* noundef %matrix.s18_14fixp, i32 noundef %row1, i32 noundef %row2, i32 noundef %N) #0 !taffo.start !16 !taffo.initweight !89 !taffo.funinfo !90 !taffo.sourceFunction !91 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !20
  %cmp = icmp slt i32 %i.0, %N, !taffo.info !20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %row1, %N
  %add = add nsw i32 %mul, %i.0
  %idxprom = sext i32 %add to i64
  %arrayidx.s18_14fixp = getelementptr inbounds i32, i32* %matrix.s18_14fixp, i64 %idxprom, !taffo.info !48, !taffo.target !25
  %s18_14fixp = load i32, i32* %arrayidx.s18_14fixp, align 4, !taffo.info !22, !taffo.target !25
  %mul3 = mul nsw i32 %row2, %N
  %add4 = add nsw i32 %mul3, %i.0
  %idxprom5 = sext i32 %add4 to i64
  %arrayidx6.s18_14fixp = getelementptr inbounds i32, i32* %matrix.s18_14fixp, i64 %idxprom5, !taffo.info !48, !taffo.target !25
  %s18_14fixp1 = load i32, i32* %arrayidx6.s18_14fixp, align 4, !taffo.info !22, !taffo.target !25
  %mul7 = mul nsw i32 %row1, %N
  %add8 = add nsw i32 %mul7, %i.0
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10.s18_14fixp = getelementptr inbounds i32, i32* %matrix.s18_14fixp, i64 %idxprom9, !taffo.info !48, !taffo.target !25
  store i32 %s18_14fixp1, i32* %arrayidx10.s18_14fixp, align 4, !taffo.info !27, !taffo.target !25
  %mul11 = mul nsw i32 %row2, %N
  %add12 = add nsw i32 %mul11, %i.0
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14.s18_14fixp = getelementptr inbounds i32, i32* %matrix.s18_14fixp, i64 %idxprom13, !taffo.info !48, !taffo.target !25
  store i32 %s18_14fixp, i32* %arrayidx14.s18_14fixp, align 4, !taffo.info !27
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !28, !taffo.constinfo !30
  br label %for.cond, !llvm.loop !92

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @absolute.5_s6_26fixp(i32 noundef %x.s6_26fixp) #0 !taffo.initweight !26 !taffo.funinfo !44 !taffo.sourceFunction !93 {
entry:
  %0 = lshr i32 0, 6
  %1 = icmp slt i32 %x.s6_26fixp, %0, !taffo.info !45
  br i1 %1, label %cond.true, label %cond.false, !taffo.info !27, !taffo.initweight !26

cond.true:                                        ; preds = %entry
  %fneg.s6_26fixp = sub i32 0, %x.s6_26fixp, !taffo.info !22
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.s6_26fixp = phi i32 [ %fneg.s6_26fixp, %cond.true ], [ %x.s6_26fixp, %cond.false ], !taffo.info !22
  ret i32 %cond.s6_26fixp, !taffo.info !27, !taffo.initweight !26
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_scaled_row.3_fixp(i32* noundef %matrix.s18_14fixp, i32 noundef %dest_row, i32 noundef %src_row, i32 noundef %N, i32 noundef %scalar.s10_22fixp) #0 !taffo.start !16 !taffo.initweight !94 !taffo.funinfo !95 !taffo.sourceFunction !96 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !20
  %cmp = icmp slt i32 %i.0, %N, !taffo.info !20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %src_row, %N
  %add = add nsw i32 %mul, %i.0
  %idxprom = sext i32 %add to i64
  %arrayidx.s18_14fixp = getelementptr inbounds i32, i32* %matrix.s18_14fixp, i64 %idxprom, !taffo.info !48, !taffo.target !25
  %s18_14fixp = load i32, i32* %arrayidx.s18_14fixp, align 4, !taffo.info !71, !taffo.target !25
  %mul4 = mul nsw i32 %dest_row, %N
  %add5 = add nsw i32 %mul4, %i.0
  %idxprom6 = sext i32 %add5 to i64
  %arrayidx7.s18_14fixp = getelementptr inbounds i32, i32* %matrix.s18_14fixp, i64 %idxprom6, !taffo.info !48, !taffo.target !25
  %s18_14fixp1 = load i32, i32* %arrayidx7.s18_14fixp, align 4, !taffo.info !71, !taffo.target !25
  %0 = sext i32 %scalar.s10_22fixp to i64, !taffo.info !74
  %1 = sext i32 %s18_14fixp to i64, !taffo.info !71, !taffo.target !25
  %2 = mul i64 %0, %1, !taffo.info !97
  %3 = ashr i64 %2, 22
  %4 = trunc i64 %3 to i32
  %s18_14fixp2 = add i32 %4, %s18_14fixp1, !taffo.info !48
  store i32 %s18_14fixp2, i32* %arrayidx7.s18_14fixp, align 4, !taffo.info !27, !taffo.target !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !28, !taffo.constinfo !30
  br label %for.cond, !llvm.loop !99

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @scale_row.7_fixp(i32* noundef %matrix.s18_14fixp, i32 noundef %row, i32 noundef %N, i32 noundef %scalar.s6_26fixp) #0 !taffo.start !16 !taffo.initweight !100 !taffo.funinfo !101 !taffo.sourceFunction !102 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !20
  %cmp = icmp slt i32 %i.0, %N, !taffo.info !20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %row, %N
  %add = add nsw i32 %mul, %i.0
  %idxprom = sext i32 %add to i64
  %arrayidx.s18_14fixp = getelementptr inbounds i32, i32* %matrix.s18_14fixp, i64 %idxprom, !taffo.info !48, !taffo.target !25
  %s18_14fixp = load i32, i32* %arrayidx.s18_14fixp, align 4, !taffo.info !22, !taffo.target !25
  %0 = sext i32 %s18_14fixp to i64, !taffo.info !22, !taffo.target !25
  %1 = sext i32 %scalar.s6_26fixp to i64, !taffo.info !68
  %2 = mul i64 %0, %1, !taffo.info !103
  %3 = ashr i64 %2, 18, !taffo.info !103
  %mul3.s10_22fixp = trunc i64 %3 to i32, !taffo.info !71
  %4 = ashr i32 %mul3.s10_22fixp, 8, !taffo.info !71
  store i32 %4, i32* %arrayidx.s18_14fixp, align 4, !taffo.info !27, !taffo.target !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !28, !taffo.constinfo !30
  br label %for.cond, !llvm.loop !105

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.160000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double -1.600000e+01, double 1.600000e+01}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.200000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.020000e+02}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 1.000000e+01}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 15.0.7"}
!16 = !{i1 true}
!17 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!18 = distinct !{null, null}
!19 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!20 = !{i1 false, !21, i1 false, i2 0}
!21 = !{double 0.000000e+00, double 1.000000e+00}
!22 = !{!23, !3, i1 false, i2 1}
!23 = !{!"fixp", i32 -32, i32 26}
!24 = !{i32 2}
!25 = !{!"matrix"}
!26 = !{i32 3}
!27 = !{i1 false, !3, i1 false, i2 1}
!28 = !{i1 false, !29, i1 false, i2 0}
!29 = !{double 1.000000e+00, double 1.000000e+00}
!30 = !{i1 false, i1 false}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{i32 -1, i32 -1, i32 -1, i32 2}
!34 = distinct !{null, null}
!35 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 1, !22}
!36 = !{!37, !3, i1 false, i2 1}
!37 = !{!"fixp", i32 -64, i32 52}
!38 = distinct !{!38, !32}
!39 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 2}
!40 = distinct !{null, null}
!41 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 1, !22}
!42 = distinct !{!42, !32}
!43 = distinct !{null, null}
!44 = !{i32 1, !22}
!45 = !{!23, i1 false, i1 false, i2 1}
!46 = !{i32 -1, i32 -1, i32 -1}
!47 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!48 = !{!49, !50, i1 false, i2 1}
!49 = !{!"fixp", i32 -32, i32 14}
!50 = !{double -6.579200e+04, double 6.579200e+04}
!51 = !{!"inverse_matrix"}
!52 = distinct !{!52, !32}
!53 = distinct !{!53, !32}
!54 = !{!55, !21, i1 false, i2 1}
!55 = !{!"fixp", i32 32, i32 31}
!56 = distinct !{!56, !32}
!57 = distinct !{!57, !32}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 1.000000e+00, double 2.000000e+00}
!60 = !{!"abs_res"}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 2.000000e+00, double 2.000000e+00}
!63 = distinct !{!63, !32}
!64 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!65 = !{!66, !3, i1 false, i2 -1}
!66 = !{!"fixp", i32 -64, i32 26}
!67 = !{!28, i1 false}
!68 = !{!23, !3, i1 false, i2 -1}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 0.000000e+00, double 0.000000e+00}
!71 = !{!72, !73, i1 false, i2 1}
!72 = !{!"fixp", i32 -32, i32 22}
!73 = !{double -2.560000e+02, double 2.560000e+02}
!74 = !{!72, !73, i1 false, i2 -1}
!75 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!76 = distinct !{!76, !32}
!77 = distinct !{!77, !32}
!78 = distinct !{!78, !32}
!79 = distinct !{!79, !32}
!80 = !{}
!81 = !{i1 false, i1 false, i1 false}
!82 = distinct !{!82, !32}
!83 = distinct !{!83, !32}
!84 = !{i1 false, i1 false, i1 false, i1 false}
!85 = distinct !{!85, !32}
!86 = distinct !{!86, !32}
!87 = !{i32 -1}
!88 = !{i32 0, i1 false}
!89 = !{i32 2, i32 -1, i32 -1, i32 -1}
!90 = !{i32 1, !48, i32 1, !20, i32 1, !69, i32 0, i1 false}
!91 = !{void (float*, i32, i32, i32)* @swap_rows}
!92 = distinct !{!92, !32}
!93 = !{float (float)* @absolute}
!94 = !{i32 2, i32 -1, i32 -1, i32 -1, i32 2}
!95 = !{i32 1, !48, i32 1, !69, i32 1, !69, i32 0, i1 false, i32 1, !74}
!96 = !{void (float*, i32, i32, i32, float)* @add_scaled_row}
!97 = !{!98, !50, i1 false, i2 1}
!98 = !{!"fixp", i32 -64, i32 36}
!99 = distinct !{!99, !32}
!100 = !{i32 2, i32 -1, i32 -1, i32 3}
!101 = !{i32 1, !48, i32 1, !69, i32 0, i1 false, i32 1, !68}
!102 = !{void (float*, i32, i32, float)* @scale_row}
!103 = !{!104, !73, i1 false, i2 1}
!104 = !{!"fixp", i32 -64, i32 40}
!105 = distinct !{!105, !32}
