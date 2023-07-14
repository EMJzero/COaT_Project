; ModuleID = '/tmp/tmp.3roniD7V1k/test.ll.4.taffotmp.ll'
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
define dso_local i32 @crossProduct(float %p0_x, float %p0_y, float %p1_x, float %p1_y, float %p2_x, float %p2_y) #0 !taffo.initweight !10 !taffo.equivalentChild !11 !taffo.funinfo !12 {
entry:
  %sub = fsub float %p1_x, %p0_x
  %sub1 = fsub float %p2_y, %p0_y
  %mul = fmul float %sub, %sub1
  %sub2 = fsub float %p2_x, %p0_x
  %sub3 = fsub float %p1_y, %p0_y
  %mul4 = fmul float %sub2, %sub3
  %sub5 = fsub float %mul, %mul4
  %conv = fptosi float %sub5 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @computeConvexHull(float* %x_f, float* %y_f, i32 %numPoints, float* %res_x, float* %res_y) #0 !taffo.initweight !13 !taffo.funinfo !14 !taffo.start !15 {
entry:
  %x.s9_23fixp = alloca [1000 x i32], align 16, !taffo.info !16, !taffo.target !19
  %y.s9_23fixp = alloca [1000 x i32], align 16, !taffo.info !16, !taffo.target !20
  %cmp = icmp slt i32 %numPoints, 3, !taffo.info !21
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0)), !taffo.constinfo !23
  br label %return

if.else:                                          ; preds = %entry
  %cmp1 = icmp sgt i32 %numPoints, 1000, !taffo.info !21
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0)), !taffo.constinfo !23
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end4
  %i.0 = phi i32 [ 0, %if.end4 ], [ %inc, %for.inc ], !taffo.info !21
  %cmp7 = icmp slt i32 %i.0, %numPoints, !taffo.info !21
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !24
  %arrayidx = getelementptr inbounds float, float* %x_f, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4
  %1 = fmul float 0x4160000000000000, %0, !taffo.info !24
  %2 = fptosi float %1 to i32, !taffo.info !24
  %idxprom8 = sext i32 %i.0 to i64, !taffo.info !24
  %arrayidx9.s9_23fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %x.s9_23fixp, i64 0, i64 %idxprom8, !taffo.info !16, !taffo.target !19
  store i32 %2, i32* %arrayidx9.s9_23fixp, align 4, !taffo.info !26, !taffo.target !19
  %idxprom10 = sext i32 %i.0 to i64, !taffo.info !24
  %arrayidx11 = getelementptr inbounds float, float* %y_f, i64 %idxprom10
  %3 = load float, float* %arrayidx11, align 4
  %4 = fmul float 0x4160000000000000, %3, !taffo.info !24
  %5 = fptosi float %4 to i32, !taffo.info !24
  %idxprom12 = sext i32 %i.0 to i64, !taffo.info !24
  %arrayidx13.s9_23fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %y.s9_23fixp, i64 0, i64 %idxprom12, !taffo.info !16, !taffo.target !20
  store i32 %5, i32* %arrayidx13.s9_23fixp, align 4, !taffo.info !26, !taffo.target !20
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !27, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !29

for.end:                                          ; preds = %for.cond
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.end
  %leftmostIndex.0 = phi i32 [ 0, %for.end ], [ %leftmostIndex.1, %for.inc25 ], !taffo.info !21
  %i14.0 = phi i32 [ 1, %for.end ], [ %inc26, %for.inc25 ], !taffo.info !31
  %cmp16 = icmp slt i32 %i14.0, %numPoints, !taffo.info !21
  br i1 %cmp16, label %for.body17, label %for.end27

for.body17:                                       ; preds = %for.cond15
  %idxprom18 = sext i32 %i14.0 to i64, !taffo.info !27
  %arrayidx19.s9_23fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %x.s9_23fixp, i64 0, i64 %idxprom18, !taffo.info !16, !taffo.target !19
  %s9_23fixp5 = load i32, i32* %arrayidx19.s9_23fixp, align 4, !taffo.info !16, !taffo.target !19
  %idxprom20 = sext i32 %leftmostIndex.0 to i64, !taffo.info !24
  %arrayidx21.s9_23fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %x.s9_23fixp, i64 0, i64 %idxprom20, !taffo.info !16, !taffo.target !19
  %s9_23fixp4 = load i32, i32* %arrayidx21.s9_23fixp, align 4, !taffo.info !16, !taffo.target !19
  %6 = icmp slt i32 %s9_23fixp5, %s9_23fixp4, !taffo.info !33, !taffo.target !19
  br i1 %6, label %if.then23, label %if.end24, !taffo.info !26, !taffo.initweight !34, !taffo.target !19

