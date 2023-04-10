; ModuleID = '/tmp/tmp.3pF1tXzCRY/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.4 = private unnamed_addr constant [20 x i8] c"Norm squared: %.4f\0A\00", align 1, !taffo.info !0
@.str.6 = private unnamed_addr constant [12 x i8] c"Norm: %.4f\0A\00", align 1, !taffo.info !2
@__const.main.source = private unnamed_addr constant [8 x float] [float 4.000000e+00, float 2.000000e+00, float 7.000000e+00, float 8.000000e+00, float 2.000000e+00, float 1.000000e+00, float 5.000000e+00, float 1.100000e+01], align 16, !taffo.info !4
@.str.9 = private unnamed_addr constant [17 x i8] c"Initial vector: \00", align 1, !taffo.info !6
@.str.10 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1, !taffo.info !8
@.str.11 = private unnamed_addr constant [9 x i8] c"Result: \00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local void @normalize(float* noundef %in_v, float* noundef %out_v) #0 !taffo.start !16 !taffo.initweight !17 !taffo.equivalentChild !18 !taffo.funinfo !19 {
entry:
  %0 = lshr i32 0, 20
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %norm_squared.0.u20_12fixp = phi i32 [ %0, %entry ], [ %u20_12fixp, %for.inc ], !taffo.info !20
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !23
  %1 = uitofp i32 %norm_squared.0.u20_12fixp to double, !taffo.info !20, !taffo.target !25
  %2 = fdiv double %1, 4.096000e+03, !taffo.info !20, !taffo.target !25
  %3 = uitofp i32 %norm_squared.0.u20_12fixp to float, !taffo.info !20, !taffo.target !25
  %4 = fdiv float %3, 4.096000e+03, !taffo.info !20, !taffo.target !25
  %cmp = icmp slt i32 %i.0, 8, !taffo.info !26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !28
  %arrayidx.flt.u9_23fixp = getelementptr inbounds float, float* %in_v, i64 %idxprom, !taffo.info !30, !taffo.initweight !33
  %.flt2 = load float, float* %arrayidx.flt.u9_23fixp, align 4, !taffo.info !30, !taffo.initweight !34
  %5 = fmul float 0x4160000000000000, %.flt2, !taffo.info !30
  %.flt2.fallback.u9_23fixp = fptoui float %5 to i32, !taffo.info !30
  %idxprom4 = sext i32 %i.0 to i64, !taffo.info !28
  %arrayidx5.flt.u9_23fixp = getelementptr inbounds float, float* %in_v, i64 %idxprom4, !taffo.info !30, !taffo.initweight !33
  %.flt = load float, float* %arrayidx5.flt.u9_23fixp, align 4, !taffo.info !30, !taffo.initweight !34
  %6 = fmul float 0x4160000000000000, %.flt, !taffo.info !30
  %.flt.fallback.u9_23fixp = fptoui float %6 to i32, !taffo.info !30
  %7 = zext i32 %.flt2.fallback.u9_23fixp to i64, !taffo.info !30
  %8 = zext i32 %.flt.fallback.u9_23fixp to i64, !taffo.info !30
  %9 = mul i64 %7, %8, !taffo.info !35, !taffo.target !25
  %10 = lshr i64 %9, 34
  %11 = trunc i64 %10 to i32
  %u20_12fixp = add i32 %11, %norm_squared.0.u20_12fixp, !taffo.info !20, !taffo.target !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !37, !taffo.constinfo !39
  br label %for.cond, !llvm.loop !40

for.end:                                          ; preds = %for.cond
  %call.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), double noundef %2), !taffo.info !42, !taffo.initweight !34, !taffo.target !25, !taffo.constinfo !43
  %call7.flt = call float @sqrtf(float noundef %4) #4, !taffo.info !44, !taffo.initweight !33, !taffo.target !25, !taffo.constinfo !39
  %12 = fmul float 0x4140000000000000, %call7.flt, !taffo.info !44, !taffo.target !25, !taffo.constinfo !39
  %call7.flt.fallback.u11_21fixp = fptoui float %12 to i32, !taffo.info !44, !taffo.target !25
  %conv8.u10_22fixp = shl i32 %call7.flt.fallback.u11_21fixp, 1, !taffo.info !47, !taffo.target !25
  %13 = uitofp i32 %conv8.u10_22fixp to double, !taffo.info !47, !taffo.target !25
  %14 = fdiv double %13, 0x4150000000000000, !taffo.info !47, !taffo.target !25
  %call9.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), double noundef %14), !taffo.info !49, !taffo.initweight !34, !taffo.constinfo !43
  %15 = zext i32 %call7.flt.fallback.u11_21fixp to i33, !taffo.info !44, !taffo.target !25
  %16 = lshr i33 0, 12
  %17 = icmp ne i33 %15, %16, !taffo.info !49
  br i1 %17, label %if.then, label %if.end, !taffo.info !50, !taffo.initweight !34

