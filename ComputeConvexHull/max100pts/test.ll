; ModuleID = '/tmp/tmp.xMi9Rn7ORl/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"Error: Insufficient points to compute convex hull.\0A\00", align 1, !taffo.info !0
@.str.1 = private unnamed_addr constant [25 x i8] c"Error: Too many points.\0A\00", align 1, !taffo.info !2
@__const.main.x = private unnamed_addr constant [7 x float] [float 0.000000e+00, float 2.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 0.000000e+00, float 3.000000e+00], align 16, !taffo.info !4
@__const.main.y = private unnamed_addr constant [7 x float] [float 3.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 3.000000e+00], align 16, !taffo.info !4
@.str.5 = private unnamed_addr constant [21 x i8] c"Convex Hull Points:\0A\00", align 1, !taffo.info !0
@.str.6 = private unnamed_addr constant [14 x i8] c"(%.2f, %.2f)\0A\00", align 1, !taffo.info !6

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @crossProduct(float noundef %p0_x, float noundef %p0_y, float noundef %p1_x, float noundef %p1_y, float noundef %p2_x, float noundef %p2_y) #0 !taffo.initweight !14 !taffo.equivalentChild !15 !taffo.funinfo !16 {
entry:
  %sub = fsub float %p1_x, %p0_x
  %sub1 = fsub float %p2_y, %p0_y
  %sub2 = fsub float %p2_x, %p0_x
  %sub3 = fsub float %p1_y, %p0_y
  %mul4 = fmul float %sub2, %sub3
  %neg = fneg float %mul4
  %0 = call float @llvm.fmuladd.f32(float %sub, float %sub1, float %neg), !taffo.constinfo !17
  %conv = fptosi float %0 to i32
  ret i32 %conv
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare !taffo.initweight !18 !taffo.funinfo !19 float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @computeConvexHull(float* noundef %x_f, float* noundef %y_f, i32 noundef %numPoints, float* noundef %res_x, float* noundef %res_y) #0 !taffo.initweight !20 !taffo.funinfo !21 !taffo.start !22 {
entry:
  %x.s9_23fixp = alloca [100 x i32], align 16, !taffo.info !23, !taffo.target !26
  %y.s9_23fixp = alloca [100 x i32], align 16, !taffo.info !23, !taffo.target !27
  %cmp = icmp slt i32 %numPoints, 3, !taffo.info !28
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0)), !taffo.constinfo !30
  br label %return

if.else:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %numPoints, 100, !taffo.info !28
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)), !taffo.constinfo !30
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %i.0 = phi i32 [ 0, %if.end4 ], [ %inc, %for.inc ], !taffo.info !28
  %cmp7 = icmp slt i32 %i.0, %numPoints, !taffo.info !28
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !31
  %arrayidx = getelementptr inbounds float, float* %x_f, i64 %idxprom
  %.flt = load float, float* %arrayidx, align 4, !taffo.info !23, !taffo.initweight !33, !taffo.target !26
  %0 = fmul float 0x4160000000000000, %.flt, !taffo.info !23, !taffo.target !26
  %.flt.fallback.s9_23fixp = fptosi float %0 to i32, !taffo.info !23, !taffo.target !26
  %idxprom8 = sext i32 %i.0 to i64, !taffo.info !31
  %arrayidx9.s9_23fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x.s9_23fixp, i64 0, i64 %idxprom8, !taffo.info !23, !taffo.target !26
  store i32 %.flt.fallback.s9_23fixp, i32* %arrayidx9.s9_23fixp, align 4, !taffo.info !34, !taffo.target !26
  %idxprom10 = sext i32 %i.0 to i64, !taffo.info !31
  %arrayidx11 = getelementptr inbounds float, float* %y_f, i64 %idxprom10
  %.flt1 = load float, float* %arrayidx11, align 4, !taffo.info !23, !taffo.initweight !33, !taffo.target !27
  %1 = fmul float 0x4160000000000000, %.flt1, !taffo.info !23, !taffo.target !27
  %.flt1.fallback.s9_23fixp = fptosi float %1 to i32, !taffo.info !23, !taffo.target !27
  %idxprom12 = sext i32 %i.0 to i64, !taffo.info !31
  %arrayidx13.s9_23fixp = getelementptr inbounds [100 x i32], [100 x i32]* %y.s9_23fixp, i64 0, i64 %idxprom12, !taffo.info !23, !taffo.target !27
  store i32 %.flt1.fallback.s9_23fixp, i32* %arrayidx13.s9_23fixp, align 4, !taffo.info !34, !taffo.target !27
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !35, !taffo.constinfo !30
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.end
  %leftmostIndex.0 = phi i32 [ 0, %for.end ], [ %leftmostIndex.1, %for.inc25 ], !taffo.info !28
  %i14.0 = phi i32 [ 1, %for.end ], [ %inc26, %for.inc25 ], !taffo.info !39
  %cmp16 = icmp slt i32 %i14.0, %numPoints, !taffo.info !28
  br i1 %cmp16, label %for.body17, label %for.end27

