; ModuleID = '/tmp/tmp.7Y3L29T3hC/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.4 = private unnamed_addr constant [31 x i8] c"Cos(Pi/6) = %f\0ASin(Pi/6) = %f\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compare_double(double noundef %f1, double noundef %f2) #0 !taffo.initweight !8 !taffo.equivalentChild !9 !taffo.funinfo !10 {
entry:
  %0 = fmul double 0x41D0000000000000, %f2, !taffo.info !11
  %1 = fptosi double %0 to i32, !taffo.info !11
  %2 = fmul double 0x41D0000000000000, %f2, !taffo.info !11
  %3 = fptosi double %2 to i32, !taffo.info !11
  %4 = fmul double 0x41D0000000000000, %f1, !taffo.info !11
  %5 = fptosi double %4 to i32, !taffo.info !11
  %6 = fmul double 0x41D0000000000000, %f1, !taffo.info !11
  %7 = fptosi double %6 to i32, !taffo.info !11
  %8 = lshr i32 21, 1
  %sub.s2_30fixp = sub i32 %5, %8, !taffo.info !11, !taffo.constinfo !14
  %9 = icmp slt i32 %sub.s2_30fixp, %1, !taffo.info !17
  br i1 %9, label %if.then, label %if.else, !taffo.info !18, !taffo.initweight !19

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %10 = lshr i32 21, 1
  %add.s2_30fixp = add i32 %7, %10, !taffo.info !11, !taffo.constinfo !14
  %11 = icmp sgt i32 %add.s2_30fixp, %3, !taffo.info !17
  br i1 %11, label %if.then5, label %if.else6, !taffo.info !18, !taffo.initweight !19

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @manual_cos(double* noundef %x_f, double* noundef %res) #0 !taffo.initweight !20 !taffo.funinfo !21 !taffo.start !22 {
entry:
  %.flt = load double, double* %x_f, align 8, !taffo.info !23, !taffo.initweight !26, !taffo.target !27
  %0 = fmul double 0x41B0000000000000, %.flt, !taffo.info !23, !taffo.target !27
  %.flt.fallback.s4_28fixp = fptosi double %0 to i32, !taffo.info !23, !taffo.target !27
  %1 = lshr i32 0, 4
  %2 = icmp slt i32 %.flt.fallback.s4_28fixp, %1, !taffo.info !28, !taffo.target !27
  %3 = ashr i32 %.flt.fallback.s4_28fixp, 1, !taffo.info !23, !taffo.target !27
  br i1 %2, label %if.then, label %if.end, !taffo.info !30, !taffo.initweight !19, !taffo.target !27

if.then:                                          ; preds = %entry
  %fneg.s4_28fixp = sub i32 0, %.flt.fallback.s4_28fixp, !taffo.info !31, !taffo.target !27
  %4 = ashr i32 %fneg.s4_28fixp, 1, !taffo.info !31, !taffo.target !27
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %x.0.s5_27fixp = phi i32 [ %4, %if.then ], [ %3, %entry ], !taffo.info !33
  %5 = call i32 @compare_double.3_fixp(i32 %x.0.s5_27fixp, double 0x3FF921FB52713C02), !taffo.info !36, !taffo.constinfo !37, !taffo.target !27
  %cmp2.flt = icmp sle i32 0, %5, !taffo.info !36, !taffo.initweight !19, !taffo.target !27
  %6 = ashr i32 %x.0.s5_27fixp, 2, !taffo.info !33
  br i1 %cmp2.flt, label %if.then3, label %if.end6, !taffo.info !30, !taffo.initweight !40, !taffo.target !27

if.then3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then3
  %x.1.s5_27fixp = phi i32 [ %x.0.s5_27fixp, %if.then3 ], [ %sub.s5_27fixp, %do.cond ], !taffo.info !33
  %7 = lshr i32 1686629705, 3
  %sub.s5_27fixp = sub i32 %x.1.s5_27fixp, %7, !taffo.info !41, !taffo.constinfo !43, !taffo.target !27
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %8 = call i32 @compare_double.3_fixp(i32 %sub.s5_27fixp, double 0x3FF921FB52713C02), !taffo.info !44, !taffo.constinfo !37, !taffo.target !27
  %cmp5.flt = icmp sle i32 0, %8, !taffo.info !44, !taffo.initweight !19, !taffo.target !27
  br i1 %cmp5.flt, label %do.body, label %do.end, !llvm.loop !45, !taffo.info !30, !taffo.initweight !40, !taffo.target !27

do.end:                                           ; preds = %do.cond
  %9 = ashr i32 %sub.s5_27fixp, 2, !taffo.info !41, !taffo.constinfo !43, !taffo.target !27
  br label %if.end6

if.end6:                                          ; preds = %if.end, %do.end
  %x.2.s7_25fixp = phi i32 [ %9, %do.end ], [ %6, %if.end ], !taffo.info !47
  %10 = call i32 @compare_double.1_fixp(i32 %x.2.s7_25fixp, double 0x400921FB53C8D4F1), !taffo.info !44, !taffo.constinfo !50, !taffo.target !27
  %cmp8.flt = icmp sle i32 0, %10, !taffo.info !44, !taffo.initweight !19, !taffo.target !27
  br i1 %cmp8.flt, label %land.lhs.true, label %if.end38, !taffo.info !30, !taffo.initweight !40, !taffo.target !27

land.lhs.true:                                    ; preds = %if.end6
  %11 = call i32 @compare_double.1_fixp(i32 %x.2.s7_25fixp, double 0x3FF921FB52713C02), !taffo.info !44, !taffo.constinfo !37, !taffo.target !27
  %cmp10.flt = icmp eq i32 -1, %11, !taffo.info !44, !taffo.initweight !19, !taffo.target !27
  br i1 %cmp10.flt, label %if.then11, label %if.end38, !taffo.info !30, !taffo.initweight !40, !taffo.target !27

