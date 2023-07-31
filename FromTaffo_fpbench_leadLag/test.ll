; ModuleID = '/tmp/tmp.Wp8hYK3zwu/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.8 = private unnamed_addr constant [14 x i8] c"Values Begin\0A\00", align 1, !taffo.info !0
@.str.9 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1, !taffo.info !2
@.str.10 = private unnamed_addr constant [12 x i8] c"Values End\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local float @ex0(float noundef %y, float noundef %yd) #0 !taffo.start !10 !taffo.initweight !11 !taffo.equivalentChild !12 !taffo.funinfo !13 {
entry:
  %cmp = fcmp ogt float 1.000000e+00, 0x3F847AE140000000, !taffo.info !14, !taffo.initweight !16
  %conv = zext i1 %cmp to i32, !taffo.info !14, !taffo.initweight !17
  %sub = fsub float %y, %yd
  %cmp8 = fcmp olt float %sub, -1.000000e+00, !taffo.info !18
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = ashr i32 -1073741824, 5
  br label %if.end14

if.else:                                          ; preds = %entry
  %cmp10 = fcmp olt float 1.000000e+00, %sub, !taffo.info !18
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  %1 = lshr i32 -2147483648, 6
  br label %if.end

if.else13:                                        ; preds = %if.else
  %2 = fmul float 0x4180000000000000, %sub
  %3 = fptosi float %2 to i32
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then12
  %tmp_1.0.s7_25fixp = phi i32 [ %1, %if.then12 ], [ %3, %if.else13 ], !taffo.info !20
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %tmp_1.1.s7_25fixp = phi i32 [ %0, %if.then ], [ %tmp_1.0.s7_25fixp, %if.end ], !taffo.info !20
  %4 = lshr i32 0, 7
  %5 = lshr i32 0, 4
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %if.end14
  %tmp.0 = phi i32 [ %conv, %if.end14 ], [ %conv24.flt, %if.end22 ], !taffo.info !18
  %i.0 = phi float [ 0.000000e+00, %if.end14 ], [ %add, %if.end22 ], !taffo.info !18
  %xc1.0.s4_28fixp = phi i32 [ %5, %if.end14 ], [ %s4_28fixp, %if.end22 ], !taffo.info !23
  %xc0.0.s7_25fixp = phi i32 [ %4, %if.end14 ], [ %s7_25fixp10, %if.end22 ], !taffo.info !26
  %6 = sitofp i32 %xc1.0.s4_28fixp to float, !taffo.info !23
  %7 = fdiv float %6, 0x41B0000000000000, !taffo.info !23
  %tobool = icmp ne i32 %tmp.0, 0, !taffo.info !18
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = sext i32 -13421773 to i64
  %9 = sext i32 %xc1.0.s4_28fixp to i64, !taffo.info !23
  %10 = mul i64 %8, %9, !taffo.info !28
  %11 = ashr i64 %10, 31
  %12 = trunc i64 %11 to i32
  %s7_25fixp = add i32 %12, %tmp_1.1.s7_25fixp, !taffo.info !31
  %13 = zext i32 8371831 to i64
  %14 = sext i32 %xc0.0.s7_25fixp to i64, !taffo.info !26
  %15 = mul i64 %13, %14, !taffo.info !32
  %16 = ashr i64 %15, 24
  %17 = trunc i64 %16 to i32
  %s7_25fixp10 = add i32 %17, %s7_25fixp, !taffo.info !26
  %18 = zext i32 5368709 to i64
  %19 = sext i32 %s7_25fixp10 to i64, !taffo.info !26
  %20 = mul i64 %18, %19, !taffo.info !34
  %21 = ashr i64 %20, 26
  %22 = trunc i64 %21 to i32
  %s4_28fixp = add i32 %22, %xc1.0.s4_28fixp, !taffo.info !23
  %add = fadd float %i.0, 1.000000e+00, !taffo.info !36, !taffo.constinfo !37
  %23 = ashr i32 %s4_28fixp, 3, !taffo.info !23
  %sub17.s7_25fixp = sub i32 %tmp_1.1.s7_25fixp, %23, !taffo.info !38
  %24 = lshr i32 0, 7
  %25 = icmp slt i32 %sub17.s7_25fixp, %24, !taffo.info !40
  br i1 %25, label %if.then20, label %if.else21, !taffo.info !41, !taffo.initweight !17

