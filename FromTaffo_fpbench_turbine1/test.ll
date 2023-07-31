; ModuleID = '/tmp/tmp.cvJT0nKxr2/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.4 = private unnamed_addr constant [14 x i8] c"Values Begin\0A\00", align 1, !taffo.info !0
@.str.5 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1, !taffo.info !2
@.str.6 = private unnamed_addr constant [12 x i8] c"Values End\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local float @ex0(float noundef %v, float noundef %w, float noundef %r) #0 !taffo.initweight !10 !taffo.equivalentChild !11 !taffo.funinfo !12 {
entry:
  %mul = fmul float %r, %r
  %div = fdiv float 2.000000e+00, %mul, !taffo.constinfo !13
  %add = fadd float 3.000000e+00, %div, !taffo.constinfo !16
  %0 = call float @llvm.fmuladd.f32(float -2.000000e+00, float %v, float 3.000000e+00), !taffo.constinfo !19
  %mul2 = fmul float 1.250000e-01, %0, !taffo.constinfo !22
  %mul3 = fmul float %w, %w
  %mul4 = fmul float %mul3, %r
  %mul5 = fmul float %mul4, %r
  %mul6 = fmul float %mul2, %mul5
  %sub = fsub float 1.000000e+00, %v, !taffo.constinfo !25
  %div7 = fdiv float %mul6, %sub
  %sub8 = fsub float %add, %div7
  %sub9 = fsub float %sub8, 4.500000e+00, !taffo.constinfo !28
  ret float %sub9
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare !taffo.initweight !10 !taffo.funinfo !12 float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(float* noundef %arr, float* noundef %res) #0 !taffo.initweight !31 !taffo.funinfo !32 !taffo.start !33 {
entry:
  %v.s4_28fixp = alloca [100 x i32], align 16, !taffo.info !34, !taffo.target !37
  %w.u1_31fixp = alloca [100 x i32], align 16, !taffo.info !38
  %e.u4_28fixp = alloca [100 x i32], align 16, !taffo.info !41
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !44
  %cmp = icmp slt i32 %i.0, 100, !taffo.info !46
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 3, !taffo.info !47, !taffo.constinfo !49
  %idxprom = sext i32 %mul to i64, !taffo.info !47
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %.flt = load float, float* %arrayidx, align 4, !taffo.info !34, !taffo.initweight !50, !taffo.target !37
  %0 = fmul float 0x41B0000000000000, %.flt, !taffo.info !34, !taffo.target !37
  %.flt.fallback.s4_28fixp = fptosi float %0 to i32, !taffo.info !34, !taffo.target !37
  %idxprom4 = sext i32 %i.0 to i64, !taffo.info !51
  %arrayidx5.s4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %v.s4_28fixp, i64 0, i64 %idxprom4, !taffo.info !34, !taffo.target !37
  store i32 %.flt.fallback.s4_28fixp, i32* %arrayidx5.s4_28fixp, align 4, !taffo.info !53, !taffo.target !37
  %mul6 = mul nsw i32 %i.0, 3, !taffo.info !47, !taffo.constinfo !49
  %add = add nsw i32 %mul6, 1, !taffo.info !54, !taffo.constinfo !49
  %idxprom7 = sext i32 %add to i64, !taffo.info !54
  %arrayidx8 = getelementptr inbounds float, float* %arr, i64 %idxprom7
  %.flt1 = load float, float* %arrayidx8, align 4, !taffo.info !38, !taffo.initweight !50
  %1 = fmul float 0x41E0000000000000, %.flt1, !taffo.info !38
  %.flt1.fallback.u1_31fixp = fptoui float %1 to i32, !taffo.info !38
  %idxprom9 = sext i32 %i.0 to i64, !taffo.info !51
  %arrayidx10.u1_31fixp = getelementptr inbounds [100 x i32], [100 x i32]* %w.u1_31fixp, i64 0, i64 %idxprom9, !taffo.info !38
  store i32 %.flt1.fallback.u1_31fixp, i32* %arrayidx10.u1_31fixp, align 4, !taffo.info !56
  %mul11 = mul nsw i32 %i.0, 3, !taffo.info !47, !taffo.constinfo !49
  %add12 = add nsw i32 %mul11, 2, !taffo.info !57, !taffo.constinfo !49
  %idxprom13 = sext i32 %add12 to i64, !taffo.info !57
  %arrayidx14 = getelementptr inbounds float, float* %arr, i64 %idxprom13
  %.flt2 = load float, float* %arrayidx14, align 4, !taffo.info !41, !taffo.initweight !50
  %2 = fmul float 0x41B0000000000000, %.flt2, !taffo.info !41
  %.flt2.fallback.u4_28fixp = fptoui float %2 to i32, !taffo.info !41
  %idxprom15 = sext i32 %i.0 to i64, !taffo.info !51
  %arrayidx16.u4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %e.u4_28fixp, i64 0, i64 %idxprom15, !taffo.info !41
  store i32 %.flt2.fallback.u4_28fixp, i32* %arrayidx16.u4_28fixp, align 4, !taffo.info !59
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !60, !taffo.constinfo !49
  br label %for.cond, !llvm.loop !62