if.then11:                                        ; preds = %land.lhs.true
  %12 = shl i32 %x.2.s7_25fixp, 2, !taffo.info !47
  %13 = lshr i32 1686629711, 2
  %sub12.s5_27fixp = sub i32 %12, %13, !taffo.info !53, !taffo.constinfo !55, !taffo.target !27
  %14 = sext i32 %sub12.s5_27fixp to i64, !taffo.info !53, !taffo.target !27
  %15 = sext i32 %sub12.s5_27fixp to i64, !taffo.info !53, !taffo.target !27
  %16 = mul i64 %14, %15, !taffo.info !56, !taffo.target !27
  %17 = lshr i64 %16, 29, !taffo.info !56, !taffo.target !27
  %mul.u7_25fixp = trunc i64 %17 to i32, !taffo.info !59, !taffo.target !27
  %div.s7_25fixp = sdiv i32 %mul.u7_25fixp, 2, !taffo.info !61, !taffo.constinfo !63, !taffo.target !27
  %18 = sext i32 %sub12.s5_27fixp to i64, !taffo.info !53, !taffo.target !27
  %19 = sext i32 %sub12.s5_27fixp to i64, !taffo.info !53, !taffo.target !27
  %20 = mul i64 %18, %19, !taffo.info !56, !taffo.target !27
  %21 = lshr i64 %20, 29, !taffo.info !56, !taffo.target !27
  %mul13.u7_25fixp = trunc i64 %21 to i32, !taffo.info !59, !taffo.target !27
  %22 = zext i32 %mul13.u7_25fixp to i64, !taffo.info !59, !taffo.target !27
  %23 = shl i64 %22, 2, !taffo.info !59, !taffo.target !27
  %24 = zext i32 12 to i64
  %25 = sdiv i64 %23, %24, !taffo.info !66, !taffo.constinfo !69, !taffo.target !27
  %div14.s5_27fixp = trunc i64 %25 to i32, !taffo.info !72, !taffo.target !27
  %26 = sext i32 %sub12.s5_27fixp to i64, !taffo.info !53, !taffo.target !27
  %27 = sext i32 %sub12.s5_27fixp to i64, !taffo.info !53, !taffo.target !27
  %28 = mul i64 %26, %27, !taffo.info !56, !taffo.target !27
  %29 = lshr i64 %28, 29, !taffo.info !56, !taffo.target !27
  %mul15.u7_25fixp = trunc i64 %29 to i32, !taffo.info !59, !taffo.target !27
  %30 = zext i32 %mul15.u7_25fixp to i64, !taffo.info !59, !taffo.target !27
  %31 = shl i64 %30, 3, !taffo.info !59, !taffo.target !27
  %32 = zext i32 30 to i64
  %33 = sdiv i64 %31, %32, !taffo.info !73, !taffo.constinfo !76, !taffo.target !27
  %div16.s4_28fixp = trunc i64 %33 to i32, !taffo.info !79, !taffo.target !27
  %34 = sext i32 %sub12.s5_27fixp to i64, !taffo.info !53, !taffo.target !27
  %35 = sext i32 %sub12.s5_27fixp to i64, !taffo.info !53, !taffo.target !27
  %36 = mul i64 %34, %35, !taffo.info !56, !taffo.target !27
  %37 = lshr i64 %36, 29, !taffo.info !56, !taffo.target !27
  %mul17.u7_25fixp = trunc i64 %37 to i32, !taffo.info !59, !taffo.target !27
  %38 = zext i32 %mul17.u7_25fixp to i64, !taffo.info !59, !taffo.target !27
  %39 = shl i64 %38, 4, !taffo.info !59, !taffo.target !27
  %40 = zext i32 56 to i64
  %41 = sdiv i64 %39, %40, !taffo.info !80, !taffo.constinfo !83, !taffo.target !27
  %div18.s3_29fixp = trunc i64 %41 to i32, !taffo.info !86, !taffo.target !27
  %42 = sext i32 %sub12.s5_27fixp to i64, !taffo.info !53, !taffo.target !27
  %43 = sext i32 %sub12.s5_27fixp to i64, !taffo.info !53, !taffo.target !27
  %44 = mul i64 %42, %43, !taffo.info !56, !taffo.target !27
  %45 = lshr i64 %44, 29, !taffo.info !56, !taffo.target !27
  %mul19.u7_25fixp = trunc i64 %45 to i32, !taffo.info !59, !taffo.target !27
  %46 = zext i32 %mul19.u7_25fixp to i64, !taffo.info !59, !taffo.target !27
  %47 = shl i64 %46, 4, !taffo.info !59, !taffo.target !27
  %48 = zext i32 90 to i64
  %49 = sdiv i64 %47, %48, !taffo.info !88, !taffo.constinfo !90, !taffo.target !27
  %div20.s3_29fixp = trunc i64 %49 to i32, !taffo.info !93, !taffo.target !27
  %50 = sext i32 %sub12.s5_27fixp to i64, !taffo.info !53, !taffo.target !27
  %51 = sext i32 %sub12.s5_27fixp to i64, !taffo.info !53, !taffo.target !27
  %52 = mul i64 %50, %51, !taffo.info !56, !taffo.target !27
  %53 = lshr i64 %52, 29, !taffo.info !56, !taffo.target !27
  %mul21.u7_25fixp = trunc i64 %53 to i32, !taffo.info !59, !taffo.target !27
  %54 = zext i32 %mul21.u7_25fixp to i64, !taffo.info !59, !taffo.target !27
  %55 = shl i64 %54, 5, !taffo.info !59, !taffo.target !27
  %56 = zext i32 132 to i64
  %57 = sdiv i64 %55, %56, !taffo.info !94, !taffo.constinfo !97, !taffo.target !27
  %div22.s2_30fixp = trunc i64 %57 to i32, !taffo.info !100, !taffo.target !27
  %58 = sext i32 %sub12.s5_27fixp to i64, !taffo.info !53, !taffo.target !27
  %59 = sext i32 %sub12.s5_27fixp to i64, !taffo.info !53, !taffo.target !27
  %60 = mul i64 %58, %59, !taffo.info !56, !taffo.target !27
  %61 = lshr i64 %60, 29, !taffo.info !56, !taffo.target !27
  %mul23.u7_25fixp = trunc i64 %61 to i32, !taffo.info !59, !taffo.target !27
  %62 = zext i32 %mul23.u7_25fixp to i64, !taffo.info !59, !taffo.target !27
  %63 = shl i64 %62, 6, !taffo.info !59, !taffo.target !27
  %64 = zext i32 182 to i64
  %65 = udiv i64 %63, %64, !taffo.info !101, !taffo.constinfo !104, !taffo.target !27
  %div24.u1_31fixp = trunc i64 %65 to i32, !taffo.info !107, !taffo.target !27
  %sub25.u1_31fixp = sub i32 -2147483648, %div24.u1_31fixp, !taffo.info !109, !taffo.constinfo !111, !taffo.target !27
  %neg.s2_30fixp = sub i32 0, %div22.s2_30fixp, !taffo.info !114, !taffo.target !27
  %66 = lshr i32 -2147483648, 1
  %67 = sext i32 %neg.s2_30fixp to i64, !taffo.info !114, !taffo.target !27
  %68 = zext i32 %sub25.u1_31fixp to i64, !taffo.info !109, !taffo.target !27
  %69 = mul i64 %67, %68, !taffo.info !116, !taffo.target !27
  %70 = ashr i64 %69, 31
  %71 = trunc i64 %70 to i32
  %s2_30fixp5 = add i32 %71, %66, !taffo.info !119, !taffo.target !27
  %neg28.s3_29fixp = sub i32 0, %div20.s3_29fixp, !taffo.info !120, !taffo.target !27
  %72 = lshr i32 -2147483648, 2
  %73 = sext i32 %neg28.s3_29fixp to i64, !taffo.info !120, !taffo.target !27
  %74 = sext i32 %s2_30fixp5 to i64, !taffo.info !119, !taffo.target !27
  %75 = mul i64 %73, %74, !taffo.info !122, !taffo.target !27
  %76 = ashr i64 %75, 30
  %77 = trunc i64 %76 to i32
  %s3_29fixp = add i32 %77, %72, !taffo.info !125, !taffo.target !27
  %neg30.s3_29fixp = sub i32 0, %div18.s3_29fixp, !taffo.info !126, !taffo.target !27
  %78 = lshr i32 -2147483648, 3
  %79 = sext i32 %neg30.s3_29fixp to i64, !taffo.info !126, !taffo.target !27
  %80 = sext i32 %s3_29fixp to i64, !taffo.info !125, !taffo.target !27
  %81 = mul i64 %79, %80, !taffo.info !128, !taffo.target !27
  %82 = ashr i64 %81, 30
  %83 = trunc i64 %82 to i32
  %s4_28fixp = add i32 %83, %78, !taffo.info !131, !taffo.target !27
  %neg32.s4_28fixp = sub i32 0, %div16.s4_28fixp, !taffo.info !132, !taffo.target !27
  %84 = lshr i32 -2147483648, 3
  %85 = sext i32 %neg32.s4_28fixp to i64, !taffo.info !132, !taffo.target !27
  %86 = sext i32 %s4_28fixp to i64, !taffo.info !131, !taffo.target !27
  %87 = mul i64 %85, %86, !taffo.info !134, !taffo.target !27
  %88 = ashr i64 %87, 28
  %89 = trunc i64 %88 to i32
  %s4_28fixp9 = add i32 %89, %84, !taffo.info !137, !taffo.target !27
  %90 = ashr i32 %div14.s5_27fixp, 2, !taffo.info !72, !taffo.target !27
  %neg34.s7_25fixp = sub i32 0, %90, !taffo.info !138, !taffo.target !27
  %91 = lshr i32 -2147483648, 6
  %92 = sext i32 %neg34.s7_25fixp to i64, !taffo.info !138, !taffo.target !27
  %93 = sext i32 %s4_28fixp9 to i64, !taffo.info !137, !taffo.target !27
  %94 = mul i64 %92, %93, !taffo.info !140, !taffo.target !27
  %95 = ashr i64 %94, 28
  %96 = trunc i64 %95 to i32
  %s7_25fixp = add i32 %96, %91, !taffo.info !143, !taffo.target !27
  %neg36.s7_25fixp = sub i32 0, %div.s7_25fixp, !taffo.info !144, !taffo.target !27
  %97 = lshr i32 -2147483648, 12
  %98 = sext i32 %neg36.s7_25fixp to i64, !taffo.info !144, !taffo.target !27
  %99 = sext i32 %s7_25fixp to i64, !taffo.info !143, !taffo.target !27
  %100 = mul i64 %98, %99, !taffo.info !146, !taffo.target !27
  %101 = ashr i64 %100, 31
  %102 = trunc i64 %101 to i32
  %s13_19fixp = add i32 %102, %97, !taffo.info !149, !taffo.target !27
  %103 = sext i32 -1 to i64
  %104 = sext i32 %s13_19fixp to i64, !taffo.info !149, !taffo.target !27
  %105 = mul i64 %103, %104, !taffo.info !151, !taffo.constinfo !154, !taffo.target !27
  %mul37.s13_19fixp = trunc i64 %105 to i32, !taffo.info !157, !taffo.target !27
  %106 = sitofp i32 %mul37.s13_19fixp to double, !taffo.info !157, !taffo.target !27
  %107 = fdiv double %106, 5.242880e+05, !taffo.info !157, !taffo.target !27
  store double %107, double* %res, align 8, !taffo.info !30, !taffo.target !27
  br label %return

