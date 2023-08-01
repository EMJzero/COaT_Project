; ModuleID = '/tmp/tmp.C7buuI8Mpe/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Complex = type { float, float }

@output = internal global %struct._IO_FILE* null, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"FFT: %d: %.4f+i*%.4f\0A\00", align 1, !taffo.info !0
@.str.9 = private unnamed_addr constant [26 x i8] c"Fuck it: %d: %.4f+i*%.4f\0A\00", align 1, !taffo.info !2
@.str.10 = private unnamed_addr constant [43 x i8] c"Operands %d: %.4f, %.4f, %.4f, %.4f, %.4f\0A\00", align 1, !taffo.info !4
@.str.11 = private unnamed_addr constant [29 x i8] c"Double check %d: %.4f, %.4f\0A\00", align 1, !taffo.info !2
@.str.12 = private unnamed_addr constant [33 x i8] c"Transformation: %d: %.4f+i*%.4f\0A\00", align 1, !taffo.info !6
@.str.15 = private unnamed_addr constant [26 x i8] c"Wrapper: %d: %.4f+i*%.4f\0A\00", align 1, !taffo.info !8
@.str.16 = private unnamed_addr constant [29 x i8] c"Error: missing output file.\0A\00", align 1, !taffo.info !2
@.str.17 = private unnamed_addr constant [3 x i8] c"w+\00", align 1, !taffo.info !10
@x_real = internal global float* null, align 8
@x_imag = internal global float* null, align 8
@f_real = internal global float* null, align 8
@f_imag = internal global float* null, align 8
@indices = internal global i32* null, align 8
@.str.18 = private unnamed_addr constant [53 x i8] c"cannot allocate memory for the triangle coordinates\0A\00", align 1, !taffo.info !12
@.str.19 = private unnamed_addr constant [25 x i8] c"Element %d: %.4f+i*%.4f\0A\00", align 1, !taffo.info !6
@.str.20 = private unnamed_addr constant [15 x i8] c"%.4f %.4f, %d\0A\00", align 1, !taffo.info !14

; Function Attrs: noinline nounwind uwtable
define dso_local void @fftSinCos(float noundef %x, float* noundef %s, float* noundef %c) #0 !taffo.initweight !22 !taffo.equivalentChild !23 !taffo.funinfo !24 {
entry:
  %0 = fmul float 0x41E0000000000000, %x, !taffo.info !25
  %conv5.u1_31fixp = fptoui float %0 to i32, !taffo.info !25
  %1 = fmul float 0x41E0000000000000, %x, !taffo.info !25
  %conv.u1_31fixp = fptoui float %1 to i32, !taffo.info !25
  %2 = sext i32 -1686629714 to i64
  %3 = zext i32 %conv.u1_31fixp to i64, !taffo.info !25
  %4 = mul i64 %2, %3, !taffo.info !28, !taffo.constinfo !30
  %5 = lshr i64 %4, 28, !taffo.info !28, !taffo.constinfo !30
  %mul.u1_31fixp = trunc i64 %5 to i32, !taffo.info !25
  %6 = uitofp i32 %mul.u1_31fixp to double, !taffo.info !25
  %7 = fdiv double %6, 0x41E0000000000000, !taffo.info !25
  %call.flt = call double @sin(double noundef %7) #5, !taffo.info !25, !taffo.initweight !33, !taffo.constinfo !34
  %8 = fmul double 0x41E0000000000000, %call.flt, !taffo.info !25, !taffo.constinfo !34
  %call.flt.fallback.u1_31fixp = fptoui double %8 to i32, !taffo.info !25
  %9 = uitofp i32 %call.flt.fallback.u1_31fixp to float, !taffo.info !25
  %10 = fdiv float %9, 0x41E0000000000000, !taffo.info !25
  store float %10, float* %s, align 4, !taffo.info !35
  %11 = sext i32 -1686629714 to i64
  %12 = zext i32 %conv5.u1_31fixp to i64, !taffo.info !25
  %13 = mul i64 %11, %12, !taffo.info !28, !taffo.constinfo !30
  %14 = lshr i64 %13, 28, !taffo.info !28, !taffo.constinfo !30
  %mul6.u1_31fixp = trunc i64 %14 to i32, !taffo.info !25
  %15 = uitofp i32 %mul6.u1_31fixp to double, !taffo.info !25
  %16 = fdiv double %15, 0x41E0000000000000, !taffo.info !25
  %call7.flt = call double @cos(double noundef %16) #5, !taffo.info !25, !taffo.initweight !33, !taffo.constinfo !34
  %17 = fmul double 0x41E0000000000000, %call7.flt, !taffo.info !25, !taffo.constinfo !34
  %call7.flt.fallback.u1_31fixp = fptoui double %17 to i32, !taffo.info !25
  %18 = uitofp i32 %call7.flt.fallback.u1_31fixp to float, !taffo.info !25
  %19 = fdiv float %18, 0x41E0000000000000, !taffo.info !25
  store float %19, float* %c, align 4, !taffo.info !35
  ret void
}

; Function Attrs: nounwind
declare !taffo.initweight !37 !taffo.funinfo !38 double @sin(double noundef) #1

; Function Attrs: nounwind
declare !taffo.initweight !37 !taffo.funinfo !38 double @cos(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local float @manual_log2(float noundef %x) #0 !taffo.initweight !37 !taffo.funinfo !39 {
entry:
  %cmp = fcmp ole float %x, 0.000000e+00, !taffo.info !42
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %exponent.0 = phi i32 [ 0, %if.end ], [ %inc, %while.body ], !taffo.info !44
  %x.addr.0 = phi float [ %x, %if.end ], [ %div, %while.body ], !taffo.info !45
  %cmp1 = fcmp oge float %x.addr.0, 2.000000e+00, !taffo.info !47
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %div = fdiv float %x.addr.0, 2.000000e+00, !taffo.info !49, !taffo.constinfo !51
  %inc = add nsw i32 %exponent.0, 1, !taffo.info !47, !taffo.constinfo !34
  br label %while.cond, !llvm.loop !54

while.end:                                        ; preds = %while.cond
  %sub = fsub float %x.addr.0, 1.000000e+00, !taffo.info !56, !taffo.constinfo !58
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %i.0 = phi i32 [ 0, %while.end ], [ %inc7, %for.inc ], !taffo.info !59
  %power_of_two.0 = phi float [ 5.000000e-01, %while.end ], [ %mul, %for.inc ], !taffo.info !61
  %fraction.0 = phi float [ %sub, %while.end ], [ %fraction.1, %for.inc ], !taffo.info !63
  %cmp2 = icmp slt i32 %i.0, 23, !taffo.info !44
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %cmp3 = fcmp oge float %fraction.0, %power_of_two.0, !taffo.info !44
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %for.body
  %sub5 = fsub float %fraction.0, %power_of_two.0, !taffo.info !65
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %for.body
  %fraction.1 = phi float [ %sub5, %if.then4 ], [ %fraction.0, %for.body ], !taffo.info !63
  %mul = fmul float %power_of_two.0, 5.000000e-01, !taffo.info !67, !taffo.constinfo !69
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %inc7 = add nsw i32 %i.0, 1, !taffo.info !72, !taffo.constinfo !34
  br label %for.cond, !llvm.loop !74

for.end:                                          ; preds = %for.cond
  %conv = sitofp i32 %exponent.0 to float, !taffo.info !44
  %add8 = fadd float %conv, undef, !taffo.info !75
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi float [ 0.000000e+00, %if.then ], [ %add8, %for.end ], !taffo.info !75
  ret float %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @calcFftIndices(i32* noundef %indices) #0 !taffo.initweight !37 !taffo.equivalentChild !77 !taffo.funinfo !38 {
entry:
  %call = call float @manual_log2(float noundef 1.600000e+01), !taffo.constinfo !78
  %conv = fptosi float %call to i32
  %arrayidx = getelementptr inbounds i32, i32* %indices, i64 0
  store i32 0, i32* %arrayidx, align 4, !taffo.constinfo !34
  %sub = sub nsw i32 %conv, 1, !taffo.constinfo !34
  %shl = shl i32 1, %sub, !taffo.constinfo !34
  %arrayidx1 = getelementptr inbounds i32, i32* %indices, i64 1
  store i32 %shl, i32* %arrayidx1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc19, %for.inc18 ]
  %cmp = icmp slt i32 %i.0, %conv
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  %shl3 = shl i32 1, %i.0, !taffo.constinfo !34
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ %shl3, %for.body ], [ %inc, %for.inc ]
  %add = add nsw i32 %i.0, 1, !taffo.constinfo !34
  %shl5 = shl i32 1, %add, !taffo.constinfo !34
  %cmp6 = icmp slt i32 %j.0, %shl5
  br i1 %cmp6, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond4
  %shl9 = shl i32 1, %i.0, !taffo.constinfo !34
  %sub10 = sub nsw i32 %j.0, %shl9
  %idxprom = sext i32 %sub10 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %indices, i64 %idxprom
  %0 = load i32, i32* %arrayidx11, align 4
  %add12 = add nsw i32 %i.0, 1, !taffo.constinfo !34
  %sub13 = sub nsw i32 %conv, %add12
  %shl14 = shl i32 1, %sub13, !taffo.constinfo !34
  %add15 = add nsw i32 %0, %shl14
  %idxprom16 = sext i32 %j.0 to i64
  %arrayidx17 = getelementptr inbounds i32, i32* %indices, i64 %idxprom16
  store i32 %add15, i32* %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !34
  br label %for.cond4, !llvm.loop !79

for.end:                                          ; preds = %for.cond4
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %inc19 = add nsw i32 %i.0, 1, !taffo.constinfo !34
  br label %for.cond, !llvm.loop !80

for.end20:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @radix2DitCooleyTykeyFft(i32* noundef %indices, %struct.Complex* noundef %x, %struct.Complex* noundef %f) #0 !taffo.initweight !81 !taffo.equivalentChild !82 !taffo.funinfo !83 !taffo.start !84 {
entry:
  %fftSin.s2_30fixp = alloca i32, align 4, !taffo.info !85
  %fftCos.s2_30fixp = alloca i32, align 4, !taffo.info !85
  %0 = alloca { i32, i32 }, align 4
  call void @calcFftIndices.1(i32* noundef %indices), !taffo.info !87, !taffo.initweight !89, !taffo.constinfo !34, !taffo.originalCall !90
  %add = add nsw i32 0, 1, !taffo.info !47, !taffo.constinfo !34
  %shl = shl i32 1, %add, !taffo.info !52, !taffo.constinfo !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc223, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc224, %for.inc223 ], !taffo.info !44
  %N.0 = phi i32 [ %shl, %entry ], [ %shl226, %for.inc223 ], !taffo.info !91
  %cmp = icmp sle i32 %N.0, 16, !taffo.info !47
  br i1 %cmp, label %for.body, label %for.end227

for.body:                                         ; preds = %for.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom = sext i32 %i.0 to i64, !taffo.info !42
  %arrayidx.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %real = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %2 = load float, float* %real, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv = fpext float %2 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %idxprom9 = sext i32 %i.0 to i64, !taffo.info !42
  %arrayidx10.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom9, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %imag = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx10.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %3 = load float, float* %imag, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv11 = fpext float %3 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef %i.0, double noundef %conv, double noundef %conv11), !taffo.info !94, !taffo.initweight !98, !taffo.constinfo !99, !taffo.target !95
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc220, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %add221, %for.inc220 ], !taffo.info !100
  %cmp13 = icmp slt i32 %j.0, 16, !taffo.info !47
  br i1 %cmp13, label %for.body15, label %for.end222

for.body15:                                       ; preds = %for.cond12
  %shr = ashr i32 %N.0, 1, !taffo.info !47, !taffo.constinfo !34
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc217, %for.body15
  %k.0 = phi i32 [ 0, %for.body15 ], [ %inc218, %for.inc217 ], !taffo.info !87, !taffo.initweight !102
  %cmp17 = icmp slt i32 %k.0, %shr, !taffo.info !103, !taffo.initweight !89
  br i1 %cmp17, label %for.body19, label %for.end219, !taffo.info !87, !taffo.initweight !96

for.body19:                                       ; preds = %for.cond16
  %conv20 = sitofp i32 %k.0 to float, !taffo.info !87, !taffo.initweight !89
  %conv21 = sitofp i32 %N.0 to float, !taffo.info !52
  %div = fdiv float %conv20, %conv21, !taffo.info !104, !taffo.initweight !96
  %add22 = add nsw i32 %j.0, %k.0, !taffo.info !87, !taffo.initweight !89
  %add23 = add nsw i32 %j.0, %shr, !taffo.info !47
  %add24 = add nsw i32 %add23, %k.0, !taffo.info !106, !taffo.initweight !89
  %4 = fmul float 1.024000e+03, %div, !taffo.info !104
  %5 = fptoui float %4 to i32, !taffo.info !104
  call void @fftSinCos.2_fixp(i32 %5, i32* %fftSin.s2_30fixp, i32* %fftCos.s2_30fixp), !taffo.info !94, !taffo.constinfo !108
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc, %for.body19
  %i25.0 = phi i32 [ 0, %for.body19 ], [ %inc, %for.inc ], !taffo.info !109
  %cmp27 = icmp slt i32 %i25.0, 16, !taffo.info !44
  br i1 %cmp27, label %for.body29, label %for.end

