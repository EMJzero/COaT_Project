; ModuleID = '/tmp/tmp.7ESbQr819D/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.source_a = private unnamed_addr constant [256 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01], align 16, !taffo.info !0
@main.A_ROWS = internal global i32 16, align 4, !taffo.info !2
@main.A_COLS = internal global i32 16, align 4, !taffo.info !2
@main.B_COLS = internal global i32 16, align 4, !taffo.info !2
@.str.6 = private unnamed_addr constant [10 x i8] c"Input A:\0A\00", align 1, !taffo.info !4
@.str.7 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1, !taffo.info !6
@.str.8 = private unnamed_addr constant [10 x i8] c"Input B:\0A\00", align 1, !taffo.info !4
@.str.9 = private unnamed_addr constant [9 x i8] c"Result:\0A\00", align 1, !taffo.info !4

; Function Attrs: noinline nounwind uwtable
define dso_local void @mm(float* noalias %0, float* noalias %1, float* noalias %2, i32 %3, i32 %4, i32 %5) #0 !taffo.start !10 !taffo.initweight !11 !taffo.funinfo !12 {
  %7 = mul i32 %3, %4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave(), !taffo.constinfo !13
  %u5_27fixp = alloca i32, i64 %8, align 16, !taffo.info !14, !taffo.target !17
  %10 = mul i32 %4, %5
  %11 = zext i32 %10 to i64
  %u5_27fixp5 = alloca i32, i64 %11, align 16, !taffo.info !14, !taffo.target !18
  %12 = mul i32 %3, %5
  %13 = zext i32 %12 to i64
  %u19_13fixp = alloca i32, i64 %13, align 16, !taffo.info !19, !taffo.target !22
  br label %14

14:                                               ; preds = %33, %6
  %.02 = phi i32 [ 0, %6 ], [ %34, %33 ], !taffo.info !23
  %15 = icmp ult i32 %.02, %3, !taffo.info !23
  br i1 %15, label %16, label %35

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %30, %16
  %.01 = phi i32 [ 0, %16 ], [ %31, %30 ], !taffo.info !23
  %18 = icmp ult i32 %.01, %4, !taffo.info !23
  br i1 %18, label %19, label %32

19:                                               ; preds = %17
  %20 = mul i32 %.02, %4
  %21 = add i32 %20, %.01
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %0, i64 %22
  %24 = load float, float* %23, align 4
  %25 = fmul float 0x41A0000000000000, %24
  %26 = fptoui float %25 to i32
  %27 = mul i32 %.02, %4
  %28 = add i32 %27, %.01
  %29 = zext i32 %28 to i64
  %u5_27fixp7 = getelementptr inbounds i32, i32* %u5_27fixp, i64 %29, !taffo.info !14, !taffo.target !17
  store i32 %26, i32* %u5_27fixp7, align 4, !taffo.info !25, !taffo.target !17
  br label %30

30:                                               ; preds = %19
  %31 = add nsw i32 %.01, 1, !taffo.info !26, !taffo.constinfo !28
  br label %17, !llvm.loop !29

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32
  %34 = add nsw i32 %.02, 1, !taffo.info !26, !taffo.constinfo !28
  br label %14, !llvm.loop !31

35:                                               ; preds = %14
  br label %36

36:                                               ; preds = %55, %35
  %.13 = phi i32 [ 0, %35 ], [ %56, %55 ], !taffo.info !23
  %37 = icmp ult i32 %.13, %4, !taffo.info !23
  br i1 %37, label %38, label %57

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %52, %38
  %.1 = phi i32 [ 0, %38 ], [ %53, %52 ], !taffo.info !23
  %40 = icmp ult i32 %.1, %5, !taffo.info !23
  br i1 %40, label %41, label %54

41:                                               ; preds = %39
  %42 = mul i32 %.13, %5
  %43 = add i32 %42, %.1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %1, i64 %44
  %46 = load float, float* %45, align 4
  %47 = fmul float 0x41A0000000000000, %46
  %48 = fptoui float %47 to i32
  %49 = mul i32 %.13, %5
  %50 = add i32 %49, %.1
  %51 = zext i32 %50 to i64
  %u5_27fixp9 = getelementptr inbounds i32, i32* %u5_27fixp5, i64 %51, !taffo.info !14, !taffo.target !18
  store i32 %48, i32* %u5_27fixp9, align 4, !taffo.info !25, !taffo.target !18
  br label %52