if.end38:                                         ; preds = %land.lhs.true, %if.end6
  %108 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !47
  %109 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !47
  %110 = mul i64 %108, %109, !taffo.info !158, !taffo.target !27
  %111 = lshr i64 %110, 24, !taffo.info !158, !taffo.target !27
  %mul39.u6_26fixp = trunc i64 %111 to i32, !taffo.info !161, !taffo.target !27
  %div40.s6_26fixp = sdiv i32 %mul39.u6_26fixp, 2, !taffo.info !163, !taffo.constinfo !63, !taffo.target !27
  %112 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !47
  %113 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !47
  %114 = mul i64 %112, %113, !taffo.info !166, !taffo.target !27
  %115 = ashr i64 %114, 25, !taffo.info !166, !taffo.target !27
  %mul41.s7_25fixp = trunc i64 %115 to i32, !taffo.info !167, !taffo.target !27
  %116 = sext i32 %mul41.s7_25fixp to i64, !taffo.info !167, !taffo.target !27
  %117 = shl i64 %116, 3, !taffo.info !167, !taffo.target !27
  %118 = zext i32 12 to i64
  %119 = sdiv i64 %117, %118, !taffo.info !168, !taffo.constinfo !69, !taffo.target !27
  %div42.s4_28fixp = trunc i64 %119 to i32, !taffo.info !170, !taffo.target !27
  %120 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !47
  %121 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !47
  %122 = mul i64 %120, %121, !taffo.info !166, !taffo.target !27
  %123 = ashr i64 %122, 25, !taffo.info !166, !taffo.target !27
  %mul43.s7_25fixp = trunc i64 %123 to i32, !taffo.info !167, !taffo.target !27
  %124 = sext i32 %mul43.s7_25fixp to i64, !taffo.info !167, !taffo.target !27
  %125 = shl i64 %124, 4, !taffo.info !167, !taffo.target !27
  %126 = zext i32 30 to i64
  %127 = sdiv i64 %125, %126, !taffo.info !171, !taffo.constinfo !76, !taffo.target !27
  %div44.s3_29fixp = trunc i64 %127 to i32, !taffo.info !173, !taffo.target !27
  %128 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !47
  %129 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !47
  %130 = mul i64 %128, %129, !taffo.info !166, !taffo.target !27
  %131 = ashr i64 %130, 25, !taffo.info !166, !taffo.target !27
  %mul45.s7_25fixp = trunc i64 %131 to i32, !taffo.info !167, !taffo.target !27
  %132 = sext i32 %mul45.s7_25fixp to i64, !taffo.info !167, !taffo.target !27
  %133 = shl i64 %132, 4, !taffo.info !167, !taffo.target !27
  %134 = zext i32 56 to i64
  %135 = sdiv i64 %133, %134, !taffo.info !174, !taffo.constinfo !83, !taffo.target !27
  %div46.s3_29fixp = trunc i64 %135 to i32, !taffo.info !176, !taffo.target !27
  %136 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !47
  %137 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !47
  %138 = mul i64 %136, %137, !taffo.info !166, !taffo.target !27
  %139 = ashr i64 %138, 25, !taffo.info !166, !taffo.target !27
  %mul47.s7_25fixp = trunc i64 %139 to i32, !taffo.info !167, !taffo.target !27
  %140 = sext i32 %mul47.s7_25fixp to i64, !taffo.info !167, !taffo.target !27
  %141 = shl i64 %140, 5, !taffo.info !167, !taffo.target !27
  %142 = zext i32 90 to i64
  %143 = sdiv i64 %141, %142, !taffo.info !177, !taffo.constinfo !90, !taffo.target !27
  %div48.s2_30fixp = trunc i64 %143 to i32, !taffo.info !179, !taffo.target !27
  %144 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !47
  %145 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !47
  %146 = mul i64 %144, %145, !taffo.info !166, !taffo.target !27
  %147 = ashr i64 %146, 25, !taffo.info !166, !taffo.target !27
  %mul49.s7_25fixp = trunc i64 %147 to i32, !taffo.info !167, !taffo.target !27
  %148 = sext i32 %mul49.s7_25fixp to i64, !taffo.info !167, !taffo.target !27
  %149 = shl i64 %148, 5, !taffo.info !167, !taffo.target !27
  %150 = zext i32 132 to i64
  %151 = sdiv i64 %149, %150, !taffo.info !180, !taffo.constinfo !97, !taffo.target !27
  %div50.s2_30fixp = trunc i64 %151 to i32, !taffo.info !182, !taffo.target !27
  %152 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !47
  %153 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !47
  %154 = mul i64 %152, %153, !taffo.info !166, !taffo.target !27
  %155 = ashr i64 %154, 25, !taffo.info !166, !taffo.target !27
  %mul51.s7_25fixp = trunc i64 %155 to i32, !taffo.info !167, !taffo.target !27
  %156 = sext i32 %mul51.s7_25fixp to i64, !taffo.info !167, !taffo.target !27
  %157 = shl i64 %156, 6, !taffo.info !167, !taffo.target !27
  %158 = zext i32 182 to i64
  %159 = udiv i64 %157, %158, !taffo.info !183, !taffo.constinfo !104, !taffo.target !27
  %div52.u1_31fixp = trunc i64 %159 to i32, !taffo.info !185, !taffo.target !27
  %sub53.u1_31fixp = sub i32 -2147483648, %div52.u1_31fixp, !taffo.info !186, !taffo.constinfo !111, !taffo.target !27
  %neg55.s2_30fixp = sub i32 0, %div50.s2_30fixp, !taffo.info !188, !taffo.target !27
  %160 = lshr i32 -2147483648, 1
  %161 = sext i32 %neg55.s2_30fixp to i64, !taffo.info !188, !taffo.target !27
  %162 = zext i32 %sub53.u1_31fixp to i64, !taffo.info !186, !taffo.target !27
  %163 = mul i64 %161, %162, !taffo.info !190, !taffo.target !27
  %164 = ashr i64 %163, 31
  %165 = trunc i64 %164 to i32
  %s2_30fixp = add i32 %165, %160, !taffo.info !192, !taffo.target !27
  %neg57.s2_30fixp = sub i32 0, %div48.s2_30fixp, !taffo.info !193, !taffo.target !27
  %166 = lshr i32 -2147483648, 1
  %167 = sext i32 %neg57.s2_30fixp to i64, !taffo.info !193, !taffo.target !27
  %168 = sext i32 %s2_30fixp to i64, !taffo.info !192, !taffo.target !27
  %169 = mul i64 %167, %168, !taffo.info !195, !taffo.target !27
  %170 = ashr i64 %169, 30
  %171 = trunc i64 %170 to i32
  %s2_30fixp6 = add i32 %171, %166, !taffo.info !198, !taffo.target !27
  %neg59.s3_29fixp = sub i32 0, %div46.s3_29fixp, !taffo.info !199, !taffo.target !27
  %172 = lshr i32 -2147483648, 2
  %173 = sext i32 %neg59.s3_29fixp to i64, !taffo.info !199, !taffo.target !27
  %174 = sext i32 %s2_30fixp6 to i64, !taffo.info !198, !taffo.target !27
  %175 = mul i64 %173, %174, !taffo.info !201, !taffo.target !27
  %176 = ashr i64 %175, 30
  %177 = trunc i64 %176 to i32
  %s3_29fixp7 = add i32 %177, %172, !taffo.info !203, !taffo.target !27
  %neg61.s3_29fixp = sub i32 0, %div44.s3_29fixp, !taffo.info !204, !taffo.target !27
  %178 = lshr i32 -2147483648, 3
  %179 = sext i32 %neg61.s3_29fixp to i64, !taffo.info !204, !taffo.target !27
  %180 = sext i32 %s3_29fixp7 to i64, !taffo.info !203, !taffo.target !27
  %181 = mul i64 %179, %180, !taffo.info !206, !taffo.target !27
  %182 = ashr i64 %181, 30
  %183 = trunc i64 %182 to i32
  %s4_28fixp8 = add i32 %183, %178, !taffo.info !208, !taffo.target !27
  %neg63.s4_28fixp = sub i32 0, %div42.s4_28fixp, !taffo.info !209, !taffo.target !27
  %184 = lshr i32 -2147483648, 3
  %185 = sext i32 %neg63.s4_28fixp to i64, !taffo.info !209, !taffo.target !27
  %186 = sext i32 %s4_28fixp8 to i64, !taffo.info !208, !taffo.target !27
  %187 = mul i64 %185, %186, !taffo.info !211, !taffo.target !27
  %188 = ashr i64 %187, 28
  %189 = trunc i64 %188 to i32
  %s4_28fixp10 = add i32 %189, %184, !taffo.info !213, !taffo.target !27
  %neg65.s6_26fixp = sub i32 0, %div40.s6_26fixp, !taffo.info !214, !taffo.target !27
  %190 = lshr i32 -2147483648, 8
  %191 = sext i32 %neg65.s6_26fixp to i64, !taffo.info !214, !taffo.target !27
  %192 = sext i32 %s4_28fixp10 to i64, !taffo.info !213, !taffo.target !27
  %193 = mul i64 %191, %192, !taffo.info !216, !taffo.target !27
  %194 = ashr i64 %193, 31
  %195 = trunc i64 %194 to i32
  %s9_23fixp = add i32 %195, %190, !taffo.info !219, !taffo.target !27
  %196 = sitofp i32 %s9_23fixp to double, !taffo.info !219, !taffo.target !27
  %197 = fdiv double %196, 0x4160000000000000, !taffo.info !219, !taffo.target !27
  store double %197, double* %res, align 8, !taffo.info !30, !taffo.target !27
  br label %return