if.then20:                                        ; preds = %while.body
  %fneg.s7_25fixp = sub i32 0, %sub17.s7_25fixp, !taffo.info !38
  br label %if.end22

if.else21:                                        ; preds = %while.body
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then20
  %e.0.s7_25fixp = phi i32 [ %fneg.s7_25fixp, %if.then20 ], [ %sub17.s7_25fixp, %if.else21 ], !taffo.info !38
  %26 = lshr i32 21474836, 6
  %27 = icmp sgt i32 %e.0.s7_25fixp, %26, !taffo.info !40
  %conv24.flt = zext i1 %27 to i32, !taffo.info !40, !taffo.initweight !17
  br label %while.cond, !llvm.loop !43

while.end:                                        ; preds = %while.cond
  ret float %7, !taffo.info !41, !taffo.initweight !16
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(float* noundef %arr, float* noundef %res) #0 !taffo.start !10 !taffo.initweight !11 !taffo.funinfo !13 {
entry:
  %y.u6_26fixp = alloca [100 x i32], align 16, !taffo.info !45, !taffo.target !48
  %yd.u6_26fixp = alloca [100 x i32], align 16, !taffo.info !45
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !49
  %cmp = icmp slt i32 %i.0, 100, !taffo.info !18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 2, !taffo.info !51, !taffo.constinfo !53
  %idxprom = sext i32 %mul to i64, !taffo.info !51
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %.flt = load float, float* %arrayidx, align 4, !taffo.info !45, !taffo.initweight !17, !taffo.target !48
  %0 = fmul float 0x4190000000000000, %.flt, !taffo.info !45, !taffo.target !48
  %.flt.fallback.u6_26fixp = fptoui float %0 to i32, !taffo.info !45, !taffo.target !48
  %idxprom3 = sext i32 %i.0 to i64, !taffo.info !54
  %arrayidx4.u6_26fixp = getelementptr inbounds [100 x i32], [100 x i32]* %y.u6_26fixp, i64 0, i64 %idxprom3, !taffo.info !45, !taffo.target !48
  store i32 %.flt.fallback.u6_26fixp, i32* %arrayidx4.u6_26fixp, align 4, !taffo.info !56, !taffo.target !48
  %mul5 = mul nsw i32 %i.0, 2, !taffo.info !51, !taffo.constinfo !53
  %add = add nsw i32 %mul5, 1, !taffo.info !57, !taffo.constinfo !53
  %idxprom6 = sext i32 %add to i64, !taffo.info !57
  %arrayidx7 = getelementptr inbounds float, float* %arr, i64 %idxprom6
  %.flt1 = load float, float* %arrayidx7, align 4, !taffo.info !45, !taffo.initweight !17
  %1 = fmul float 0x4190000000000000, %.flt1, !taffo.info !45
  %.flt1.fallback.u6_26fixp = fptoui float %1 to i32, !taffo.info !45
  %idxprom8 = sext i32 %i.0 to i64, !taffo.info !54
  %arrayidx9.u6_26fixp = getelementptr inbounds [100 x i32], [100 x i32]* %yd.u6_26fixp, i64 0, i64 %idxprom8, !taffo.info !45
  store i32 %.flt1.fallback.u6_26fixp, i32* %arrayidx9.u6_26fixp, align 4, !taffo.info !56
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !59, !taffo.constinfo !53
  br label %for.cond, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc26, %for.end
  %i10.0 = phi i32 [ 0, %for.end ], [ %inc27, %for.inc26 ], !taffo.info !62
  %cmp12 = icmp slt i32 %i10.0, 1, !taffo.info !18
  br i1 %cmp12, label %for.body13, label %for.end28