for.body29:                                       ; preds = %for.cond26
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom30 = sext i32 %i25.0 to i64, !taffo.info !111
  %arrayidx31.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom30, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %real32 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx31.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %7 = load float, float* %real32, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv33 = fpext float %7 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %idxprom34 = sext i32 %i25.0 to i64, !taffo.info !111
  %arrayidx35.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom34, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %imag36 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx35.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %8 = load float, float* %imag36, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv37 = fpext float %8 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 noundef %i25.0, double noundef %conv33, double noundef %conv37), !taffo.info !94, !taffo.initweight !98, !taffo.constinfo !99, !taffo.target !95
  br label %for.inc

for.inc:                                          ; preds = %for.body29
  %inc = add nsw i32 %i25.0, 1, !taffo.info !113, !taffo.constinfo !34
  br label %for.cond26, !llvm.loop !115

for.end:                                          ; preds = %for.cond26
  %idxprom39 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx40 = getelementptr inbounds i32, i32* %indices, i64 %idxprom39, !taffo.info !87, !taffo.initweight !89
  %9 = load i32, i32* %arrayidx40, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom41 = sext i32 %9 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx42.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom41, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %real43 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx42.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %10 = load float, float* %real43, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %11 = fmul float 1.310720e+05, %10, !taffo.info !94, !taffo.target !95
  %12 = fptosi float %11 to i32, !taffo.info !94, !taffo.target !95
  %real44.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0, !taffo.info !117
  store i32 %12, i32* %real44.s15_17fixp, align 4, !taffo.info !120
  %idxprom45 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx46 = getelementptr inbounds i32, i32* %indices, i64 %idxprom45, !taffo.info !87, !taffo.initweight !89
  %13 = load i32, i32* %arrayidx46, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom47 = sext i32 %13 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx48.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom47, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %imag49 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx48.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %14 = load float, float* %imag49, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %15 = fmul float 1.310720e+05, %14, !taffo.info !94, !taffo.target !95
  %16 = fptosi float %15 to i32, !taffo.info !94, !taffo.target !95
  %imag50.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1, !taffo.info !117
  store i32 %16, i32* %imag50.s15_17fixp, align 4, !taffo.info !120
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom51 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx52 = getelementptr inbounds i32, i32* %indices, i64 %idxprom51, !taffo.info !87, !taffo.initweight !89
  %18 = load i32, i32* %arrayidx52, align 4, !taffo.info !87, !taffo.initweight !96
  %real53.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0, !taffo.info !117
  %s15_17fixp16 = load i32, i32* %real53.s15_17fixp, align 4, !taffo.info !117
  %19 = sitofp i32 %s15_17fixp16 to double, !taffo.info !117
  %20 = fdiv double %19, 1.310720e+05, !taffo.info !117
  %idxprom55 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx56 = getelementptr inbounds i32, i32* %indices, i64 %idxprom55, !taffo.info !87, !taffo.initweight !89
  %21 = load i32, i32* %arrayidx56, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom57 = sext i32 %21 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx58.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom57, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %real59 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx58.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %22 = load float, float* %real59, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv60 = fpext float %22 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %s2_30fixp5 = load i32, i32* %fftCos.s2_30fixp, align 4, !taffo.info !85
  %23 = sitofp i32 %s2_30fixp5 to double, !taffo.info !85
  %24 = fdiv double %23, 0x41D0000000000000, !taffo.info !85
  %idxprom62 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx63 = getelementptr inbounds i32, i32* %indices, i64 %idxprom62, !taffo.info !87, !taffo.initweight !89
  %25 = load i32, i32* %arrayidx63, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom64 = sext i32 %25 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx65.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom64, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %imag66 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx65.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %26 = load float, float* %imag66, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv67 = fpext float %26 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %s2_30fixp11 = load i32, i32* %fftSin.s2_30fixp, align 4, !taffo.info !85
  %27 = sitofp i32 %s2_30fixp11 to double, !taffo.info !85
  %28 = fdiv double %27, 0x41D0000000000000, !taffo.info !85
  %call69.flt = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 noundef %18, double noundef %20, double noundef %conv60, double noundef %24, double noundef %conv67, double noundef %28), !taffo.info !122, !taffo.initweight !96, !taffo.constinfo !123
  %idxprom70 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx71 = getelementptr inbounds i32, i32* %indices, i64 %idxprom70, !taffo.info !87, !taffo.initweight !89
  %29 = load i32, i32* %arrayidx71, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom72 = sext i32 %29 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx73.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom72, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %real74 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx73.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %30 = load float, float* %real74, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %s2_30fixp4 = load i32, i32* %fftCos.s2_30fixp, align 4, !taffo.info !85
  %31 = fmul float 0x41D0000000000000, %30, !taffo.info !94, !taffo.target !95
  %32 = fptosi float %31 to i32, !taffo.info !94, !taffo.target !95
  %33 = sext i32 %32 to i64, !taffo.info !94, !taffo.target !95
  %34 = sext i32 %s2_30fixp4 to i64, !taffo.info !85
  %35 = mul i64 %33, %34, !taffo.info !124
  %36 = ashr i64 %35, 30, !taffo.info !124
  %mul.s2_30fixp = trunc i64 %36 to i32, !taffo.info !122
  %37 = sitofp i32 %mul.s2_30fixp to float, !taffo.info !122
  %38 = fdiv float %37, 0x41D0000000000000, !taffo.info !122
  %idxprom75 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx76 = getelementptr inbounds i32, i32* %indices, i64 %idxprom75, !taffo.info !87, !taffo.initweight !89
  %39 = load i32, i32* %arrayidx76, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom77 = sext i32 %39 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx78.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom77, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %imag79 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx78.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %40 = load float, float* %imag79, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %s2_30fixp10 = load i32, i32* %fftSin.s2_30fixp, align 4, !taffo.info !85
  %41 = fmul float 0x41D0000000000000, %40, !taffo.info !94, !taffo.target !95
  %42 = fptosi float %41 to i32, !taffo.info !94, !taffo.target !95
  %43 = sext i32 %42 to i64, !taffo.info !94, !taffo.target !95
  %44 = sext i32 %s2_30fixp10 to i64, !taffo.info !85
  %45 = mul i64 %43, %44, !taffo.info !124
  %46 = ashr i64 %45, 30, !taffo.info !124
  %mul80.s2_30fixp = trunc i64 %46 to i32, !taffo.info !122
  %47 = sitofp i32 %mul80.s2_30fixp to float, !taffo.info !122
  %48 = fdiv float %47, 0x41D0000000000000, !taffo.info !122
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom81 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx82 = getelementptr inbounds i32, i32* %indices, i64 %idxprom81, !taffo.info !87, !taffo.initweight !89
  %50 = load i32, i32* %arrayidx82, align 4, !taffo.info !87, !taffo.initweight !96
  %conv83 = fpext float %38 to double
  %conv84 = fpext float %48 to double
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 noundef %50, double noundef %conv83, double noundef %conv84), !taffo.info !87, !taffo.initweight !33, !taffo.constinfo !99
  %real86.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0, !taffo.info !117
  %s15_17fixp15 = load i32, i32* %real86.s15_17fixp, align 4, !taffo.info !117
  %51 = ashr i32 %mul.s2_30fixp, 13, !taffo.info !122
  %add87.s15_17fixp = add i32 %s15_17fixp15, %51, !taffo.info !117
  %52 = ashr i32 %mul80.s2_30fixp, 13, !taffo.info !122
  %sub.s15_17fixp = sub i32 %add87.s15_17fixp, %52, !taffo.info !117
  %53 = sitofp i32 %sub.s15_17fixp to float, !taffo.info !117
  %54 = fdiv float %53, 1.310720e+05, !taffo.info !117
  %idxprom88 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx89 = getelementptr inbounds i32, i32* %indices, i64 %idxprom88, !taffo.info !87, !taffo.initweight !89
  %55 = load i32, i32* %arrayidx89, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom90 = sext i32 %55 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx91.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom90, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %real92 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx91.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  store float %54, float* %real92, align 4, !taffo.info !94, !taffo.target !95
  %idxprom93 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx94 = getelementptr inbounds i32, i32* %indices, i64 %idxprom93, !taffo.info !87, !taffo.initweight !89
  %56 = load i32, i32* %arrayidx94, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom95 = sext i32 %56 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx96.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom95, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %imag97 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx96.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %57 = load float, float* %imag97, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %s2_30fixp3 = load i32, i32* %fftCos.s2_30fixp, align 4, !taffo.info !85
  %58 = fmul float 0x41D0000000000000, %57, !taffo.info !94, !taffo.target !95
  %59 = fptosi float %58 to i32, !taffo.info !94, !taffo.target !95
  %60 = sext i32 %59 to i64, !taffo.info !94, !taffo.target !95
  %61 = sext i32 %s2_30fixp3 to i64, !taffo.info !85
  %62 = mul i64 %60, %61, !taffo.info !124
  %63 = ashr i64 %62, 30, !taffo.info !124
  %mul98.s2_30fixp = trunc i64 %63 to i32, !taffo.info !122
  %64 = sitofp i32 %mul98.s2_30fixp to float, !taffo.info !122
  %65 = fdiv float %64, 0x41D0000000000000, !taffo.info !122
  %idxprom99 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx100 = getelementptr inbounds i32, i32* %indices, i64 %idxprom99, !taffo.info !87, !taffo.initweight !89
  %66 = load i32, i32* %arrayidx100, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom101 = sext i32 %66 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx102.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom101, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %real103 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx102.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %67 = load float, float* %real103, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %s2_30fixp9 = load i32, i32* %fftSin.s2_30fixp, align 4, !taffo.info !85
  %68 = fmul float 0x41D0000000000000, %67, !taffo.info !94, !taffo.target !95
  %69 = fptosi float %68 to i32, !taffo.info !94, !taffo.target !95
  %70 = sext i32 %69 to i64, !taffo.info !94, !taffo.target !95
  %71 = sext i32 %s2_30fixp9 to i64, !taffo.info !85
  %72 = mul i64 %70, %71, !taffo.info !124
  %73 = ashr i64 %72, 30, !taffo.info !124
  %mul104.s2_30fixp = trunc i64 %73 to i32, !taffo.info !122
  %74 = sitofp i32 %mul104.s2_30fixp to float, !taffo.info !122
  %75 = fdiv float %74, 0x41D0000000000000, !taffo.info !122
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom105 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx106 = getelementptr inbounds i32, i32* %indices, i64 %idxprom105, !taffo.info !87, !taffo.initweight !89
  %77 = load i32, i32* %arrayidx106, align 4, !taffo.info !87, !taffo.initweight !96
  %conv107 = fpext float %65 to double
  %conv108 = fpext float %75 to double
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %76, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 noundef %77, double noundef %conv107, double noundef %conv108), !taffo.info !87, !taffo.initweight !33, !taffo.constinfo !99
  %imag110.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1, !taffo.info !117
  %s15_17fixp14 = load i32, i32* %imag110.s15_17fixp, align 4, !taffo.info !117
  %78 = ashr i32 %mul98.s2_30fixp, 13, !taffo.info !122
  %add111.s15_17fixp = add i32 %s15_17fixp14, %78, !taffo.info !117
  %79 = ashr i32 %mul104.s2_30fixp, 13, !taffo.info !122
  %add112.s15_17fixp = add i32 %add111.s15_17fixp, %79, !taffo.info !117
  %80 = sitofp i32 %add112.s15_17fixp to float, !taffo.info !117
  %81 = fdiv float %80, 1.310720e+05, !taffo.info !117
  %idxprom113 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx114 = getelementptr inbounds i32, i32* %indices, i64 %idxprom113, !taffo.info !87, !taffo.initweight !89
  %82 = load i32, i32* %arrayidx114, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom115 = sext i32 %82 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx116.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom115, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %imag117 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx116.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  store float %81, float* %imag117, align 4, !taffo.info !94, !taffo.target !95
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom118 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx119 = getelementptr inbounds i32, i32* %indices, i64 %idxprom118, !taffo.info !87, !taffo.initweight !89
  %84 = load i32, i32* %arrayidx119, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom120 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx121 = getelementptr inbounds i32, i32* %indices, i64 %idxprom120, !taffo.info !87, !taffo.initweight !89
  %85 = load i32, i32* %arrayidx121, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom122 = sext i32 %85 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx123.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom122, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %real124 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx123.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %86 = load float, float* %real124, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv125 = fpext float %86 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %idxprom126 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx127 = getelementptr inbounds i32, i32* %indices, i64 %idxprom126, !taffo.info !87, !taffo.initweight !89
  %87 = load i32, i32* %arrayidx127, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom128 = sext i32 %87 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx129.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom128, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %imag130 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx129.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %88 = load float, float* %imag130, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv131 = fpext float %88 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %83, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 noundef %84, double noundef %conv125, double noundef %conv131), !taffo.info !126, !taffo.initweight !33, !taffo.constinfo !99
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom133 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx134 = getelementptr inbounds i32, i32* %indices, i64 %idxprom133, !taffo.info !87, !taffo.initweight !89
  %90 = load i32, i32* %arrayidx134, align 4, !taffo.info !87, !taffo.initweight !96
  %real135.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0, !taffo.info !117
  %s15_17fixp13 = load i32, i32* %real135.s15_17fixp, align 4, !taffo.info !117
  %91 = sitofp i32 %s15_17fixp13 to double, !taffo.info !117
  %92 = fdiv double %91, 1.310720e+05, !taffo.info !117
  %idxprom137 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx138 = getelementptr inbounds i32, i32* %indices, i64 %idxprom137, !taffo.info !87, !taffo.initweight !89
  %93 = load i32, i32* %arrayidx138, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom139 = sext i32 %93 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx140.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom139, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %real141 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx140.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %94 = load float, float* %real141, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv142 = fpext float %94 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %s2_30fixp2 = load i32, i32* %fftCos.s2_30fixp, align 4, !taffo.info !85
  %95 = sitofp i32 %s2_30fixp2 to double, !taffo.info !85
  %96 = fdiv double %95, 0x41D0000000000000, !taffo.info !85
  %idxprom144 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx145 = getelementptr inbounds i32, i32* %indices, i64 %idxprom144, !taffo.info !87, !taffo.initweight !89
  %97 = load i32, i32* %arrayidx145, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom146 = sext i32 %97 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx147.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom146, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %imag148 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx147.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %98 = load float, float* %imag148, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv149 = fpext float %98 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %s2_30fixp8 = load i32, i32* %fftSin.s2_30fixp, align 4, !taffo.info !85
  %99 = sitofp i32 %s2_30fixp8 to double, !taffo.info !85
  %100 = fdiv double %99, 0x41D0000000000000, !taffo.info !85
  %call151.flt = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 noundef %90, double noundef %92, double noundef %conv142, double noundef %96, double noundef %conv149, double noundef %100), !taffo.info !122, !taffo.initweight !96, !taffo.constinfo !123
  %idxprom152 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx153 = getelementptr inbounds i32, i32* %indices, i64 %idxprom152, !taffo.info !87, !taffo.initweight !89
  %101 = load i32, i32* %arrayidx153, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom154 = sext i32 %101 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx155.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom154, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %real156 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx155.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %102 = load float, float* %real156, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %s2_30fixp1 = load i32, i32* %fftCos.s2_30fixp, align 4, !taffo.info !85
  %103 = fmul float 0x41D0000000000000, %102, !taffo.info !94, !taffo.target !95
  %104 = fptosi float %103 to i32, !taffo.info !94, !taffo.target !95
  %105 = sext i32 %104 to i64, !taffo.info !94, !taffo.target !95
  %106 = sext i32 %s2_30fixp1 to i64, !taffo.info !85
  %107 = mul i64 %105, %106, !taffo.info !124
  %108 = ashr i64 %107, 30, !taffo.info !124
  %mul157.s2_30fixp = trunc i64 %108 to i32, !taffo.info !122
  %109 = sitofp i32 %mul157.s2_30fixp to float, !taffo.info !122
  %110 = fdiv float %109, 0x41D0000000000000, !taffo.info !122
  %idxprom158 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx159 = getelementptr inbounds i32, i32* %indices, i64 %idxprom158, !taffo.info !87, !taffo.initweight !89
  %111 = load i32, i32* %arrayidx159, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom160 = sext i32 %111 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx161.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom160, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %imag162 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx161.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %112 = load float, float* %imag162, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %s2_30fixp7 = load i32, i32* %fftSin.s2_30fixp, align 4, !taffo.info !85
  %113 = fmul float 0x41D0000000000000, %112, !taffo.info !94, !taffo.target !95
  %114 = fptosi float %113 to i32, !taffo.info !94, !taffo.target !95
  %115 = sext i32 %114 to i64, !taffo.info !94, !taffo.target !95
  %116 = sext i32 %s2_30fixp7 to i64, !taffo.info !85
  %117 = mul i64 %115, %116, !taffo.info !124
  %118 = ashr i64 %117, 30, !taffo.info !124
  %mul163.s2_30fixp = trunc i64 %118 to i32, !taffo.info !122
  %119 = sitofp i32 %mul163.s2_30fixp to float, !taffo.info !122
  %120 = fdiv float %119, 0x41D0000000000000, !taffo.info !122
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom164 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx165 = getelementptr inbounds i32, i32* %indices, i64 %idxprom164, !taffo.info !87, !taffo.initweight !89
  %122 = load i32, i32* %arrayidx165, align 4, !taffo.info !87, !taffo.initweight !96
  %conv166 = fpext float %110 to double
  %conv167 = fpext float %120 to double
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %121, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 noundef %122, double noundef %conv166, double noundef %conv167), !taffo.info !87, !taffo.initweight !33, !taffo.constinfo !99
  %real169.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0, !taffo.info !117
  %s15_17fixp12 = load i32, i32* %real169.s15_17fixp, align 4, !taffo.info !117
  %123 = ashr i32 %mul157.s2_30fixp, 13, !taffo.info !122
  %sub170.s15_17fixp = sub i32 %s15_17fixp12, %123, !taffo.info !117
  %124 = ashr i32 %mul163.s2_30fixp, 13, !taffo.info !122
  %add171.s15_17fixp = add i32 %sub170.s15_17fixp, %124, !taffo.info !117
  %125 = sitofp i32 %add171.s15_17fixp to float, !taffo.info !117
  %126 = fdiv float %125, 1.310720e+05, !taffo.info !117
  %idxprom172 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx173 = getelementptr inbounds i32, i32* %indices, i64 %idxprom172, !taffo.info !87, !taffo.initweight !89
  %127 = load i32, i32* %arrayidx173, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom174 = sext i32 %127 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx175.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom174, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %real176 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx175.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  store float %126, float* %real176, align 4, !taffo.info !94, !taffo.target !95
  %idxprom177 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx178 = getelementptr inbounds i32, i32* %indices, i64 %idxprom177, !taffo.info !87, !taffo.initweight !89
  %128 = load i32, i32* %arrayidx178, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom179 = sext i32 %128 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx180.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom179, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %imag181 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx180.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %129 = load float, float* %imag181, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %s2_30fixp = load i32, i32* %fftCos.s2_30fixp, align 4, !taffo.info !85
  %130 = fmul float 0x41D0000000000000, %129, !taffo.info !94, !taffo.target !95
  %131 = fptosi float %130 to i32, !taffo.info !94, !taffo.target !95
  %132 = sext i32 %131 to i64, !taffo.info !94, !taffo.target !95
  %133 = sext i32 %s2_30fixp to i64, !taffo.info !85
  %134 = mul i64 %132, %133, !taffo.info !124
  %135 = ashr i64 %134, 30, !taffo.info !124
  %mul182.s2_30fixp = trunc i64 %135 to i32, !taffo.info !122
  %136 = sitofp i32 %mul182.s2_30fixp to float, !taffo.info !122
  %137 = fdiv float %136, 0x41D0000000000000, !taffo.info !122
  %idxprom183 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx184 = getelementptr inbounds i32, i32* %indices, i64 %idxprom183, !taffo.info !87, !taffo.initweight !89
  %138 = load i32, i32* %arrayidx184, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom185 = sext i32 %138 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx186.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom185, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %real187 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx186.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %139 = load float, float* %real187, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %s2_30fixp6 = load i32, i32* %fftSin.s2_30fixp, align 4, !taffo.info !85
  %140 = fmul float 0x41D0000000000000, %139, !taffo.info !94, !taffo.target !95
  %141 = fptosi float %140 to i32, !taffo.info !94, !taffo.target !95
  %142 = sext i32 %141 to i64, !taffo.info !94, !taffo.target !95
  %143 = sext i32 %s2_30fixp6 to i64, !taffo.info !85
  %144 = mul i64 %142, %143, !taffo.info !124
  %145 = ashr i64 %144, 30, !taffo.info !124
  %mul188.s2_30fixp = trunc i64 %145 to i32, !taffo.info !122
  %146 = sitofp i32 %mul188.s2_30fixp to float, !taffo.info !122
  %147 = fdiv float %146, 0x41D0000000000000, !taffo.info !122
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom189 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx190 = getelementptr inbounds i32, i32* %indices, i64 %idxprom189, !taffo.info !87, !taffo.initweight !89
  %149 = load i32, i32* %arrayidx190, align 4, !taffo.info !87, !taffo.initweight !96
  %conv191 = fpext float %137 to double
  %conv192 = fpext float %147 to double
  %call193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %148, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 noundef %149, double noundef %conv191, double noundef %conv192), !taffo.info !87, !taffo.initweight !33, !taffo.constinfo !99
  %imag194.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1, !taffo.info !117
  %s15_17fixp = load i32, i32* %imag194.s15_17fixp, align 4, !taffo.info !117
  %150 = ashr i32 %mul182.s2_30fixp, 13, !taffo.info !122
  %sub195.s15_17fixp = sub i32 %s15_17fixp, %150, !taffo.info !117
  %151 = ashr i32 %mul188.s2_30fixp, 13, !taffo.info !122
  %sub196.s15_17fixp = sub i32 %sub195.s15_17fixp, %151, !taffo.info !117
  %152 = sitofp i32 %sub196.s15_17fixp to float, !taffo.info !117
  %153 = fdiv float %152, 1.310720e+05, !taffo.info !117
  %idxprom197 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx198 = getelementptr inbounds i32, i32* %indices, i64 %idxprom197, !taffo.info !87, !taffo.initweight !89
  %154 = load i32, i32* %arrayidx198, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom199 = sext i32 %154 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx200.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom199, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %imag201 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx200.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  store float %153, float* %imag201, align 4, !taffo.info !94, !taffo.target !95
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom202 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx203 = getelementptr inbounds i32, i32* %indices, i64 %idxprom202, !taffo.info !87, !taffo.initweight !89
  %156 = load i32, i32* %arrayidx203, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom204 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx205 = getelementptr inbounds i32, i32* %indices, i64 %idxprom204, !taffo.info !87, !taffo.initweight !89
  %157 = load i32, i32* %arrayidx205, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom206 = sext i32 %157 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx207.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom206, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %real208 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx207.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %158 = load float, float* %real208, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv209 = fpext float %158 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %idxprom210 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx211 = getelementptr inbounds i32, i32* %indices, i64 %idxprom210, !taffo.info !87, !taffo.initweight !89
  %159 = load i32, i32* %arrayidx211, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom212 = sext i32 %159 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx213.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom212, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %imag214 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx213.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %160 = load float, float* %imag214, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv215 = fpext float %160 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %call216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %155, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 noundef %156, double noundef %conv209, double noundef %conv215), !taffo.info !126, !taffo.initweight !33, !taffo.constinfo !99
  br label %for.inc217

