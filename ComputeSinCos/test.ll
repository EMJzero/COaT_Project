; ModuleID = '/tmp/tmp.YGdUYetOFB/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"scalar(range(-1, 1))\00", section "llvm.metadata", !taffo.info !0
@.str.1 = private unnamed_addr constant [7 x i8] c"test.c\00", section "llvm.metadata", !taffo.info !2
@.str.6 = private unnamed_addr constant [32 x i8] c"Cos(Pi/6) = %f\0ASin(Pi/12) = %f\0A\00", align 1, !taffo.info !0
@llvm.global.annotations = appending global [2 x { i8*, i8*, i8*, i32, i8* }] [{ i8*, i8*, i8*, i32, i8* } { i8* bitcast (double (double)* @cos to i8*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 25, i8* null }, { i8*, i8*, i8*, i32, i8* } { i8* bitcast (double (double)* @sin to i8*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 46, i8* null }], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compare_float(double noundef %f1, double noundef %f2) #0 !taffo.initweight !10 !taffo.equivalentChild !11 !taffo.funinfo !12 {
entry:
  %0 = fmul double 0x41D0000000000000, %f2, !taffo.info !13
  %1 = fptosi double %0 to i32, !taffo.info !13
  %2 = fmul double 0x41D0000000000000, %f2, !taffo.info !13
  %3 = fptosi double %2 to i32, !taffo.info !13
  %4 = fmul double 0x41D0000000000000, %f1, !taffo.info !13
  %5 = fptosi double %4 to i32, !taffo.info !13
  %6 = fmul double 0x41D0000000000000, %f1, !taffo.info !13
  %7 = fptosi double %6 to i32, !taffo.info !13
  %8 = lshr i32 21, 1
  %sub.s2_30fixp = sub i32 %5, %8, !taffo.info !13, !taffo.constinfo !16
  %9 = icmp slt i32 %sub.s2_30fixp, %1, !taffo.info !19
  br i1 %9, label %if.then, label %if.else, !taffo.info !20, !taffo.initweight !21

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %10 = lshr i32 21, 1
  %add.s2_30fixp = add i32 %7, %10, !taffo.info !13, !taffo.constinfo !16
  %11 = icmp sgt i32 %add.s2_30fixp, %3, !taffo.info !19
  br i1 %11, label %if.then5, label %if.else6, !taffo.info !20, !taffo.initweight !21

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @cos(double noundef %x) #0 !taffo.initweight !22 !taffo.equivalentChild !23 !taffo.funinfo !24 {
entry:
  %0 = fmul double 0x41C0000000000000, %x, !taffo.info !25
  %1 = fptoui double %0 to i32, !taffo.info !25
  %2 = fmul double 0x41D0000000000000, %x, !taffo.info !25
  %3 = fptoui double %2 to i33, !taffo.info !25
  %4 = fmul double 0x41C0000000000000, %x, !taffo.info !25
  %5 = fptoui double %4 to i32, !taffo.info !25
  %6 = lshr i33 %3, 1, !taffo.info !25
  %7 = lshr i33 0, 4
  %8 = icmp slt i33 %6, %7, !taffo.info !28
  %9 = lshr i32 %1, 1, !taffo.info !25
  br i1 %8, label %if.then, label %if.end, !taffo.info !29, !taffo.initweight !21

if.then:                                          ; preds = %entry
  %fneg.u3_29fixp = sub i32 0, %5, !taffo.info !25
  %10 = lshr i32 %fneg.u3_29fixp, 1, !taffo.info !25
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %x.addr.0.s4_28fixp = phi i32 [ %10, %if.then ], [ %9, %entry ], !taffo.info !30
  %11 = call i32 @compare_float.3_fixp(i32 %x.addr.0.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !28, !taffo.constinfo !32
  %cmp2.flt = icmp sle i32 0, %11, !taffo.info !28, !taffo.initweight !21
  br i1 %cmp2.flt, label %if.then3, label %if.end6, !taffo.info !29, !taffo.initweight !35

if.then3:                                         ; preds = %if.end
  %12 = shl i32 %x.addr.0.s4_28fixp, 1, !taffo.info !30
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then3
  %x.addr.1.u3_29fixp = phi i32 [ %12, %if.then3 ], [ %16, %do.cond ], !taffo.info !25
  %13 = lshr i32 %x.addr.1.u3_29fixp, 1, !taffo.info !25
  %14 = lshr i32 1686629705, 2
  %sub.s4_28fixp = sub i32 %13, %14, !taffo.info !30, !taffo.constinfo !36
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %15 = call i32 @compare_float.3_fixp(i32 %sub.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !28, !taffo.constinfo !32
  %cmp5.flt = icmp sle i32 0, %15, !taffo.info !28, !taffo.initweight !21
  %16 = shl i32 %sub.s4_28fixp, 1, !taffo.info !30, !taffo.constinfo !36
  br i1 %cmp5.flt, label %do.body, label %do.end, !llvm.loop !37, !taffo.info !29, !taffo.initweight !35

do.end:                                           ; preds = %do.cond
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.end
  %x.addr.2.s4_28fixp = phi i32 [ %sub.s4_28fixp, %do.end ], [ %x.addr.0.s4_28fixp, %if.end ], !taffo.info !30
  %17 = call i32 @compare_float.3_fixp(i32 %x.addr.2.s4_28fixp, double 0x400921FB53C8D4F1), !taffo.info !28, !taffo.constinfo !39
  %cmp8.flt = icmp sle i32 0, %17, !taffo.info !28, !taffo.initweight !21
  br i1 %cmp8.flt, label %land.lhs.true, label %if.end38, !taffo.info !29, !taffo.initweight !35

land.lhs.true:                                    ; preds = %if.end6
  %18 = call i32 @compare_float.3_fixp(i32 %x.addr.2.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !28, !taffo.constinfo !32
  %cmp10.flt = icmp eq i32 -1, %18, !taffo.info !28, !taffo.initweight !21
  br i1 %cmp10.flt, label %if.then11, label %if.end38, !taffo.info !29, !taffo.initweight !35

if.then11:                                        ; preds = %land.lhs.true
  br label %return

if.end38:                                         ; preds = %if.end6, %land.lhs.true
  br label %return

return:                                           ; preds = %if.end38, %if.then11
  ret double undef
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sin(double noundef %x) #0 !taffo.initweight !22 !taffo.equivalentChild !42 !taffo.funinfo !24 {
entry:
  %0 = fmul double 0x41C0000000000000, %x, !taffo.info !25
  %1 = fptoui double %0 to i32, !taffo.info !25
  %2 = lshr i32 %1, 1, !taffo.info !25
  %3 = lshr i32 1686629705, 2
  %sub.s4_28fixp = sub i32 %2, %3, !taffo.info !30, !taffo.constinfo !36
  %call.s4_28fixp = call i32 @cos.7_s4_28fixp(i32 %sub.s4_28fixp), !taffo.info !43, !taffo.constinfo !44
  %4 = sitofp i32 %call.s4_28fixp to double, !taffo.info !43
  %5 = fdiv double %4, 0x41B0000000000000, !taffo.info !43, !taffo.constinfo !44
  ret double %5, !taffo.info !20, !taffo.initweight !45
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !46 !taffo.funinfo !46 !taffo.start !47 {
entry:
  %call.s7_25fixp = call i32 @cos.1_s7_25fixp(double 0x3FE0C15237DB38A1), !taffo.info !48, !taffo.constinfo !51, !taffo.target !54
  %0 = sitofp i32 %call.s7_25fixp to double, !taffo.info !48, !taffo.target !54
  %1 = fdiv double %0, 0x4180000000000000, !taffo.info !48, !taffo.constinfo !51, !taffo.target !54
  %call3.s7_25fixp = call i32 @sin.2_s7_25fixp(double 0x3FD0C15237DB38A1), !taffo.info !48, !taffo.constinfo !55, !taffo.target !58
  %2 = sitofp i32 %call3.s7_25fixp to double, !taffo.info !48, !taffo.target !58
  %3 = fdiv double %2, 0x4180000000000000, !taffo.info !48, !taffo.constinfo !55, !taffo.target !58
  %call7.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), double noundef %1, double noundef %3), !taffo.info !59, !taffo.initweight !21, !taffo.constinfo !60, !taffo.target !54
  ret i32 0
}

declare !taffo.initweight !61 !taffo.funinfo !62 i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @sin.2_s7_25fixp(double noundef %x) #0 !taffo.initweight !61 !taffo.funinfo !63 !taffo.sourceFunction !64 {
entry:
  %0 = fmul double 0x41E0000000000000, %x, !taffo.info !56
  %1 = fptoui double %0 to i32, !taffo.info !56
  %2 = lshr i32 %1, 2, !taffo.info !56
  %3 = lshr i32 1686629705, 1
  %sub.s3_29fixp = sub i32 %2, %3, !taffo.info !65, !taffo.constinfo !36
  %call.s7_25fixp = call i32 @cos.12_s7_25fixp(i32 %sub.s3_29fixp), !taffo.info !68, !taffo.constinfo !44
  ret i32 %call.s7_25fixp, !taffo.info !20, !taffo.initweight !45
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cos.1_s7_25fixp(double noundef %x) #0 !taffo.initweight !61 !taffo.funinfo !70 !taffo.sourceFunction !71 {
entry:
  %0 = fmul double 0x41E0000000000000, %x, !taffo.info !52
  %1 = fptoui double %0 to i32, !taffo.info !52
  %2 = fmul double 0x41E0000000000000, %x, !taffo.info !52
  %3 = fptoui double %2 to i32, !taffo.info !52
  %cmp = fcmp olt double %x, 0.000000e+00, !taffo.info !72, !taffo.initweight !22
  %4 = lshr i32 %1, 3, !taffo.info !52
  br i1 %cmp, label %if.then, label %if.end, !taffo.info !29, !taffo.initweight !21

if.then:                                          ; preds = %entry
  %5 = lshr i32 %3, 3, !taffo.info !52
  %fneg.s4_28fixp = sub i32 0, %5, !taffo.info !74
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %x.addr.0.s4_28fixp = phi i32 [ %fneg.s4_28fixp, %if.then ], [ %4, %entry ], !taffo.info !76
  %6 = call i32 @compare_float.3_fixp(i32 %x.addr.0.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !78, !taffo.constinfo !32
  %cmp2.flt = icmp sle i32 0, %6, !taffo.info !78, !taffo.initweight !21
  br i1 %cmp2.flt, label %if.then3, label %if.end6, !taffo.info !29, !taffo.initweight !35

if.then3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then3
  %x.addr.1.s4_28fixp = phi i32 [ %x.addr.0.s4_28fixp, %if.then3 ], [ %sub.s4_28fixp, %do.cond ], !taffo.info !76
  %7 = lshr i32 1686629705, 2
  %sub.s4_28fixp = sub i32 %x.addr.1.s4_28fixp, %7, !taffo.info !79, !taffo.constinfo !36
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %8 = call i32 @compare_float.3_fixp(i32 %sub.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !78, !taffo.constinfo !32
  %cmp5.flt = icmp sle i32 0, %8, !taffo.info !78, !taffo.initweight !21
  br i1 %cmp5.flt, label %do.body, label %do.end, !llvm.loop !81, !taffo.info !29, !taffo.initweight !35

do.end:                                           ; preds = %do.cond
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.end
  %x.addr.2.s4_28fixp = phi i32 [ %sub.s4_28fixp, %do.end ], [ %x.addr.0.s4_28fixp, %if.end ], !taffo.info !82
  %9 = call i32 @compare_float.3_fixp(i32 %x.addr.2.s4_28fixp, double 0x400921FB53C8D4F1), !taffo.info !78, !taffo.constinfo !39
  %cmp8.flt = icmp sle i32 0, %9, !taffo.info !78, !taffo.initweight !21
  br i1 %cmp8.flt, label %land.lhs.true, label %if.end38, !taffo.info !29, !taffo.initweight !35

land.lhs.true:                                    ; preds = %if.end6
  %10 = call i32 @compare_float.3_fixp(i32 %x.addr.2.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !78, !taffo.constinfo !32
  %cmp10.flt = icmp eq i32 -1, %10, !taffo.info !78, !taffo.initweight !21
  br i1 %cmp10.flt, label %if.then11, label %if.end38, !taffo.info !29, !taffo.initweight !35

if.then11:                                        ; preds = %land.lhs.true
  %11 = ashr i32 %x.addr.2.s4_28fixp, 2, !taffo.info !82
  %12 = lshr i32 1686629711, 3
  %sub12.s6_26fixp = sub i32 %11, %12, !taffo.info !84, !taffo.constinfo !87
  %13 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !84
  %14 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !84
  %15 = mul i64 %13, %14, !taffo.info !88
  %16 = lshr i64 %15, 25, !taffo.info !88
  %mul.u5_27fixp = trunc i64 %16 to i32, !taffo.info !91
  %div.s5_27fixp = sdiv i32 %mul.u5_27fixp, 2, !taffo.info !93, !taffo.constinfo !96
  %17 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !84
  %18 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !84
  %19 = mul i64 %17, %18, !taffo.info !99
  %20 = ashr i64 %19, 26, !taffo.info !99
  %mul13.s6_26fixp = trunc i64 %20 to i32, !taffo.info !101
  %21 = sext i32 %mul13.s6_26fixp to i64, !taffo.info !101
  %22 = shl i64 %21, 3, !taffo.info !101
  %23 = zext i32 12 to i64
  %24 = sdiv i64 %22, %23, !taffo.info !102, !taffo.constinfo !105
  %div14.s3_29fixp = trunc i64 %24 to i32, !taffo.info !108
  %25 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !84
  %26 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !84
  %27 = mul i64 %25, %26, !taffo.info !99
  %28 = ashr i64 %27, 26, !taffo.info !99
  %mul15.s6_26fixp = trunc i64 %28 to i32, !taffo.info !101
  %29 = sext i32 %mul15.s6_26fixp to i64, !taffo.info !101
  %30 = shl i64 %29, 4, !taffo.info !101
  %31 = zext i32 30 to i64
  %32 = sdiv i64 %30, %31, !taffo.info !109, !taffo.constinfo !112
  %div16.s2_30fixp = trunc i64 %32 to i32, !taffo.info !115
  %33 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !84
  %34 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !84
  %35 = mul i64 %33, %34, !taffo.info !99
  %36 = ashr i64 %35, 26, !taffo.info !99
  %mul17.s6_26fixp = trunc i64 %36 to i32, !taffo.info !101
  %37 = sext i32 %mul17.s6_26fixp to i64, !taffo.info !101
  %38 = shl i64 %37, 4, !taffo.info !101
  %39 = zext i32 56 to i64
  %40 = sdiv i64 %38, %39, !taffo.info !116, !taffo.constinfo !118
  %div18.s2_30fixp = trunc i64 %40 to i32, !taffo.info !121
  %41 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !84
  %42 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !84
  %43 = mul i64 %41, %42, !taffo.info !99
  %44 = ashr i64 %43, 26, !taffo.info !99
  %mul19.s6_26fixp = trunc i64 %44 to i32, !taffo.info !101
  %45 = sext i32 %mul19.s6_26fixp to i64, !taffo.info !101
  %46 = shl i64 %45, 4, !taffo.info !101
  %47 = zext i32 90 to i64
  %48 = sdiv i64 %46, %47, !taffo.info !122, !taffo.constinfo !124
  %div20.s2_30fixp = trunc i64 %48 to i32, !taffo.info !127
  %49 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !84
  %50 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !84
  %51 = mul i64 %49, %50, !taffo.info !99
  %52 = ashr i64 %51, 26, !taffo.info !99
  %mul21.s6_26fixp = trunc i64 %52 to i32, !taffo.info !101
  %53 = sext i32 %mul21.s6_26fixp to i64, !taffo.info !101
  %54 = shl i64 %53, 4, !taffo.info !101
  %55 = zext i32 132 to i64
  %56 = sdiv i64 %54, %55, !taffo.info !128, !taffo.constinfo !130
  %div22.s2_30fixp = trunc i64 %56 to i32, !taffo.info !133
  %57 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !84
  %58 = sext i32 %sub12.s6_26fixp to i64, !taffo.info !84
  %59 = mul i64 %57, %58, !taffo.info !99
  %60 = ashr i64 %59, 26, !taffo.info !99
  %mul23.s6_26fixp = trunc i64 %60 to i32, !taffo.info !101
  %61 = sext i32 %mul23.s6_26fixp to i64, !taffo.info !101
  %62 = shl i64 %61, 5, !taffo.info !101
  %63 = zext i32 182 to i64
  %64 = udiv i64 %62, %63, !taffo.info !134, !taffo.constinfo !137
  %div24.u1_31fixp = trunc i64 %64 to i32, !taffo.info !140
  %sub25.u1_31fixp = sub i32 -2147483648, %div24.u1_31fixp, !taffo.info !142, !taffo.constinfo !144
  %neg.s2_30fixp = sub i32 0, %div22.s2_30fixp, !taffo.info !147
  %65 = lshr i32 -2147483648, 1
  %66 = sext i32 %neg.s2_30fixp to i64, !taffo.info !147
  %67 = zext i32 %sub25.u1_31fixp to i64, !taffo.info !142
  %68 = mul i64 %66, %67, !taffo.info !149
  %69 = ashr i64 %68, 31
  %70 = trunc i64 %69 to i32
  %s2_30fixp8 = add i32 %70, %65, !taffo.info !152
  %neg28.s2_30fixp = sub i32 0, %div20.s2_30fixp, !taffo.info !153
  %71 = lshr i32 -2147483648, 1
  %72 = sext i32 %neg28.s2_30fixp to i64, !taffo.info !153
  %73 = sext i32 %s2_30fixp8 to i64, !taffo.info !152
  %74 = mul i64 %72, %73, !taffo.info !155
  %75 = ashr i64 %74, 30
  %76 = trunc i64 %75 to i32
  %s2_30fixp10 = add i32 %76, %71, !taffo.info !158
  %neg30.s2_30fixp = sub i32 0, %div18.s2_30fixp, !taffo.info !159
  %77 = lshr i32 -2147483648, 1
  %78 = sext i32 %neg30.s2_30fixp to i64, !taffo.info !159
  %79 = sext i32 %s2_30fixp10 to i64, !taffo.info !158
  %80 = mul i64 %78, %79, !taffo.info !161
  %81 = ashr i64 %80, 30
  %82 = trunc i64 %81 to i32
  %s2_30fixp11 = add i32 %82, %77, !taffo.info !163
  %neg32.s2_30fixp = sub i32 0, %div16.s2_30fixp, !taffo.info !164
  %83 = lshr i32 -2147483648, 1
  %84 = sext i32 %neg32.s2_30fixp to i64, !taffo.info !164
  %85 = sext i32 %s2_30fixp11 to i64, !taffo.info !163
  %86 = mul i64 %84, %85, !taffo.info !166
  %87 = ashr i64 %86, 30
  %88 = trunc i64 %87 to i32
  %s2_30fixp12 = add i32 %88, %83, !taffo.info !168
  %neg34.s3_29fixp = sub i32 0, %div14.s3_29fixp, !taffo.info !169
  %89 = lshr i32 -2147483648, 2
  %90 = sext i32 %neg34.s3_29fixp to i64, !taffo.info !169
  %91 = sext i32 %s2_30fixp12 to i64, !taffo.info !168
  %92 = mul i64 %90, %91, !taffo.info !171
  %93 = ashr i64 %92, 30
  %94 = trunc i64 %93 to i32
  %s3_29fixp13 = add i32 %94, %89, !taffo.info !174
  %95 = ashr i32 %div.s5_27fixp, 1, !taffo.info !93, !taffo.constinfo !96
  %neg36.s6_26fixp = sub i32 0, %95, !taffo.info !175
  %96 = lshr i32 -2147483648, 5
  %97 = sext i32 %neg36.s6_26fixp to i64, !taffo.info !175
  %98 = sext i32 %s3_29fixp13 to i64, !taffo.info !174
  %99 = mul i64 %97, %98, !taffo.info !177
  %100 = ashr i64 %99, 29
  %101 = trunc i64 %100 to i32
  %s6_26fixp = add i32 %101, %96, !taffo.info !180
  %102 = sext i32 -1 to i64
  %103 = sext i32 %s6_26fixp to i64, !taffo.info !180
  %104 = mul i64 %102, %103, !taffo.info !181, !taffo.constinfo !184
  %105 = ashr i64 %104, 1, !taffo.info !181, !taffo.constinfo !184
  %mul37.s7_25fixp = trunc i64 %105 to i32, !taffo.info !187
  br label %return

if.end38:                                         ; preds = %land.lhs.true, %if.end6
  %106 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !82
  %107 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !82
  %108 = mul i64 %106, %107, !taffo.info !188
  %109 = lshr i64 %108, 30, !taffo.info !188
  %mul39.u6_26fixp = trunc i64 %109 to i32, !taffo.info !191
  %div40.s6_26fixp = sdiv i32 %mul39.u6_26fixp, 2, !taffo.info !193, !taffo.constinfo !96
  %110 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !82
  %111 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !82
  %112 = mul i64 %110, %111, !taffo.info !188
  %113 = lshr i64 %112, 30, !taffo.info !188
  %mul41.u6_26fixp = trunc i64 %113 to i32, !taffo.info !191
  %114 = zext i32 %mul41.u6_26fixp to i64, !taffo.info !191
  %115 = shl i64 %114, 2, !taffo.info !191
  %116 = zext i32 12 to i64
  %117 = sdiv i64 %115, %116, !taffo.info !195, !taffo.constinfo !105
  %div42.s4_28fixp = trunc i64 %117 to i32, !taffo.info !198
  %118 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !82
  %119 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !82
  %120 = mul i64 %118, %119, !taffo.info !188
  %121 = lshr i64 %120, 30, !taffo.info !188
  %mul43.u6_26fixp = trunc i64 %121 to i32, !taffo.info !191
  %122 = zext i32 %mul43.u6_26fixp to i64, !taffo.info !191
  %123 = shl i64 %122, 3, !taffo.info !191
  %124 = zext i32 30 to i64
  %125 = sdiv i64 %123, %124, !taffo.info !199, !taffo.constinfo !112
  %div44.s3_29fixp = trunc i64 %125 to i32, !taffo.info !201
  %126 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !82
  %127 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !82
  %128 = mul i64 %126, %127, !taffo.info !188
  %129 = lshr i64 %128, 30, !taffo.info !188
  %mul45.u6_26fixp = trunc i64 %129 to i32, !taffo.info !191
  %130 = zext i32 %mul45.u6_26fixp to i64, !taffo.info !191
  %131 = shl i64 %130, 4, !taffo.info !191
  %132 = zext i32 56 to i64
  %133 = sdiv i64 %131, %132, !taffo.info !202, !taffo.constinfo !118
  %div46.s2_30fixp = trunc i64 %133 to i32, !taffo.info !204
  %134 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !82
  %135 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !82
  %136 = mul i64 %134, %135, !taffo.info !188
  %137 = lshr i64 %136, 30, !taffo.info !188
  %mul47.u6_26fixp = trunc i64 %137 to i32, !taffo.info !191
  %138 = zext i32 %mul47.u6_26fixp to i64, !taffo.info !191
  %139 = shl i64 %138, 4, !taffo.info !191
  %140 = zext i32 90 to i64
  %141 = sdiv i64 %139, %140, !taffo.info !205, !taffo.constinfo !124
  %div48.s2_30fixp = trunc i64 %141 to i32, !taffo.info !207
  %142 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !82
  %143 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !82
  %144 = mul i64 %142, %143, !taffo.info !188
  %145 = lshr i64 %144, 30, !taffo.info !188
  %mul49.u6_26fixp = trunc i64 %145 to i32, !taffo.info !191
  %146 = zext i32 %mul49.u6_26fixp to i64, !taffo.info !191
  %147 = shl i64 %146, 4, !taffo.info !191
  %148 = zext i32 132 to i64
  %149 = sdiv i64 %147, %148, !taffo.info !208, !taffo.constinfo !130
  %div50.s2_30fixp = trunc i64 %149 to i32, !taffo.info !210
  %150 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !82
  %151 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !82
  %152 = mul i64 %150, %151, !taffo.info !188
  %153 = lshr i64 %152, 30, !taffo.info !188
  %mul51.u6_26fixp = trunc i64 %153 to i32, !taffo.info !191
  %154 = zext i32 %mul51.u6_26fixp to i64, !taffo.info !191
  %155 = shl i64 %154, 5, !taffo.info !191
  %156 = zext i32 182 to i64
  %157 = udiv i64 %155, %156, !taffo.info !211, !taffo.constinfo !137
  %div52.u1_31fixp = trunc i64 %157 to i32, !taffo.info !213
  %sub53.u1_31fixp = sub i32 -2147483648, %div52.u1_31fixp, !taffo.info !214, !taffo.constinfo !144
  %neg55.s2_30fixp = sub i32 0, %div50.s2_30fixp, !taffo.info !216
  %158 = lshr i32 -2147483648, 1
  %159 = sext i32 %neg55.s2_30fixp to i64, !taffo.info !216
  %160 = zext i32 %sub53.u1_31fixp to i64, !taffo.info !214
  %161 = mul i64 %159, %160, !taffo.info !218
  %162 = ashr i64 %161, 31
  %163 = trunc i64 %162 to i32
  %s2_30fixp = add i32 %163, %158, !taffo.info !220
  %neg57.s2_30fixp = sub i32 0, %div48.s2_30fixp, !taffo.info !221
  %164 = lshr i32 -2147483648, 1
  %165 = sext i32 %neg57.s2_30fixp to i64, !taffo.info !221
  %166 = sext i32 %s2_30fixp to i64, !taffo.info !220
  %167 = mul i64 %165, %166, !taffo.info !223
  %168 = ashr i64 %167, 30
  %169 = trunc i64 %168 to i32
  %s2_30fixp7 = add i32 %169, %164, !taffo.info !225
  %neg59.s2_30fixp = sub i32 0, %div46.s2_30fixp, !taffo.info !226
  %170 = lshr i32 -2147483648, 1
  %171 = sext i32 %neg59.s2_30fixp to i64, !taffo.info !226
  %172 = sext i32 %s2_30fixp7 to i64, !taffo.info !225
  %173 = mul i64 %171, %172, !taffo.info !228
  %174 = ashr i64 %173, 30
  %175 = trunc i64 %174 to i32
  %s2_30fixp9 = add i32 %175, %170, !taffo.info !230
  %neg61.s3_29fixp = sub i32 0, %div44.s3_29fixp, !taffo.info !231
  %176 = lshr i32 -2147483648, 2
  %177 = sext i32 %neg61.s3_29fixp to i64, !taffo.info !231
  %178 = sext i32 %s2_30fixp9 to i64, !taffo.info !230
  %179 = mul i64 %177, %178, !taffo.info !233
  %180 = ashr i64 %179, 30
  %181 = trunc i64 %180 to i32
  %s3_29fixp = add i32 %181, %176, !taffo.info !235
  %neg63.s4_28fixp = sub i32 0, %div42.s4_28fixp, !taffo.info !236
  %182 = lshr i32 -2147483648, 3
  %183 = sext i32 %neg63.s4_28fixp to i64, !taffo.info !236
  %184 = sext i32 %s3_29fixp to i64, !taffo.info !235
  %185 = mul i64 %183, %184, !taffo.info !238
  %186 = ashr i64 %185, 29
  %187 = trunc i64 %186 to i32
  %s4_28fixp = add i32 %187, %182, !taffo.info !241
  %188 = ashr i32 %div40.s6_26fixp, 1, !taffo.info !193, !taffo.constinfo !96
  %neg65.s7_25fixp = sub i32 0, %188, !taffo.info !242
  %189 = lshr i32 -2147483648, 6
  %190 = sext i32 %neg65.s7_25fixp to i64, !taffo.info !242
  %191 = sext i32 %s4_28fixp to i64, !taffo.info !241
  %192 = mul i64 %190, %191, !taffo.info !244
  %193 = ashr i64 %192, 28
  %194 = trunc i64 %193 to i32
  %s7_25fixp = add i32 %194, %189, !taffo.info !68
  br label %return

return:                                           ; preds = %if.end38, %if.then11
  %retval.0.s7_25fixp = phi i32 [ %mul37.s7_25fixp, %if.then11 ], [ %s7_25fixp, %if.end38 ], !taffo.info !68
  ret i32 %retval.0.s7_25fixp
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.3_fixp(i32 noundef %f1.s4_28fixp, double noundef %f2) #0 !taffo.initweight !246 !taffo.equivalentChild !247 !taffo.funinfo !248 !taffo.sourceFunction !249 {
entry:
  %0 = fmul double 0x41B0000000000000, %f2
  %1 = fptosi double %0 to i32
  %2 = fmul double 0x41B0000000000000, %f2
  %3 = fptosi double %2 to i32
  %4 = lshr i32 21, 3
  %sub.s4_28fixp = sub i32 %f1.s4_28fixp, %4, !taffo.info !43, !taffo.constinfo !16
  %5 = icmp slt i32 %sub.s4_28fixp, %3, !taffo.info !19
  br i1 %5, label %if.then, label %if.else, !taffo.info !20, !taffo.initweight !21

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %6 = lshr i32 21, 3
  %add.s4_28fixp = add i32 %f1.s4_28fixp, %6, !taffo.info !43, !taffo.constinfo !16
  %7 = icmp sgt i32 %add.s4_28fixp, %1, !taffo.info !19
  br i1 %7, label %if.then5, label %if.else6, !taffo.info !20, !taffo.initweight !21

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cos.7_s4_28fixp(i32 noundef %x.s4_28fixp) #0 !taffo.initweight !21 !taffo.funinfo !250 !taffo.sourceFunction !71 {
entry:
  %0 = lshr i32 0, 4
  %1 = icmp slt i32 %x.s4_28fixp, %0, !taffo.info !28
  br i1 %1, label %if.then, label %if.end, !taffo.info !29, !taffo.initweight !21

if.then:                                          ; preds = %entry
  %2 = shl i32 %x.s4_28fixp, 1, !taffo.info !30
  %fneg.u3_29fixp = sub i32 0, %2, !taffo.info !25
  %3 = lshr i32 %fneg.u3_29fixp, 1, !taffo.info !25
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %x.addr.0.s4_28fixp = phi i32 [ %3, %if.then ], [ %x.s4_28fixp, %entry ], !taffo.info !30
  %4 = call i32 @compare_float.6.16_fixp(i32 %x.addr.0.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !28, !taffo.constinfo !32
  %cmp2.flt = icmp sle i32 0, %4, !taffo.info !28, !taffo.initweight !21
  br i1 %cmp2.flt, label %if.then3, label %if.end6, !taffo.info !29, !taffo.initweight !35

if.then3:                                         ; preds = %if.end
  %5 = shl i32 %x.addr.0.s4_28fixp, 1, !taffo.info !30
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then3
  %x.addr.1.u3_29fixp = phi i32 [ %5, %if.then3 ], [ %9, %do.cond ], !taffo.info !25
  %6 = lshr i32 %x.addr.1.u3_29fixp, 1, !taffo.info !25
  %7 = lshr i32 1686629705, 2
  %sub.s4_28fixp = sub i32 %6, %7, !taffo.info !30, !taffo.constinfo !36
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %8 = call i32 @compare_float.5.15_fixp(i32 %sub.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !28, !taffo.constinfo !32
  %cmp5.flt = icmp sle i32 0, %8, !taffo.info !28, !taffo.initweight !21
  %9 = shl i32 %sub.s4_28fixp, 1, !taffo.info !30, !taffo.constinfo !36
  br i1 %cmp5.flt, label %do.body, label %do.end, !llvm.loop !251, !taffo.info !29, !taffo.initweight !35

do.end:                                           ; preds = %do.cond
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.end
  %x.addr.2.s4_28fixp = phi i32 [ %sub.s4_28fixp, %do.end ], [ %x.addr.0.s4_28fixp, %if.end ], !taffo.info !30
  %10 = call i32 @compare_float.4.14_fixp(i32 %x.addr.2.s4_28fixp, double 0x400921FB53C8D4F1), !taffo.info !28, !taffo.constinfo !39
  %cmp8.flt = icmp sle i32 0, %10, !taffo.info !28, !taffo.initweight !21
  br i1 %cmp8.flt, label %land.lhs.true, label %if.end38, !taffo.info !29, !taffo.initweight !35

land.lhs.true:                                    ; preds = %if.end6
  %11 = call i32 @compare_float.3.13_fixp(i32 %x.addr.2.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !28, !taffo.constinfo !32
  %cmp10.flt = icmp eq i32 -1, %11, !taffo.info !28, !taffo.initweight !21
  br i1 %cmp10.flt, label %if.then11, label %if.end38, !taffo.info !29, !taffo.initweight !35

if.then11:                                        ; preds = %land.lhs.true
  %12 = shl i32 %x.addr.2.s4_28fixp, 1, !taffo.info !30
  %sub12.u3_29fixp = sub i32 %12, 1686629711, !taffo.info !25, !taffo.constinfo !87
  %13 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !25
  %14 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !25
  %15 = mul i64 %13, %14, !taffo.info !252
  %16 = lshr i64 %15, 29, !taffo.info !252
  %mul.u3_29fixp = trunc i64 %16 to i32, !taffo.info !25
  %div.u3_29fixp = udiv i32 %mul.u3_29fixp, 2, !taffo.info !25, !taffo.constinfo !96
  %17 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !25
  %18 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !25
  %19 = mul i64 %17, %18, !taffo.info !252
  %20 = lshr i64 %19, 29, !taffo.info !252
  %mul13.u3_29fixp = trunc i64 %20 to i32, !taffo.info !25
  %div14.u3_29fixp = udiv i32 %mul13.u3_29fixp, 12, !taffo.info !25, !taffo.constinfo !105
  %21 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !25
  %22 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !25
  %23 = mul i64 %21, %22, !taffo.info !252
  %24 = lshr i64 %23, 29, !taffo.info !252
  %mul15.u3_29fixp = trunc i64 %24 to i32, !taffo.info !25
  %div16.u3_29fixp = udiv i32 %mul15.u3_29fixp, 30, !taffo.info !25, !taffo.constinfo !112
  %25 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !25
  %26 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !25
  %27 = mul i64 %25, %26, !taffo.info !252
  %28 = lshr i64 %27, 29, !taffo.info !252
  %mul17.u3_29fixp = trunc i64 %28 to i32, !taffo.info !25
  %div18.u3_29fixp = udiv i32 %mul17.u3_29fixp, 56, !taffo.info !25, !taffo.constinfo !118
  %29 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !25
  %30 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !25
  %31 = mul i64 %29, %30, !taffo.info !252
  %32 = lshr i64 %31, 29, !taffo.info !252
  %mul19.u3_29fixp = trunc i64 %32 to i32, !taffo.info !25
  %div20.u3_29fixp = udiv i32 %mul19.u3_29fixp, 90, !taffo.info !25, !taffo.constinfo !124
  %33 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !25
  %34 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !25
  %35 = mul i64 %33, %34, !taffo.info !252
  %36 = lshr i64 %35, 29, !taffo.info !252
  %mul21.u3_29fixp = trunc i64 %36 to i32, !taffo.info !25
  %div22.u3_29fixp = udiv i32 %mul21.u3_29fixp, 132, !taffo.info !25, !taffo.constinfo !130
  %37 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !25
  %38 = zext i32 %sub12.u3_29fixp to i64, !taffo.info !25
  %39 = mul i64 %37, %38, !taffo.info !252
  %40 = lshr i64 %39, 29, !taffo.info !252
  %mul23.u3_29fixp = trunc i64 %40 to i32, !taffo.info !25
  %div24.u3_29fixp = udiv i32 %mul23.u3_29fixp, 182, !taffo.info !25, !taffo.constinfo !137
  %41 = lshr i32 -2147483648, 2
  %sub25.u3_29fixp = sub i32 %41, %div24.u3_29fixp, !taffo.info !25, !taffo.constinfo !144
  %neg.u3_29fixp = sub i32 0, %div22.u3_29fixp, !taffo.info !25
  %42 = lshr i32 -2147483648, 2
  %43 = zext i32 %neg.u3_29fixp to i64, !taffo.info !25
  %44 = zext i32 %sub25.u3_29fixp to i64, !taffo.info !25
  %45 = mul i64 %43, %44, !taffo.info !252
  %46 = lshr i64 %45, 29
  %47 = trunc i64 %46 to i32
  %u3_29fixp7 = add i32 %47, %42, !taffo.info !25
  %neg28.u3_29fixp = sub i32 0, %div20.u3_29fixp, !taffo.info !25
  %48 = lshr i32 -2147483648, 2
  %49 = zext i32 %neg28.u3_29fixp to i64, !taffo.info !25
  %50 = zext i32 %u3_29fixp7 to i64, !taffo.info !25
  %51 = mul i64 %49, %50, !taffo.info !252
  %52 = lshr i64 %51, 29
  %53 = trunc i64 %52 to i32
  %u3_29fixp9 = add i32 %53, %48, !taffo.info !25
  %neg30.u3_29fixp = sub i32 0, %div18.u3_29fixp, !taffo.info !25
  %54 = lshr i32 -2147483648, 2
  %55 = zext i32 %neg30.u3_29fixp to i64, !taffo.info !25
  %56 = zext i32 %u3_29fixp9 to i64, !taffo.info !25
  %57 = mul i64 %55, %56, !taffo.info !252
  %58 = lshr i64 %57, 29
  %59 = trunc i64 %58 to i32
  %u3_29fixp11 = add i32 %59, %54, !taffo.info !25
  %neg32.u3_29fixp = sub i32 0, %div16.u3_29fixp, !taffo.info !25
  %60 = lshr i32 -2147483648, 2
  %61 = zext i32 %neg32.u3_29fixp to i64, !taffo.info !25
  %62 = zext i32 %u3_29fixp11 to i64, !taffo.info !25
  %63 = mul i64 %61, %62, !taffo.info !252
  %64 = lshr i64 %63, 29
  %65 = trunc i64 %64 to i32
  %u3_29fixp13 = add i32 %65, %60, !taffo.info !25
  %neg34.u3_29fixp = sub i32 0, %div14.u3_29fixp, !taffo.info !25
  %66 = lshr i32 -2147483648, 2
  %67 = zext i32 %neg34.u3_29fixp to i64, !taffo.info !25
  %68 = zext i32 %u3_29fixp13 to i64, !taffo.info !25
  %69 = mul i64 %67, %68, !taffo.info !252
  %70 = lshr i64 %69, 29
  %71 = trunc i64 %70 to i32
  %u3_29fixp15 = add i32 %71, %66, !taffo.info !25
  %neg36.u3_29fixp = sub i32 0, %div.u3_29fixp, !taffo.info !25
  %72 = lshr i32 -2147483648, 2
  %73 = zext i32 %neg36.u3_29fixp to i64, !taffo.info !25
  %74 = zext i32 %u3_29fixp15 to i64, !taffo.info !25
  %75 = mul i64 %73, %74, !taffo.info !252
  %76 = lshr i64 %75, 29
  %77 = trunc i64 %76 to i32
  %u3_29fixp17 = add i32 %77, %72, !taffo.info !25
  %78 = sext i32 -1 to i64
  %79 = zext i32 %u3_29fixp17 to i64, !taffo.info !25
  %80 = mul i64 %78, %79, !taffo.info !254, !taffo.constinfo !184
  %mul37.u3_29fixp = trunc i64 %80 to i32, !taffo.info !25
  br label %return

if.end38:                                         ; preds = %if.end6, %land.lhs.true
  %81 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !30
  %82 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !30
  %83 = mul i64 %81, %82, !taffo.info !256
  %84 = lshr i64 %83, 27, !taffo.info !256
  %mul39.u3_29fixp = trunc i64 %84 to i32, !taffo.info !25
  %div40.u3_29fixp = udiv i32 %mul39.u3_29fixp, 2, !taffo.info !25, !taffo.constinfo !96
  %85 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !30
  %86 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !30
  %87 = mul i64 %85, %86, !taffo.info !256
  %88 = lshr i64 %87, 27, !taffo.info !256
  %mul41.u3_29fixp = trunc i64 %88 to i32, !taffo.info !25
  %div42.u3_29fixp = udiv i32 %mul41.u3_29fixp, 12, !taffo.info !25, !taffo.constinfo !105
  %89 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !30
  %90 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !30
  %91 = mul i64 %89, %90, !taffo.info !256
  %92 = lshr i64 %91, 27, !taffo.info !256
  %mul43.u3_29fixp = trunc i64 %92 to i32, !taffo.info !25
  %div44.u3_29fixp = udiv i32 %mul43.u3_29fixp, 30, !taffo.info !25, !taffo.constinfo !112
  %93 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !30
  %94 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !30
  %95 = mul i64 %93, %94, !taffo.info !256
  %96 = lshr i64 %95, 27, !taffo.info !256
  %mul45.u3_29fixp = trunc i64 %96 to i32, !taffo.info !25
  %div46.u3_29fixp = udiv i32 %mul45.u3_29fixp, 56, !taffo.info !25, !taffo.constinfo !118
  %97 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !30
  %98 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !30
  %99 = mul i64 %97, %98, !taffo.info !256
  %100 = lshr i64 %99, 27, !taffo.info !256
  %mul47.u3_29fixp = trunc i64 %100 to i32, !taffo.info !25
  %div48.u3_29fixp = udiv i32 %mul47.u3_29fixp, 90, !taffo.info !25, !taffo.constinfo !124
  %101 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !30
  %102 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !30
  %103 = mul i64 %101, %102, !taffo.info !256
  %104 = lshr i64 %103, 27, !taffo.info !256
  %mul49.u3_29fixp = trunc i64 %104 to i32, !taffo.info !25
  %div50.u3_29fixp = udiv i32 %mul49.u3_29fixp, 132, !taffo.info !25, !taffo.constinfo !130
  %105 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !30
  %106 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !30
  %107 = mul i64 %105, %106, !taffo.info !256
  %108 = lshr i64 %107, 27, !taffo.info !256
  %mul51.u3_29fixp = trunc i64 %108 to i32, !taffo.info !25
  %div52.u3_29fixp = udiv i32 %mul51.u3_29fixp, 182, !taffo.info !25, !taffo.constinfo !137
  %109 = lshr i32 -2147483648, 2
  %sub53.u3_29fixp = sub i32 %109, %div52.u3_29fixp, !taffo.info !25, !taffo.constinfo !144
  %neg55.u3_29fixp = sub i32 0, %div50.u3_29fixp, !taffo.info !25
  %110 = lshr i32 -2147483648, 2
  %111 = zext i32 %neg55.u3_29fixp to i64, !taffo.info !25
  %112 = zext i32 %sub53.u3_29fixp to i64, !taffo.info !25
  %113 = mul i64 %111, %112, !taffo.info !252
  %114 = lshr i64 %113, 29
  %115 = trunc i64 %114 to i32
  %u3_29fixp = add i32 %115, %110, !taffo.info !25
  %neg57.u3_29fixp = sub i32 0, %div48.u3_29fixp, !taffo.info !25
  %116 = lshr i32 -2147483648, 2
  %117 = zext i32 %neg57.u3_29fixp to i64, !taffo.info !25
  %118 = zext i32 %u3_29fixp to i64, !taffo.info !25
  %119 = mul i64 %117, %118, !taffo.info !252
  %120 = lshr i64 %119, 29
  %121 = trunc i64 %120 to i32
  %u3_29fixp8 = add i32 %121, %116, !taffo.info !25
  %neg59.u3_29fixp = sub i32 0, %div46.u3_29fixp, !taffo.info !25
  %122 = lshr i32 -2147483648, 2
  %123 = zext i32 %neg59.u3_29fixp to i64, !taffo.info !25
  %124 = zext i32 %u3_29fixp8 to i64, !taffo.info !25
  %125 = mul i64 %123, %124, !taffo.info !252
  %126 = lshr i64 %125, 29
  %127 = trunc i64 %126 to i32
  %u3_29fixp10 = add i32 %127, %122, !taffo.info !25
  %neg61.u3_29fixp = sub i32 0, %div44.u3_29fixp, !taffo.info !25
  %128 = lshr i32 -2147483648, 2
  %129 = zext i32 %neg61.u3_29fixp to i64, !taffo.info !25
  %130 = zext i32 %u3_29fixp10 to i64, !taffo.info !25
  %131 = mul i64 %129, %130, !taffo.info !252
  %132 = lshr i64 %131, 29
  %133 = trunc i64 %132 to i32
  %u3_29fixp12 = add i32 %133, %128, !taffo.info !25
  %neg63.u3_29fixp = sub i32 0, %div42.u3_29fixp, !taffo.info !25
  %134 = lshr i32 -2147483648, 2
  %135 = zext i32 %neg63.u3_29fixp to i64, !taffo.info !25
  %136 = zext i32 %u3_29fixp12 to i64, !taffo.info !25
  %137 = mul i64 %135, %136, !taffo.info !252
  %138 = lshr i64 %137, 29
  %139 = trunc i64 %138 to i32
  %u3_29fixp14 = add i32 %139, %134, !taffo.info !25
  %neg65.u3_29fixp = sub i32 0, %div40.u3_29fixp, !taffo.info !25
  %140 = lshr i32 -2147483648, 2
  %141 = zext i32 %neg65.u3_29fixp to i64, !taffo.info !25
  %142 = zext i32 %u3_29fixp14 to i64, !taffo.info !25
  %143 = mul i64 %141, %142, !taffo.info !252
  %144 = lshr i64 %143, 29
  %145 = trunc i64 %144 to i32
  %u3_29fixp16 = add i32 %145, %140, !taffo.info !25
  br label %return

return:                                           ; preds = %if.end38, %if.then11
  %retval.0.u3_29fixp = phi i32 [ %mul37.u3_29fixp, %if.then11 ], [ %u3_29fixp16, %if.end38 ], !taffo.info !28
  %146 = lshr i32 %retval.0.u3_29fixp, 1, !taffo.info !28
  ret i32 %146
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @cos.12_s7_25fixp(i32 noundef %x.s3_29fixp) #0 !taffo.initweight !21 !taffo.funinfo !257 !taffo.sourceFunction !71 {
entry:
  %0 = lshr i32 0, 3
  %1 = icmp slt i32 %x.s3_29fixp, %0, !taffo.info !258
  %2 = ashr i32 %x.s3_29fixp, 1, !taffo.info !65
  br i1 %1, label %if.then, label %if.end, !taffo.info !29, !taffo.initweight !21

if.then:                                          ; preds = %entry
  %fneg.s3_29fixp = sub i32 0, %x.s3_29fixp, !taffo.info !259
  %3 = ashr i32 %fneg.s3_29fixp, 1, !taffo.info !259
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %x.addr.0.s4_28fixp = phi i32 [ %3, %if.then ], [ %2, %entry ], !taffo.info !261
  %4 = call i32 @compare_float.6.20_fixp(i32 %x.addr.0.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !78, !taffo.constinfo !32
  %cmp2.flt = icmp sle i32 0, %4, !taffo.info !78, !taffo.initweight !21
  br i1 %cmp2.flt, label %if.then3, label %if.end6, !taffo.info !29, !taffo.initweight !35

if.then3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then3
  %x.addr.1.s4_28fixp = phi i32 [ %x.addr.0.s4_28fixp, %if.then3 ], [ %sub.s4_28fixp, %do.cond ], !taffo.info !261
  %5 = lshr i32 1686629705, 2
  %sub.s4_28fixp = sub i32 %x.addr.1.s4_28fixp, %5, !taffo.info !263, !taffo.constinfo !36
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = call i32 @compare_float.5.19_fixp(i32 %sub.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !78, !taffo.constinfo !32
  %cmp5.flt = icmp sle i32 0, %6, !taffo.info !78, !taffo.initweight !21
  br i1 %cmp5.flt, label %do.body, label %do.end, !llvm.loop !265, !taffo.info !29, !taffo.initweight !35

do.end:                                           ; preds = %do.cond
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.end
  %x.addr.2.s4_28fixp = phi i32 [ %sub.s4_28fixp, %do.end ], [ %x.addr.0.s4_28fixp, %if.end ], !taffo.info !266
  %7 = call i32 @compare_float.4.18_fixp(i32 %x.addr.2.s4_28fixp, double 0x400921FB53C8D4F1), !taffo.info !78, !taffo.constinfo !39
  %cmp8.flt = icmp sle i32 0, %7, !taffo.info !78, !taffo.initweight !21
  br i1 %cmp8.flt, label %land.lhs.true, label %if.end38, !taffo.info !29, !taffo.initweight !35

land.lhs.true:                                    ; preds = %if.end6
  %8 = call i32 @compare_float.3.13_fixp(i32 %x.addr.2.s4_28fixp, double 0x3FF921FB52713C02), !taffo.info !78, !taffo.constinfo !32
  %cmp10.flt = icmp eq i32 -1, %8, !taffo.info !78, !taffo.initweight !21
  br i1 %cmp10.flt, label %if.then11, label %if.end38, !taffo.info !29, !taffo.initweight !35

if.then11:                                        ; preds = %land.lhs.true
  %9 = lshr i32 1686629711, 1
  %sub12.s4_28fixp = sub i32 %x.addr.2.s4_28fixp, %9, !taffo.info !268, !taffo.constinfo !87
  %10 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !268
  %11 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !268
  %12 = mul i64 %10, %11, !taffo.info !270
  %13 = lshr i64 %12, 30, !taffo.info !270
  %mul.u6_26fixp = trunc i64 %13 to i32, !taffo.info !272
  %div.s6_26fixp = sdiv i32 %mul.u6_26fixp, 2, !taffo.info !273, !taffo.constinfo !96
  %14 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !268
  %15 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !268
  %16 = mul i64 %14, %15, !taffo.info !270
  %17 = lshr i64 %16, 30, !taffo.info !270
  %mul13.u6_26fixp = trunc i64 %17 to i32, !taffo.info !272
  %18 = zext i32 %mul13.u6_26fixp to i64, !taffo.info !272
  %19 = shl i64 %18, 2, !taffo.info !272
  %20 = zext i32 12 to i64
  %21 = sdiv i64 %19, %20, !taffo.info !275, !taffo.constinfo !105
  %div14.s4_28fixp = trunc i64 %21 to i32, !taffo.info !277
  %22 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !268
  %23 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !268
  %24 = mul i64 %22, %23, !taffo.info !270
  %25 = lshr i64 %24, 30, !taffo.info !270
  %mul15.u6_26fixp = trunc i64 %25 to i32, !taffo.info !272
  %26 = zext i32 %mul15.u6_26fixp to i64, !taffo.info !272
  %27 = shl i64 %26, 3, !taffo.info !272
  %28 = zext i32 30 to i64
  %29 = sdiv i64 %27, %28, !taffo.info !278, !taffo.constinfo !112
  %div16.s3_29fixp = trunc i64 %29 to i32, !taffo.info !280
  %30 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !268
  %31 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !268
  %32 = mul i64 %30, %31, !taffo.info !270
  %33 = lshr i64 %32, 30, !taffo.info !270
  %mul17.u6_26fixp = trunc i64 %33 to i32, !taffo.info !272
  %34 = zext i32 %mul17.u6_26fixp to i64, !taffo.info !272
  %35 = shl i64 %34, 4, !taffo.info !272
  %36 = zext i32 56 to i64
  %37 = sdiv i64 %35, %36, !taffo.info !281, !taffo.constinfo !118
  %div18.s2_30fixp = trunc i64 %37 to i32, !taffo.info !283
  %38 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !268
  %39 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !268
  %40 = mul i64 %38, %39, !taffo.info !270
  %41 = lshr i64 %40, 30, !taffo.info !270
  %mul19.u6_26fixp = trunc i64 %41 to i32, !taffo.info !272
  %42 = zext i32 %mul19.u6_26fixp to i64, !taffo.info !272
  %43 = shl i64 %42, 4, !taffo.info !272
  %44 = zext i32 90 to i64
  %45 = sdiv i64 %43, %44, !taffo.info !284, !taffo.constinfo !124
  %div20.s2_30fixp = trunc i64 %45 to i32, !taffo.info !286
  %46 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !268
  %47 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !268
  %48 = mul i64 %46, %47, !taffo.info !270
  %49 = lshr i64 %48, 30, !taffo.info !270
  %mul21.u6_26fixp = trunc i64 %49 to i32, !taffo.info !272
  %50 = zext i32 %mul21.u6_26fixp to i64, !taffo.info !272
  %51 = shl i64 %50, 4, !taffo.info !272
  %52 = zext i32 132 to i64
  %53 = sdiv i64 %51, %52, !taffo.info !287, !taffo.constinfo !130
  %div22.s2_30fixp = trunc i64 %53 to i32, !taffo.info !289
  %54 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !268
  %55 = sext i32 %sub12.s4_28fixp to i64, !taffo.info !268
  %56 = mul i64 %54, %55, !taffo.info !270
  %57 = lshr i64 %56, 30, !taffo.info !270
  %mul23.u6_26fixp = trunc i64 %57 to i32, !taffo.info !272
  %58 = zext i32 %mul23.u6_26fixp to i64, !taffo.info !272
  %59 = shl i64 %58, 5, !taffo.info !272
  %60 = zext i32 182 to i64
  %61 = udiv i64 %59, %60, !taffo.info !290, !taffo.constinfo !137
  %div24.u1_31fixp = trunc i64 %61 to i32, !taffo.info !292
  %sub25.u1_31fixp = sub i32 -2147483648, %div24.u1_31fixp, !taffo.info !293, !taffo.constinfo !144
  %neg.s2_30fixp = sub i32 0, %div22.s2_30fixp, !taffo.info !295
  %62 = lshr i32 -2147483648, 1
  %63 = sext i32 %neg.s2_30fixp to i64, !taffo.info !295
  %64 = zext i32 %sub25.u1_31fixp to i64, !taffo.info !293
  %65 = mul i64 %63, %64, !taffo.info !297
  %66 = ashr i64 %65, 31
  %67 = trunc i64 %66 to i32
  %s2_30fixp7 = add i32 %67, %62, !taffo.info !299
  %neg28.s2_30fixp = sub i32 0, %div20.s2_30fixp, !taffo.info !300
  %68 = lshr i32 -2147483648, 1
  %69 = sext i32 %neg28.s2_30fixp to i64, !taffo.info !300
  %70 = sext i32 %s2_30fixp7 to i64, !taffo.info !299
  %71 = mul i64 %69, %70, !taffo.info !302
  %72 = ashr i64 %71, 30
  %73 = trunc i64 %72 to i32
  %s2_30fixp9 = add i32 %73, %68, !taffo.info !304
  %neg30.s2_30fixp = sub i32 0, %div18.s2_30fixp, !taffo.info !305
  %74 = lshr i32 -2147483648, 1
  %75 = sext i32 %neg30.s2_30fixp to i64, !taffo.info !305
  %76 = sext i32 %s2_30fixp9 to i64, !taffo.info !304
  %77 = mul i64 %75, %76, !taffo.info !307
  %78 = ashr i64 %77, 30
  %79 = trunc i64 %78 to i32
  %s2_30fixp11 = add i32 %79, %74, !taffo.info !309
  %neg32.s3_29fixp = sub i32 0, %div16.s3_29fixp, !taffo.info !310
  %80 = lshr i32 -2147483648, 2
  %81 = sext i32 %neg32.s3_29fixp to i64, !taffo.info !310
  %82 = sext i32 %s2_30fixp11 to i64, !taffo.info !309
  %83 = mul i64 %81, %82, !taffo.info !312
  %84 = ashr i64 %83, 30
  %85 = trunc i64 %84 to i32
  %s3_29fixp12 = add i32 %85, %80, !taffo.info !314
  %neg34.s4_28fixp = sub i32 0, %div14.s4_28fixp, !taffo.info !315
  %86 = lshr i32 -2147483648, 3
  %87 = sext i32 %neg34.s4_28fixp to i64, !taffo.info !315
  %88 = sext i32 %s3_29fixp12 to i64, !taffo.info !314
  %89 = mul i64 %87, %88, !taffo.info !317
  %90 = ashr i64 %89, 29
  %91 = trunc i64 %90 to i32
  %s4_28fixp13 = add i32 %91, %86, !taffo.info !319
  %92 = ashr i32 %div.s6_26fixp, 1, !taffo.info !273, !taffo.constinfo !96
  %neg36.s7_25fixp = sub i32 0, %92, !taffo.info !320
  %93 = lshr i32 -2147483648, 6
  %94 = sext i32 %neg36.s7_25fixp to i64, !taffo.info !320
  %95 = sext i32 %s4_28fixp13 to i64, !taffo.info !319
  %96 = mul i64 %94, %95, !taffo.info !322
  %97 = ashr i64 %96, 28
  %98 = trunc i64 %97 to i32
  %s7_25fixp14 = add i32 %98, %93, !taffo.info !324
  %99 = sext i32 -1 to i64
  %100 = sext i32 %s7_25fixp14 to i64, !taffo.info !324
  %101 = mul i64 %99, %100, !taffo.info !325, !taffo.constinfo !184
  %mul37.s7_25fixp = trunc i64 %101 to i32, !taffo.info !328
  br label %return

if.end38:                                         ; preds = %if.end6, %land.lhs.true
  %102 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !266
  %103 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !266
  %104 = mul i64 %102, %103, !taffo.info !188
  %105 = lshr i64 %104, 30, !taffo.info !188
  %mul39.u6_26fixp = trunc i64 %105 to i32, !taffo.info !191
  %div40.s6_26fixp = sdiv i32 %mul39.u6_26fixp, 2, !taffo.info !193, !taffo.constinfo !96
  %106 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !266
  %107 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !266
  %108 = mul i64 %106, %107, !taffo.info !188
  %109 = lshr i64 %108, 30, !taffo.info !188
  %mul41.u6_26fixp = trunc i64 %109 to i32, !taffo.info !191
  %110 = zext i32 %mul41.u6_26fixp to i64, !taffo.info !191
  %111 = shl i64 %110, 2, !taffo.info !191
  %112 = zext i32 12 to i64
  %113 = sdiv i64 %111, %112, !taffo.info !195, !taffo.constinfo !105
  %div42.s4_28fixp = trunc i64 %113 to i32, !taffo.info !198
  %114 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !266
  %115 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !266
  %116 = mul i64 %114, %115, !taffo.info !188
  %117 = lshr i64 %116, 30, !taffo.info !188
  %mul43.u6_26fixp = trunc i64 %117 to i32, !taffo.info !191
  %118 = zext i32 %mul43.u6_26fixp to i64, !taffo.info !191
  %119 = shl i64 %118, 3, !taffo.info !191
  %120 = zext i32 30 to i64
  %121 = sdiv i64 %119, %120, !taffo.info !199, !taffo.constinfo !112
  %div44.s3_29fixp = trunc i64 %121 to i32, !taffo.info !201
  %122 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !266
  %123 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !266
  %124 = mul i64 %122, %123, !taffo.info !188
  %125 = lshr i64 %124, 30, !taffo.info !188
  %mul45.u6_26fixp = trunc i64 %125 to i32, !taffo.info !191
  %126 = zext i32 %mul45.u6_26fixp to i64, !taffo.info !191
  %127 = shl i64 %126, 4, !taffo.info !191
  %128 = zext i32 56 to i64
  %129 = sdiv i64 %127, %128, !taffo.info !202, !taffo.constinfo !118
  %div46.s2_30fixp = trunc i64 %129 to i32, !taffo.info !204
  %130 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !266
  %131 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !266
  %132 = mul i64 %130, %131, !taffo.info !188
  %133 = lshr i64 %132, 30, !taffo.info !188
  %mul47.u6_26fixp = trunc i64 %133 to i32, !taffo.info !191
  %134 = zext i32 %mul47.u6_26fixp to i64, !taffo.info !191
  %135 = shl i64 %134, 4, !taffo.info !191
  %136 = zext i32 90 to i64
  %137 = sdiv i64 %135, %136, !taffo.info !205, !taffo.constinfo !124
  %div48.s2_30fixp = trunc i64 %137 to i32, !taffo.info !207
  %138 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !266
  %139 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !266
  %140 = mul i64 %138, %139, !taffo.info !188
  %141 = lshr i64 %140, 30, !taffo.info !188
  %mul49.u6_26fixp = trunc i64 %141 to i32, !taffo.info !191
  %142 = zext i32 %mul49.u6_26fixp to i64, !taffo.info !191
  %143 = shl i64 %142, 4, !taffo.info !191
  %144 = zext i32 132 to i64
  %145 = sdiv i64 %143, %144, !taffo.info !208, !taffo.constinfo !130
  %div50.s2_30fixp = trunc i64 %145 to i32, !taffo.info !210
  %146 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !266
  %147 = sext i32 %x.addr.2.s4_28fixp to i64, !taffo.info !266
  %148 = mul i64 %146, %147, !taffo.info !188
  %149 = lshr i64 %148, 30, !taffo.info !188
  %mul51.u6_26fixp = trunc i64 %149 to i32, !taffo.info !191
  %150 = zext i32 %mul51.u6_26fixp to i64, !taffo.info !191
  %151 = shl i64 %150, 5, !taffo.info !191
  %152 = zext i32 182 to i64
  %153 = udiv i64 %151, %152, !taffo.info !211, !taffo.constinfo !137
  %div52.u1_31fixp = trunc i64 %153 to i32, !taffo.info !213
  %sub53.u1_31fixp = sub i32 -2147483648, %div52.u1_31fixp, !taffo.info !214, !taffo.constinfo !144
  %neg55.s2_30fixp = sub i32 0, %div50.s2_30fixp, !taffo.info !216
  %154 = lshr i32 -2147483648, 1
  %155 = sext i32 %neg55.s2_30fixp to i64, !taffo.info !216
  %156 = zext i32 %sub53.u1_31fixp to i64, !taffo.info !214
  %157 = mul i64 %155, %156, !taffo.info !218
  %158 = ashr i64 %157, 31
  %159 = trunc i64 %158 to i32
  %s2_30fixp = add i32 %159, %154, !taffo.info !220
  %neg57.s2_30fixp = sub i32 0, %div48.s2_30fixp, !taffo.info !221
  %160 = lshr i32 -2147483648, 1
  %161 = sext i32 %neg57.s2_30fixp to i64, !taffo.info !221
  %162 = sext i32 %s2_30fixp to i64, !taffo.info !220
  %163 = mul i64 %161, %162, !taffo.info !223
  %164 = ashr i64 %163, 30
  %165 = trunc i64 %164 to i32
  %s2_30fixp8 = add i32 %165, %160, !taffo.info !225
  %neg59.s2_30fixp = sub i32 0, %div46.s2_30fixp, !taffo.info !226
  %166 = lshr i32 -2147483648, 1
  %167 = sext i32 %neg59.s2_30fixp to i64, !taffo.info !226
  %168 = sext i32 %s2_30fixp8 to i64, !taffo.info !225
  %169 = mul i64 %167, %168, !taffo.info !228
  %170 = ashr i64 %169, 30
  %171 = trunc i64 %170 to i32
  %s2_30fixp10 = add i32 %171, %166, !taffo.info !230
  %neg61.s3_29fixp = sub i32 0, %div44.s3_29fixp, !taffo.info !231
  %172 = lshr i32 -2147483648, 2
  %173 = sext i32 %neg61.s3_29fixp to i64, !taffo.info !231
  %174 = sext i32 %s2_30fixp10 to i64, !taffo.info !230
  %175 = mul i64 %173, %174, !taffo.info !233
  %176 = ashr i64 %175, 30
  %177 = trunc i64 %176 to i32
  %s3_29fixp = add i32 %177, %172, !taffo.info !235
  %neg63.s4_28fixp = sub i32 0, %div42.s4_28fixp, !taffo.info !236
  %178 = lshr i32 -2147483648, 3
  %179 = sext i32 %neg63.s4_28fixp to i64, !taffo.info !236
  %180 = sext i32 %s3_29fixp to i64, !taffo.info !235
  %181 = mul i64 %179, %180, !taffo.info !238
  %182 = ashr i64 %181, 29
  %183 = trunc i64 %182 to i32
  %s4_28fixp = add i32 %183, %178, !taffo.info !241
  %184 = ashr i32 %div40.s6_26fixp, 1, !taffo.info !193, !taffo.constinfo !96
  %neg65.s7_25fixp = sub i32 0, %184, !taffo.info !242
  %185 = lshr i32 -2147483648, 6
  %186 = sext i32 %neg65.s7_25fixp to i64, !taffo.info !242
  %187 = sext i32 %s4_28fixp to i64, !taffo.info !241
  %188 = mul i64 %186, %187, !taffo.info !244
  %189 = ashr i64 %188, 28
  %190 = trunc i64 %189 to i32
  %s7_25fixp = add i32 %190, %185, !taffo.info !68
  br label %return

return:                                           ; preds = %if.end38, %if.then11
  %retval.0.s7_25fixp = phi i32 [ %mul37.s7_25fixp, %if.then11 ], [ %s7_25fixp, %if.end38 ], !taffo.info !68
  ret i32 %retval.0.s7_25fixp
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.6.16_fixp(i32 noundef %f1.s4_28fixp, double noundef %f2) #0 !taffo.initweight !246 !taffo.funinfo !248 !taffo.sourceFunction !329 {
entry:
  %0 = fmul double 0x41B0000000000000, %f2
  %1 = fptosi double %0 to i32
  %2 = fmul double 0x41B0000000000000, %f2
  %3 = fptosi double %2 to i32
  %4 = lshr i32 21, 3
  %sub.s4_28fixp = sub i32 %f1.s4_28fixp, %4, !taffo.info !43, !taffo.constinfo !16
  %5 = icmp slt i32 %sub.s4_28fixp, %3, !taffo.info !19
  br i1 %5, label %if.then, label %if.else, !taffo.info !20, !taffo.initweight !21

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %6 = lshr i32 21, 3
  %add.s4_28fixp = add i32 %f1.s4_28fixp, %6, !taffo.info !43, !taffo.constinfo !16
  %7 = icmp sgt i32 %add.s4_28fixp, %1, !taffo.info !19
  br i1 %7, label %if.then5, label %if.else6, !taffo.info !20, !taffo.initweight !21

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.3.13_fixp(i32 noundef %f1.s4_28fixp, double noundef %f2) #0 !taffo.initweight !246 !taffo.funinfo !248 !taffo.sourceFunction !330 {
entry:
  %0 = fmul double 0x41B0000000000000, %f2
  %1 = fptosi double %0 to i32
  %2 = fmul double 0x41B0000000000000, %f2
  %3 = fptosi double %2 to i32
  %4 = lshr i32 21, 3
  %sub.s4_28fixp = sub i32 %f1.s4_28fixp, %4, !taffo.info !43, !taffo.constinfo !16
  %5 = icmp slt i32 %sub.s4_28fixp, %3, !taffo.info !19
  br i1 %5, label %if.then, label %if.else, !taffo.info !20, !taffo.initweight !21

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %6 = lshr i32 21, 3
  %add.s4_28fixp = add i32 %f1.s4_28fixp, %6, !taffo.info !43, !taffo.constinfo !16
  %7 = icmp sgt i32 %add.s4_28fixp, %1, !taffo.info !19
  br i1 %7, label %if.then5, label %if.else6, !taffo.info !20, !taffo.initweight !21

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.4.14_fixp(i32 noundef %f1.s4_28fixp, double noundef %f2) #0 !taffo.initweight !246 !taffo.funinfo !248 !taffo.sourceFunction !331 {
entry:
  %0 = fmul double 0x41B0000000000000, %f2
  %1 = fptosi double %0 to i32
  %2 = fmul double 0x41B0000000000000, %f2
  %3 = fptosi double %2 to i32
  %4 = lshr i32 21, 3
  %sub.s4_28fixp = sub i32 %f1.s4_28fixp, %4, !taffo.info !43, !taffo.constinfo !16
  %5 = icmp slt i32 %sub.s4_28fixp, %3, !taffo.info !19
  br i1 %5, label %if.then, label %if.else, !taffo.info !20, !taffo.initweight !21

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %6 = lshr i32 21, 3
  %add.s4_28fixp = add i32 %f1.s4_28fixp, %6, !taffo.info !43, !taffo.constinfo !16
  %7 = icmp sgt i32 %add.s4_28fixp, %1, !taffo.info !19
  br i1 %7, label %if.then5, label %if.else6, !taffo.info !20, !taffo.initweight !21

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.5.15_fixp(i32 noundef %f1.s4_28fixp, double noundef %f2) #0 !taffo.initweight !246 !taffo.funinfo !248 !taffo.sourceFunction !332 {
entry:
  %0 = fmul double 0x41B0000000000000, %f2
  %1 = fptosi double %0 to i32
  %2 = fmul double 0x41B0000000000000, %f2
  %3 = fptosi double %2 to i32
  %4 = lshr i32 21, 3
  %sub.s4_28fixp = sub i32 %f1.s4_28fixp, %4, !taffo.info !43, !taffo.constinfo !16
  %5 = icmp slt i32 %sub.s4_28fixp, %3, !taffo.info !19
  br i1 %5, label %if.then, label %if.else, !taffo.info !20, !taffo.initweight !21

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %6 = lshr i32 21, 3
  %add.s4_28fixp = add i32 %f1.s4_28fixp, %6, !taffo.info !43, !taffo.constinfo !16
  %7 = icmp sgt i32 %add.s4_28fixp, %1, !taffo.info !19
  br i1 %7, label %if.then5, label %if.else6, !taffo.info !20, !taffo.initweight !21

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.6.20_fixp(i32 noundef %f1.s4_28fixp, double noundef %f2) #0 !taffo.initweight !246 !taffo.funinfo !333 !taffo.sourceFunction !334 {
entry:
  %0 = fmul double 0x41D0000000000000, %f2, !taffo.info !33
  %1 = fptoui double %0 to i32, !taffo.info !33
  %2 = fmul double 0x41D0000000000000, %f2, !taffo.info !33
  %3 = fptoui double %2 to i32, !taffo.info !33
  %4 = lshr i32 21, 3
  %sub.s4_28fixp = sub i32 %f1.s4_28fixp, %4, !taffo.info !335, !taffo.constinfo !16
  %5 = lshr i32 %3, 2, !taffo.info !33
  %6 = icmp slt i32 %sub.s4_28fixp, %5, !taffo.info !78
  br i1 %6, label %if.then, label %if.else, !taffo.info !20, !taffo.initweight !21

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %7 = lshr i32 21, 3
  %add.s4_28fixp = add i32 %f1.s4_28fixp, %7, !taffo.info !337, !taffo.constinfo !16
  %8 = lshr i32 %1, 2, !taffo.info !33
  %9 = icmp sgt i32 %add.s4_28fixp, %8, !taffo.info !78
  br i1 %9, label %if.then5, label %if.else6, !taffo.info !20, !taffo.initweight !21

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !339
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.4.18_fixp(i32 noundef %f1.s4_28fixp, double noundef %f2) #0 !taffo.initweight !246 !taffo.funinfo !340 !taffo.sourceFunction !341 {
entry:
  %0 = fmul double 0x41C0000000000000, %f2, !taffo.info !40
  %1 = fptoui double %0 to i32, !taffo.info !40
  %2 = fmul double 0x41C0000000000000, %f2, !taffo.info !40
  %3 = fptoui double %2 to i32, !taffo.info !40
  %4 = lshr i32 21, 3
  %sub.s4_28fixp = sub i32 %f1.s4_28fixp, %4, !taffo.info !342, !taffo.constinfo !16
  %5 = lshr i32 %3, 1, !taffo.info !40
  %6 = icmp slt i32 %sub.s4_28fixp, %5, !taffo.info !78
  br i1 %6, label %if.then, label %if.else, !taffo.info !20, !taffo.initweight !21

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %7 = lshr i32 21, 3
  %add.s4_28fixp = add i32 %f1.s4_28fixp, %7, !taffo.info !344, !taffo.constinfo !16
  %8 = lshr i32 %1, 1, !taffo.info !40
  %9 = icmp sgt i32 %add.s4_28fixp, %8, !taffo.info !78
  br i1 %9, label %if.then5, label %if.else6, !taffo.info !20, !taffo.initweight !21

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !339
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.5.19_fixp(i32 noundef %f1.s4_28fixp, double noundef %f2) #0 !taffo.initweight !246 !taffo.funinfo !346 !taffo.sourceFunction !347 {
entry:
  %0 = fmul double 0x41D0000000000000, %f2, !taffo.info !33
  %1 = fptoui double %0 to i32, !taffo.info !33
  %2 = fmul double 0x41D0000000000000, %f2, !taffo.info !33
  %3 = fptoui double %2 to i32, !taffo.info !33
  %4 = lshr i32 21, 3
  %sub.s4_28fixp = sub i32 %f1.s4_28fixp, %4, !taffo.info !348, !taffo.constinfo !16
  %5 = lshr i32 %3, 2, !taffo.info !33
  %6 = icmp slt i32 %sub.s4_28fixp, %5, !taffo.info !78
  br i1 %6, label %if.then, label %if.else, !taffo.info !20, !taffo.initweight !21

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %7 = lshr i32 21, 3
  %add.s4_28fixp = add i32 %f1.s4_28fixp, %7, !taffo.info !350, !taffo.constinfo !16
  %8 = lshr i32 %1, 2, !taffo.info !33
  %9 = icmp sgt i32 %add.s4_28fixp, %8, !taffo.info !78
  br i1 %9, label %if.then5, label %if.else6, !taffo.info !20, !taffo.initweight !21

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !339
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.150000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.160000e+02}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.0-1ubuntu1"}
!10 = !{i32 2, i32 2}
!11 = distinct !{null, null, null, null, null, null, null, null}
!12 = !{i32 1, !13, i32 1, !13}
!13 = !{!14, !15, i1 false, i2 1}
!14 = !{!"fixp", i32 -32, i32 30}
!15 = !{double -1.000000e+00, double 1.000000e+00}
!16 = !{i1 false, !17}
!17 = !{i1 false, !18, i1 false, i2 0}
!18 = !{double 1.000000e-08, double 1.000000e-08}
!19 = !{!14, i1 false, i1 false, i2 1}
!20 = !{i1 false, !15, i1 false, i2 1}
!21 = !{i32 3}
!22 = !{i32 2}
!23 = distinct !{null, null, null}
!24 = !{i32 1, !25}
!25 = !{!26, !27, i1 false, i2 1}
!26 = !{!"fixp", i32 32, i32 29}
!27 = !{double 0.000000e+00, double 0x401921FB53C8D4F1}
!28 = !{!26, i1 false, i1 false, i2 1}
!29 = !{i1 false, !27, i1 false, i2 1}
!30 = !{!31, !27, i1 false, i2 1}
!31 = !{!"fixp", i32 -32, i32 28}
!32 = !{i1 false, !33, i1 false}
!33 = !{i1 false, !34, i1 false, i2 0}
!34 = !{double 0x3FF921FB52713C02, double 0x3FF921FB52713C02}
!35 = !{i32 4}
!36 = !{i1 false, !33}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{i1 false, !40, i1 false}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 0x400921FB53C8D4F1, double 0x400921FB53C8D4F1}
!42 = distinct !{null}
!43 = !{!31, !15, i1 false, i2 1}
!44 = !{i1 false, i1 false}
!45 = !{i32 1}
!46 = !{}
!47 = !{i1 true}
!48 = !{!49, !50, i1 false, i2 1}
!49 = !{!"fixp", i32 -32, i32 25}
!50 = !{double 0xC043A0D960000000, double 0x4047199FC0000000}
!51 = !{!52, i1 false}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 0x3FE0C15237DB38A1, double 0x3FE0C15237DB38A1}
!54 = !{!"res_cos"}
!55 = !{!56, i1 false}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 0x3FD0C15237DB38A1, double 0x3FD0C15237DB38A1}
!58 = !{!"res_sin"}
!59 = !{!49, i1 false, i1 false, i2 1}
!60 = !{i1 false, i1 false, i1 false, i1 false}
!61 = !{i32 -1}
!62 = !{i32 0, i1 false}
!63 = !{i32 1, !56}
!64 = !{double (double)* @sin}
!65 = !{!66, !67, i1 false, i2 1}
!66 = !{!"fixp", i32 -32, i32 29}
!67 = !{double 0xBFF4F1A6C47A6DDA, double 0xBFF4F1A6C47A6DDA}
!68 = !{!49, !69, i1 false, i2 1}
!69 = !{double 0xC043A0D94E544486, double 0x4047199FA93B09F6}
!70 = !{i32 1, !52}
!71 = !{double (double)* @cos}
!72 = !{i1 false, !73, i1 false, i2 1}
!73 = !{double 0.000000e+00, double 0.000000e+00}
!74 = !{!31, !75, i1 false, i2 1}
!75 = !{double 0xBFE0C15237DB38A1, double 0xBFE0C15237DB38A1}
!76 = !{!31, !77, i1 false, i2 1}
!77 = !{double 0xBFE0C15237DB38A1, double 0x401921FB53C8D4F1}
!78 = !{!31, i1 false, i1 false, i2 1}
!79 = !{!31, !80, i1 false, i2 1}
!80 = !{double 0xC000C152372F6C29, double 0x4012D97C7F2C85F0}
!81 = distinct !{!81, !38}
!82 = !{!31, !83, i1 false, i2 1}
!83 = !{double 0xC000C152372F6C29, double 0x401921FB53C8D4F1}
!84 = !{!85, !86, i1 false, i2 1}
!85 = !{!"fixp", i32 -32, i32 26}
!86 = !{double 0xC014F1A6C57C208D, double 0x400921FB53C8D4F1}
!87 = !{i1 false, !40}
!88 = !{!89, !90, i1 false, i2 1}
!89 = !{!"fixp", i32 64, i32 52}
!90 = !{double 0.000000e+00, double 0x403B6A62A47DD80A}
!91 = !{!92, !90, i1 false, i2 1}
!92 = !{!"fixp", i32 32, i32 27}
!93 = !{!94, !95, i1 false, i2 1}
!94 = !{!"fixp", i32 -32, i32 27}
!95 = !{double 0.000000e+00, double 0x402B6A62A47DD80A}
!96 = !{i1 false, !97}
!97 = !{i1 false, !98, i1 false, i2 0}
!98 = !{double 2.000000e+00, double 2.000000e+00}
!99 = !{!100, !90, i1 false, i2 1}
!100 = !{!"fixp", i32 -64, i32 52}
!101 = !{!85, !90, i1 false, i2 1}
!102 = !{!103, !104, i1 false, i2 1}
!103 = !{!"fixp", i32 -64, i32 29}
!104 = !{double 0.000000e+00, double 0x400246EC6DA93AB1}
!105 = !{i1 false, !106}
!106 = !{i1 false, !107, i1 false, i2 0}
!107 = !{double 1.200000e+01, double 1.200000e+01}
!108 = !{!66, !104, i1 false, i2 1}
!109 = !{!110, !111, i1 false, i2 1}
!110 = !{!"fixp", i32 -64, i32 30}
!111 = !{double 0.000000e+00, double 0x3FED3E4715DB911C}
!112 = !{i1 false, !113}
!113 = !{i1 false, !114, i1 false, i2 0}
!114 = !{double 3.000000e+01, double 3.000000e+01}
!115 = !{!14, !111, i1 false, i2 1}
!116 = !{!110, !117, i1 false, i2 1}
!117 = !{double 0.000000e+00, double 0x3FDF550305221B79}
!118 = !{i1 false, !119}
!119 = !{i1 false, !120, i1 false, i2 0}
!120 = !{double 5.600000e+01, double 5.600000e+01}
!121 = !{!14, !117, i1 false, i2 1}
!122 = !{!110, !123, i1 false, i2 1}
!123 = !{double 0.000000e+00, double 0x3FD37EDA0E9260BD}
!124 = !{i1 false, !125}
!125 = !{i1 false, !126, i1 false, i2 0}
!126 = !{double 9.000000e+01, double 9.000000e+01}
!127 = !{!14, !123, i1 false, i2 1}
!128 = !{!110, !129, i1 false, i2 1}
!129 = !{double 0.000000e+00, double 0x3FCA95B4FC990F8E}
!130 = !{i1 false, !131}
!131 = !{i1 false, !132, i1 false, i2 0}
!132 = !{double 1.320000e+02, double 1.320000e+02}
!133 = !{!14, !129, i1 false, i2 1}
!134 = !{!135, !136, i1 false, i2 1}
!135 = !{!"fixp", i32 64, i32 31}
!136 = !{double 0.000000e+00, double 0x3FC34801DBC6384B}
!137 = !{i1 false, !138}
!138 = !{i1 false, !139, i1 false, i2 0}
!139 = !{double 1.820000e+02, double 1.820000e+02}
!140 = !{!141, !136, i1 false, i2 1}
!141 = !{!"fixp", i32 32, i32 31}
!142 = !{!141, !143, i1 false, i2 1}
!143 = !{double 0x3FEB2DFF890E71ED, double 1.000000e+00}
!144 = !{!145, i1 false}
!145 = !{i1 false, !146, i1 false, i2 0}
!146 = !{double 1.000000e+00, double 1.000000e+00}
!147 = !{!14, !148, i1 false, i2 1}
!148 = !{double 0xBFCA95B4FC990F8E, double -0.000000e+00}
!149 = !{!150, !151, i1 false, i2 1}
!150 = !{!"fixp", i32 -64, i32 61}
!151 = !{double 0x3FE95A92C0D9BC1C, double 1.000000e+00}
!152 = !{!14, !151, i1 false, i2 1}
!153 = !{!14, !154, i1 false, i2 1}
!154 = !{double 0xBFD37EDA0E9260BD, double -0.000000e+00}
!155 = !{!156, !157, i1 false, i2 1}
!156 = !{!"fixp", i32 -64, i32 60}
!157 = !{double 0x3FE64092F8B6CFA2, double 1.000000e+00}
!158 = !{!14, !157, i1 false, i2 1}
!159 = !{!14, !160, i1 false, i2 1}
!160 = !{double 0xBFDF550305221B79, double -0.000000e+00}
!161 = !{!156, !162, i1 false, i2 1}
!162 = !{double 0x3FE0557E7D6EF244, double 1.000000e+00}
!163 = !{!14, !162, i1 false, i2 1}
!164 = !{!14, !165, i1 false, i2 1}
!165 = !{double 0xBFED3E4715DB911C, double -0.000000e+00}
!166 = !{!156, !167, i1 false, i2 1}
!167 = !{double 0x3FB60DC751237720, double 1.000000e+00}
!168 = !{!14, !167, i1 false, i2 1}
!169 = !{!66, !170, i1 false, i2 1}
!170 = !{double 0xC00246EC6DA93AB1, double -0.000000e+00}
!171 = !{!172, !173, i1 false, i2 1}
!172 = !{!"fixp", i32 -64, i32 59}
!173 = !{double 0xBFF48DD8DB527562, double 1.000000e+00}
!174 = !{!66, !173, i1 false, i2 1}
!175 = !{!85, !176, i1 false, i2 1}
!176 = !{double 0xC02B6A62A47DD80A, double -0.000000e+00}
!177 = !{!178, !179, i1 false, i2 1}
!178 = !{!"fixp", i32 -64, i32 55}
!179 = !{double 0xC0296A62A47DD80A, double 0x40329C043374001B}
!180 = !{!85, !179, i1 false, i2 1}
!181 = !{!182, !183, i1 false, i2 1}
!182 = !{!"fixp", i32 -64, i32 26}
!183 = !{double 0xC0329C043374001B, double 0x40296A62A47DD80A}
!184 = !{!185, i1 false}
!185 = !{i1 false, !186, i1 false, i2 0}
!186 = !{double -1.000000e+00, double -1.000000e+00}
!187 = !{!49, !183, i1 false, i2 1}
!188 = !{!189, !190, i1 false, i2 1}
!189 = !{!"fixp", i32 64, i32 56}
!190 = !{double 0.000000e+00, double 0x4043BD3CC8FC862A}
!191 = !{!192, !190, i1 false, i2 1}
!192 = !{!"fixp", i32 32, i32 26}
!193 = !{!85, !194, i1 false, i2 1}
!194 = !{double 0.000000e+00, double 0x4033BD3CC8FC862A}
!195 = !{!196, !197, i1 false, i2 1}
!196 = !{!"fixp", i32 -64, i32 28}
!197 = !{double 0.000000e+00, double 0x400A51A66150B2E3}
!198 = !{!31, !197, i1 false, i2 1}
!199 = !{!103, !200, i1 false, i2 1}
!200 = !{double 0.000000e+00, double 0x3FF50E1EB4408F1C}
!201 = !{!66, !200, i1 false, i2 1}
!202 = !{!110, !203, i1 false, i2 1}
!203 = !{double 0.000000e+00, double 0x3FE68F20E5B2E279}
!204 = !{!14, !203, i1 false, i2 1}
!205 = !{!110, !206, i1 false, i2 1}
!206 = !{double 0.000000e+00, double 0x3FDC12D39B00BED0}
!207 = !{!14, !206, i1 false, i2 1}
!208 = !{!110, !209, i1 false, i2 1}
!209 = !{double 0.000000e+00, double 0x3FD3241BE9AF0DBC}
!210 = !{!14, !209, i1 false, i2 1}
!211 = !{!135, !212, i1 false, i2 1}
!212 = !{double 0.000000e+00, double 0x3FCBC3D9B83EA095}
!213 = !{!141, !212, i1 false, i2 1}
!214 = !{!141, !215, i1 false, i2 1}
!215 = !{double 0x3FE90F0991F057DB, double 1.000000e+00}
!216 = !{!14, !217, i1 false, i2 1}
!217 = !{double 0xBFD3241BE9AF0DBC, double -0.000000e+00}
!218 = !{!150, !219, i1 false, i2 1}
!219 = !{double 0x3FE66DF20B287922, double 1.000000e+00}
!220 = !{!14, !219, i1 false, i2 1}
!221 = !{!14, !222, i1 false, i2 1}
!222 = !{double 0xBFDC12D39B00BED0, double -0.000000e+00}
!223 = !{!156, !224, i1 false, i2 1}
!224 = !{double 0x3FE1F696327FA098, double 1.000000e+00}
!225 = !{!14, !224, i1 false, i2 1}
!226 = !{!14, !227, i1 false, i2 1}
!227 = !{double 0xBFE68F20E5B2E279, double -0.000000e+00}
!228 = !{!156, !229, i1 false, i2 1}
!229 = !{double 0x3FD2E1BE349A3B0E, double 1.000000e+00}
!230 = !{!14, !229, i1 false, i2 1}
!231 = !{!66, !232, i1 false, i2 1}
!232 = !{double 0xBFF50E1EB4408F1C, double -0.000000e+00}
!233 = !{!172, !234, i1 false, i2 1}
!234 = !{double 0xBFD4387AD1023C70, double 1.000000e+00}
!235 = !{!66, !234, i1 false, i2 1}
!236 = !{!31, !237, i1 false, i2 1}
!237 = !{double 0xC00A51A66150B2E3, double -0.000000e+00}
!238 = !{!239, !240, i1 false, i2 1}
!239 = !{!"fixp", i32 -64, i32 57}
!240 = !{double 0xC00251A66150B2E3, double 0x400050BDF19716C3}
!241 = !{!31, !240, i1 false, i2 1}
!242 = !{!49, !243, i1 false, i2 1}
!243 = !{double 0xC033BD3CC8FC862A, double -0.000000e+00}
!244 = !{!245, !69, i1 false, i2 1}
!245 = !{!"fixp", i32 -64, i32 53}
!246 = !{i32 2, i32 -1}
!247 = distinct !{null, null}
!248 = !{i32 1, !30, i32 0, i1 false}
!249 = !{i32 (double, double)* @compare_float}
!250 = !{i32 1, !30}
!251 = distinct !{!251, !38}
!252 = !{!253, !27, i1 false, i2 1}
!253 = !{!"fixp", i32 64, i32 58}
!254 = !{!255, !27, i1 false, i2 1}
!255 = !{!"fixp", i32 64, i32 29}
!256 = !{!189, !27, i1 false, i2 1}
!257 = !{i32 1, !65}
!258 = !{!66, i1 false, i1 false, i2 1}
!259 = !{!66, !260, i1 false, i2 1}
!260 = !{double 0x3FF4F1A6C47A6DDA, double 0x3FF4F1A6C47A6DDA}
!261 = !{!31, !262, i1 false, i2 1}
!262 = !{double 0xBFF4F1A6C47A6DDA, double 0x401921FB53C8D4F1}
!263 = !{!31, !264, i1 false, i2 1}
!264 = !{double 0xC00709D10B75D4EE, double 0x4012D97C7F2C85F0}
!265 = distinct !{!265, !38}
!266 = !{!31, !267, i1 false, i2 1}
!267 = !{double 0xC00709D10B75D4EE, double 0x401921FB53C8D4F1}
!268 = !{!31, !269, i1 false, i2 1}
!269 = !{double 0xC01815E62F9F54F0, double 0x400921FB53C8D4F1}
!270 = !{!189, !271, i1 false, i2 1}
!271 = !{double 0.000000e+00, double 0x404220E844054D61}
!272 = !{!192, !271, i1 false, i2 1}
!273 = !{!85, !274, i1 false, i2 1}
!274 = !{double 0.000000e+00, double 0x403220E844054D61}
!275 = !{!196, !276, i1 false, i2 1}
!276 = !{double 0.000000e+00, double 0x40082BE05AB1BC81}
!277 = !{!31, !276, i1 false, i2 1}
!278 = !{!103, !279, i1 false, i2 1}
!279 = !{double 0.000000e+00, double 0x3FF3564D155AFD34}
!280 = !{!66, !279, i1 false, i2 1}
!281 = !{!110, !282, i1 false, i2 1}
!282 = !{double 0.000000e+00, double 0x3FE4B7E4E0060F4A}
!283 = !{!14, !282, i1 false, i2 1}
!284 = !{!110, !285, i1 false, i2 1}
!285 = !{double 0.000000e+00, double 0x3FD9C866C723FC46}
!286 = !{!14, !285, i1 false, i2 1}
!287 = !{!110, !288, i1 false, i2 1}
!288 = !{double 0.000000e+00, double 0x3FD194461369FD75}
!289 = !{!14, !288, i1 false, i2 1}
!290 = !{!135, !291, i1 false, i2 1}
!291 = !{double 0.000000e+00, double 0x3FC97FDE9D914DE5}
!292 = !{!141, !291, i1 false, i2 1}
!293 = !{!141, !294, i1 false, i2 1}
!294 = !{double 0x3FE9A008589BAC87, double 1.000000e+00}
!295 = !{!14, !296, i1 false, i2 1}
!296 = !{double 0xBFD194461369FD75, double -0.000000e+00}
!297 = !{!150, !298, i1 false, i2 1}
!298 = !{double 0x3FE735DCF64B0146, double 1.000000e+00}
!299 = !{!14, !298, i1 false, i2 1}
!300 = !{!14, !301, i1 false, i2 1}
!301 = !{double 0xBFD9C866C723FC46, double -0.000000e+00}
!302 = !{!156, !303, i1 false, i2 1}
!303 = !{double 0x3FE31BCC9C6E01DD, double 1.000000e+00}
!304 = !{!14, !303, i1 false, i2 1}
!305 = !{!14, !306, i1 false, i2 1}
!306 = !{double 0xBFE4B7E4E0060F4A, double -0.000000e+00}
!307 = !{!156, !308, i1 false, i2 1}
!308 = !{double 0x3FD690363FF3E16C, double 1.000000e+00}
!309 = !{!14, !308, i1 false, i2 1}
!310 = !{!66, !311, i1 false, i2 1}
!311 = !{double 0xBFF3564D155AFD34, double -0.000000e+00}
!312 = !{!172, !313, i1 false, i2 1}
!313 = !{double 0xBFCAB268AAD7E9A0, double 1.000000e+00}
!314 = !{!66, !313, i1 false, i2 1}
!315 = !{!31, !316, i1 false, i2 1}
!316 = !{double 0xC0082BE05AB1BC81, double -0.000000e+00}
!317 = !{!239, !318, i1 false, i2 1}
!318 = !{double 0xC0002BE05AB1BC81, double 0x3FFA1534B4A71DDC}
!319 = !{!31, !318, i1 false, i2 1}
!320 = !{!49, !321, i1 false, i2 1}
!321 = !{double 0xC03220E844054D61, double -0.000000e+00}
!322 = !{!245, !323, i1 false, i2 1}
!323 = !{double 0xC03C8D805704500F, double 0x4042D29EE7B25008}
!324 = !{!49, !323, i1 false, i2 1}
!325 = !{!326, !327, i1 false, i2 1}
!326 = !{!"fixp", i32 -64, i32 25}
!327 = !{double 0xC042D29EE7B25008, double 0x403C8D805704500F}
!328 = !{!49, !327, i1 false, i2 1}
!329 = distinct !{null}
!330 = distinct !{null}
!331 = distinct !{null}
!332 = distinct !{null}
!333 = !{i32 1, !261, i32 1, !33}
!334 = distinct !{null}
!335 = !{!31, !336, i1 false, i2 1}
!336 = !{double 0xBFF4F1A6C7299FB6, double 0x401921FB531D087A}
!337 = !{!31, !338, i1 false, i2 1}
!338 = !{double 0xBFF4F1A6C1CB3BFE, double 0x401921FB5474A168}
!339 = !{i1 false, !15, i1 false, i2 0}
!340 = !{i32 1, !266, i32 1, !40}
!341 = distinct !{null}
!342 = !{!31, !343, i1 false, i2 1}
!343 = !{double 0xC00709D10CCD6DDC, double 0x401921FB531D087A}
!344 = !{!31, !345, i1 false, i2 1}
!345 = !{double 0xC00709D10A1E3C00, double 0x401921FB5474A168}
!346 = !{i32 1, !263, i32 1, !33}
!347 = distinct !{null}
!348 = !{!31, !349, i1 false, i2 1}
!349 = !{double 0xC00709D10CCD6DDC, double 0x4012D97C7E80B979}
!350 = !{!31, !351, i1 false, i2 1}
!351 = !{double 0xC00709D10A1E3C00, double 0x4012D97C7FD85267}
