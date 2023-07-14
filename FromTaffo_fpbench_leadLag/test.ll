; ModuleID = '/tmp/tmp.LT1pGN6Chm/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.8 = private unnamed_addr constant [14 x i8] c"Values Begin\0A\00", align 1, !taffo.info !0
@.str.9 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1, !taffo.info !2
@.str.10 = private unnamed_addr constant [12 x i8] c"Values End\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local float @ex0(float %y, float %yd) #0 !taffo.start !6 !taffo.initweight !7 !taffo.equivalentChild !8 !taffo.funinfo !9 {
entry:
  %cmp = fcmp ogt float 1.000000e+00, 0x3F847AE140000000, !taffo.info !10, !taffo.initweight !12
  %conv = zext i1 %cmp to i32, !taffo.info !10, !taffo.initweight !13
  %sub = fsub float %y, %yd
  %cmp8 = fcmp olt float %sub, -1.000000e+00, !taffo.info !14
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end14

if.else:                                          ; preds = %entry
  %cmp10 = fcmp olt float 1.000000e+00, %sub, !taffo.info !14
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  br label %if.end

if.else13:                                        ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then12
  %tmp_1.0 = phi float [ 1.000000e+00, %if.then12 ], [ %sub, %if.else13 ], !taffo.info !16
  %0 = fmul float 0x41E0000000000000, %tmp_1.0, !taffo.info !16
  %1 = fptoui float %0 to i32, !taffo.info !16
  %2 = lshr i32 %1, 2, !taffo.info !16
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %tmp_1.1.s3_29fixp = phi i32 [ -536870912, %if.then ], [ %2, %if.end ], !taffo.info !17
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %if.end14
  %tmp.0 = phi i32 [ %conv, %if.end14 ], [ %conv30.flt, %if.end28 ], !taffo.info !14
  %i.0 = phi float [ 0.000000e+00, %if.end14 ], [ %add22, %if.end28 ], !taffo.info !14
  %xc1.0.s2_30fixp = phi i32 [ 0, %if.end14 ], [ %21, %if.end28 ], !taffo.info !20
  %xc0.0.s2_30fixp = phi i32 [ 0, %if.end14 ], [ %add19.s2_30fixp, %if.end28 ], !taffo.info !23
  %3 = sitofp i32 %xc1.0.s2_30fixp to float, !taffo.info !20
  %4 = fdiv float %3, 0x41D0000000000000, !taffo.info !20
  %tobool = icmp ne i32 %tmp.0, 0, !taffo.info !14
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = sext i32 %xc0.0.s2_30fixp to i64, !taffo.info !23
  %6 = mul i64 8371831, %5, !taffo.info !24, !taffo.constinfo !27
  %7 = lshr i64 %6, 22, !taffo.info !24, !taffo.constinfo !27
  %mul16.u0_32fixp = trunc i64 %7 to i32, !taffo.info !31
  %8 = sext i32 %xc1.0.s2_30fixp to i64, !taffo.info !20
  %9 = mul i64 -13421773, %8, !taffo.info !33, !taffo.constinfo !36
  %10 = lshr i64 %9, 26, !taffo.info !33, !taffo.constinfo !36
  %mul17.u0_32fixp = trunc i64 %10 to i32, !taffo.info !40
  %11 = lshr i32 %mul17.u0_32fixp, 2, !taffo.info !40
  %12 = shl i32 %tmp_1.1.s3_29fixp, 1, !taffo.info !17
  %add18.s2_30fixp = add i32 %11, %12, !taffo.info !23
  %13 = lshr i32 %mul16.u0_32fixp, 2, !taffo.info !31
  %add19.s2_30fixp = add i32 %13, %add18.s2_30fixp, !taffo.info !23
  %14 = sext i32 %add19.s2_30fixp to i64, !taffo.info !23
  %15 = mul i64 5368709, %14, !taffo.info !41, !taffo.constinfo !43
  %16 = ashr i64 %15, 29, !taffo.info !41, !taffo.constinfo !43
  %mul20.s2_30fixp = trunc i64 %16 to i32, !taffo.info !20
  %17 = ashr i32 %mul20.s2_30fixp, 1, !taffo.info !20
  %18 = ashr i32 %xc1.0.s2_30fixp, 1, !taffo.info !20
  %add21.s3_29fixp = add i32 %17, %18, !taffo.info !47
  %add22 = fadd float %i.0, 1.000000e+00, !taffo.info !16, !taffo.constinfo !48
  %sub23.s3_29fixp = sub i32 %tmp_1.1.s3_29fixp, %add21.s3_29fixp, !taffo.info !49
  %19 = icmp slt i32 %sub23.s3_29fixp, 0, !taffo.info !51
  br i1 %19, label %if.then26, label %if.else27, !taffo.info !52, !taffo.initweight !13