if.then:                                          ; preds = %for.end
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc21, %if.then
  %i12.0 = phi i32 [ 0, %if.then ], [ %inc22, %for.inc21 ], !taffo.info !23
  %cmp14 = icmp slt i32 %i12.0, 8, !taffo.info !26
  br i1 %cmp14, label %for.body16, label %for.end23

for.body16:                                       ; preds = %for.cond13
  %idxprom17 = sext i32 %i12.0 to i64, !taffo.info !28
  %arrayidx18.flt.u9_23fixp = getelementptr inbounds float, float* %in_v, i64 %idxprom17, !taffo.info !30, !taffo.initweight !33
  %.flt1 = load float, float* %arrayidx18.flt.u9_23fixp, align 4, !taffo.info !52, !taffo.initweight !34
  %18 = fmul float 0x4140000000000000, %.flt1, !taffo.info !52
  %.flt1.fallback.u11_21fixp = fptoui float %18 to i32, !taffo.info !52
  %19 = zext i32 %.flt1.fallback.u11_21fixp to i64, !taffo.info !52
  %20 = shl i64 %19, 21, !taffo.info !52
  %21 = zext i32 %call7.flt.fallback.u11_21fixp to i64, !taffo.info !44, !taffo.target !25
  %22 = udiv i64 %20, %21, !taffo.info !53
  %div.u11_21fixp = trunc i64 %22 to i32, !taffo.info !55
  %23 = uitofp i32 %div.u11_21fixp to float, !taffo.info !55
  %24 = fdiv float %23, 0x4140000000000000, !taffo.info !55
  %idxprom19 = sext i32 %i12.0 to i64, !taffo.info !28
  %arrayidx20.flt.u1_31fixp = getelementptr inbounds float, float* %out_v, i64 %idxprom19, !taffo.info !56, !taffo.initweight !33
  store float %24, float* %arrayidx20.flt.u1_31fixp, align 4, !taffo.info !58
  br label %for.inc21

for.inc21:                                        ; preds = %for.body16
  %inc22 = add nsw i32 %i12.0, 1, !taffo.info !37, !taffo.constinfo !39
  br label %for.cond13, !llvm.loop !59

for.end23:                                        ; preds = %for.cond13
  br label %if.end

if.end:                                           ; preds = %for.end, %for.end23
  ret void
}

declare !taffo.initweight !60 !taffo.funinfo !61 i32 @printf(i8* noundef, ...) #1

; Function Attrs: nounwind
declare !taffo.initweight !60 !taffo.funinfo !61 float @sqrtf(float noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.start !16 !taffo.initweight !62 !taffo.funinfo !62 {
entry:
  %source = alloca [8 x float], align 16
  %in_v.u9_23fixp = alloca [8 x i32], align 16, !taffo.info !30, !taffo.target !63
  %out_v.u35_29fixp = alloca [8 x i64], align 16, !taffo.info !64, !taffo.target !67
  %0 = bitcast [8 x float]* %source to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([8 x float]* @__const.main.source to i8*), i64 32, i1 false), !taffo.constinfo !68
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !23
  %cmp = icmp slt i32 %i.0, 8, !taffo.info !26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !28
  %arrayidx = getelementptr inbounds [8 x float], [8 x float]* %source, i64 0, i64 %idxprom
  %.flt = load float, float* %arrayidx, align 4, !taffo.info !30, !taffo.initweight !34, !taffo.target !63
  %1 = fmul float 0x4160000000000000, %.flt, !taffo.info !30, !taffo.target !63
  %.flt.fallback.u9_23fixp = fptoui float %1 to i32, !taffo.info !30, !taffo.target !63
  %idxprom3 = sext i32 %i.0 to i64, !taffo.info !28
  %arrayidx4.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %in_v.u9_23fixp, i64 0, i64 %idxprom3, !taffo.info !30, !taffo.target !63
  store i32 %.flt.fallback.u9_23fixp, i32* %arrayidx4.u9_23fixp, align 4, !taffo.info !69, !taffo.target !63
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !37, !taffo.constinfo !39
  br label %for.cond, !llvm.loop !70

for.end:                                          ; preds = %for.cond
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0)), !taffo.constinfo !39
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc12, %for.end
  %i5.0 = phi i32 [ 0, %for.end ], [ %inc13, %for.inc12 ], !taffo.info !23
  %cmp7 = icmp slt i32 %i5.0, 8, !taffo.info !26
  br i1 %cmp7, label %for.body8, label %for.end14