for.inc217:                                       ; preds = %for.end
  %inc218 = add nsw i32 %k.0, 1, !taffo.info !106, !taffo.initweight !89, !taffo.constinfo !34
  br label %for.cond16, !llvm.loop !127

for.end219:                                       ; preds = %for.cond16
  br label %for.inc220

for.inc220:                                       ; preds = %for.end219
  %add221 = add nsw i32 %j.0, %N.0, !taffo.info !52
  br label %for.cond12, !llvm.loop !128

for.end222:                                       ; preds = %for.cond12
  br label %for.inc223

for.inc223:                                       ; preds = %for.end222
  %inc224 = add nsw i32 %i.0, 1, !taffo.info !47, !taffo.constinfo !34
  %add225 = add nsw i32 %inc224, 1, !taffo.info !52, !taffo.constinfo !34
  %shl226 = shl i32 1, %add225, !taffo.info !129, !taffo.constinfo !34
  br label %for.cond, !llvm.loop !131

for.end227:                                       ; preds = %for.cond
  br label %for.cond229

for.cond229:                                      ; preds = %for.inc239, %for.end227
  %i228.0 = phi i32 [ 0, %for.end227 ], [ %inc240, %for.inc239 ], !taffo.info !109
  %cmp230 = icmp slt i32 %i228.0, 16, !taffo.info !44
  br i1 %cmp230, label %for.body232, label %for.end241

for.body232:                                      ; preds = %for.cond229
  %idxprom233 = sext i32 %i228.0 to i64, !taffo.info !111
  %arrayidx234.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %f, i64 %idxprom233, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !132
  %idxprom235 = sext i32 %i228.0 to i64, !taffo.info !111
  %arrayidx236 = getelementptr inbounds i32, i32* %indices, i64 %idxprom235, !taffo.info !87, !taffo.initweight !89
  %161 = load i32, i32* %arrayidx236, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom237 = sext i32 %161 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx238.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom237, !taffo.initweight !89, !taffo.structinfo !93, !taffo.target !95
  %162 = bitcast %struct.Complex* %arrayidx234.flt to i8*, !taffo.info !94, !taffo.initweight !96, !taffo.target !132
  %163 = bitcast %struct.Complex* %arrayidx238.flt to i8*, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %162, i8* align 4 %163, i64 8, i1 false), !taffo.info !94, !taffo.initweight !33, !taffo.constinfo !133, !taffo.target !95
  br label %for.inc239

