; ModuleID = '/tmp/tmp.mNDx9XmYZ0/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.8 = private unnamed_addr constant [8 x i8] c"Input:\0A\00", align 1, !taffo.info !0
@.str.9 = private unnamed_addr constant [19 x i8] c"%d) %.4lf\09Jx%.4lf\0A\00", align 1, !taffo.info !2
@.str.10 = private unnamed_addr constant [10 x i8] c"Results:\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @log2_manual(i32 noundef %n) #0 !taffo.initweight !10 !taffo.funinfo !11 {
entry:
  %cmp = icmp sle i32 %n, 0, !taffo.info !12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %dec = add nsw i32 %n, -1, !taffo.constinfo !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %log_val.0 = phi i32 [ 0, %if.end ], [ %inc, %while.body ], !taffo.info !12
  %n.addr.0 = phi i32 [ %dec, %if.end ], [ %shr, %while.body ]
  %cmp1 = icmp sgt i32 %n.addr.0, 0, !taffo.info !12
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %shr = ashr i32 %n.addr.0, 1, !taffo.constinfo !14
  %inc = add nsw i32 %log_val.0, 1, !taffo.info !15, !taffo.constinfo !14
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  br label %return

return:                                           ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %log_val.0, %while.end ], !taffo.info !19
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fft(i32 noundef %n, double* noundef %in_real, double* noundef %in_imag, double* noundef %out_real, double* noundef %out_imag, i32 noundef %inverse) #0 !taffo.initweight !21 !taffo.funinfo !22 !taffo.equivalentChild !23 {
entry:
  %call = call i32 @log2_manual(i32 noundef %n), !taffo.constinfo !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ]
  %cmp = icmp slt i32 %i.0, %n
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %rev.0 = phi i32 [ 0, %for.body ], [ %or, %for.inc ]
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %j.0, %call
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %shl = shl i32 %rev.0, 1, !taffo.constinfo !14
  %shr = ashr i32 %i.0, %j.0
  %and = and i32 %shr, 1, !taffo.constinfo !14
  %or = or i32 %shl, %and
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !14
  br label %for.cond1, !llvm.loop !24

for.end:                                          ; preds = %for.cond1
  %idxprom = sext i32 %rev.0 to i64
  %arrayidx = getelementptr inbounds double, double* %in_real, i64 %idxprom
  %0 = load double, double* %arrayidx, align 8
  %idxprom4 = sext i32 %i.0 to i64
  %arrayidx5 = getelementptr inbounds double, double* %out_real, i64 %idxprom4
  store double %0, double* %arrayidx5, align 8
  %idxprom6 = sext i32 %rev.0 to i64
  %arrayidx7 = getelementptr inbounds double, double* %in_imag, i64 %idxprom6
  %1 = load double, double* %arrayidx7, align 8
  %idxprom8 = sext i32 %i.0 to i64
  %arrayidx9 = getelementptr inbounds double, double* %out_imag, i64 %idxprom8
  store double %1, double* %arrayidx9, align 8
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.constinfo !14
  br label %for.cond, !llvm.loop !25

for.end12:                                        ; preds = %for.cond
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc91, %for.end12
  %step.0 = phi i32 [ 2, %for.end12 ], [ %shl92, %for.inc91 ]
  %cmp22 = icmp sle i32 %step.0, %n
  br i1 %cmp22, label %for.body23, label %for.end93

for.body23:                                       ; preds = %for.cond21
  %shr24 = ashr i32 %step.0, 1, !taffo.constinfo !14
  %conv = sitofp i32 %step.0 to double
  %div = fdiv double 0x401921FB54442D18, %conv, !taffo.constinfo !26
  %tobool = icmp ne i32 %inverse, 0
  %cond = select i1 %tobool, i32 -1, i32 1
  %conv25 = sitofp i32 %cond to double
  %mul = fmul double %div, %conv25
  %call26.flt = call double @cos(double noundef %mul) #3, !taffo.info !29, !taffo.initweight !31, !taffo.constinfo !14
  %2 = fmul double 0x41D0000000000000, %call26.flt, !taffo.info !29, !taffo.constinfo !14
  %call26.flt.fallback.s2_30fixp = fptosi double %2 to i32, !taffo.info !29
  %call27.flt = call double @sin(double noundef %mul) #3, !taffo.info !29, !taffo.initweight !31, !taffo.constinfo !14
  %3 = fmul double 0x41D0000000000000, %call27.flt, !taffo.info !29, !taffo.constinfo !14
  %call27.flt.fallback.s2_30fixp = fptosi double %3 to i32, !taffo.info !29
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc88, %for.body23
  %i28.0 = phi i32 [ 0, %for.body23 ], [ %add89, %for.inc88 ]
  %cmp30 = icmp slt i32 %i28.0, %n
  br i1 %cmp30, label %for.body32, label %for.end90

for.body32:                                       ; preds = %for.cond29
  %4 = lshr i32 0, 8
  %5 = lshr i32 -2147483648, 7
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc85, %for.body32
  %x_real.0.s8_24fixp = phi i32 [ %5, %for.body32 ], [ %79, %for.inc85 ], !taffo.info !32
  %x_imag.0.s8_24fixp = phi i32 [ %4, %for.body32 ], [ %78, %for.inc85 ], !taffo.info !32
  %j33.0 = phi i32 [ 0, %for.body32 ], [ %inc86, %for.inc85 ]
  %cmp35 = icmp slt i32 %j33.0, %shr24
  br i1 %cmp35, label %for.body37, label %for.end87

