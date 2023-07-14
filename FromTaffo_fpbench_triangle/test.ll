; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"target('test') scalar(range(-9, 9) final)\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [27 x i8] c"scalar(range(-9, 9) final)\00", section "llvm.metadata"
@.str.3 = private unnamed_addr constant [14 x i8] c"Values Begin\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Values End\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @ex0(float %a, float %b, float %c) #0 {
entry:
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %c.addr = alloca float, align 4
  %s = alloca float, align 4
  store float %a, float* %a.addr, align 4
  store float %b, float* %b.addr, align 4
  store float %c, float* %c.addr, align 4
  %0 = load float, float* %a.addr, align 4
  %1 = load float, float* %b.addr, align 4
  %add = fadd float %0, %1
  %2 = load float, float* %c.addr, align 4
  %add1 = fadd float %add, %2
  %conv = fpext float %add1 to double
  %div = fdiv double %conv, 2.000000e+00
  %conv2 = fptrunc double %div to float
  store float %conv2, float* %s, align 4
  %3 = load float, float* %s, align 4
  %4 = load float, float* %s, align 4
  %5 = load float, float* %a.addr, align 4
  %sub = fsub float %4, %5
  %mul = fmul float %3, %sub
  %6 = load float, float* %s, align 4
  %7 = load float, float* %b.addr, align 4
  %sub3 = fsub float %6, %7
  %mul4 = fmul float %mul, %sub3
  %8 = load float, float* %s, align 4
  %9 = load float, float* %c.addr, align 4
  %sub5 = fsub float %8, %9
  %mul6 = fmul float %mul4, %sub5
  %conv7 = fpext float %mul6 to double
  %call = call double @sqrt(double %conv7) #4
  %conv8 = fptrunc double %call to float
  ret float %conv8
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test(float* %arr) #0 {
entry:
  %arr.addr = alloca float*, align 8
  %a = alloca [100 x float], align 16
  %b = alloca [100 x float], align 16
  %c = alloca [100 x float], align 16
  %res = alloca [100 x float], align 16
  %i = alloca i32, align 4
  %i17 = alloca i32, align 4
  %j = alloca i32, align 4
  %j39 = alloca i32, align 4
  store float* %arr, float** %arr.addr, align 8
  %a1 = bitcast [100 x float]* %a to i8*
  call void @llvm.var.annotation(i8* %a1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* null)
  %b2 = bitcast [100 x float]* %b to i8*
  call void @llvm.var.annotation(i8* %b2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 17, i8* null)
  %c3 = bitcast [100 x float]* %c to i8*
  call void @llvm.var.annotation(i8* %c3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 18, i8* null)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load float*, float** %arr.addr, align 8
  %2 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %2, 3
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds float, float* %1, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [100 x float], [100 x float]* %a, i64 0, i64 %idxprom4
  store float %3, float* %arrayidx5, align 4
  %5 = load float*, float** %arr.addr, align 8
  %6 = load i32, i32* %i, align 4
  %mul6 = mul nsw i32 %6, 3
  %add = add nsw i32 %mul6, 1
  %idxprom7 = sext i32 %add to i64
  %arrayidx8 = getelementptr inbounds float, float* %5, i64 %idxprom7
  %7 = load float, float* %arrayidx8, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [100 x float], [100 x float]* %b, i64 0, i64 %idxprom9
  store float %7, float* %arrayidx10, align 4
  %9 = load float*, float** %arr.addr, align 8
  %10 = load i32, i32* %i, align 4
  %mul11 = mul nsw i32 %10, 3
  %add12 = add nsw i32 %mul11, 2
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds float, float* %9, i64 %idxprom13
  %11 = load float, float* %arrayidx14, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [100 x float], [100 x float]* %c, i64 0, i64 %idxprom15
  store float %11, float* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !2

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i17, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc35, %for.end
  %14 = load i32, i32* %i17, align 4
  %cmp19 = icmp slt i32 %14, 1
  br i1 %cmp19, label %for.body20, label %for.end37

for.body20:                                       ; preds = %for.cond18
  store i32 0, i32* %j, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc32, %for.body20
  %15 = load i32, i32* %j, align 4
  %cmp22 = icmp slt i32 %15, 100
  br i1 %cmp22, label %for.body23, label %for.end34

for.body23:                                       ; preds = %for.cond21
  %16 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [100 x float], [100 x float]* %a, i64 0, i64 %idxprom24
  %17 = load float, float* %arrayidx25, align 4
  %18 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %18 to i64
  %arrayidx27 = getelementptr inbounds [100 x float], [100 x float]* %b, i64 0, i64 %idxprom26
  %19 = load float, float* %arrayidx27, align 4
  %20 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %20 to i64
  %arrayidx29 = getelementptr inbounds [100 x float], [100 x float]* %c, i64 0, i64 %idxprom28
  %21 = load float, float* %arrayidx29, align 4
  %call = call float @ex0(float %17, float %19, float %21)
  %22 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 %idxprom30
  store float %call, float* %arrayidx31, align 4
  br label %for.inc32

for.inc32:                                        ; preds = %for.body23
  %23 = load i32, i32* %j, align 4
  %inc33 = add nsw i32 %23, 1
  store i32 %inc33, i32* %j, align 4
  br label %for.cond21, !llvm.loop !4

for.end34:                                        ; preds = %for.cond21
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %24 = load i32, i32* %i17, align 4
  %inc36 = add nsw i32 %24, 1
  store i32 %inc36, i32* %i17, align 4
  br label %for.cond18, !llvm.loop !5

for.end37:                                        ; preds = %for.cond18
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %j39, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc46, %for.end37
  %25 = load i32, i32* %j39, align 4
  %cmp41 = icmp slt i32 %25, 100
  br i1 %cmp41, label %for.body42, label %for.end48

for.body42:                                       ; preds = %for.cond40
  %26 = load i32, i32* %j39, align 4
  %idxprom43 = sext i32 %26 to i64
  %arrayidx44 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 %idxprom43
  %27 = load float, float* %arrayidx44, align 4
  %conv = fpext float %27 to double
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), double %conv)
  br label %for.inc46

for.inc46:                                        ; preds = %for.body42
  %28 = load i32, i32* %j39, align 4
  %inc47 = add nsw i32 %28, 1
  store i32 %inc47, i32* %j39, align 4
  br label %for.cond40, !llvm.loop !6

for.end48:                                        ; preds = %for.cond40
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32, i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %arr = alloca [200 x float], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 200
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %rem = srem i32 %1, 19
  %sub = sub nsw i32 %rem, 9
  %conv = sitofp i32 %sub to float
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 %idxprom
  store float %conv, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 0
  call void @test(float* %arraydecay)
  %4 = load i32, i32* %retval, align 4
  ret i32 %4
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

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