for.body17:                                       ; preds = %for.cond15
  %idxprom18 = sext i32 %i14.0 to i64, !taffo.info !35
  %arrayidx19.s9_23fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x.s9_23fixp, i64 0, i64 %idxprom18, !taffo.info !23, !taffo.target !26
  %s9_23fixp6 = load i32, i32* %arrayidx19.s9_23fixp, align 4, !taffo.info !23, !taffo.target !26
  %idxprom20 = sext i32 %leftmostIndex.0 to i64, !taffo.info !31
  %arrayidx21.s9_23fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x.s9_23fixp, i64 0, i64 %idxprom20, !taffo.info !23, !taffo.target !26
  %s9_23fixp5 = load i32, i32* %arrayidx21.s9_23fixp, align 4, !taffo.info !23, !taffo.target !26
  %2 = icmp slt i32 %s9_23fixp6, %s9_23fixp5, !taffo.info !41, !taffo.target !26
  br i1 %2, label %if.then23, label %if.end24, !taffo.info !34, !taffo.initweight !42, !taffo.target !26

if.then23:                                        ; preds = %for.body17
  br label %if.end24

if.end24:                                         ; preds = %for.body17, %if.then23
  %leftmostIndex.1 = phi i32 [ %i14.0, %if.then23 ], [ %leftmostIndex.0, %for.body17 ], !taffo.info !28
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24
  %inc26 = add nsw i32 %i14.0, 1, !taffo.info !43, !taffo.constinfo !30
  br label %for.cond15, !llvm.loop !45

for.end27:                                        ; preds = %for.cond15
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end27
  %currentPoint.0 = phi i32 [ %leftmostIndex.0, %for.end27 ], [ %nextPoint.0, %do.cond ], !taffo.info !28
  %hullPointIndex.0 = phi i32 [ 0, %for.end27 ], [ %inc36, %do.cond ], !taffo.info !31
  %idxprom28 = sext i32 %currentPoint.0 to i64, !taffo.info !28
  %arrayidx29.s9_23fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x.s9_23fixp, i64 0, i64 %idxprom28, !taffo.info !23, !taffo.target !26
  %s9_23fixp4 = load i32, i32* %arrayidx29.s9_23fixp, align 4, !taffo.info !23, !taffo.target !26
  %3 = sitofp i32 %s9_23fixp4 to float, !taffo.info !23, !taffo.target !26
  %4 = fdiv float %3, 0x4160000000000000, !taffo.info !23, !taffo.target !26
  %idxprom30 = sext i32 %hullPointIndex.0 to i64, !taffo.info !31
  %arrayidx31 = getelementptr inbounds float, float* %res_x, i64 %idxprom30
  store float %4, float* %arrayidx31, align 4, !taffo.info !34, !taffo.target !26
  %idxprom32 = sext i32 %currentPoint.0 to i64, !taffo.info !28
  %arrayidx33.s9_23fixp = getelementptr inbounds [100 x i32], [100 x i32]* %y.s9_23fixp, i64 0, i64 %idxprom32, !taffo.info !23, !taffo.target !27
  %s9_23fixp10 = load i32, i32* %arrayidx33.s9_23fixp, align 4, !taffo.info !23, !taffo.target !27
  %5 = sitofp i32 %s9_23fixp10 to float, !taffo.info !23, !taffo.target !27
  %6 = fdiv float %5, 0x4160000000000000, !taffo.info !23, !taffo.target !27
  %idxprom34 = sext i32 %hullPointIndex.0 to i64, !taffo.info !31
  %arrayidx35 = getelementptr inbounds float, float* %res_y, i64 %idxprom34
  store float %6, float* %arrayidx35, align 4, !taffo.info !34, !taffo.target !27
  %inc36 = add nsw i32 %hullPointIndex.0, 1, !taffo.info !35, !taffo.constinfo !30
  %add = add nsw i32 %currentPoint.0, 1, !taffo.info !39, !taffo.constinfo !30
  %rem = srem i32 %add, %numPoints
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc57, %do.body
  %nextPoint.0 = phi i32 [ %rem, %do.body ], [ %nextPoint.1, %for.inc57 ], !taffo.info !31
  %i37.0 = phi i32 [ 0, %do.body ], [ %inc58, %for.inc57 ], !taffo.info !28
  %cmp39 = icmp slt i32 %i37.0, %numPoints, !taffo.info !28
  br i1 %cmp39, label %for.body40, label %for.end59