52:                                               ; preds = %41
  %53 = add nsw i32 %.1, 1, !taffo.info !26, !taffo.constinfo !28
  br label %39, !llvm.loop !32

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54
  %56 = add nsw i32 %.13, 1, !taffo.info !26, !taffo.constinfo !28
  br label %36, !llvm.loop !33

57:                                               ; preds = %36
  br label %58

58:                                               ; preds = %87, %57
  %.06.u9_23fixp = phi i32 [ 0, %57 ], [ %.17.u9_23fixp, %87 ], !taffo.info !34
  %.24 = phi i32 [ 0, %57 ], [ %88, %87 ], !taffo.info !23
  %59 = icmp ult i32 %.24, %3, !taffo.info !23
  br i1 %59, label %60, label %89

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %84, %60
  %.17.u9_23fixp = phi i32 [ %.06.u9_23fixp, %60 ], [ %.28.u9_23fixp, %84 ], !taffo.info !34
  %.2 = phi i32 [ 0, %60 ], [ %85, %84 ], !taffo.info !23
  %62 = icmp ult i32 %.2, %5, !taffo.info !23
  br i1 %62, label %63, label %86

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %77, %63
  %.28.u9_23fixp = phi i32 [ %.17.u9_23fixp, %63 ], [ %u9_23fixp15, %77 ], !taffo.info !34
  %.0 = phi i32 [ 0, %63 ], [ %78, %77 ], !taffo.info !23
  %65 = icmp ult i32 %.0, %4, !taffo.info !23
  br i1 %65, label %66, label %79

66:                                               ; preds = %64
  %67 = mul i32 %.24, %4
  %68 = add i32 %67, %.0
  %69 = zext i32 %68 to i64
  %u5_27fixp6 = getelementptr inbounds i32, i32* %u5_27fixp, i64 %69, !taffo.info !14, !taffo.target !17
  %u5_27fixp12 = load i32, i32* %u5_27fixp6, align 4, !taffo.info !14, !taffo.target !17
  %70 = mul i32 %.0, %5
  %71 = add i32 %70, %.2
  %72 = zext i32 %71 to i64
  %u5_27fixp8 = getelementptr inbounds i32, i32* %u5_27fixp5, i64 %72, !taffo.info !14, !taffo.target !18
  %u5_27fixp13 = load i32, i32* %u5_27fixp8, align 4, !taffo.info !14, !taffo.target !18
  %73 = zext i32 %u5_27fixp12 to i64, !taffo.info !14, !taffo.target !17
  %74 = zext i32 %u5_27fixp13 to i64, !taffo.info !14, !taffo.target !18
  %75 = mul i64 %73, %74, !taffo.info !37
  %76 = lshr i64 %75, 31, !taffo.info !37
  %u9_23fixp = trunc i64 %76 to i32, !taffo.info !34
  %u9_23fixp15 = add i32 %.28.u9_23fixp, %u9_23fixp, !taffo.info !34
  br label %77

77:                                               ; preds = %66
  %78 = add nsw i32 %.0, 1, !taffo.info !26, !taffo.constinfo !28
  br label %64, !llvm.loop !39

79:                                               ; preds = %64
  %80 = mul i32 %.24, %5
  %81 = add i32 %80, %.2
  %82 = zext i32 %81 to i64
  %u19_13fixp11 = getelementptr inbounds i32, i32* %u19_13fixp, i64 %82, !taffo.info !19, !taffo.target !22
  %83 = lshr i32 %.28.u9_23fixp, 10, !taffo.info !34
  store i32 %83, i32* %u19_13fixp11, align 4, !taffo.info !41, !taffo.target !22
  br label %84

84:                                               ; preds = %79
  %85 = add nsw i32 %.2, 1, !taffo.info !26, !taffo.constinfo !28
  br label %61, !llvm.loop !42

86:                                               ; preds = %61
  br label %87