for.inc239:                                       ; preds = %for.body232
  %inc240 = add nsw i32 %i228.0, 1, !taffo.info !113, !taffo.constinfo !34
  br label %for.cond229, !llvm.loop !134

for.end241:                                       ; preds = %for.cond229
  ret void
}

declare !taffo.initweight !135 !taffo.funinfo !136 i32 @fprintf(%struct._IO_FILE* noundef, i8* noundef, ...) #2

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare !taffo.initweight !137 !taffo.funinfo !138 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @radix2DitCooleyTykeyFftWrapper(i32* noundef %indices, float* noundef %x_real, float* noundef %x_imag, float* noundef %f_real, float* noundef %f_imag) #0 !taffo.initweight !139 !taffo.funinfo !140 !taffo.start !84 {
entry:
  %x = alloca [16 x %struct.Complex], align 16, !taffo.initweight !102, !taffo.structinfo !93, !taffo.target !141
  %f = alloca [16 x %struct.Complex], align 16, !taffo.initweight !102, !taffo.structinfo !93, !taffo.target !142
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !109
  %cmp = icmp slt i32 %i.0, 16, !taffo.info !44
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !111
  %arrayidx = getelementptr inbounds float, float* %x_real, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !141
  %idxprom3 = sext i32 %i.0 to i64, !taffo.info !111
  %arrayidx4.flt = getelementptr inbounds [16 x %struct.Complex], [16 x %struct.Complex]* %x, i64 0, i64 %idxprom3, !taffo.initweight !143, !taffo.structinfo !93, !taffo.target !141
  %real = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx4.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !89, !taffo.target !141
  store float %0, float* %real, align 8, !taffo.info !94, !taffo.target !141
  %idxprom5 = sext i32 %i.0 to i64, !taffo.info !111
  %arrayidx6 = getelementptr inbounds float, float* %x_imag, i64 %idxprom5
  %1 = load float, float* %arrayidx6, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !141
  %idxprom7 = sext i32 %i.0 to i64, !taffo.info !111
  %arrayidx8.flt = getelementptr inbounds [16 x %struct.Complex], [16 x %struct.Complex]* %x, i64 0, i64 %idxprom7, !taffo.initweight !143, !taffo.structinfo !93, !taffo.target !141
  %imag = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx8.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !89, !taffo.target !141
  store float %1, float* %imag, align 4, !taffo.info !94, !taffo.target !141
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom9 = sext i32 %i.0 to i64, !taffo.info !111
  %arrayidx10.flt = getelementptr inbounds [16 x %struct.Complex], [16 x %struct.Complex]* %x, i64 0, i64 %idxprom9, !taffo.initweight !143, !taffo.structinfo !93, !taffo.target !141
  %real11 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx10.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !89, !taffo.target !141
  %3 = load float, float* %real11, align 8, !taffo.info !94, !taffo.initweight !96, !taffo.target !141
  %conv = fpext float %3 to double, !taffo.info !94, !taffo.initweight !33, !taffo.target !141
  %idxprom12 = sext i32 %i.0 to i64, !taffo.info !111
  %arrayidx13.flt = getelementptr inbounds [16 x %struct.Complex], [16 x %struct.Complex]* %x, i64 0, i64 %idxprom12, !taffo.initweight !143, !taffo.structinfo !93, !taffo.target !141
  %imag14 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx13.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !89, !taffo.target !141
  %4 = load float, float* %imag14, align 4, !taffo.info !94, !taffo.initweight !96, !taffo.target !141
  %conv15 = fpext float %4 to double, !taffo.info !94, !taffo.initweight !33, !taffo.target !141
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %2, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 noundef %i.0, double noundef %conv, double noundef %conv15), !taffo.info !94, !taffo.initweight !97, !taffo.constinfo !99, !taffo.target !141
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !113, !taffo.constinfo !34
  br label %for.cond, !llvm.loop !144

for.end:                                          ; preds = %for.cond
  %arraydecay.flt = getelementptr inbounds [16 x %struct.Complex], [16 x %struct.Complex]* %x, i64 0, i64 0, !taffo.initweight !143, !taffo.structinfo !93, !taffo.target !141
  %arraydecay16.flt = getelementptr inbounds [16 x %struct.Complex], [16 x %struct.Complex]* %f, i64 0, i64 0, !taffo.initweight !143, !taffo.structinfo !93, !taffo.target !142
  call void @radix2DitCooleyTykeyFft.3_fixp(i32* %indices, %struct.Complex* %arraydecay.flt, %struct.Complex* %arraydecay16.flt), !taffo.info !94, !taffo.constinfo !108, !taffo.target !141
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc32, %for.end
  %i17.0 = phi i32 [ 0, %for.end ], [ %inc33, %for.inc32 ], !taffo.info !109
  %cmp19 = icmp slt i32 %i17.0, 16, !taffo.info !44
  br i1 %cmp19, label %for.body21, label %for.end34

for.body21:                                       ; preds = %for.cond18
  %idxprom22 = sext i32 %i17.0 to i64, !taffo.info !111
  %arrayidx23.flt = getelementptr inbounds [16 x %struct.Complex], [16 x %struct.Complex]* %f, i64 0, i64 %idxprom22, !taffo.initweight !143, !taffo.structinfo !93, !taffo.target !142
  %real24 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx23.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !89, !taffo.target !142
  %5 = load float, float* %real24, align 8, !taffo.info !94, !taffo.initweight !96, !taffo.target !142
  %idxprom25 = sext i32 %i17.0 to i64, !taffo.info !111
  %arrayidx26 = getelementptr inbounds float, float* %f_real, i64 %idxprom25
  store float %5, float* %arrayidx26, align 4, !taffo.info !94, !taffo.target !142
  %idxprom27 = sext i32 %i17.0 to i64, !taffo.info !111
  %arrayidx28.flt = getelementptr inbounds [16 x %struct.Complex], [16 x %struct.Complex]* %f, i64 0, i64 %idxprom27, !taffo.initweight !143, !taffo.structinfo !93, !taffo.target !142
  %imag29 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx28.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !89, !taffo.target !142
  %6 = load float, float* %imag29, align 4, !taffo.info !94, !taffo.initweight !96, !taffo.target !142
  %idxprom30 = sext i32 %i17.0 to i64, !taffo.info !111
  %arrayidx31 = getelementptr inbounds float, float* %f_imag, i64 %idxprom30
  store float %6, float* %arrayidx31, align 4, !taffo.info !94, !taffo.target !142
  br label %for.inc32

for.inc32:                                        ; preds = %for.body21
  %inc33 = add nsw i32 %i17.0, 1, !taffo.info !113, !taffo.constinfo !34
  br label %for.cond18, !llvm.loop !145

for.end34:                                        ; preds = %for.cond18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, i8** noundef %argv) #0 !taffo.initweight !135 !taffo.funinfo !136 {
entry:
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0)), !taffo.constinfo !34
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %0 = load i8*, i8** %arrayidx, align 8
  %call1 = call noalias %struct._IO_FILE* @fopen(i8* noundef %0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)), !taffo.constinfo !146
  store %struct._IO_FILE* %call1, %struct._IO_FILE** @output, align 8, !taffo.constinfo !34
  %call2 = call noalias i8* @malloc(i64 noundef 64) #6, !taffo.constinfo !34
  %1 = bitcast i8* %call2 to float*
  store float* %1, float** @x_real, align 8, !taffo.constinfo !34
  %call3 = call noalias i8* @malloc(i64 noundef 64) #6, !taffo.constinfo !34
  %2 = bitcast i8* %call3 to float*
  store float* %2, float** @x_imag, align 8, !taffo.constinfo !34
  %call4 = call noalias i8* @malloc(i64 noundef 64) #6, !taffo.constinfo !34
  %3 = bitcast i8* %call4 to float*
  store float* %3, float** @f_real, align 8, !taffo.constinfo !34
  %call5 = call noalias i8* @malloc(i64 noundef 64) #6, !taffo.constinfo !34
  %4 = bitcast i8* %call5 to float*
  store float* %4, float** @f_imag, align 8, !taffo.constinfo !34
  %call6 = call noalias i8* @malloc(i64 noundef 64) #6, !taffo.constinfo !34
  %5 = bitcast i8* %call6 to i32*
  store i32* %5, i32** @indices, align 8, !taffo.constinfo !34
  %6 = load float*, float** @x_real, align 8
  %cmp7 = icmp eq float* %6, null
  br i1 %cmp7, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %7 = load float*, float** @x_real, align 8
  %cmp8 = icmp eq float* %7, null
  br i1 %cmp8, label %if.then15, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false
  %8 = load float*, float** @f_real, align 8
  %cmp10 = icmp eq float* %8, null
  br i1 %cmp10, label %if.then15, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %9 = load float*, float** @f_real, align 8
  %cmp12 = icmp eq float* %9, null
  br i1 %cmp12, label %if.then15, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %10 = load i32*, i32** @indices, align 8
  %cmp14 = icmp eq i32* %10, null
  br i1 %cmp14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %lor.lhs.false13, %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false, %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %11, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str.18, i64 0, i64 0)), !taffo.constinfo !146
  br label %return

if.end17:                                         ; preds = %lor.lhs.false13
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end17
  %i.0 = phi i32 [ 0, %if.end17 ], [ %inc, %for.inc ]
  %cmp18 = icmp slt i32 %i.0, 16
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %cmp19 = icmp slt i32 %i.0, 8
  %cond = select i1 %cmp19, double 1.000000e+00, double 0.000000e+00
  %conv = fptrunc double %cond to float
  %12 = load float*, float** @x_real, align 8
  %idxprom = sext i32 %i.0 to i64
  %arrayidx20 = getelementptr inbounds float, float* %12, i64 %idxprom
  store float %conv, float* %arrayidx20, align 4
  %13 = load float*, float** @x_imag, align 8
  %idxprom21 = sext i32 %i.0 to i64
  %arrayidx22 = getelementptr inbounds float, float* %13, i64 %idxprom21
  store float 0.000000e+00, float* %arrayidx22, align 4, !taffo.constinfo !147
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %15 = load float*, float** @x_real, align 8
  %idxprom23 = sext i32 %i.0 to i64
  %arrayidx24 = getelementptr inbounds float, float* %15, i64 %idxprom23
  %16 = load float, float* %arrayidx24, align 4
  %conv25 = fpext float %16 to double
  %17 = load float*, float** @x_imag, align 8
  %idxprom26 = sext i32 %i.0 to i64
  %arrayidx27 = getelementptr inbounds float, float* %17, i64 %idxprom26
  %18 = load float, float* %arrayidx27, align 4
  %conv28 = fpext float %18 to double
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %14, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 noundef %i.0, double noundef %conv25, double noundef %conv28), !taffo.constinfo !99
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !34
  br label %for.cond, !llvm.loop !148

for.end:                                          ; preds = %for.cond
  %19 = load i32*, i32** @indices, align 8
  %20 = load float*, float** @x_real, align 8
  %21 = load float*, float** @x_imag, align 8
  %22 = load float*, float** @f_real, align 8
  %23 = load float*, float** @f_imag, align 8
  call void @radix2DitCooleyTykeyFftWrapper(i32* noundef %19, float* noundef %20, float* noundef %21, float* noundef %22, float* noundef %23), !taffo.constinfo !99
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc43, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc44, %for.inc43 ]
  %cmp31 = icmp slt i32 %i.1, 16
  br i1 %cmp31, label %for.body33, label %for.end45

for.body33:                                       ; preds = %for.cond30
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %25 = load float*, float** @f_real, align 8
  %idxprom34 = sext i32 %i.1 to i64
  %arrayidx35 = getelementptr inbounds float, float* %25, i64 %idxprom34
  %26 = load float, float* %arrayidx35, align 4
  %conv36 = fpext float %26 to double
  %27 = load float*, float** @f_imag, align 8
  %idxprom37 = sext i32 %i.1 to i64
  %arrayidx38 = getelementptr inbounds float, float* %27, i64 %idxprom37
  %28 = load float, float* %arrayidx38, align 4
  %conv39 = fpext float %28 to double
  %29 = load i32*, i32** @indices, align 8
  %idxprom40 = sext i32 %i.1 to i64
  %arrayidx41 = getelementptr inbounds i32, i32* %29, i64 %idxprom40
  %30 = load i32, i32* %arrayidx41, align 4
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), double noundef %conv36, double noundef %conv39, i32 noundef %30), !taffo.constinfo !99
  br label %for.inc43

for.inc43:                                        ; preds = %for.body33
  %inc44 = add nsw i32 %i.1, 1, !taffo.constinfo !34
  br label %for.cond30, !llvm.loop !149

for.end45:                                        ; preds = %for.cond30
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %call46 = call i32 @fclose(%struct._IO_FILE* noundef %31), !taffo.constinfo !34
  br label %return