return:                                           ; preds = %if.end38, %if.then11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @manual_sin(double* noundef %x_f, double* noundef %res) #0 !taffo.initweight !20 !taffo.funinfo !21 {
entry:
  %0 = load double, double* %x_f, align 8
  %sub = fsub double %0, 0x3FF921FB52713C02, !taffo.constinfo !43
  store double %sub, double* %x_f, align 8
  call void @manual_cos(double* noundef %x_f, double* noundef %res), !taffo.constinfo !221
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !222 !taffo.funinfo !222 {
entry:
  %in_x = alloca double, align 8
  %res_cos = alloca double, align 8
  %res_sin = alloca double, align 8
  store double 0x3FE0C15237DB38A1, double* %in_x, align 8, !taffo.constinfo !223
  call void @manual_cos(double* noundef %in_x, double* noundef %res_cos), !taffo.constinfo !221
  call void @manual_sin(double* noundef %in_x, double* noundef %res_sin), !taffo.constinfo !221
  %0 = load double, double* %res_cos, align 8
  %1 = load double, double* %res_sin, align 8
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), double noundef %0, double noundef %1), !taffo.constinfo !226
  ret i32 0
}

declare !taffo.initweight !227 !taffo.funinfo !228 i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_double.3_fixp(i32 noundef %f1.s5_27fixp, double noundef %f2) #0 !taffo.initweight !229 !taffo.funinfo !230 !taffo.sourceFunction !231 {
entry:
  %0 = fmul double 0x41D0000000000000, %f2, !taffo.info !38
  %1 = fptoui double %0 to i32, !taffo.info !38
  %2 = fmul double 0x41D0000000000000, %f2, !taffo.info !38
  %3 = fptoui double %2 to i32, !taffo.info !38
  %4 = lshr i32 21, 4
  %sub.s5_27fixp = sub i32 %f1.s5_27fixp, %4, !taffo.info !232, !taffo.constinfo !14
  %5 = lshr i32 %3, 3, !taffo.info !38
  %6 = icmp slt i32 %sub.s5_27fixp, %5, !taffo.info !44
  br i1 %6, label %if.then, label %if.else, !taffo.info !18, !taffo.initweight !19

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %7 = lshr i32 21, 4
  %add.s5_27fixp = add i32 %f1.s5_27fixp, %7, !taffo.info !234, !taffo.constinfo !14
  %8 = lshr i32 %1, 3, !taffo.info !38
  %9 = icmp sgt i32 %add.s5_27fixp, %8, !taffo.info !44
  br i1 %9, label %if.then5, label %if.else6, !taffo.info !18, !taffo.initweight !19

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !236
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_double.1_fixp(i32 noundef %f1.s7_25fixp, double noundef %f2) #0 !taffo.initweight !229 !taffo.funinfo !237 !taffo.sourceFunction !231 {
entry:
  %0 = fmul double 0x41D0000000000000, %f2, !taffo.info !38
  %1 = fptoui double %0 to i32, !taffo.info !38
  %2 = fmul double 0x41D0000000000000, %f2, !taffo.info !38
  %3 = fptoui double %2 to i32, !taffo.info !38
  %4 = shl i32 %f1.s7_25fixp, 2, !taffo.info !47
  %5 = lshr i32 21, 4
  %sub.s5_27fixp = sub i32 %4, %5, !taffo.info !238, !taffo.constinfo !14
  %6 = lshr i32 %3, 3, !taffo.info !38
  %7 = icmp slt i32 %sub.s5_27fixp, %6, !taffo.info !44
  br i1 %7, label %if.then, label %if.else, !taffo.info !18, !taffo.initweight !19

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %8 = shl i32 %f1.s7_25fixp, 2, !taffo.info !47
  %9 = lshr i32 21, 4
  %add.s5_27fixp = add i32 %8, %9, !taffo.info !240, !taffo.constinfo !14
  %10 = lshr i32 %1, 3, !taffo.info !38
  %11 = icmp sgt i32 %add.s5_27fixp, %10, !taffo.info !44
  br i1 %11, label %if.then5, label %if.else6, !taffo.info !18, !taffo.initweight !19

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !236
  ret i32 %retval.0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.150000e+02}
