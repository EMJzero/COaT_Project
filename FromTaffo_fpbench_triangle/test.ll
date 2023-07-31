; ModuleID = '/tmp/tmp.ykN9N4KskI/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.3 = private unnamed_addr constant [14 x i8] c"Values Begin\0A\00", align 1, !taffo.info !0
@.str.4 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1, !taffo.info !2
@.str.5 = private unnamed_addr constant [12 x i8] c"Values End\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local float @ex0(float noundef %a, float noundef %b, float noundef %c) #0 !taffo.initweight !10 !taffo.equivalentChild !11 !taffo.funinfo !12 {
entry:
  %add = fadd float %a, %b
  %add1 = fadd float %add, %c
  %conv = fpext float %add1 to double
  %div = fdiv double %conv, 2.000000e+00, !taffo.constinfo !13
  %conv2 = fptrunc double %div to float
  %sub = fsub float %conv2, %a
  %mul = fmul float %conv2, %sub
  %sub3 = fsub float %conv2, %b
  %mul4 = fmul float %mul, %sub3
  %sub5 = fsub float %conv2, %c
  %mul6 = fmul float %mul4, %sub5
  %conv7 = fpext float %mul6 to double
  %call = call double @sqrt(double noundef %conv7) #3, !taffo.constinfo !16
  %conv8 = fptrunc double %call to float
  ret float %conv8
}

; Function Attrs: nounwind
declare !taffo.initweight !17 !taffo.funinfo !18 double @sqrt(double noundef) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(float* noundef %arr, float* noundef %res) #0 !taffo.initweight !19 !taffo.funinfo !20 !taffo.start !21 {
entry:
  %a.s5_27fixp = alloca [100 x i32], align 16, !taffo.info !22, !taffo.target !25
  %b.s5_27fixp = alloca [100 x i32], align 16, !taffo.info !22
  %c.s5_27fixp = alloca [100 x i32], align 16, !taffo.info !22
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !26
  %cmp = icmp slt i32 %i.0, 100, !taffo.info !28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 3, !taffo.info !30, !taffo.constinfo !16
  %idxprom = sext i32 %mul to i64, !taffo.info !30
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %.flt = load float, float* %arrayidx, align 4, !taffo.info !22, !taffo.initweight !32, !taffo.target !25
  %0 = fmul float 0x41A0000000000000, %.flt, !taffo.info !22, !taffo.target !25
  %.flt.fallback.s5_27fixp = fptosi float %0 to i32, !taffo.info !22, !taffo.target !25
  %idxprom4 = sext i32 %i.0 to i64, !taffo.info !33
  %arrayidx5.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %a.s5_27fixp, i64 0, i64 %idxprom4, !taffo.info !22, !taffo.target !25
  store i32 %.flt.fallback.s5_27fixp, i32* %arrayidx5.s5_27fixp, align 4, !taffo.info !35, !taffo.target !25
  %mul6 = mul nsw i32 %i.0, 3, !taffo.info !30, !taffo.constinfo !16
  %add = add nsw i32 %mul6, 1, !taffo.info !36, !taffo.constinfo !16
  %idxprom7 = sext i32 %add to i64, !taffo.info !36
  %arrayidx8 = getelementptr inbounds float, float* %arr, i64 %idxprom7
  %.flt1 = load float, float* %arrayidx8, align 4, !taffo.info !22, !taffo.initweight !32
  %1 = fmul float 0x41A0000000000000, %.flt1, !taffo.info !22
  %.flt1.fallback.s5_27fixp = fptosi float %1 to i32, !taffo.info !22
  %idxprom9 = sext i32 %i.0 to i64, !taffo.info !33
  %arrayidx10.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %b.s5_27fixp, i64 0, i64 %idxprom9, !taffo.info !22
  store i32 %.flt1.fallback.s5_27fixp, i32* %arrayidx10.s5_27fixp, align 4, !taffo.info !35
  %mul11 = mul nsw i32 %i.0, 3, !taffo.info !30, !taffo.constinfo !16
  %add12 = add nsw i32 %mul11, 2, !taffo.info !38, !taffo.constinfo !16
  %idxprom13 = sext i32 %add12 to i64, !taffo.info !38
  %arrayidx14 = getelementptr inbounds float, float* %arr, i64 %idxprom13
  %.flt2 = load float, float* %arrayidx14, align 4, !taffo.info !22, !taffo.initweight !32
  %2 = fmul float 0x41A0000000000000, %.flt2, !taffo.info !22
  %.flt2.fallback.s5_27fixp = fptosi float %2 to i32, !taffo.info !22
  %idxprom15 = sext i32 %i.0 to i64, !taffo.info !33
  %arrayidx16.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %c.s5_27fixp, i64 0, i64 %idxprom15, !taffo.info !22
  store i32 %.flt2.fallback.s5_27fixp, i32* %arrayidx16.s5_27fixp, align 4, !taffo.info !35
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !40, !taffo.constinfo !16
  br label %for.cond, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc35, %for.end
  %i17.0 = phi i32 [ 0, %for.end ], [ %inc36, %for.inc35 ], !taffo.info !44
  %cmp19 = icmp slt i32 %i17.0, 1, !taffo.info !28
  br i1 %cmp19, label %for.body20, label %for.end37

