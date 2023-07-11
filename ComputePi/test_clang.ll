; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"target('pi') scalar(range(0, 4) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [26 x i8] c"scalar(range(0, 1) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [34 x i8] c"Number of iterations to perform: \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"The value of pi is: %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_pi(i32 noundef %iters, float* noundef %res) #0 {
entry:
  %iters.addr = alloca i32, align 4
  %res.addr = alloca float*, align 8
  %pi = alloca double, align 8
  %z = alloca double, align 8
  %i = alloca i32, align 4
  store i32 %iters, i32* %iters.addr, align 4
  store float* %res, float** %res.addr, align 8
  %pi1 = bitcast double* %pi to i8*
  call void @llvm.var.annotation(i8* %pi1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 5, i8* null)
  store double 0.000000e+00, double* %pi, align 8
  %z2 = bitcast double* %z to i8*
  call void @llvm.var.annotation(i8* %z2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 6, i8* null)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %iters.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %2
  %add = add nsw i32 %mul, 1
  %conv = sitofp i32 %add to double
  %div = fdiv double 1.000000e+00, %conv
  store double %div, double* %z, align 8
  %3 = load i32, i32* %i, align 4
  %rem = srem i32 %3, 2
  %cmp3 = icmp eq i32 %rem, 1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load double, double* %z, align 8
  %fneg = fneg double %4
  store double %fneg, double* %z, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %5 = load double, double* %z, align 8
  %6 = load double, double* %pi, align 8
  %add5 = fadd double %6, %5
  store double %add5, double* %pi, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %8 = load double, double* %pi, align 8
  %mul6 = fmul double %8, 4.000000e+00
  %conv7 = fptrunc double %mul6 to float
  %9 = load float*, float** %res.addr, align 8
  store float %conv7, float* %9, align 4
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %iters = alloca i32, align 4
  %pi = alloca float, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* noundef %iters)
  %0 = load i32, i32* %iters, align 4
  call void @compute_pi(i32 noundef %0, float* noundef %pi)
  %1 = load float, float* %pi, align 4
  %conv = fpext float %1 to double
  %call2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), double noundef %conv)
  ret i32 0
}

declare i32 @printf(i8* noundef, ...) #2

declare i32 @__isoc99_scanf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
