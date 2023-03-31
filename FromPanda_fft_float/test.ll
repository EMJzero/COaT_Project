; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"scalar()\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [44 x i8] c"target('input_signal') scalar(range(-1, 1))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [45 x i8] c"target('output_signal') scalar(range(-1, 1))\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [10 x i8] c"%d %e %e\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.global.annotations = appending global [2 x { i8*, i8*, i8*, i32, i8* }] [{ i8*, i8*, i8*, i32, i8* } { i8* bitcast (float (float)* @myFabsf to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 4, i8* null }, { i8*, i8*, i8*, i32, i8* } { i8* bitcast (float (float)* @mySqrt to i8*), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 10, i8* null }], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @myFabsf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, float* %3, align 4
  %4 = bitcast float* %3 to i8*
  call void @llvm.var.annotation(i8* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 4, i8* null)
  %5 = load float, float* %3, align 4
  %6 = fcmp olt float %5, 0.000000e+00
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load float, float* %3, align 4
  %9 = fneg float %8
  store float %9, float* %2, align 4
  br label %12

10:                                               ; preds = %1
  %11 = load float, float* %3, align 4
  store float %11, float* %2, align 4
  br label %12

12:                                               ; preds = %10, %7
  %13 = load float, float* %2, align 4
  ret float %13
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @mySqrt(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %2, align 4
  %5 = bitcast float* %2 to i8*
  call void @llvm.var.annotation(i8* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 10, i8* null)
  %6 = load float, float* %2, align 4
  %7 = fdiv float %6, 2.000000e+00
  store float %7, float* %3, align 4
  %8 = load float, float* %3, align 4
  %9 = load float, float* %2, align 4
  %10 = load float, float* %3, align 4
  %11 = fdiv float %9, %10
  %12 = fadd float %8, %11
  %13 = fdiv float %12, 2.000000e+00
  store float %13, float* %4, align 4
  br label %14

14:                                               ; preds = %20, %1
  %15 = load float, float* %4, align 4
  %16 = load float, float* %3, align 4
  %17 = fsub float %15, %16
  %18 = call float @myFabsf(float %17)
  %19 = fcmp oge float %18, 0x3F1A36E2E0000000
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load float, float* %4, align 4
  store float %21, float* %3, align 4
  %22 = load float, float* %3, align 4
  %23 = load float, float* %2, align 4
  %24 = load float, float* %3, align 4
  %25 = fdiv float %23, %24
  %26 = fadd float %22, %25
  %27 = fdiv float %26, 2.000000e+00
  store float %27, float* %4, align 4
  br label %14, !llvm.loop !2

28:                                               ; preds = %14
  %29 = load float, float* %4, align 4
  ret float %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [128 x float], align 16
  %4 = alloca [128 x float], align 16
  store i32 0, i32* %1, align 4
  %5 = bitcast [128 x float]* %3 to i8*
  call void @llvm.var.annotation(i8* %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 127, i8* null)
  %6 = bitcast [128 x float]* %4 to i8*
  call void @llvm.var.annotation(i8* %6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 128, i8* null)
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %17, %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 128
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [128 x float], [128 x float]* %3, i64 0, i64 %12
  store float 0.000000e+00, float* %13, align 4
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [128 x float], [128 x float]* %4, i64 0, i64 %15
  store float 0.000000e+00, float* %16, align 4
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %7, !llvm.loop !4

20:                                               ; preds = %7
  %21 = getelementptr inbounds [128 x float], [128 x float]* %3, i64 0, i64 0
  store float 1.000000e+00, float* %21, align 16
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %33, %20
  %23 = load i32, i32* %2, align 4
  %24 = icmp sle i32 %23, 10
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = sub nsw i32 128, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [128 x float], [128 x float]* %3, i64 0, i64 %28
  store float 1.000000e+00, float* %29, align 4
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [128 x float], [128 x float]* %3, i64 0, i64 %31
  store float 1.000000e+00, float* %32, align 4
  br label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %22, !llvm.loop !5

36:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %53, %36
  %38 = load i32, i32* %2, align 4
  %39 = icmp slt i32 %38, 128
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [128 x float], [128 x float]* %3, i64 0, i64 %43
  %45 = load float, float* %44, align 4
  %46 = fpext float %45 to double
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [128 x float], [128 x float]* %4, i64 0, i64 %48
  %50 = load float, float* %49, align 4
  %51 = fpext float %50 to double
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %41, double %46, double %51)
  br label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %2, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %2, align 4
  br label %37, !llvm.loop !6

56:                                               ; preds = %37
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %58 = getelementptr inbounds [128 x float], [128 x float]* %3, i64 0, i64 0
  %59 = getelementptr inbounds [128 x float], [128 x float]* %4, i64 0, i64 0
  %60 = call signext i16 @FFT(i16 signext 1, i64 7, float* %58, float* %59)
  %61 = sext i16 %60 to i32
  store i32 %61, i32* %2, align 4
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %82, %56
  %63 = load i32, i32* %2, align 4
  %64 = icmp slt i32 %63, 128
  br i1 %64, label %65, label %85

65:                                               ; preds = %62
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* %2, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [128 x float], [128 x float]* %3, i64 0, i64 %68
  %70 = load float, float* %69, align 4
  %71 = call float @mySqrt(float 1.280000e+02)
  %72 = fdiv float %70, %71
  %73 = fpext float %72 to double
  %74 = load i32, i32* %2, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [128 x float], [128 x float]* %4, i64 0, i64 %75
  %77 = load float, float* %76, align 4
  %78 = call float @mySqrt(float 1.280000e+02)
  %79 = fdiv float %77, %78
  %80 = fpext float %79 to double
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %66, double %73, double %80)
  br label %82