for.body20:                                       ; preds = %for.cond18
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc32, %for.body20
  %j.0 = phi i32 [ 0, %for.body20 ], [ %inc33, %for.inc32 ], !taffo.info !46
  %cmp22 = icmp slt i32 %j.0, 100, !taffo.info !28
  br i1 %cmp22, label %for.body23, label %for.end34

for.body23:                                       ; preds = %for.cond21
  %idxprom24 = sext i32 %j.0 to i64, !taffo.info !48
  %arrayidx25.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %a.s5_27fixp, i64 0, i64 %idxprom24, !taffo.info !22, !taffo.target !25
  %s5_27fixp = load i32, i32* %arrayidx25.s5_27fixp, align 4, !taffo.info !50, !taffo.target !25
  %idxprom26 = sext i32 %j.0 to i64, !taffo.info !48
  %arrayidx27.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %b.s5_27fixp, i64 0, i64 %idxprom26, !taffo.info !22
  %s5_27fixp3 = load i32, i32* %arrayidx27.s5_27fixp, align 4, !taffo.info !50
  %idxprom28 = sext i32 %j.0 to i64, !taffo.info !48
  %arrayidx29.s5_27fixp = getelementptr inbounds [100 x i32], [100 x i32]* %c.s5_27fixp, i64 0, i64 %idxprom28, !taffo.info !22
  %s5_27fixp4 = load i32, i32* %arrayidx29.s5_27fixp, align 4, !taffo.info !50
  %3 = ashr i32 %s5_27fixp, 1, !taffo.info !50, !taffo.target !25
  %4 = ashr i32 %s5_27fixp3, 1, !taffo.info !50
  %5 = ashr i32 %s5_27fixp4, 1, !taffo.info !50
  %call.u9_23fixp = call i32 @ex0.1_u9_23fixp(i32 %3, i32 %4, i32 %5), !taffo.info !52, !taffo.constinfo !55, !taffo.target !25
  %6 = uitofp i32 %call.u9_23fixp to float, !taffo.info !52, !taffo.target !25
  %7 = fdiv float %6, 0x4160000000000000, !taffo.info !52, !taffo.target !25
  %idxprom30 = sext i32 %j.0 to i64, !taffo.info !48
  %arrayidx31 = getelementptr inbounds float, float* %res, i64 %idxprom30
  store float %7, float* %arrayidx31, align 4, !taffo.info !35, !taffo.target !25
  br label %for.inc32

for.inc32:                                        ; preds = %for.body23
  %inc33 = add nsw i32 %j.0, 1, !taffo.info !56, !taffo.constinfo !16
  br label %for.cond21, !llvm.loop !58

for.end34:                                        ; preds = %for.cond21
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %inc36 = add nsw i32 %i17.0, 1, !taffo.info !59, !taffo.constinfo !16
  br label %for.cond18, !llvm.loop !61