return:                                           ; preds = %for.end45, %if.then15, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -1, %if.then15 ], [ 0, %for.end45 ]
  ret i32 %retval.0
}

declare !taffo.initweight !37 !taffo.funinfo !38 i32 @printf(i8* noundef, ...) #2

declare !taffo.initweight !135 !taffo.funinfo !136 noalias %struct._IO_FILE* @fopen(i8* noundef, i8* noundef) #2

; Function Attrs: nounwind allocsize(0)
declare !taffo.initweight !37 !taffo.funinfo !38 noalias i8* @malloc(i64 noundef) #4

declare !taffo.initweight !37 !taffo.funinfo !38 i32 @fclose(%struct._IO_FILE* noundef) #2

; Function Attrs: noinline nounwind uwtable
define internal void @calcFftIndices.1(i32* noundef %indices) #0 !taffo.initweight !89 !taffo.equivalentChild !150 !taffo.funinfo !151 !taffo.sourceFunction !90 {
entry:
  %call = call float @manual_log2(float noundef 1.600000e+01), !taffo.info !75, !taffo.constinfo !78
  %conv = fptosi float %call to i32, !taffo.info !75
  %arrayidx = getelementptr inbounds i32, i32* %indices, i64 0, !taffo.info !87, !taffo.initweight !97
  store i32 0, i32* %arrayidx, align 4, !taffo.info !87, !taffo.initweight !98, !taffo.constinfo !34
  %sub = sub nsw i32 %conv, 1, !taffo.info !152, !taffo.constinfo !34
  %shl = shl i32 1, %sub, !taffo.info !154, !taffo.constinfo !34
  %arrayidx1 = getelementptr inbounds i32, i32* %indices, i64 1, !taffo.info !87, !taffo.initweight !97
  store i32 %shl, i32* %arrayidx1, align 4, !taffo.info !87, !taffo.initweight !98
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc19, %for.inc18 ], !taffo.info !156
  %cmp = icmp slt i32 %i.0, %conv, !taffo.info !44
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  %shl3 = shl i32 1, %i.0, !taffo.info !52, !taffo.constinfo !34
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ %shl3, %for.body ], [ %inc, %for.inc ], !taffo.info !158
  %add = add nsw i32 %i.0, 1, !taffo.info !52, !taffo.constinfo !34
  %shl5 = shl i32 1, %add, !taffo.info !129, !taffo.constinfo !34
  %cmp6 = icmp slt i32 %j.0, %shl5, !taffo.info !47
  br i1 %cmp6, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond4
  %shl9 = shl i32 1, %i.0, !taffo.info !52, !taffo.constinfo !34
  %sub10 = sub nsw i32 %j.0, %shl9, !taffo.info !42
  %idxprom = sext i32 %sub10 to i64, !taffo.info !42
  %arrayidx11 = getelementptr inbounds i32, i32* %indices, i64 %idxprom, !taffo.info !87, !taffo.initweight !97
  %0 = load i32, i32* %arrayidx11, align 4, !taffo.info !87, !taffo.initweight !98
  %add12 = add nsw i32 %i.0, 1, !taffo.info !52, !taffo.constinfo !34
  %sub13 = sub nsw i32 %conv, %add12, !taffo.info !160
  %shl14 = shl i32 1, %sub13, !taffo.info !162, !taffo.constinfo !34
  %add15 = add nsw i32 %0, %shl14, !taffo.info !87, !taffo.initweight !164
  %idxprom16 = sext i32 %j.0 to i64, !taffo.info !52
  %arrayidx17 = getelementptr inbounds i32, i32* %indices, i64 %idxprom16, !taffo.info !87, !taffo.initweight !97
  store i32 %add15, i32* %arrayidx17, align 4, !taffo.info !87, !taffo.initweight !98
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %j.0, 1, !taffo.info !165, !taffo.constinfo !34
  br label %for.cond4, !llvm.loop !167

for.end:                                          ; preds = %for.cond4
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %inc19 = add nsw i32 %i.0, 1, !taffo.info !52, !taffo.constinfo !34
  br label %for.cond, !llvm.loop !168

for.end20:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @calcFftIndices.1.4(i32* noundef %indices) #0 !taffo.initweight !89 !taffo.funinfo !151 !taffo.sourceFunction !77 {
entry:
  %call = call float @manual_log2(float noundef 1.600000e+01), !taffo.constinfo !78
  %conv = fptosi float %call to i32
  %arrayidx = getelementptr inbounds i32, i32* %indices, i64 0, !taffo.info !87, !taffo.initweight !97
  store i32 0, i32* %arrayidx, align 4, !taffo.info !87, !taffo.initweight !98, !taffo.constinfo !34
  %sub = sub nsw i32 %conv, 1, !taffo.constinfo !34
  %shl = shl i32 1, %sub, !taffo.constinfo !34
  %arrayidx1 = getelementptr inbounds i32, i32* %indices, i64 1, !taffo.info !87, !taffo.initweight !97
  store i32 %shl, i32* %arrayidx1, align 4, !taffo.info !87, !taffo.initweight !98
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc19, %for.inc18 ], !taffo.info !156
  %cmp = icmp slt i32 %i.0, %conv, !taffo.info !44
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  %shl3 = shl i32 1, %i.0, !taffo.info !52, !taffo.constinfo !34
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ %shl3, %for.body ], [ %inc, %for.inc ], !taffo.info !158
  %add = add nsw i32 %i.0, 1, !taffo.info !52, !taffo.constinfo !34
  %shl5 = shl i32 1, %add, !taffo.info !129, !taffo.constinfo !34
  %cmp6 = icmp slt i32 %j.0, %shl5, !taffo.info !47
  br i1 %cmp6, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond4
  %shl9 = shl i32 1, %i.0, !taffo.info !52, !taffo.constinfo !34
  %sub10 = sub nsw i32 %j.0, %shl9, !taffo.info !42
  %idxprom = sext i32 %sub10 to i64, !taffo.info !42
  %arrayidx11 = getelementptr inbounds i32, i32* %indices, i64 %idxprom, !taffo.info !87, !taffo.initweight !97
  %0 = load i32, i32* %arrayidx11, align 4, !taffo.info !87, !taffo.initweight !98
  %add12 = add nsw i32 %i.0, 1, !taffo.info !52, !taffo.constinfo !34
  %sub13 = sub nsw i32 %conv, %add12
  %shl14 = shl i32 1, %sub13, !taffo.constinfo !34
  %add15 = add nsw i32 %0, %shl14, !taffo.info !87, !taffo.initweight !164
  %idxprom16 = sext i32 %j.0 to i64, !taffo.info !52
  %arrayidx17 = getelementptr inbounds i32, i32* %indices, i64 %idxprom16, !taffo.info !87, !taffo.initweight !97
  store i32 %add15, i32* %arrayidx17, align 4, !taffo.info !87, !taffo.initweight !98
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %j.0, 1, !taffo.info !165, !taffo.constinfo !34
  br label %for.cond4, !llvm.loop !169

for.end:                                          ; preds = %for.cond4
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %inc19 = add nsw i32 %i.0, 1, !taffo.info !52, !taffo.constinfo !34
  br label %for.cond, !llvm.loop !170

for.end20:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @fftSinCos.2_fixp(i32 noundef %x.u22_10fixp, i32* noundef %s.s2_30fixp, i32* noundef %c.s2_30fixp) #0 !taffo.initweight !171 !taffo.equivalentChild !172 !taffo.funinfo !173 !taffo.sourceFunction !176 {
entry:
  %conv.u1_31fixp = shl i32 %x.u22_10fixp, 21, !taffo.info !25
  %0 = sext i32 -1686629714 to i64
  %1 = zext i32 %conv.u1_31fixp to i64, !taffo.info !25
  %2 = mul i64 %0, %1, !taffo.info !177, !taffo.constinfo !30
  %3 = ashr i64 %2, 31, !taffo.info !177, !taffo.constinfo !30
  %mul.s4_28fixp = trunc i64 %3 to i32, !taffo.info !180
  %4 = sitofp i32 %mul.s4_28fixp to double, !taffo.info !180
  %5 = fdiv double %4, 0x41B0000000000000, !taffo.info !180
  %call.flt = call double @sin(double noundef %5) #5, !taffo.info !182, !taffo.initweight !33, !taffo.constinfo !34
  %6 = fmul double 0x41B0000000000000, %call.flt, !taffo.info !182, !taffo.constinfo !34
  %call.flt.fallback.s4_28fixp = fptosi double %6 to i32, !taffo.info !182
  %conv4.s2_30fixp = shl i32 %call.flt.fallback.s4_28fixp, 2, !taffo.info !183
  store i32 %conv4.s2_30fixp, i32* %s.s2_30fixp, align 4, !taffo.info !35
  %conv5.u1_31fixp = shl i32 %x.u22_10fixp, 21, !taffo.info !25
  %7 = sext i32 -1686629714 to i64
  %8 = zext i32 %conv5.u1_31fixp to i64, !taffo.info !25
  %9 = mul i64 %7, %8, !taffo.info !177, !taffo.constinfo !30
  %10 = ashr i64 %9, 31, !taffo.info !177, !taffo.constinfo !30
  %mul6.s4_28fixp = trunc i64 %10 to i32, !taffo.info !180
  %11 = sitofp i32 %mul6.s4_28fixp to double, !taffo.info !180
  %12 = fdiv double %11, 0x41B0000000000000, !taffo.info !180
  %call7.flt = call double @cos(double noundef %12) #5, !taffo.info !182, !taffo.initweight !33, !taffo.constinfo !34
  %13 = fmul double 0x41B0000000000000, %call7.flt, !taffo.info !182, !taffo.constinfo !34
  %call7.flt.fallback.s4_28fixp = fptosi double %13 to i32, !taffo.info !182
  %conv8.s2_30fixp = shl i32 %call7.flt.fallback.s4_28fixp, 2, !taffo.info !183
  store i32 %conv8.s2_30fixp, i32* %c.s2_30fixp, align 4, !taffo.info !35
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @radix2DitCooleyTykeyFft.3_fixp(i32* noundef %indices, %struct.Complex* noundef %x, %struct.Complex* noundef %f) #0 !taffo.initweight !184 !taffo.funinfo !185 !taffo.start !84 !taffo.sourceFunction !186 {
entry:
  %fftSin.s2_30fixp = alloca i32, align 4, !taffo.info !85
  %fftCos.s2_30fixp = alloca i32, align 4, !taffo.info !85
  %0 = alloca { i32, i32 }, align 4
  call void @calcFftIndices.1.4(i32* noundef %indices), !taffo.info !87, !taffo.initweight !89, !taffo.constinfo !34, !taffo.originalCall !77
  %add = add nsw i32 0, 1, !taffo.info !47, !taffo.constinfo !34
  %shl = shl i32 1, %add, !taffo.info !52, !taffo.constinfo !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc223, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc224, %for.inc223 ], !taffo.info !44
  %N.0 = phi i32 [ %shl, %entry ], [ %shl226, %for.inc223 ], !taffo.info !91
  %cmp = icmp sle i32 %N.0, 16, !taffo.info !47
  br i1 %cmp, label %for.body, label %for.end227

for.body:                                         ; preds = %for.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom = sext i32 %i.0 to i64, !taffo.info !42
  %arrayidx.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %real = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %2 = load float, float* %real, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv = fpext float %2 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %idxprom9 = sext i32 %i.0 to i64, !taffo.info !42
  %arrayidx10.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom9, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %imag = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx10.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %3 = load float, float* %imag, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv11 = fpext float %3 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %1, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 noundef %i.0, double noundef %conv, double noundef %conv11), !taffo.info !94, !taffo.initweight !98, !taffo.constinfo !99, !taffo.target !95
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc220, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %add221, %for.inc220 ], !taffo.info !100
  %cmp13 = icmp slt i32 %j.0, 16, !taffo.info !47
  br i1 %cmp13, label %for.body15, label %for.end222

for.body15:                                       ; preds = %for.cond12
  %shr = ashr i32 %N.0, 1, !taffo.info !47, !taffo.constinfo !34
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc217, %for.body15
  %k.0 = phi i32 [ 0, %for.body15 ], [ %inc218, %for.inc217 ], !taffo.info !87, !taffo.initweight !102
  %cmp17 = icmp slt i32 %k.0, %shr, !taffo.info !103, !taffo.initweight !89
  br i1 %cmp17, label %for.body19, label %for.end219, !taffo.info !87, !taffo.initweight !96

