; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"target('numerator') scalar(range(-256, 256) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [53 x i8] c"target('denominator') scalar(range(-256, 256) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [26 x i8] c"errtarget('res') scalar()\00", section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test(float* noundef %arr, float* noundef %res_f) #0 {
entry:
  %arr.addr = alloca float*, align 8
  %res_f.addr = alloca float*, align 8
  %n = alloca [1024 x float], align 16
  %d = alloca [1024 x float], align 16
  %res = alloca [1024 x float], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i23 = alloca i32, align 4
  store float* %arr, float** %arr.addr, align 8
  store float* %res_f, float** %res_f.addr, align 8
  %n1 = bitcast [1024 x float]* %n to i8*
  call void @llvm.var.annotation(i8* %n1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 7, i8* null)
  %d2 = bitcast [1024 x float]* %d to i8*
  call void @llvm.var.annotation(i8* %d2, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 8, i8* null)
  %res3 = bitcast [1024 x float]* %res to i8*
  call void @llvm.var.annotation(i8* %res3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 9, i8* null)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 1024
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load float*, float** %arr.addr, align 8
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, 2
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds float, float* %1, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [1024 x float], [1024 x float]* %n, i64 0, i64 %idxprom4
  store float %3, float* %arrayidx5, align 4
  %5 = load float*, float** %arr.addr, align 8
  %6 = load i32, i32* %i, align 4
  %mul6 = mul nsw i32 %6, 2
  %add = add nsw i32 %mul6, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds float, float* %5, i64 %idxprom7
  %7 = load float, float* %arrayidx8, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [1024 x float], [1024 x float]* %d, i64 0, i64 %idxprom9
  store float %7, float* %arrayidx10, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc20, %for.end
  %10 = load i32, i32* %j, align 4
  %cmp12 = icmp slt i32 %10, 1024
  br i1 %cmp12, label %for.body13, label %for.end22

for.body13:                                       ; preds = %for.cond11
  %11 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [1024 x float], [1024 x float]* %n, i64 0, i64 %idxprom14
  %12 = load float, float* %arrayidx15, align 4
  %13 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [1024 x float], [1024 x float]* %d, i64 0, i64 %idxprom16
  %14 = load float, float* %arrayidx17, align 4
  %div = fdiv float %12, %14
  %15 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [1024 x float], [1024 x float]* %res, i64 0, i64 %idxprom18
  store float %div, float* %arrayidx19, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.body13
  %16 = load i32, i32* %j, align 4
  %inc21 = add nsw i32 %16, 1
  store i32 %inc21, i32* %j, align 4
  br label %for.cond11, !llvm.loop !8

for.end22:                                        ; preds = %for.cond11
  store i32 0, i32* %i23, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc31, %for.end22
  %17 = load i32, i32* %i23, align 4
  %cmp25 = icmp slt i32 %17, 1024
  br i1 %cmp25, label %for.body26, label %for.end33

for.body26:                                       ; preds = %for.cond24
  %18 = load i32, i32* %i23, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [1024 x float], [1024 x float]* %res, i64 0, i64 %idxprom27
  %19 = load float, float* %arrayidx28, align 4
  %20 = load float*, float** %res_f.addr, align 8
  %21 = load i32, i32* %i23, align 4
  %idxprom29 = sext i32 %21 to i64
  %arrayidx30 = getelementptr inbounds float, float* %20, i64 %idxprom29
  store float %19, float* %arrayidx30, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %for.body26
  %22 = load i32, i32* %i23, align 4
  %inc32 = add nsw i32 %22, 1
  store i32 %inc32, i32* %i23, align 4
  br label %for.cond24, !llvm.loop !9

for.end33:                                        ; preds = %for.cond24
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [2048 x float], align 16
  %res = alloca [1024 x float], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2048
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %rem = srem i32 %1, 32
  %conv = sitofp i32 %rem to float
  %add = fadd float %conv, 0x3FCD70A3E0000000
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2048 x float], [2048 x float]* %arr, i64 0, i64 %idxprom
  store float %add, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [2048 x float], [2048 x float]* %arr, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [1024 x float], [1024 x float]* %res, i64 0, i64 0
  call void @test(float* noundef %arraydecay, float* noundef %arraydecay1)
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inaccessiblememonly nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