for.end37:                                        ; preds = %for.cond18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !62 !taffo.funinfo !62 {
entry:
  %arr = alloca [200 x float], align 16
  %res = alloca [100 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 200
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 19, !taffo.constinfo !16
  %sub = sub nsw i32 %rem, 9, !taffo.constinfo !16
  %conv = sitofp i32 %sub to float
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 %idxprom
  store float %conv, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !16
  br label %for.cond, !llvm.loop !63

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [200 x float], [200 x float]* %arr, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 0
  call void @test(float* noundef %arraydecay, float* noundef %arraydecay1), !taffo.constinfo !64
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)), !taffo.constinfo !16
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc10, %for.end
  %j.0 = phi i32 [ 0, %for.end ], [ %inc11, %for.inc10 ]
  %cmp3 = icmp slt i32 %j.0, 100
  br i1 %cmp3, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond2
  %idxprom6 = sext i32 %j.0 to i64
  %arrayidx7 = getelementptr inbounds [100 x float], [100 x float]* %res, i64 0, i64 %idxprom6
  %0 = load float, float* %arrayidx7, align 4
  %conv8 = fpext float %0 to double
  %call9 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), double noundef %conv8), !taffo.constinfo !64
  br label %for.inc10

for.inc10:                                        ; preds = %for.body5
  %inc11 = add nsw i32 %j.0, 1, !taffo.constinfo !16
  br label %for.cond2, !llvm.loop !65

for.end12:                                        ; preds = %for.cond2
  %call13 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)), !taffo.constinfo !16
  ret i32 0
}

