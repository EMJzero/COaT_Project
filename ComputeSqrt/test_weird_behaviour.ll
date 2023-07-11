; ModuleID = '/tmp/tmp.ebxgRwjp9K/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.5 = private unnamed_addr constant [15 x i8] c"You chose: %f\0A\00", align 1, !taffo.info !0
@.str.6 = private unnamed_addr constant [29 x i8] c"Pre-loop\09tes:%u\09lo:%f\09hi:%f\0A\00", align 1, !taffo.info !2
@.str.7 = private unnamed_addr constant [29 x i8] c"Loop:%d\09\09mid:%f\09lo:%f\09hi:%f\0A\00", align 1, !taffo.info !4
@.str.8 = private unnamed_addr constant [37 x i8] c"Sqrt argument (between 0 and 4096): \00", align 1, !taffo.info !6
@.str.9 = private unnamed_addr constant [3 x i8] c"%f\00", align 1, !taffo.info !8
@.str.10 = private unnamed_addr constant [12 x i8] c"Result: %f\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local void @NRsqrt(float* %n_f, float* %result) #0 !taffo.start !12 !taffo.initweight !13 !taffo.funinfo !14 {
entry:
  %0 = load float, float* %n_f, align 4
  %1 = fmul float 5.242880e+05, %0, !taffo.info !15, !taffo.target !18
  %conv.u13_19fixp = fptoui float %1 to i32, !taffo.info !15, !taffo.target !18
  %2 = uitofp i32 %conv.u13_19fixp to double, !taffo.info !15, !taffo.target !18
  %3 = fdiv double %2, 5.242880e+05, !taffo.info !15, !taffo.target !18
  %call.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), double %3), !taffo.info !19, !taffo.initweight !20, !taffo.target !18, !taffo.constinfo !21
  %cmp = fcmp olt float %0, 1.000000e+00, !taffo.info !22, !taffo.initweight !24, !taffo.target !18
  br i1 %cmp, label %if.then, label %if.else, !taffo.info !25, !taffo.initweight !20, !taffo.target !18

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %lo.0 = phi float [ %0, %if.then ], [ 1.000000e+00, %if.else ], !taffo.info !26
  %hi.0 = phi float [ 1.000000e+00, %if.then ], [ %0, %if.else ], !taffo.info !26
  ; here %hi.0 is correctly at 16...

  %4 = fmul float 0x41E0000000000000, %lo.0, !taffo.info !26
  %conv7.u1_31fixp = fptoui float %4 to i32, !taffo.info !28, !taffo.target !30
  %5 = uitofp i32 %conv7.u1_31fixp to double, !taffo.info !28, !taffo.target !30
  %6 = fdiv double %5, 0x41E0000000000000, !taffo.info !28, !taffo.target !30

  %7 = fmul float 0x41E0000000000000, %hi.0, !taffo.info !26
  ; -----------------------------------------------------------------------------------------------------------------------------------
  ; well well, with 16 as input, %7 = 34359738368, that exceeds the range of int32, thus breaking the conversion and THAT IS THE ISSUE!
  ; SOLUTION -> use FINAL in TAFFO's annotations...
  ; -----------------------------------------------------------------------------------------------------------------------------------
  %conv8.u1_31fixp = fptoui float %7 to i32, !taffo.info !28, !taffo.target !31
  %8 = uitofp i32 %conv8.u1_31fixp to float, !taffo.info !28, !taffo.target !31
  %9 = fdiv float %8, 0x41E0000000000000, !taffo.info !28, !taffo.target !31
  ; the issue is not the going to double part...
  %ex.7 = fpext float %7 to double
  %ex.8 = fpext float %8 to double
  %ex.9 = fpext float %9 to double

  %lo.0.ex = fpext float %lo.0 to double
  %hi.0.ex = fpext float %hi.0 to double

  %call9.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %conv8.u1_31fixp, double %lo.0.ex, double %ex.7), !taffo.info !19, !taffo.initweight !20, !taffo.target !30, !taffo.constinfo !32
  %10 = fmul float 0x41E0000000000000, %lo.0, !taffo.info !26
  %11 = fptoui float %10 to i32, !taffo.info !26
  %12 = lshr i32 %11, 3, !taffo.info !26
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %lo.1.u4_28fixp = phi i32 [ %12, %if.end ], [ %mul13.u4_28fixp, %while.body ], !taffo.info !33
  %13 = zext i32 %lo.1.u4_28fixp to i64, !taffo.info !33
  %14 = mul i64 100, %13, !taffo.info !36, !taffo.target !30, !taffo.constinfo !39
  %15 = lshr i64 %14, 6, !taffo.info !36, !taffo.target !30, !taffo.constinfo !39
  %mul.u10_22fixp = trunc i64 %15 to i32, !taffo.info !43, !taffo.target !30
  %16 = zext i32 %mul.u10_22fixp to i64, !taffo.info !43, !taffo.target !30
  %17 = zext i32 %lo.1.u4_28fixp to i64, !taffo.info !33
  %18 = mul i64 %16, %17, !taffo.info !45, !taffo.target !30
  %19 = lshr i64 %18, 32, !taffo.info !45, !taffo.target !30
  %mul10.u14_18fixp = trunc i64 %19 to i32, !taffo.info !48, !taffo.target !30
  %20 = zext i32 %mul10.u14_18fixp to i33, !taffo.info !48, !taffo.target !30
  %21 = fmul float 2.621440e+05, %0, !taffo.info !50, !taffo.target !18
  %22 = fptosi float %21 to i33, !taffo.info !50, !taffo.target !18
  %23 = icmp slt i33 %20, %22, !taffo.info !50, !taffo.target !18
  br i1 %23, label %while.body, label %while.end, !taffo.info !25, !taffo.initweight !20, !taffo.target !18