if.then26:                                        ; preds = %while.body
  %fneg.s3_29fixp = sub i32 0, %sub23.s3_29fixp, !taffo.info !49
  br label %if.end28

if.else27:                                        ; preds = %while.body
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  %e.0.s3_29fixp = phi i32 [ %fneg.s3_29fixp, %if.then26 ], [ %sub23.s3_29fixp, %if.else27 ], !taffo.info !49
  %20 = icmp sgt i32 %e.0.s3_29fixp, 5368709, !taffo.info !51
  %conv30.flt = zext i1 %20 to i32, !taffo.info !51, !taffo.initweight !13
  %21 = shl i32 %add21.s3_29fixp, 1, !taffo.info !47
  br label %while.cond, !llvm.loop !54

while.end:                                        ; preds = %while.cond
  ret float %4, !taffo.info !52, !taffo.initweight !12
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(float* %arr) #0 !taffo.start !6 !taffo.initweight !56 !taffo.funinfo !57 {
entry:
  %res = alloca [100 x float], align 16, !taffo.info !58
  %y.u6_26fixp = alloca [100 x i32], align 16, !taffo.info !60, !taffo.target !63
  %yd.u6_26fixp = alloca [100 x i32], align 16, !taffo.info !60
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !64
  %cmp = icmp slt i32 %i.0, 100, !taffo.info !14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 2, !taffo.info !66, !taffo.constinfo !68
  %idxprom = sext i32 %mul to i64, !taffo.info !66
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %1 = fmul float 0x4190000000000000, %0, !taffo.info !69
  %2 = fptoui float %1 to i32, !taffo.info !69
  %idxprom3 = sext i32 %i.0 to i64, !taffo.info !69
  %arrayidx4.u6_26fixp = getelementptr inbounds [100 x i32], [100 x i32]* %y.u6_26fixp, i64 0, i64 %idxprom3, !taffo.info !60, !taffo.target !63
  store i32 %2, i32* %arrayidx4.u6_26fixp, align 4, !taffo.info !71, !taffo.target !63
  %mul5 = mul nsw i32 %i.0, 2, !taffo.info !66, !taffo.constinfo !68
  %add = add nsw i32 %mul5, 1, !taffo.info !72, !taffo.constinfo !68
  %idxprom6 = sext i32 %add to i64, !taffo.info !72
  %arrayidx7 = getelementptr inbounds float, float* %arr, i64 %idxprom6
  %3 = load float, float* %arrayidx7, align 4
  %4 = fmul float 0x4190000000000000, %3, !taffo.info !69
  %5 = fptoui float %4 to i32, !taffo.info !69
  %idxprom8 = sext i32 %i.0 to i64, !taffo.info !69
  %arrayidx9.u6_26fixp = getelementptr inbounds [100 x i32], [100 x i32]* %yd.u6_26fixp, i64 0, i64 %idxprom8, !taffo.info !60
  store i32 %5, i32* %arrayidx9.u6_26fixp, align 4, !taffo.info !71
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !74, !taffo.constinfo !68
  br label %for.cond, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc26, %for.end
  %i10.0 = phi i32 [ 0, %for.end ], [ %inc27, %for.inc26 ], !taffo.info !77
  %cmp12 = icmp slt i32 %i10.0, 1, !taffo.info !14
  br i1 %cmp12, label %for.body13, label %for.end28

for.body13:                                       ; preds = %for.cond11
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc23, %for.body13
  %j.0 = phi i32 [ 0, %for.body13 ], [ %inc24, %for.inc23 ], !taffo.info !79
  %cmp15 = icmp slt i32 %j.0, 100, !taffo.info !14
  br i1 %cmp15, label %for.body16, label %for.end25

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %j.0 to i64, !taffo.info !81
  %arrayidx18.u6_26fixp = getelementptr inbounds [100 x i32], [100 x i32]* %y.u6_26fixp, i64 0, i64 %idxprom17, !taffo.info !60, !taffo.target !63
  %u6_26fixp = load i32, i32* %arrayidx18.u6_26fixp, align 4, !taffo.info !83, !taffo.target !63
  %idxprom19 = sext i32 %j.0 to i64, !taffo.info !81
  %arrayidx20.u6_26fixp = getelementptr inbounds [100 x i32], [100 x i32]* %yd.u6_26fixp, i64 0, i64 %idxprom19, !taffo.info !60
  %u6_26fixp1 = load i32, i32* %arrayidx20.u6_26fixp, align 4, !taffo.info !83
  %6 = lshr i32 %u6_26fixp, 1, !taffo.info !83, !taffo.target !63
  %7 = lshr i32 %u6_26fixp1, 1, !taffo.info !83
  %call.s2_30fixp = call i32 @ex0.1_s2_30fixp(i32 %6, i32 %7), !taffo.info !85, !taffo.constinfo !86, !taffo.target !63
  %8 = sitofp i32 %call.s2_30fixp to float, !taffo.info !85, !taffo.target !63
  %9 = fdiv float %8, 0x41D0000000000000, !taffo.info !85, !taffo.target !63
  %idxprom21 = sext i32 %j.0 to i64, !taffo.info !81
  %arrayidx22 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 %idxprom21, !taffo.info !58
  store float %9, float* %arrayidx22, align 4, !taffo.info !71, !taffo.target !63
  br label %for.inc23