for.body13:                                       ; preds = %for.cond11
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc23, %for.body13
  %j.0 = phi i32 [ 0, %for.body13 ], [ %inc24, %for.inc23 ], !taffo.info !64
  %cmp15 = icmp slt i32 %j.0, 100, !taffo.info !18
  br i1 %cmp15, label %for.body16, label %for.end25

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %j.0 to i64, !taffo.info !66
  %arrayidx18.u6_26fixp = getelementptr inbounds [100 x i32], [100 x i32]* %y.u6_26fixp, i64 0, i64 %idxprom17, !taffo.info !45, !taffo.target !48
  %u6_26fixp2 = load i32, i32* %arrayidx18.u6_26fixp, align 4, !taffo.info !68, !taffo.target !48
  %idxprom19 = sext i32 %j.0 to i64, !taffo.info !66
  %arrayidx20.u6_26fixp = getelementptr inbounds [100 x i32], [100 x i32]* %yd.u6_26fixp, i64 0, i64 %idxprom19, !taffo.info !45
  %u6_26fixp = load i32, i32* %arrayidx20.u6_26fixp, align 4, !taffo.info !68
  %2 = lshr i32 %u6_26fixp2, 1, !taffo.info !68, !taffo.target !48
  %3 = lshr i32 %u6_26fixp, 1, !taffo.info !68
  %call.s4_28fixp = call i32 @ex0.1_s4_28fixp(i32 %2, i32 %3), !taffo.info !23, !taffo.constinfo !69, !taffo.target !48
  %4 = sitofp i32 %call.s4_28fixp to float, !taffo.info !23, !taffo.target !48
  %5 = fdiv float %4, 0x41B0000000000000, !taffo.info !23, !taffo.target !48
  %idxprom21 = sext i32 %j.0 to i64, !taffo.info !66
  %arrayidx22 = getelementptr inbounds float, float* %res, i64 %idxprom21
  store float %5, float* %arrayidx22, align 4, !taffo.info !56, !taffo.target !48
  br label %for.inc23

for.inc23:                                        ; preds = %for.body16
  %inc24 = add nsw i32 %j.0, 1, !taffo.info !70, !taffo.constinfo !53
  br label %for.cond14, !llvm.loop !72

for.end25:                                        ; preds = %for.cond14
  br label %for.inc26

for.inc26:                                        ; preds = %for.end25
  %inc27 = add nsw i32 %i10.0, 1, !taffo.info !73, !taffo.constinfo !53
  br label %for.cond11, !llvm.loop !75

for.end28:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !76 !taffo.funinfo !76 {
entry:
  %arr = alloca [200 x float], align 16
  %res = alloca [100 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 200
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 16, !taffo.constinfo !53
  %conv = sitofp i32 %rem to float
  %add = fadd float %conv, 0x3FCD70A3E0000000, !taffo.constinfo !77
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 %idxprom
  store float %add, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !53
  br label %for.cond, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 0
  call void @test(float* noundef %arraydecay, float* noundef %arraydecay1), !taffo.constinfo !69
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0)), !taffo.constinfo !53
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc10, %for.end
  %j.0 = phi i32 [ 0, %for.end ], [ %inc11, %for.inc10 ]
  %cmp3 = icmp slt i32 %j.0, 100
  br i1 %cmp3, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond2
  %idxprom6 = sext i32 %j.0 to i64
  %arrayidx7 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 %idxprom6
  %0 = load float, float* %arrayidx7, align 4
  %conv8 = fpext float %0 to double
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), double noundef %conv8), !taffo.constinfo !69
  br label %for.inc10

for.inc10:                                        ; preds = %for.body5
  %inc11 = add nsw i32 %j.0, 1, !taffo.constinfo !53
  br label %for.cond2, !llvm.loop !81

for.end12:                                        ; preds = %for.cond2
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)), !taffo.constinfo !53
  ret i32 0
}