while.body:                                       ; preds = %while.cond
  %24 = zext i32 %lo.1.u4_28fixp to i64, !taffo.info !33
  %25 = mul i64 %24, 10, !taffo.info !51, !taffo.target !30, !taffo.constinfo !53
  %mul13.u4_28fixp = trunc i64 %25 to i32, !taffo.info !55, !taffo.target !30
  br label %while.cond, !llvm.loop !56

while.end:                                        ; preds = %while.cond
  %26 = fmul float 0x41E0000000000000, %hi.0, !taffo.info !26
  %27 = fptoui float %26 to i32, !taffo.info !26
  %28 = lshr i32 %27, 2, !taffo.info !26
  br label %while.cond14

while.cond14:                                     ; preds = %while.body22, %while.end
  %hi.1.u3_29fixp = phi i32 [ %28, %while.end ], [ %44, %while.body22 ], !taffo.info !58
  %conv15.u1_31fixp = shl i32 %hi.1.u3_29fixp, 2, !taffo.info !61, !taffo.target !31
  %29 = zext i32 %conv15.u1_31fixp to i64, !taffo.info !61, !taffo.target !31
  %30 = mul i64 21474836, %29, !taffo.info !62, !taffo.target !31, !taffo.constinfo !65
  %31 = lshr i64 %30, 31, !taffo.info !62, !taffo.target !31, !taffo.constinfo !65
  %mul16.u1_31fixp = trunc i64 %31 to i32, !taffo.info !68, !taffo.target !31
  %conv17.u1_31fixp = shl i32 %hi.1.u3_29fixp, 2, !taffo.info !61, !taffo.target !31
  %32 = zext i32 %mul16.u1_31fixp to i64, !taffo.info !68, !taffo.target !31
  %33 = zext i32 %conv17.u1_31fixp to i64, !taffo.info !61, !taffo.target !31
  %34 = mul i64 %32, %33, !taffo.info !69, !taffo.target !31
  %35 = lshr i64 %34, 31, !taffo.info !69, !taffo.target !31
  %mul18.u1_31fixp = trunc i64 %35 to i32, !taffo.info !71, !taffo.target !31
  %36 = fmul float 5.242880e+05, %0, !taffo.info !15, !taffo.target !18
  %conv19.u13_19fixp = fptoui float %36 to i32, !taffo.info !15, !taffo.target !18
  %37 = zext i32 %mul18.u1_31fixp to i44, !taffo.info !71, !taffo.target !31
  %38 = zext i32 %conv19.u13_19fixp to i44, !taffo.info !15, !taffo.target !18
  %39 = shl i44 %38, 12, !taffo.info !15, !taffo.target !18
  %40 = icmp ugt i44 %37, %39, !taffo.info !72, !taffo.target !18
  br i1 %40, label %while.body22, label %while.end26, !taffo.info !25, !taffo.initweight !73, !taffo.target !18