for.body19:                                       ; preds = %for.cond16
  %conv20 = sitofp i32 %k.0 to float, !taffo.info !87, !taffo.initweight !89
  %conv21 = sitofp i32 %N.0 to float, !taffo.info !52
  %div = fdiv float %conv20, %conv21, !taffo.info !104, !taffo.initweight !96
  %add22 = add nsw i32 %j.0, %k.0, !taffo.info !87, !taffo.initweight !89
  %add23 = add nsw i32 %j.0, %shr, !taffo.info !47
  %add24 = add nsw i32 %add23, %k.0, !taffo.info !106, !taffo.initweight !89
  %4 = fmul float 1.024000e+03, %div, !taffo.info !104
  %5 = fptoui float %4 to i32, !taffo.info !104
  call void @fftSinCos.2.5_fixp(i32 %5, i32* %fftSin.s2_30fixp, i32* %fftCos.s2_30fixp), !taffo.info !94, !taffo.constinfo !108
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc, %for.body19
  %i25.0 = phi i32 [ 0, %for.body19 ], [ %inc, %for.inc ], !taffo.info !109
  %cmp27 = icmp slt i32 %i25.0, 16, !taffo.info !44
  br i1 %cmp27, label %for.body29, label %for.end

for.body29:                                       ; preds = %for.cond26
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom30 = sext i32 %i25.0 to i64, !taffo.info !111
  %arrayidx31.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom30, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %real32 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx31.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %7 = load float, float* %real32, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv33 = fpext float %7 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %idxprom34 = sext i32 %i25.0 to i64, !taffo.info !111
  %arrayidx35.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom34, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %imag36 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx35.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %8 = load float, float* %imag36, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv37 = fpext float %8 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %6, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 noundef %i25.0, double noundef %conv33, double noundef %conv37), !taffo.info !94, !taffo.initweight !98, !taffo.constinfo !99, !taffo.target !95
  br label %for.inc

for.inc:                                          ; preds = %for.body29
  %inc = add nsw i32 %i25.0, 1, !taffo.info !113, !taffo.constinfo !34
  br label %for.cond26, !llvm.loop !187