for.body40:                                       ; preds = %for.cond38
  %idxprom41 = sext i32 %currentPoint.0 to i64, !taffo.info !28
  %arrayidx42.s9_23fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x.s9_23fixp, i64 0, i64 %idxprom41, !taffo.info !23, !taffo.target !26
  %s9_23fixp3 = load i32, i32* %arrayidx42.s9_23fixp, align 4, !taffo.info !46, !taffo.target !26
  %idxprom43 = sext i32 %currentPoint.0 to i64, !taffo.info !28
  %arrayidx44.s9_23fixp = getelementptr inbounds [100 x i32], [100 x i32]* %y.s9_23fixp, i64 0, i64 %idxprom43, !taffo.info !23, !taffo.target !27
  %s9_23fixp9 = load i32, i32* %arrayidx44.s9_23fixp, align 4, !taffo.info !46, !taffo.target !27
  %idxprom45 = sext i32 %i37.0 to i64, !taffo.info !31
  %arrayidx46.s9_23fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x.s9_23fixp, i64 0, i64 %idxprom45, !taffo.info !23, !taffo.target !26
  %s9_23fixp2 = load i32, i32* %arrayidx46.s9_23fixp, align 4, !taffo.info !46, !taffo.target !26
  %idxprom47 = sext i32 %i37.0 to i64, !taffo.info !31
  %arrayidx48.s9_23fixp = getelementptr inbounds [100 x i32], [100 x i32]* %y.s9_23fixp, i64 0, i64 %idxprom47, !taffo.info !23, !taffo.target !27
  %s9_23fixp8 = load i32, i32* %arrayidx48.s9_23fixp, align 4, !taffo.info !46, !taffo.target !27
  %idxprom49 = sext i32 %nextPoint.0 to i64
  %arrayidx50.s9_23fixp = getelementptr inbounds [100 x i32], [100 x i32]* %x.s9_23fixp, i64 0, i64 %idxprom49, !taffo.info !23, !taffo.target !26
  %s9_23fixp = load i32, i32* %arrayidx50.s9_23fixp, align 4, !taffo.info !46, !taffo.target !26
  %idxprom51 = sext i32 %nextPoint.0 to i64
  %arrayidx52.s9_23fixp = getelementptr inbounds [100 x i32], [100 x i32]* %y.s9_23fixp, i64 0, i64 %idxprom51, !taffo.info !23, !taffo.target !27
  %s9_23fixp7 = load i32, i32* %arrayidx52.s9_23fixp, align 4, !taffo.info !46, !taffo.target !27
  %7 = ashr i32 %s9_23fixp3, 1, !taffo.info !46, !taffo.target !26
  %8 = ashr i32 %s9_23fixp9, 1, !taffo.info !46, !taffo.target !27
  %9 = ashr i32 %s9_23fixp2, 1, !taffo.info !46, !taffo.target !26
  %10 = ashr i32 %s9_23fixp8, 1, !taffo.info !46, !taffo.target !27
  %11 = ashr i32 %s9_23fixp, 1, !taffo.info !46, !taffo.target !26
  %12 = ashr i32 %s9_23fixp7, 1, !taffo.info !46, !taffo.target !27
  %13 = call i32 @crossProduct.1_fixp(i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12), !taffo.info !41, !taffo.constinfo !48, !taffo.target !26
  %cmp54.flt = icmp slt i32 %13, 0, !taffo.info !41, !taffo.initweight !42, !taffo.target !26
  br i1 %cmp54.flt, label %if.then55, label %if.end56, !taffo.info !34, !taffo.initweight !49, !taffo.target !26