declare !taffo.initweight !82 !taffo.funinfo !83 i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @ex0.1_s4_28fixp(i32 noundef %y.s7_25fixp, i32 noundef %yd.s7_25fixp) #0 !taffo.start !10 !taffo.initweight !84 !taffo.funinfo !85 !taffo.sourceFunction !86 {
entry:
  %cmp = fcmp ogt float 1.000000e+00, 0x3F847AE140000000, !taffo.info !14, !taffo.initweight !16
  %conv = zext i1 %cmp to i32, !taffo.info !14, !taffo.initweight !17
  %sub.s7_25fixp = sub i32 %y.s7_25fixp, %yd.s7_25fixp, !taffo.info !20
  %0 = ashr i32 -1073741824, 5
  %cmp8.matchop = icmp slt i32 %sub.s7_25fixp, %0, !taffo.info !18
  br i1 %cmp8.matchop, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = ashr i32 -1073741824, 5
  br label %if.end14

if.else:                                          ; preds = %entry
  %2 = lshr i32 -2147483648, 6
  %cmp10.matchop = icmp slt i32 %2, %sub.s7_25fixp, !taffo.info !18
  br i1 %cmp10.matchop, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else
  %3 = lshr i32 -2147483648, 6
  br label %if.end

if.else13:                                        ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then12
  %tmp_1.0.s7_25fixp = phi i32 [ %3, %if.then12 ], [ %sub.s7_25fixp, %if.else13 ], !taffo.info !20
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  %tmp_1.1.s7_25fixp = phi i32 [ %1, %if.then ], [ %tmp_1.0.s7_25fixp, %if.end ], !taffo.info !20
  %4 = lshr i32 0, 7
  %5 = lshr i32 0, 4
  br label %while.cond

while.cond:                                       ; preds = %if.end22, %if.end14
  %tmp.0 = phi i32 [ %conv, %if.end14 ], [ %conv24.flt, %if.end22 ], !taffo.info !18
  %i.0 = phi float [ 0.000000e+00, %if.end14 ], [ %add, %if.end22 ], !taffo.info !18
  %xc1.0.s4_28fixp = phi i32 [ %5, %if.end14 ], [ %s4_28fixp, %if.end22 ], !taffo.info !23
  %xc0.0.s7_25fixp = phi i32 [ %4, %if.end14 ], [ %s7_25fixp10, %if.end22 ], !taffo.info !26
  %tobool = icmp ne i32 %tmp.0, 0, !taffo.info !18
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = sext i32 -13421773 to i64
  %7 = sext i32 %xc1.0.s4_28fixp to i64, !taffo.info !23
  %8 = mul i64 %6, %7, !taffo.info !28
  %9 = ashr i64 %8, 31
  %10 = trunc i64 %9 to i32
  %s7_25fixp = add i32 %10, %tmp_1.1.s7_25fixp, !taffo.info !31
  %11 = zext i32 8371831 to i64
  %12 = sext i32 %xc0.0.s7_25fixp to i64, !taffo.info !26
  %13 = mul i64 %11, %12, !taffo.info !32
  %14 = ashr i64 %13, 24
  %15 = trunc i64 %14 to i32
  %s7_25fixp10 = add i32 %15, %s7_25fixp, !taffo.info !26
  %16 = zext i32 5368709 to i64
  %17 = sext i32 %s7_25fixp10 to i64, !taffo.info !26
  %18 = mul i64 %16, %17, !taffo.info !34
  %19 = ashr i64 %18, 26
  %20 = trunc i64 %19 to i32
  %s4_28fixp = add i32 %20, %xc1.0.s4_28fixp, !taffo.info !23
  %add = fadd float %i.0, 1.000000e+00, !taffo.info !36, !taffo.constinfo !37
  %21 = ashr i32 %s4_28fixp, 3, !taffo.info !23
  %sub17.s7_25fixp = sub i32 %tmp_1.1.s7_25fixp, %21, !taffo.info !38
  %22 = lshr i32 0, 7
  %23 = icmp slt i32 %sub17.s7_25fixp, %22, !taffo.info !40
  br i1 %23, label %if.then20, label %if.else21, !taffo.info !41, !taffo.initweight !17

if.then20:                                        ; preds = %while.body
  %fneg.s7_25fixp = sub i32 0, %sub17.s7_25fixp, !taffo.info !38
  br label %if.end22