for.body8:                                        ; preds = %for.cond6
  %idxprom9 = sext i32 %i5.0 to i64, !taffo.info !28
  %arrayidx10.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %in_v.u9_23fixp, i64 0, i64 %idxprom9, !taffo.info !30, !taffo.target !63
  %u9_23fixp = load i32, i32* %arrayidx10.u9_23fixp, align 4, !taffo.info !30, !taffo.target !63
  %2 = uitofp i32 %u9_23fixp to double, !taffo.info !30, !taffo.target !63
  %3 = fdiv double %2, 0x4160000000000000, !taffo.info !30, !taffo.target !63
  %call11.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), double noundef %3), !taffo.info !71, !taffo.initweight !72, !taffo.target !63, !taffo.constinfo !43
  br label %for.inc12

for.inc12:                                        ; preds = %for.body8
  %inc13 = add nsw i32 %i5.0, 1, !taffo.info !37, !taffo.constinfo !39
  br label %for.cond6, !llvm.loop !73

for.end14:                                        ; preds = %for.cond6
  %call15 = call i32 @putchar(i32 noundef 10), !taffo.constinfo !39
  %arraydecay.u9_23fixp = getelementptr inbounds [8 x i32], [8 x i32]* %in_v.u9_23fixp, i64 0, i64 0, !taffo.info !30, !taffo.target !63
  %arraydecay16.u35_29fixp = getelementptr inbounds [8 x i64], [8 x i64]* %out_v.u35_29fixp, i64 0, i64 0, !taffo.info !64, !taffo.target !67
  call void @normalize.1_fixp(i32* %arraydecay.u9_23fixp, i64* %arraydecay16.u35_29fixp), !taffo.info !69, !taffo.target !63, !taffo.constinfo !43
  %call17 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)), !taffo.constinfo !39
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc27, %for.end14
  %i18.0 = phi i32 [ 0, %for.end14 ], [ %inc28, %for.inc27 ], !taffo.info !23
  %cmp20 = icmp slt i32 %i18.0, 8, !taffo.info !26
  br i1 %cmp20, label %for.body22, label %for.end29

for.body22:                                       ; preds = %for.cond19
  %idxprom23 = sext i32 %i18.0 to i64, !taffo.info !28
  %arrayidx24.u35_29fixp = getelementptr inbounds [8 x i64], [8 x i64]* %out_v.u35_29fixp, i64 0, i64 %idxprom23, !taffo.info !64, !taffo.target !67
  %u35_29fixp = load i64, i64* %arrayidx24.u35_29fixp, align 4, !taffo.info !64, !taffo.target !67
  %4 = uitofp i64 %u35_29fixp to double, !taffo.info !64, !taffo.target !67
  %5 = fdiv double %4, 0x41C0000000000000, !taffo.info !64, !taffo.target !67
  %call26.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), double noundef %5), !taffo.info !74, !taffo.initweight !72, !taffo.target !67, !taffo.constinfo !43
  br label %for.inc27

for.inc27:                                        ; preds = %for.body22
  %inc28 = add nsw i32 %i18.0, 1, !taffo.info !37, !taffo.constinfo !39
  br label %for.cond19, !llvm.loop !75

for.end29:                                        ; preds = %for.cond19
  %call30 = call i32 @putchar(i32 noundef 10), !taffo.constinfo !39
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare !taffo.initweight !76 !taffo.funinfo !77 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare !taffo.initweight !60 !taffo.funinfo !61 i32 @putchar(i32 noundef) #1