while.body22:                                     ; preds = %while.cond14
  %conv23.u1_31fixp = shl i32 %hi.1.u3_29fixp, 2, !taffo.info !28, !taffo.target !31
  %41 = zext i32 %conv23.u1_31fixp to i64, !taffo.info !28, !taffo.target !31
  %42 = mul i64 %41, 214748364, !taffo.info !74, !taffo.target !31, !taffo.constinfo !76
  %43 = lshr i64 %42, 31, !taffo.info !74, !taffo.target !31, !taffo.constinfo !76
  %mul24.u1_31fixp = trunc i64 %43 to i32, !taffo.info !78, !taffo.target !31
  %44 = lshr i32 %mul24.u1_31fixp, 2, !taffo.info !78, !taffo.target !31
  br label %while.cond14, !llvm.loop !80

while.end26:                                      ; preds = %while.cond14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end26
  %lo.2.u4_28fixp = phi i32 [ %lo.1.u4_28fixp, %while.end26 ], [ %lo.3.u4_28fixp, %for.inc ], !taffo.info !81
  %hi.2.u3_29fixp = phi i32 [ %hi.1.u3_29fixp, %while.end26 ], [ %hi.3.u3_29fixp, %for.inc ], !taffo.info !83
  %mid.0.u3_29fixp = phi i32 [ undef, %while.end26 ], [ %75, %for.inc ], !taffo.info !85
  %i.0 = phi i32 [ 0, %while.end26 ], [ %inc, %for.inc ], !taffo.info !87
  %45 = uitofp i32 %lo.2.u4_28fixp to double, !taffo.info !33, !taffo.target !30
  %46 = fdiv double %45, 0x41B0000000000000, !taffo.info !33, !taffo.target !30
  %47 = uitofp i32 %hi.2.u3_29fixp to double, !taffo.info !58, !taffo.target !31
  %48 = fdiv double %47, 0x41C0000000000000, !taffo.info !58, !taffo.target !31
  %49 = uitofp i32 %mid.0.u3_29fixp to float, !taffo.info !85
  %50 = fdiv float %49, 0x41C0000000000000, !taffo.info !85
  %cmp27 = icmp slt i32 %i.0, 100, !taffo.info !26
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %conv29.u13_19fixp = lshr i32 %mid.0.u3_29fixp, 10, !taffo.info !15, !taffo.target !88
  %51 = uitofp i32 %conv29.u13_19fixp to double, !taffo.info !15, !taffo.target !88
  %52 = fdiv double %51, 5.242880e+05, !taffo.info !15, !taffo.target !88
  %call32.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %i.0, double %52, double %46, double %48), !taffo.info !89, !taffo.initweight !20, !taffo.target !30, !taffo.constinfo !90
  %53 = lshr i32 %hi.2.u3_29fixp, 1, !taffo.info !58, !taffo.target !31
  %add.u4_28fixp = add i32 %lo.2.u4_28fixp, %53, !taffo.info !91, !taffo.target !30
  %54 = zext i32 %add.u4_28fixp to i64, !taffo.info !91, !taffo.target !30
  %55 = udiv i64 %54, 2, !taffo.info !93, !taffo.target !30, !taffo.constinfo !94
  %div.u4_28fixp = trunc i64 %55 to i32, !taffo.info !97, !taffo.target !30
  %56 = uitofp i32 %div.u4_28fixp to float, !taffo.info !97, !taffo.target !30
  %57 = fdiv float %56, 0x41B0000000000000, !taffo.info !97, !taffo.target !30
  %58 = zext i32 %div.u4_28fixp to i64, !taffo.info !97, !taffo.target !30
  %59 = zext i32 %div.u4_28fixp to i64, !taffo.info !97, !taffo.target !30
  %60 = mul i64 %58, %59, !taffo.info !98, !taffo.target !88
  %61 = lshr i64 %60, 29, !taffo.info !98, !taffo.target !88
  %mul33.u5_27fixp = trunc i64 %61 to i32, !taffo.info !101, !taffo.target !88
  %62 = zext i32 %mul33.u5_27fixp to i33, !taffo.info !101, !taffo.target !88
  %63 = fmul float 0x41A0000000000000, %0, !taffo.info !103, !taffo.target !18
  %64 = fptosi float %63 to i33, !taffo.info !103, !taffo.target !18
  %65 = icmp eq i33 %62, %64, !taffo.info !103, !taffo.target !18
  br i1 %65, label %if.then36, label %if.end37, !taffo.info !25, !taffo.initweight !20, !taffo.target !18