for.body37:                                       ; preds = %for.cond34
  %add = add nsw i32 %i28.0, %j33.0
  %add38 = add nsw i32 %add, %shr24
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds double, double* %out_real, i64 %idxprom39
  %6 = load double, double* %arrayidx40, align 8
  %add42 = add nsw i32 %i28.0, %j33.0
  %add43 = add nsw i32 %add42, %shr24
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds double, double* %out_imag, i64 %idxprom44
  %7 = load double, double* %arrayidx45, align 8
  %8 = fmul double 0x4170000000000000, %7, !taffo.info !32
  %9 = fptosi double %8 to i32, !taffo.info !32
  %10 = sext i32 %x_imag.0.s8_24fixp to i64, !taffo.info !32
  %11 = sext i32 %9 to i64, !taffo.info !32
  %12 = mul i64 %10, %11, !taffo.info !35
  %13 = ashr i64 %12, 24, !taffo.info !35
  %mul46.s8_24fixp = trunc i64 %13 to i32, !taffo.info !32
  %neg.s8_24fixp = sub i32 0, %mul46.s8_24fixp, !taffo.info !32
  %14 = fmul double 0x4170000000000000, %6, !taffo.info !32
  %15 = fptosi double %14 to i32, !taffo.info !32
  %16 = sext i32 %x_real.0.s8_24fixp to i64, !taffo.info !32
  %17 = sext i32 %15 to i64, !taffo.info !32
  %18 = mul i64 %16, %17, !taffo.info !35
  %19 = ashr i64 %18, 24
  %20 = trunc i64 %19 to i32
  %s8_24fixp3 = add i32 %20, %neg.s8_24fixp, !taffo.info !32
  %add47 = add nsw i32 %i28.0, %j33.0
  %add48 = add nsw i32 %add47, %shr24
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds double, double* %out_imag, i64 %idxprom49
  %21 = load double, double* %arrayidx50, align 8
  %add52 = add nsw i32 %i28.0, %j33.0
  %add53 = add nsw i32 %add52, %shr24
  %idxprom54 = sext i32 %add53 to i64
  %arrayidx55 = getelementptr inbounds double, double* %out_real, i64 %idxprom54
  %22 = load double, double* %arrayidx55, align 8
  %23 = fmul double 0x4170000000000000, %22, !taffo.info !32
  %24 = fptosi double %23 to i32, !taffo.info !32
  %25 = sext i32 %x_imag.0.s8_24fixp to i64, !taffo.info !32
  %26 = sext i32 %24 to i64, !taffo.info !32
  %27 = mul i64 %25, %26, !taffo.info !35
  %28 = ashr i64 %27, 24, !taffo.info !35
  %mul56.s8_24fixp = trunc i64 %28 to i32, !taffo.info !32
  %29 = fmul double 0x4170000000000000, %21, !taffo.info !32
  %30 = fptosi double %29 to i32, !taffo.info !32
  %31 = sext i32 %x_real.0.s8_24fixp to i64, !taffo.info !32
  %32 = sext i32 %30 to i64, !taffo.info !32
  %33 = mul i64 %31, %32, !taffo.info !35
  %34 = ashr i64 %33, 24
  %35 = trunc i64 %34 to i32
  %s8_24fixp = add i32 %35, %mul56.s8_24fixp, !taffo.info !32
  %add57 = add nsw i32 %i28.0, %j33.0
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds double, double* %out_real, i64 %idxprom58
  %36 = load double, double* %arrayidx59, align 8
  %37 = fmul double 0x4140000000000000, %36, !taffo.info !37
  %38 = fptosi double %37 to i32, !taffo.info !37
  %39 = ashr i32 %s8_24fixp3, 3, !taffo.info !32
  %sub.s11_21fixp = sub i32 %38, %39, !taffo.info !37
  %40 = sitofp i32 %sub.s11_21fixp to double, !taffo.info !37
  %41 = fdiv double %40, 0x4140000000000000, !taffo.info !37
  %add60 = add nsw i32 %i28.0, %j33.0
  %add61 = add nsw i32 %add60, %shr24
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds double, double* %out_real, i64 %idxprom62
  store double %41, double* %arrayidx63, align 8, !taffo.info !40
  %add64 = add nsw i32 %i28.0, %j33.0
  %idxprom65 = sext i32 %add64 to i64
  %arrayidx66 = getelementptr inbounds double, double* %out_imag, i64 %idxprom65
  %42 = load double, double* %arrayidx66, align 8
  %43 = fmul double 0x4140000000000000, %42, !taffo.info !37
  %44 = fptosi double %43 to i32, !taffo.info !37
  %45 = ashr i32 %s8_24fixp, 3, !taffo.info !32
  %sub67.s11_21fixp = sub i32 %44, %45, !taffo.info !37
  %46 = sitofp i32 %sub67.s11_21fixp to double, !taffo.info !37
  %47 = fdiv double %46, 0x4140000000000000, !taffo.info !37
  %add68 = add nsw i32 %i28.0, %j33.0
  %add69 = add nsw i32 %add68, %shr24
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds double, double* %out_imag, i64 %idxprom70
  store double %47, double* %arrayidx71, align 8, !taffo.info !40
  %add72 = add nsw i32 %i28.0, %j33.0
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds double, double* %out_real, i64 %idxprom73
  %48 = load double, double* %arrayidx74, align 8
  %49 = fmul double 0x4140000000000000, %48, !taffo.info !37
  %50 = fptosi double %49 to i32, !taffo.info !37
  %51 = ashr i32 %s8_24fixp3, 3, !taffo.info !32
  %add75.s11_21fixp = add i32 %50, %51, !taffo.info !37
  %52 = sitofp i32 %add75.s11_21fixp to double, !taffo.info !37
  %53 = fdiv double %52, 0x4140000000000000, !taffo.info !37
  store double %53, double* %arrayidx74, align 8, !taffo.info !40
  %add76 = add nsw i32 %i28.0, %j33.0
  %idxprom77 = sext i32 %add76 to i64
  %arrayidx78 = getelementptr inbounds double, double* %out_imag, i64 %idxprom77
  %54 = load double, double* %arrayidx78, align 8
  %55 = fmul double 0x4140000000000000, %54, !taffo.info !37
  %56 = fptosi double %55 to i32, !taffo.info !37
  %57 = ashr i32 %s8_24fixp, 3, !taffo.info !32
  %add79.s11_21fixp = add i32 %56, %57, !taffo.info !37
  %58 = sitofp i32 %add79.s11_21fixp to double, !taffo.info !37
  %59 = fdiv double %58, 0x4140000000000000, !taffo.info !37
  store double %59, double* %arrayidx78, align 8, !taffo.info !40
  %60 = sext i32 %x_imag.0.s8_24fixp to i64, !taffo.info !32
  %61 = sext i32 %call27.flt.fallback.s2_30fixp to i64, !taffo.info !29
  %62 = mul i64 %60, %61, !taffo.info !41
  %63 = ashr i64 %62, 24, !taffo.info !41
  %mul81.s2_30fixp = trunc i64 %63 to i32, !taffo.info !29
  %neg82.s2_30fixp = sub i32 0, %mul81.s2_30fixp, !taffo.info !29
  %64 = sext i32 %x_real.0.s8_24fixp to i64, !taffo.info !32
  %65 = sext i32 %call26.flt.fallback.s2_30fixp to i64, !taffo.info !29
  %66 = mul i64 %64, %65, !taffo.info !41
  %67 = ashr i64 %66, 24
  %68 = trunc i64 %67 to i32
  %s2_30fixp4 = add i32 %68, %neg82.s2_30fixp, !taffo.info !29
  %69 = sext i32 %x_imag.0.s8_24fixp to i64, !taffo.info !32
  %70 = sext i32 %call26.flt.fallback.s2_30fixp to i64, !taffo.info !29
  %71 = mul i64 %69, %70, !taffo.info !41
  %72 = ashr i64 %71, 24, !taffo.info !41
  %mul84.s2_30fixp = trunc i64 %72 to i32, !taffo.info !29
  %73 = sext i32 %x_real.0.s8_24fixp to i64, !taffo.info !32
  %74 = sext i32 %call27.flt.fallback.s2_30fixp to i64, !taffo.info !29
  %75 = mul i64 %73, %74, !taffo.info !41
  %76 = ashr i64 %75, 24
  %77 = trunc i64 %76 to i32
  %s2_30fixp = add i32 %77, %mul84.s2_30fixp, !taffo.info !29
  br label %for.inc85