; Function Attrs: noinline nounwind uwtable
define internal void @normalize.1_fixp(i32* noundef %in_v.u9_23fixp, i64* noundef %out_v.u35_29fixp) #0 !taffo.start !16 !taffo.initweight !78 !taffo.funinfo !79 !taffo.sourceFunction !80 {
entry:
  %0 = lshr i32 0, 21
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %norm_squared.0.u21_11fixp = phi i32 [ %0, %entry ], [ %u21_11fixp, %for.inc ], !taffo.info !81
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !23
  %1 = uitofp i32 %norm_squared.0.u21_11fixp to double, !taffo.info !81, !taffo.target !25
  %2 = fdiv double %1, 2.048000e+03, !taffo.info !81, !taffo.target !25
  %3 = uitofp i32 %norm_squared.0.u21_11fixp to float, !taffo.info !81, !taffo.target !25
  %4 = fdiv float %3, 2.048000e+03, !taffo.info !81, !taffo.target !25
  %cmp = icmp slt i32 %i.0, 8, !taffo.info !26
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !28
  %arrayidx.u9_23fixp = getelementptr inbounds i32, i32* %in_v.u9_23fixp, i64 %idxprom, !taffo.info !30
  %u9_23fixp = load i32, i32* %arrayidx.u9_23fixp, align 4, !taffo.info !30
  %idxprom4 = sext i32 %i.0 to i64, !taffo.info !28
  %arrayidx5.u9_23fixp = getelementptr inbounds i32, i32* %in_v.u9_23fixp, i64 %idxprom4, !taffo.info !30
  %u9_23fixp1 = load i32, i32* %arrayidx5.u9_23fixp, align 4, !taffo.info !30
  %5 = zext i32 %u9_23fixp to i64, !taffo.info !30
  %6 = zext i32 %u9_23fixp1 to i64, !taffo.info !30
  %7 = mul i64 %5, %6, !taffo.info !84, !taffo.target !25
  %8 = lshr i64 %7, 35
  %9 = trunc i64 %8 to i32
  %u21_11fixp = add i32 %9, %norm_squared.0.u21_11fixp, !taffo.info !81, !taffo.target !25
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !37, !taffo.constinfo !39
  br label %for.cond, !llvm.loop !85

for.end:                                          ; preds = %for.cond
  %call.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), double noundef %2), !taffo.info !86, !taffo.initweight !34, !taffo.target !25, !taffo.constinfo !43
  %call7.flt = call float @sqrtf(float noundef %4) #4, !taffo.info !87, !taffo.initweight !33, !taffo.target !25, !taffo.constinfo !39
  %10 = fmul float 0x4140000000000000, %call7.flt, !taffo.info !87, !taffo.target !25, !taffo.constinfo !39
  %call7.flt.fallback.u11_21fixp = fptoui float %10 to i32, !taffo.info !87, !taffo.target !25
  %11 = uitofp i32 %call7.flt.fallback.u11_21fixp to double, !taffo.info !87, !taffo.target !25
  %12 = fdiv double %11, 0x4140000000000000, !taffo.info !87, !taffo.target !25
  %call9.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), double noundef %12), !taffo.info !89, !taffo.initweight !34, !taffo.constinfo !43
  %13 = zext i32 %call7.flt.fallback.u11_21fixp to i33, !taffo.info !87, !taffo.target !25
  %14 = lshr i33 0, 12
  %15 = icmp ne i33 %13, %14, !taffo.info !89
  br i1 %15, label %if.then, label %if.end, !taffo.info !50, !taffo.initweight !34

if.then:                                          ; preds = %for.end
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc21, %if.then
  %i12.0 = phi i32 [ 0, %if.then ], [ %inc22, %for.inc21 ], !taffo.info !23
  %cmp14 = icmp slt i32 %i12.0, 8, !taffo.info !26
  br i1 %cmp14, label %for.body16, label %for.end23

for.body16:                                       ; preds = %for.cond13
  %idxprom17 = sext i32 %i12.0 to i64, !taffo.info !28
  %arrayidx18.u9_23fixp = getelementptr inbounds i32, i32* %in_v.u9_23fixp, i64 %idxprom17, !taffo.info !30
  %u9_23fixp2 = load i32, i32* %arrayidx18.u9_23fixp, align 4, !taffo.info !30
  %16 = zext i32 %u9_23fixp2 to i64, !taffo.info !30
  %17 = shl i64 %16, 27, !taffo.info !30
  %18 = zext i32 %call7.flt.fallback.u11_21fixp to i64, !taffo.info !87, !taffo.target !25
  %div.u35_29fixp = udiv i64 %17, %18, !taffo.info !64
  %idxprom19 = sext i32 %i12.0 to i64, !taffo.info !28
  %arrayidx20.u35_29fixp = getelementptr inbounds i64, i64* %out_v.u35_29fixp, i64 %idxprom19, !taffo.info !64
  store i64 %div.u35_29fixp, i64* %arrayidx20.u35_29fixp, align 4, !taffo.info !58
  br label %for.inc21

