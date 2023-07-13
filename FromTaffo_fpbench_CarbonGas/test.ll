; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"target('v') scalar(range(0, 1))\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [34 x i8] c"scalar(range(401014, 3062257153))\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [35 x i8] c"scalar(range(17123, 998543130625))\00", section "llvm.metadata"
@.str.4 = private unnamed_addr constant [41 x i8] c"scalar(range(-995480895487, 35382589.0))\00", section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test(float* noundef %arr, float* noundef %res) #0 {
entry:
  %arr.addr = alloca float*, align 8
  %res.addr = alloca float*, align 8
  %p = alloca float, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %t = alloca float, align 4
  %n = alloca float, align 4
  %k = alloca float, align 4
  %v = alloca [2000 x float], align 16
  %i = alloca i32, align 4
  %i4 = alloca i32, align 4
  %j = alloca i32, align 4
  %pv = alloca float, align 4
  %ann = alloca float, align 4
  %pbb = alloca float, align 4
  %annnbvv = alloca float, align 4
  %ret = alloca float, align 4
  store float* %arr, float** %arr.addr, align 8
  store float* %res, float** %res.addr, align 8
  store float 3.500000e+07, float* %p, align 4
  store float 0x3FD9A9FBE0000000, float* %a, align 4
  store float 0x3F066318E0000000, float* %b, align 4
  store float 3.000000e+02, float* %t, align 4
  store float 1.000000e+03, float* %n, align 4
  store float 0x3B30B0E7E0000000, float* %k, align 4
  %v1 = bitcast [2000 x float]* %v to i8*
  call void @llvm.var.annotation(i8* %v1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 36, i8* null)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load float*, float** %arr.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds float, float* %1, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [2000 x float], [2000 x float]* %v, i64 0, i64 %idxprom2
  store float %3, float* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i4, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc30, %for.end
  %6 = load i32, i32* %i4, align 4
  %cmp6 = icmp slt i32 %6, 1000
  br i1 %cmp6, label %for.body7, label %for.end32

for.body7:                                        ; preds = %for.cond5
  store i32 0, i32* %j, align 4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc27, %for.body7
  %7 = load i32, i32* %j, align 4
  %cmp9 = icmp slt i32 %7, 2000
  br i1 %cmp9, label %for.body10, label %for.end29

for.body10:                                       ; preds = %for.cond8
  %8 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %8 to i64
  %arrayidx12 = getelementptr inbounds [2000 x float], [2000 x float]* %v, i64 0, i64 %idxprom11
  %9 = load float, float* %arrayidx12, align 4
  %mul = fmul float 3.500000e+07, %9
  store float %mul, float* %pv, align 4
  %ann13 = bitcast float* %ann to i8*
  call void @llvm.var.annotation(i8* %ann13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 46, i8* null)
  %10 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [2000 x float], [2000 x float]* %v, i64 0, i64 %idxprom14
  %11 = load float, float* %arrayidx15, align 4
  %div = fdiv float 4.010000e+05, %11
  store float %div, float* %ann, align 4
  store float 0x3FB05630A0000000, float* %pbb, align 4
  %annnbvv16 = bitcast float* %annnbvv to i8*
  call void @llvm.var.annotation(i8* %annnbvv16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 52, i8* null)
  %12 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %12 to i64
  %arrayidx18 = getelementptr inbounds [2000 x float], [2000 x float]* %v, i64 0, i64 %idxprom17
  %13 = load float, float* %arrayidx18, align 4
  %div19 = fdiv float 0x40D0B8ACE0000000, %13
  %14 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [2000 x float], [2000 x float]* %v, i64 0, i64 %idxprom20
  %15 = load float, float* %arrayidx21, align 4
  %div22 = fdiv float %div19, %15
  store float %div22, float* %annnbvv, align 4
  %ret23 = bitcast float* %ret to i8*
  call void @llvm.var.annotation(i8* %ret23, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 54, i8* null)
  %16 = load float, float* %pv, align 4
  %17 = load float, float* %ann, align 4
  %add = fadd float %16, %17
  %18 = load float, float* %pbb, align 4
  %sub = fsub float %add, %18
  %19 = load float, float* %annnbvv, align 4
  %sub24 = fsub float %sub, %19
  store float %sub24, float* %ret, align 4
  %20 = load float, float* %ret, align 4
  %21 = load float*, float** %res.addr, align 8
  %22 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds float, float* %21, i64 %idxprom25
  store float %20, float* %arrayidx26, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.body10
  %23 = load i32, i32* %j, align 4
  %inc28 = add nsw i32 %23, 1
  store i32 %inc28, i32* %j, align 4
  br label %for.cond8, !llvm.loop !8

for.end29:                                        ; preds = %for.cond8
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %24 = load i32, i32* %i4, align 4
  %inc31 = add nsw i32 %24, 1
  store i32 %inc31, i32* %i4, align 4
  br label %for.cond5, !llvm.loop !9

for.end32:                                        ; preds = %for.cond5
  ret void
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [2000 x float], align 16
  %res = alloca [2000 x float], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 2000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %rem = srem i32 %1, 32
  %conv = sitofp i32 %rem to float
  %add = fadd float %conv, 0x3FCD70A3E0000000
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [2000 x float], [2000 x float]* %arr, i64 0, i64 %idxprom
  store float %add, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [2000 x float], [2000 x float]* %arr, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [2000 x float], [2000 x float]* %res, i64 0, i64 0
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
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