for.inc85:                                        ; preds = %for.body37
  %inc86 = add nsw i32 %j33.0, 1, !taffo.constinfo !14
  %78 = ashr i32 %s2_30fixp, 6, !taffo.info !29
  %79 = ashr i32 %s2_30fixp4, 6, !taffo.info !29
  br label %for.cond34, !llvm.loop !43

for.end87:                                        ; preds = %for.cond34
  br label %for.inc88

for.inc88:                                        ; preds = %for.end87
  %add89 = add nsw i32 %i28.0, %step.0
  br label %for.cond29, !llvm.loop !44

for.end90:                                        ; preds = %for.cond29
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %shl92 = shl i32 %step.0, 1, !taffo.constinfo !14
  br label %for.cond21, !llvm.loop !45

for.end93:                                        ; preds = %for.cond21
  %tobool94 = icmp ne i32 %inverse, 0
  br i1 %tobool94, label %if.then, label %if.end

if.then:                                          ; preds = %for.end93
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc108, %if.then
  %i95.0 = phi i32 [ 0, %if.then ], [ %inc109, %for.inc108 ]
  %cmp97 = icmp slt i32 %i95.0, %n
  br i1 %cmp97, label %for.body99, label %for.end110

for.body99:                                       ; preds = %for.cond96
  %conv100 = sitofp i32 %n to double
  %idxprom101 = sext i32 %i95.0 to i64
  %arrayidx102 = getelementptr inbounds double, double* %out_real, i64 %idxprom101
  %80 = load double, double* %arrayidx102, align 8
  %div103 = fdiv double %80, %conv100
  store double %div103, double* %arrayidx102, align 8
  %conv104 = sitofp i32 %n to double
  %idxprom105 = sext i32 %i95.0 to i64
  %arrayidx106 = getelementptr inbounds double, double* %out_imag, i64 %idxprom105
  %81 = load double, double* %arrayidx106, align 8
  %div107 = fdiv double %81, %conv104
  store double %div107, double* %arrayidx106, align 8
  br label %for.inc108

for.inc108:                                       ; preds = %for.body99
  %inc109 = add nsw i32 %i95.0, 1, !taffo.constinfo !14
  br label %for.cond96, !llvm.loop !46

for.end110:                                       ; preds = %for.cond96
  br label %if.end

if.end:                                           ; preds = %for.end110, %for.end93
  ret void
}

; Function Attrs: nounwind
declare !taffo.initweight !10 !taffo.funinfo !11 double @cos(double noundef) #1