for.end:                                          ; preds = %for.cond
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc35, %for.end
  %i17.0 = phi i32 [ 0, %for.end ], [ %inc36, %for.inc35 ], !taffo.info !64
  %cmp19 = icmp slt i32 %i17.0, 1, !taffo.info !46
  br i1 %cmp19, label %for.body20, label %for.end37

for.body20:                                       ; preds = %for.cond18
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc32, %for.body20
  %j.0 = phi i32 [ 0, %for.body20 ], [ %inc33, %for.inc32 ], !taffo.info !66
  %cmp22 = icmp slt i32 %j.0, 100, !taffo.info !46
  br i1 %cmp22, label %for.body23, label %for.end34

for.body23:                                       ; preds = %for.cond21
  %idxprom24 = sext i32 %j.0 to i64, !taffo.info !68
  %arrayidx25.s4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %v.s4_28fixp, i64 0, i64 %idxprom24, !taffo.info !34, !taffo.target !37
  %s4_28fixp = load i32, i32* %arrayidx25.s4_28fixp, align 4, !taffo.info !70, !taffo.target !37
  %idxprom26 = sext i32 %j.0 to i64, !taffo.info !68
  %arrayidx27.u1_31fixp = getelementptr inbounds [100 x i32], [100 x i32]* %w.u1_31fixp, i64 0, i64 %idxprom26, !taffo.info !38
  %u1_31fixp = load i32, i32* %arrayidx27.u1_31fixp, align 4, !taffo.info !38
  %idxprom28 = sext i32 %j.0 to i64, !taffo.info !68
  %arrayidx29.u4_28fixp = getelementptr inbounds [100 x i32], [100 x i32]* %e.u4_28fixp, i64 0, i64 %idxprom28, !taffo.info !41
  %u4_28fixp = load i32, i32* %arrayidx29.u4_28fixp, align 4, !taffo.info !72
  %3 = ashr i32 %s4_28fixp, 1, !taffo.info !70, !taffo.target !37
  %4 = lshr i32 %u4_28fixp, 2, !taffo.info !72
  %call.s8_24fixp = call i32 @ex0.1_s8_24fixp(i32 %3, i32 %u1_31fixp, i32 %4), !taffo.info !74, !taffo.constinfo !77, !taffo.target !37
  %5 = sitofp i32 %call.s8_24fixp to float, !taffo.info !74, !taffo.target !37
  %6 = fdiv float %5, 0x4170000000000000, !taffo.info !74, !taffo.target !37
  %idxprom30 = sext i32 %j.0 to i64, !taffo.info !68
  %arrayidx31 = getelementptr inbounds float, float* %res, i64 %idxprom30
  store float %6, float* %arrayidx31, align 4, !taffo.info !53, !taffo.target !37
  br label %for.inc32

for.inc32:                                        ; preds = %for.body23
  %inc33 = add nsw i32 %j.0, 1, !taffo.info !78, !taffo.constinfo !49
  br label %for.cond21, !llvm.loop !80

for.end34:                                        ; preds = %for.cond21
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %inc36 = add nsw i32 %i17.0, 1, !taffo.info !81, !taffo.constinfo !49
  br label %for.cond18, !llvm.loop !83