!2 = !{i32 1, !"wchar_size", i32 4}
!3 = !{i32 7, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"frame-pointer", i32 2}
!7 = !{!"Ubuntu clang version 15.0.7"}
!8 = !{i32 2, i32 2}
!9 = distinct !{null, null, null, null}
!10 = !{i32 1, !11, i32 1, !11}
!11 = !{!12, !13, i1 false, i2 1}
!12 = !{!"fixp", i32 -32, i32 30}
!13 = !{double -1.000000e+00, double 1.000000e+00}
!14 = !{i1 false, !15}
!15 = !{i1 false, !16, i1 false, i2 0}
!16 = !{double 1.000000e-08, double 1.000000e-08}
!17 = !{!12, i1 false, i1 false, i2 1}
!18 = !{i1 false, !13, i1 false, i2 1}
!19 = !{i32 3}
!20 = !{i32 -1, i32 -1}
!21 = !{i32 0, i1 false, i32 0, i1 false}
!22 = !{i1 true}
!23 = !{!24, !25, i1 false, i2 1}
!24 = !{!"fixp", i32 -32, i32 28}
!25 = !{double 0.000000e+00, double 0x401921FB53C8D4F1}
!26 = !{i32 2}
!27 = !{!"x"}
!28 = !{!29, i1 false, i1 false, i2 1}
!29 = !{!"fixp", i32 32, i32 29}
!30 = !{i1 false, !25, i1 false, i2 1}
!31 = !{!24, !32, i1 false, i2 1}
!32 = !{double 0xC01921FB53C8D4F1, double -0.000000e+00}
!33 = !{!34, !35, i1 false, i2 1}
!34 = !{!"fixp", i32 -32, i32 27}
!35 = !{double 0xC01921FB53C8D4F1, double 0x401921FB53C8D4F1}
!36 = !{!24, i1 false, i1 false, i2 1}
!37 = !{i1 false, !38, i1 false}
!38 = !{i1 false, !39, i1 false, i2 0}
!39 = !{double 0x3FF921FB52713C02, double 0x3FF921FB52713C02}
!40 = !{i32 4}
!41 = !{!34, !42, i1 false, i2 1}
!42 = !{double 0xC01F6A7A286523F2, double 0x4012D97C7F2C85F0}
!43 = !{i1 false, !38}
!44 = !{!34, i1 false, i1 false, i2 1}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!48, !49, i1 false, i2 1}
!48 = !{!"fixp", i32 -32, i32 25}
!49 = !{double 0xC01F6A7A286523F2, double 0x401921FB53C8D4F1}
!50 = !{i1 false, !51, i1 false}
!51 = !{i1 false, !52, i1 false, i2 0}
!52 = !{double 0x400921FB53C8D4F1, double 0x400921FB53C8D4F1}
!53 = !{!34, !54, i1 false, i2 1}
!54 = !{double 0xC025FDBBE924C735, double 0x400921FB53C8D4F1}
!55 = !{i1 false, !51}
!56 = !{!57, !58, i1 false, i2 1}
!57 = !{!"fixp", i32 64, i32 54}
!58 = !{double 0.000000e+00, double 0x405E39C5134C9D08}
!59 = !{!60, !58, i1 false, i2 1}
!60 = !{!"fixp", i32 32, i32 25}
!61 = !{!48, !62, i1 false, i2 1}
!62 = !{double 0.000000e+00, double 0x404E39C5134C9D08}
!63 = !{i1 false, !64}
!64 = !{i1 false, !65, i1 false, i2 0}
!65 = !{double 2.000000e+00, double 2.000000e+00}
!66 = !{!67, !68, i1 false, i2 1}
!67 = !{!"fixp", i32 -64, i32 27}
!68 = !{double 0.000000e+00, double 0x402426836233135B}
!69 = !{i1 false, !70}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 1.200000e+01, double 1.200000e+01}
!72 = !{!34, !68, i1 false, i2 1}
!73 = !{!74, !75, i1 false, i2 1}
!74 = !{!"fixp", i32 -64, i32 28}
!75 = !{double 0.000000e+00, double 0x40101ECF81C275E2}
!76 = !{i1 false, !77}
!77 = !{i1 false, !78, i1 false, i2 0}
!78 = !{double 3.000000e+01, double 3.000000e+01}
!79 = !{!24, !75, i1 false, i2 1}
!80 = !{!81, !82, i1 false, i2 1}
!81 = !{!"fixp", i32 -64, i32 29}
!82 = !{double 0.000000e+00, double 0x400145952F997E4E}
!83 = !{i1 false, !84}
!84 = !{i1 false, !85, i1 false, i2 0}
!85 = !{double 5.600000e+01, double 5.600000e+01}
!86 = !{!87, !82, i1 false, i2 1}
!87 = !{!"fixp", i32 -32, i32 29}
!88 = !{!81, !89, i1 false, i2 1}
!89 = !{double 0.000000e+00, double 0x3FF57E6A02589D2E}
!90 = !{i1 false, !91}
!91 = !{i1 false, !92, i1 false, i2 0}
!92 = !{double 9.000000e+01, double 9.000000e+01}
!93 = !{!87, !89, i1 false, i2 1}
!94 = !{!95, !96, i1 false, i2 1}
!95 = !{!"fixp", i32 -64, i32 30}
!96 = !{double 0.000000e+00, double 0x3FED4F4ABD619084}
!97 = !{i1 false, !98}
!98 = !{i1 false, !99, i1 false, i2 0}
!99 = !{double 1.320000e+02, double 1.320000e+02}
!100 = !{!12, !96, i1 false, i2 1}
!101 = !{!102, !103, i1 false, i2 1}
!102 = !{!"fixp", i32 64, i32 31}
!103 = !{double 0.000000e+00, double 0x3FE541F2B0BCEA38}
!104 = !{i1 false, !105}
!105 = !{i1 false, !106, i1 false, i2 0}
!106 = !{double 1.820000e+02, double 1.820000e+02}
!107 = !{!108, !103, i1 false, i2 1}
!108 = !{!"fixp", i32 32, i32 31}
!109 = !{!108, !110, i1 false, i2 1}
!110 = !{double 0x3FD57C1A9E862B90, double 1.000000e+00}
!111 = !{!112, i1 false}
!112 = !{i1 false, !113, i1 false, i2 0}
!113 = !{double 1.000000e+00, double 1.000000e+00}
!114 = !{!12, !115, i1 false, i2 1}
!115 = !{double 0xBFED4F4ABD619084, double -0.000000e+00}
!116 = !{!117, !118, i1 false, i2 1}
!117 = !{!"fixp", i32 -64, i32 61}
!118 = !{double 0x3FB585AA14F37BE0, double 1.000000e+00}
!119 = !{!12, !118, i1 false, i2 1}
!120 = !{!87, !121, i1 false, i2 1}
!121 = !{double 0xBFF57E6A02589D2E, double -0.000000e+00}
!122 = !{!123, !124, i1 false, i2 1}
!123 = !{!"fixp", i32 -64, i32 59}
!124 = !{double 0xBFD5F9A8096274B8, double 1.000000e+00}
!125 = !{!87, !124, i1 false, i2 1}
!126 = !{!87, !127, i1 false, i2 1}
!127 = !{double 0xC00145952F997E4E, double -0.000000e+00}
!128 = !{!129, !130, i1 false, i2 1}
!129 = !{!"fixp", i32 -64, i32 58}
!130 = !{double 0xBFF28B2A5F32FC9C, double 0x3FFBDC6A0A770D36}
!131 = !{!24, !130, i1 false, i2 1}
!132 = !{!24, !133, i1 false, i2 1}
!133 = !{double 0xC0101ECF81C275E2, double -0.000000e+00}
!134 = !{!135, !136, i1 false, i2 1}
!135 = !{!"fixp", i32 -64, i32 56}
!136 = !{double 0xC0181210A6DA4892, double 0x4016AEDFCD7D117A}
!137 = !{!24, !136, i1 false, i2 1}
!138 = !{!48, !139, i1 false, i2 1}
!139 = !{double 0xC02426836233135B, double -0.000000e+00}
!140 = !{!141, !142, i1 false, i2 1}
!141 = !{!"fixp", i32 -64, i32 53}
!142 = !{double 0xC04C1131576444F7, double 0x404ED0855FC0F3EF}
!143 = !{!48, !142, i1 false, i2 1}
!144 = !{!48, !145, i1 false, i2 1}
!145 = !{double 0xC04E39C5134C9D08, double -0.000000e+00}
!146 = !{!147, !148, i1 false, i2 1}
!147 = !{!"fixp", i32 -64, i32 50}
!148 = !{double 0xC0AD191E3DA21F83, double 0x40AA84C9BC96D520}
!149 = !{!150, !148, i1 false, i2 1}
!150 = !{!"fixp", i32 -32, i32 19}
!151 = !{!152, !153, i1 false, i2 1}
!152 = !{!"fixp", i32 -64, i32 19}
!153 = !{double 0xC0AA84C9BC96D520, double 0x40AD191E3DA21F83}
!154 = !{!155, i1 false}
!155 = !{i1 false, !156, i1 false, i2 0}
!156 = !{double -1.000000e+00, double -1.000000e+00}
!157 = !{!150, !153, i1 false, i2 1}
!158 = !{!159, !160, i1 false, i2 1}
!159 = !{!"fixp", i32 64, i32 50}
!160 = !{double 0.000000e+00, double 0x404ED7AEF961E7E9}
!161 = !{!162, !160, i1 false, i2 1}
!162 = !{!"fixp", i32 32, i32 26}
!163 = !{!164, !165, i1 false, i2 1}
!164 = !{!"fixp", i32 -32, i32 26}
!165 = !{double 0.000000e+00, double 0x403ED7AEF961E7E9}
!166 = !{!147, !160, i1 false, i2 1}
!167 = !{!48, !160, i1 false, i2 1}
!168 = !{!74, !169, i1 false, i2 1}
!169 = !{double 0.000000e+00, double 0x40148FC9FB969A9B}
!170 = !{!24, !169, i1 false, i2 1}
!171 = !{!81, !172, i1 false, i2 1}
!172 = !{double 0.000000e+00, double 0x40007307FC787BAF}
!173 = !{!87, !172, i1 false, i2 1}
!174 = !{!81, !175, i1 false, i2 1}
!175 = !{double 0.000000e+00, double 0x3FF19FD1B3135FF3}
!176 = !{!87, !175, i1 false, i2 1}
!177 = !{!95, !178, i1 false, i2 1}
!178 = !{double 0.000000e+00, double 0x3FE5EEB550A0A4EA}
!179 = !{!12, !178, i1 false, i2 1}
!180 = !{!95, !181, i1 false, i2 1}
!181 = !{double 0.000000e+00, double 0x3FDDE86B9C7DF828}
!182 = !{!12, !181, i1 false, i2 1}
!183 = !{!102, !184, i1 false, i2 1}
!184 = !{double 0.000000e+00, double 0x3FD5B102177A4EB5}
!185 = !{!108, !184, i1 false, i2 1}
!186 = !{!108, !187, i1 false, i2 1}
!187 = !{double 0x3FE5277EF442D8A6, double 1.000000e+00}
!188 = !{!12, !189, i1 false, i2 1}
!189 = !{double 0xBFDDE86B9C7DF828, double -0.000000e+00}
!190 = !{!117, !191, i1 false, i2 1}
!191 = !{double 0x3FE10BCA31C103EC, double 1.000000e+00}
!192 = !{!12, !191, i1 false, i2 1}
!193 = !{!12, !194, i1 false, i2 1}
!194 = !{double 0xBFE5EEB550A0A4EA, double -0.000000e+00}
!195 = !{!196, !197, i1 false, i2 1}
!196 = !{!"fixp", i32 -64, i32 60}
!197 = !{double 0x3FD422955EBEB62C, double 1.000000e+00}
!198 = !{!12, !197, i1 false, i2 1}
!199 = !{!87, !200, i1 false, i2 1}
!200 = !{double 0xBFF19FD1B3135FF3, double -0.000000e+00}
!201 = !{!123, !202, i1 false, i2 1}
!202 = !{double 0xBFB9FD1B3135FF30, double 1.000000e+00}
!203 = !{!87, !202, i1 false, i2 1}
!204 = !{!87, !205, i1 false, i2 1}
!205 = !{double 0xC0007307FC787BAF, double -0.000000e+00}
!206 = !{!129, !207, i1 false, i2 1}
!207 = !{double 0xBFF0E60FF8F0F75E, double 0x3FF356FE6BAF3709}
!208 = !{!24, !207, i1 false, i2 1}
!209 = !{!24, !210, i1 false, i2 1}
!210 = !{double 0xC0148FC9FB969A9B, double -0.000000e+00}
!211 = !{!135, !212, i1 false, i2 1}
!212 = !{double 0xC014DA8BAD745D3B, double 0x4019B77179CEF0DD}
!213 = !{!24, !212, i1 false, i2 1}
!214 = !{!164, !215, i1 false, i2 1}
!215 = !{double 0xC03ED7AEF961E7E9, double -0.000000e+00}
!216 = !{!217, !218, i1 false, i2 1}
!217 = !{!"fixp", i32 -64, i32 54}
!218 = !{double 0xC068A94F827F87F2, double 0x4064397153EE58D9}
!219 = !{!220, !218, i1 false, i2 1}
!220 = !{!"fixp", i32 -32, i32 23}
!221 = !{i1 false, i1 false, i1 false}
!222 = !{}
!223 = !{!224, i1 false}
!224 = !{i1 false, !225, i1 false, i2 0}
!225 = !{double 0x3FE0C15237DB38A1, double 0x3FE0C15237DB38A1}
!226 = !{i1 false, i1 false, i1 false, i1 false}
!227 = !{i32 -1}
!228 = !{i32 0, i1 false}
!229 = !{i32 2, i32 -1}
!230 = !{i32 1, !41, i32 1, !38}
!231 = !{i32 (double, double)* @compare_double}
!232 = !{!34, !233, i1 false, i2 1}
!233 = !{double 0xC01F6A7A2910F069, double 0x4012D97C7E80B979}
!234 = !{!34, !235, i1 false, i2 1}
!235 = !{double 0xC01F6A7A27B9577B, double 0x4012D97C7FD85267}
!236 = !{i1 false, !13, i1 false, i2 0}
!237 = !{i32 1, !47, i32 1, !38}
!238 = !{!34, !239, i1 false, i2 1}
!239 = !{double 0xC01F6A7A2910F069, double 0x401921FB531D087A}
!240 = !{!34, !241, i1 false, i2 1}
!241 = !{double 0xC01F6A7A27B9577B, double 0x401921FB5474A168}