; Function Attrs: nounwind
declare !taffo.initweight !10 !taffo.funinfo !11 double @sin(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fftWrapper(i32 noundef %n, double* noundef %in_real, double* noundef %in_imag, double* noundef %out_real, double* noundef %out_imag, i32 noundef %inverse) #0 !taffo.initweight !21 !taffo.funinfo !22 !taffo.start !47 {
entry:
  %in_real_fixed.s2_30fixp = alloca [64 x i32], align 16, !taffo.info !29, !taffo.target !48
  %in_imag_fixed.s2_30fixp = alloca [64 x i32], align 16, !taffo.info !29, !taffo.target !49
  %out_real_fixed.s11_21fixp = alloca [64 x i32], align 16, !taffo.info !37, !taffo.target !50
  %out_imag_fixed.s11_21fixp = alloca [64 x i32], align 16, !taffo.info !37, !taffo.target !51
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !52
  %cmp = icmp slt i32 %i.0, 64, !taffo.info !12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !54
  %arrayidx = getelementptr inbounds double, double* %in_real, i64 %idxprom
  %.flt = load double, double* %arrayidx, align 8, !taffo.info !29, !taffo.initweight !56, !taffo.target !48
  %0 = fmul double 0x41D0000000000000, %.flt, !taffo.info !29, !taffo.target !48
  %.flt.fallback.s2_30fixp = fptosi double %0 to i32, !taffo.info !29, !taffo.target !48
  %idxprom5 = sext i32 %i.0 to i64, !taffo.info !54
  %arrayidx6.s2_30fixp = getelementptr inbounds [64 x i32], [64 x i32]* %in_real_fixed.s2_30fixp, i64 0, i64 %idxprom5, !taffo.info !29, !taffo.target !48
  store i32 %.flt.fallback.s2_30fixp, i32* %arrayidx6.s2_30fixp, align 8, !taffo.info !57, !taffo.target !48
  %idxprom7 = sext i32 %i.0 to i64, !taffo.info !54
  %arrayidx8 = getelementptr inbounds double, double* %in_imag, i64 %idxprom7
  %.flt1 = load double, double* %arrayidx8, align 8, !taffo.info !29, !taffo.initweight !56, !taffo.target !49
  %1 = fmul double 0x41D0000000000000, %.flt1, !taffo.info !29, !taffo.target !49
  %.flt1.fallback.s2_30fixp = fptosi double %1 to i32, !taffo.info !29, !taffo.target !49
  %idxprom9 = sext i32 %i.0 to i64, !taffo.info !54
  %arrayidx10.s2_30fixp = getelementptr inbounds [64 x i32], [64 x i32]* %in_imag_fixed.s2_30fixp, i64 0, i64 %idxprom9, !taffo.info !29, !taffo.target !49
  store i32 %.flt1.fallback.s2_30fixp, i32* %arrayidx10.s2_30fixp, align 8, !taffo.info !57, !taffo.target !49
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !58, !taffo.constinfo !14
  br label %for.cond, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  %arraydecay.s2_30fixp = getelementptr inbounds [64 x i32], [64 x i32]* %in_real_fixed.s2_30fixp, i64 0, i64 0, !taffo.info !29, !taffo.target !48
  %arraydecay11.s2_30fixp = getelementptr inbounds [64 x i32], [64 x i32]* %in_imag_fixed.s2_30fixp, i64 0, i64 0, !taffo.info !29, !taffo.target !49
  %arraydecay12.s11_21fixp = getelementptr inbounds [64 x i32], [64 x i32]* %out_real_fixed.s11_21fixp, i64 0, i64 0, !taffo.info !37, !taffo.target !50
  %arraydecay13.s11_21fixp = getelementptr inbounds [64 x i32], [64 x i32]* %out_imag_fixed.s11_21fixp, i64 0, i64 0, !taffo.info !37, !taffo.target !51
  call void @fft.1_fixp(i32 %n, i32* %arraydecay.s2_30fixp, i32* %arraydecay11.s2_30fixp, i32* %arraydecay12.s11_21fixp, i32* %arraydecay13.s11_21fixp, i32 0), !taffo.info !57, !taffo.constinfo !61, !taffo.target !48
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc26, %for.end
  %i14.0 = phi i32 [ 0, %for.end ], [ %inc27, %for.inc26 ], !taffo.info !52
  %cmp16 = icmp slt i32 %i14.0, 64, !taffo.info !12
  br i1 %cmp16, label %for.body17, label %for.end28

for.body17:                                       ; preds = %for.cond15
  %idxprom18 = sext i32 %i14.0 to i64, !taffo.info !54
  %arrayidx19.s11_21fixp = getelementptr inbounds [64 x i32], [64 x i32]* %out_real_fixed.s11_21fixp, i64 0, i64 %idxprom18, !taffo.info !37, !taffo.target !50
  %s11_21fixp2 = load i32, i32* %arrayidx19.s11_21fixp, align 8, !taffo.info !37, !taffo.target !50
  %2 = sitofp i32 %s11_21fixp2 to double, !taffo.info !37, !taffo.target !50
  %3 = fdiv double %2, 0x4140000000000000, !taffo.info !37, !taffo.target !50
  %idxprom20 = sext i32 %i14.0 to i64, !taffo.info !54
  %arrayidx21 = getelementptr inbounds double, double* %out_real, i64 %idxprom20
  store double %3, double* %arrayidx21, align 8, !taffo.info !40, !taffo.target !50
  %idxprom22 = sext i32 %i14.0 to i64, !taffo.info !54
  %arrayidx23.s11_21fixp = getelementptr inbounds [64 x i32], [64 x i32]* %out_imag_fixed.s11_21fixp, i64 0, i64 %idxprom22, !taffo.info !37, !taffo.target !51
  %s11_21fixp = load i32, i32* %arrayidx23.s11_21fixp, align 8, !taffo.info !37, !taffo.target !51
  %4 = sitofp i32 %s11_21fixp to double, !taffo.info !37, !taffo.target !51
  %5 = fdiv double %4, 0x4140000000000000, !taffo.info !37, !taffo.target !51
  %idxprom24 = sext i32 %i14.0 to i64, !taffo.info !54
  %arrayidx25 = getelementptr inbounds double, double* %out_imag, i64 %idxprom24
  store double %5, double* %arrayidx25, align 8, !taffo.info !40, !taffo.target !51
  br label %for.inc26

for.inc26:                                        ; preds = %for.body17
  %inc27 = add nsw i32 %i14.0, 1, !taffo.info !58, !taffo.constinfo !14
  br label %for.cond15, !llvm.loop !62

for.end28:                                        ; preds = %for.cond15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @lcg_pseudo_random(i64 noundef %seed) #0 !taffo.initweight !10 !taffo.funinfo !11 {
entry:
  %mul = mul nsw i64 1103515245, %seed, !taffo.constinfo !14
  %add = add nsw i64 %mul, 12345, !taffo.constinfo !14
  %rem = srem i64 %add, 2147483648, !taffo.constinfo !14
  ret i64 %rem
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !63 !taffo.funinfo !63 {
entry:
  %in_real = alloca [64 x double], align 16
  %in_imag = alloca [64 x double], align 16
  %out_real = alloca [64 x double], align 16
  %out_imag = alloca [64 x double], align 16
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)), !taffo.constinfo !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 2, !taffo.constinfo !14
  %conv = sext i32 %mul to i64
  %call1 = call i64 @lcg_pseudo_random(i64 noundef %conv), !taffo.constinfo !14
  %rem = srem i64 %call1, 200, !taffo.constinfo !14
  %sub = sub nsw i64 %rem, 100, !taffo.constinfo !14
  %conv2 = sitofp i64 %sub to double
  %div = fdiv double %conv2, 1.000000e+02, !taffo.constinfo !64
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [64 x double], [64 x double]* %in_real, i64 0, i64 %idxprom
  store double %div, double* %arrayidx, align 8
  %mul3 = mul nsw i32 %i.0, 2, !taffo.constinfo !14
  %add = add nsw i32 %mul3, 1, !taffo.constinfo !14
  %conv4 = sext i32 %add to i64
  %call5 = call i64 @lcg_pseudo_random(i64 noundef %conv4), !taffo.constinfo !14
  %rem6 = srem i64 %call5, 200, !taffo.constinfo !14
  %sub7 = sub nsw i64 %rem6, 100, !taffo.constinfo !14
  %conv8 = sitofp i64 %sub7 to double
  %div9 = fdiv double %conv8, 1.000000e+02, !taffo.constinfo !64
  %idxprom10 = sext i32 %i.0 to i64
  %arrayidx11 = getelementptr inbounds [64 x double], [64 x double]* %in_imag, i64 0, i64 %idxprom10
  store double %div9, double* %arrayidx11, align 8
  %idxprom12 = sext i32 %i.0 to i64
  %arrayidx13 = getelementptr inbounds [64 x double], [64 x double]* %in_real, i64 0, i64 %idxprom12
  %0 = load double, double* %arrayidx13, align 8
  %idxprom14 = sext i32 %i.0 to i64
  %arrayidx15 = getelementptr inbounds [64 x double], [64 x double]* %in_imag, i64 0, i64 %idxprom14
  %1 = load double, double* %arrayidx15, align 8
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 noundef %i.0, double noundef %0, double noundef %1), !taffo.constinfo !67
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !14
  br label %for.cond, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [64 x double], [64 x double]* %in_real, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [64 x double], [64 x double]* %in_imag, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [64 x double], [64 x double]* %out_real, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [64 x double], [64 x double]* %out_imag, i64 0, i64 0
  call void @fftWrapper(i32 noundef 64, double* noundef %arraydecay, double* noundef %arraydecay17, double* noundef %arraydecay18, double* noundef %arraydecay19, i32 noundef 0), !taffo.constinfo !61
  %call20 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)), !taffo.constinfo !14
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc31, %for.end
  %i21.0 = phi i32 [ 0, %for.end ], [ %inc32, %for.inc31 ]
  %cmp23 = icmp slt i32 %i21.0, 64
  br i1 %cmp23, label %for.body25, label %for.end33