for.inc23:                                        ; preds = %for.body16
  %inc24 = add nsw i32 %j.0, 1, !taffo.info !87, !taffo.constinfo !68
  br label %for.cond14, !llvm.loop !89

for.end25:                                        ; preds = %for.cond14
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %inc27 = add nsw i32 %i10.0, 1, !taffo.info !90, !taffo.constinfo !68
  br label %for.cond11, !llvm.loop !92

for.end28:                                        ; preds = %for.cond11
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0)), !taffo.constinfo !68
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc37, %for.end28
  %j30.0 = phi i32 [ 0, %for.end28 ], [ %inc38, %for.inc37 ], !taffo.info !64
  %cmp32 = icmp slt i32 %j30.0, 100, !taffo.info !14
  br i1 %cmp32, label %for.body33, label %for.end39

for.body33:                                       ; preds = %for.cond31
  %idxprom34 = sext i32 %j30.0 to i64, !taffo.info !69
  %arrayidx35 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 %idxprom34, !taffo.info !58
  %10 = load float, float* %arrayidx35, align 4, !taffo.info !58
  %conv = fpext float %10 to double, !taffo.info !58
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), double %conv), !taffo.constinfo !86
  br label %for.inc37

for.inc37:                                        ; preds = %for.body33
  %inc38 = add nsw i32 %j30.0, 1, !taffo.info !74, !taffo.constinfo !68
  br label %for.cond31, !llvm.loop !93

for.end39:                                        ; preds = %for.cond31
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)), !taffo.constinfo !68
  ret void
}