if.then23:                                        ; preds = %for.body17
  br label %if.end24

if.end24:                                         ; preds = %for.body17, %if.then23
  %leftmostIndex.1 = phi i32 [ %i14.0, %if.then23 ], [ %leftmostIndex.0, %for.body17 ], !taffo.info !21
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24
  %inc26 = add nsw i32 %i14.0, 1, !taffo.info !35, !taffo.constinfo !23
  br label %for.cond15, !llvm.loop !37

for.end27:                                        ; preds = %for.cond15
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end27
  %currentPoint.0 = phi i32 [ %leftmostIndex.0, %for.end27 ], [ %nextPoint.0, %do.cond ], !taffo.info !21
  %hullPointIndex.0 = phi i32 [ 0, %for.end27 ], [ %inc36, %do.cond ], !taffo.info !24
  %idxprom28 = sext i32 %currentPoint.0 to i64, !taffo.info !21
  %arrayidx29.s9_23fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %x.s9_23fixp, i64 0, i64 %idxprom28, !taffo.info !16, !taffo.target !19
  %s9_23fixp3 = load i32, i32* %arrayidx29.s9_23fixp, align 4, !taffo.info !16, !taffo.target !19
  %7 = sitofp i32 %s9_23fixp3 to float, !taffo.info !16, !taffo.target !19
  %8 = fdiv float %7, 0x4160000000000000, !taffo.info !16, !taffo.target !19
  %idxprom30 = sext i32 %hullPointIndex.0 to i64, !taffo.info !24
  %arrayidx31 = getelementptr inbounds float, float* %res_x, i64 %idxprom30
  store float %8, float* %arrayidx31, align 4, !taffo.info !26, !taffo.target !19
  %idxprom32 = sext i32 %currentPoint.0 to i64, !taffo.info !21
  %arrayidx33.s9_23fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %y.s9_23fixp, i64 0, i64 %idxprom32, !taffo.info !16, !taffo.target !20
  %s9_23fixp9 = load i32, i32* %arrayidx33.s9_23fixp, align 4, !taffo.info !16, !taffo.target !20
  %9 = sitofp i32 %s9_23fixp9 to float, !taffo.info !16, !taffo.target !20
  %10 = fdiv float %9, 0x4160000000000000, !taffo.info !16, !taffo.target !20
  %idxprom34 = sext i32 %hullPointIndex.0 to i64, !taffo.info !24
  %arrayidx35 = getelementptr inbounds float, float* %res_y, i64 %idxprom34
  store float %10, float* %arrayidx35, align 4, !taffo.info !26, !taffo.target !20
  %inc36 = add nsw i32 %hullPointIndex.0, 1, !taffo.info !27, !taffo.constinfo !23
  %add = add nsw i32 %currentPoint.0, 1, !taffo.info !31, !taffo.constinfo !23
  %rem = srem i32 %add, %numPoints
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc57, %do.body
  %nextPoint.0 = phi i32 [ %rem, %do.body ], [ %nextPoint.1, %for.inc57 ], !taffo.info !24
  %i37.0 = phi i32 [ 0, %do.body ], [ %inc58, %for.inc57 ], !taffo.info !21
  %cmp39 = icmp slt i32 %i37.0, %numPoints, !taffo.info !21
  br i1 %cmp39, label %for.body40, label %for.end59