87:                                               ; preds = %86
  %88 = add nsw i32 %.24, 1, !taffo.info !26, !taffo.constinfo !28
  br label %58, !llvm.loop !43

89:                                               ; preds = %58
  br label %90

90:                                               ; preds = %108, %89
  %.35 = phi i32 [ 0, %89 ], [ %109, %108 ], !taffo.info !23
  %91 = icmp ult i32 %.35, %3, !taffo.info !23
  br i1 %91, label %92, label %110

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %105, %92
  %.3 = phi i32 [ 0, %92 ], [ %106, %105 ], !taffo.info !23
  %94 = icmp ult i32 %.3, %5, !taffo.info !23
  br i1 %94, label %95, label %107

95:                                               ; preds = %93
  %96 = mul i32 %.35, %5
  %97 = add i32 %96, %.3
  %98 = zext i32 %97 to i64
  %u19_13fixp10 = getelementptr inbounds i32, i32* %u19_13fixp, i64 %98, !taffo.info !19, !taffo.target !22
  %u19_13fixp14 = load i32, i32* %u19_13fixp10, align 4, !taffo.info !19, !taffo.target !22
  %99 = uitofp i32 %u19_13fixp14 to float, !taffo.info !19, !taffo.target !22
  %100 = fdiv float %99, 8.192000e+03, !taffo.info !19, !taffo.target !22
  %101 = mul i32 %.35, %5
  %102 = add i32 %101, %.3
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %2, i64 %103
  store float %100, float* %104, align 4, !taffo.info !41, !taffo.target !22
  br label %105

105:                                              ; preds = %95
  %106 = add nsw i32 %.3, 1, !taffo.info !26, !taffo.constinfo !28
  br label %93, !llvm.loop !44

107:                                              ; preds = %93
  br label %108

108:                                              ; preds = %107
  %109 = add nsw i32 %.35, 1, !taffo.info !26, !taffo.constinfo !28
  br label %90, !llvm.loop !45

110:                                              ; preds = %90
  call void @llvm.stackrestore(i8* %9), !taffo.constinfo !28
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare !taffo.initweight !46 !taffo.funinfo !46 i8* @llvm.stacksave() #1

; Function Attrs: nofree nosync nounwind willreturn
declare !taffo.initweight !47 !taffo.funinfo !48 void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !46 !taffo.funinfo !46 {
  %1 = alloca [256 x float], align 16
  %2 = bitcast [256 x float]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([256 x float]* @__const.main.source_a to i8*), i64 1024, i1 false), !taffo.constinfo !49
  %3 = getelementptr inbounds [256 x float], [256 x float]* %1, i64 0, i64 0
  %4 = load i32, i32* @main.A_ROWS, align 4
  %5 = load i32, i32* @main.A_COLS, align 4
  %6 = mul i32 %4, %5
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave(), !taffo.constinfo !13
  %9 = alloca float, i64 %7, align 16
  %10 = load i32, i32* @main.A_COLS, align 4
  %11 = load i32, i32* @main.B_COLS, align 4
  %12 = mul i32 %10, %11
  %13 = zext i32 %12 to i64
  %14 = alloca float, i64 %13, align 16
  %15 = load i32, i32* @main.A_ROWS, align 4
  %16 = load i32, i32* @main.B_COLS, align 4
  %17 = mul i32 %15, %16
  %18 = zext i32 %17 to i64
  %19 = alloca float, i64 %18, align 16
  br label %20

20:                                               ; preds = %42, %0
  %.01 = phi i32 [ 0, %0 ], [ %43, %42 ]
  %21 = load i32, i32* @main.A_ROWS, align 4
  %22 = icmp ult i32 %.01, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  br label %24

24:                                               ; preds = %39, %23
  %.0 = phi i32 [ 0, %23 ], [ %40, %39 ]
  %25 = load i32, i32* @main.A_COLS, align 4
  %26 = icmp ult i32 %.0, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i32, i32* @main.A_COLS, align 4
  %29 = mul i32 %.01, %28
  %30 = add i32 %29, %.0
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [256 x float], [256 x float]* %1, i64 0, i64 %31
  %33 = load float, float* %32, align 4
  %34 = load i32, i32* @main.A_COLS, align 4
  %35 = mul i32 %.01, %34
  %36 = add i32 %35, %.0
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %9, i64 %37
  store float %33, float* %38, align 4
  br label %39