declare !taffo.initweight !17 !taffo.funinfo !18 i32 @printf(i8* noundef, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @ex0.1_u9_23fixp(i32 noundef %a.s6_26fixp, i32 noundef %b.s6_26fixp, i32 noundef %c.s6_26fixp) #0 !taffo.initweight !66 !taffo.funinfo !67 !taffo.sourceFunction !68 {
entry:
  %add.s6_26fixp = add i32 %a.s6_26fixp, %b.s6_26fixp, !taffo.info !69
  %add1.s6_26fixp = add i32 %add.s6_26fixp, %c.s6_26fixp, !taffo.info !71
  %div.s6_26fixp = sdiv i32 %add1.s6_26fixp, 2, !taffo.info !73, !taffo.constinfo !13
  %sub.s6_26fixp = sub i32 %div.s6_26fixp, %a.s6_26fixp, !taffo.info !75
  %0 = sext i32 %div.s6_26fixp to i64, !taffo.info !73
  %1 = sext i32 %sub.s6_26fixp to i64, !taffo.info !75
  %2 = mul i64 %0, %1, !taffo.info !77
  %3 = ashr i64 %2, 30, !taffo.info !77
  %mul.s10_22fixp = trunc i64 %3 to i32, !taffo.info !80
  %sub3.s6_26fixp = sub i32 %div.s6_26fixp, %b.s6_26fixp, !taffo.info !75
  %4 = sext i32 %mul.s10_22fixp to i64, !taffo.info !80
  %5 = sext i32 %sub3.s6_26fixp to i64, !taffo.info !75
  %6 = mul i64 %4, %5, !taffo.info !82
  %7 = ashr i64 %6, 30, !taffo.info !82
  %mul4.s14_18fixp = trunc i64 %7 to i32, !taffo.info !85
  %sub5.s6_26fixp = sub i32 %div.s6_26fixp, %c.s6_26fixp, !taffo.info !75
  %8 = sext i32 %mul4.s14_18fixp to i64, !taffo.info !85
  %9 = sext i32 %sub5.s6_26fixp to i64, !taffo.info !75
  %10 = mul i64 %8, %9, !taffo.info !87
  %11 = ashr i64 %10, 31, !taffo.info !87
  %mul6.s19_13fixp = trunc i64 %11 to i32, !taffo.info !90
  %12 = sitofp i32 %mul6.s19_13fixp to double, !taffo.info !90
  %13 = fdiv double %12, 8.192000e+03, !taffo.info !90
  %call.flt = call double @sqrt(double noundef %13) #3, !taffo.info !92, !taffo.initweight !94, !taffo.constinfo !16
  %14 = fmul double 0x4160000000000000, %call.flt, !taffo.info !92, !taffo.constinfo !16
  %call.flt.fallback.u9_23fixp = fptoui double %14 to i32, !taffo.info !52
  ret i32 %call.flt.fallback.u9_23fixp, !taffo.info !35, !taffo.initweight !95
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!13 = !{i1 false, !14}
!14 = !{i1 false, !15, i1 false, i2 0}
!15 = !{double 2.000000e+00, double 2.000000e+00}
!16 = !{i1 false, i1 false}
!17 = !{i32 -1}
!18 = !{i32 0, i1 false}
!19 = !{i32 -1, i32 -1}
!20 = !{i32 0, i1 false, i32 0, i1 false}
!21 = !{i1 true}
!22 = !{!23, !24, i1 false, i2 -1}
!23 = !{!"fixp", i32 -32, i32 27}
!24 = !{double -9.000000e+00, double 9.000000e+00}
!25 = !{!"test"}
!26 = !{i1 false, !27, i1 false, i2 0}
!27 = !{double 0.000000e+00, double 1.010000e+02}
!28 = !{i1 false, !29, i1 false, i2 0}
!29 = !{double 0.000000e+00, double 1.000000e+00}
!30 = !{i1 false, !31, i1 false, i2 0}
!31 = !{double 0.000000e+00, double 3.000000e+02}
!32 = !{i32 3}
!33 = !{i1 false, !34, i1 false, i2 0}
!34 = !{double 0.000000e+00, double 1.000000e+02}
!35 = !{i1 false, !24, i1 false, i2 -1}
!36 = !{i1 false, !37, i1 false, i2 0}
!37 = !{double 1.000000e+00, double 3.010000e+02}
!38 = !{i1 false, !39, i1 false, i2 0}
!39 = !{double 2.000000e+00, double 3.020000e+02}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 1.000000e+00, double 1.010000e+02}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{i1 false, !45, i1 false, i2 0}
!45 = !{double 0.000000e+00, double 2.000000e+00}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 0.000000e+00, double 2.020000e+02}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 0.000000e+00, double 2.010000e+02}
!50 = !{!51, !24, i1 false, i2 -1}
!51 = !{!"fixp", i32 -32, i32 26}
!52 = !{!53, !54, i1 false, i2 -1}
!53 = !{!"fixp", i32 32, i32 23}
!54 = !{double 0.000000e+00, double 0x4078823BC0000000}
!55 = !{i1 false, i1 false, i1 false, i1 false}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 1.000000e+00, double 2.020000e+02}
!58 = distinct !{!58, !43}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 1.000000e+00, double 2.000000e+00}
!61 = distinct !{!61, !43}
!62 = !{}
!63 = distinct !{!63, !43}
!64 = !{i1 false, i1 false, i1 false}
!65 = distinct !{!65, !43}
!66 = !{i32 3, i32 3, i32 3}
!67 = !{i32 1, !50, i32 1, !50, i32 1, !50}
!68 = !{float (float, float, float)* @ex0}
!69 = !{!51, !70, i1 false, i2 -1}
!70 = !{double -1.800000e+01, double 1.800000e+01}
!71 = !{!51, !72, i1 false, i2 -1}
!72 = !{double -2.700000e+01, double 2.700000e+01}
!73 = !{!51, !74, i1 false, i2 -1}
!74 = !{double -1.350000e+01, double 1.350000e+01}
!75 = !{!51, !76, i1 false, i2 -1}
!76 = !{double -2.250000e+01, double 2.250000e+01}
!77 = !{!78, !79, i1 false, i2 -1}
!78 = !{!"fixp", i32 -64, i32 52}
!79 = !{double -3.037500e+02, double 3.037500e+02}
!80 = !{!81, !79, i1 false, i2 -1}
!81 = !{!"fixp", i32 -32, i32 22}
!82 = !{!83, !84, i1 false, i2 -1}
!83 = !{!"fixp", i32 -64, i32 48}
!84 = !{double 0xC0BAB26000000000, double 0x40BAB26000000000}
!85 = !{!86, !84, i1 false, i2 -1}
!86 = !{!"fixp", i32 -32, i32 18}
!87 = !{!88, !89, i1 false, i2 -1}
!88 = !{!"fixp", i32 -64, i32 44}
!89 = !{double 0xC102C56B80000000, double 0x4102C56B80000000}
!90 = !{!91, !89, i1 false, i2 -1}
!91 = !{!"fixp", i32 -32, i32 13}
!92 = !{!53, !93, i1 false, i2 -1}
!93 = !{double 0.000000e+00, double 0x4078823BA7413BDF}
!94 = !{i32 9}
!95 = !{i32 11}