for.body40:                                       ; preds = %for.cond38
  %idxprom41 = sext i32 %currentPoint.0 to i64, !taffo.info !21
  %arrayidx42.s9_23fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %x.s9_23fixp, i64 0, i64 %idxprom41, !taffo.info !16, !taffo.target !19
  %s9_23fixp2 = load i32, i32* %arrayidx42.s9_23fixp, align 4, !taffo.info !38, !taffo.target !19
  %idxprom43 = sext i32 %currentPoint.0 to i64, !taffo.info !21
  %arrayidx44.s9_23fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %y.s9_23fixp, i64 0, i64 %idxprom43, !taffo.info !16, !taffo.target !20
  %s9_23fixp8 = load i32, i32* %arrayidx44.s9_23fixp, align 4, !taffo.info !38, !taffo.target !20
  %idxprom45 = sext i32 %i37.0 to i64, !taffo.info !24
  %arrayidx46.s9_23fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %x.s9_23fixp, i64 0, i64 %idxprom45, !taffo.info !16, !taffo.target !19
  %s9_23fixp1 = load i32, i32* %arrayidx46.s9_23fixp, align 4, !taffo.info !38, !taffo.target !19
  %idxprom47 = sext i32 %i37.0 to i64, !taffo.info !24
  %arrayidx48.s9_23fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %y.s9_23fixp, i64 0, i64 %idxprom47, !taffo.info !16, !taffo.target !20
  %s9_23fixp7 = load i32, i32* %arrayidx48.s9_23fixp, align 4, !taffo.info !38, !taffo.target !20
  %idxprom49 = sext i32 %nextPoint.0 to i64
  %arrayidx50.s9_23fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %x.s9_23fixp, i64 0, i64 %idxprom49, !taffo.info !16, !taffo.target !19
  %s9_23fixp = load i32, i32* %arrayidx50.s9_23fixp, align 4, !taffo.info !38, !taffo.target !19
  %idxprom51 = sext i32 %nextPoint.0 to i64
  %arrayidx52.s9_23fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %y.s9_23fixp, i64 0, i64 %idxprom51, !taffo.info !16, !taffo.target !20
  %s9_23fixp6 = load i32, i32* %arrayidx52.s9_23fixp, align 4, !taffo.info !38, !taffo.target !20
  %11 = ashr i32 %s9_23fixp2, 1, !taffo.info !38, !taffo.target !19
  %12 = ashr i32 %s9_23fixp8, 1, !taffo.info !38, !taffo.target !20
  %13 = ashr i32 %s9_23fixp1, 1, !taffo.info !38, !taffo.target !19
  %14 = ashr i32 %s9_23fixp7, 1, !taffo.info !38, !taffo.target !20
  %15 = ashr i32 %s9_23fixp, 1, !taffo.info !38, !taffo.target !19
  %16 = ashr i32 %s9_23fixp6, 1, !taffo.info !38, !taffo.target !20
  %17 = call i32 @crossProduct.1_fixp(i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16), !taffo.info !33, !taffo.target !19, !taffo.constinfo !40
  %cmp54.flt = icmp slt i32 %17, 0, !taffo.info !33, !taffo.initweight !34, !taffo.target !19
  br i1 %cmp54.flt, label %if.then55, label %if.end56, !taffo.info !26, !taffo.initweight !41, !taffo.target !19

if.then55:                                        ; preds = %for.body40
  br label %if.end56

if.end56:                                         ; preds = %for.body40, %if.then55
  %nextPoint.1 = phi i32 [ %i37.0, %if.then55 ], [ %nextPoint.0, %for.body40 ], !taffo.info !24
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %inc58 = add nsw i32 %i37.0, 1, !taffo.info !27, !taffo.constinfo !23
  br label %for.cond38, !llvm.loop !42

for.end59:                                        ; preds = %for.cond38
  br label %do.cond

do.cond:                                          ; preds = %for.end59
  %cmp60 = icmp ne i32 %nextPoint.0, %leftmostIndex.0, !taffo.info !21
  br i1 %cmp60, label %do.body, label %do.end, !llvm.loop !43

do.end:                                           ; preds = %do.cond
  br label %return

return:                                           ; preds = %do.end, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ %inc36, %do.end ], !taffo.info !21
  ret i32 %retval.0
}

declare !taffo.initweight !44 !taffo.funinfo !45 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !46 !taffo.funinfo !46 {
entry:
  %x = alloca [7 x float], align 16
  %y = alloca [7 x float], align 16
  %0 = bitcast [7 x float]* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([7 x float]* @__const.main.x to i8*), i64 28, i1 false), !taffo.constinfo !47
  %1 = bitcast [7 x float]* %y to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([7 x float]* @__const.main.y to i8*), i64 28, i1 false), !taffo.constinfo !47
  %2 = zext i32 7 to i64
  %3 = call i8* @llvm.stacksave(), !taffo.constinfo !48
  %vla = alloca float, i64 %2, align 16
  %4 = zext i32 7 to i64
  %vla1 = alloca float, i64 %4, align 16
  %arraydecay = getelementptr inbounds [7 x float], [7 x float]* %x, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [7 x float], [7 x float]* %y, i64 0, i64 0
  %call = call i32 @computeConvexHull(float* %arraydecay, float* %arraydecay2, i32 7, float* %vla, float* %vla1), !taffo.constinfo !49
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)), !taffo.constinfo !23
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
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), double %conv, double %conv6), !taffo.constinfo !50
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !23
  br label %for.cond, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  call void @llvm.stackrestore(i8* %3), !taffo.constinfo !23
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare !taffo.initweight !52 !taffo.funinfo !53 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind willreturn
declare !taffo.initweight !46 !taffo.funinfo !46 i8* @llvm.stacksave() #3