82:                                               ; preds = %65
  %83 = load i32, i32* %2, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %2, align 4
  br label %62, !llvm.loop !7

85:                                               ; preds = %62
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @FFT(i16 signext %0, i64 %1, float* %2, float* %3) #0 {
  %5 = alloca i16, align 2
  %6 = alloca i64, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  store i16 %0, i16* %5, align 2
  store i64 %1, i64* %6, align 8
  store float* %2, float** %7, align 8
  %27 = bitcast float** %7 to i8*
  call void @llvm.var.annotation(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 29, i8* null)
  store float* %3, float** %8, align 8
  %28 = bitcast float** %8 to i8*
  call void @llvm.var.annotation(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 29, i8* null)
  %29 = bitcast float* %18 to i8*
  call void @llvm.var.annotation(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 32, i8* null)
  %30 = bitcast float* %19 to i8*
  call void @llvm.var.annotation(i8* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 33, i8* null)
  %31 = bitcast float* %20 to i8*
  call void @llvm.var.annotation(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 34, i8* null)
  %32 = bitcast float* %21 to i8*
  call void @llvm.var.annotation(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 35, i8* null)
  %33 = bitcast float* %22 to i8*
  call void @llvm.var.annotation(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 36, i8* null)
  %34 = bitcast float* %23 to i8*
  call void @llvm.var.annotation(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 37, i8* null)
  %35 = bitcast float* %24 to i8*
  call void @llvm.var.annotation(i8* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 38, i8* null)
  %36 = bitcast float* %25 to i8*
  call void @llvm.var.annotation(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 39, i8* null)
  %37 = bitcast float* %26 to i8*
  call void @llvm.var.annotation(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 40, i8* null)
  store i64 1, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %38

38:                                               ; preds = %45, %4
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i64, i64* %9, align 8
  %44 = mul nsw i64 %43, 2
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %10, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %10, align 8
  br label %38, !llvm.loop !8

48:                                               ; preds = %38
  %49 = load i64, i64* %9, align 8
  %50 = ashr i64 %49, 1
  store i64 %50, i64* %14, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %10, align 8
  br label %51

51:                                               ; preds = %107, %48
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = sub nsw i64 %53, 1
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %56, label %110

56:                                               ; preds = %51
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %56
  %61 = load float*, float** %7, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds float, float* %61, i64 %62
  %64 = load float, float* %63, align 4
  store float %64, float* %20, align 4
  %65 = load float*, float** %8, align 8
  %66 = load i64, i64* %10, align 8
  %67 = getelementptr inbounds float, float* %65, i64 %66
  %68 = load float, float* %67, align 4
  store float %68, float* %21, align 4
  %69 = load float*, float** %7, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds float, float* %69, i64 %70
  %72 = load float, float* %71, align 4
  %73 = load float*, float** %7, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds float, float* %73, i64 %74
  store float %72, float* %75, align 4
  %76 = load float*, float** %8, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds float, float* %76, i64 %77
  %79 = load float, float* %78, align 4
  %80 = load float*, float** %8, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds float, float* %80, i64 %81
  store float %79, float* %82, align 4
  %83 = load float, float* %20, align 4
  %84 = load float*, float** %7, align 8
  %85 = load i64, i64* %12, align 8
  %86 = getelementptr inbounds float, float* %84, i64 %85
  store float %83, float* %86, align 4
  %87 = load float, float* %21, align 4
  %88 = load float*, float** %8, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds float, float* %88, i64 %89
  store float %87, float* %90, align 4
  br label %91