if.then36:                                        ; preds = %for.body
  store float %57, float* %result, align 4, !taffo.info !25, !taffo.target !88
  br label %return

if.end37:                                         ; preds = %for.body
  %66 = zext i32 %div.u4_28fixp to i64, !taffo.info !97, !taffo.target !30
  %67 = zext i32 %div.u4_28fixp to i64, !taffo.info !97, !taffo.target !30
  %68 = mul i64 %66, %67, !taffo.info !98, !taffo.target !88
  %69 = lshr i64 %68, 29, !taffo.info !98, !taffo.target !88
  %mul38.u5_27fixp = trunc i64 %69 to i32, !taffo.info !101, !taffo.target !88
  %70 = zext i32 %mul38.u5_27fixp to i33, !taffo.info !101, !taffo.target !88
  %71 = fmul float 0x41A0000000000000, %0, !taffo.info !103, !taffo.target !18
  %72 = fptosi float %71 to i33, !taffo.info !103, !taffo.target !18
  %73 = icmp sgt i33 %70, %72, !taffo.info !103, !taffo.target !18
  br i1 %73, label %if.then41, label %if.else42, !taffo.info !25, !taffo.initweight !20, !taffo.target !18

if.then41:                                        ; preds = %if.end37
  %74 = shl i32 %div.u4_28fixp, 1, !taffo.info !97, !taffo.target !30
  br label %if.end43

if.else42:                                        ; preds = %if.end37
  br label %if.end43

if.end43:                                         ; preds = %if.else42, %if.then41
  %lo.3.u4_28fixp = phi i32 [ %lo.2.u4_28fixp, %if.then41 ], [ %div.u4_28fixp, %if.else42 ], !taffo.info !81
  %hi.3.u3_29fixp = phi i32 [ %74, %if.then41 ], [ %hi.2.u3_29fixp, %if.else42 ], !taffo.info !83
  br label %for.inc

for.inc:                                          ; preds = %if.end43
  %inc = add nsw i32 %i.0, 1, !taffo.info !26, !taffo.constinfo !104
  %75 = shl i32 %div.u4_28fixp, 1, !taffo.info !97, !taffo.target !30
  br label %for.cond, !llvm.loop !105

for.end:                                          ; preds = %for.cond
  store float %50, float* %result, align 4, !taffo.info !25, !taffo.target !88
  br label %return

return:                                           ; preds = %for.end, %if.then36
  ret void
}

declare !taffo.initweight !106 !taffo.funinfo !107 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !108 !taffo.funinfo !108 {
entry:
  %in = alloca float, align 4
  %res = alloca float, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0)), !taffo.constinfo !104
  %call1 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), float* %in), !taffo.constinfo !21
  %0 = load float, float* %in, align 4
  %conv = fpext float %0 to double
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), double %conv), !taffo.constinfo !21
  call void @NRsqrt(float* %in, float* %res), !taffo.constinfo !21
  %1 = load float, float* %res, align 4
  %conv3 = fpext float %1 to double
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), double %conv3), !taffo.constinfo !21
  ret i32 0
}