for.body25:                                       ; preds = %for.cond22
  %idxprom26 = sext i32 %i21.0 to i64
  %arrayidx27 = getelementptr inbounds [64 x double], [64 x double]* %out_real, i64 0, i64 %idxprom26
  %2 = load double, double* %arrayidx27, align 8
  %idxprom28 = sext i32 %i21.0 to i64
  %arrayidx29 = getelementptr inbounds [64 x double], [64 x double]* %out_imag, i64 0, i64 %idxprom28
  %3 = load double, double* %arrayidx29, align 8
  %call30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 noundef %i21.0, double noundef %2, double noundef %3), !taffo.constinfo !67
  br label %for.inc31

for.inc31:                                        ; preds = %for.body25
  %inc32 = add nsw i32 %i21.0, 1, !taffo.constinfo !14
  br label %for.cond22, !llvm.loop !69

for.end33:                                        ; preds = %for.cond22
  ret i32 0
}

declare !taffo.initweight !10 !taffo.funinfo !11 i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @fft.1_fixp(i32 noundef %n, i32* noundef %in_real.s2_30fixp, i32* noundef %in_imag.s2_30fixp, i32* noundef %out_real.s11_21fixp, i32* noundef %out_imag.s11_21fixp, i32 noundef %inverse) #0 !taffo.initweight !70 !taffo.funinfo !71 !taffo.sourceFunction !74 {
entry:
  %call = call i32 @log2_manual(i32 noundef %n), !taffo.info !19, !taffo.constinfo !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.info !12
  %cmp = icmp slt i32 %i.0, %n, !taffo.info !12
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %rev.0 = phi i32 [ 0, %for.body ], [ %or, %for.inc ], !taffo.info !72
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !12
  %cmp2 = icmp slt i32 %j.0, %call, !taffo.info !12
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %shl = shl i32 %rev.0, 1, !taffo.info !72, !taffo.constinfo !14
  %shr = ashr i32 %i.0, %j.0, !taffo.info !72
  %and = and i32 %shr, 1, !taffo.constinfo !14
  %or = or i32 %shl, %and
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %j.0, 1, !taffo.info !15, !taffo.constinfo !14
  br label %for.cond1, !llvm.loop !75

for.end:                                          ; preds = %for.cond1
  %idxprom = sext i32 %rev.0 to i64, !taffo.info !72
  %arrayidx.s2_30fixp = getelementptr inbounds i32, i32* %in_real.s2_30fixp, i64 %idxprom, !taffo.info !29
  %s2_30fixp = load i32, i32* %arrayidx.s2_30fixp, align 8, !taffo.info !29
  %idxprom4 = sext i32 %i.0 to i64, !taffo.info !72
  %arrayidx5.s11_21fixp = getelementptr inbounds i32, i32* %out_real.s11_21fixp, i64 %idxprom4, !taffo.info !37
  %0 = ashr i32 %s2_30fixp, 9, !taffo.info !29
  store i32 %0, i32* %arrayidx5.s11_21fixp, align 8, !taffo.info !40
  %idxprom6 = sext i32 %rev.0 to i64, !taffo.info !72
  %arrayidx7.s2_30fixp = getelementptr inbounds i32, i32* %in_imag.s2_30fixp, i64 %idxprom6, !taffo.info !29
  %s2_30fixp3 = load i32, i32* %arrayidx7.s2_30fixp, align 8, !taffo.info !29
  %idxprom8 = sext i32 %i.0 to i64, !taffo.info !72
  %arrayidx9.s11_21fixp = getelementptr inbounds i32, i32* %out_imag.s11_21fixp, i64 %idxprom8, !taffo.info !37
  %1 = ashr i32 %s2_30fixp3, 9, !taffo.info !29
  store i32 %1, i32* %arrayidx9.s11_21fixp, align 8, !taffo.info !40
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.info !15, !taffo.constinfo !14
  br label %for.cond, !llvm.loop !76

for.end12:                                        ; preds = %for.cond
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc91, %for.end12
  %step.0 = phi i32 [ 2, %for.end12 ], [ %shl92, %for.inc91 ], !taffo.info !77
  %cmp22 = icmp sle i32 %step.0, %n, !taffo.info !12
  br i1 %cmp22, label %for.body23, label %for.end93