91:                                               ; preds = %60, %56
  %92 = load i64, i64* %14, align 8
  store i64 %92, i64* %13, align 8
  br label %93

93:                                               ; preds = %97, %91
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* %12, align 8
  %96 = icmp sle i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load i64, i64* %13, align 8
  %99 = load i64, i64* %12, align 8
  %100 = sub nsw i64 %99, %98
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %13, align 8
  %102 = ashr i64 %101, 1
  store i64 %102, i64* %13, align 8
  br label %93, !llvm.loop !9

103:                                              ; preds = %93
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* %12, align 8
  %106 = add nsw i64 %105, %104
  store i64 %106, i64* %12, align 8
  br label %107

107:                                              ; preds = %103
  %108 = load i64, i64* %10, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %10, align 8
  br label %51, !llvm.loop !10

110:                                              ; preds = %51
  store float -1.000000e+00, float* %18, align 4
  store float 0.000000e+00, float* %19, align 4
  store i64 1, i64* %17, align 8
  store i64 0, i64* %15, align 8
  br label %111

111:                                              ; preds = %232, %110
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* %6, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %235

115:                                              ; preds = %111
  %116 = load i64, i64* %17, align 8
  store i64 %116, i64* %16, align 8
  %117 = load i64, i64* %17, align 8
  %118 = shl i64 %117, 1
  store i64 %118, i64* %17, align 8
  store float 1.000000e+00, float* %24, align 4
  store float 0.000000e+00, float* %25, align 4
  store i64 0, i64* %12, align 8
  br label %119

119:                                              ; preds = %209, %115
  %120 = load i64, i64* %12, align 8
  %121 = load i64, i64* %16, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %212

123:                                              ; preds = %119
  %124 = load i64, i64* %12, align 8
  store i64 %124, i64* %10, align 8
  br label %125

125:                                              ; preds = %189, %123
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* %9, align 8
  %128 = icmp slt i64 %126, %127
  br i1 %128, label %129, label %193

129:                                              ; preds = %125
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* %16, align 8
  %132 = add nsw i64 %130, %131
  store i64 %132, i64* %11, align 8
  %133 = load float, float* %24, align 4
  %134 = load float*, float** %7, align 8
  %135 = load i64, i64* %11, align 8
  %136 = getelementptr inbounds float, float* %134, i64 %135
  %137 = load float, float* %136, align 4
  %138 = fmul float %133, %137
  %139 = load float, float* %25, align 4
  %140 = load float*, float** %8, align 8
  %141 = load i64, i64* %11, align 8
  %142 = getelementptr inbounds float, float* %140, i64 %141
  %143 = load float, float* %142, align 4
  %144 = fmul float %139, %143
  %145 = fsub float %138, %144
  store float %145, float* %22, align 4
  %146 = load float, float* %24, align 4
  %147 = load float*, float** %8, align 8
  %148 = load i64, i64* %11, align 8
  %149 = getelementptr inbounds float, float* %147, i64 %148
  %150 = load float, float* %149, align 4
  %151 = fmul float %146, %150
  %152 = load float, float* %25, align 4
  %153 = load float*, float** %7, align 8
  %154 = load i64, i64* %11, align 8
  %155 = getelementptr inbounds float, float* %153, i64 %154
  %156 = load float, float* %155, align 4
  %157 = fmul float %152, %156
  %158 = fadd float %151, %157
  store float %158, float* %23, align 4
  %159 = load float*, float** %7, align 8
  %160 = load i64, i64* %10, align 8
  %161 = getelementptr inbounds float, float* %159, i64 %160
  %162 = load float, float* %161, align 4
  %163 = load float, float* %22, align 4
  %164 = fsub float %162, %163
  %165 = load float*, float** %7, align 8
  %166 = load i64, i64* %11, align 8
  %167 = getelementptr inbounds float, float* %165, i64 %166
  store float %164, float* %167, align 4
  %168 = load float*, float** %8, align 8
  %169 = load i64, i64* %10, align 8
  %170 = getelementptr inbounds float, float* %168, i64 %169
  %171 = load float, float* %170, align 4
  %172 = load float, float* %23, align 4
  %173 = fsub float %171, %172
  %174 = load float*, float** %8, align 8
  %175 = load i64, i64* %11, align 8
  %176 = getelementptr inbounds float, float* %174, i64 %175
  store float %173, float* %176, align 4
  %177 = load float, float* %22, align 4
  %178 = load float*, float** %7, align 8
  %179 = load i64, i64* %10, align 8
  %180 = getelementptr inbounds float, float* %178, i64 %179
  %181 = load float, float* %180, align 4
  %182 = fadd float %181, %177
  store float %182, float* %180, align 4
  %183 = load float, float* %23, align 4
  %184 = load float*, float** %8, align 8
  %185 = load i64, i64* %10, align 8
  %186 = getelementptr inbounds float, float* %184, i64 %185
  %187 = load float, float* %186, align 4
  %188 = fadd float %187, %183
  store float %188, float* %186, align 4
  br label %189