if.then55:                                        ; preds = %for.body40
  br label %if.end56

if.end56:                                         ; preds = %for.body40, %if.then55
  %nextPoint.1 = phi i32 [ %i37.0, %if.then55 ], [ %nextPoint.0, %for.body40 ], !taffo.info !31
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %inc58 = add nsw i32 %i37.0, 1, !taffo.info !35, !taffo.constinfo !30
  br label %for.cond38, !llvm.loop !50

for.end59:                                        ; preds = %for.cond38
  br label %do.cond

do.cond:                                          ; preds = %for.end59
  %cmp60 = icmp ne i32 %nextPoint.0, %leftmostIndex.0, !taffo.info !28
  br i1 %cmp60, label %do.body, label %do.end, !llvm.loop !51

do.end:                                           ; preds = %do.cond
  br label %return

return:                                           ; preds = %do.end, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ %inc36, %do.end ], !taffo.info !28
  ret i32 %retval.0
}

declare !taffo.initweight !52 !taffo.funinfo !53 i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !54 !taffo.funinfo !54 {
entry:
  %x = alloca [7 x float], align 16
  %y = alloca [7 x float], align 16
  %0 = bitcast [7 x float]* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([7 x float]* @__const.main.x to i8*), i64 28, i1 false), !taffo.constinfo !55
  %1 = bitcast [7 x float]* %y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([7 x float]* @__const.main.y to i8*), i64 28, i1 false), !taffo.constinfo !55
  %2 = zext i32 7 to i64
  %3 = call i8* @llvm.stacksave(), !taffo.constinfo !56
  %vla = alloca float, i64 %2, align 16
  %4 = zext i32 7 to i64
  %vla1 = alloca float, i64 %4, align 16
  %arraydecay = getelementptr inbounds [7 x float], [7 x float]* %x, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [7 x float], [7 x float]* %y, i64 0, i64 0
  %call = call i32 @computeConvexHull(float* noundef %arraydecay, float* noundef %arraydecay2, i32 noundef 7, float* noundef %vla, float* noundef %vla1), !taffo.constinfo !57
  %call3 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)), !taffo.constinfo !30
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds float, float* %vla, i64 %idxprom
  %5 = load float, float* %arrayidx, align 4
  %conv = fpext float %5 to double
  %idxprom4 = sext i32 %i.0 to i64
  %arrayidx5 = getelementptr inbounds float, float* %vla1, i64 %idxprom4
  %6 = load float, float* %arrayidx5, align 4
  %conv6 = fpext float %6 to double
  %call7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), double noundef %conv, double noundef %conv6), !taffo.constinfo !17
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !30
  br label %for.cond, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  call void @llvm.stackrestore(i8* %3), !taffo.constinfo !30
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare !taffo.initweight !59 !taffo.funinfo !60 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !54 !taffo.funinfo !54 i8* @llvm.stacksave() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare !taffo.initweight !52 !taffo.funinfo !53 void @llvm.stackrestore(i8*) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @crossProduct.1_fixp(i32 noundef %p0_x.s10_22fixp, i32 noundef %p0_y.s10_22fixp, i32 noundef %p1_x.s10_22fixp, i32 noundef %p1_y.s10_22fixp, i32 noundef %p2_x.s10_22fixp, i32 noundef %p2_y.s10_22fixp) #0 !taffo.initweight !61 !taffo.funinfo !62 !taffo.sourceFunction !63 {
entry:
  %sub.s10_22fixp = sub i32 %p1_x.s10_22fixp, %p0_x.s10_22fixp, !taffo.info !64
  %sub1.s10_22fixp = sub i32 %p2_y.s10_22fixp, %p0_y.s10_22fixp, !taffo.info !64
  %sub2.s10_22fixp = sub i32 %p2_x.s10_22fixp, %p0_x.s10_22fixp, !taffo.info !64
  %sub3.s10_22fixp = sub i32 %p1_y.s10_22fixp, %p0_y.s10_22fixp, !taffo.info !64
  %0 = sext i32 %sub2.s10_22fixp to i64, !taffo.info !64
  %1 = sext i32 %sub3.s10_22fixp to i64, !taffo.info !64
  %2 = mul i64 %0, %1, !taffo.info !66
  %3 = ashr i64 %2, 30, !taffo.info !66
  %mul4.s18_14fixp = trunc i64 %3 to i32, !taffo.info !69
  %4 = ashr i32 %mul4.s18_14fixp, 1, !taffo.info !69
  %neg.s19_13fixp = sub i32 0, %4, !taffo.info !71
  %5 = sext i32 %sub.s10_22fixp to i64, !taffo.info !64
  %6 = sext i32 %sub1.s10_22fixp to i64, !taffo.info !64
  %7 = mul i64 %5, %6, !taffo.info !73
  %8 = ashr i64 %7, 31
  %9 = trunc i64 %8 to i32
  %s19_13fixp = add i32 %9, %neg.s19_13fixp, !taffo.info !75
  %10 = ashr i32 %s19_13fixp, 13, !taffo.info !76
  ret i32 %10, !taffo.info !34, !taffo.initweight !77
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nocallback nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.200000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.210000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 3.000000e+00}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.020000e+02}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 15.0.7"}
!14 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!15 = distinct !{null}
!16 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!17 = !{i1 false, i1 false, i1 false, i1 false}
!18 = !{i32 -1, i32 -1, i32 -1}
!19 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!20 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!21 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!22 = !{i1 true}
!23 = !{!24, !25, i1 false, i2 -1}
!24 = !{!"fixp", i32 -32, i32 23}
!25 = !{double -1.280000e+02, double 1.280000e+02}
!26 = !{!"x"}
!27 = !{!"y"}
!28 = !{i1 false, !29, i1 false, i2 0}
!29 = !{double 0.000000e+00, double 1.000000e+00}
!30 = !{i1 false, i1 false}
!31 = !{i1 false, !32, i1 false, i2 0}
!32 = !{double 0.000000e+00, double 0.000000e+00}
!33 = !{i32 3}
!34 = !{i1 false, !25, i1 false, i2 -1}
!35 = !{i1 false, !36, i1 false, i2 0}
!36 = !{double 1.000000e+00, double 1.000000e+00}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{i1 false, !40, i1 false, i2 0}
!40 = !{double 1.000000e+00, double 2.000000e+00}
!41 = !{!24, i1 false, i1 false, i2 -1}
!42 = !{i32 4}
!43 = !{i1 false, !44, i1 false, i2 0}
!44 = !{double 2.000000e+00, double 2.000000e+00}
!45 = distinct !{!45, !38}
!46 = !{!47, !25, i1 false, i2 -1}
!47 = !{!"fixp", i32 -32, i32 22}
!48 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!49 = !{i32 5}
!50 = distinct !{!50, !38}
!51 = distinct !{!51, !38}
!52 = !{i32 -1}
!53 = !{i32 0, i1 false}
!54 = !{}
!55 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!56 = !{i1 false}
!57 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!58 = distinct !{!58, !38}
!59 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!60 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!61 = !{i32 3, i32 3, i32 3, i32 3, i32 3, i32 3}
!62 = !{i32 1, !46, i32 1, !46, i32 1, !46, i32 1, !46, i32 1, !46, i32 1, !46}
!63 = !{i32 (float, float, float, float, float, float)* @crossProduct}
!64 = !{!47, !65, i1 false, i2 -1}
!65 = !{double -2.560000e+02, double 2.560000e+02}
!66 = !{!67, !68, i1 false, i2 -1}
!67 = !{!"fixp", i32 -64, i32 44}
!68 = !{double -6.553600e+04, double 6.553600e+04}
!69 = !{!70, !68, i1 false, i2 -1}
!70 = !{!"fixp", i32 -32, i32 14}
!71 = !{!72, !68, i1 false, i2 -1}
!72 = !{!"fixp", i32 -32, i32 13}
!73 = !{!67, !74, i1 false, i2 -1}
!74 = !{double -1.310720e+05, double 1.310720e+05}
!75 = !{!72, !74, i1 false, i2 -1}
!76 = !{!72, i1 false, i1 false, i2 -1}
!77 = !{i32 9}