for.body23:                                       ; preds = %for.cond21
  %shr24 = ashr i32 %step.0, 1, !taffo.info !15, !taffo.constinfo !14
  %conv = sitofp i32 %step.0 to double, !taffo.info !79
  %div = fdiv double 0x401921FB54442D18, %conv, !taffo.info !81, !taffo.constinfo !26
  %tobool = icmp ne i32 %inverse, 0, !taffo.info !72
  %cond = select i1 %tobool, i32 -1, i32 1, !taffo.info !19
  %conv25 = sitofp i32 %cond to double, !taffo.info !19
  %mul = fmul double %div, %conv25, !taffo.info !83
  %call26.flt = call double @cos(double noundef %mul) #3, !taffo.info !29, !taffo.initweight !31, !taffo.constinfo !14
  %2 = fmul double 0x41D0000000000000, %call26.flt, !taffo.info !29, !taffo.constinfo !14
  %call26.flt.fallback.s2_30fixp = fptosi double %2 to i32, !taffo.info !29
  %call27.flt = call double @sin(double noundef %mul) #3, !taffo.info !29, !taffo.initweight !31, !taffo.constinfo !14
  %3 = fmul double 0x41D0000000000000, %call27.flt, !taffo.info !29, !taffo.constinfo !14
  %call27.flt.fallback.s2_30fixp = fptosi double %3 to i32, !taffo.info !29
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc88, %for.body23
  %i28.0 = phi i32 [ 0, %for.body23 ], [ %add89, %for.inc88 ], !taffo.info !85
  %cmp30 = icmp slt i32 %i28.0, %n, !taffo.info !12
  br i1 %cmp30, label %for.body32, label %for.end90

for.body32:                                       ; preds = %for.cond29
  %4 = lshr i32 0, 8
  %5 = lshr i32 -2147483648, 7
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc85, %for.body32
  %x_real.0.s8_24fixp = phi i32 [ %5, %for.body32 ], [ %48, %for.inc85 ], !taffo.info !32
  %x_imag.0.s8_24fixp = phi i32 [ %4, %for.body32 ], [ %47, %for.inc85 ], !taffo.info !32
  %j33.0 = phi i32 [ 0, %for.body32 ], [ %inc86, %for.inc85 ], !taffo.info !12
  %cmp35 = icmp slt i32 %j33.0, %shr24, !taffo.info !12
  br i1 %cmp35, label %for.body37, label %for.end87