for.end:                                          ; preds = %for.cond26
  %idxprom39 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx40 = getelementptr inbounds i32, i32* %indices, i64 %idxprom39, !taffo.info !87, !taffo.initweight !89
  %9 = load i32, i32* %arrayidx40, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom41 = sext i32 %9 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx42.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom41, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %real43 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx42.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %10 = load float, float* %real43, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %11 = fmul float 1.310720e+05, %10, !taffo.info !94, !taffo.target !95
  %12 = fptosi float %11 to i32, !taffo.info !94, !taffo.target !95
  %real44.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0, !taffo.info !117
  store i32 %12, i32* %real44.s15_17fixp, align 4, !taffo.info !120
  %idxprom45 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx46 = getelementptr inbounds i32, i32* %indices, i64 %idxprom45, !taffo.info !87, !taffo.initweight !89
  %13 = load i32, i32* %arrayidx46, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom47 = sext i32 %13 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx48.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom47, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %imag49 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx48.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %14 = load float, float* %imag49, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %15 = fmul float 1.310720e+05, %14, !taffo.info !94, !taffo.target !95
  %16 = fptosi float %15 to i32, !taffo.info !94, !taffo.target !95
  %imag50.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1, !taffo.info !117
  store i32 %16, i32* %imag50.s15_17fixp, align 4, !taffo.info !120
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom51 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx52 = getelementptr inbounds i32, i32* %indices, i64 %idxprom51, !taffo.info !87, !taffo.initweight !89
  %18 = load i32, i32* %arrayidx52, align 4, !taffo.info !87, !taffo.initweight !96
  %real53.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0, !taffo.info !117
  %s15_17fixp16 = load i32, i32* %real53.s15_17fixp, align 4, !taffo.info !117
  %19 = sitofp i32 %s15_17fixp16 to double, !taffo.info !117
  %20 = fdiv double %19, 1.310720e+05, !taffo.info !117
  %idxprom55 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx56 = getelementptr inbounds i32, i32* %indices, i64 %idxprom55, !taffo.info !87, !taffo.initweight !89
  %21 = load i32, i32* %arrayidx56, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom57 = sext i32 %21 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx58.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom57, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %real59 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx58.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %22 = load float, float* %real59, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv60 = fpext float %22 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %s2_30fixp5 = load i32, i32* %fftCos.s2_30fixp, align 4, !taffo.info !85
  %23 = sitofp i32 %s2_30fixp5 to double, !taffo.info !85
  %24 = fdiv double %23, 0x41D0000000000000, !taffo.info !85
  %idxprom62 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx63 = getelementptr inbounds i32, i32* %indices, i64 %idxprom62, !taffo.info !87, !taffo.initweight !89
  %25 = load i32, i32* %arrayidx63, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom64 = sext i32 %25 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx65.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom64, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %imag66 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx65.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %26 = load float, float* %imag66, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv67 = fpext float %26 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %s2_30fixp11 = load i32, i32* %fftSin.s2_30fixp, align 4, !taffo.info !85
  %27 = sitofp i32 %s2_30fixp11 to double, !taffo.info !85
  %28 = fdiv double %27, 0x41D0000000000000, !taffo.info !85
  %call69.flt = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %17, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 noundef %18, double noundef %20, double noundef %conv60, double noundef %24, double noundef %conv67, double noundef %28), !taffo.info !122, !taffo.initweight !96, !taffo.constinfo !123
  %idxprom70 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx71 = getelementptr inbounds i32, i32* %indices, i64 %idxprom70, !taffo.info !87, !taffo.initweight !89
  %29 = load i32, i32* %arrayidx71, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom72 = sext i32 %29 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx73.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom72, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %real74 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx73.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %30 = load float, float* %real74, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %s2_30fixp4 = load i32, i32* %fftCos.s2_30fixp, align 4, !taffo.info !85
  %31 = fmul float 0x41D0000000000000, %30, !taffo.info !94, !taffo.target !95
  %32 = fptosi float %31 to i32, !taffo.info !94, !taffo.target !95
  %33 = sext i32 %32 to i64, !taffo.info !94, !taffo.target !95
  %34 = sext i32 %s2_30fixp4 to i64, !taffo.info !85
  %35 = mul i64 %33, %34, !taffo.info !124
  %36 = ashr i64 %35, 30, !taffo.info !124
  %mul.s2_30fixp = trunc i64 %36 to i32, !taffo.info !122
  %37 = sitofp i32 %mul.s2_30fixp to float, !taffo.info !122
  %38 = fdiv float %37, 0x41D0000000000000, !taffo.info !122
  %idxprom75 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx76 = getelementptr inbounds i32, i32* %indices, i64 %idxprom75, !taffo.info !87, !taffo.initweight !89
  %39 = load i32, i32* %arrayidx76, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom77 = sext i32 %39 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx78.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom77, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %imag79 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx78.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %40 = load float, float* %imag79, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %s2_30fixp10 = load i32, i32* %fftSin.s2_30fixp, align 4, !taffo.info !85
  %41 = fmul float 0x41D0000000000000, %40, !taffo.info !94, !taffo.target !95
  %42 = fptosi float %41 to i32, !taffo.info !94, !taffo.target !95
  %43 = sext i32 %42 to i64, !taffo.info !94, !taffo.target !95
  %44 = sext i32 %s2_30fixp10 to i64, !taffo.info !85
  %45 = mul i64 %43, %44, !taffo.info !124
  %46 = ashr i64 %45, 30, !taffo.info !124
  %mul80.s2_30fixp = trunc i64 %46 to i32, !taffo.info !122
  %47 = sitofp i32 %mul80.s2_30fixp to float, !taffo.info !122
  %48 = fdiv float %47, 0x41D0000000000000, !taffo.info !122
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom81 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx82 = getelementptr inbounds i32, i32* %indices, i64 %idxprom81, !taffo.info !87, !taffo.initweight !89
  %50 = load i32, i32* %arrayidx82, align 4, !taffo.info !87, !taffo.initweight !96
  %conv83 = fpext float %38 to double
  %conv84 = fpext float %48 to double
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %49, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 noundef %50, double noundef %conv83, double noundef %conv84), !taffo.info !87, !taffo.initweight !33, !taffo.constinfo !99
  %real86.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0, !taffo.info !117
  %s15_17fixp15 = load i32, i32* %real86.s15_17fixp, align 4, !taffo.info !117
  %51 = ashr i32 %mul.s2_30fixp, 13, !taffo.info !122
  %add87.s15_17fixp = add i32 %s15_17fixp15, %51, !taffo.info !117
  %52 = ashr i32 %mul80.s2_30fixp, 13, !taffo.info !122
  %sub.s15_17fixp = sub i32 %add87.s15_17fixp, %52, !taffo.info !117
  %53 = sitofp i32 %sub.s15_17fixp to float, !taffo.info !117
  %54 = fdiv float %53, 1.310720e+05, !taffo.info !117
  %idxprom88 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx89 = getelementptr inbounds i32, i32* %indices, i64 %idxprom88, !taffo.info !87, !taffo.initweight !89
  %55 = load i32, i32* %arrayidx89, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom90 = sext i32 %55 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx91.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom90, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %real92 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx91.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  store float %54, float* %real92, align 4, !taffo.info !94, !taffo.target !95
  %idxprom93 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx94 = getelementptr inbounds i32, i32* %indices, i64 %idxprom93, !taffo.info !87, !taffo.initweight !89
  %56 = load i32, i32* %arrayidx94, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom95 = sext i32 %56 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx96.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom95, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %imag97 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx96.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %57 = load float, float* %imag97, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %s2_30fixp3 = load i32, i32* %fftCos.s2_30fixp, align 4, !taffo.info !85
  %58 = fmul float 0x41D0000000000000, %57, !taffo.info !94, !taffo.target !95
  %59 = fptosi float %58 to i32, !taffo.info !94, !taffo.target !95
  %60 = sext i32 %59 to i64, !taffo.info !94, !taffo.target !95
  %61 = sext i32 %s2_30fixp3 to i64, !taffo.info !85
  %62 = mul i64 %60, %61, !taffo.info !124
  %63 = ashr i64 %62, 30, !taffo.info !124
  %mul98.s2_30fixp = trunc i64 %63 to i32, !taffo.info !122
  %64 = sitofp i32 %mul98.s2_30fixp to float, !taffo.info !122
  %65 = fdiv float %64, 0x41D0000000000000, !taffo.info !122
  %idxprom99 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx100 = getelementptr inbounds i32, i32* %indices, i64 %idxprom99, !taffo.info !87, !taffo.initweight !89
  %66 = load i32, i32* %arrayidx100, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom101 = sext i32 %66 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx102.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom101, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %real103 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx102.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %67 = load float, float* %real103, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %s2_30fixp9 = load i32, i32* %fftSin.s2_30fixp, align 4, !taffo.info !85
  %68 = fmul float 0x41D0000000000000, %67, !taffo.info !94, !taffo.target !95
  %69 = fptosi float %68 to i32, !taffo.info !94, !taffo.target !95
  %70 = sext i32 %69 to i64, !taffo.info !94, !taffo.target !95
  %71 = sext i32 %s2_30fixp9 to i64, !taffo.info !85
  %72 = mul i64 %70, %71, !taffo.info !124
  %73 = ashr i64 %72, 30, !taffo.info !124
  %mul104.s2_30fixp = trunc i64 %73 to i32, !taffo.info !122
  %74 = sitofp i32 %mul104.s2_30fixp to float, !taffo.info !122
  %75 = fdiv float %74, 0x41D0000000000000, !taffo.info !122
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom105 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx106 = getelementptr inbounds i32, i32* %indices, i64 %idxprom105, !taffo.info !87, !taffo.initweight !89
  %77 = load i32, i32* %arrayidx106, align 4, !taffo.info !87, !taffo.initweight !96
  %conv107 = fpext float %65 to double
  %conv108 = fpext float %75 to double
  %call109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %76, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 noundef %77, double noundef %conv107, double noundef %conv108), !taffo.info !87, !taffo.initweight !33, !taffo.constinfo !99
  %imag110.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1, !taffo.info !117
  %s15_17fixp14 = load i32, i32* %imag110.s15_17fixp, align 4, !taffo.info !117
  %78 = ashr i32 %mul98.s2_30fixp, 13, !taffo.info !122
  %add111.s15_17fixp = add i32 %s15_17fixp14, %78, !taffo.info !117
  %79 = ashr i32 %mul104.s2_30fixp, 13, !taffo.info !122
  %add112.s15_17fixp = add i32 %add111.s15_17fixp, %79, !taffo.info !117
  %80 = sitofp i32 %add112.s15_17fixp to float, !taffo.info !117
  %81 = fdiv float %80, 1.310720e+05, !taffo.info !117
  %idxprom113 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx114 = getelementptr inbounds i32, i32* %indices, i64 %idxprom113, !taffo.info !87, !taffo.initweight !89
  %82 = load i32, i32* %arrayidx114, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom115 = sext i32 %82 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx116.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom115, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %imag117 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx116.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  store float %81, float* %imag117, align 4, !taffo.info !94, !taffo.target !95
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom118 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx119 = getelementptr inbounds i32, i32* %indices, i64 %idxprom118, !taffo.info !87, !taffo.initweight !89
  %84 = load i32, i32* %arrayidx119, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom120 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx121 = getelementptr inbounds i32, i32* %indices, i64 %idxprom120, !taffo.info !87, !taffo.initweight !89
  %85 = load i32, i32* %arrayidx121, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom122 = sext i32 %85 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx123.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom122, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %real124 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx123.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %86 = load float, float* %real124, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv125 = fpext float %86 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %idxprom126 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx127 = getelementptr inbounds i32, i32* %indices, i64 %idxprom126, !taffo.info !87, !taffo.initweight !89
  %87 = load i32, i32* %arrayidx127, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom128 = sext i32 %87 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx129.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom128, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %imag130 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx129.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %88 = load float, float* %imag130, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv131 = fpext float %88 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %83, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 noundef %84, double noundef %conv125, double noundef %conv131), !taffo.info !126, !taffo.initweight !33, !taffo.constinfo !99
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom133 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx134 = getelementptr inbounds i32, i32* %indices, i64 %idxprom133, !taffo.info !87, !taffo.initweight !89
  %90 = load i32, i32* %arrayidx134, align 4, !taffo.info !87, !taffo.initweight !96
  %real135.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0, !taffo.info !117
  %s15_17fixp13 = load i32, i32* %real135.s15_17fixp, align 4, !taffo.info !117
  %91 = sitofp i32 %s15_17fixp13 to double, !taffo.info !117
  %92 = fdiv double %91, 1.310720e+05, !taffo.info !117
  %idxprom137 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx138 = getelementptr inbounds i32, i32* %indices, i64 %idxprom137, !taffo.info !87, !taffo.initweight !89
  %93 = load i32, i32* %arrayidx138, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom139 = sext i32 %93 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx140.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom139, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %real141 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx140.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %94 = load float, float* %real141, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv142 = fpext float %94 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %s2_30fixp2 = load i32, i32* %fftCos.s2_30fixp, align 4, !taffo.info !85
  %95 = sitofp i32 %s2_30fixp2 to double, !taffo.info !85
  %96 = fdiv double %95, 0x41D0000000000000, !taffo.info !85
  %idxprom144 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx145 = getelementptr inbounds i32, i32* %indices, i64 %idxprom144, !taffo.info !87, !taffo.initweight !89
  %97 = load i32, i32* %arrayidx145, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom146 = sext i32 %97 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx147.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom146, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %imag148 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx147.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %98 = load float, float* %imag148, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv149 = fpext float %98 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %s2_30fixp8 = load i32, i32* %fftSin.s2_30fixp, align 4, !taffo.info !85
  %99 = sitofp i32 %s2_30fixp8 to double, !taffo.info !85
  %100 = fdiv double %99, 0x41D0000000000000, !taffo.info !85
  %call151.flt = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %89, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 noundef %90, double noundef %92, double noundef %conv142, double noundef %96, double noundef %conv149, double noundef %100), !taffo.info !122, !taffo.initweight !96, !taffo.constinfo !123
  %idxprom152 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx153 = getelementptr inbounds i32, i32* %indices, i64 %idxprom152, !taffo.info !87, !taffo.initweight !89
  %101 = load i32, i32* %arrayidx153, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom154 = sext i32 %101 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx155.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom154, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %real156 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx155.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %102 = load float, float* %real156, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %s2_30fixp1 = load i32, i32* %fftCos.s2_30fixp, align 4, !taffo.info !85
  %103 = fmul float 0x41D0000000000000, %102, !taffo.info !94, !taffo.target !95
  %104 = fptosi float %103 to i32, !taffo.info !94, !taffo.target !95
  %105 = sext i32 %104 to i64, !taffo.info !94, !taffo.target !95
  %106 = sext i32 %s2_30fixp1 to i64, !taffo.info !85
  %107 = mul i64 %105, %106, !taffo.info !124
  %108 = ashr i64 %107, 30, !taffo.info !124
  %mul157.s2_30fixp = trunc i64 %108 to i32, !taffo.info !122
  %109 = sitofp i32 %mul157.s2_30fixp to float, !taffo.info !122
  %110 = fdiv float %109, 0x41D0000000000000, !taffo.info !122
  %idxprom158 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx159 = getelementptr inbounds i32, i32* %indices, i64 %idxprom158, !taffo.info !87, !taffo.initweight !89
  %111 = load i32, i32* %arrayidx159, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom160 = sext i32 %111 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx161.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom160, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %imag162 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx161.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %112 = load float, float* %imag162, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %s2_30fixp7 = load i32, i32* %fftSin.s2_30fixp, align 4, !taffo.info !85
  %113 = fmul float 0x41D0000000000000, %112, !taffo.info !94, !taffo.target !95
  %114 = fptosi float %113 to i32, !taffo.info !94, !taffo.target !95
  %115 = sext i32 %114 to i64, !taffo.info !94, !taffo.target !95
  %116 = sext i32 %s2_30fixp7 to i64, !taffo.info !85
  %117 = mul i64 %115, %116, !taffo.info !124
  %118 = ashr i64 %117, 30, !taffo.info !124
  %mul163.s2_30fixp = trunc i64 %118 to i32, !taffo.info !122
  %119 = sitofp i32 %mul163.s2_30fixp to float, !taffo.info !122
  %120 = fdiv float %119, 0x41D0000000000000, !taffo.info !122
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom164 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx165 = getelementptr inbounds i32, i32* %indices, i64 %idxprom164, !taffo.info !87, !taffo.initweight !89
  %122 = load i32, i32* %arrayidx165, align 4, !taffo.info !87, !taffo.initweight !96
  %conv166 = fpext float %110 to double
  %conv167 = fpext float %120 to double
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %121, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 noundef %122, double noundef %conv166, double noundef %conv167), !taffo.info !87, !taffo.initweight !33, !taffo.constinfo !99
  %real169.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0, !taffo.info !117
  %s15_17fixp12 = load i32, i32* %real169.s15_17fixp, align 4, !taffo.info !117
  %123 = ashr i32 %mul157.s2_30fixp, 13, !taffo.info !122
  %sub170.s15_17fixp = sub i32 %s15_17fixp12, %123, !taffo.info !117
  %124 = ashr i32 %mul163.s2_30fixp, 13, !taffo.info !122
  %add171.s15_17fixp = add i32 %sub170.s15_17fixp, %124, !taffo.info !117
  %125 = sitofp i32 %add171.s15_17fixp to float, !taffo.info !117
  %126 = fdiv float %125, 1.310720e+05, !taffo.info !117
  %idxprom172 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx173 = getelementptr inbounds i32, i32* %indices, i64 %idxprom172, !taffo.info !87, !taffo.initweight !89
  %127 = load i32, i32* %arrayidx173, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom174 = sext i32 %127 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx175.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom174, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %real176 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx175.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  store float %126, float* %real176, align 4, !taffo.info !94, !taffo.target !95
  %idxprom177 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx178 = getelementptr inbounds i32, i32* %indices, i64 %idxprom177, !taffo.info !87, !taffo.initweight !89
  %128 = load i32, i32* %arrayidx178, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom179 = sext i32 %128 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx180.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom179, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %imag181 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx180.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %129 = load float, float* %imag181, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %s2_30fixp = load i32, i32* %fftCos.s2_30fixp, align 4, !taffo.info !85
  %130 = fmul float 0x41D0000000000000, %129, !taffo.info !94, !taffo.target !95
  %131 = fptosi float %130 to i32, !taffo.info !94, !taffo.target !95
  %132 = sext i32 %131 to i64, !taffo.info !94, !taffo.target !95
  %133 = sext i32 %s2_30fixp to i64, !taffo.info !85
  %134 = mul i64 %132, %133, !taffo.info !124
  %135 = ashr i64 %134, 30, !taffo.info !124
  %mul182.s2_30fixp = trunc i64 %135 to i32, !taffo.info !122
  %136 = sitofp i32 %mul182.s2_30fixp to float, !taffo.info !122
  %137 = fdiv float %136, 0x41D0000000000000, !taffo.info !122
  %idxprom183 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx184 = getelementptr inbounds i32, i32* %indices, i64 %idxprom183, !taffo.info !87, !taffo.initweight !89
  %138 = load i32, i32* %arrayidx184, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom185 = sext i32 %138 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx186.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom185, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %real187 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx186.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %139 = load float, float* %real187, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %s2_30fixp6 = load i32, i32* %fftSin.s2_30fixp, align 4, !taffo.info !85
  %140 = fmul float 0x41D0000000000000, %139, !taffo.info !94, !taffo.target !95
  %141 = fptosi float %140 to i32, !taffo.info !94, !taffo.target !95
  %142 = sext i32 %141 to i64, !taffo.info !94, !taffo.target !95
  %143 = sext i32 %s2_30fixp6 to i64, !taffo.info !85
  %144 = mul i64 %142, %143, !taffo.info !124
  %145 = ashr i64 %144, 30, !taffo.info !124
  %mul188.s2_30fixp = trunc i64 %145 to i32, !taffo.info !122
  %146 = sitofp i32 %mul188.s2_30fixp to float, !taffo.info !122
  %147 = fdiv float %146, 0x41D0000000000000, !taffo.info !122
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom189 = sext i32 %add22 to i64, !taffo.info !116
  %arrayidx190 = getelementptr inbounds i32, i32* %indices, i64 %idxprom189, !taffo.info !87, !taffo.initweight !89
  %149 = load i32, i32* %arrayidx190, align 4, !taffo.info !87, !taffo.initweight !96
  %conv191 = fpext float %137 to double
  %conv192 = fpext float %147 to double
  %call193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %148, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 noundef %149, double noundef %conv191, double noundef %conv192), !taffo.info !87, !taffo.initweight !33, !taffo.constinfo !99
  %imag194.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1, !taffo.info !117
  %s15_17fixp = load i32, i32* %imag194.s15_17fixp, align 4, !taffo.info !117
  %150 = ashr i32 %mul182.s2_30fixp, 13, !taffo.info !122
  %sub195.s15_17fixp = sub i32 %s15_17fixp, %150, !taffo.info !117
  %151 = ashr i32 %mul188.s2_30fixp, 13, !taffo.info !122
  %sub196.s15_17fixp = sub i32 %sub195.s15_17fixp, %151, !taffo.info !117
  %152 = sitofp i32 %sub196.s15_17fixp to float, !taffo.info !117
  %153 = fdiv float %152, 1.310720e+05, !taffo.info !117
  %idxprom197 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx198 = getelementptr inbounds i32, i32* %indices, i64 %idxprom197, !taffo.info !87, !taffo.initweight !89
  %154 = load i32, i32* %arrayidx198, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom199 = sext i32 %154 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx200.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom199, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %imag201 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx200.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  store float %153, float* %imag201, align 4, !taffo.info !94, !taffo.target !95
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %idxprom202 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx203 = getelementptr inbounds i32, i32* %indices, i64 %idxprom202, !taffo.info !87, !taffo.initweight !89
  %156 = load i32, i32* %arrayidx203, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom204 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx205 = getelementptr inbounds i32, i32* %indices, i64 %idxprom204, !taffo.info !87, !taffo.initweight !89
  %157 = load i32, i32* %arrayidx205, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom206 = sext i32 %157 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx207.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom206, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %real208 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx207.flt, i32 0, i32 0, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %158 = load float, float* %real208, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv209 = fpext float %158 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %idxprom210 = sext i32 %add24 to i64, !taffo.info !121
  %arrayidx211 = getelementptr inbounds i32, i32* %indices, i64 %idxprom210, !taffo.info !87, !taffo.initweight !89
  %159 = load i32, i32* %arrayidx211, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom212 = sext i32 %159 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx213.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom212, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %imag214 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx213.flt, i32 0, i32 1, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  %160 = load float, float* %imag214, align 4, !taffo.info !94, !taffo.initweight !33, !taffo.target !95
  %conv215 = fpext float %160 to double, !taffo.info !94, !taffo.initweight !97, !taffo.target !95
  %call216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* noundef %155, i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 noundef %156, double noundef %conv209, double noundef %conv215), !taffo.info !126, !taffo.initweight !33, !taffo.constinfo !99
  br label %for.inc217

for.inc217:                                       ; preds = %for.end
  %inc218 = add nsw i32 %k.0, 1, !taffo.info !106, !taffo.initweight !89, !taffo.constinfo !34
  br label %for.cond16, !llvm.loop !188

for.end219:                                       ; preds = %for.cond16
  br label %for.inc220

for.inc220:                                       ; preds = %for.end219
  %add221 = add nsw i32 %j.0, %N.0, !taffo.info !52
  br label %for.cond12, !llvm.loop !189

for.end222:                                       ; preds = %for.cond12
  br label %for.inc223

for.inc223:                                       ; preds = %for.end222
  %inc224 = add nsw i32 %i.0, 1, !taffo.info !47, !taffo.constinfo !34
  %add225 = add nsw i32 %inc224, 1, !taffo.info !52, !taffo.constinfo !34
  %shl226 = shl i32 1, %add225, !taffo.info !129, !taffo.constinfo !34
  br label %for.cond, !llvm.loop !190

for.end227:                                       ; preds = %for.cond
  br label %for.cond229

for.cond229:                                      ; preds = %for.inc239, %for.end227
  %i228.0 = phi i32 [ 0, %for.end227 ], [ %inc240, %for.inc239 ], !taffo.info !109
  %cmp230 = icmp slt i32 %i228.0, 16, !taffo.info !44
  br i1 %cmp230, label %for.body232, label %for.end241