declare !taffo.initweight !106 !taffo.funinfo !107 dso_local i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!10}
!llvm.ident = !{!11}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.170000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.140000e+02}
!4 = !{i1 false, !5, i1 false, i2 0}
!5 = !{double 0.000000e+00, double 1.120000e+02}
!6 = !{i1 false, !7, i1 false, i2 0}
!7 = !{double 0.000000e+00, double 1.190000e+02}
!8 = !{i1 false, !9, i1 false, i2 0}
!9 = !{double 0.000000e+00, double 1.020000e+02}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!12 = !{i1 true}
!13 = !{i32 -1, i32 -1}
!14 = !{i32 0, i1 false, i32 0, i1 false}
!15 = !{!16, !17, i1 false, i2 1}
!16 = !{!"fixp", i32 32, i32 19}
!17 = !{double 0.000000e+00, double 4.096000e+03}
!18 = !{!"input"}
!19 = !{!16, i1 false, i1 false, i2 1}
!20 = !{i32 3}
!21 = !{i1 false, i1 false, i1 false}
!22 = !{i1 false, !23, i1 false, i2 1}
!23 = !{double 0.000000e+00, double 1.000000e+00}
!24 = !{i32 2}
!25 = !{i1 false, !17, i1 false, i2 1}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 1.000000e+00, double 1.000000e+00}
!28 = !{!29, !27, i1 false, i2 1}
!29 = !{!"fixp", i32 32, i32 31}
!30 = !{!"lo"}
!31 = !{!"hi"}
!32 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!33 = !{!34, !35, i1 false, i2 1}
!34 = !{!"fixp", i32 32, i32 28}
!35 = !{double 1.000000e+00, double 1.000000e+01}
!36 = !{!37, !38, i1 false, i2 1}
!37 = !{!"fixp", i32 64, i32 28}
!38 = !{double 1.000000e+02, double 1.000000e+03}
!39 = !{!40, i1 false}
!40 = !{!41, !42, i1 false, i2 0}
!41 = !{!"fixp", i32 32, i32 0}
!42 = !{double 1.000000e+02, double 1.000000e+02}
!43 = !{!44, !38, i1 false, i2 1}
!44 = !{!"fixp", i32 32, i32 22}
!45 = !{!46, !47, i1 false, i2 1}
!46 = !{!"fixp", i32 64, i32 50}
!47 = !{double 1.000000e+02, double 1.000000e+04}
!48 = !{!49, !47, i1 false, i2 1}
!49 = !{!"fixp", i32 32, i32 18}
!50 = !{!49, i1 false, i1 false, i2 1}
!51 = !{!37, !52, i1 false, i2 1}
!52 = !{double 1.000000e+01, double 1.000000e+01}
!53 = !{i1 false, !54}
!54 = !{!41, !52, i1 false, i2 0}
!55 = !{!34, !52, i1 false, i2 1}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!59, !60, i1 false, i2 1}
!59 = !{!"fixp", i32 32, i32 29}
!60 = !{double 0x3FB9999980000000, double 1.000000e+00}
!61 = !{!29, !60, i1 false, i2 1}
!62 = !{!63, !64, i1 false, i2 1}
!63 = !{!"fixp", i32 64, i32 62}
!64 = !{double 0x3F50624DC28F5C29, double 1.000000e-02}
!65 = !{!66, i1 false}
!66 = !{!29, !67, i1 false, i2 0}
!67 = !{double 1.000000e-02, double 1.000000e-02}
!68 = !{!29, !64, i1 false, i2 1}
!69 = !{!63, !70, i1 false, i2 1}
!70 = !{double 0x3F1A36E2B6AE7D71, double 1.000000e-02}
!71 = !{!29, !70, i1 false, i2 1}
!72 = !{!29, i1 false, i1 false, i2 1}
!73 = !{i32 4}
!74 = !{!63, !75, i1 false, i2 1}
!75 = !{double 1.000000e-01, double 1.000000e-01}
!76 = !{i1 false, !77}
!77 = !{!29, !75, i1 false, i2 0}
!78 = !{!29, !79, i1 false, i2 1}
!79 = !{double 0x3FB9999980000000, double 0x3FB99999A0000000}
!80 = distinct !{!80, !57}
!81 = !{!34, !82, i1 false, i2 1}
!82 = !{double 0x3FE1999998000000, double 1.000000e+01}
!83 = !{!59, !84, i1 false, i2 1}
!84 = !{double 0x3FB9999980000000, double 5.500000e+00}
!85 = !{!59, !86, i1 false, i2 1}
!86 = !{double 0x3FE1999998000000, double 5.500000e+00}
!87 = !{i1 false, !23, i1 false, i2 0}
!88 = !{!"mid"}
!89 = !{!34, i1 false, i1 false, i2 1}
!90 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!91 = !{!34, !92, i1 false, i2 1}
!92 = !{double 0x3FF1999998000000, double 1.100000e+01}
!93 = !{!37, !86, i1 false, i2 1}
!94 = !{i1 false, !95}
!95 = !{!41, !96, i1 false, i2 0}
!96 = !{double 2.000000e+00, double 2.000000e+00}
!97 = !{!34, !86, i1 false, i2 1}
!98 = !{!99, !100, i1 false, i2 1}
!99 = !{!"fixp", i32 64, i32 56}
!100 = !{double 0x3FD35C28F23D70A4, double 3.025000e+01}
!101 = !{!102, !100, i1 false, i2 1}
!102 = !{!"fixp", i32 32, i32 27}
!103 = !{!102, i1 false, i1 false, i2 1}
!104 = !{i1 false, i1 false}
!105 = distinct !{!105, !57}
!106 = !{i32 -1}
!107 = !{i32 0, i1 false}
!108 = !{}