for.inc21:                                        ; preds = %for.body16
  %inc22 = add nsw i32 %i12.0, 1, !taffo.info !37, !taffo.constinfo !39
  br label %for.cond13, !llvm.loop !90

for.end23:                                        ; preds = %for.cond13
  br label %if.end

if.end:                                           ; preds = %for.end, %for.end23
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.170000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.140000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 1.000000e+00, double 1.100000e+01}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.180000e+02}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 1.020000e+02}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!16 = !{i1 true}
!17 = !{i32 -1, i32 -1}
!18 = distinct !{null}
!19 = !{i32 0, i1 false, i32 0, i1 false}
!20 = !{!21, !22, i1 false, i2 1}
!21 = !{!"fixp", i32 32, i32 12}
!22 = !{double 0.000000e+00, double 5.242880e+05}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 0.000000e+00, double 9.000000e+00}
!25 = !{!"norm_squared"}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 0.000000e+00, double 1.000000e+00}
!28 = !{i1 false, !29, i1 false, i2 0}
!29 = !{double 0.000000e+00, double 8.000000e+00}
!30 = !{!31, !32, i1 false, i2 1}
!31 = !{!"fixp", i32 32, i32 23}
!32 = !{double 0.000000e+00, double 2.560000e+02}
!33 = !{i32 2}
!34 = !{i32 3}
!35 = !{!36, !22, i1 false, i2 1}
!36 = !{!"fixp", i32 64, i32 46}
!37 = !{i1 false, !38, i1 false, i2 0}
!38 = !{double 1.000000e+00, double 9.000000e+00}
!39 = !{i1 false, i1 false}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!21, i1 false, i1 false, i2 1}
!43 = !{i1 false, i1 false, i1 false}
!44 = !{!45, !46, i1 false, i2 1}
!45 = !{!"fixp", i32 32, i32 21}
!46 = !{double 0.000000e+00, double 0x4086A09E667F3BCD}
!47 = !{!48, !46, i1 false, i2 1}
!48 = !{!"fixp", i32 32, i32 22}
!49 = !{!48, i1 false, i1 false, i2 1}
!50 = !{i1 false, !51, i1 false, i2 1}
!51 = !{double 0.000000e+00, double 1.024000e+03}
!52 = !{!45, !32, i1 false, i2 1}
!53 = !{!54, !51, i1 false, i2 1}
!54 = !{!"fixp", i32 64, i32 21}
!55 = !{!45, !51, i1 false, i2 1}
!56 = !{!57, !27, i1 false, i2 1}
!57 = !{!"fixp", i32 32, i32 31}
!58 = !{i1 false, !27, i1 false, i2 1}
!59 = distinct !{!59, !41}
!60 = !{i32 -1}
!61 = !{i32 0, i1 false}
!62 = !{}
!63 = !{!"in_vector"}
!64 = !{!65, !66, i1 false, i2 1}
!65 = !{!"fixp", i32 64, i32 29}
!66 = !{double 0.000000e+00, double 2.560000e+10}
!67 = !{!"out_vector"}
!68 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!69 = !{i1 false, !32, i1 false, i2 1}
!70 = distinct !{!70, !41}
!71 = !{!31, i1 false, i1 false, i2 1}
!72 = !{i32 4}
!73 = distinct !{!73, !41}
!74 = !{!65, i1 false, i1 false, i2 1}
!75 = distinct !{!75, !41}
!76 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!77 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!78 = !{i32 2, i32 2}
!79 = !{i32 1, !30, i32 1, !64}
!80 = !{void (float*, float*)* @normalize}
!81 = !{!82, !83, i1 false, i2 1}
!82 = !{!"fixp", i32 32, i32 11}
!83 = !{double 0.000000e+00, double 0x4131000000000000}
!84 = !{!36, !83, i1 false, i2 1}
!85 = distinct !{!85, !41}
!86 = !{!82, i1 false, i1 false, i2 1}
!87 = !{!45, !88, i1 false, i2 1}
!88 = !{double 0.000000e+00, double 0x40907E0F66AFED07}
!89 = !{!45, i1 false, i1 false, i2 1}
!90 = distinct !{!90, !41}
