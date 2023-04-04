; ModuleID = '/tmp/tmp.7ge4yhepGA/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"scalar(range(-1, 1))\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", section "llvm.metadata", !taffo.info !2
@.str.5 = private unnamed_addr constant [32 x i8] c"Cos(Pi/6) = %f\0ASin(Pi/12) = %f\0A\00", align 1, !taffo.info !0
@llvm.global.annotations = appending global [2 x { i8*, i8*, i8*, i32, i8* }] [{ i8*, i8*, i8*, i32, i8* } { i8* bitcast (double (double)* @cos to i8*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 25, i8* null }, { i8*, i8*, i8*, i32, i8* } { i8* bitcast (double (double)* @sin to i8*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 46, i8* null }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compare_float(double %f1, double %f2) #0 !taffo.initweight !6 !taffo.equivalentChild !7 !taffo.funinfo !8 {
entry:
  %0 = fmul double 0x41D0000000000000, %f2, !taffo.info !9
  %1 = fptosi double %0 to i32, !taffo.info !9
  %2 = fmul double 0x41D0000000000000, %f2, !taffo.info !9
  %3 = fptosi double %2 to i32, !taffo.info !9
  %4 = fmul double 0x41D0000000000000, %f1, !taffo.info !9
  %5 = fptosi double %4 to i32, !taffo.info !9
  %6 = fmul double 0x41D0000000000000, %f1, !taffo.info !9
  %7 = fptosi double %6 to i32, !taffo.info !9
  %sub.s2_30fixp = sub i32 %5, 10, !taffo.info !9, !taffo.constinfo !12
  %8 = icmp slt i32 %sub.s2_30fixp, %1, !taffo.info !15
  br i1 %8, label %if.then, label %if.else, !taffo.info !16, !taffo.initweight !17

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %add.s2_30fixp = add i32 %7, 10, !taffo.info !9, !taffo.constinfo !12
  %9 = icmp sgt i32 %add.s2_30fixp, %3, !taffo.info !15
  br i1 %9, label %if.then4, label %if.else5, !taffo.info !16, !taffo.initweight !17

if.then4:                                         ; preds = %if.else
  br label %return

if.else5:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else5, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then4 ], [ 0, %if.else5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @cos(double %x) #0 !taffo.initweight !18 !taffo.equivalentChild !19 !taffo.funinfo !20 {
entry:
  %0 = fmul double 0x41C0000000000000, %x, !taffo.info !21
  %1 = fptoui double %0 to i32, !taffo.info !21
  %cmp = fcmp olt double %x, 0.000000e+00, !taffo.info !21, !taffo.initweight !23
  br i1 %cmp, label %if.then, label %if.end, !taffo.info !21, !taffo.initweight !17

if.then:                                          ; preds = %entry
  %fneg.u3_29fixp = sub i32 0, %1, !taffo.info !24
  %2 = uitofp i32 %fneg.u3_29fixp to double, !taffo.info !24
  %3 = fdiv double %2, 0x41C0000000000000, !taffo.info !24
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %x.addr.0 = phi double [ %3, %if.then ], [ %x, %entry ]
  %call = call i32 @compare_float.3(double %x.addr.0, double 0x3FF921FB52713C02), !taffo.info !21, !taffo.initweight !23, !taffo.constinfo !26, !taffo.originalCall !29
  %cmp2 = icmp sle i32 0, %call, !taffo.info !21, !taffo.initweight !17
  %4 = fmul double 0x41B0000000000000, %x.addr.0, !taffo.info !21
  %5 = fptosi double %4 to i32, !taffo.info !21
  br i1 %cmp2, label %if.then3, label %if.end6, !taffo.info !21, !taffo.initweight !30

if.then3:                                         ; preds = %if.end
  %6 = fmul double 0x41C0000000000000, %x.addr.0
  %7 = fptoui double %6 to i32
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then3
  %x.addr.1.u3_29fixp = phi i32 [ %7, %if.then3 ], [ %10, %do.cond ], !taffo.info !31
  %8 = lshr i32 %x.addr.1.u3_29fixp, 1, !taffo.info !31
  %sub.s4_28fixp = sub i32 %8, 421657426, !taffo.info !32, !taffo.constinfo !34
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %9 = call i32 @compare_float.3_fixp(i32 %sub.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !31, !taffo.constinfo !26
  %cmp5.flt = icmp sle i32 0, %9, !taffo.info !31, !taffo.initweight !17
  %10 = shl i32 %sub.s4_28fixp, 1, !taffo.info !32, !taffo.constinfo !34
  br i1 %cmp5.flt, label %do.body, label %do.end, !llvm.loop !35, !taffo.info !21, !taffo.initweight !30

do.end:                                           ; preds = %do.cond
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.end
  %x.addr.2.s4_28fixp = phi i32 [ %sub.s4_28fixp, %do.end ], [ %5, %if.end ], !taffo.info !32
  %11 = call i32 @compare_float.3_fixp(i32 %x.addr.2.s4_28fixp, double 0x400921FB53C8D4F1), !taffo.info !31, !taffo.constinfo !37
  %cmp8.flt = icmp sle i32 0, %11, !taffo.info !31, !taffo.initweight !17
  br i1 %cmp8.flt, label %land.lhs.true, label %if.end39, !taffo.info !21, !taffo.initweight !30

land.lhs.true:                                    ; preds = %if.end6
  %12 = call i32 @compare_float.3_fixp(i32 %x.addr.2.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !31, !taffo.constinfo !26
  %cmp10.flt = icmp eq i32 -1, %12, !taffo.info !31, !taffo.initweight !17
  br i1 %cmp10.flt, label %if.then11, label %if.end39, !taffo.info !21, !taffo.initweight !30

if.then11:                                        ; preds = %land.lhs.true
  br label %return

if.end39:                                         ; preds = %if.end6, %land.lhs.true
  br label %return

return:                                           ; preds = %if.end39, %if.then11
  ret double undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sin(double %x) #0 !taffo.initweight !18 !taffo.equivalentChild !40 !taffo.funinfo !20 {
entry:
  %0 = fmul double 0x41B0000000000000, %x, !taffo.info !32
  %1 = fptosi double %0 to i32, !taffo.info !32
  %sub.s4_28fixp = sub i32 %1, 421657426, !taffo.info !32, !taffo.constinfo !34
  %call.s4_28fixp = call i32 @cos.7_s4_28fixp(i32 %sub.s4_28fixp), !taffo.info !41, !taffo.constinfo !42
  %2 = sitofp i32 %call.s4_28fixp to double, !taffo.info !41
  %3 = fdiv double %2, 0x41B0000000000000, !taffo.info !41, !taffo.constinfo !42
  ret double %3, !taffo.info !16, !taffo.initweight !43
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !44 !taffo.funinfo !44 !taffo.start !45 {
entry:
  %call.s5_27fixp = call i32 @cos.1_s5_27fixp(double 0x3FE0C15237DB38A1), !taffo.info !46, !taffo.constinfo !49, !taffo.target !52
  %0 = sitofp i32 %call.s5_27fixp to double, !taffo.info !46, !taffo.target !52
  %1 = fdiv double %0, 0x41A0000000000000, !taffo.info !46, !taffo.constinfo !49, !taffo.target !52
  %call3.s7_25fixp = call i32 @sin.2_s7_25fixp(double 0x3FD0C15237DB38A1), !taffo.info !53, !taffo.constinfo !56, !taffo.target !59
  %2 = sitofp i32 %call3.s7_25fixp to double, !taffo.info !53, !taffo.target !59
  %3 = fdiv double %2, 0x4180000000000000, !taffo.info !53, !taffo.constinfo !56, !taffo.target !59
  %call7.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), double %1, double %3), !taffo.info !60, !taffo.initweight !17, !taffo.constinfo !61, !taffo.target !52
  ret i32 0
}

declare !taffo.initweight !18 !taffo.funinfo !20 dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.3(double %f1, double %f2) #0 !taffo.initweight !62 !taffo.equivalentChild !63 !taffo.funinfo !64 !taffo.sourceFunction !29 {
entry:
  %sub = fsub double %f1, 1.000000e-08, !taffo.info !41, !taffo.initweight !23, !taffo.constinfo !12
  %cmp = fcmp olt double %sub, %f2, !taffo.info !15, !taffo.initweight !23
  br i1 %cmp, label %if.then, label %if.else, !taffo.info !16, !taffo.initweight !17

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %add = fadd double %f1, 1.000000e-08, !taffo.info !41, !taffo.initweight !23, !taffo.constinfo !12
  %cmp3 = fcmp ogt double %add, %f2, !taffo.info !15, !taffo.initweight !23
  br i1 %cmp3, label %if.then4, label %if.else5, !taffo.info !16, !taffo.initweight !17

if.then4:                                         ; preds = %if.else
  br label %return

if.else5:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else5, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then4 ], [ 0, %if.else5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.8(double %f1, double %f2) #0 !taffo.initweight !62 !taffo.funinfo !65 !taffo.sourceFunction !29 {
entry:
  %sub = fsub double %f1, 1.000000e-08, !taffo.info !68, !taffo.initweight !23, !taffo.constinfo !12
  %cmp = fcmp olt double %sub, %f2, !taffo.info !15, !taffo.initweight !23
  br i1 %cmp, label %if.then, label %if.else, !taffo.info !16, !taffo.initweight !17

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %add = fadd double %f1, 1.000000e-08, !taffo.info !70, !taffo.initweight !23, !taffo.constinfo !12
  %cmp3 = fcmp ogt double %add, %f2, !taffo.info !15, !taffo.initweight !23
  br i1 %cmp3, label %if.then4, label %if.else5, !taffo.info !16, !taffo.initweight !17

if.then4:                                         ; preds = %if.else
  br label %return

if.else5:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else5, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then4 ], [ 0, %if.else5 ], !taffo.info !72
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cos.1_s5_27fixp(double %x) #0 !taffo.initweight !18 !taffo.funinfo !73 !taffo.sourceFunction !74 {
entry:
  %0 = fmul double 0x41E0000000000000, %x, !taffo.info !50
  %1 = fptoui double %0 to i32, !taffo.info !50
  %cmp = fcmp olt double %x, 0.000000e+00, !taffo.info !75, !taffo.initweight !23
  br i1 %cmp, label %if.then, label %if.end, !taffo.info !21, !taffo.initweight !17

if.then:                                          ; preds = %entry
  %2 = lshr i32 %1, 1, !taffo.info !50
  %fneg.s2_30fixp = sub i32 0, %2, !taffo.info !77
  %3 = sitofp i32 %fneg.s2_30fixp to double, !taffo.info !77
  %4 = fdiv double %3, 0x41D0000000000000, !taffo.info !77
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %x.addr.0 = phi double [ %4, %if.then ], [ %x, %entry ], !taffo.info !79
  %call = call i32 @compare_float.8(double %x.addr.0, double 0x3FF921FB52713C02), !taffo.info !16, !taffo.initweight !23, !taffo.constinfo !26, !taffo.originalCall !29
  %cmp2 = icmp sle i32 0, %call, !taffo.info !80, !taffo.initweight !17
  %5 = fmul double 0x41D0000000000000, %x.addr.0, !taffo.info !79
  %6 = fptosi double %5 to i32, !taffo.info !79
  %7 = ashr i32 %6, 2, !taffo.info !79
  br i1 %cmp2, label %if.then3, label %if.end6, !taffo.info !21, !taffo.initweight !30

if.then3:                                         ; preds = %if.end
  %8 = fmul double 0x41D0000000000000, %x.addr.0, !taffo.info !79
  %9 = fptosi double %8 to i32, !taffo.info !79
  %10 = ashr i32 %9, 1, !taffo.info !79
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then3
  %x.addr.1.s3_29fixp = phi i32 [ %10, %if.then3 ], [ %sub.s3_29fixp, %do.cond ], !taffo.info !82
  %sub.s3_29fixp = sub i32 %x.addr.1.s3_29fixp, 843314852, !taffo.info !84, !taffo.constinfo !34
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %11 = call i32 @compare_float.9_fixp(i32 %sub.s3_29fixp, double 0x3FF921FB52713C02), !taffo.info !86, !taffo.constinfo !26
  %cmp5.flt = icmp sle i32 0, %11, !taffo.info !86, !taffo.initweight !17
  br i1 %cmp5.flt, label %do.body, label %do.end, !llvm.loop !87, !taffo.info !21, !taffo.initweight !30

do.end:                                           ; preds = %do.cond
  %12 = ashr i32 %sub.s3_29fixp, 1, !taffo.info !84, !taffo.constinfo !34
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.end
  %x.addr.2.s4_28fixp = phi i32 [ %12, %do.end ], [ %7, %if.end ], !taffo.info !88
  %13 = call i32 @compare_float.3_fixp(i32 %x.addr.2.s4_28fixp, double 0x400921FB53C8D4F1), !taffo.info !86, !taffo.constinfo !37
  %cmp8.flt = icmp sle i32 0, %13, !taffo.info !86, !taffo.initweight !17
  br i1 %cmp8.flt, label %land.lhs.true, label %if.end39, !taffo.info !21, !taffo.initweight !30

land.lhs.true:                                    ; preds = %if.end6
  %14 = call i32 @compare_float.3_fixp(i32 %x.addr.2.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !86, !taffo.constinfo !26
  %cmp10.flt = icmp eq i32 -1, %14, !taffo.info !86, !taffo.initweight !17
  br i1 %cmp10.flt, label %if.then11, label %if.end39, !taffo.info !21, !taffo.initweight !30

if.then11:                                        ; preds = %land.lhs.true
  %15 = ashr i32 %x.addr.2.s4_28fixp, 2, !taffo.info !88
  %sub12.s6_26fixp = sub i32 %15, 210828713, !taffo.info !90, !taffo.constinfo !93
  %16 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !90
  %17 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !90
  %18 = mul i64 %16, %17, !taffo.info !94
  %19 = lshr i64 %18, 25, !taffo.info !94
  %mul.u5_27fixp = trunc i64 %19 to i32, !taffo.info !97
  %20 = zext i32 %mul.u5_27fixp to i64, !taffo.info !97
  %21 = sdiv i64 %20, 2, !taffo.info !99, !taffo.constinfo !102
  %div.s5_27fixp = trunc i64 %21 to i32, !taffo.info !106
  %22 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !90
  %23 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !90
  %24 = mul i64 %22, %23, !taffo.info !107
  %25 = ashr i64 %24, 26, !taffo.info !107
  %mul13.s6_26fixp = trunc i64 %25 to i32, !taffo.info !109
  %26 = sext i32 %mul13.s6_26fixp to i64, !taffo.info !109
  %27 = udiv i64 %26, 12, !taffo.info !110, !taffo.constinfo !113
  %28 = shl i64 %27, 4, !taffo.info !110, !taffo.constinfo !113
  %div14.u2_30fixp = trunc i64 %28 to i32, !taffo.info !116
  %29 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !90
  %30 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !90
  %31 = mul i64 %29, %30, !taffo.info !107
  %32 = ashr i64 %31, 26, !taffo.info !107
  %mul15.s6_26fixp = trunc i64 %32 to i32, !taffo.info !109
  %33 = sext i32 %mul15.s6_26fixp to i64, !taffo.info !109
  %34 = udiv i64 %33, 30, !taffo.info !118, !taffo.constinfo !120
  %35 = shl i64 %34, 5, !taffo.info !118, !taffo.constinfo !120
  %div16.u1_31fixp = trunc i64 %35 to i32, !taffo.info !123
  %36 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !90
  %37 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !90
  %38 = mul i64 %36, %37, !taffo.info !107
  %39 = ashr i64 %38, 26, !taffo.info !107
  %mul17.s6_26fixp = trunc i64 %39 to i32, !taffo.info !109
  %40 = sext i32 %mul17.s6_26fixp to i64, !taffo.info !109
  %41 = udiv i64 %40, 56, !taffo.info !125, !taffo.constinfo !127
  %42 = shl i64 %41, 5, !taffo.info !125, !taffo.constinfo !127
  %div18.u1_31fixp = trunc i64 %42 to i32, !taffo.info !130
  %43 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !90
  %44 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !90
  %45 = mul i64 %43, %44, !taffo.info !107
  %46 = ashr i64 %45, 26, !taffo.info !107
  %mul19.s6_26fixp = trunc i64 %46 to i32, !taffo.info !109
  %47 = sext i32 %mul19.s6_26fixp to i64, !taffo.info !109
  %48 = udiv i64 %47, 90, !taffo.info !131, !taffo.constinfo !133
  %49 = shl i64 %48, 5, !taffo.info !131, !taffo.constinfo !133
  %div20.u1_31fixp = trunc i64 %49 to i32, !taffo.info !136
  %50 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !90
  %51 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !90
  %52 = mul i64 %50, %51, !taffo.info !107
  %53 = ashr i64 %52, 26, !taffo.info !107
  %mul21.s6_26fixp = trunc i64 %53 to i32, !taffo.info !109
  %54 = sext i32 %mul21.s6_26fixp to i64, !taffo.info !109
  %55 = udiv i64 %54, 132, !taffo.info !137, !taffo.constinfo !139
  %56 = shl i64 %55, 5, !taffo.info !137, !taffo.constinfo !139
  %div22.u1_31fixp = trunc i64 %56 to i32, !taffo.info !142
  %57 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !90
  %58 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !90
  %59 = mul i64 %57, %58, !taffo.info !107
  %60 = ashr i64 %59, 26, !taffo.info !107
  %mul23.s6_26fixp = trunc i64 %60 to i32, !taffo.info !109
  %61 = sext i32 %mul23.s6_26fixp to i64, !taffo.info !109
  %62 = udiv i64 %61, 182, !taffo.info !143, !taffo.constinfo !145
  %63 = shl i64 %62, 5, !taffo.info !143, !taffo.constinfo !145
  %div24.u1_31fixp = trunc i64 %63 to i32, !taffo.info !148
  %sub25.u1_31fixp = sub i32 -2147483648, %div24.u1_31fixp, !taffo.info !149, !taffo.constinfo !151
  %64 = zext i32 %div22.u1_31fixp to i64, !taffo.info !142
  %65 = zext i32 %sub25.u1_31fixp to i64, !taffo.info !149
  %66 = mul i64 %64, %65, !taffo.info !154
  %67 = lshr i64 %66, 31, !taffo.info !154
  %mul26.u1_31fixp = trunc i64 %67 to i32, !taffo.info !157
  %sub27.u1_31fixp = sub i32 -2147483648, %mul26.u1_31fixp, !taffo.info !158, !taffo.constinfo !151
  %68 = zext i32 %div20.u1_31fixp to i64, !taffo.info !136
  %69 = zext i32 %sub27.u1_31fixp to i64, !taffo.info !158
  %70 = mul i64 %68, %69, !taffo.info !160
  %71 = lshr i64 %70, 31, !taffo.info !160
  %mul28.u1_31fixp = trunc i64 %71 to i32, !taffo.info !162
  %sub29.u1_31fixp = sub i32 -2147483648, %mul28.u1_31fixp, !taffo.info !163, !taffo.constinfo !151
  %72 = zext i32 %div18.u1_31fixp to i64, !taffo.info !130
  %73 = zext i32 %sub29.u1_31fixp to i64, !taffo.info !163
  %74 = mul i64 %72, %73, !taffo.info !165
  %75 = lshr i64 %74, 31, !taffo.info !165
  %mul30.u1_31fixp = trunc i64 %75 to i32, !taffo.info !167
  %sub31.u1_31fixp = sub i32 -2147483648, %mul30.u1_31fixp, !taffo.info !168, !taffo.constinfo !151
  %76 = zext i32 %div16.u1_31fixp to i64, !taffo.info !123
  %77 = zext i32 %sub31.u1_31fixp to i64, !taffo.info !168
  %78 = mul i64 %76, %77, !taffo.info !170
  %79 = lshr i64 %78, 31, !taffo.info !170
  %mul32.u1_31fixp = trunc i64 %79 to i32, !taffo.info !172
  %80 = lshr i32 %mul32.u1_31fixp, 1, !taffo.info !172
  %sub33.u2_30fixp = sub i32 1073741824, %80, !taffo.info !173, !taffo.constinfo !151
  %81 = zext i32 %div14.u2_30fixp to i64, !taffo.info !116
  %82 = zext i32 %sub33.u2_30fixp to i64, !taffo.info !173
  %83 = mul i64 %81, %82, !taffo.info !175
  %84 = ashr i64 %83, 31, !taffo.info !175
  %mul34.s3_29fixp = trunc i64 %84 to i32, !taffo.info !178
  %85 = ashr i32 %mul34.s3_29fixp, 2, !taffo.info !178
  %sub35.s5_27fixp = sub i32 134217728, %85, !taffo.info !179, !taffo.constinfo !151
  %86 = sext i32 %div.s5_27fixp to i64, !taffo.info !106
  %87 = sext i32 %sub35.s5_27fixp to i64, !taffo.info !179
  %88 = mul i64 %86, %87, !taffo.info !181
  %89 = ashr i64 %88, 27, !taffo.info !181
  %mul36.s5_27fixp = trunc i64 %89 to i32, !taffo.info !184
  %sub37.s5_27fixp = sub i32 134217728, %mul36.s5_27fixp, !taffo.info !185, !taffo.constinfo !151
  %90 = sext i32 %sub37.s5_27fixp to i64, !taffo.info !185
  %91 = mul i64 -1, %90, !taffo.info !187, !taffo.constinfo !189
  %mul38.s5_27fixp = trunc i64 %91 to i32, !taffo.info !193
  br label %return

if.end39:                                         ; preds = %land.lhs.true, %if.end6
  %92 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !88
  %93 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !88
  %94 = mul i64 %92, %93, !taffo.info !194
  %95 = lshr i64 %94, 27, !taffo.info !194
  %mul40.u3_29fixp = trunc i64 %95 to i32, !taffo.info !197
  %96 = zext i32 %mul40.u3_29fixp to i64, !taffo.info !197
  %97 = udiv i64 %96, 2, !taffo.info !198, !taffo.constinfo !102
  %div41.u3_29fixp = trunc i64 %97 to i32, !taffo.info !201
  %98 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !88
  %99 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !88
  %100 = mul i64 %98, %99, !taffo.info !194
  %101 = lshr i64 %100, 27, !taffo.info !194
  %mul42.u3_29fixp = trunc i64 %101 to i32, !taffo.info !197
  %102 = zext i32 %mul42.u3_29fixp to i64, !taffo.info !197
  %103 = udiv i64 %102, 12, !taffo.info !202, !taffo.constinfo !113
  %div43.u3_29fixp = trunc i64 %103 to i32, !taffo.info !204
  %104 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !88
  %105 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !88
  %106 = mul i64 %104, %105, !taffo.info !194
  %107 = lshr i64 %106, 27, !taffo.info !194
  %mul44.u3_29fixp = trunc i64 %107 to i32, !taffo.info !197
  %108 = zext i32 %mul44.u3_29fixp to i64, !taffo.info !197
  %109 = udiv i64 %108, 30, !taffo.info !205, !taffo.constinfo !120
  %div45.u3_29fixp = trunc i64 %109 to i32, !taffo.info !207
  %110 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !88
  %111 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !88
  %112 = mul i64 %110, %111, !taffo.info !194
  %113 = lshr i64 %112, 27, !taffo.info !194
  %mul46.u3_29fixp = trunc i64 %113 to i32, !taffo.info !197
  %114 = zext i32 %mul46.u3_29fixp to i64, !taffo.info !197
  %115 = udiv i64 %114, 56, !taffo.info !208, !taffo.constinfo !127
  %div47.u3_29fixp = trunc i64 %115 to i32, !taffo.info !210
  %116 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !88
  %117 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !88
  %118 = mul i64 %116, %117, !taffo.info !194
  %119 = lshr i64 %118, 27, !taffo.info !194
  %mul48.u3_29fixp = trunc i64 %119 to i32, !taffo.info !197
  %120 = zext i32 %mul48.u3_29fixp to i64, !taffo.info !197
  %121 = udiv i64 %120, 90, !taffo.info !211, !taffo.constinfo !133
  %div49.u3_29fixp = trunc i64 %121 to i32, !taffo.info !213
  %122 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !88
  %123 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !88
  %124 = mul i64 %122, %123, !taffo.info !194
  %125 = lshr i64 %124, 27, !taffo.info !194
  %mul50.u3_29fixp = trunc i64 %125 to i32, !taffo.info !197
  %126 = zext i32 %mul50.u3_29fixp to i64, !taffo.info !197
  %127 = udiv i64 %126, 132, !taffo.info !214, !taffo.constinfo !139
  %div51.u3_29fixp = trunc i64 %127 to i32, !taffo.info !216
  %128 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !88
  %129 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !88
  %130 = mul i64 %128, %129, !taffo.info !194
  %131 = lshr i64 %130, 27, !taffo.info !194
  %mul52.u3_29fixp = trunc i64 %131 to i32, !taffo.info !197
  %132 = zext i32 %mul52.u3_29fixp to i64, !taffo.info !197
  %133 = udiv i64 %132, 182, !taffo.info !217, !taffo.constinfo !145
  %div53.u3_29fixp = trunc i64 %133 to i32, !taffo.info !219
  %134 = shl i32 %div53.u3_29fixp, 2, !taffo.info !219
  %sub54.u1_31fixp = sub i32 -2147483648, %134, !taffo.info !220, !taffo.constinfo !151
  %135 = zext i32 %div51.u3_29fixp to i64, !taffo.info !216
  %136 = zext i32 %sub54.u1_31fixp to i64, !taffo.info !220
  %137 = mul i64 %135, %136, !taffo.info !222
  %138 = lshr i64 %137, 29, !taffo.info !222
  %mul55.u1_31fixp = trunc i64 %138 to i32, !taffo.info !224
  %sub56.u1_31fixp = sub i32 -2147483648, %mul55.u1_31fixp, !taffo.info !225, !taffo.constinfo !151
  %139 = zext i32 %div49.u3_29fixp to i64, !taffo.info !213
  %140 = zext i32 %sub56.u1_31fixp to i64, !taffo.info !225
  %141 = mul i64 %139, %140, !taffo.info !227
  %142 = lshr i64 %141, 29, !taffo.info !227
  %mul57.u1_31fixp = trunc i64 %142 to i32, !taffo.info !228
  %sub58.u1_31fixp = sub i32 -2147483648, %mul57.u1_31fixp, !taffo.info !229, !taffo.constinfo !151
  %143 = zext i32 %div47.u3_29fixp to i64, !taffo.info !210
  %144 = zext i32 %sub58.u1_31fixp to i64, !taffo.info !229
  %145 = mul i64 %143, %144, !taffo.info !231
  %146 = lshr i64 %145, 29, !taffo.info !231
  %mul59.u1_31fixp = trunc i64 %146 to i32, !taffo.info !232
  %sub60.u1_31fixp = sub i32 -2147483648, %mul59.u1_31fixp, !taffo.info !233, !taffo.constinfo !151
  %147 = zext i32 %div45.u3_29fixp to i64, !taffo.info !207
  %148 = zext i32 %sub60.u1_31fixp to i64, !taffo.info !233
  %149 = mul i64 %147, %148, !taffo.info !235
  %150 = lshr i64 %149, 29, !taffo.info !235
  %mul61.u1_31fixp = trunc i64 %150 to i32, !taffo.info !236
  %sub62.u1_31fixp = sub i32 -2147483648, %mul61.u1_31fixp, !taffo.info !237, !taffo.constinfo !151
  %151 = zext i32 %div43.u3_29fixp to i64, !taffo.info !204
  %152 = zext i32 %sub62.u1_31fixp to i64, !taffo.info !237
  %153 = mul i64 %151, %152, !taffo.info !239
  %154 = lshr i64 %153, 29, !taffo.info !239
  %mul63.u1_31fixp = trunc i64 %154 to i32, !taffo.info !240
  %155 = lshr i32 %mul63.u1_31fixp, 1, !taffo.info !240
  %sub64.u2_30fixp = sub i32 1073741824, %155, !taffo.info !241, !taffo.constinfo !151
  %156 = zext i32 %div41.u3_29fixp to i64, !taffo.info !201
  %157 = zext i32 %sub64.u2_30fixp to i64, !taffo.info !241
  %158 = mul i64 %156, %157, !taffo.info !243
  %159 = ashr i64 %158, 30, !taffo.info !243
  %mul65.s3_29fixp = trunc i64 %159 to i32, !taffo.info !245
  %160 = ashr i32 %mul65.s3_29fixp, 2, !taffo.info !245
  %sub66.s5_27fixp = sub i32 134217728, %160, !taffo.info !246, !taffo.constinfo !151
  br label %return

return:                                           ; preds = %if.end39, %if.then11
  %retval.0.s5_27fixp = phi i32 [ %mul38.s5_27fixp, %if.then11 ], [ %sub66.s5_27fixp, %if.end39 ], !taffo.info !193
  ret i32 %retval.0.s5_27fixp
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @sin.2_s7_25fixp(double %x) #0 !taffo.initweight !18 !taffo.funinfo !248 !taffo.sourceFunction !249 {
entry:
  %0 = fmul double 0x41E0000000000000, %x, !taffo.info !57
  %1 = fptoui double %0 to i32, !taffo.info !57
  %2 = lshr i32 %1, 2, !taffo.info !57
  %sub.s3_29fixp = sub i32 %2, 843314852, !taffo.info !250, !taffo.constinfo !34
  %call.s7_25fixp = call i32 @cos.12_s7_25fixp(i32 %sub.s3_29fixp), !taffo.info !252, !taffo.constinfo !42
  ret i32 %call.s7_25fixp, !taffo.info !16, !taffo.initweight !43
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.3_fixp(i32 %f1.s4_28fixp, double %f2) #0 !taffo.initweight !62 !taffo.equivalentChild !63 !taffo.funinfo !64 !taffo.sourceFunction !29 {
entry:
  %0 = fmul double 0x41B0000000000000, %f2
  %1 = fptosi double %0 to i32
  %2 = fmul double 0x41B0000000000000, %f2
  %3 = fptosi double %2 to i32
  %sub.s4_28fixp = sub i32 %f1.s4_28fixp, 2, !taffo.info !41, !taffo.constinfo !12
  %4 = icmp slt i32 %sub.s4_28fixp, %3, !taffo.info !15
  br i1 %4, label %if.then, label %if.else, !taffo.info !16, !taffo.initweight !17

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %add.s4_28fixp = add i32 %f1.s4_28fixp, 2, !taffo.info !41, !taffo.constinfo !12
  %5 = icmp sgt i32 %add.s4_28fixp, %1, !taffo.info !15
  br i1 %5, label %if.then4, label %if.else5, !taffo.info !16, !taffo.initweight !17

if.then4:                                         ; preds = %if.else
  br label %return

if.else5:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else5, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then4 ], [ 0, %if.else5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cos.7_s4_28fixp(i32 %x.s4_28fixp) #0 !taffo.initweight !17 !taffo.funinfo !254 !taffo.sourceFunction !74 {
entry:
  %0 = icmp slt i32 %x.s4_28fixp, 0, !taffo.info !31
  br i1 %0, label %if.then, label %if.end, !taffo.info !21, !taffo.initweight !17

if.then:                                          ; preds = %entry
  %1 = shl i32 %x.s4_28fixp, 1, !taffo.info !32
  %fneg.u3_29fixp = sub i32 0, %1, !taffo.info !24
  %2 = lshr i32 %fneg.u3_29fixp, 1, !taffo.info !24
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %x.addr.0.s4_28fixp = phi i32 [ %2, %if.then ], [ %x.s4_28fixp, %entry ], !taffo.info !32
  %3 = call i32 @compare_float.6.16_fixp(i32 %x.addr.0.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !31, !taffo.constinfo !26
  %cmp2.flt = icmp sle i32 0, %3, !taffo.info !31, !taffo.initweight !17
  br i1 %cmp2.flt, label %if.then3, label %if.end6, !taffo.info !21, !taffo.initweight !30

if.then3:                                         ; preds = %if.end
  %4 = shl i32 %x.addr.0.s4_28fixp, 1, !taffo.info !32
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then3
  %x.addr.1.u3_29fixp = phi i32 [ %4, %if.then3 ], [ %7, %do.cond ], !taffo.info !31
  %5 = lshr i32 %x.addr.1.u3_29fixp, 1, !taffo.info !31
  %sub.s4_28fixp = sub i32 %5, 421657426, !taffo.info !32, !taffo.constinfo !34
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = call i32 @compare_float.5.15_fixp(i32 %sub.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !31, !taffo.constinfo !26
  %cmp5.flt = icmp sle i32 0, %6, !taffo.info !31, !taffo.initweight !17
  %7 = shl i32 %sub.s4_28fixp, 1, !taffo.info !32, !taffo.constinfo !34
  br i1 %cmp5.flt, label %do.body, label %do.end, !llvm.loop !255, !taffo.info !21, !taffo.initweight !30

do.end:                                           ; preds = %do.cond
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.end
  %x.addr.2.s4_28fixp = phi i32 [ %sub.s4_28fixp, %do.end ], [ %x.addr.0.s4_28fixp, %if.end ], !taffo.info !32
  %8 = call i32 @compare_float.4.14_fixp(i32 %x.addr.2.s4_28fixp, double 0x400921FB53C8D4F1), !taffo.info !31, !taffo.constinfo !37
  %cmp8.flt = icmp sle i32 0, %8, !taffo.info !31, !taffo.initweight !17
  br i1 %cmp8.flt, label %land.lhs.true, label %if.end39, !taffo.info !21, !taffo.initweight !30

land.lhs.true:                                    ; preds = %if.end6
  %9 = call i32 @compare_float.3.13_fixp(i32 %x.addr.2.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !31, !taffo.constinfo !26
  %cmp10.flt = icmp eq i32 -1, %9, !taffo.info !31, !taffo.initweight !17
  br i1 %cmp10.flt, label %if.then11, label %if.end39, !taffo.info !21, !taffo.initweight !30

if.then11:                                        ; preds = %land.lhs.true
  %10 = shl i32 %x.addr.2.s4_28fixp, 1, !taffo.info !32
  %sub12.u3_29fixp = sub i32 %10, 1686629711, !taffo.info !24, !taffo.constinfo !93
  %11 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !24
  %12 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !24
  %13 = mul i64 %11, %12, !taffo.info !256
  %14 = lshr i64 %13, 29, !taffo.info !256
  %mul.u3_29fixp = trunc i64 %14 to i32, !taffo.info !24
  %15 = zext i32 %mul.u3_29fixp to i64, !taffo.info !24
  %16 = udiv i64 %15, 2, !taffo.info !258, !taffo.constinfo !102
  %div.u3_29fixp = trunc i64 %16 to i32, !taffo.info !24
  %17 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !24
  %18 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !24
  %19 = mul i64 %17, %18, !taffo.info !256
  %20 = lshr i64 %19, 29, !taffo.info !256
  %mul13.u3_29fixp = trunc i64 %20 to i32, !taffo.info !24
  %21 = zext i32 %mul13.u3_29fixp to i64, !taffo.info !24
  %22 = udiv i64 %21, 12, !taffo.info !258, !taffo.constinfo !113
  %div14.u3_29fixp = trunc i64 %22 to i32, !taffo.info !24
  %23 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !24
  %24 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !24
  %25 = mul i64 %23, %24, !taffo.info !256
  %26 = lshr i64 %25, 29, !taffo.info !256
  %mul15.u3_29fixp = trunc i64 %26 to i32, !taffo.info !24
  %27 = zext i32 %mul15.u3_29fixp to i64, !taffo.info !24
  %28 = udiv i64 %27, 30, !taffo.info !258, !taffo.constinfo !120
  %div16.u3_29fixp = trunc i64 %28 to i32, !taffo.info !24
  %29 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !24
  %30 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !24
  %31 = mul i64 %29, %30, !taffo.info !256
  %32 = lshr i64 %31, 29, !taffo.info !256
  %mul17.u3_29fixp = trunc i64 %32 to i32, !taffo.info !24
  %33 = zext i32 %mul17.u3_29fixp to i64, !taffo.info !24
  %34 = udiv i64 %33, 56, !taffo.info !258, !taffo.constinfo !127
  %div18.u3_29fixp = trunc i64 %34 to i32, !taffo.info !24
  %35 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !24
  %36 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !24
  %37 = mul i64 %35, %36, !taffo.info !256
  %38 = lshr i64 %37, 29, !taffo.info !256
  %mul19.u3_29fixp = trunc i64 %38 to i32, !taffo.info !24
  %39 = zext i32 %mul19.u3_29fixp to i64, !taffo.info !24
  %40 = udiv i64 %39, 90, !taffo.info !258, !taffo.constinfo !133
  %div20.u3_29fixp = trunc i64 %40 to i32, !taffo.info !24
  %41 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !24
  %42 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !24
  %43 = mul i64 %41, %42, !taffo.info !256
  %44 = lshr i64 %43, 29, !taffo.info !256
  %mul21.u3_29fixp = trunc i64 %44 to i32, !taffo.info !24
  %45 = zext i32 %mul21.u3_29fixp to i64, !taffo.info !24
  %46 = udiv i64 %45, 132, !taffo.info !258, !taffo.constinfo !139
  %div22.u3_29fixp = trunc i64 %46 to i32, !taffo.info !24
  %47 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !24
  %48 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !24
  %49 = mul i64 %47, %48, !taffo.info !256
  %50 = lshr i64 %49, 29, !taffo.info !256
  %mul23.u3_29fixp = trunc i64 %50 to i32, !taffo.info !24
  %51 = zext i32 %mul23.u3_29fixp to i64, !taffo.info !24
  %52 = udiv i64 %51, 182, !taffo.info !258, !taffo.constinfo !145
  %div24.u3_29fixp = trunc i64 %52 to i32, !taffo.info !24
  %sub25.u3_29fixp = sub i32 536870912, %div24.u3_29fixp, !taffo.info !24, !taffo.constinfo !151
  %53 = zext i32 %div22.u3_29fixp to i64, !taffo.info !24
  %54 = zext i32 %sub25.u3_29fixp to i64, !taffo.info !24
  %55 = mul i64 %53, %54, !taffo.info !256
  %56 = lshr i64 %55, 29, !taffo.info !256
  %mul26.u3_29fixp = trunc i64 %56 to i32, !taffo.info !24
  %sub27.u3_29fixp = sub i32 536870912, %mul26.u3_29fixp, !taffo.info !24, !taffo.constinfo !151
  %57 = zext i32 %div20.u3_29fixp to i64, !taffo.info !24
  %58 = zext i32 %sub27.u3_29fixp to i64, !taffo.info !24
  %59 = mul i64 %57, %58, !taffo.info !256
  %60 = lshr i64 %59, 29, !taffo.info !256
  %mul28.u3_29fixp = trunc i64 %60 to i32, !taffo.info !24
  %sub29.u3_29fixp = sub i32 536870912, %mul28.u3_29fixp, !taffo.info !24, !taffo.constinfo !151
  %61 = zext i32 %div18.u3_29fixp to i64, !taffo.info !24
  %62 = zext i32 %sub29.u3_29fixp to i64, !taffo.info !24
  %63 = mul i64 %61, %62, !taffo.info !256
  %64 = lshr i64 %63, 29, !taffo.info !256
  %mul30.u3_29fixp = trunc i64 %64 to i32, !taffo.info !24
  %sub31.u3_29fixp = sub i32 536870912, %mul30.u3_29fixp, !taffo.info !24, !taffo.constinfo !151
  %65 = zext i32 %div16.u3_29fixp to i64, !taffo.info !24
  %66 = zext i32 %sub31.u3_29fixp to i64, !taffo.info !24
  %67 = mul i64 %65, %66, !taffo.info !256
  %68 = lshr i64 %67, 29, !taffo.info !256
  %mul32.u3_29fixp = trunc i64 %68 to i32, !taffo.info !24
  %sub33.u3_29fixp = sub i32 536870912, %mul32.u3_29fixp, !taffo.info !24, !taffo.constinfo !151
  %69 = zext i32 %div14.u3_29fixp to i64, !taffo.info !24
  %70 = zext i32 %sub33.u3_29fixp to i64, !taffo.info !24
  %71 = mul i64 %69, %70, !taffo.info !256
  %72 = lshr i64 %71, 29, !taffo.info !256
  %mul34.u3_29fixp = trunc i64 %72 to i32, !taffo.info !24
  %sub35.u3_29fixp = sub i32 536870912, %mul34.u3_29fixp, !taffo.info !24, !taffo.constinfo !151
  %73 = zext i32 %div.u3_29fixp to i64, !taffo.info !24
  %74 = zext i32 %sub35.u3_29fixp to i64, !taffo.info !24
  %75 = mul i64 %73, %74, !taffo.info !256
  %76 = lshr i64 %75, 29, !taffo.info !256
  %mul36.u3_29fixp = trunc i64 %76 to i32, !taffo.info !24
  %sub37.u3_29fixp = sub i32 536870912, %mul36.u3_29fixp, !taffo.info !24, !taffo.constinfo !151
  %77 = zext i32 %sub37.u3_29fixp to i64, !taffo.info !24
  %78 = mul i64 -1, %77, !taffo.info !258, !taffo.constinfo !189
  %mul38.u3_29fixp = trunc i64 %78 to i32, !taffo.info !24
  br label %return

if.end39:                                         ; preds = %if.end6, %land.lhs.true
  %79 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !32
  %80 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !32
  %81 = mul i64 %79, %80, !taffo.info !259
  %82 = lshr i64 %81, 27, !taffo.info !259
  %mul40.u3_29fixp = trunc i64 %82 to i32, !taffo.info !24
  %83 = zext i32 %mul40.u3_29fixp to i64, !taffo.info !24
  %84 = udiv i64 %83, 2, !taffo.info !258, !taffo.constinfo !102
  %div41.u3_29fixp = trunc i64 %84 to i32, !taffo.info !24
  %85 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !32
  %86 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !32
  %87 = mul i64 %85, %86, !taffo.info !259
  %88 = lshr i64 %87, 27, !taffo.info !259
  %mul42.u3_29fixp = trunc i64 %88 to i32, !taffo.info !24
  %89 = zext i32 %mul42.u3_29fixp to i64, !taffo.info !24
  %90 = udiv i64 %89, 12, !taffo.info !258, !taffo.constinfo !113
  %div43.u3_29fixp = trunc i64 %90 to i32, !taffo.info !24
  %91 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !32
  %92 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !32
  %93 = mul i64 %91, %92, !taffo.info !259
  %94 = lshr i64 %93, 27, !taffo.info !259
  %mul44.u3_29fixp = trunc i64 %94 to i32, !taffo.info !24
  %95 = zext i32 %mul44.u3_29fixp to i64, !taffo.info !24
  %96 = udiv i64 %95, 30, !taffo.info !258, !taffo.constinfo !120
  %div45.u3_29fixp = trunc i64 %96 to i32, !taffo.info !24
  %97 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !32
  %98 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !32
  %99 = mul i64 %97, %98, !taffo.info !259
  %100 = lshr i64 %99, 27, !taffo.info !259
  %mul46.u3_29fixp = trunc i64 %100 to i32, !taffo.info !24
  %101 = zext i32 %mul46.u3_29fixp to i64, !taffo.info !24
  %102 = udiv i64 %101, 56, !taffo.info !258, !taffo.constinfo !127
  %div47.u3_29fixp = trunc i64 %102 to i32, !taffo.info !24
  %103 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !32
  %104 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !32
  %105 = mul i64 %103, %104, !taffo.info !259
  %106 = lshr i64 %105, 27, !taffo.info !259
  %mul48.u3_29fixp = trunc i64 %106 to i32, !taffo.info !24
  %107 = zext i32 %mul48.u3_29fixp to i64, !taffo.info !24
  %108 = udiv i64 %107, 90, !taffo.info !258, !taffo.constinfo !133
  %div49.u3_29fixp = trunc i64 %108 to i32, !taffo.info !24
  %109 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !32
  %110 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !32
  %111 = mul i64 %109, %110, !taffo.info !259
  %112 = lshr i64 %111, 27, !taffo.info !259
  %mul50.u3_29fixp = trunc i64 %112 to i32, !taffo.info !24
  %113 = zext i32 %mul50.u3_29fixp to i64, !taffo.info !24
  %114 = udiv i64 %113, 132, !taffo.info !258, !taffo.constinfo !139
  %div51.u3_29fixp = trunc i64 %114 to i32, !taffo.info !24
  %115 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !32
  %116 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !32
  %117 = mul i64 %115, %116, !taffo.info !259
  %118 = lshr i64 %117, 27, !taffo.info !259
  %mul52.u3_29fixp = trunc i64 %118 to i32, !taffo.info !24
  %119 = zext i32 %mul52.u3_29fixp to i64, !taffo.info !24
  %120 = udiv i64 %119, 182, !taffo.info !258, !taffo.constinfo !145
  %div53.u3_29fixp = trunc i64 %120 to i32, !taffo.info !24
  %sub54.u3_29fixp = sub i32 536870912, %div53.u3_29fixp, !taffo.info !24, !taffo.constinfo !151
  %121 = zext i32 %div51.u3_29fixp to i64, !taffo.info !24
  %122 = zext i32 %sub54.u3_29fixp to i64, !taffo.info !24
  %123 = mul i64 %121, %122, !taffo.info !256
  %124 = lshr i64 %123, 29, !taffo.info !256
  %mul55.u3_29fixp = trunc i64 %124 to i32, !taffo.info !24
  %sub56.u3_29fixp = sub i32 536870912, %mul55.u3_29fixp, !taffo.info !24, !taffo.constinfo !151
  %125 = zext i32 %div49.u3_29fixp to i64, !taffo.info !24
  %126 = zext i32 %sub56.u3_29fixp to i64, !taffo.info !24
  %127 = mul i64 %125, %126, !taffo.info !256
  %128 = lshr i64 %127, 29, !taffo.info !256
  %mul57.u3_29fixp = trunc i64 %128 to i32, !taffo.info !24
  %sub58.u3_29fixp = sub i32 536870912, %mul57.u3_29fixp, !taffo.info !24, !taffo.constinfo !151
  %129 = zext i32 %div47.u3_29fixp to i64, !taffo.info !24
  %130 = zext i32 %sub58.u3_29fixp to i64, !taffo.info !24
  %131 = mul i64 %129, %130, !taffo.info !256
  %132 = lshr i64 %131, 29, !taffo.info !256
  %mul59.u3_29fixp = trunc i64 %132 to i32, !taffo.info !24
  %sub60.u3_29fixp = sub i32 536870912, %mul59.u3_29fixp, !taffo.info !24, !taffo.constinfo !151
  %133 = zext i32 %div45.u3_29fixp to i64, !taffo.info !24
  %134 = zext i32 %sub60.u3_29fixp to i64, !taffo.info !24
  %135 = mul i64 %133, %134, !taffo.info !256
  %136 = lshr i64 %135, 29, !taffo.info !256
  %mul61.u3_29fixp = trunc i64 %136 to i32, !taffo.info !24
  %sub62.u3_29fixp = sub i32 536870912, %mul61.u3_29fixp, !taffo.info !24, !taffo.constinfo !151
  %137 = zext i32 %div43.u3_29fixp to i64, !taffo.info !24
  %138 = zext i32 %sub62.u3_29fixp to i64, !taffo.info !24
  %139 = mul i64 %137, %138, !taffo.info !256
  %140 = lshr i64 %139, 29, !taffo.info !256
  %mul63.u3_29fixp = trunc i64 %140 to i32, !taffo.info !24
  %sub64.u3_29fixp = sub i32 536870912, %mul63.u3_29fixp, !taffo.info !24, !taffo.constinfo !151
  %141 = zext i32 %div41.u3_29fixp to i64, !taffo.info !24
  %142 = zext i32 %sub64.u3_29fixp to i64, !taffo.info !24
  %143 = mul i64 %141, %142, !taffo.info !256
  %144 = lshr i64 %143, 29, !taffo.info !256
  %mul65.u3_29fixp = trunc i64 %144 to i32, !taffo.info !24
  %sub66.u3_29fixp = sub i32 536870912, %mul65.u3_29fixp, !taffo.info !24, !taffo.constinfo !151
  br label %return

return:                                           ; preds = %if.end39, %if.then11
  %retval.0.u3_29fixp = phi i32 [ %mul38.u3_29fixp, %if.then11 ], [ %sub66.u3_29fixp, %if.end39 ], !taffo.info !31
  %145 = lshr i32 %retval.0.u3_29fixp, 1, !taffo.info !31
  ret i32 %145
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.9_fixp(i32 %f1.s3_29fixp, double %f2) #0 !taffo.initweight !62 !taffo.funinfo !260 !taffo.sourceFunction !29 {
entry:
  %0 = fmul double 0x41D0000000000000, %f2, !taffo.info !27
  %1 = fptoui double %0 to i32, !taffo.info !27
  %2 = fmul double 0x41D0000000000000, %f2, !taffo.info !27
  %3 = fptoui double %2 to i32, !taffo.info !27
  %sub.s3_29fixp = sub i32 %f1.s3_29fixp, 5, !taffo.info !261, !taffo.constinfo !12
  %4 = lshr i32 %3, 1, !taffo.info !27
  %5 = icmp slt i32 %sub.s3_29fixp, %4, !taffo.info !86
  br i1 %5, label %if.then, label %if.else, !taffo.info !16, !taffo.initweight !17

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %add.s3_29fixp = add i32 %f1.s3_29fixp, 5, !taffo.info !263, !taffo.constinfo !12
  %6 = lshr i32 %1, 1, !taffo.info !27
  %7 = icmp sgt i32 %add.s3_29fixp, %6, !taffo.info !86
  br i1 %7, label %if.then4, label %if.else5, !taffo.info !16, !taffo.initweight !17

if.then4:                                         ; preds = %if.else
  br label %return

if.else5:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else5, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then4 ], [ 0, %if.else5 ], !taffo.info !72
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cos.12_s7_25fixp(i32 %x.s3_29fixp) #0 !taffo.initweight !17 !taffo.funinfo !265 !taffo.sourceFunction !74 {
entry:
  %0 = icmp slt i32 %x.s3_29fixp, 0, !taffo.info !86
  br i1 %0, label %if.then, label %if.end, !taffo.info !21, !taffo.initweight !17

if.then:                                          ; preds = %entry
  %fneg.s3_29fixp = sub i32 0, %x.s3_29fixp, !taffo.info !266
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %x.addr.0.s3_29fixp = phi i32 [ %fneg.s3_29fixp, %if.then ], [ %x.s3_29fixp, %entry ], !taffo.info !268
  %1 = call i32 @compare_float.6.20_fixp(i32 %x.addr.0.s3_29fixp, double 0x3FF921FB52713C02), !taffo.info !86, !taffo.constinfo !26
  %cmp2.flt = icmp sle i32 0, %1, !taffo.info !86, !taffo.initweight !17
  %2 = ashr i32 %x.addr.0.s3_29fixp, 1, !taffo.info !268
  br i1 %cmp2.flt, label %if.then3, label %if.end6, !taffo.info !21, !taffo.initweight !30

if.then3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then3
  %x.addr.1.s3_29fixp = phi i32 [ %x.addr.0.s3_29fixp, %if.then3 ], [ %sub.s3_29fixp, %do.cond ], !taffo.info !268
  %sub.s3_29fixp = sub i32 %x.addr.1.s3_29fixp, 843314852, !taffo.info !270, !taffo.constinfo !34
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = call i32 @compare_float.5.19_fixp(i32 %sub.s3_29fixp, double 0x3FF921FB52713C02), !taffo.info !86, !taffo.constinfo !26
  %cmp5.flt = icmp sle i32 0, %3, !taffo.info !86, !taffo.initweight !17
  br i1 %cmp5.flt, label %do.body, label %do.end, !llvm.loop !272, !taffo.info !21, !taffo.initweight !30

do.end:                                           ; preds = %do.cond
  %4 = ashr i32 %sub.s3_29fixp, 1, !taffo.info !270, !taffo.constinfo !34
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.end
  %x.addr.2.s4_28fixp = phi i32 [ %4, %do.end ], [ %2, %if.end ], !taffo.info !273
  %5 = call i32 @compare_float.4.18_fixp(i32 %x.addr.2.s4_28fixp, double 0x400921FB53C8D4F1), !taffo.info !86, !taffo.constinfo !37
  %cmp8.flt = icmp sle i32 0, %5, !taffo.info !86, !taffo.initweight !17
  br i1 %cmp8.flt, label %land.lhs.true, label %if.end39, !taffo.info !21, !taffo.initweight !30

land.lhs.true:                                    ; preds = %if.end6
  %6 = call i32 @compare_float.3.13_fixp(i32 %x.addr.2.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !86, !taffo.constinfo !26
  %cmp10.flt = icmp eq i32 -1, %6, !taffo.info !86, !taffo.initweight !17
  br i1 %cmp10.flt, label %if.then11, label %if.end39, !taffo.info !21, !taffo.initweight !30

if.then11:                                        ; preds = %land.lhs.true
  %sub12.s4_28fixp = sub i32 %x.addr.2.s4_28fixp, 843314855, !taffo.info !275, !taffo.constinfo !93
  %7 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !275
  %8 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !275
  %9 = mul i64 %7, %8, !taffo.info !277
  %10 = lshr i64 %9, 30, !taffo.info !277
  %mul.u6_26fixp = trunc i64 %10 to i32, !taffo.info !279
  %11 = zext i32 %mul.u6_26fixp to i64, !taffo.info !279
  %12 = udiv i64 %11, 2, !taffo.info !281, !taffo.constinfo !102
  %div.u6_26fixp = trunc i64 %12 to i32, !taffo.info !283
  %13 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !275
  %14 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !275
  %15 = mul i64 %13, %14, !taffo.info !277
  %16 = lshr i64 %15, 30, !taffo.info !277
  %mul13.u6_26fixp = trunc i64 %16 to i32, !taffo.info !279
  %17 = zext i32 %mul13.u6_26fixp to i64, !taffo.info !279
  %18 = sdiv i64 %17, 12, !taffo.info !284, !taffo.constinfo !113
  %19 = shl i64 %18, 2, !taffo.info !284, !taffo.constinfo !113
  %div14.s4_28fixp = trunc i64 %19 to i32, !taffo.info !287
  %20 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !275
  %21 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !275
  %22 = mul i64 %20, %21, !taffo.info !277
  %23 = lshr i64 %22, 30, !taffo.info !277
  %mul15.u6_26fixp = trunc i64 %23 to i32, !taffo.info !279
  %24 = zext i32 %mul15.u6_26fixp to i64, !taffo.info !279
  %25 = udiv i64 %24, 30, !taffo.info !288, !taffo.constinfo !120
  %26 = shl i64 %25, 4, !taffo.info !288, !taffo.constinfo !120
  %div16.u2_30fixp = trunc i64 %26 to i32, !taffo.info !290
  %27 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !275
  %28 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !275
  %29 = mul i64 %27, %28, !taffo.info !277
  %30 = lshr i64 %29, 30, !taffo.info !277
  %mul17.u6_26fixp = trunc i64 %30 to i32, !taffo.info !279
  %31 = zext i32 %mul17.u6_26fixp to i64, !taffo.info !279
  %32 = udiv i64 %31, 56, !taffo.info !291, !taffo.constinfo !127
  %33 = shl i64 %32, 5, !taffo.info !291, !taffo.constinfo !127
  %div18.u1_31fixp = trunc i64 %33 to i32, !taffo.info !293
  %34 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !275
  %35 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !275
  %36 = mul i64 %34, %35, !taffo.info !277
  %37 = lshr i64 %36, 30, !taffo.info !277
  %mul19.u6_26fixp = trunc i64 %37 to i32, !taffo.info !279
  %38 = zext i32 %mul19.u6_26fixp to i64, !taffo.info !279
  %39 = udiv i64 %38, 90, !taffo.info !294, !taffo.constinfo !133
  %40 = shl i64 %39, 5, !taffo.info !294, !taffo.constinfo !133
  %div20.u1_31fixp = trunc i64 %40 to i32, !taffo.info !296
  %41 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !275
  %42 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !275
  %43 = mul i64 %41, %42, !taffo.info !277
  %44 = lshr i64 %43, 30, !taffo.info !277
  %mul21.u6_26fixp = trunc i64 %44 to i32, !taffo.info !279
  %45 = zext i32 %mul21.u6_26fixp to i64, !taffo.info !279
  %46 = udiv i64 %45, 132, !taffo.info !297, !taffo.constinfo !139
  %47 = shl i64 %46, 5, !taffo.info !297, !taffo.constinfo !139
  %div22.u1_31fixp = trunc i64 %47 to i32, !taffo.info !299
  %48 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !275
  %49 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !275
  %50 = mul i64 %48, %49, !taffo.info !277
  %51 = lshr i64 %50, 30, !taffo.info !277
  %mul23.u6_26fixp = trunc i64 %51 to i32, !taffo.info !279
  %52 = zext i32 %mul23.u6_26fixp to i64, !taffo.info !279
  %53 = udiv i64 %52, 182, !taffo.info !300, !taffo.constinfo !145
  %54 = shl i64 %53, 5, !taffo.info !300, !taffo.constinfo !145
  %div24.u1_31fixp = trunc i64 %54 to i32, !taffo.info !302
  %sub25.u1_31fixp = sub i32 -2147483648, %div24.u1_31fixp, !taffo.info !303, !taffo.constinfo !151
  %55 = zext i32 %div22.u1_31fixp to i64, !taffo.info !299
  %56 = zext i32 %sub25.u1_31fixp to i64, !taffo.info !303
  %57 = mul i64 %55, %56, !taffo.info !305
  %58 = lshr i64 %57, 31, !taffo.info !305
  %mul26.u1_31fixp = trunc i64 %58 to i32, !taffo.info !307
  %sub27.u1_31fixp = sub i32 -2147483648, %mul26.u1_31fixp, !taffo.info !308, !taffo.constinfo !151
  %59 = zext i32 %div20.u1_31fixp to i64, !taffo.info !296
  %60 = zext i32 %sub27.u1_31fixp to i64, !taffo.info !308
  %61 = mul i64 %59, %60, !taffo.info !310
  %62 = lshr i64 %61, 31, !taffo.info !310
  %mul28.u1_31fixp = trunc i64 %62 to i32, !taffo.info !312
  %sub29.u1_31fixp = sub i32 -2147483648, %mul28.u1_31fixp, !taffo.info !313, !taffo.constinfo !151
  %63 = zext i32 %div18.u1_31fixp to i64, !taffo.info !293
  %64 = zext i32 %sub29.u1_31fixp to i64, !taffo.info !313
  %65 = mul i64 %63, %64, !taffo.info !315
  %66 = lshr i64 %65, 31, !taffo.info !315
  %mul30.u1_31fixp = trunc i64 %66 to i32, !taffo.info !317
  %67 = lshr i32 %mul30.u1_31fixp, 1, !taffo.info !317
  %sub31.u2_30fixp = sub i32 1073741824, %67, !taffo.info !318, !taffo.constinfo !151
  %68 = zext i32 %div16.u2_30fixp to i64, !taffo.info !290
  %69 = zext i32 %sub31.u2_30fixp to i64, !taffo.info !318
  %70 = mul i64 %68, %69, !taffo.info !320
  %71 = ashr i64 %70, 31, !taffo.info !320
  %mul32.s3_29fixp = trunc i64 %71 to i32, !taffo.info !322
  %sub33.s3_29fixp = sub i32 536870912, %mul32.s3_29fixp, !taffo.info !323, !taffo.constinfo !151
  %72 = sext i32 %div14.s4_28fixp to i64, !taffo.info !287
  %73 = sext i32 %sub33.s3_29fixp to i64, !taffo.info !323
  %74 = mul i64 %72, %73, !taffo.info !325
  %75 = ashr i64 %74, 29, !taffo.info !325
  %mul34.s4_28fixp = trunc i64 %75 to i32, !taffo.info !328
  %76 = shl i32 %mul34.s4_28fixp, 1, !taffo.info !328
  %sub35.s3_29fixp = sub i32 536870912, %76, !taffo.info !329, !taffo.constinfo !151
  %77 = zext i32 %div.u6_26fixp to i64, !taffo.info !283
  %78 = sext i32 %sub35.s3_29fixp to i64, !taffo.info !329
  %79 = mul i64 %77, %78, !taffo.info !331
  %80 = ashr i64 %79, 30, !taffo.info !331
  %mul36.s7_25fixp = trunc i64 %80 to i32, !taffo.info !334
  %sub37.s7_25fixp = sub i32 33554432, %mul36.s7_25fixp, !taffo.info !335, !taffo.constinfo !151
  %81 = sext i32 %sub37.s7_25fixp to i64, !taffo.info !335
  %82 = mul i64 -1, %81, !taffo.info !337, !taffo.constinfo !189
  %mul38.s7_25fixp = trunc i64 %82 to i32, !taffo.info !252
  br label %return

if.end39:                                         ; preds = %if.end6, %land.lhs.true
  %83 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !273
  %84 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !273
  %85 = mul i64 %83, %84, !taffo.info !339
  %86 = lshr i64 %85, 28, !taffo.info !339
  %mul40.u4_28fixp = trunc i64 %86 to i32, !taffo.info !341
  %87 = zext i32 %mul40.u4_28fixp to i64, !taffo.info !341
  %88 = udiv i64 %87, 2, !taffo.info !343, !taffo.constinfo !102
  %div41.u4_28fixp = trunc i64 %88 to i32, !taffo.info !346
  %89 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !273
  %90 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !273
  %91 = mul i64 %89, %90, !taffo.info !347
  %92 = ashr i64 %91, 29, !taffo.info !347
  %mul42.s5_27fixp = trunc i64 %92 to i32, !taffo.info !349
  %93 = sext i32 %mul42.s5_27fixp to i64, !taffo.info !349
  %94 = udiv i64 %93, 12, !taffo.info !350, !taffo.constinfo !113
  %95 = shl i64 %94, 4, !taffo.info !350, !taffo.constinfo !113
  %div43.u1_31fixp = trunc i64 %95 to i32, !taffo.info !353
  %96 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !273
  %97 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !273
  %98 = mul i64 %96, %97, !taffo.info !347
  %99 = ashr i64 %98, 29, !taffo.info !347
  %mul44.s5_27fixp = trunc i64 %99 to i32, !taffo.info !349
  %100 = sext i32 %mul44.s5_27fixp to i64, !taffo.info !349
  %101 = udiv i64 %100, 30, !taffo.info !354, !taffo.constinfo !120
  %102 = shl i64 %101, 4, !taffo.info !354, !taffo.constinfo !120
  %div45.u1_31fixp = trunc i64 %102 to i32, !taffo.info !356
  %103 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !273
  %104 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !273
  %105 = mul i64 %103, %104, !taffo.info !347
  %106 = ashr i64 %105, 29, !taffo.info !347
  %mul46.s5_27fixp = trunc i64 %106 to i32, !taffo.info !349
  %107 = sext i32 %mul46.s5_27fixp to i64, !taffo.info !349
  %108 = udiv i64 %107, 56, !taffo.info !357, !taffo.constinfo !127
  %109 = shl i64 %108, 4, !taffo.info !357, !taffo.constinfo !127
  %div47.u1_31fixp = trunc i64 %109 to i32, !taffo.info !359
  %110 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !273
  %111 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !273
  %112 = mul i64 %110, %111, !taffo.info !347
  %113 = ashr i64 %112, 29, !taffo.info !347
  %mul48.s5_27fixp = trunc i64 %113 to i32, !taffo.info !349
  %114 = sext i32 %mul48.s5_27fixp to i64, !taffo.info !349
  %115 = udiv i64 %114, 90, !taffo.info !360, !taffo.constinfo !133
  %116 = shl i64 %115, 4, !taffo.info !360, !taffo.constinfo !133
  %div49.u1_31fixp = trunc i64 %116 to i32, !taffo.info !362
  %117 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !273
  %118 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !273
  %119 = mul i64 %117, %118, !taffo.info !347
  %120 = ashr i64 %119, 29, !taffo.info !347
  %mul50.s5_27fixp = trunc i64 %120 to i32, !taffo.info !349
  %121 = sext i32 %mul50.s5_27fixp to i64, !taffo.info !349
  %122 = udiv i64 %121, 132, !taffo.info !363, !taffo.constinfo !139
  %123 = shl i64 %122, 4, !taffo.info !363, !taffo.constinfo !139
  %div51.u1_31fixp = trunc i64 %123 to i32, !taffo.info !365
  %124 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !273
  %125 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !273
  %126 = mul i64 %124, %125, !taffo.info !347
  %127 = ashr i64 %126, 29, !taffo.info !347
  %mul52.s5_27fixp = trunc i64 %127 to i32, !taffo.info !349
  %128 = sext i32 %mul52.s5_27fixp to i64, !taffo.info !349
  %129 = udiv i64 %128, 182, !taffo.info !366, !taffo.constinfo !145
  %130 = shl i64 %129, 4, !taffo.info !366, !taffo.constinfo !145
  %div53.u1_31fixp = trunc i64 %130 to i32, !taffo.info !368
  %sub54.u1_31fixp = sub i32 -2147483648, %div53.u1_31fixp, !taffo.info !369, !taffo.constinfo !151
  %131 = zext i32 %div51.u1_31fixp to i64, !taffo.info !365
  %132 = zext i32 %sub54.u1_31fixp to i64, !taffo.info !369
  %133 = mul i64 %131, %132, !taffo.info !371
  %134 = lshr i64 %133, 31, !taffo.info !371
  %mul55.u1_31fixp = trunc i64 %134 to i32, !taffo.info !365
  %sub56.u1_31fixp = sub i32 -2147483648, %mul55.u1_31fixp, !taffo.info !372, !taffo.constinfo !151
  %135 = zext i32 %div49.u1_31fixp to i64, !taffo.info !362
  %136 = zext i32 %sub56.u1_31fixp to i64, !taffo.info !372
  %137 = mul i64 %135, %136, !taffo.info !374
  %138 = lshr i64 %137, 31, !taffo.info !374
  %mul57.u1_31fixp = trunc i64 %138 to i32, !taffo.info !362
  %sub58.u1_31fixp = sub i32 -2147483648, %mul57.u1_31fixp, !taffo.info !375, !taffo.constinfo !151
  %139 = zext i32 %div47.u1_31fixp to i64, !taffo.info !359
  %140 = zext i32 %sub58.u1_31fixp to i64, !taffo.info !375
  %141 = mul i64 %139, %140, !taffo.info !377
  %142 = lshr i64 %141, 31, !taffo.info !377
  %mul59.u1_31fixp = trunc i64 %142 to i32, !taffo.info !359
  %sub60.u1_31fixp = sub i32 -2147483648, %mul59.u1_31fixp, !taffo.info !378, !taffo.constinfo !151
  %143 = zext i32 %div45.u1_31fixp to i64, !taffo.info !356
  %144 = zext i32 %sub60.u1_31fixp to i64, !taffo.info !378
  %145 = mul i64 %143, %144, !taffo.info !380
  %146 = lshr i64 %145, 31, !taffo.info !380
  %mul61.u1_31fixp = trunc i64 %146 to i32, !taffo.info !356
  %sub62.u1_31fixp = sub i32 -2147483648, %mul61.u1_31fixp, !taffo.info !381, !taffo.constinfo !151
  %147 = zext i32 %div43.u1_31fixp to i64, !taffo.info !353
  %148 = zext i32 %sub62.u1_31fixp to i64, !taffo.info !381
  %149 = mul i64 %147, %148, !taffo.info !383
  %150 = lshr i64 %149, 31, !taffo.info !383
  %mul63.u1_31fixp = trunc i64 %150 to i32, !taffo.info !353
  %151 = lshr i32 %mul63.u1_31fixp, 2, !taffo.info !353
  %sub64.u3_29fixp = sub i32 536870912, %151, !taffo.info !384, !taffo.constinfo !151
  %152 = zext i32 %div41.u4_28fixp to i64, !taffo.info !346
  %153 = zext i32 %sub64.u3_29fixp to i64, !taffo.info !384
  %154 = mul i64 %152, %153, !taffo.info !386
  %155 = ashr i64 %154, 29, !taffo.info !386
  %mul65.s4_28fixp = trunc i64 %155 to i32, !taffo.info !387
  %sub66.s4_28fixp = sub i32 268435456, %mul65.s4_28fixp, !taffo.info !388, !taffo.constinfo !151
  %156 = ashr i32 %sub66.s4_28fixp, 3, !taffo.info !388, !taffo.constinfo !151
  br label %return

return:                                           ; preds = %if.end39, %if.then11
  %retval.0.s7_25fixp = phi i32 [ %mul38.s7_25fixp, %if.then11 ], [ %156, %if.end39 ], !taffo.info !252
  ret i32 %retval.0.s7_25fixp
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.6.16_fixp(i32 %f1.s4_28fixp, double %f2) #0 !taffo.initweight !62 !taffo.funinfo !64 !taffo.sourceFunction !390 {
entry:
  %0 = fmul double 0x41B0000000000000, %f2
  %1 = fptosi double %0 to i32
  %2 = fmul double 0x41B0000000000000, %f2
  %3 = fptosi double %2 to i32
  %sub.s4_28fixp = sub i32 %f1.s4_28fixp, 2, !taffo.info !41, !taffo.constinfo !12
  %4 = icmp slt i32 %sub.s4_28fixp, %3, !taffo.info !15
  br i1 %4, label %if.then, label %if.else, !taffo.info !16, !taffo.initweight !17

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %add.s4_28fixp = add i32 %f1.s4_28fixp, 2, !taffo.info !41, !taffo.constinfo !12
  %5 = icmp sgt i32 %add.s4_28fixp, %1, !taffo.info !15
  br i1 %5, label %if.then4, label %if.else5, !taffo.info !16, !taffo.initweight !17

if.then4:                                         ; preds = %if.else
  br label %return

if.else5:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else5, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then4 ], [ 0, %if.else5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.3.13_fixp(i32 %f1.s4_28fixp, double %f2) #0 !taffo.initweight !62 !taffo.funinfo !64 !taffo.sourceFunction !391 {
entry:
  %0 = fmul double 0x41B0000000000000, %f2
  %1 = fptosi double %0 to i32
  %2 = fmul double 0x41B0000000000000, %f2
  %3 = fptosi double %2 to i32
  %sub.s4_28fixp = sub i32 %f1.s4_28fixp, 2, !taffo.info !41, !taffo.constinfo !12
  %4 = icmp slt i32 %sub.s4_28fixp, %3, !taffo.info !15
  br i1 %4, label %if.then, label %if.else, !taffo.info !16, !taffo.initweight !17

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %add.s4_28fixp = add i32 %f1.s4_28fixp, 2, !taffo.info !41, !taffo.constinfo !12
  %5 = icmp sgt i32 %add.s4_28fixp, %1, !taffo.info !15
  br i1 %5, label %if.then4, label %if.else5, !taffo.info !16, !taffo.initweight !17

if.then4:                                         ; preds = %if.else
  br label %return

if.else5:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else5, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then4 ], [ 0, %if.else5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.4.14_fixp(i32 %f1.s4_28fixp, double %f2) #0 !taffo.initweight !62 !taffo.funinfo !64 !taffo.sourceFunction !392 {
entry:
  %0 = fmul double 0x41B0000000000000, %f2
  %1 = fptosi double %0 to i32
  %2 = fmul double 0x41B0000000000000, %f2
  %3 = fptosi double %2 to i32
  %sub.s4_28fixp = sub i32 %f1.s4_28fixp, 2, !taffo.info !41, !taffo.constinfo !12
  %4 = icmp slt i32 %sub.s4_28fixp, %3, !taffo.info !15
  br i1 %4, label %if.then, label %if.else, !taffo.info !16, !taffo.initweight !17

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %add.s4_28fixp = add i32 %f1.s4_28fixp, 2, !taffo.info !41, !taffo.constinfo !12
  %5 = icmp sgt i32 %add.s4_28fixp, %1, !taffo.info !15
  br i1 %5, label %if.then4, label %if.else5, !taffo.info !16, !taffo.initweight !17

if.then4:                                         ; preds = %if.else
  br label %return

if.else5:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else5, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then4 ], [ 0, %if.else5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.5.15_fixp(i32 %f1.s4_28fixp, double %f2) #0 !taffo.initweight !62 !taffo.funinfo !64 !taffo.sourceFunction !393 {
entry:
  %0 = fmul double 0x41B0000000000000, %f2
  %1 = fptosi double %0 to i32
  %2 = fmul double 0x41B0000000000000, %f2
  %3 = fptosi double %2 to i32
  %sub.s4_28fixp = sub i32 %f1.s4_28fixp, 2, !taffo.info !41, !taffo.constinfo !12
  %4 = icmp slt i32 %sub.s4_28fixp, %3, !taffo.info !15
  br i1 %4, label %if.then, label %if.else, !taffo.info !16, !taffo.initweight !17

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %add.s4_28fixp = add i32 %f1.s4_28fixp, 2, !taffo.info !41, !taffo.constinfo !12
  %5 = icmp sgt i32 %add.s4_28fixp, %1, !taffo.info !15
  br i1 %5, label %if.then4, label %if.else5, !taffo.info !16, !taffo.initweight !17

if.then4:                                         ; preds = %if.else
  br label %return

if.else5:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else5, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then4 ], [ 0, %if.else5 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.6.20_fixp(i32 %f1.s3_29fixp, double %f2) #0 !taffo.initweight !62 !taffo.funinfo !394 !taffo.sourceFunction !395 {
entry:
  %0 = fmul double 0x41D0000000000000, %f2, !taffo.info !27
  %1 = fptoui double %0 to i32, !taffo.info !27
  %2 = fmul double 0x41D0000000000000, %f2, !taffo.info !27
  %3 = fptoui double %2 to i32, !taffo.info !27
  %sub.s3_29fixp = sub i32 %f1.s3_29fixp, 5, !taffo.info !396, !taffo.constinfo !12
  %4 = lshr i32 %3, 1, !taffo.info !27
  %5 = icmp slt i32 %sub.s3_29fixp, %4, !taffo.info !86
  br i1 %5, label %if.then, label %if.else, !taffo.info !16, !taffo.initweight !17

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %add.s3_29fixp = add i32 %f1.s3_29fixp, 5, !taffo.info !398, !taffo.constinfo !12
  %6 = lshr i32 %1, 1, !taffo.info !27
  %7 = icmp sgt i32 %add.s3_29fixp, %6, !taffo.info !86
  br i1 %7, label %if.then4, label %if.else5, !taffo.info !16, !taffo.initweight !17

if.then4:                                         ; preds = %if.else
  br label %return

if.else5:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else5, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then4 ], [ 0, %if.else5 ], !taffo.info !72
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.4.18_fixp(i32 %f1.s4_28fixp, double %f2) #0 !taffo.initweight !62 !taffo.funinfo !400 !taffo.sourceFunction !401 {
entry:
  %0 = fmul double 0x41C0000000000000, %f2, !taffo.info !38
  %1 = fptoui double %0 to i32, !taffo.info !38
  %2 = fmul double 0x41C0000000000000, %f2, !taffo.info !38
  %3 = fptoui double %2 to i32, !taffo.info !38
  %4 = shl i32 %f1.s4_28fixp, 1, !taffo.info !273
  %sub.s3_29fixp = sub i32 %4, 5, !taffo.info !402, !taffo.constinfo !12
  %5 = icmp slt i32 %sub.s3_29fixp, %3, !taffo.info !86
  br i1 %5, label %if.then, label %if.else, !taffo.info !16, !taffo.initweight !17

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %6 = shl i32 %f1.s4_28fixp, 1, !taffo.info !273
  %add.s3_29fixp = add i32 %6, 5, !taffo.info !404, !taffo.constinfo !12
  %7 = icmp sgt i32 %add.s3_29fixp, %1, !taffo.info !86
  br i1 %7, label %if.then4, label %if.else5, !taffo.info !16, !taffo.initweight !17

if.then4:                                         ; preds = %if.else
  br label %return

if.else5:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else5, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then4 ], [ 0, %if.else5 ], !taffo.info !72
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.5.19_fixp(i32 %f1.s3_29fixp, double %f2) #0 !taffo.initweight !62 !taffo.funinfo !406 !taffo.sourceFunction !407 {
entry:
  %0 = fmul double 0x41D0000000000000, %f2, !taffo.info !27
  %1 = fptoui double %0 to i32, !taffo.info !27
  %2 = fmul double 0x41D0000000000000, %f2, !taffo.info !27
  %3 = fptoui double %2 to i32, !taffo.info !27
  %sub.s3_29fixp = sub i32 %f1.s3_29fixp, 5, !taffo.info !408, !taffo.constinfo !12
  %4 = lshr i32 %3, 1, !taffo.info !27
  %5 = icmp slt i32 %sub.s3_29fixp, %4, !taffo.info !86
  br i1 %5, label %if.then, label %if.else, !taffo.info !16, !taffo.initweight !17

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %add.s3_29fixp = add i32 %f1.s3_29fixp, 5, !taffo.info !410, !taffo.constinfo !12
  %6 = lshr i32 %1, 1, !taffo.info !27
  %7 = icmp sgt i32 %add.s3_29fixp, %6, !taffo.info !86
  br i1 %7, label %if.then4, label %if.else5, !taffo.info !16, !taffo.initweight !17

if.then4:                                         ; preds = %if.else
  br label %return

if.else5:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else5, %if.then4, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then4 ], [ 0, %if.else5 ], !taffo.info !72
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!4}
!llvm.ident = !{!5}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.150000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.160000e+02}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!6 = !{i32 -1, i32 -1}
!7 = distinct !{i32 (double, double)* @compare_float.3, i32 (double, double)* @compare_float.3, i32 (double, double)* @compare_float.3, i32 (double, double)* @compare_float.3, i32 (double, double)* @compare_float.8, null, i32 (double, double)* @compare_float.3, i32 (double, double)* @compare_float.3}
!8 = !{i32 0, i1 false, i32 0, i1 false}
!9 = !{!10, !11, i1 false, i2 1}
!10 = !{!"fixp", i32 -32, i32 30}
!11 = !{double -1.000000e+00, double 1.000000e+00}
!12 = !{i1 false, !13}
!13 = !{i1 false, !14, i1 false, i2 0}
!14 = !{double 1.000000e-08, double 1.000000e-08}
!15 = !{!10, i1 false, i1 false, i2 1}
!16 = !{i1 false, !11, i1 false, i2 1}
!17 = !{i32 3}
!18 = !{i32 -1}
!19 = distinct !{null, null, null}
!20 = !{i32 0, i1 false}
!21 = !{i1 false, !22, i1 false, i2 1}
!22 = !{double 0.000000e+00, double 0x401921FB53C8D4F1}
!23 = !{i32 2}
!24 = !{!25, !22, i1 false, i2 1}
!25 = !{!"fixp", i32 32, i32 29}
!26 = !{i1 false, !27, i1 false}
!27 = !{i1 false, !28, i1 false, i2 0}
!28 = !{double 0x3FF921FB52713C02, double 0x3FF921FB52713C02}
!29 = !{i32 (double, double)* @compare_float}
!30 = !{i32 4}
!31 = !{!25, i1 false, i1 false, i2 1}
!32 = !{!33, !22, i1 false, i2 1}
!33 = !{!"fixp", i32 -32, i32 28}
!34 = !{i1 false, !27}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{i1 false, !38, i1 false}
!38 = !{i1 false, !39, i1 false, i2 0}
!39 = !{double 0x400921FB53C8D4F1, double 0x400921FB53C8D4F1}
!40 = distinct !{null}
!41 = !{!33, !11, i1 false, i2 1}
!42 = !{i1 false, i1 false}
!43 = !{i32 1}
!44 = !{}
!45 = !{i1 true}
!46 = !{!47, !48, i1 false, i2 1}
!47 = !{!"fixp", i32 -32, i32 27}
!48 = !{double 0xC02D7CE360000000, double 0x4026D34120000000}
!49 = !{!50, i1 false}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 0x3FE0C15237DB38A1, double 0x3FE0C15237DB38A1}
!52 = !{!"res_cos"}
!53 = !{!54, !55, i1 false, i2 1}
!54 = !{!"fixp", i32 -32, i32 25}
!55 = !{double 0xC041B01060000000, double 0x403A264500000000}
!56 = !{!57, i1 false}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 0x3FD0C15237DB38A1, double 0x3FD0C15237DB38A1}
!59 = !{!"res_sin"}
!60 = !{!54, i1 false, i1 false, i2 1}
!61 = !{i1 false, i1 false, i1 false, i1 false}
!62 = !{i32 2, i32 -1}
!63 = distinct !{null, null}
!64 = !{i32 1, !32, i32 0, i1 false}
!65 = !{i32 1, !66, i32 1, !27}
!66 = !{!10, !67, i1 false, i2 1}
!67 = !{double 0xBFE0C15237DB38A1, double 0x3FE0C15237DB38A1}
!68 = !{!10, !69, i1 false, i2 1}
!69 = !{double 0xBFE0C1523D399C5A, double 0x3FE0C152327CD4E8}
!70 = !{!10, !71, i1 false, i2 1}
!71 = !{double 0xBFE0C152327CD4E8, double 0x3FE0C1523D399C5A}
!72 = !{i1 false, !11, i1 false, i2 0}
!73 = !{i32 1, !50}
!74 = !{double (double)* @cos}
!75 = !{i1 false, !76, i1 false, i2 1}
!76 = !{double 0.000000e+00, double 0.000000e+00}
!77 = !{!10, !78, i1 false, i2 1}
!78 = !{double 0xBFE0C15237DB38A1, double 0xBFE0C15237DB38A1}
!79 = !{i1 false, !67, i1 false, i2 0}
!80 = !{i1 false, !81, i1 false, i2 1}
!81 = !{double 0.000000e+00, double 1.000000e+00}
!82 = !{!83, !67, i1 false, i2 1}
!83 = !{!"fixp", i32 -32, i32 29}
!84 = !{!83, !85, i1 false, i2 1}
!85 = !{double 0xC000C152372F6C29, double 0xBFF0C15236839FB2}
!86 = !{!83, i1 false, i1 false, i2 1}
!87 = distinct !{!87, !36}
!88 = !{!33, !89, i1 false, i2 1}
!89 = !{double 0xC000C152372F6C29, double 0x3FE0C15237DB38A1}
!90 = !{!91, !92, i1 false, i2 1}
!91 = !{!"fixp", i32 -32, i32 26}
!92 = !{double 0xC014F1A6C57C208D, double 0xC004F1A6C5D206C9}
!93 = !{i1 false, !38}
!94 = !{!95, !96, i1 false, i2 1}
!95 = !{!"fixp", i32 64, i32 52}
!96 = !{double 0x401B6A62A55EBA57, double 0x403B6A62A47DD80A}
!97 = !{!98, !96, i1 false, i2 1}
!98 = !{!"fixp", i32 32, i32 27}
!99 = !{!100, !101, i1 false, i2 1}
!100 = !{!"fixp", i32 -64, i32 27}
!101 = !{double 0x400B6A62A55EBA57, double 0x402B6A62A47DD80A}
!102 = !{i1 false, !103}
!103 = !{!104, !105, i1 false, i2 0}
!104 = !{!"fixp", i32 32, i32 0}
!105 = !{double 2.000000e+00, double 2.000000e+00}
!106 = !{!47, !101, i1 false, i2 1}
!107 = !{!108, !96, i1 false, i2 1}
!108 = !{!"fixp", i32 -64, i32 52}
!109 = !{!91, !96, i1 false, i2 1}
!110 = !{!111, !112, i1 false, i2 1}
!111 = !{!"fixp", i32 64, i32 26}
!112 = !{double 0x3FE246EC6E3F26E5, double 0x400246EC6DA93AB1}
!113 = !{i1 false, !114}
!114 = !{!104, !115, i1 false, i2 0}
!115 = !{double 1.200000e+01, double 1.200000e+01}
!116 = !{!117, !112, i1 false, i2 1}
!117 = !{!"fixp", i32 32, i32 30}
!118 = !{!111, !119, i1 false, i2 1}
!119 = !{double 0x3FCD3E4716CB716E, double 0x3FED3E4715DB911C}
!120 = !{i1 false, !121}
!121 = !{!104, !122, i1 false, i2 0}
!122 = !{double 3.000000e+01, double 3.000000e+01}
!123 = !{!124, !119, i1 false, i2 1}
!124 = !{!"fixp", i32 32, i32 31}
!125 = !{!111, !126, i1 false, i2 1}
!126 = !{double 0x3FBF550306231E1A, double 0x3FDF550305221B79}
!127 = !{i1 false, !128}
!128 = !{!104, !129, i1 false, i2 0}
!129 = !{double 5.600000e+01, double 5.600000e+01}
!130 = !{!124, !126, i1 false, i2 1}
!131 = !{!111, !132, i1 false, i2 1}
!132 = !{double 0x3FB37EDA0F324B9F, double 0x3FD37EDA0E9260BD}
!133 = !{i1 false, !134}
!134 = !{!104, !135, i1 false, i2 0}
!135 = !{double 9.000000e+01, double 9.000000e+01}
!136 = !{!124, !132, i1 false, i2 1}
!137 = !{!111, !138, i1 false, i2 1}
!138 = !{double 0x3FAA95B4FD73214D, double 0x3FCA95B4FC990F8E}
!139 = !{i1 false, !140}
!140 = !{!104, !141, i1 false, i2 0}
!141 = !{double 1.320000e+02, double 1.320000e+02}
!142 = !{!124, !138, i1 false, i2 1}
!143 = !{!111, !144, i1 false, i2 1}
!144 = !{double 0x3FA34801DC64614B, double 0x3FC34801DBC6384B}
!145 = !{i1 false, !146}
!146 = !{!104, !147, i1 false, i2 0}
!147 = !{double 1.820000e+02, double 1.820000e+02}
!148 = !{!124, !144, i1 false, i2 1}
!149 = !{!124, !150, i1 false, i2 1}
!150 = !{double 0x3FEB2DFF890E71ED, double 0x3FEECB7FE239B9EB}
!151 = !{!152, i1 false}
!152 = !{i1 false, !153, i1 false, i2 0}
!153 = !{double 1.000000e+00, double 1.000000e+00}
!154 = !{!155, !156, i1 false, i2 1}
!155 = !{!"fixp", i32 64, i32 62}
!156 = !{double 0x3FA694878734C0AF, double 0x3FC995699F097766}
!157 = !{!124, !156, i1 false, i2 1}
!158 = !{!124, !159, i1 false, i2 1}
!159 = !{double 0x3FE99AA5983DA226, double 0x3FEE96B7878CB3F5}
!160 = !{!155, !161, i1 false, i2 1}
!161 = !{double 0x3FAF32A37039C7B9, double 0x3FD2A2BEDBD16CB6}
!162 = !{!124, !161, i1 false, i2 1}
!163 = !{!124, !164, i1 false, i2 1}
!164 = !{double 0x3FE6AEA0921749A5, double 0x3FEE0CD5C8FC6384}
!165 = !{!155, !166, i1 false, i2 1}
!166 = !{double 0x3FB6356D8CC34D57, double 0x3FDD6C440898727F}
!167 = !{!124, !166, i1 false, i2 1}
!168 = !{!124, !169, i1 false, i2 1}
!169 = !{double 0x3FE149DDFBB3C6C0, double 0x3FED39524E679655}
!170 = !{!155, !171, i1 false, i2 1}
!171 = !{double 0x3FBF992D64CFA2C7, double 0x3FEAB4D291AA89BA}
!172 = !{!124, !171, i1 false, i2 1}
!173 = !{!117, !174, i1 false, i2 1}
!174 = !{double 0x3FC52CB5B955D918, double 0x3FEC0CDA53660BA7}
!175 = !{!176, !177, i1 false, i2 1}
!176 = !{!"fixp", i32 -64, i32 60}
!177 = !{double 0x3FB83028F0EACE62, double 0x400005662B6A1BD8}
!178 = !{!83, !177, i1 false, i2 1}
!179 = !{!47, !180, i1 false, i2 1}
!180 = !{double 0xBFF00ACC56D437B0, double 0x3FECF9FAE1E2A634}
!181 = !{!182, !183, i1 false, i2 1}
!182 = !{!"fixp", i32 -64, i32 54}
!183 = !{double 0xC02B7CE34355CB30, double 0x4028D3411026E8AB}
!184 = !{!47, !183, i1 false, i2 1}
!185 = !{!47, !186, i1 false, i2 1}
!186 = !{double 0xC026D3411026E8AB, double 0x402D7CE34355CB30}
!187 = !{!100, !188, i1 false, i2 1}
!188 = !{double 0xC02D7CE34355CB30, double 0x4026D3411026E8AB}
!189 = !{!190, i1 false}
!190 = !{!191, !192, i1 false, i2 0}
!191 = !{!"fixp", i32 -32, i32 0}
!192 = !{double -1.000000e+00, double -1.000000e+00}
!193 = !{!47, !188, i1 false, i2 1}
!194 = !{!195, !196, i1 false, i2 1}
!195 = !{!"fixp", i32 64, i32 56}
!196 = !{double 0.000000e+00, double 0x40118BC43F78A6C8}
!197 = !{!25, !196, i1 false, i2 1}
!198 = !{!199, !200, i1 false, i2 1}
!199 = !{!"fixp", i32 64, i32 29}
!200 = !{double 0.000000e+00, double 0x40018BC43F78A6C8}
!201 = !{!25, !200, i1 false, i2 1}
!202 = !{!199, !203, i1 false, i2 1}
!203 = !{double 0.000000e+00, double 0x3FD76505A9F633B5}
!204 = !{!25, !203, i1 false, i2 1}
!205 = !{!199, !206, i1 false, i2 1}
!206 = !{double 0.000000e+00, double 0x3FC2B737BB2B5C91}
!207 = !{!25, !206, i1 false, i2 1}
!208 = !{!199, !209, i1 false, i2 1}
!209 = !{double 0.000000e+00, double 0x3FB40D7291AE7577}
!210 = !{!25, !209, i1 false, i2 1}
!211 = !{!199, !212, i1 false, i2 1}
!212 = !{double 0.000000e+00, double 0x3FA8F44A4EE47B6C}
!213 = !{!25, !212, i1 false, i2 1}
!214 = !{!199, !215, i1 false, i2 1}
!215 = !{double 0.000000e+00, double 0x3FA103A7073EB13E}
!216 = !{!25, !215, i1 false, i2 1}
!217 = !{!199, !218, i1 false, i2 1}
!218 = !{double 0.000000e+00, double 0x3F98AE16DAAF557F}
!219 = !{!25, !218, i1 false, i2 1}
!220 = !{!124, !221, i1 false, i2 1}
!221 = !{double 0x3FEF3A8F492A8554, double 1.000000e+00}
!222 = !{!223, !215, i1 false, i2 1}
!223 = !{!"fixp", i32 64, i32 60}
!224 = !{!124, !215, i1 false, i2 1}
!225 = !{!124, !226, i1 false, i2 1}
!226 = !{double 0x3FEEEFC58F8C14EC, double 1.000000e+00}
!227 = !{!223, !212, i1 false, i2 1}
!228 = !{!124, !212, i1 false, i2 1}
!229 = !{!124, !230, i1 false, i2 1}
!230 = !{double 0x3FEE70BB5B11B849, double 1.000000e+00}
!231 = !{!223, !209, i1 false, i2 1}
!232 = !{!124, !209, i1 false, i2 1}
!233 = !{!124, !234, i1 false, i2 1}
!234 = !{double 0x3FED7E51ADCA3151, double 1.000000e+00}
!235 = !{!223, !206, i1 false, i2 1}
!236 = !{!124, !206, i1 false, i2 1}
!237 = !{!124, !238, i1 false, i2 1}
!238 = !{double 0x3FEB5232113528DC, double 1.000000e+00}
!239 = !{!223, !203, i1 false, i2 1}
!240 = !{!124, !203, i1 false, i2 1}
!241 = !{!117, !242, i1 false, i2 1}
!242 = !{double 0x3FE44D7D2B04E626, double 1.000000e+00}
!243 = !{!244, !200, i1 false, i2 1}
!244 = !{!"fixp", i32 -64, i32 59}
!245 = !{!83, !200, i1 false, i2 1}
!246 = !{!47, !247, i1 false, i2 1}
!247 = !{double 0xBFF317887EF14D90, double 1.000000e+00}
!248 = !{i32 1, !57}
!249 = !{double (double)* @sin}
!250 = !{!83, !251, i1 false, i2 1}
!251 = !{double 0xBFF4F1A6C47A6DDA, double 0xBFF4F1A6C47A6DDA}
!252 = !{!54, !253, i1 false, i2 1}
!253 = !{double 0xC041B0105E255280, double 0x403A2644EC16CD91}
!254 = !{i32 1, !32}
!255 = distinct !{!255, !36}
!256 = !{!257, !22, i1 false, i2 1}
!257 = !{!"fixp", i32 64, i32 58}
!258 = !{!199, !22, i1 false, i2 1}
!259 = !{!195, !22, i1 false, i2 1}
!260 = !{i32 1, !84, i32 1, !27}
!261 = !{!83, !262, i1 false, i2 1}
!262 = !{double 0xC000C15238870517, double 0xBFF0C1523932D18E}
!263 = !{!83, !264, i1 false, i2 1}
!264 = !{double 0xC000C15235D7D33B, double 0xBFF0C15233D46DD6}
!265 = !{i32 1, !250}
!266 = !{!83, !267, i1 false, i2 1}
!267 = !{double 0x3FF4F1A6C47A6DDA, double 0x3FF4F1A6C47A6DDA}
!268 = !{!83, !269, i1 false, i2 1}
!269 = !{double 0xBFF4F1A6C47A6DDA, double 0x3FF4F1A6C47A6DDA}
!270 = !{!83, !271, i1 false, i2 1}
!271 = !{double 0xC00709D10B75D4EE, double 0xBFD0C15237DB38A0}
!272 = distinct !{!272, !36}
!273 = !{!33, !274, i1 false, i2 1}
!274 = !{double 0xC00709D10B75D4EE, double 0x3FF4F1A6C47A6DDA}
!275 = !{!33, !276, i1 false, i2 1}
!276 = !{double 0xC01815E62F9F54F0, double 0xBFFD524FE3173C08}
!277 = !{!195, !278, i1 false, i2 1}
!278 = !{double 0x400ADE0485CD6370, double 0x404220E844054D61}
!279 = !{!280, !278, i1 false, i2 1}
!280 = !{!"fixp", i32 32, i32 26}
!281 = !{!111, !282, i1 false, i2 1}
!282 = !{double 0x3FFADE0485CD6370, double 0x403220E844054D61}
!283 = !{!280, !282, i1 false, i2 1}
!284 = !{!285, !286, i1 false, i2 1}
!285 = !{!"fixp", i32 -64, i32 26}
!286 = !{double 0x3FD1E958593397A0, double 0x40082BE05AB1BC81}
!287 = !{!33, !286, i1 false, i2 1}
!288 = !{!111, !289, i1 false, i2 1}
!289 = !{double 0x3FBCA88D5B85BF66, double 0x3FF3564D155AFD34}
!290 = !{!117, !289, i1 false, i2 1}
!291 = !{!111, !292, i1 false, i2 1}
!292 = !{double 0x3FAEB497745871A5, double 0x3FE4B7E4E0060F4A}
!293 = !{!124, !292, i1 false, i2 1}
!294 = !{!111, !295, i1 false, i2 1}
!295 = !{double 0x3FA31B08E7AE7F9A, double 0x3FD9C866C723FC46}
!296 = !{!124, !295, i1 false, i2 1}
!297 = !{!111, !298, i1 false, i2 1}
!298 = !{double 0x3F9A0D97C790DC8C, double 0x3FD194461369FD75}
!299 = !{!124, !298, i1 false, i2 1}
!300 = !{!111, !301, i1 false, i2 1}
!301 = !{double 0x3F92E54982AC94B4, double 0x3FC97FDE9D914DE5}
!302 = !{!124, !301, i1 false, i2 1}
!303 = !{!124, !304, i1 false, i2 1}
!304 = !{double 0x3FE9A008589BAC87, double 0x3FEF68D5B3EA9B5A}
!305 = !{!155, !306, i1 false, i2 1}
!306 = !{double 0x3F94DCE956591233, double 0x3FD1413B2C5680CF}
!307 = !{!124, !306, i1 false, i2 1}
!308 = !{!124, !309, i1 false, i2 1}
!309 = !{double 0x3FE75F6269D4BF98, double 0x3FEF5918B54D376E}
!310 = !{!155, !311, i1 false, i2 1}
!311 = !{double 0x3F9BE8C2D5E073FE, double 0x3FD941ECD7258A0B}
!312 = !{!124, !311, i1 false, i2 1}
!313 = !{!124, !314, i1 false, i2 1}
!314 = !{double 0x3FE35F09946D3AFA, double 0x3FEF20B9E950FC60}
!315 = !{!155, !316, i1 false, i2 1}
!316 = !{double 0x3FA2966B3FEC8EF9, double 0x3FE42755FC187DA4}
!317 = !{!124, !316, i1 false, i2 1}
!318 = !{!117, !319, i1 false, i2 1}
!319 = !{double 0x3FD7B15407CF04B8, double 0x3FEED6994C013710}
!320 = !{!176, !321, i1 false, i2 1}
!321 = !{double 0x3FA537F5291BB313, double 0x3FF2A2960A125F04}
!322 = !{!83, !321, i1 false, i2 1}
!323 = !{!83, !324, i1 false, i2 1}
!324 = !{double 0xBFC514B05092F820, double 0x3FEEAC80AD6E44CF}
!325 = !{!326, !327, i1 false, i2 1}
!326 = !{!"fixp", i32 -64, i32 57}
!327 = !{double 0xBFDFD8D7ABD7F435, double 0x40072B6F5D70068C}
!328 = !{!33, !327, i1 false, i2 1}
!329 = !{!83, !330, i1 false, i2 1}
!330 = !{double 0xBFFE56DEBAE00D18, double 0x3FF7F635EAF5FD0D}
!331 = !{!332, !333, i1 false, i2 1}
!332 = !{!"fixp", i32 -64, i32 55}
!333 = !{double 0xC04130105E255280, double 0x403B2644EC16CD91}
!334 = !{!54, !333, i1 false, i2 1}
!335 = !{!54, !336, i1 false, i2 1}
!336 = !{double 0xC03A2644EC16CD91, double 0x4041B0105E255280}
!337 = !{!338, !253, i1 false, i2 1}
!338 = !{!"fixp", i32 -64, i32 25}
!339 = !{!195, !340, i1 false, i2 1}
!340 = !{double 0.000000e+00, double 0x4020961F83657215}
!341 = !{!342, !340, i1 false, i2 1}
!342 = !{!"fixp", i32 32, i32 28}
!343 = !{!344, !345, i1 false, i2 1}
!344 = !{!"fixp", i32 64, i32 28}
!345 = !{double 0.000000e+00, double 0x4010961F83657215}
!346 = !{!342, !345, i1 false, i2 1}
!347 = !{!348, !340, i1 false, i2 1}
!348 = !{!"fixp", i32 -64, i32 56}
!349 = !{!47, !340, i1 false, i2 1}
!350 = !{!351, !352, i1 false, i2 1}
!351 = !{!"fixp", i32 64, i32 27}
!352 = !{double 0.000000e+00, double 0x3FE61D7F59DC981C}
!353 = !{!124, !352, i1 false, i2 1}
!354 = !{!351, !355, i1 false, i2 1}
!355 = !{double 0.000000e+00, double 0x3FD1B132AE4A134A}
!356 = !{!124, !355, i1 false, i2 1}
!357 = !{!351, !358, i1 false, i2 1}
!358 = !{double 0.000000e+00, double 0x3FC2F4B64D06393D}
!359 = !{!124, !358, i1 false, i2 1}
!360 = !{!351, !361, i1 false, i2 1}
!361 = !{double 0.000000e+00, double 0x3FB796EE3DB819B7}
!362 = !{!124, !361, i1 false, i2 1}
!363 = !{!351, !364, i1 false, i2 1}
!364 = !{double 0.000000e+00, double 0x3FB01573E443575A}
!365 = !{!124, !364, i1 false, i2 1}
!366 = !{!351, !367, i1 false, i2 1}
!367 = !{double 0.000000e+00, double 0x3FA7549199E04672}
!368 = !{!124, !367, i1 false, i2 1}
!369 = !{!124, !370, i1 false, i2 1}
!370 = !{double 0x3FEE8AB6E661FB99, double 1.000000e+00}
!371 = !{!155, !364, i1 false, i2 1}
!372 = !{!124, !373, i1 false, i2 1}
!373 = !{double 0x3FEDFD5183779515, double 1.000000e+00}
!374 = !{!155, !361, i1 false, i2 1}
!375 = !{!124, !376, i1 false, i2 1}
!376 = !{double 0x3FED0D223848FCC9, double 1.000000e+00}
!377 = !{!155, !358, i1 false, i2 1}
!378 = !{!124, !379, i1 false, i2 1}
!379 = !{double 0x3FEB42D26CBE71B1, double 1.000000e+00}
!380 = !{!155, !355, i1 false, i2 1}
!381 = !{!124, !382, i1 false, i2 1}
!382 = !{double 0x3FE72766A8DAF65B, double 1.000000e+00}
!383 = !{!155, !352, i1 false, i2 1}
!384 = !{!25, !385, i1 false, i2 1}
!385 = !{double 0x3FD3C5014C46CFC8, double 1.000000e+00}
!386 = !{!326, !345, i1 false, i2 1}
!387 = !{!33, !345, i1 false, i2 1}
!388 = !{!33, !389, i1 false, i2 1}
!389 = !{double 0xC0092C3F06CAE42A, double 1.000000e+00}
!390 = distinct !{i32 (double, double)* @compare_float.3}
!391 = !{i32 (double, double)* @compare_float.3}
!392 = distinct !{i32 (double, double)* @compare_float.3}
!393 = distinct !{i32 (double, double)* @compare_float.3}
!394 = !{i32 1, !268, i32 1, !27}
!395 = distinct !{i32 (double, double)* @compare_float.3}
!396 = !{!83, !397, i1 false, i2 1}
!397 = !{double 0xBFF4F1A6C7299FB6, double 0x3FF4F1A6C1CB3BFE}
!398 = !{!83, !399, i1 false, i2 1}
!399 = !{double 0xBFF4F1A6C1CB3BFE, double 0x3FF4F1A6C7299FB6}
!400 = !{i32 1, !273, i32 1, !38}
!401 = distinct !{i32 (double, double)* @compare_float.3}
!402 = !{!83, !403, i1 false, i2 1}
!403 = !{double 0xC00709D10CCD6DDC, double 0x3FF4F1A6C1CB3BFE}
!404 = !{!83, !405, i1 false, i2 1}
!405 = !{double 0xC00709D10A1E3C00, double 0x3FF4F1A6C7299FB6}
!406 = !{i32 1, !270, i32 1, !27}
!407 = distinct !{i32 (double, double)* @compare_float.3}
!408 = !{!83, !409, i1 false, i2 1}
!409 = !{double 0xC00709D10CCD6DDC, double 0xBFD0C15242980011}
!410 = !{!83, !411, i1 false, i2 1}
!411 = !{double 0xC00709D10A1E3C00, double 0xBFD0C1522D1E712F}