for.body37:                                       ; preds = %for.cond34
  %add = add nsw i32 %i28.0, %j33.0, !taffo.info !72
  %add38 = add nsw i32 %add, %shr24, !taffo.info !15
  %idxprom39 = sext i32 %add38 to i64, !taffo.info !15
  %arrayidx40.s11_21fixp = getelementptr inbounds i32, i32* %out_real.s11_21fixp, i64 %idxprom39, !taffo.info !37
  %s11_21fixp = load i32, i32* %arrayidx40.s11_21fixp, align 8, !taffo.info !37
  %add42 = add nsw i32 %i28.0, %j33.0, !taffo.info !72
  %add43 = add nsw i32 %add42, %shr24, !taffo.info !15
  %idxprom44 = sext i32 %add43 to i64, !taffo.info !15
  %arrayidx45.s11_21fixp = getelementptr inbounds i32, i32* %out_imag.s11_21fixp, i64 %idxprom44, !taffo.info !37
  %s11_21fixp8 = load i32, i32* %arrayidx45.s11_21fixp, align 8, !taffo.info !37
  %6 = sext i32 %x_imag.0.s8_24fixp to i64, !taffo.info !32
  %7 = sext i32 %s11_21fixp8 to i64, !taffo.info !37
  %8 = mul i64 %6, %7, !taffo.info !87
  %9 = ashr i64 %8, 31, !taffo.info !87
  %mul46.s18_14fixp = trunc i64 %9 to i32, !taffo.info !90
  %10 = ashr i32 %mul46.s18_14fixp, 1, !taffo.info !90
  %neg.s19_13fixp = sub i32 0, %10, !taffo.info !92
  %11 = sext i32 %x_real.0.s8_24fixp to i64, !taffo.info !32
  %12 = sext i32 %s11_21fixp to i64, !taffo.info !37
  %13 = mul i64 %11, %12, !taffo.info !94
  %14 = ashr i64 %13, 32
  %15 = trunc i64 %14 to i32
  %s19_13fixp15 = add i32 %15, %neg.s19_13fixp, !taffo.info !96
  %add47 = add nsw i32 %i28.0, %j33.0, !taffo.info !72
  %add48 = add nsw i32 %add47, %shr24, !taffo.info !15
  %idxprom49 = sext i32 %add48 to i64, !taffo.info !15
  %arrayidx50.s11_21fixp = getelementptr inbounds i32, i32* %out_imag.s11_21fixp, i64 %idxprom49, !taffo.info !37
  %s11_21fixp9 = load i32, i32* %arrayidx50.s11_21fixp, align 8, !taffo.info !37
  %add52 = add nsw i32 %i28.0, %j33.0, !taffo.info !72
  %add53 = add nsw i32 %add52, %shr24, !taffo.info !15
  %idxprom54 = sext i32 %add53 to i64, !taffo.info !15
  %arrayidx55.s11_21fixp = getelementptr inbounds i32, i32* %out_real.s11_21fixp, i64 %idxprom54, !taffo.info !37
  %s11_21fixp4 = load i32, i32* %arrayidx55.s11_21fixp, align 8, !taffo.info !37
  %16 = sext i32 %x_imag.0.s8_24fixp to i64, !taffo.info !32
  %17 = sext i32 %s11_21fixp4 to i64, !taffo.info !37
  %18 = mul i64 %16, %17, !taffo.info !87
  %19 = ashr i64 %18, 32, !taffo.info !87
  %mul56.s19_13fixp = trunc i64 %19 to i32, !taffo.info !92
  %20 = sext i32 %x_real.0.s8_24fixp to i64, !taffo.info !32
  %21 = sext i32 %s11_21fixp9 to i64, !taffo.info !37
  %22 = mul i64 %20, %21, !taffo.info !94
  %23 = ashr i64 %22, 32
  %24 = trunc i64 %23 to i32
  %s19_13fixp = add i32 %24, %mul56.s19_13fixp, !taffo.info !96
  %add57 = add nsw i32 %i28.0, %j33.0, !taffo.info !72
  %idxprom58 = sext i32 %add57 to i64, !taffo.info !72
  %arrayidx59.s11_21fixp = getelementptr inbounds i32, i32* %out_real.s11_21fixp, i64 %idxprom58, !taffo.info !37
  %s11_21fixp5 = load i32, i32* %arrayidx59.s11_21fixp, align 8, !taffo.info !37
  %25 = shl i32 %s19_13fixp15, 8, !taffo.info !96
  %sub.s11_21fixp = sub i32 %s11_21fixp5, %25, !taffo.info !37
  %add60 = add nsw i32 %i28.0, %j33.0, !taffo.info !72
  %add61 = add nsw i32 %add60, %shr24, !taffo.info !15
  %idxprom62 = sext i32 %add61 to i64, !taffo.info !15
  %arrayidx63.s11_21fixp = getelementptr inbounds i32, i32* %out_real.s11_21fixp, i64 %idxprom62, !taffo.info !37
  store i32 %sub.s11_21fixp, i32* %arrayidx63.s11_21fixp, align 8, !taffo.info !40
  %add64 = add nsw i32 %i28.0, %j33.0, !taffo.info !72
  %idxprom65 = sext i32 %add64 to i64, !taffo.info !72
  %arrayidx66.s11_21fixp = getelementptr inbounds i32, i32* %out_imag.s11_21fixp, i64 %idxprom65, !taffo.info !37
  %s11_21fixp10 = load i32, i32* %arrayidx66.s11_21fixp, align 8, !taffo.info !37
  %26 = shl i32 %s19_13fixp, 8, !taffo.info !96
  %sub67.s11_21fixp = sub i32 %s11_21fixp10, %26, !taffo.info !37
  %add68 = add nsw i32 %i28.0, %j33.0, !taffo.info !72
  %add69 = add nsw i32 %add68, %shr24, !taffo.info !15
  %idxprom70 = sext i32 %add69 to i64, !taffo.info !15
  %arrayidx71.s11_21fixp = getelementptr inbounds i32, i32* %out_imag.s11_21fixp, i64 %idxprom70, !taffo.info !37
  store i32 %sub67.s11_21fixp, i32* %arrayidx71.s11_21fixp, align 8, !taffo.info !40
  %add72 = add nsw i32 %i28.0, %j33.0, !taffo.info !72
  %idxprom73 = sext i32 %add72 to i64, !taffo.info !72
  %arrayidx74.s11_21fixp = getelementptr inbounds i32, i32* %out_real.s11_21fixp, i64 %idxprom73, !taffo.info !37
  %s11_21fixp6 = load i32, i32* %arrayidx74.s11_21fixp, align 8, !taffo.info !37
  %27 = shl i32 %s19_13fixp15, 8, !taffo.info !96
  %add75.s11_21fixp = add i32 %s11_21fixp6, %27, !taffo.info !37
  store i32 %add75.s11_21fixp, i32* %arrayidx74.s11_21fixp, align 8, !taffo.info !40
  %add76 = add nsw i32 %i28.0, %j33.0, !taffo.info !72
  %idxprom77 = sext i32 %add76 to i64, !taffo.info !72
  %arrayidx78.s11_21fixp = getelementptr inbounds i32, i32* %out_imag.s11_21fixp, i64 %idxprom77, !taffo.info !37
  %s11_21fixp11 = load i32, i32* %arrayidx78.s11_21fixp, align 8, !taffo.info !37
  %28 = shl i32 %s19_13fixp, 8, !taffo.info !96
  %add79.s11_21fixp = add i32 %s11_21fixp11, %28, !taffo.info !37
  store i32 %add79.s11_21fixp, i32* %arrayidx78.s11_21fixp, align 8, !taffo.info !40
  %29 = sext i32 %x_imag.0.s8_24fixp to i64, !taffo.info !32
  %30 = sext i32 %call27.flt.fallback.s2_30fixp to i64, !taffo.info !29
  %31 = mul i64 %29, %30, !taffo.info !41
  %32 = ashr i64 %31, 24, !taffo.info !41
  %mul81.s2_30fixp = trunc i64 %32 to i32, !taffo.info !29
  %neg82.s2_30fixp = sub i32 0, %mul81.s2_30fixp, !taffo.info !29
  %33 = sext i32 %x_real.0.s8_24fixp to i64, !taffo.info !32
  %34 = sext i32 %call26.flt.fallback.s2_30fixp to i64, !taffo.info !29
  %35 = mul i64 %33, %34, !taffo.info !41
  %36 = ashr i64 %35, 24
  %37 = trunc i64 %36 to i32
  %s2_30fixp14 = add i32 %37, %neg82.s2_30fixp, !taffo.info !29
  %38 = sext i32 %x_imag.0.s8_24fixp to i64, !taffo.info !32
  %39 = sext i32 %call26.flt.fallback.s2_30fixp to i64, !taffo.info !29
  %40 = mul i64 %38, %39, !taffo.info !41
  %41 = ashr i64 %40, 24, !taffo.info !41
  %mul84.s2_30fixp = trunc i64 %41 to i32, !taffo.info !29
  %42 = sext i32 %x_real.0.s8_24fixp to i64, !taffo.info !32
  %43 = sext i32 %call27.flt.fallback.s2_30fixp to i64, !taffo.info !29
  %44 = mul i64 %42, %43, !taffo.info !41
  %45 = ashr i64 %44, 24
  %46 = trunc i64 %45 to i32
  %s2_30fixp13 = add i32 %46, %mul84.s2_30fixp, !taffo.info !29
  br label %for.inc85

for.inc85:                                        ; preds = %for.body37
  %inc86 = add nsw i32 %j33.0, 1, !taffo.info !15, !taffo.constinfo !14
  %47 = ashr i32 %s2_30fixp13, 6, !taffo.info !29
  %48 = ashr i32 %s2_30fixp14, 6, !taffo.info !29
  br label %for.cond34, !llvm.loop !97

for.end87:                                        ; preds = %for.cond34
  br label %for.inc88

for.inc88:                                        ; preds = %for.end87
  %add89 = add nsw i32 %i28.0, %step.0, !taffo.info !79
  br label %for.cond29, !llvm.loop !98

for.end90:                                        ; preds = %for.cond29
  br label %for.inc91

for.inc91:                                        ; preds = %for.end90
  %shl92 = shl i32 %step.0, 1, !taffo.info !99, !taffo.constinfo !14
  br label %for.cond21, !llvm.loop !101