189:                                              ; preds = %129
  %190 = load i64, i64* %17, align 8
  %191 = load i64, i64* %10, align 8
  %192 = add nsw i64 %191, %190
  store i64 %192, i64* %10, align 8
  br label %125, !llvm.loop !11

193:                                              ; preds = %125
  %194 = load float, float* %24, align 4
  %195 = load float, float* %18, align 4
  %196 = fmul float %194, %195
  %197 = load float, float* %25, align 4
  %198 = load float, float* %19, align 4
  %199 = fmul float %197, %198
  %200 = fsub float %196, %199
  store float %200, float* %26, align 4
  %201 = load float, float* %24, align 4
  %202 = load float, float* %19, align 4
  %203 = fmul float %201, %202
  %204 = load float, float* %25, align 4
  %205 = load float, float* %18, align 4
  %206 = fmul float %204, %205
  %207 = fadd float %203, %206
  store float %207, float* %25, align 4
  %208 = load float, float* %26, align 4
  store float %208, float* %24, align 4
  br label %209

209:                                              ; preds = %193
  %210 = load i64, i64* %12, align 8
  %211 = add nsw i64 %210, 1
  store i64 %211, i64* %12, align 8
  br label %119, !llvm.loop !12

212:                                              ; preds = %119
  %213 = load float, float* %18, align 4
  %214 = fpext float %213 to double
  %215 = fsub double 1.000000e+00, %214
  %216 = fdiv double %215, 2.000000e+00
  %217 = fptrunc double %216 to float
  %218 = call float @mySqrt(float %217)
  store float %218, float* %19, align 4
  %219 = load i16, i16* %5, align 2
  %220 = sext i16 %219 to i32
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %222, label %225

222:                                              ; preds = %212
  %223 = load float, float* %19, align 4
  %224 = fneg float %223
  store float %224, float* %19, align 4
  br label %225

225:                                              ; preds = %222, %212
  %226 = load float, float* %18, align 4
  %227 = fpext float %226 to double
  %228 = fadd double 1.000000e+00, %227
  %229 = fdiv double %228, 2.000000e+00
  %230 = fptrunc double %229 to float
  %231 = call float @mySqrt(float %230)
  store float %231, float* %18, align 4
  br label %232

232:                                              ; preds = %225
  %233 = load i64, i64* %15, align 8
  %234 = add nsw i64 %233, 1
  store i64 %234, i64* %15, align 8
  br label %111, !llvm.loop !13

235:                                              ; preds = %111
  %236 = load i16, i16* %5, align 2
  %237 = sext i16 %236 to i32
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %263

239:                                              ; preds = %235
  store i64 0, i64* %10, align 8
  br label %240

240:                                              ; preds = %259, %239
  %241 = load i64, i64* %10, align 8
  %242 = load i64, i64* %9, align 8
  %243 = icmp slt i64 %241, %242
  br i1 %243, label %244, label %262

244:                                              ; preds = %240
  %245 = load i64, i64* %9, align 8
  %246 = sitofp i64 %245 to float
  %247 = load float*, float** %7, align 8
  %248 = load i64, i64* %10, align 8
  %249 = getelementptr inbounds float, float* %247, i64 %248
  %250 = load float, float* %249, align 4
  %251 = fdiv float %250, %246
  store float %251, float* %249, align 4
  %252 = load i64, i64* %9, align 8
  %253 = sitofp i64 %252 to float
  %254 = load float*, float** %8, align 8
  %255 = load i64, i64* %10, align 8
  %256 = getelementptr inbounds float, float* %254, i64 %255
  %257 = load float, float* %256, align 4
  %258 = fdiv float %257, %253
  store float %258, float* %256, align 4
  br label %259

259:                                              ; preds = %244
  %260 = load i64, i64* %10, align 8
  %261 = add nsw i64 %260, 1
  store i64 %261, i64* %10, align 8
  br label %240, !llvm.loop !14

262:                                              ; preds = %240
  br label %263

263:                                              ; preds = %262, %235
  ret i16 0
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
!14 = distinct !{!14, !3}