39:                                               ; preds = %27
  %40 = add nsw i32 %.0, 1, !taffo.constinfo !28
  br label %24, !llvm.loop !50

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41
  %43 = add nsw i32 %.01, 1, !taffo.constinfo !28
  br label %20, !llvm.loop !51

44:                                               ; preds = %20
  br label %45

45:                                               ; preds = %67, %44
  %.12 = phi i32 [ 0, %44 ], [ %68, %67 ]
  %46 = load i32, i32* @main.A_COLS, align 4
  %47 = icmp ult i32 %.12, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %64, %48
  %.1 = phi i32 [ 0, %48 ], [ %65, %64 ]
  %50 = load i32, i32* @main.B_COLS, align 4
  %51 = icmp ult i32 %.1, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i32, i32* @main.B_COLS, align 4
  %54 = mul i32 %.12, %53
  %55 = add i32 %54, %.1
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %3, i64 %56
  %58 = load float, float* %57, align 4
  %59 = load i32, i32* @main.B_COLS, align 4
  %60 = mul i32 %.12, %59
  %61 = add i32 %60, %.1
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %14, i64 %62
  store float %58, float* %63, align 4
  br label %64

64:                                               ; preds = %52
  %65 = add nsw i32 %.1, 1, !taffo.constinfo !28
  br label %49, !llvm.loop !52

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66
  %68 = add nsw i32 %.12, 1, !taffo.constinfo !28
  br label %45, !llvm.loop !53

69:                                               ; preds = %45
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !28
  br label %71

71:                                               ; preds = %91, %69
  %.23 = phi i32 [ 0, %69 ], [ %92, %91 ]
  %72 = load i32, i32* @main.A_ROWS, align 4
  %73 = icmp ult i32 %.23, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %87, %74
  %.2 = phi i32 [ 0, %74 ], [ %88, %87 ]
  %76 = load i32, i32* @main.A_COLS, align 4
  %77 = icmp ult i32 %.2, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32, i32* @main.A_COLS, align 4
  %80 = mul i32 %.23, %79
  %81 = add i32 %80, %.2
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %9, i64 %82
  %84 = load float, float* %83, align 4
  %85 = fpext float %84 to double
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %85), !taffo.constinfo !54
  br label %87

87:                                               ; preds = %78
  %88 = add nsw i32 %.2, 1, !taffo.constinfo !28
  br label %75, !llvm.loop !55

89:                                               ; preds = %75
  %90 = call i32 @putchar(i32 10), !taffo.constinfo !28
  br label %91

91:                                               ; preds = %89
  %92 = add nsw i32 %.23, 1, !taffo.constinfo !28
  br label %71, !llvm.loop !56

93:                                               ; preds = %71
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)), !taffo.constinfo !28
  br label %95

95:                                               ; preds = %115, %93
  %.34 = phi i32 [ 0, %93 ], [ %116, %115 ]
  %96 = load i32, i32* @main.A_COLS, align 4
  %97 = icmp ult i32 %.34, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %111, %98
  %.3 = phi i32 [ 0, %98 ], [ %112, %111 ]
  %100 = load i32, i32* @main.B_COLS, align 4
  %101 = icmp ult i32 %.3, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i32, i32* @main.B_COLS, align 4
  %104 = mul i32 %.34, %103
  %105 = add i32 %104, %.3
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds float, float* %14, i64 %106
  %108 = load float, float* %107, align 4
  %109 = fpext float %108 to double
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %109), !taffo.constinfo !54
  br label %111

111:                                              ; preds = %102
  %112 = add nsw i32 %.3, 1, !taffo.constinfo !28
  br label %99, !llvm.loop !57

113:                                              ; preds = %99
  %114 = call i32 @putchar(i32 10), !taffo.constinfo !28
  br label %115

115:                                              ; preds = %113
  %116 = add nsw i32 %.34, 1, !taffo.constinfo !28
  br label %95, !llvm.loop !58