for.end37:                                        ; preds = %for.cond18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !84 !taffo.funinfo !84 {
entry:
  %arr = alloca [300 x float], align 16
  %res = alloca [100 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add12, %for.inc ]
  %cmp = icmp slt i32 %i.0, 300
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 6, !taffo.constinfo !49
  %sub = sub nsw i32 %rem, 5, !taffo.constinfo !49
  %conv = sitofp i32 %sub to float
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [300 x float], [300 x float]* %arr, i64 0, i64 %idxprom
  store float %conv, float* %arrayidx, align 4
  %rem1 = srem i32 %i.0, 2, !taffo.constinfo !49
  %conv2 = sitofp i32 %rem1 to float
  %add = add nsw i32 %i.0, 1, !taffo.constinfo !49
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds [300 x float], [300 x float]* %arr, i64 0, i64 %idxprom3
  store float %conv2, float* %arrayidx4, align 4
  %rem5 = srem i32 %i.0, 4, !taffo.constinfo !49
  %conv6 = sitofp i32 %rem5 to double
  %add7 = fadd double %conv6, 3.400000e+00, !taffo.constinfo !85
  %conv8 = fptrunc double %add7 to float
  %add9 = add nsw i32 %i.0, 2, !taffo.constinfo !49
  %idxprom10 = sext i32 %add9 to i64
  %arrayidx11 = getelementptr inbounds [300 x float], [300 x float]* %arr, i64 0, i64 %idxprom10
  store float %conv8, float* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %add12 = add nsw i32 %i.0, 3, !taffo.constinfo !49
  br label %for.cond, !llvm.loop !88

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [300 x float], [300 x float]* %arr, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 0
  call void @test(float* noundef %arraydecay, float* noundef %arraydecay13), !taffo.constinfo !89
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)), !taffo.constinfo !49
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc22, %for.end
  %j.0 = phi i32 [ 0, %for.end ], [ %inc, %for.inc22 ]
  %cmp15 = icmp slt i32 %j.0, 100
  br i1 %cmp15, label %for.body17, label %for.end23

for.body17:                                       ; preds = %for.cond14
  %idxprom18 = sext i32 %j.0 to i64
  %arrayidx19 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 %idxprom18
  %0 = load float, float* %arrayidx19, align 4
  %conv20 = fpext float %0 to double
  %call21 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double noundef %conv20), !taffo.constinfo !89
  br label %for.inc22

for.inc22:                                        ; preds = %for.body17
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !49
  br label %for.cond14, !llvm.loop !90

for.end23:                                        ; preds = %for.cond14
  %call24 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !49
  ret i32 0
}