if.else21:                                        ; preds = %while.body
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then20
  %e.0.s7_25fixp = phi i32 [ %fneg.s7_25fixp, %if.then20 ], [ %sub17.s7_25fixp, %if.else21 ], !taffo.info !38
  %24 = lshr i32 21474836, 6
  %25 = icmp sgt i32 %e.0.s7_25fixp, %24, !taffo.info !40
  %conv24.flt = zext i1 %25 to i32, !taffo.info !40, !taffo.initweight !17
  br label %while.cond, !llvm.loop !87

while.end:                                        ; preds = %while.cond
  ret i32 %xc1.0.s4_28fixp, !taffo.info !41, !taffo.initweight !16
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{i1 true}
!11 = !{i32 -1, i32 -1}
!12 = distinct !{null}
!13 = !{i32 0, i1 false, i32 0, i1 false}
!14 = !{i1 false, !15, i1 false, i2 1}
!15 = !{double 1.000000e+00, double 1.000000e+00}
!16 = !{i32 2}
!17 = !{i32 3}
!18 = !{i1 false, !19, i1 false, i2 0}
!19 = !{double 0.000000e+00, double 1.000000e+00}
!20 = !{!21, !22, i1 false, i2 1}
!21 = !{!"fixp", i32 -32, i32 25}
!22 = !{double -5.000000e+01, double 5.000000e+01}
!23 = !{!24, !25, i1 false, i2 1}
!24 = !{!"fixp", i32 -32, i32 28}
!25 = !{double 0xC0120C447B7128E1, double 0x40120C447B7128E1}
!26 = !{!21, !27, i1 false, i2 1}
!27 = !{double 0xC049995810A00000, double 0x4049995810A00000}
!28 = !{!29, !30, i1 false, i2 1}
!29 = !{!"fixp", i32 -64, i32 56}
!30 = !{double 0xC049199999A00000, double 0x4049199999A00000}
!31 = !{!21, !30, i1 false, i2 1}
!32 = !{!33, !27, i1 false, i2 1}
!33 = !{!"fixp", i32 -64, i32 49}
!34 = !{!35, !25, i1 false, i2 1}
!35 = !{!"fixp", i32 -64, i32 54}
!36 = !{i1 false, !15, i1 false, i2 0}
!37 = !{i1 false, !36}
!38 = !{!21, !39, i1 false, i2 1}
!39 = !{double 0xC04B41888F6E251C, double 0x404B41888F6E251C}
!40 = !{!21, i1 false, i1 false, i2 1}
!41 = !{i1 false, !42, i1 false, i2 1}
!42 = !{double -4.000000e+00, double 4.000000e+00}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!46, !47, i1 false, i2 1}
!46 = !{!"fixp", i32 32, i32 26}
!47 = !{double 0.000000e+00, double 5.000000e+01}
!48 = !{!"test"}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 0.000000e+00, double 1.010000e+02}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0.000000e+00, double 2.000000e+02}
!53 = !{i1 false, i1 false}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 0.000000e+00, double 1.000000e+02}
!56 = !{i1 false, !47, i1 false, i2 1}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 1.000000e+00, double 2.010000e+02}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 1.000000e+00, double 1.010000e+02}
!61 = distinct !{!61, !44}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 2.000000e+00}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 2.020000e+02}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 0.000000e+00, double 2.010000e+02}
!68 = !{!21, !47, i1 false, i2 1}
!69 = !{i1 false, i1 false, i1 false}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 1.000000e+00, double 2.020000e+02}
!72 = distinct !{!72, !44}
!73 = !{i1 false, !74, i1 false, i2 0}
!74 = !{double 1.000000e+00, double 2.000000e+00}
!75 = distinct !{!75, !44}
!76 = !{}
!77 = !{i1 false, !78}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 0x3FCD70A3E0000000, double 0x3FCD70A3E0000000}
!80 = distinct !{!80, !44}
!81 = distinct !{!81, !44}
!82 = !{i32 -1}
!83 = !{i32 0, i1 false}
!84 = !{i32 3, i32 3}
!85 = !{i32 1, !68, i32 1, !68}
!86 = !{float (float, float)* @ex0}
!87 = distinct !{!87, !44}