for.body232:                                      ; preds = %for.cond229
  %idxprom233 = sext i32 %i228.0 to i64, !taffo.info !111
  %arrayidx234.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %f, i64 %idxprom233, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !132
  %idxprom235 = sext i32 %i228.0 to i64, !taffo.info !111
  %arrayidx236 = getelementptr inbounds i32, i32* %indices, i64 %idxprom235, !taffo.info !87, !taffo.initweight !89
  %161 = load i32, i32* %arrayidx236, align 4, !taffo.info !87, !taffo.initweight !96
  %idxprom237 = sext i32 %161 to i64, !taffo.info !87, !taffo.initweight !33
  %arrayidx238.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom237, !taffo.initweight !97, !taffo.structinfo !93, !taffo.target !95
  %162 = bitcast %struct.Complex* %arrayidx234.flt to i8*, !taffo.info !94, !taffo.initweight !96, !taffo.target !132
  %163 = bitcast %struct.Complex* %arrayidx238.flt to i8*, !taffo.info !94, !taffo.initweight !96, !taffo.target !95
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %162, i8* align 4 %163, i64 8, i1 false), !taffo.info !94, !taffo.initweight !33, !taffo.constinfo !133, !taffo.target !95
  br label %for.inc239

for.inc239:                                       ; preds = %for.body232
  %inc240 = add nsw i32 %i228.0, 1, !taffo.info !113, !taffo.constinfo !34
  br label %for.cond229, !llvm.loop !191

for.end241:                                       ; preds = %for.cond229
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @fftSinCos.2.5_fixp(i32 noundef %x.u22_10fixp, i32* noundef %s.s2_30fixp, i32* noundef %c.s2_30fixp) #0 !taffo.initweight !171 !taffo.funinfo !173 !taffo.sourceFunction !23 {
entry:
  %conv.u1_31fixp = shl i32 %x.u22_10fixp, 21, !taffo.info !25
  %0 = sext i32 -1686629714 to i64
  %1 = zext i32 %conv.u1_31fixp to i64, !taffo.info !25
  %2 = mul i64 %0, %1, !taffo.info !177, !taffo.constinfo !30
  %3 = ashr i64 %2, 31, !taffo.info !177, !taffo.constinfo !30
  %mul.s4_28fixp = trunc i64 %3 to i32, !taffo.info !180
  %4 = sitofp i32 %mul.s4_28fixp to double, !taffo.info !180
  %5 = fdiv double %4, 0x41B0000000000000, !taffo.info !180
  %call.flt = call double @sin(double noundef %5) #5, !taffo.info !182, !taffo.initweight !33, !taffo.constinfo !34
  %6 = fmul double 0x41B0000000000000, %call.flt, !taffo.info !182, !taffo.constinfo !34
  %call.flt.fallback.s4_28fixp = fptosi double %6 to i32, !taffo.info !182
  %conv4.s2_30fixp = shl i32 %call.flt.fallback.s4_28fixp, 2, !taffo.info !183
  store i32 %conv4.s2_30fixp, i32* %s.s2_30fixp, align 4, !taffo.info !35
  %conv5.u1_31fixp = shl i32 %x.u22_10fixp, 21, !taffo.info !25
  %7 = sext i32 -1686629714 to i64
  %8 = zext i32 %conv5.u1_31fixp to i64, !taffo.info !25
  %9 = mul i64 %7, %8, !taffo.info !177, !taffo.constinfo !30
  %10 = ashr i64 %9, 31, !taffo.info !177, !taffo.constinfo !30
  %mul6.s4_28fixp = trunc i64 %10 to i32, !taffo.info !180
  %11 = sitofp i32 %mul6.s4_28fixp to double, !taffo.info !180
  %12 = fdiv double %11, 0x41B0000000000000, !taffo.info !180
  %call7.flt = call double @cos(double noundef %12) #5, !taffo.info !182, !taffo.initweight !33, !taffo.constinfo !34
  %13 = fmul double 0x41B0000000000000, %call7.flt, !taffo.info !182, !taffo.constinfo !34
  %call7.flt.fallback.s4_28fixp = fptosi double %13 to i32, !taffo.info !182
  %conv8.s2_30fixp = shl i32 %call7.flt.fallback.s4_28fixp, 2, !taffo.info !183
  store i32 %conv8.s2_30fixp, i32* %c.s2_30fixp, align 4, !taffo.info !35
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

!llvm.module.flags = !{!16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.050000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.170000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.150000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.160000e+02}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 1.140000e+02}
!10 = !{i1 false, !11, i1 false, i2 0}
!11 = !{double 0.000000e+00, double 1.190000e+02}
!12 = !{i1 false, !13, i1 false, i2 0}
!13 = !{double 0.000000e+00, double 1.210000e+02}
!14 = !{i1 false, !15, i1 false, i2 0}
!15 = !{double 0.000000e+00, double 1.020000e+02}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 2}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"Ubuntu clang version 15.0.7"}
!22 = !{i32 2, i32 -1, i32 -1}
!23 = distinct !{null}
!24 = !{i32 1, !25, i32 0, i1 false, i32 0, i1 false}
!25 = !{!26, !27, i1 false, i2 -1}
!26 = !{!"fixp", i32 32, i32 31}
!27 = !{double 0.000000e+00, double 1.000000e+00}
!28 = !{!29, !27, i1 false, i2 -1}
!29 = !{!"fixp", i32 64, i32 59}
!30 = !{!31, i1 false}
!31 = !{i1 false, !32, i1 false, i2 0}
!32 = !{double 0xC01921FB54442D18, double 0xC01921FB54442D18}
!33 = !{i32 4}
!34 = !{i1 false, i1 false}
!35 = !{i1 false, !36, i1 false, i2 -1}
!36 = !{double -1.000000e+00, double 1.000000e+00}
!37 = !{i32 -1}
!38 = !{i32 0, i1 false}
!39 = !{i32 1, !40}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 1.600000e+01, double 1.600000e+01}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 0.000000e+00, double 0.000000e+00}
!44 = !{i1 false, !27, i1 false, i2 0}
!45 = !{i1 false, !46, i1 false, i2 0}
!46 = !{double 8.000000e+00, double 1.600000e+01}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 1.000000e+00, double 1.000000e+00}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 8.000000e+00, double 8.000000e+00}
!51 = !{i1 false, !52}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 2.000000e+00, double 2.000000e+00}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 7.000000e+00, double 1.500000e+01}
!58 = !{i1 false, !47}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 0.000000e+00, double 2.400000e+01}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 0x3E60000000000000, double 5.000000e-01}
!63 = !{i1 false, !64, i1 false, i2 0}
!64 = !{double -5.000000e+00, double 1.500000e+01}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double -5.000000e+00, double 0x402DFFFFFE000000}
!67 = !{i1 false, !68, i1 false, i2 0}
!68 = !{double 0x3E60000000000000, double 2.500000e-01}
!69 = !{i1 false, !70}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 5.000000e-01, double 5.000000e-01}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 1.000000e+00, double 2.400000e+01}
!74 = distinct !{!74, !55}
!75 = !{i1 false, !76, i1 false, i2 0}
!76 = !{double 0.000000e+00, double 1.300000e+01}
!77 = !{void (i32*)* @calcFftIndices.1}
!78 = !{!40, i1 false}
!79 = distinct !{!79, !55}
!80 = distinct !{!80, !55}
!81 = !{i32 -1, i32 -1, i32 -1}
!82 = distinct !{null}
!83 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!84 = !{i1 true}
!85 = !{!86, !36, i1 false, i2 1}
!86 = !{!"fixp", i32 -32, i32 30}
!87 = !{i1 false, !88, i1 false, i2 -2}
!88 = !{double 1.000000e+00, double 0x4150000000000000}
!89 = !{i32 2}
!90 = !{void (i32*)* @calcFftIndices}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 2.000000e+00, double 4.000000e+00}
!93 = !{!94, !94}
!94 = !{i1 false, i1 false, i1 false, i2 1}
!95 = !{!"x"}
!96 = !{i32 3}
!97 = !{i32 5}
!98 = !{i32 6}
!99 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!100 = !{i1 false, !101, i1 false, i2 0}
!101 = !{double 0.000000e+00, double 2.000000e+00}
!102 = !{i32 0}
!103 = !{i1 false, !43, i1 false, i2 -2}
!104 = !{i1 false, !105, i1 false, i2 -2}
!105 = !{double 5.000000e-01, double 0x4140000000000000}
!106 = !{i1 false, !107, i1 false, i2 -2}
!107 = !{double 2.000000e+00, double 0x4150000040000000}
!108 = !{i1 false, i1 false, i1 false, i1 false}
!109 = !{i1 false, !110, i1 false, i2 0}
!110 = !{double 0.000000e+00, double 1.700000e+01}
!111 = !{i1 false, !112, i1 false, i2 0}
!112 = !{double 0.000000e+00, double 1.600000e+01}
!113 = !{i1 false, !114, i1 false, i2 0}
!114 = !{double 1.000000e+00, double 1.700000e+01}
!115 = distinct !{!115, !55}
!116 = !{i1 false, !88, i1 false, i2 0}
!117 = !{!118, !119, i1 false, i2 -1}
!118 = !{!"fixp", i32 -32, i32 17}
!119 = !{double -1.000000e+04, double 1.000000e+04}
!120 = !{i1 false, !119, i1 false, i2 -1}
!121 = !{i1 false, !107, i1 false, i2 0}
!122 = !{!86, i1 false, i1 false, i2 1}
!123 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!124 = !{!125, i1 false, i1 false, i2 1}
!125 = !{!"fixp", i32 -64, i32 60}
!126 = !{i1 false, !88, i1 false, i2 -1}
!127 = distinct !{!127, !55}
!128 = distinct !{!128, !55}
!129 = !{i1 false, !130, i1 false, i2 0}
!130 = !{double 4.000000e+00, double 4.000000e+00}
!131 = distinct !{!131, !55}
!132 = !{!"f"}
!133 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!134 = distinct !{!134, !55}
!135 = !{i32 -1, i32 -1}
!136 = !{i32 0, i1 false, i32 0, i1 false}
!137 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!138 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!139 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!140 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!141 = !{!"x_w"}
!142 = !{!"f_w"}
!143 = !{i32 1}
!144 = distinct !{!144, !55}
!145 = distinct !{!145, !55}
!146 = !{i1 false, i1 false, i1 false}
!147 = !{!42, i1 false}
!148 = distinct !{!148, !55}
!149 = distinct !{!149, !55}
!150 = !{void (i32*)* @calcFftIndices.1.4}
!151 = !{i32 1, !87}
!152 = !{i1 false, !153, i1 false, i2 0}
!153 = !{double -1.000000e+00, double 1.200000e+01}
!154 = !{i1 false, !155, i1 false, i2 0}
!155 = !{double 0xC3E0000000000000, double 4.096000e+03}
!156 = !{i1 false, !157, i1 false, i2 0}
!157 = !{double 1.000000e+00, double 2.000000e+00}
!158 = !{i1 false, !159, i1 false, i2 0}
!159 = !{double 2.000000e+00, double 3.000000e+00}
!160 = !{i1 false, !161, i1 false, i2 0}
!161 = !{double -2.000000e+00, double 1.100000e+01}
!162 = !{i1 false, !163, i1 false, i2 0}
!163 = !{double 0x43D0000000000000, double 2.048000e+03}
!164 = !{i32 7}
!165 = !{i1 false, !166, i1 false, i2 0}
!166 = !{double 3.000000e+00, double 3.000000e+00}
!167 = distinct !{!167, !55}
!168 = distinct !{!168, !55}
!169 = distinct !{!169, !55}
!170 = distinct !{!170, !55}
!171 = !{i32 2, i32 1, i32 1}
!172 = distinct !{null}
!173 = !{i32 1, !174, i32 1, !85, i32 1, !85}
!174 = !{!175, !105, i1 false, i2 1}
!175 = !{!"fixp", i32 32, i32 10}
!176 = !{void (float, float*, float*)* @fftSinCos}
!177 = !{!178, !179, i1 false, i2 -1}
!178 = !{!"fixp", i32 -64, i32 59}
!179 = !{double 0xC01921FB54442D18, double -0.000000e+00}
!180 = !{!181, !179, i1 false, i2 -1}
!181 = !{!"fixp", i32 -32, i32 28}
!182 = !{!181, !36, i1 false, i2 -1}
!183 = !{!86, !36, i1 false, i2 -1}
!184 = !{i32 -1, i32 2, i32 2}
!185 = !{i32 0, i1 false, i32 2, !93, i32 2, !93}
!186 = !{void (i32*, %struct.Complex*, %struct.Complex*)* @radix2DitCooleyTykeyFft}
!187 = distinct !{!187, !55}
!188 = distinct !{!188, !55}
!189 = distinct !{!189, !55}
!190 = distinct !{!190, !55}
!191 = distinct !{!191, !55}