; Function Attrs: nofree nosync nounwind willreturn
declare !taffo.initweight !44 !taffo.funinfo !45 void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @crossProduct.1_fixp(i32 %p0_x.s10_22fixp, i32 %p0_y.s10_22fixp, i32 %p1_x.s10_22fixp, i32 %p1_y.s10_22fixp, i32 %p2_x.s10_22fixp, i32 %p2_y.s10_22fixp) #0 !taffo.initweight !54 !taffo.funinfo !55 !taffo.sourceFunction !56 {
entry:
  %sub.s10_22fixp = sub i32 %p1_x.s10_22fixp, %p0_x.s10_22fixp, !taffo.info !57
  %sub1.s10_22fixp = sub i32 %p2_y.s10_22fixp, %p0_y.s10_22fixp, !taffo.info !57
  %0 = sext i32 %sub.s10_22fixp to i64, !taffo.info !57
  %1 = sext i32 %sub1.s10_22fixp to i64, !taffo.info !57
  %2 = mul i64 %0, %1, !taffo.info !59
  %3 = ashr i64 %2, 31, !taffo.info !59
  %mul.s19_13fixp = trunc i64 %3 to i32, !taffo.info !62
  %sub2.s10_22fixp = sub i32 %p2_x.s10_22fixp, %p0_x.s10_22fixp, !taffo.info !57
  %sub3.s10_22fixp = sub i32 %p1_y.s10_22fixp, %p0_y.s10_22fixp, !taffo.info !57
  %4 = sext i32 %sub2.s10_22fixp to i64, !taffo.info !57
  %5 = sext i32 %sub3.s10_22fixp to i64, !taffo.info !57
  %6 = mul i64 %4, %5, !taffo.info !59
  %7 = ashr i64 %6, 31, !taffo.info !59
  %mul4.s19_13fixp = trunc i64 %7 to i32, !taffo.info !62
  %sub5.s19_13fixp = sub i32 %mul.s19_13fixp, %mul4.s19_13fixp, !taffo.info !64
  %8 = ashr i32 %sub5.s19_13fixp, 13, !taffo.info !66
  ret i32 %8, !taffo.info !26, !taffo.initweight !67
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { nofree nosync nounwind willreturn }

!llvm.module.flags = !{!8}
!llvm.ident = !{!9}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.200000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.210000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 3.000000e+00}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.020000e+02}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!10 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!11 = distinct !{null}
!12 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!13 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!14 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!15 = !{i1 true}
!16 = !{!17, !18, i1 false, i2 -1}
!17 = !{!"fixp", i32 -32, i32 23}
!18 = !{double -1.280000e+02, double 1.280000e+02}
!19 = !{!"x"}
!20 = !{!"y"}
!21 = !{i1 false, !22, i1 false, i2 0}
!22 = !{double 0.000000e+00, double 1.000000e+00}
!23 = !{i1 false, i1 false}
!24 = !{i1 false, !25, i1 false, i2 0}
!25 = !{double 0.000000e+00, double 0.000000e+00}
!26 = !{i1 false, !18, i1 false, i2 -1}
!27 = !{i1 false, !28, i1 false, i2 0}
!28 = !{double 1.000000e+00, double 1.000000e+00}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{i1 false, !32, i1 false, i2 0}
!32 = !{double 1.000000e+00, double 2.000000e+00}
!33 = !{!17, i1 false, i1 false, i2 -1}
!34 = !{i32 4}
!35 = !{i1 false, !36, i1 false, i2 0}
!36 = !{double 2.000000e+00, double 2.000000e+00}
!37 = distinct !{!37, !30}
!38 = !{!39, !18, i1 false, i2 -1}
!39 = !{!"fixp", i32 -32, i32 22}
!40 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!41 = !{i32 5}
!42 = distinct !{!42, !30}
!43 = distinct !{!43, !30}
!44 = !{i32 -1}
!45 = !{i32 0, i1 false}
!46 = !{}
!47 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!48 = !{i1 false}
!49 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!50 = !{i1 false, i1 false, i1 false, i1 false}
!51 = distinct !{!51, !30}
!52 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!53 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!54 = !{i32 3, i32 3, i32 3, i32 3, i32 3, i32 3}
!55 = !{i32 1, !38, i32 1, !38, i32 1, !38, i32 1, !38, i32 1, !38, i32 1, !38}
!56 = !{i32 (float, float, float, float, float, float)* @crossProduct}
!57 = !{!39, !58, i1 false, i2 -1}
!58 = !{double -2.560000e+02, double 2.560000e+02}
!59 = !{!60, !61, i1 false, i2 -1}
!60 = !{!"fixp", i32 -64, i32 44}
!61 = !{double -6.553600e+04, double 6.553600e+04}
!62 = !{!63, !61, i1 false, i2 -1}
!63 = !{!"fixp", i32 -32, i32 13}
!64 = !{!63, !65, i1 false, i2 -1}
!65 = !{double -1.310720e+05, double 1.310720e+05}
!66 = !{!63, i1 false, i1 false, i2 -1}
!67 = !{i32 10}