for.end93:                                        ; preds = %for.cond21
  %tobool94 = icmp ne i32 %inverse, 0, !taffo.info !72
  br i1 %tobool94, label %if.then, label %if.end

if.then:                                          ; preds = %for.end93
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc108, %if.then
  %i95.0 = phi i32 [ 0, %if.then ], [ %inc109, %for.inc108 ], !taffo.info !12
  %cmp97 = icmp slt i32 %i95.0, %n, !taffo.info !12
  br i1 %cmp97, label %for.body99, label %for.end110

for.body99:                                       ; preds = %for.cond96
  %idxprom101 = sext i32 %i95.0 to i64, !taffo.info !72
  %arrayidx102.s11_21fixp = getelementptr inbounds i32, i32* %out_real.s11_21fixp, i64 %idxprom101, !taffo.info !37
  %s11_21fixp7 = load i32, i32* %arrayidx102.s11_21fixp, align 8, !taffo.info !37
  %div103.s11_21fixp = sdiv i32 %s11_21fixp7, %n, !taffo.info !37
  store i32 %div103.s11_21fixp, i32* %arrayidx102.s11_21fixp, align 8, !taffo.info !40
  %idxprom105 = sext i32 %i95.0 to i64, !taffo.info !72
  %arrayidx106.s11_21fixp = getelementptr inbounds i32, i32* %out_imag.s11_21fixp, i64 %idxprom105, !taffo.info !37
  %s11_21fixp12 = load i32, i32* %arrayidx106.s11_21fixp, align 8, !taffo.info !37
  %div107.s11_21fixp = sdiv i32 %s11_21fixp12, %n, !taffo.info !37
  store i32 %div107.s11_21fixp, i32* %arrayidx106.s11_21fixp, align 8, !taffo.info !40
  br label %for.inc108

for.inc108:                                       ; preds = %for.body99
  %inc109 = add nsw i32 %i95.0, 1, !taffo.info !15, !taffo.constinfo !14
  br label %for.cond96, !llvm.loop !102

for.end110:                                       ; preds = %for.cond96
  br label %if.end

if.end:                                           ; preds = %for.end110, %for.end93
  ret void
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
!3 = !{double 0.000000e+00, double 1.200000e+02}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 15.0.7"}
!10 = !{i32 -1}
!11 = !{i32 0, i1 false}
!12 = !{i1 false, !13, i1 false, i2 0}
!13 = !{double 0.000000e+00, double 1.000000e+00}
!14 = !{i1 false, i1 false}
!15 = !{i1 false, !16, i1 false, i2 0}
!16 = !{double 1.000000e+00, double 1.000000e+00}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{i1 false, !20, i1 false, i2 0}
!20 = !{double -1.000000e+00, double 1.000000e+00}
!21 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!22 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!23 = distinct !{null}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = !{!27, i1 false}
!27 = !{i1 false, !28, i1 false, i2 0}
!28 = !{double 0x401921FB54442D18, double 0x401921FB54442D18}
!29 = !{!30, !20, i1 false, i2 -1}
!30 = !{!"fixp", i32 -32, i32 30}
!31 = !{i32 2}
!32 = !{!33, !34, i1 false, i2 -1}
!33 = !{!"fixp", i32 -32, i32 24}
!34 = !{double -1.000000e+02, double 1.000000e+02}
!35 = !{!36, !34, i1 false, i2 -1}
!36 = !{!"fixp", i32 -64, i32 48}
!37 = !{!38, !39, i1 false, i2 -1}
!38 = !{!"fixp", i32 -32, i32 21}
!39 = !{double -1.000000e+03, double 1.000000e+03}
!40 = !{i1 false, !39, i1 false, i2 -1}
!41 = !{!42, !20, i1 false, i2 -1}
!42 = !{!"fixp", i32 -64, i32 54}
!43 = distinct !{!43, !18}
!44 = distinct !{!44, !18}
!45 = distinct !{!45, !18}
!46 = distinct !{!46, !18}
!47 = !{i1 true}
!48 = !{!"in_real"}
!49 = !{!"in_imag"}
!50 = !{!"out_real"}
!51 = !{!"out_imag"}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 0.000000e+00, double 6.500000e+01}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 0.000000e+00, double 6.400000e+01}
!56 = !{i32 3}
!57 = !{i1 false, !20, i1 false, i2 -1}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 1.000000e+00, double 6.500000e+01}
!60 = distinct !{!60, !18}
!61 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!62 = distinct !{!62, !18}
!63 = !{}
!64 = !{i1 false, !65}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 1.000000e+02, double 1.000000e+02}
!67 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!68 = distinct !{!68, !18}
!69 = distinct !{!69, !18}
!70 = !{i32 -1, i32 2, i32 2, i32 2, i32 2, i32 -1}
!71 = !{i32 0, i1 false, i32 1, !29, i32 1, !29, i32 1, !37, i32 1, !37, i32 1, !72}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 0.000000e+00, double 0.000000e+00}
!74 = !{void (i32, double*, double*, double*, double*, i32)* @fft}
!75 = distinct !{!75, !18}
!76 = distinct !{!76, !18}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 2.000000e+00, double 4.000000e+00}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 2.000000e+00, double 2.000000e+00}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 0x400921FB54442D18, double 0x400921FB54442D18}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 0xC00921FB54442D18, double 0x400921FB54442D18}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 0.000000e+00, double 2.000000e+00}
!87 = !{!88, !89, i1 false, i2 -1}
!88 = !{!"fixp", i32 -64, i32 45}
!89 = !{double -1.000000e+05, double 1.000000e+05}
!90 = !{!91, !89, i1 false, i2 -1}
!91 = !{!"fixp", i32 -32, i32 14}
!92 = !{!93, !89, i1 false, i2 -1}
!93 = !{!"fixp", i32 -32, i32 13}
!94 = !{!88, !95, i1 false, i2 -1}
!95 = !{double -2.000000e+05, double 2.000000e+05}
!96 = !{!93, !95, i1 false, i2 -1}
!97 = distinct !{!97, !18}
!98 = distinct !{!98, !18}
!99 = !{i1 false, !100, i1 false, i2 0}
!100 = !{double 4.000000e+00, double 4.000000e+00}
!101 = distinct !{!101, !18}
!102 = distinct !{!102, !18}