declare !taffo.initweight !91 !taffo.funinfo !92 i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ex0.1_s8_24fixp(i32 noundef %v.s5_27fixp, i32 noundef %w.u1_31fixp, i32 noundef %r.u6_26fixp) #0 !taffo.initweight !93 !taffo.funinfo !94 !taffo.sourceFunction !95 {
entry:
  %0 = zext i32 %r.u6_26fixp to i64, !taffo.info !72
  %1 = zext i32 %r.u6_26fixp to i64, !taffo.info !72
  %2 = mul i64 %0, %1, !taffo.info !96
  %3 = lshr i64 %2, 26, !taffo.info !96
  %mul.u6_26fixp = trunc i64 %3 to i32, !taffo.info !99
  %4 = zext i32 -2147483648 to i64
  %5 = shl i64 %4, 25
  %6 = zext i32 %mul.u6_26fixp to i64, !taffo.info !99
  %7 = udiv i64 %5, %6, !taffo.info !100, !taffo.constinfo !13
  %div.u3_29fixp = trunc i64 %7 to i32, !taffo.info !103
  %8 = lshr i32 -1073741824, 1
  %add.u3_29fixp = add i32 %8, %div.u3_29fixp, !taffo.info !105, !taffo.constinfo !16
  %9 = lshr i32 -1073741824, 2
  %10 = sext i32 -2 to i64
  %11 = sext i32 %v.s5_27fixp to i64, !taffo.info !70
  %12 = mul i64 %10, %11, !taffo.info !107
  %13 = shl i64 %12, 1
  %14 = trunc i64 %13 to i32
  %u4_28fixp = add i32 %14, %9, !taffo.info !110
  %15 = zext i32 1 to i64
  %16 = zext i32 %u4_28fixp to i64, !taffo.info !110
  %17 = mul i64 %15, %16, !taffo.info !111, !taffo.constinfo !22
  %18 = lshr i64 %17, 3, !taffo.info !111, !taffo.constinfo !22
  %mul2.u4_28fixp = trunc i64 %18 to i32, !taffo.info !114
  %19 = zext i32 %w.u1_31fixp to i64, !taffo.info !38
  %20 = zext i32 %w.u1_31fixp to i64, !taffo.info !38
  %21 = mul i64 %19, %20, !taffo.info !115
  %22 = lshr i64 %21, 31, !taffo.info !115
  %mul3.u1_31fixp = trunc i64 %22 to i32, !taffo.info !38
  %23 = zext i32 %mul3.u1_31fixp to i64, !taffo.info !38
  %24 = zext i32 %r.u6_26fixp to i64, !taffo.info !72
  %25 = mul i64 %23, %24, !taffo.info !117
  %26 = lshr i64 %25, 31, !taffo.info !117
  %mul4.u6_26fixp = trunc i64 %26 to i32, !taffo.info !120
  %27 = zext i32 %mul4.u6_26fixp to i64, !taffo.info !120
  %28 = zext i32 %r.u6_26fixp to i64, !taffo.info !72
  %29 = mul i64 %27, %28, !taffo.info !121
  %30 = lshr i64 %29, 27, !taffo.info !121
  %mul5.u7_25fixp = trunc i64 %30 to i32, !taffo.info !123
  %31 = zext i32 %mul2.u4_28fixp to i64, !taffo.info !114
  %32 = zext i32 %mul5.u7_25fixp to i64, !taffo.info !123
  %33 = mul i64 %31, %32, !taffo.info !125
  %34 = lshr i64 %33, 28, !taffo.info !125
  %mul6.u7_25fixp = trunc i64 %34 to i32, !taffo.info !128
  %35 = lshr i32 -2147483648, 3
  %36 = shl i32 %v.s5_27fixp, 1, !taffo.info !70
  %sub.s4_28fixp = sub i32 %35, %36, !taffo.info !129, !taffo.constinfo !25
  %37 = zext i32 %mul6.u7_25fixp to i64, !taffo.info !128
  %38 = shl i64 %37, 27, !taffo.info !128
  %39 = sext i32 %sub.s4_28fixp to i64, !taffo.info !129
  %40 = sdiv i64 %38, %39, !taffo.info !131
  %div7.s8_24fixp = trunc i64 %40 to i32, !taffo.info !133
  %41 = lshr i32 %add.u3_29fixp, 5, !taffo.info !105, !taffo.constinfo !16
  %sub8.s8_24fixp = sub i32 %41, %div7.s8_24fixp, !taffo.info !134
  %42 = lshr i32 -1879048192, 5
  %sub9.s8_24fixp = sub i32 %sub8.s8_24fixp, %42, !taffo.info !74, !taffo.constinfo !28
  ret i32 %sub9.s8_24fixp, !taffo.info !53, !taffo.initweight !136
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{i32 -1, i32 -1, i32 -1}
!11 = distinct !{null}
!12 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!13 = !{!14, i1 false}
!14 = !{i1 false, !15, i1 false, i2 0}
!15 = !{double 2.000000e+00, double 2.000000e+00}
!16 = !{!17, i1 false}
!17 = !{i1 false, !18, i1 false, i2 0}
!18 = !{double 3.000000e+00, double 3.000000e+00}
!19 = !{!20, i1 false, !17, i1 false}
!20 = !{i1 false, !21, i1 false, i2 0}
!21 = !{double -2.000000e+00, double -2.000000e+00}
!22 = !{!23, i1 false}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 1.250000e-01, double 1.250000e-01}
!25 = !{!26, i1 false}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 1.000000e+00, double 1.000000e+00}
!28 = !{i1 false, !29}
!29 = !{i1 false, !30, i1 false, i2 0}
!30 = !{double 4.500000e+00, double 4.500000e+00}
!31 = !{i32 -1, i32 -1}
!32 = !{i32 0, i1 false, i32 0, i1 false}
!33 = !{i1 true}
!34 = !{!35, !36, i1 false, i2 -1}
!35 = !{!"fixp", i32 -32, i32 28}
!36 = !{double -5.000000e+00, double 0.000000e+00}
!37 = !{!"main"}
!38 = !{!39, !40, i1 false, i2 -1}
!39 = !{!"fixp", i32 32, i32 31}
!40 = !{double 0.000000e+00, double 1.000000e+00}
!41 = !{!42, !43, i1 false, i2 -1}
!42 = !{!"fixp", i32 32, i32 28}
!43 = !{double 3.800000e+00, double 0x401F333333333333}
!44 = !{i1 false, !45, i1 false, i2 0}
!45 = !{double 0.000000e+00, double 1.010000e+02}
!46 = !{i1 false, !40, i1 false, i2 0}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 0.000000e+00, double 3.000000e+02}
!49 = !{i1 false, i1 false}
!50 = !{i32 3}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0.000000e+00, double 1.000000e+02}
!53 = !{i1 false, !36, i1 false, i2 -1}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 1.000000e+00, double 3.010000e+02}
!56 = !{i1 false, !40, i1 false, i2 -1}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 2.000000e+00, double 3.020000e+02}
!59 = !{i1 false, !43, i1 false, i2 -1}
!60 = !{i1 false, !61, i1 false, i2 0}
!61 = !{double 1.000000e+00, double 1.010000e+02}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 0.000000e+00, double 2.000000e+00}
!66 = !{i1 false, !67, i1 false, i2 0}
!67 = !{double 0.000000e+00, double 2.020000e+02}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0.000000e+00, double 2.010000e+02}
!70 = !{!71, !36, i1 false, i2 -1}
!71 = !{!"fixp", i32 -32, i32 27}
!72 = !{!73, !43, i1 false, i2 -1}
!73 = !{!"fixp", i32 32, i32 26}
!74 = !{!75, !76, i1 false, i2 -1}
!75 = !{!"fixp", i32 -32, i32 24}
!76 = !{double 0xC05915419124E30B, double 0xBFF5C8AFDDF61270}
!77 = !{i1 false, i1 false, i1 false, i1 false}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.000000e+00, double 2.020000e+02}
!80 = distinct !{!80, !63}
!81 = !{i1 false, !82, i1 false, i2 0}
!82 = !{double 1.000000e+00, double 2.000000e+00}
!83 = distinct !{!83, !63}
!84 = !{}
!85 = !{i1 false, !86}
!86 = !{i1 false, !87, i1 false, i2 0}
!87 = !{double 3.400000e+00, double 3.400000e+00}
!88 = distinct !{!88, !63}
!89 = !{i1 false, i1 false, i1 false}
!90 = distinct !{!90, !63}
!91 = !{i32 -1}
!92 = !{i32 0, i1 false}
!93 = !{i32 3, i32 3, i32 3}
!94 = !{i32 1, !70, i32 1, !38, i32 1, !72}
!95 = !{float (float, float, float)* @ex0}
!96 = !{!97, !98, i1 false, i2 -1}
!97 = !{!"fixp", i32 64, i32 52}
!98 = !{double 1.444000e+01, double 0x404E6B851EB851EB}
!99 = !{!73, !98, i1 false, i2 -1}
!100 = !{!101, !102, i1 false, i2 -1}
!101 = !{!"fixp", i32 64, i32 29}
!102 = !{double 0x3FA0D4BE86FC20FD, double 0x3FC1BA81104F6C80}
!103 = !{!104, !102, i1 false, i2 -1}
!104 = !{!"fixp", i32 32, i32 29}
!105 = !{!104, !106, i1 false, i2 -1}
!106 = !{double 0x40084352FA1BF084, double 0x40091BA81104F6C8}
!107 = !{!108, !109, i1 false, i2 -1}
!108 = !{!"fixp", i32 64, i32 27}
!109 = !{double 3.000000e+00, double 1.300000e+01}
!110 = !{!42, !109, i1 false, i2 -1}
!111 = !{!112, !113, i1 false, i2 -1}
!112 = !{!"fixp", i32 64, i32 31}
!113 = !{double 3.750000e-01, double 1.625000e+00}
!114 = !{!42, !113, i1 false, i2 -1}
!115 = !{!116, !40, i1 false, i2 -1}
!116 = !{!"fixp", i32 64, i32 62}
!117 = !{!118, !119, i1 false, i2 -1}
!118 = !{!"fixp", i32 64, i32 57}
!119 = !{double 0.000000e+00, double 0x401F333333333333}
!120 = !{!73, !119, i1 false, i2 -1}
!121 = !{!97, !122, i1 false, i2 -1}
!122 = !{double 0.000000e+00, double 0x404E6B851EB851EB}
!123 = !{!124, !122, i1 false, i2 -1}
!124 = !{!"fixp", i32 32, i32 25}
!125 = !{!126, !127, i1 false, i2 -1}
!126 = !{!"fixp", i32 64, i32 53}
!127 = !{double 0.000000e+00, double 0x4058B75C28F5C28F}
!128 = !{!124, !127, i1 false, i2 -1}
!129 = !{!35, !130, i1 false, i2 -1}
!130 = !{double 1.000000e+00, double 6.000000e+00}
!131 = !{!132, !127, i1 false, i2 -1}
!132 = !{!"fixp", i32 -64, i32 24}
!133 = !{!75, !127, i1 false, i2 -1}
!134 = !{!75, !135, i1 false, i2 -1}
!135 = !{double 0xC057F5419124E30B, double 0x40091BA81104F6C8}
!136 = !{i32 10}