declare !taffo.initweight !56 !taffo.funinfo !57 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !94 !taffo.funinfo !94 {
entry:
  %arr = alloca [200 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 200
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 16, !taffo.constinfo !68
  %conv = sitofp i32 %rem to float
  %add = fadd float %conv, 0x3FCD70A3E0000000, !taffo.constinfo !95
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 %idxprom
  store float %add, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !68
  br label %for.cond, !llvm.loop !98

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 0
  call void @test(float* %arraydecay), !taffo.constinfo !68
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ex0.1_s2_30fixp(i32 %y.s7_25fixp, i32 %yd.s7_25fixp) #0 !taffo.start !6 !taffo.initweight !99 !taffo.funinfo !100 !taffo.sourceFunction !101 {
entry:
  %cmp = fcmp ogt float 1.000000e+00, 0x3F847AE140000000, !taffo.info !10, !taffo.initweight !12
  %conv = zext i1 %cmp to i32, !taffo.info !10, !taffo.initweight !13
  %sub.s7_25fixp = sub i32 %y.s7_25fixp, %yd.s7_25fixp, !taffo.info !102
  %cmp8.matchop = icmp slt i32 %sub.s7_25fixp, -33554432, !taffo.info !14
  br i1 %cmp8.matchop, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end14

if.else:                                          ; preds = %entry
  %cmp10.matchop = icmp slt i32 33554432, %sub.s7_25fixp, !taffo.info !14
  br i1 %cmp10.matchop, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  br label %if.end

if.else13:                                        ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then12
  %tmp_1.0.s7_25fixp = phi i32 [ 33554432, %if.then12 ], [ %sub.s7_25fixp, %if.else13 ], !taffo.info !102
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %tmp_1.1.s7_25fixp = phi i32 [ -33554432, %if.then ], [ %tmp_1.0.s7_25fixp, %if.end ], !taffo.info !102
  br label %while.cond

while.cond:                                       ; preds = %if.end28, %if.end14
  %tmp.0 = phi i32 [ %conv, %if.end14 ], [ %conv30.flt, %if.end28 ], !taffo.info !14
  %i.0 = phi float [ 0.000000e+00, %if.end14 ], [ %add22, %if.end28 ], !taffo.info !14
  %xc1.0.s2_30fixp = phi i32 [ 0, %if.end14 ], [ %add21.s2_30fixp, %if.end28 ], !taffo.info !85
  %xc0.0.s7_25fixp = phi i32 [ 0, %if.end14 ], [ %add19.s7_25fixp, %if.end28 ], !taffo.info !102
  %tobool = icmp ne i32 %tmp.0, 0, !taffo.info !14
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %0 = sext i32 %xc0.0.s7_25fixp to i64, !taffo.info !102
  %1 = mul i64 8371831, %0, !taffo.info !104, !taffo.constinfo !27
  %2 = lshr i64 %1, 17, !taffo.info !104, !taffo.constinfo !27
  %mul16.u0_32fixp = trunc i64 %2 to i32, !taffo.info !31
  %3 = sext i32 %xc1.0.s2_30fixp to i64, !taffo.info !85
  %4 = mul i64 -13421773, %3, !taffo.info !33, !taffo.constinfo !36
  %5 = lshr i64 %4, 26, !taffo.info !33, !taffo.constinfo !36
  %mul17.u0_32fixp = trunc i64 %5 to i32, !taffo.info !40
  %6 = lshr i32 %mul17.u0_32fixp, 7, !taffo.info !40
  %add18.s7_25fixp = add i32 %6, %tmp_1.1.s7_25fixp, !taffo.info !102
  %7 = lshr i32 %mul16.u0_32fixp, 7, !taffo.info !31
  %add19.s7_25fixp = add i32 %7, %add18.s7_25fixp, !taffo.info !102
  %8 = sext i32 %add19.s7_25fixp to i64, !taffo.info !102
  %9 = mul i64 5368709, %8, !taffo.info !106, !taffo.constinfo !43
  %10 = ashr i64 %9, 24, !taffo.info !106, !taffo.constinfo !43
  %mul20.s2_30fixp = trunc i64 %10 to i32, !taffo.info !85
  %add21.s2_30fixp = add i32 %mul20.s2_30fixp, %xc1.0.s2_30fixp, !taffo.info !85
  %add22 = fadd float %i.0, 1.000000e+00, !taffo.info !16, !taffo.constinfo !48
  %11 = ashr i32 %add21.s2_30fixp, 5, !taffo.info !85
  %sub23.s7_25fixp = sub i32 %tmp_1.1.s7_25fixp, %11, !taffo.info !108
  %12 = icmp slt i32 %sub23.s7_25fixp, 0, !taffo.info !110
  br i1 %12, label %if.then26, label %if.else27, !taffo.info !52, !taffo.initweight !13

if.then26:                                        ; preds = %while.body
  %fneg.s7_25fixp = sub i32 0, %sub23.s7_25fixp, !taffo.info !108
  br label %if.end28

if.else27:                                        ; preds = %while.body
  br label %if.end28

if.end28:                                         ; preds = %if.else27, %if.then26
  %e.0.s7_25fixp = phi i32 [ %fneg.s7_25fixp, %if.then26 ], [ %sub23.s7_25fixp, %if.else27 ], !taffo.info !108
  %13 = icmp sgt i32 %e.0.s7_25fixp, 335544, !taffo.info !110
  %conv30.flt = zext i1 %13 to i32, !taffo.info !110, !taffo.initweight !13
  br label %while.cond, !llvm.loop !111

while.end:                                        ; preds = %while.cond
  ret i32 %xc1.0.s2_30fixp, !taffo.info !52, !taffo.initweight !12
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
!7 = !{i32 -1, i32 -1}
!8 = distinct !{null}
!9 = !{i32 0, i1 false, i32 0, i1 false}
!10 = !{i1 false, !11, i1 false, i2 1}
!11 = !{double 1.000000e+00, double 1.000000e+00}
!12 = !{i32 2}
!13 = !{i32 3}
!14 = !{i1 false, !15, i1 false, i2 0}
!15 = !{double 0.000000e+00, double 1.000000e+00}
!16 = !{i1 false, !11, i1 false, i2 0}
!17 = !{!18, !19, i1 false, i2 1}
!18 = !{!"fixp", i32 -32, i32 29}
!19 = !{double -1.000000e+00, double 1.000000e+00}
!20 = !{!21, !22, i1 false, i2 1}
!21 = !{!"fixp", i32 -32, i32 30}
!22 = !{double 0xBF847AE140000000, double 0x3F847AE140000000}
!23 = !{!21, !19, i1 false, i2 1}
!24 = !{!25, !26, i1 false, i2 1}
!25 = !{!"fixp", i32 64, i32 54}
!26 = !{double 0.000000e+00, double 0.000000e+00}
!27 = !{!28, i1 false}
!28 = !{!29, !30, i1 false, i2 0}
!29 = !{!"fixp", i32 32, i32 24}
!30 = !{double 0x3FDFEF9DC0000000, double 0x3FDFEF9DC0000000}
!31 = !{!32, !26, i1 false, i2 1}
!32 = !{!"fixp", i32 32, i32 32}
!33 = !{!34, !35, i1 false, i2 1}
!34 = !{!"fixp", i32 64, i32 58}
!35 = !{double -0.000000e+00, double -0.000000e+00}
!36 = !{!37, i1 false}
!37 = !{!38, !39, i1 false, i2 0}
!38 = !{!"fixp", i32 -32, i32 28}
!39 = !{double 0xBFA99999A0000000, double 0xBFA99999A0000000}
!40 = !{!32, !35, i1 false, i2 1}
!41 = !{!42, !22, i1 false, i2 1}
!42 = !{!"fixp", i32 -64, i32 59}
!43 = !{!44, i1 false}
!44 = !{!45, !46, i1 false, i2 0}
!45 = !{!"fixp", i32 32, i32 29}
!46 = !{double 0x3F847AE140000000, double 0x3F847AE140000000}
!47 = !{!18, !22, i1 false, i2 1}
!48 = !{i1 false, !16}
!49 = !{!18, !50, i1 false, i2 1}
!50 = !{double 0xBFF028F5C2800000, double 0x3FF028F5C2800000}
!51 = !{!18, i1 false, i1 false, i2 1}
!52 = !{i1 false, !53, i1 false, i2 1}
!53 = !{double -4.000000e+00, double 4.000000e+00}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{i32 -1}
!57 = !{i32 0, i1 false}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 0xBFDFFFFFF4000000, double 0x3FDFFFFFF4000000}
!60 = !{!61, !62, i1 false, i2 1}
!61 = !{!"fixp", i32 32, i32 26}
!62 = !{double 0.000000e+00, double 5.000000e+01}
!63 = !{!"test"}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 1.010000e+02}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 0.000000e+00, double 2.000000e+02}
!68 = !{i1 false, i1 false}
!69 = !{i1 false, !70, i1 false, i2 0}
!70 = !{double 0.000000e+00, double 1.000000e+02}
!71 = !{i1 false, !62, i1 false, i2 1}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 1.000000e+00, double 2.010000e+02}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 1.000000e+00, double 1.010000e+02}
!76 = distinct !{!76, !55}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 0.000000e+00, double 2.000000e+00}
!79 = !{i1 false, !80, i1 false, i2 0}
!80 = !{double 0.000000e+00, double 2.020000e+02}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 0.000000e+00, double 2.010000e+02}
!83 = !{!84, !62, i1 false, i2 1}
!84 = !{!"fixp", i32 -32, i32 25}
!85 = !{!21, !59, i1 false, i2 1}
!86 = !{i1 false, i1 false, i1 false}
!87 = !{i1 false, !88, i1 false, i2 0}
!88 = !{double 1.000000e+00, double 2.020000e+02}
!89 = distinct !{!89, !55}
!90 = !{i1 false, !91, i1 false, i2 0}
!91 = !{double 1.000000e+00, double 2.000000e+00}
!92 = distinct !{!92, !55}
!93 = distinct !{!93, !55}
!94 = !{}
!95 = !{i1 false, !96}
!96 = !{i1 false, !97, i1 false, i2 0}
!97 = !{double 0x3FCD70A3E0000000, double 0x3FCD70A3E0000000}
!98 = distinct !{!98, !55}
!99 = !{i32 3, i32 3}
!100 = !{i32 1, !83, i32 1, !83}
!101 = !{float (float, float)* @ex0}
!102 = !{!84, !103, i1 false, i2 1}
!103 = !{double -5.000000e+01, double 5.000000e+01}
!104 = !{!105, !26, i1 false, i2 1}
!105 = !{!"fixp", i32 64, i32 49}
!106 = !{!107, !59, i1 false, i2 1}
!107 = !{!"fixp", i32 -64, i32 54}
!108 = !{!84, !109, i1 false, i2 1}
!109 = !{double 0xC0493FFFFFE80000, double 0x40493FFFFFE80000}
!110 = !{!84, i1 false, i1 false, i2 1}
!111 = distinct !{!111, !55}