117:                                              ; preds = %95
  %118 = load i32, i32* @main.A_ROWS, align 4
  %119 = load i32, i32* @main.A_COLS, align 4
  %120 = load i32, i32* @main.B_COLS, align 4
  call void @mm(float* %9, float* %14, float* %19, i32 %118, i32 %119, i32 %120), !taffo.constinfo !59
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)), !taffo.constinfo !28
  br label %122

122:                                              ; preds = %142, %117
  %.45 = phi i32 [ 0, %117 ], [ %143, %142 ]
  %123 = load i32, i32* @main.A_ROWS, align 4
  %124 = icmp ult i32 %.45, %123
  br i1 %124, label %125, label %144

125:                                              ; preds = %122
  br label %126

126:                                              ; preds = %138, %125
  %.4 = phi i32 [ 0, %125 ], [ %139, %138 ]
  %127 = load i32, i32* @main.B_COLS, align 4
  %128 = icmp ult i32 %.4, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = load i32, i32* @main.B_COLS, align 4
  %131 = mul i32 %.45, %130
  %132 = add i32 %131, %.4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %19, i64 %133
  %135 = load float, float* %134, align 4
  %136 = fpext float %135 to double
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %136), !taffo.constinfo !54
  br label %138

138:                                              ; preds = %129
  %139 = add nsw i32 %.4, 1, !taffo.constinfo !28
  br label %126, !llvm.loop !60

140:                                              ; preds = %126
  %141 = call i32 @putchar(i32 10), !taffo.constinfo !28
  br label %142

142:                                              ; preds = %140
  %143 = add nsw i32 %.45, 1, !taffo.constinfo !28
  br label %122, !llvm.loop !61

144:                                              ; preds = %122
  call void @llvm.stackrestore(i8* %8), !taffo.constinfo !28
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare !taffo.initweight !62 !taffo.funinfo !63 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare !taffo.initweight !47 !taffo.funinfo !48 dso_local i32 @printf(i8*, ...) #3

declare !taffo.initweight !47 !taffo.funinfo !48 dso_local i32 @putchar(i32) #3

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!8}
!llvm.ident = !{!9}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 1.000000e+00, double 1.600000e+01}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 1.600000e+01, double 1.600000e+01}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.170000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.020000e+02}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!10 = !{i1 true}
!11 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!12 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!13 = !{i1 false}
!14 = !{!15, !16, i1 false, i2 1}
!15 = !{!"fixp", i32 32, i32 27}
!16 = !{double 0.000000e+00, double 1.600000e+01}
!17 = !{!"input_a"}
!18 = !{!"input_b"}
!19 = !{!20, !21, i1 false, i2 1}
!20 = !{!"fixp", i32 32, i32 13}
!21 = !{double 0.000000e+00, double 2.959360e+05}
!22 = !{!"result_c"}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 0.000000e+00, double 1.000000e+00}
!25 = !{i1 false, !16, i1 false, i2 1}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 1.000000e+00, double 1.000000e+00}
!28 = !{i1 false, i1 false}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = distinct !{!31, !30}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !30}
!34 = !{!35, !36, i1 false, i2 1}
!35 = !{!"fixp", i32 32, i32 23}
!36 = !{double 0.000000e+00, double 2.560000e+02}
!37 = !{!38, !36, i1 false, i2 1}
!38 = !{!"fixp", i32 64, i32 54}
!39 = distinct !{!39, !30, !40}
!40 = !{!"llvm.loop.unroll.count", i32 4}
!41 = !{i1 false, !21, i1 false, i2 1}
!42 = distinct !{!42, !30}
!43 = distinct !{!43, !30}
!44 = distinct !{!44, !30}
!45 = distinct !{!45, !30}
!46 = !{}
!47 = !{i32 -1}
!48 = !{i32 0, i1 false}
!49 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!50 = distinct !{!50, !30}
!51 = distinct !{!51, !30}
!52 = distinct !{!52, !30}
!53 = distinct !{!53, !30}
!54 = !{i1 false, i1 false, i1 false}
!55 = distinct !{!55, !30}
!56 = distinct !{!56, !30}
!57 = distinct !{!57, !30}
!58 = distinct !{!58, !30}
!59 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!60 = distinct !{!60, !30}
!61 = distinct !{!61, !30}
!62 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!63 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
