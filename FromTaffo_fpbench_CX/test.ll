; ModuleID = '/tmp/tmp.8Ab983hgv8/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.8 = private unnamed_addr constant [14 x i8] c"Values Begin\0A\00", align 1, !taffo.info !0
@.str.9 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1, !taffo.info !2
@.str.10 = private unnamed_addr constant [12 x i8] c"Values End\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compare_float(float noundef %f1, float noundef %f2) #0 !taffo.initweight !10 !taffo.equivalentChild !11 !taffo.funinfo !12 {
entry:
  %0 = fmul float 0x41D0000000000000, %f2, !taffo.info !13
  %1 = fptosi float %0 to i32, !taffo.info !13
  %2 = fmul float 0x41D0000000000000, %f2, !taffo.info !13
  %3 = fptosi float %2 to i32, !taffo.info !13
  %4 = fmul float 0x41D0000000000000, %f1, !taffo.info !13
  %5 = fptosi float %4 to i32, !taffo.info !13
  %6 = fmul float 0x41D0000000000000, %f1, !taffo.info !13
  %7 = fptosi float %6 to i32, !taffo.info !13
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
define dso_local void @manual_cos(float* noundef %x_f, float* noundef %res) #0 !taffo.initweight !22 !taffo.equivalentChild !23 !taffo.funinfo !24 !taffo.start !25 {
entry:
  %.flt = load float, float* %x_f, align 4, !taffo.info !26, !taffo.initweight !29, !taffo.target !30
  %0 = fmul float 0x41B0000000000000, %.flt, !taffo.info !26, !taffo.target !30
  %.flt.fallback.s4_28fixp = fptosi float %0 to i32, !taffo.info !26, !taffo.target !30
  %1 = lshr i32 0, 4
  %2 = icmp slt i32 %.flt.fallback.s4_28fixp, %1, !taffo.info !31, !taffo.target !30
  %3 = ashr i32 %.flt.fallback.s4_28fixp, 1, !taffo.info !26, !taffo.target !30
  br i1 %2, label %if.then, label %if.end, !taffo.info !33, !taffo.initweight !21, !taffo.target !30

if.then:                                          ; preds = %entry
  %fneg.s4_28fixp = sub i32 0, %.flt.fallback.s4_28fixp, !taffo.info !34, !taffo.target !30
  %4 = ashr i32 %fneg.s4_28fixp, 1, !taffo.info !34, !taffo.target !30
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %x.0.s5_27fixp = phi i32 [ %4, %if.then ], [ %3, %entry ], !taffo.info !36
  %5 = call i32 @compare_float.4_fixp(i32 %x.0.s5_27fixp, float 0x3FF921FB60000000), !taffo.info !39, !taffo.constinfo !40, !taffo.target !30
  %cmp2.flt = icmp sle i32 0, %5, !taffo.info !39, !taffo.initweight !21, !taffo.target !30
  %6 = ashr i32 %x.0.s5_27fixp, 2, !taffo.info !36
  br i1 %cmp2.flt, label %if.then3, label %if.end8, !taffo.info !33, !taffo.initweight !43, !taffo.target !30

if.then3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then3
  %x.1.s5_27fixp = phi i32 [ %x.0.s5_27fixp, %if.then3 ], [ %sub.s5_27fixp, %do.cond ], !taffo.info !36
  %7 = lshr i32 1686629705, 3
  %sub.s5_27fixp = sub i32 %x.1.s5_27fixp, %7, !taffo.info !44, !taffo.constinfo !46, !taffo.target !30
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %8 = call i32 @compare_float.4_fixp(i32 %sub.s5_27fixp, float 0x3FF921FB60000000), !taffo.info !49, !taffo.constinfo !40, !taffo.target !30
  %cmp6.flt = icmp sle i32 0, %8, !taffo.info !49, !taffo.initweight !21, !taffo.target !30
  br i1 %cmp6.flt, label %do.body, label %do.end, !llvm.loop !50, !taffo.info !33, !taffo.initweight !43, !taffo.target !30

do.end:                                           ; preds = %do.cond
  %9 = ashr i32 %sub.s5_27fixp, 2, !taffo.info !44, !taffo.constinfo !46, !taffo.target !30
  br label %if.end8

if.end8:                                          ; preds = %if.end, %do.end
  %x.2.s7_25fixp = phi i32 [ %9, %do.end ], [ %6, %if.end ], !taffo.info !52
  %10 = call i32 @compare_float.2_fixp(i32 %x.2.s7_25fixp, float 0x400921FB60000000), !taffo.info !49, !taffo.constinfo !55, !taffo.target !30
  %cmp10.flt = icmp sle i32 0, %10, !taffo.info !49, !taffo.initweight !21, !taffo.target !30
  br i1 %cmp10.flt, label %land.lhs.true, label %if.end44, !taffo.info !33, !taffo.initweight !43, !taffo.target !30

land.lhs.true:                                    ; preds = %if.end8
  %11 = call i32 @compare_float.2_fixp(i32 %x.2.s7_25fixp, float 0x3FF921FB60000000), !taffo.info !49, !taffo.constinfo !40, !taffo.target !30
  %cmp13.flt = icmp eq i32 -1, %11, !taffo.info !49, !taffo.initweight !21, !taffo.target !30
  br i1 %cmp13.flt, label %if.then15, label %if.end44, !taffo.info !33, !taffo.initweight !43, !taffo.target !30

if.then15:                                        ; preds = %land.lhs.true
  %conv16.s5_27fixp = shl i32 %x.2.s7_25fixp, 2, !taffo.info !58, !taffo.target !30
  %12 = lshr i32 1686629711, 2
  %sub17.s5_27fixp = sub i32 %conv16.s5_27fixp, %12, !taffo.info !59, !taffo.constinfo !61, !taffo.target !30
  %13 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !59, !taffo.target !30
  %14 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !59, !taffo.target !30
  %15 = mul i64 %13, %14, !taffo.info !64, !taffo.target !30
  %16 = lshr i64 %15, 29, !taffo.info !64, !taffo.target !30
  %mul.u7_25fixp = trunc i64 %16 to i32, !taffo.info !67, !taffo.target !30
  %div.s7_25fixp = sdiv i32 %mul.u7_25fixp, 2, !taffo.info !69, !taffo.constinfo !71, !taffo.target !30
  %17 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !59, !taffo.target !30
  %18 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !59, !taffo.target !30
  %19 = mul i64 %17, %18, !taffo.info !64, !taffo.target !30
  %20 = lshr i64 %19, 29, !taffo.info !64, !taffo.target !30
  %mul19.u7_25fixp = trunc i64 %20 to i32, !taffo.info !67, !taffo.target !30
  %21 = zext i32 %mul19.u7_25fixp to i64, !taffo.info !67, !taffo.target !30
  %22 = shl i64 %21, 2, !taffo.info !67, !taffo.target !30
  %23 = zext i32 12 to i64
  %24 = sdiv i64 %22, %23, !taffo.info !74, !taffo.constinfo !77, !taffo.target !30
  %div20.s5_27fixp = trunc i64 %24 to i32, !taffo.info !80, !taffo.target !30
  %25 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !59, !taffo.target !30
  %26 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !59, !taffo.target !30
  %27 = mul i64 %25, %26, !taffo.info !64, !taffo.target !30
  %28 = lshr i64 %27, 29, !taffo.info !64, !taffo.target !30
  %mul21.u7_25fixp = trunc i64 %28 to i32, !taffo.info !67, !taffo.target !30
  %29 = zext i32 %mul21.u7_25fixp to i64, !taffo.info !67, !taffo.target !30
  %30 = shl i64 %29, 3, !taffo.info !67, !taffo.target !30
  %31 = zext i32 30 to i64
  %32 = sdiv i64 %30, %31, !taffo.info !81, !taffo.constinfo !84, !taffo.target !30
  %div22.s4_28fixp = trunc i64 %32 to i32, !taffo.info !87, !taffo.target !30
  %33 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !59, !taffo.target !30
  %34 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !59, !taffo.target !30
  %35 = mul i64 %33, %34, !taffo.info !64, !taffo.target !30
  %36 = lshr i64 %35, 29, !taffo.info !64, !taffo.target !30
  %mul23.u7_25fixp = trunc i64 %36 to i32, !taffo.info !67, !taffo.target !30
  %37 = zext i32 %mul23.u7_25fixp to i64, !taffo.info !67, !taffo.target !30
  %38 = shl i64 %37, 4, !taffo.info !67, !taffo.target !30
  %39 = zext i32 56 to i64
  %40 = sdiv i64 %38, %39, !taffo.info !88, !taffo.constinfo !91, !taffo.target !30
  %div24.s3_29fixp = trunc i64 %40 to i32, !taffo.info !94, !taffo.target !30
  %41 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !59, !taffo.target !30
  %42 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !59, !taffo.target !30
  %43 = mul i64 %41, %42, !taffo.info !64, !taffo.target !30
  %44 = lshr i64 %43, 29, !taffo.info !64, !taffo.target !30
  %mul25.u7_25fixp = trunc i64 %44 to i32, !taffo.info !67, !taffo.target !30
  %45 = zext i32 %mul25.u7_25fixp to i64, !taffo.info !67, !taffo.target !30
  %46 = shl i64 %45, 4, !taffo.info !67, !taffo.target !30
  %47 = zext i32 90 to i64
  %48 = sdiv i64 %46, %47, !taffo.info !96, !taffo.constinfo !98, !taffo.target !30
  %div26.s3_29fixp = trunc i64 %48 to i32, !taffo.info !101, !taffo.target !30
  %49 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !59, !taffo.target !30
  %50 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !59, !taffo.target !30
  %51 = mul i64 %49, %50, !taffo.info !64, !taffo.target !30
  %52 = lshr i64 %51, 29, !taffo.info !64, !taffo.target !30
  %mul27.u7_25fixp = trunc i64 %52 to i32, !taffo.info !67, !taffo.target !30
  %53 = zext i32 %mul27.u7_25fixp to i64, !taffo.info !67, !taffo.target !30
  %54 = shl i64 %53, 5, !taffo.info !67, !taffo.target !30
  %55 = zext i32 132 to i64
  %56 = sdiv i64 %54, %55, !taffo.info !102, !taffo.constinfo !105, !taffo.target !30
  %div28.s2_30fixp = trunc i64 %56 to i32, !taffo.info !108, !taffo.target !30
  %57 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !59, !taffo.target !30
  %58 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !59, !taffo.target !30
  %59 = mul i64 %57, %58, !taffo.info !64, !taffo.target !30
  %60 = lshr i64 %59, 29, !taffo.info !64, !taffo.target !30
  %mul29.u7_25fixp = trunc i64 %60 to i32, !taffo.info !67, !taffo.target !30
  %61 = zext i32 %mul29.u7_25fixp to i64, !taffo.info !67, !taffo.target !30
  %62 = shl i64 %61, 6, !taffo.info !67, !taffo.target !30
  %63 = zext i32 182 to i64
  %64 = udiv i64 %62, %63, !taffo.info !109, !taffo.constinfo !112, !taffo.target !30
  %div30.u1_31fixp = trunc i64 %64 to i32, !taffo.info !115, !taffo.target !30
  %sub31.u1_31fixp = sub i32 -2147483648, %div30.u1_31fixp, !taffo.info !117, !taffo.constinfo !119, !taffo.target !30
  %neg.s2_30fixp = sub i32 0, %div28.s2_30fixp, !taffo.info !122, !taffo.target !30
  %65 = lshr i32 -2147483648, 1
  %66 = sext i32 %neg.s2_30fixp to i64, !taffo.info !122, !taffo.target !30
  %67 = zext i32 %sub31.u1_31fixp to i64, !taffo.info !117, !taffo.target !30
  %68 = mul i64 %66, %67, !taffo.info !124, !taffo.target !30
  %69 = ashr i64 %68, 31
  %70 = trunc i64 %69 to i32
  %s2_30fixp6 = add i32 %70, %65, !taffo.info !127, !taffo.target !30
  %neg34.s3_29fixp = sub i32 0, %div26.s3_29fixp, !taffo.info !128, !taffo.target !30
  %71 = lshr i32 -2147483648, 2
  %72 = sext i32 %neg34.s3_29fixp to i64, !taffo.info !128, !taffo.target !30
  %73 = sext i32 %s2_30fixp6 to i64, !taffo.info !127, !taffo.target !30
  %74 = mul i64 %72, %73, !taffo.info !130, !taffo.target !30
  %75 = ashr i64 %74, 30
  %76 = trunc i64 %75 to i32
  %s3_29fixp7 = add i32 %76, %71, !taffo.info !133, !taffo.target !30
  %neg36.s3_29fixp = sub i32 0, %div24.s3_29fixp, !taffo.info !134, !taffo.target !30
  %77 = lshr i32 -2147483648, 3
  %78 = sext i32 %neg36.s3_29fixp to i64, !taffo.info !134, !taffo.target !30
  %79 = sext i32 %s3_29fixp7 to i64, !taffo.info !133, !taffo.target !30
  %80 = mul i64 %78, %79, !taffo.info !136, !taffo.target !30
  %81 = ashr i64 %80, 30
  %82 = trunc i64 %81 to i32
  %s4_28fixp9 = add i32 %82, %77, !taffo.info !139, !taffo.target !30
  %neg38.s4_28fixp = sub i32 0, %div22.s4_28fixp, !taffo.info !140, !taffo.target !30
  %83 = lshr i32 -2147483648, 3
  %84 = sext i32 %neg38.s4_28fixp to i64, !taffo.info !140, !taffo.target !30
  %85 = sext i32 %s4_28fixp9 to i64, !taffo.info !139, !taffo.target !30
  %86 = mul i64 %84, %85, !taffo.info !142, !taffo.target !30
  %87 = ashr i64 %86, 28
  %88 = trunc i64 %87 to i32
  %s4_28fixp10 = add i32 %88, %83, !taffo.info !145, !taffo.target !30
  %89 = ashr i32 %div20.s5_27fixp, 2, !taffo.info !80, !taffo.target !30
  %neg40.s7_25fixp = sub i32 0, %89, !taffo.info !146, !taffo.target !30
  %90 = lshr i32 -2147483648, 6
  %91 = sext i32 %neg40.s7_25fixp to i64, !taffo.info !146, !taffo.target !30
  %92 = sext i32 %s4_28fixp10 to i64, !taffo.info !145, !taffo.target !30
  %93 = mul i64 %91, %92, !taffo.info !148, !taffo.target !30
  %94 = ashr i64 %93, 28
  %95 = trunc i64 %94 to i32
  %s7_25fixp = add i32 %95, %90, !taffo.info !151, !taffo.target !30
  %neg42.s7_25fixp = sub i32 0, %div.s7_25fixp, !taffo.info !152, !taffo.target !30
  %96 = lshr i32 -2147483648, 12
  %97 = sext i32 %neg42.s7_25fixp to i64, !taffo.info !152, !taffo.target !30
  %98 = sext i32 %s7_25fixp to i64, !taffo.info !151, !taffo.target !30
  %99 = mul i64 %97, %98, !taffo.info !154, !taffo.target !30
  %100 = ashr i64 %99, 31
  %101 = trunc i64 %100 to i32
  %s13_19fixp = add i32 %101, %96, !taffo.info !157, !taffo.target !30
  %102 = sext i32 -1 to i64
  %103 = sext i32 %s13_19fixp to i64, !taffo.info !157, !taffo.target !30
  %104 = mul i64 %102, %103, !taffo.info !159, !taffo.constinfo !162, !taffo.target !30
  %mul43.s13_19fixp = trunc i64 %104 to i32, !taffo.info !165, !taffo.target !30
  %105 = sitofp i32 %mul43.s13_19fixp to float, !taffo.info !165, !taffo.target !30
  %106 = fdiv float %105, 5.242880e+05, !taffo.info !165, !taffo.target !30
  store float %106, float* %res, align 4, !taffo.info !33, !taffo.target !30
  br label %return

if.end44:                                         ; preds = %land.lhs.true, %if.end8
  %107 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !52
  %108 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !52
  %109 = mul i64 %107, %108, !taffo.info !166, !taffo.target !30
  %110 = lshr i64 %109, 24, !taffo.info !166, !taffo.target !30
  %mul45.u6_26fixp = trunc i64 %110 to i32, !taffo.info !169, !taffo.target !30
  %div46.s6_26fixp = sdiv i32 %mul45.u6_26fixp, 2, !taffo.info !171, !taffo.constinfo !71, !taffo.target !30
  %111 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !52
  %112 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !52
  %113 = mul i64 %111, %112, !taffo.info !174, !taffo.target !30
  %114 = ashr i64 %113, 25, !taffo.info !174, !taffo.target !30
  %mul47.s7_25fixp = trunc i64 %114 to i32, !taffo.info !175, !taffo.target !30
  %115 = sext i32 %mul47.s7_25fixp to i64, !taffo.info !175, !taffo.target !30
  %116 = shl i64 %115, 3, !taffo.info !175, !taffo.target !30
  %117 = zext i32 12 to i64
  %118 = sdiv i64 %116, %117, !taffo.info !176, !taffo.constinfo !77, !taffo.target !30
  %div48.s4_28fixp = trunc i64 %118 to i32, !taffo.info !178, !taffo.target !30
  %119 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !52
  %120 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !52
  %121 = mul i64 %119, %120, !taffo.info !174, !taffo.target !30
  %122 = ashr i64 %121, 25, !taffo.info !174, !taffo.target !30
  %mul49.s7_25fixp = trunc i64 %122 to i32, !taffo.info !175, !taffo.target !30
  %123 = sext i32 %mul49.s7_25fixp to i64, !taffo.info !175, !taffo.target !30
  %124 = shl i64 %123, 4, !taffo.info !175, !taffo.target !30
  %125 = zext i32 30 to i64
  %126 = sdiv i64 %124, %125, !taffo.info !179, !taffo.constinfo !84, !taffo.target !30
  %div50.s3_29fixp = trunc i64 %126 to i32, !taffo.info !181, !taffo.target !30
  %127 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !52
  %128 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !52
  %129 = mul i64 %127, %128, !taffo.info !174, !taffo.target !30
  %130 = ashr i64 %129, 25, !taffo.info !174, !taffo.target !30
  %mul51.s7_25fixp = trunc i64 %130 to i32, !taffo.info !175, !taffo.target !30
  %131 = sext i32 %mul51.s7_25fixp to i64, !taffo.info !175, !taffo.target !30
  %132 = shl i64 %131, 4, !taffo.info !175, !taffo.target !30
  %133 = zext i32 56 to i64
  %134 = sdiv i64 %132, %133, !taffo.info !182, !taffo.constinfo !91, !taffo.target !30
  %div52.s3_29fixp = trunc i64 %134 to i32, !taffo.info !184, !taffo.target !30
  %135 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !52
  %136 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !52
  %137 = mul i64 %135, %136, !taffo.info !174, !taffo.target !30
  %138 = ashr i64 %137, 25, !taffo.info !174, !taffo.target !30
  %mul53.s7_25fixp = trunc i64 %138 to i32, !taffo.info !175, !taffo.target !30
  %139 = sext i32 %mul53.s7_25fixp to i64, !taffo.info !175, !taffo.target !30
  %140 = shl i64 %139, 5, !taffo.info !175, !taffo.target !30
  %141 = zext i32 90 to i64
  %142 = sdiv i64 %140, %141, !taffo.info !185, !taffo.constinfo !98, !taffo.target !30
  %div54.s2_30fixp = trunc i64 %142 to i32, !taffo.info !187, !taffo.target !30
  %143 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !52
  %144 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !52
  %145 = mul i64 %143, %144, !taffo.info !174, !taffo.target !30
  %146 = ashr i64 %145, 25, !taffo.info !174, !taffo.target !30
  %mul55.s7_25fixp = trunc i64 %146 to i32, !taffo.info !175, !taffo.target !30
  %147 = sext i32 %mul55.s7_25fixp to i64, !taffo.info !175, !taffo.target !30
  %148 = shl i64 %147, 5, !taffo.info !175, !taffo.target !30
  %149 = zext i32 132 to i64
  %150 = sdiv i64 %148, %149, !taffo.info !188, !taffo.constinfo !105, !taffo.target !30
  %div56.s2_30fixp = trunc i64 %150 to i32, !taffo.info !190, !taffo.target !30
  %151 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !52
  %152 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !52
  %153 = mul i64 %151, %152, !taffo.info !174, !taffo.target !30
  %154 = ashr i64 %153, 25, !taffo.info !174, !taffo.target !30
  %mul57.s7_25fixp = trunc i64 %154 to i32, !taffo.info !175, !taffo.target !30
  %155 = sext i32 %mul57.s7_25fixp to i64, !taffo.info !175, !taffo.target !30
  %156 = shl i64 %155, 6, !taffo.info !175, !taffo.target !30
  %157 = zext i32 182 to i64
  %158 = udiv i64 %156, %157, !taffo.info !191, !taffo.constinfo !112, !taffo.target !30
  %div58.u1_31fixp = trunc i64 %158 to i32, !taffo.info !193, !taffo.target !30
  %sub59.u1_31fixp = sub i32 -2147483648, %div58.u1_31fixp, !taffo.info !194, !taffo.constinfo !119, !taffo.target !30
  %neg61.s2_30fixp = sub i32 0, %div56.s2_30fixp, !taffo.info !196, !taffo.target !30
  %159 = lshr i32 -2147483648, 1
  %160 = sext i32 %neg61.s2_30fixp to i64, !taffo.info !196, !taffo.target !30
  %161 = zext i32 %sub59.u1_31fixp to i64, !taffo.info !194, !taffo.target !30
  %162 = mul i64 %160, %161, !taffo.info !198, !taffo.target !30
  %163 = ashr i64 %162, 31
  %164 = trunc i64 %163 to i32
  %s2_30fixp = add i32 %164, %159, !taffo.info !200, !taffo.target !30
  %neg63.s2_30fixp = sub i32 0, %div54.s2_30fixp, !taffo.info !201, !taffo.target !30
  %165 = lshr i32 -2147483648, 1
  %166 = sext i32 %neg63.s2_30fixp to i64, !taffo.info !201, !taffo.target !30
  %167 = sext i32 %s2_30fixp to i64, !taffo.info !200, !taffo.target !30
  %168 = mul i64 %166, %167, !taffo.info !203, !taffo.target !30
  %169 = ashr i64 %168, 30
  %170 = trunc i64 %169 to i32
  %s2_30fixp5 = add i32 %170, %165, !taffo.info !206, !taffo.target !30
  %neg65.s3_29fixp = sub i32 0, %div52.s3_29fixp, !taffo.info !207, !taffo.target !30
  %171 = lshr i32 -2147483648, 2
  %172 = sext i32 %neg65.s3_29fixp to i64, !taffo.info !207, !taffo.target !30
  %173 = sext i32 %s2_30fixp5 to i64, !taffo.info !206, !taffo.target !30
  %174 = mul i64 %172, %173, !taffo.info !209, !taffo.target !30
  %175 = ashr i64 %174, 30
  %176 = trunc i64 %175 to i32
  %s3_29fixp = add i32 %176, %171, !taffo.info !211, !taffo.target !30
  %neg67.s3_29fixp = sub i32 0, %div50.s3_29fixp, !taffo.info !212, !taffo.target !30
  %177 = lshr i32 -2147483648, 3
  %178 = sext i32 %neg67.s3_29fixp to i64, !taffo.info !212, !taffo.target !30
  %179 = sext i32 %s3_29fixp to i64, !taffo.info !211, !taffo.target !30
  %180 = mul i64 %178, %179, !taffo.info !214, !taffo.target !30
  %181 = ashr i64 %180, 30
  %182 = trunc i64 %181 to i32
  %s4_28fixp = add i32 %182, %177, !taffo.info !216, !taffo.target !30
  %neg69.s4_28fixp = sub i32 0, %div48.s4_28fixp, !taffo.info !217, !taffo.target !30
  %183 = lshr i32 -2147483648, 3
  %184 = sext i32 %neg69.s4_28fixp to i64, !taffo.info !217, !taffo.target !30
  %185 = sext i32 %s4_28fixp to i64, !taffo.info !216, !taffo.target !30
  %186 = mul i64 %184, %185, !taffo.info !219, !taffo.target !30
  %187 = ashr i64 %186, 28
  %188 = trunc i64 %187 to i32
  %s4_28fixp8 = add i32 %188, %183, !taffo.info !221, !taffo.target !30
  %neg71.s6_26fixp = sub i32 0, %div46.s6_26fixp, !taffo.info !222, !taffo.target !30
  %189 = lshr i32 -2147483648, 8
  %190 = sext i32 %neg71.s6_26fixp to i64, !taffo.info !222, !taffo.target !30
  %191 = sext i32 %s4_28fixp8 to i64, !taffo.info !221, !taffo.target !30
  %192 = mul i64 %190, %191, !taffo.info !224, !taffo.target !30
  %193 = ashr i64 %192, 31
  %194 = trunc i64 %193 to i32
  %s9_23fixp = add i32 %194, %189, !taffo.info !227, !taffo.target !30
  %195 = sitofp i32 %s9_23fixp to float, !taffo.info !227, !taffo.target !30
  %196 = fdiv float %195, 0x4160000000000000, !taffo.info !227, !taffo.target !30
  store float %196, float* %res, align 4, !taffo.info !33, !taffo.target !30
  br label %return

return:                                           ; preds = %if.end44, %if.then15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test(float* noundef %arr) #0 !taffo.initweight !229 !taffo.funinfo !230 !taffo.start !25 {
entry:
  %radius.u4_28fixp = alloca [1000 x i32], align 16, !taffo.info !231, !taffo.target !234
  %theta.u9_23fixp = alloca [1000 x i32], align 16, !taffo.info !235
  %res.s22_10fixp = alloca [1000 x i32], align 16, !taffo.info !238
  %radiant.s10_54fixp = alloca i64, align 4, !taffo.info !241
  %c.s18_14fixp = alloca i32, align 4, !taffo.info !243
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !246
  %cmp = icmp slt i32 %i.0, 1000, !taffo.info !120
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, 2, !taffo.info !248, !taffo.constinfo !250
  %idxprom = sext i32 %mul to i64, !taffo.info !248
  %arrayidx = getelementptr inbounds float, float* %arr, i64 %idxprom
  %.flt = load float, float* %arrayidx, align 4, !taffo.info !231, !taffo.initweight !21, !taffo.target !234
  %0 = fmul float 0x41B0000000000000, %.flt, !taffo.info !231, !taffo.target !234
  %.flt.fallback.u4_28fixp = fptoui float %0 to i32, !taffo.info !231, !taffo.target !234
  %idxprom6 = sext i32 %i.0 to i64, !taffo.info !251
  %arrayidx7.u4_28fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %radius.u4_28fixp, i64 0, i64 %idxprom6, !taffo.info !231, !taffo.target !234
  store i32 %.flt.fallback.u4_28fixp, i32* %arrayidx7.u4_28fixp, align 4, !taffo.info !253, !taffo.target !234
  %mul8 = mul nsw i32 %i.0, 2, !taffo.info !248, !taffo.constinfo !250
  %add = add nsw i32 %mul8, 1, !taffo.info !254, !taffo.constinfo !250
  %idxprom9 = sext i32 %add to i64, !taffo.info !254
  %arrayidx10 = getelementptr inbounds float, float* %arr, i64 %idxprom9
  %.flt1 = load float, float* %arrayidx10, align 4, !taffo.info !235, !taffo.initweight !21
  %1 = fmul float 0x4160000000000000, %.flt1, !taffo.info !235
  %.flt1.fallback.u9_23fixp = fptoui float %1 to i32, !taffo.info !235
  %idxprom11 = sext i32 %i.0 to i64, !taffo.info !251
  %arrayidx12.u9_23fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %theta.u9_23fixp, i64 0, i64 %idxprom11, !taffo.info !235
  store i32 %.flt1.fallback.u9_23fixp, i32* %arrayidx12.u9_23fixp, align 4, !taffo.info !256
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !257, !taffo.constinfo !250
  br label %for.cond, !llvm.loop !259

for.end:                                          ; preds = %for.cond
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc32, %for.end
  %i13.0 = phi i32 [ 0, %for.end ], [ %inc33, %for.inc32 ], !taffo.info !246
  %cmp15 = icmp slt i32 %i13.0, 1000, !taffo.info !120
  br i1 %cmp15, label %for.body16, label %for.end34

for.body16:                                       ; preds = %for.cond14
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc29, %for.body16
  %j.0 = phi i32 [ 0, %for.body16 ], [ %inc30, %for.inc29 ], !taffo.info !260
  %cmp18 = icmp slt i32 %j.0, 1000, !taffo.info !262
  br i1 %cmp18, label %for.body19, label %for.end31

for.body19:                                       ; preds = %for.cond17
  %idxprom20 = sext i32 %j.0 to i64, !taffo.info !264
  %arrayidx21.u9_23fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %theta.u9_23fixp, i64 0, i64 %idxprom20, !taffo.info !235
  %u9_23fixp = load i32, i32* %arrayidx21.u9_23fixp, align 4, !taffo.info !235
  %2 = zext i32 %u9_23fixp to i64, !taffo.info !235
  %3 = zext i32 37480660 to i64
  %4 = mul i64 %2, %3, !taffo.info !266, !taffo.constinfo !268
  %5 = lshr i64 %4, 25, !taffo.info !266, !taffo.constinfo !268
  %mul22.u3_29fixp = trunc i64 %5 to i32, !taffo.info !271
  %6 = zext i32 %mul22.u3_29fixp to i64, !taffo.info !271
  %7 = shl i64 %6, 25, !taffo.info !271
  store i64 %7, i64* %radiant.s10_54fixp, align 4, !taffo.info !241
  call void @manual_cos.1_fixp(i64* %radiant.s10_54fixp, i32* %c.s18_14fixp), !taffo.info !241, !taffo.constinfo !273
  %idxprom24 = sext i32 %j.0 to i64, !taffo.info !264
  %arrayidx25.u4_28fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %radius.u4_28fixp, i64 0, i64 %idxprom24, !taffo.info !231, !taffo.target !234
  %u4_28fixp = load i32, i32* %arrayidx25.u4_28fixp, align 4, !taffo.info !231, !taffo.target !234
  %s18_14fixp = load i32, i32* %c.s18_14fixp, align 4, !taffo.info !243
  %8 = zext i32 %u4_28fixp to i64, !taffo.info !231, !taffo.target !234
  %9 = sext i32 %s18_14fixp to i64, !taffo.info !243
  %10 = mul i64 %8, %9, !taffo.info !274
  %11 = ashr i64 %10, 32, !taffo.info !274
  %mul26.s22_10fixp = trunc i64 %11 to i32, !taffo.info !238
  %idxprom27 = sext i32 %j.0 to i64, !taffo.info !264
  %arrayidx28.s22_10fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %res.s22_10fixp, i64 0, i64 %idxprom27, !taffo.info !238
  store i32 %mul26.s22_10fixp, i32* %arrayidx28.s22_10fixp, align 4, !taffo.info !276
  br label %for.inc29

for.inc29:                                        ; preds = %for.body19
  %inc30 = add nsw i32 %j.0, 1, !taffo.info !278, !taffo.constinfo !250
  br label %for.cond17, !llvm.loop !280

for.end31:                                        ; preds = %for.cond17
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %inc33 = add nsw i32 %i13.0, 1, !taffo.info !257, !taffo.constinfo !250
  br label %for.cond14, !llvm.loop !281

for.end34:                                        ; preds = %for.cond14
  %call = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0)), !taffo.constinfo !250
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc44, %for.end34
  %j35.0 = phi i32 [ 0, %for.end34 ], [ %inc45, %for.inc44 ], !taffo.info !246
  %cmp37 = icmp slt i32 %j35.0, 1000, !taffo.info !120
  br i1 %cmp37, label %for.body39, label %for.end46

for.body39:                                       ; preds = %for.cond36
  %idxprom40 = sext i32 %j35.0 to i64, !taffo.info !251
  %arrayidx41.s22_10fixp = getelementptr inbounds [1000 x i32], [1000 x i32]* %res.s22_10fixp, i64 0, i64 %idxprom40, !taffo.info !238
  %s22_10fixp = load i32, i32* %arrayidx41.s22_10fixp, align 4, !taffo.info !238
  %12 = sitofp i32 %s22_10fixp to double, !taffo.info !238
  %13 = fdiv double %12, 1.024000e+03, !taffo.info !238
  %call43.flt = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), double noundef %13), !taffo.info !282, !taffo.initweight !43, !taffo.constinfo !273
  br label %for.inc44

for.inc44:                                        ; preds = %for.body39
  %inc45 = add nsw i32 %j35.0, 1, !taffo.info !257, !taffo.constinfo !250
  br label %for.cond36, !llvm.loop !283

for.end46:                                        ; preds = %for.cond36
  %call47 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0)), !taffo.constinfo !250
  ret void
}

declare !taffo.initweight !229 !taffo.funinfo !230 i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !284 !taffo.funinfo !284 {
entry:
  %arr = alloca [1000 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 1000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %i.0, 32, !taffo.constinfo !250
  %conv = sitofp i32 %rem to float
  %add = fadd float %conv, 0x3FCD70A3E0000000, !taffo.constinfo !285
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1000 x float], [1000 x float]* %arr, i64 0, i64 %idxprom
  store float %add, float* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !250
  br label %for.cond, !llvm.loop !288

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [1000 x float], [1000 x float]* %arr, i64 0, i64 0
  call void @test(float* noundef %arraydecay), !taffo.constinfo !250
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.2_fixp(i32 noundef %f1.s7_25fixp, float noundef %f2) #0 !taffo.initweight !289 !taffo.funinfo !290 !taffo.sourceFunction !291 {
entry:
  %0 = fmul float 0x41D0000000000000, %f2, !taffo.info !41
  %1 = fptoui float %0 to i32, !taffo.info !41
  %2 = fmul float 0x41D0000000000000, %f2, !taffo.info !41
  %3 = fptoui float %2 to i32, !taffo.info !41
  %4 = shl i32 %f1.s7_25fixp, 2, !taffo.info !52
  %5 = lshr i32 21, 4
  %sub.s5_27fixp = sub i32 %4, %5, !taffo.info !292, !taffo.constinfo !16
  %6 = lshr i32 %3, 3, !taffo.info !41
  %7 = icmp slt i32 %sub.s5_27fixp, %6, !taffo.info !49
  br i1 %7, label %if.then, label %if.else, !taffo.info !20, !taffo.initweight !21

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %8 = shl i32 %f1.s7_25fixp, 2, !taffo.info !52
  %9 = lshr i32 21, 4
  %add.s5_27fixp = add i32 %8, %9, !taffo.info !294, !taffo.constinfo !16
  %10 = lshr i32 %1, 3, !taffo.info !41
  %11 = icmp sgt i32 %add.s5_27fixp, %10, !taffo.info !49
  br i1 %11, label %if.then5, label %if.else6, !taffo.info !20, !taffo.initweight !21

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !296
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare_float.4_fixp(i32 noundef %f1.s5_27fixp, float noundef %f2) #0 !taffo.initweight !289 !taffo.funinfo !297 !taffo.sourceFunction !291 {
entry:
  %0 = fmul float 0x41D0000000000000, %f2, !taffo.info !41
  %1 = fptoui float %0 to i32, !taffo.info !41
  %2 = fmul float 0x41D0000000000000, %f2, !taffo.info !41
  %3 = fptoui float %2 to i32, !taffo.info !41
  %4 = lshr i32 21, 4
  %sub.s5_27fixp = sub i32 %f1.s5_27fixp, %4, !taffo.info !298, !taffo.constinfo !16
  %5 = lshr i32 %3, 3, !taffo.info !41
  %6 = icmp slt i32 %sub.s5_27fixp, %5, !taffo.info !49
  br i1 %6, label %if.then, label %if.else, !taffo.info !20, !taffo.initweight !21

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %7 = lshr i32 21, 4
  %add.s5_27fixp = add i32 %f1.s5_27fixp, %7, !taffo.info !300, !taffo.constinfo !16
  %8 = lshr i32 %1, 3, !taffo.info !41
  %9 = icmp sgt i32 %add.s5_27fixp, %8, !taffo.info !49
  br i1 %9, label %if.then5, label %if.else6, !taffo.info !20, !taffo.initweight !21

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !296
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define internal void @manual_cos.1_fixp(i64* noundef %x_f.s10_54fixp, i32* noundef %res.s18_14fixp) #0 !taffo.initweight !302 !taffo.funinfo !303 !taffo.start !25 !taffo.sourceFunction !304 {
entry:
  %s10_54fixp = load i64, i64* %x_f.s10_54fixp, align 4, !taffo.info !305, !taffo.target !30
  %0 = lshr i64 0, 10
  %1 = icmp slt i64 %s10_54fixp, %0, !taffo.info !49, !taffo.target !30
  %2 = ashr i64 %s10_54fixp, 27, !taffo.info !305, !taffo.target !30
  %3 = trunc i64 %2 to i32, !taffo.info !305, !taffo.target !30
  br i1 %1, label %if.then, label %if.end, !taffo.info !33, !taffo.initweight !21, !taffo.target !30

if.then:                                          ; preds = %entry
  %4 = ashr i64 %s10_54fixp, 27, !taffo.info !305, !taffo.target !30
  %5 = trunc i64 %4 to i32, !taffo.info !305, !taffo.target !30
  %fneg.s5_27fixp = sub i32 0, %5, !taffo.info !305, !taffo.target !30
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %x.0.s5_27fixp = phi i32 [ %fneg.s5_27fixp, %if.then ], [ %3, %entry ], !taffo.info !305
  %6 = call i32 @compare_float.4_fixp(i32 %x.0.s5_27fixp, float 0x3FF921FB60000000), !taffo.info !49, !taffo.constinfo !40, !taffo.target !30
  %cmp2.flt = icmp sle i32 0, %6, !taffo.info !49, !taffo.initweight !21, !taffo.target !30
  br i1 %cmp2.flt, label %if.then3, label %if.end8, !taffo.info !33, !taffo.initweight !43, !taffo.target !30

if.then3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then3
  %x.1.s5_27fixp = phi i32 [ %x.0.s5_27fixp, %if.then3 ], [ %sub.s5_27fixp, %do.cond ], !taffo.info !305
  %7 = lshr i32 1686629705, 3
  %sub.s5_27fixp = sub i32 %x.1.s5_27fixp, %7, !taffo.info !306, !taffo.constinfo !46, !taffo.target !30
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %8 = call i32 @compare_float.4_fixp(i32 %sub.s5_27fixp, float 0x3FF921FB60000000), !taffo.info !49, !taffo.constinfo !40, !taffo.target !30
  %cmp6.flt = icmp sle i32 0, %8, !taffo.info !49, !taffo.initweight !21, !taffo.target !30
  br i1 %cmp6.flt, label %do.body, label %do.end, !llvm.loop !308, !taffo.info !33, !taffo.initweight !43, !taffo.target !30

do.end:                                           ; preds = %do.cond
  br label %if.end8

if.end8:                                          ; preds = %if.end, %do.end
  %x.2.s5_27fixp = phi i32 [ %sub.s5_27fixp, %do.end ], [ %x.0.s5_27fixp, %if.end ], !taffo.info !309
  %9 = call i32 @compare_float.4_fixp(i32 %x.2.s5_27fixp, float 0x400921FB60000000), !taffo.info !49, !taffo.constinfo !55, !taffo.target !30
  %cmp10.flt = icmp sle i32 0, %9, !taffo.info !49, !taffo.initweight !21, !taffo.target !30
  br i1 %cmp10.flt, label %land.lhs.true, label %if.end44, !taffo.info !33, !taffo.initweight !43, !taffo.target !30

land.lhs.true:                                    ; preds = %if.end8
  %10 = call i32 @compare_float.4_fixp(i32 %x.2.s5_27fixp, float 0x3FF921FB60000000), !taffo.info !49, !taffo.constinfo !40, !taffo.target !30
  %cmp13.flt = icmp eq i32 -1, %10, !taffo.info !49, !taffo.initweight !21, !taffo.target !30
  br i1 %cmp13.flt, label %if.then15, label %if.end44, !taffo.info !33, !taffo.initweight !43, !taffo.target !30

if.then15:                                        ; preds = %land.lhs.true
  %11 = lshr i32 1686629711, 2
  %sub17.s5_27fixp = sub i32 %x.2.s5_27fixp, %11, !taffo.info !311, !taffo.constinfo !61, !taffo.target !30
  %12 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !311, !taffo.target !30
  %13 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !311, !taffo.target !30
  %14 = mul i64 %12, %13, !taffo.info !313, !taffo.target !30
  %15 = lshr i64 %14, 30, !taffo.info !313, !taffo.target !30
  %mul.u8_24fixp = trunc i64 %15 to i32, !taffo.info !315, !taffo.target !30
  %div.s8_24fixp = sdiv i32 %mul.u8_24fixp, 2, !taffo.info !317, !taffo.constinfo !71, !taffo.target !30
  %16 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !311, !taffo.target !30
  %17 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !311, !taffo.target !30
  %18 = mul i64 %16, %17, !taffo.info !313, !taffo.target !30
  %19 = lshr i64 %18, 30, !taffo.info !313, !taffo.target !30
  %mul19.u8_24fixp = trunc i64 %19 to i32, !taffo.info !315, !taffo.target !30
  %20 = zext i32 %mul19.u8_24fixp to i64, !taffo.info !315, !taffo.target !30
  %21 = shl i64 %20, 2, !taffo.info !315, !taffo.target !30
  %22 = zext i32 12 to i64
  %23 = sdiv i64 %21, %22, !taffo.info !320, !taffo.constinfo !77, !taffo.target !30
  %div20.s6_26fixp = trunc i64 %23 to i32, !taffo.info !323, !taffo.target !30
  %24 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !311, !taffo.target !30
  %25 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !311, !taffo.target !30
  %26 = mul i64 %24, %25, !taffo.info !313, !taffo.target !30
  %27 = lshr i64 %26, 30, !taffo.info !313, !taffo.target !30
  %mul21.u8_24fixp = trunc i64 %27 to i32, !taffo.info !315, !taffo.target !30
  %28 = zext i32 %mul21.u8_24fixp to i64, !taffo.info !315, !taffo.target !30
  %29 = shl i64 %28, 3, !taffo.info !315, !taffo.target !30
  %30 = zext i32 30 to i64
  %31 = sdiv i64 %29, %30, !taffo.info !324, !taffo.constinfo !84, !taffo.target !30
  %div22.s5_27fixp = trunc i64 %31 to i32, !taffo.info !326, !taffo.target !30
  %32 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !311, !taffo.target !30
  %33 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !311, !taffo.target !30
  %34 = mul i64 %32, %33, !taffo.info !313, !taffo.target !30
  %35 = lshr i64 %34, 30, !taffo.info !313, !taffo.target !30
  %mul23.u8_24fixp = trunc i64 %35 to i32, !taffo.info !315, !taffo.target !30
  %36 = zext i32 %mul23.u8_24fixp to i64, !taffo.info !315, !taffo.target !30
  %37 = shl i64 %36, 4, !taffo.info !315, !taffo.target !30
  %38 = zext i32 56 to i64
  %39 = sdiv i64 %37, %38, !taffo.info !327, !taffo.constinfo !91, !taffo.target !30
  %div24.s4_28fixp = trunc i64 %39 to i32, !taffo.info !329, !taffo.target !30
  %40 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !311, !taffo.target !30
  %41 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !311, !taffo.target !30
  %42 = mul i64 %40, %41, !taffo.info !313, !taffo.target !30
  %43 = lshr i64 %42, 30, !taffo.info !313, !taffo.target !30
  %mul25.u8_24fixp = trunc i64 %43 to i32, !taffo.info !315, !taffo.target !30
  %44 = zext i32 %mul25.u8_24fixp to i64, !taffo.info !315, !taffo.target !30
  %45 = shl i64 %44, 5, !taffo.info !315, !taffo.target !30
  %46 = zext i32 90 to i64
  %47 = sdiv i64 %45, %46, !taffo.info !330, !taffo.constinfo !98, !taffo.target !30
  %div26.s3_29fixp = trunc i64 %47 to i32, !taffo.info !332, !taffo.target !30
  %48 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !311, !taffo.target !30
  %49 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !311, !taffo.target !30
  %50 = mul i64 %48, %49, !taffo.info !313, !taffo.target !30
  %51 = lshr i64 %50, 30, !taffo.info !313, !taffo.target !30
  %mul27.u8_24fixp = trunc i64 %51 to i32, !taffo.info !315, !taffo.target !30
  %52 = zext i32 %mul27.u8_24fixp to i64, !taffo.info !315, !taffo.target !30
  %53 = shl i64 %52, 5, !taffo.info !315, !taffo.target !30
  %54 = zext i32 132 to i64
  %55 = sdiv i64 %53, %54, !taffo.info !333, !taffo.constinfo !105, !taffo.target !30
  %div28.s3_29fixp = trunc i64 %55 to i32, !taffo.info !335, !taffo.target !30
  %56 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !311, !taffo.target !30
  %57 = sext i32 %sub17.s5_27fixp to i64, !taffo.info !311, !taffo.target !30
  %58 = mul i64 %56, %57, !taffo.info !313, !taffo.target !30
  %59 = lshr i64 %58, 30, !taffo.info !313, !taffo.target !30
  %mul29.u8_24fixp = trunc i64 %59 to i32, !taffo.info !315, !taffo.target !30
  %60 = zext i32 %mul29.u8_24fixp to i64, !taffo.info !315, !taffo.target !30
  %61 = shl i64 %60, 5, !taffo.info !315, !taffo.target !30
  %62 = zext i32 182 to i64
  %63 = sdiv i64 %61, %62, !taffo.info !336, !taffo.constinfo !112, !taffo.target !30
  %div30.s3_29fixp = trunc i64 %63 to i32, !taffo.info !338, !taffo.target !30
  %64 = lshr i32 -2147483648, 2
  %sub31.s3_29fixp = sub i32 %64, %div30.s3_29fixp, !taffo.info !339, !taffo.constinfo !119, !taffo.target !30
  %neg.s3_29fixp = sub i32 0, %div28.s3_29fixp, !taffo.info !341, !taffo.target !30
  %65 = lshr i32 -2147483648, 2
  %66 = sext i32 %neg.s3_29fixp to i64, !taffo.info !341, !taffo.target !30
  %67 = sext i32 %sub31.s3_29fixp to i64, !taffo.info !339, !taffo.target !30
  %68 = mul i64 %66, %67, !taffo.info !343, !taffo.target !30
  %69 = ashr i64 %68, 29
  %70 = trunc i64 %69 to i32
  %s3_29fixp6 = add i32 %70, %65, !taffo.info !345, !taffo.target !30
  %neg34.s3_29fixp = sub i32 0, %div26.s3_29fixp, !taffo.info !346, !taffo.target !30
  %71 = lshr i32 -2147483648, 4
  %72 = sext i32 %neg34.s3_29fixp to i64, !taffo.info !346, !taffo.target !30
  %73 = sext i32 %s3_29fixp6 to i64, !taffo.info !345, !taffo.target !30
  %74 = mul i64 %72, %73, !taffo.info !348, !taffo.target !30
  %75 = ashr i64 %74, 31
  %76 = trunc i64 %75 to i32
  %s5_27fixp8 = add i32 %76, %71, !taffo.info !350, !taffo.target !30
  %77 = ashr i32 %div24.s4_28fixp, 1, !taffo.info !329, !taffo.target !30
  %neg36.s5_27fixp = sub i32 0, %77, !taffo.info !351, !taffo.target !30
  %78 = lshr i32 -2147483648, 4
  %79 = sext i32 %neg36.s5_27fixp to i64, !taffo.info !351, !taffo.target !30
  %80 = sext i32 %s5_27fixp8 to i64, !taffo.info !350, !taffo.target !30
  %81 = mul i64 %79, %80, !taffo.info !353, !taffo.target !30
  %82 = ashr i64 %81, 27
  %83 = trunc i64 %82 to i32
  %s5_27fixp9 = add i32 %83, %78, !taffo.info !355, !taffo.target !30
  %neg38.s5_27fixp = sub i32 0, %div22.s5_27fixp, !taffo.info !356, !taffo.target !30
  %84 = lshr i32 -2147483648, 7
  %85 = sext i32 %neg38.s5_27fixp to i64, !taffo.info !356, !taffo.target !30
  %86 = sext i32 %s5_27fixp9 to i64, !taffo.info !355, !taffo.target !30
  %87 = mul i64 %85, %86, !taffo.info !358, !taffo.target !30
  %88 = ashr i64 %87, 30
  %89 = trunc i64 %88 to i32
  %s8_24fixp10 = add i32 %89, %84, !taffo.info !360, !taffo.target !30
  %neg40.s6_26fixp = sub i32 0, %div20.s6_26fixp, !taffo.info !361, !taffo.target !30
  %90 = lshr i32 -2147483648, 11
  %91 = sext i32 %neg40.s6_26fixp to i64, !taffo.info !361, !taffo.target !30
  %92 = sext i32 %s8_24fixp10 to i64, !taffo.info !360, !taffo.target !30
  %93 = mul i64 %91, %92, !taffo.info !363, !taffo.target !30
  %94 = ashr i64 %93, 30
  %95 = trunc i64 %94 to i32
  %s12_20fixp = add i32 %95, %90, !taffo.info !365, !taffo.target !30
  %neg42.s8_24fixp = sub i32 0, %div.s8_24fixp, !taffo.info !367, !taffo.target !30
  %96 = lshr i32 -2147483648, 17
  %97 = sext i32 %neg42.s8_24fixp to i64, !taffo.info !367, !taffo.target !30
  %98 = sext i32 %s12_20fixp to i64, !taffo.info !365, !taffo.target !30
  %99 = mul i64 %97, %98, !taffo.info !369, !taffo.target !30
  %100 = ashr i64 %99, 30
  %101 = trunc i64 %100 to i32
  %s18_14fixp = add i32 %101, %96, !taffo.info !372, !taffo.target !30
  %102 = sext i32 -1 to i64
  %103 = sext i32 %s18_14fixp to i64, !taffo.info !372, !taffo.target !30
  %104 = mul i64 %102, %103, !taffo.info !373, !taffo.constinfo !162, !taffo.target !30
  %mul43.s18_14fixp = trunc i64 %104 to i32, !taffo.info !243, !taffo.target !30
  store i32 %mul43.s18_14fixp, i32* %res.s18_14fixp, align 4, !taffo.info !33, !taffo.target !30
  br label %return

if.end44:                                         ; preds = %land.lhs.true, %if.end8
  %105 = sext i32 %x.2.s5_27fixp to i64, !taffo.info !309, !taffo.target !30
  %106 = sext i32 %x.2.s5_27fixp to i64, !taffo.info !309, !taffo.target !30
  %107 = mul i64 %105, %106, !taffo.info !375, !taffo.target !30
  %108 = lshr i64 %107, 30, !taffo.info !375, !taffo.target !30
  %mul45.u8_24fixp = trunc i64 %108 to i32, !taffo.info !377, !taffo.target !30
  %div46.s8_24fixp = sdiv i32 %mul45.u8_24fixp, 2, !taffo.info !378, !taffo.constinfo !71, !taffo.target !30
  %109 = sext i32 %x.2.s5_27fixp to i64, !taffo.info !309, !taffo.target !30
  %110 = sext i32 %x.2.s5_27fixp to i64, !taffo.info !309, !taffo.target !30
  %111 = mul i64 %109, %110, !taffo.info !375, !taffo.target !30
  %112 = lshr i64 %111, 30, !taffo.info !375, !taffo.target !30
  %mul47.u8_24fixp = trunc i64 %112 to i32, !taffo.info !377, !taffo.target !30
  %113 = zext i32 %mul47.u8_24fixp to i64, !taffo.info !377, !taffo.target !30
  %114 = shl i64 %113, 3, !taffo.info !377, !taffo.target !30
  %115 = zext i32 12 to i64
  %116 = sdiv i64 %114, %115, !taffo.info !380, !taffo.constinfo !77, !taffo.target !30
  %div48.s5_27fixp = trunc i64 %116 to i32, !taffo.info !382, !taffo.target !30
  %117 = sext i32 %x.2.s5_27fixp to i64, !taffo.info !309, !taffo.target !30
  %118 = sext i32 %x.2.s5_27fixp to i64, !taffo.info !309, !taffo.target !30
  %119 = mul i64 %117, %118, !taffo.info !375, !taffo.target !30
  %120 = lshr i64 %119, 30, !taffo.info !375, !taffo.target !30
  %mul49.u8_24fixp = trunc i64 %120 to i32, !taffo.info !377, !taffo.target !30
  %121 = zext i32 %mul49.u8_24fixp to i64, !taffo.info !377, !taffo.target !30
  %122 = shl i64 %121, 4, !taffo.info !377, !taffo.target !30
  %123 = zext i32 30 to i64
  %124 = sdiv i64 %122, %123, !taffo.info !383, !taffo.constinfo !84, !taffo.target !30
  %div50.s4_28fixp = trunc i64 %124 to i32, !taffo.info !385, !taffo.target !30
  %125 = sext i32 %x.2.s5_27fixp to i64, !taffo.info !309, !taffo.target !30
  %126 = sext i32 %x.2.s5_27fixp to i64, !taffo.info !309, !taffo.target !30
  %127 = mul i64 %125, %126, !taffo.info !375, !taffo.target !30
  %128 = lshr i64 %127, 30, !taffo.info !375, !taffo.target !30
  %mul51.u8_24fixp = trunc i64 %128 to i32, !taffo.info !377, !taffo.target !30
  %129 = zext i32 %mul51.u8_24fixp to i64, !taffo.info !377, !taffo.target !30
  %130 = shl i64 %129, 5, !taffo.info !377, !taffo.target !30
  %131 = zext i32 56 to i64
  %132 = sdiv i64 %130, %131, !taffo.info !386, !taffo.constinfo !91, !taffo.target !30
  %div52.s3_29fixp = trunc i64 %132 to i32, !taffo.info !388, !taffo.target !30
  %133 = sext i32 %x.2.s5_27fixp to i64, !taffo.info !309
  %134 = sext i32 %x.2.s5_27fixp to i64, !taffo.info !309
  %135 = mul i64 %133, %134, !taffo.info !375, !taffo.target !30
  %136 = lshr i64 %135, 30, !taffo.info !375, !taffo.target !30
  %mul53.u8_24fixp = trunc i64 %136 to i32, !taffo.info !377, !taffo.target !30
  %137 = zext i32 %mul53.u8_24fixp to i64, !taffo.info !377, !taffo.target !30
  %138 = shl i64 %137, 5, !taffo.info !377, !taffo.target !30
  %139 = zext i32 90 to i64
  %140 = sdiv i64 %138, %139, !taffo.info !389, !taffo.constinfo !98, !taffo.target !30
  %div54.s3_29fixp = trunc i64 %140 to i32, !taffo.info !391, !taffo.target !30
  %141 = sext i32 %x.2.s5_27fixp to i64, !taffo.info !309
  %142 = sext i32 %x.2.s5_27fixp to i64, !taffo.info !309
  %143 = mul i64 %141, %142, !taffo.info !375, !taffo.target !30
  %144 = lshr i64 %143, 30, !taffo.info !375, !taffo.target !30
  %mul55.u8_24fixp = trunc i64 %144 to i32, !taffo.info !377, !taffo.target !30
  %145 = zext i32 %mul55.u8_24fixp to i64, !taffo.info !377, !taffo.target !30
  %146 = shl i64 %145, 5, !taffo.info !377, !taffo.target !30
  %147 = zext i32 132 to i64
  %148 = sdiv i64 %146, %147, !taffo.info !392, !taffo.constinfo !105, !taffo.target !30
  %div56.s3_29fixp = trunc i64 %148 to i32, !taffo.info !394, !taffo.target !30
  %149 = sext i32 %x.2.s5_27fixp to i64, !taffo.info !309, !taffo.target !30
  %150 = sext i32 %x.2.s5_27fixp to i64, !taffo.info !309, !taffo.target !30
  %151 = mul i64 %149, %150, !taffo.info !375, !taffo.target !30
  %152 = lshr i64 %151, 30, !taffo.info !375, !taffo.target !30
  %mul57.u8_24fixp = trunc i64 %152 to i32, !taffo.info !377, !taffo.target !30
  %153 = zext i32 %mul57.u8_24fixp to i64, !taffo.info !377, !taffo.target !30
  %154 = shl i64 %153, 7, !taffo.info !377, !taffo.target !30
  %155 = zext i32 182 to i64
  %156 = udiv i64 %154, %155, !taffo.info !395, !taffo.constinfo !112, !taffo.target !30
  %div58.u1_31fixp = trunc i64 %156 to i32, !taffo.info !397, !taffo.target !30
  %157 = lshr i32 -2147483648, 1
  %158 = lshr i32 %div58.u1_31fixp, 1, !taffo.info !397, !taffo.target !30
  %sub59.s2_30fixp = sub i32 %157, %158, !taffo.info !398, !taffo.constinfo !119, !taffo.target !30
  %neg61.s3_29fixp = sub i32 0, %div56.s3_29fixp, !taffo.info !400, !taffo.target !30
  %159 = lshr i32 -2147483648, 2
  %160 = sext i32 %neg61.s3_29fixp to i64, !taffo.info !400, !taffo.target !30
  %161 = sext i32 %sub59.s2_30fixp to i64, !taffo.info !398, !taffo.target !30
  %162 = mul i64 %160, %161, !taffo.info !402, !taffo.target !30
  %163 = ashr i64 %162, 30
  %164 = trunc i64 %163 to i32
  %s3_29fixp = add i32 %164, %159, !taffo.info !404, !taffo.target !30
  %neg63.s3_29fixp = sub i32 0, %div54.s3_29fixp, !taffo.info !405, !taffo.target !30
  %165 = lshr i32 -2147483648, 2
  %166 = sext i32 %neg63.s3_29fixp to i64, !taffo.info !405, !taffo.target !30
  %167 = sext i32 %s3_29fixp to i64, !taffo.info !404, !taffo.target !30
  %168 = mul i64 %166, %167, !taffo.info !407, !taffo.target !30
  %169 = ashr i64 %168, 29
  %170 = trunc i64 %169 to i32
  %s3_29fixp5 = add i32 %170, %165, !taffo.info !409, !taffo.target !30
  %neg65.s3_29fixp = sub i32 0, %div52.s3_29fixp, !taffo.info !410, !taffo.target !30
  %171 = lshr i32 -2147483648, 4
  %172 = sext i32 %neg65.s3_29fixp to i64, !taffo.info !410, !taffo.target !30
  %173 = sext i32 %s3_29fixp5 to i64, !taffo.info !409, !taffo.target !30
  %174 = mul i64 %172, %173, !taffo.info !412, !taffo.target !30
  %175 = ashr i64 %174, 31
  %176 = trunc i64 %175 to i32
  %s5_27fixp = add i32 %176, %171, !taffo.info !414, !taffo.target !30
  %177 = ashr i32 %div50.s4_28fixp, 1, !taffo.info !385, !taffo.target !30
  %neg67.s5_27fixp = sub i32 0, %177, !taffo.info !415, !taffo.target !30
  %178 = lshr i32 -2147483648, 4
  %179 = sext i32 %neg67.s5_27fixp to i64, !taffo.info !415, !taffo.target !30
  %180 = sext i32 %s5_27fixp to i64, !taffo.info !414, !taffo.target !30
  %181 = mul i64 %179, %180, !taffo.info !417, !taffo.target !30
  %182 = ashr i64 %181, 27
  %183 = trunc i64 %182 to i32
  %s5_27fixp7 = add i32 %183, %178, !taffo.info !419, !taffo.target !30
  %neg69.s5_27fixp = sub i32 0, %div48.s5_27fixp, !taffo.info !420, !taffo.target !30
  %184 = lshr i32 -2147483648, 7
  %185 = sext i32 %neg69.s5_27fixp to i64, !taffo.info !420, !taffo.target !30
  %186 = sext i32 %s5_27fixp7 to i64, !taffo.info !419, !taffo.target !30
  %187 = mul i64 %185, %186, !taffo.info !422, !taffo.target !30
  %188 = ashr i64 %187, 30
  %189 = trunc i64 %188 to i32
  %s8_24fixp = add i32 %189, %184, !taffo.info !424, !taffo.target !30
  %neg71.s8_24fixp = sub i32 0, %div46.s8_24fixp, !taffo.info !425, !taffo.target !30
  %190 = lshr i32 -2147483648, 13
  %191 = sext i32 %neg71.s8_24fixp to i64, !taffo.info !425, !taffo.target !30
  %192 = sext i32 %s8_24fixp to i64, !taffo.info !424, !taffo.target !30
  %193 = mul i64 %191, %192, !taffo.info !427, !taffo.target !30
  %194 = ashr i64 %193, 30
  %195 = trunc i64 %194 to i32
  %s14_18fixp = add i32 %195, %190, !taffo.info !430, !taffo.target !30
  %196 = ashr i32 %s14_18fixp, 4, !taffo.info !430, !taffo.target !30
  store i32 %196, i32* %res.s18_14fixp, align 4, !taffo.info !33, !taffo.target !30
  br label %return

return:                                           ; preds = %if.end44, %if.then15
  ret void
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!10 = !{i32 2, i32 2}
!11 = distinct !{null, null, null, null, null, null, null, null}
!12 = !{i32 1, !13, i32 1, !13}
!13 = !{!14, !15, i1 false, i2 1}
!14 = !{!"fixp", i32 -32, i32 30}
!15 = !{double -1.000000e+00, double 1.000000e+00}
!16 = !{i1 false, !17}
!17 = !{i1 false, !18, i1 false, i2 0}
!18 = !{double 0x3E45798EE0000000, double 0x3E45798EE0000000}
!19 = !{!14, i1 false, i1 false, i2 1}
!20 = !{i1 false, !15, i1 false, i2 1}
!21 = !{i32 3}
!22 = !{i32 -1, i32 -1}
!23 = distinct !{null}
!24 = !{i32 0, i1 false, i32 0, i1 false}
!25 = !{i1 true}
!26 = !{!27, !28, i1 false, i2 1}
!27 = !{!"fixp", i32 -32, i32 28}
!28 = !{double 0.000000e+00, double 0x401921FB53C8D4F1}
!29 = !{i32 2}
!30 = !{!"x"}
!31 = !{!32, i1 false, i1 false, i2 1}
!32 = !{!"fixp", i32 32, i32 29}
!33 = !{i1 false, !28, i1 false, i2 1}
!34 = !{!27, !35, i1 false, i2 1}
!35 = !{double 0xC01921FB53C8D4F1, double -0.000000e+00}
!36 = !{!37, !38, i1 false, i2 1}
!37 = !{!"fixp", i32 -32, i32 27}
!38 = !{double 0xC01921FB53C8D4F1, double 0x401921FB53C8D4F1}
!39 = !{!27, i1 false, i1 false, i2 1}
!40 = !{i1 false, !41, i1 false}
!41 = !{i1 false, !42, i1 false, i2 0}
!42 = !{double 0x3FF921FB60000000, double 0x3FF921FB60000000}
!43 = !{i32 4}
!44 = !{!37, !45, i1 false, i2 1}
!45 = !{double 0xC01F6A7A40000000, double 0x4012D97C80000000}
!46 = !{i1 false, !47}
!47 = !{i1 false, !48, i1 false, i2 0}
!48 = !{double 0x3FF921FB52713C02, double 0x3FF921FB52713C02}
!49 = !{!37, i1 false, i1 false, i2 1}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!53, !54, i1 false, i2 1}
!53 = !{!"fixp", i32 -32, i32 25}
!54 = !{double 0xC01F6A7A40000000, double 0x401921FB53C8D4F1}
!55 = !{i1 false, !56, i1 false}
!56 = !{i1 false, !57, i1 false, i2 0}
!57 = !{double 0x400921FB60000000, double 0x400921FB60000000}
!58 = !{!37, !54, i1 false, i2 1}
!59 = !{!37, !60, i1 false, i2 1}
!60 = !{double 0xC025FDBC00000000, double 0x400921FB60000000}
!61 = !{i1 false, !62}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0x400921FB53C8D4F1, double 0x400921FB53C8D4F1}
!64 = !{!65, !66, i1 false, i2 1}
!65 = !{!"fixp", i32 64, i32 54}
!66 = !{double 0.000000e+00, double 0x405E39C552210000}
!67 = !{!68, !66, i1 false, i2 1}
!68 = !{!"fixp", i32 32, i32 25}
!69 = !{!53, !70, i1 false, i2 1}
!70 = !{double 0.000000e+00, double 0x404E39C552210000}
!71 = !{i1 false, !72}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 2.000000e+00, double 2.000000e+00}
!74 = !{!75, !76, i1 false, i2 1}
!75 = !{!"fixp", i32 -64, i32 27}
!76 = !{double 0.000000e+00, double 0x402426838C160000}
!77 = !{i1 false, !78}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 1.200000e+01, double 1.200000e+01}
!80 = !{!37, !76, i1 false, i2 1}
!81 = !{!82, !83, i1 false, i2 1}
!82 = !{!"fixp", i32 -64, i32 28}
!83 = !{double 0.000000e+00, double 0x40101ECFA344CCCD}
!84 = !{i1 false, !85}
!85 = !{i1 false, !86, i1 false, i2 0}
!86 = !{double 3.000000e+01, double 3.000000e+01}
!87 = !{!27, !83, i1 false, i2 1}
!88 = !{!89, !90, i1 false, i2 1}
!89 = !{!"fixp", i32 -64, i32 29}
!90 = !{double 0.000000e+00, double 0x4001459553809249}
!91 = !{i1 false, !92}
!92 = !{i1 false, !93, i1 false, i2 0}
!93 = !{double 5.600000e+01, double 5.600000e+01}
!94 = !{!95, !90, i1 false, i2 1}
!95 = !{!"fixp", i32 -32, i32 29}
!96 = !{!89, !97, i1 false, i2 1}
!97 = !{double 0.000000e+00, double 0x3FF57E6A2F066666}
!98 = !{i1 false, !99}
!99 = !{i1 false, !100, i1 false, i2 0}
!100 = !{double 9.000000e+01, double 9.000000e+01}
!101 = !{!95, !97, i1 false, i2 1}
!102 = !{!103, !104, i1 false, i2 1}
!103 = !{!"fixp", i32 -64, i32 30}
!104 = !{double 0.000000e+00, double 0x3FED4F4AFA4E8BA3}
!105 = !{i1 false, !106}
!106 = !{i1 false, !107, i1 false, i2 0}
!107 = !{double 1.320000e+02, double 1.320000e+02}
!108 = !{!14, !104, i1 false, i2 1}
!109 = !{!110, !111, i1 false, i2 1}
!110 = !{!"fixp", i32 64, i32 31}
!111 = !{double 0.000000e+00, double 0x3FE541F2DCED02D0}
!112 = !{i1 false, !113}
!113 = !{i1 false, !114, i1 false, i2 0}
!114 = !{double 1.820000e+02, double 1.820000e+02}
!115 = !{!116, !111, i1 false, i2 1}
!116 = !{!"fixp", i32 32, i32 31}
!117 = !{!116, !118, i1 false, i2 1}
!118 = !{double 0x3FD57C1A4625FA60, double 1.000000e+00}
!119 = !{!120, i1 false}
!120 = !{i1 false, !121, i1 false, i2 0}
!121 = !{double 1.000000e+00, double 1.000000e+00}
!122 = !{!14, !123, i1 false, i2 1}
!123 = !{double 0xBFED4F4AFA4E8BA3, double -0.000000e+00}
!124 = !{!125, !126, i1 false, i2 1}
!125 = !{!"fixp", i32 -64, i32 61}
!126 = !{double 0x3FB585A82D8BA2E8, double 1.000000e+00}
!127 = !{!14, !126, i1 false, i2 1}
!128 = !{!95, !129, i1 false, i2 1}
!129 = !{double 0xBFF57E6A2F066666, double -0.000000e+00}
!130 = !{!131, !132, i1 false, i2 1}
!131 = !{!"fixp", i32 -64, i32 59}
!132 = !{double 0xBFD5F9A8BC199998, double 1.000000e+00}
!133 = !{!95, !132, i1 false, i2 1}
!134 = !{!95, !135, i1 false, i2 1}
!135 = !{double 0xC001459553809249, double -0.000000e+00}
!136 = !{!137, !138, i1 false, i2 1}
!137 = !{!"fixp", i32 -64, i32 58}
!138 = !{double 0xBFF28B2AA7012492, double 0x3FFBDC6A8394B563}
!139 = !{!27, !138, i1 false, i2 1}
!140 = !{!27, !141, i1 false, i2 1}
!141 = !{double 0xC0101ECFA344CCCD, double -0.000000e+00}
!142 = !{!143, !144, i1 false, i2 1}
!143 = !{!"fixp", i32 -64, i32 56}
!144 = !{double 0xC01812115B3ABD0B, double 0x4016AEE03CAB96AC}
!145 = !{!27, !144, i1 false, i2 1}
!146 = !{!53, !147, i1 false, i2 1}
!147 = !{double 0xC02426838C160000, double -0.000000e+00}
!148 = !{!149, !150, i1 false, i2 1}
!149 = !{!"fixp", i32 -64, i32 53}
!150 = !{double 0xC04C11321ECBDF21, double 0x404ED08681EF6376}
!151 = !{!53, !150, i1 false, i2 1}
!152 = !{!53, !153, i1 false, i2 1}
!153 = !{double 0xC04E39C552210000, double -0.000000e+00}
!154 = !{!155, !156, i1 false, i2 1}
!155 = !{!"fixp", i32 -64, i32 50}
!156 = !{double 0xC0AD191F8C3A0F49, double 0x40AA84CAB00B8C16}
!157 = !{!158, !156, i1 false, i2 1}
!158 = !{!"fixp", i32 -32, i32 19}
!159 = !{!160, !161, i1 false, i2 1}
!160 = !{!"fixp", i32 -64, i32 19}
!161 = !{double 0xC0AA84CAB00B8C16, double 0x40AD191F8C3A0F49}
!162 = !{!163, i1 false}
!163 = !{i1 false, !164, i1 false, i2 0}
!164 = !{double -1.000000e+00, double -1.000000e+00}
!165 = !{!158, !161, i1 false, i2 1}
!166 = !{!167, !168, i1 false, i2 1}
!167 = !{!"fixp", i32 64, i32 50}
!168 = !{double 0.000000e+00, double 0x404ED7AF27BB0880}
!169 = !{!170, !168, i1 false, i2 1}
!170 = !{!"fixp", i32 32, i32 26}
!171 = !{!172, !173, i1 false, i2 1}
!172 = !{!"fixp", i32 -32, i32 26}
!173 = !{double 0.000000e+00, double 0x403ED7AF27BB0880}
!174 = !{!155, !168, i1 false, i2 1}
!175 = !{!53, !168, i1 false, i2 1}
!176 = !{!82, !177, i1 false, i2 1}
!177 = !{double 0.000000e+00, double 0x40148FCA1A7CB055}
!178 = !{!27, !177, i1 false, i2 1}
!179 = !{!89, !180, i1 false, i2 1}
!180 = !{double 0.000000e+00, double 0x4000730815308D11}
!181 = !{!95, !180, i1 false, i2 1}
!182 = !{!89, !183, i1 false, i2 1}
!183 = !{double 0.000000e+00, double 0x3FF19FD1CD8F7292}
!184 = !{!95, !183, i1 false, i2 1}
!185 = !{!103, !186, i1 false, i2 1}
!186 = !{double 0.000000e+00, double 0x3FE5EEB57196116C}
!187 = !{!14, !186, i1 false, i2 1}
!188 = !{!103, !189, i1 false, i2 1}
!189 = !{double 0.000000e+00, double 0x3FDDE86BC96F8C1F}
!190 = !{!14, !189, i1 false, i2 1}
!191 = !{!110, !192, i1 false, i2 1}
!192 = !{double 0.000000e+00, double 0x3FD5B1023813032A}
!193 = !{!116, !192, i1 false, i2 1}
!194 = !{!116, !195, i1 false, i2 1}
!195 = !{double 0x3FE5277EE3F67E6B, double 1.000000e+00}
!196 = !{!14, !197, i1 false, i2 1}
!197 = !{double 0xBFDDE86BC96F8C1F, double -0.000000e+00}
!198 = !{!125, !199, i1 false, i2 1}
!199 = !{double 0x3FE10BCA1B4839F0, double 1.000000e+00}
!200 = !{!14, !199, i1 false, i2 1}
!201 = !{!14, !202, i1 false, i2 1}
!202 = !{double 0xBFE5EEB57196116C, double -0.000000e+00}
!203 = !{!204, !205, i1 false, i2 1}
!204 = !{!"fixp", i32 -64, i32 60}
!205 = !{double 0x3FD422951CD3DD28, double 1.000000e+00}
!206 = !{!14, !205, i1 false, i2 1}
!207 = !{!95, !208, i1 false, i2 1}
!208 = !{double 0xBFF19FD1CD8F7292, double -0.000000e+00}
!209 = !{!131, !210, i1 false, i2 1}
!210 = !{double 0xBFB9FD1CD8F72920, double 1.000000e+00}
!211 = !{!95, !210, i1 false, i2 1}
!212 = !{!95, !213, i1 false, i2 1}
!213 = !{double 0xC000730815308D11, double -0.000000e+00}
!214 = !{!137, !215, i1 false, i2 1}
!215 = !{double 0xBFF0E6102A611A22, double 0x3FF356FEA729030D}
!216 = !{!27, !215, i1 false, i2 1}
!217 = !{!27, !218, i1 false, i2 1}
!218 = !{double 0xC0148FCA1A7CB055, double -0.000000e+00}
!219 = !{!143, !220, i1 false, i2 1}
!220 = !{double 0xC014DA8C1F3C55EA, double 0x4019B771D9F9C70D}
!221 = !{!27, !220, i1 false, i2 1}
!222 = !{!172, !223, i1 false, i2 1}
!223 = !{double 0xC03ED7AF27BB0880, double -0.000000e+00}
!224 = !{!225, !226, i1 false, i2 1}
!225 = !{!"fixp", i32 -64, i32 54}
!226 = !{double 0xC068A950046F3273, double 0x40643971DFCCF632}
!227 = !{!228, !226, i1 false, i2 1}
!228 = !{!"fixp", i32 -32, i32 23}
!229 = !{i32 -1}
!230 = !{i32 0, i1 false}
!231 = !{!232, !233, i1 false, i2 1}
!232 = !{!"fixp", i32 32, i32 28}
!233 = !{double 1.000000e+00, double 1.000000e+01}
!234 = !{!"test"}
!235 = !{!236, !237, i1 false, i2 1}
!236 = !{!"fixp", i32 32, i32 23}
!237 = !{double 0.000000e+00, double 3.600000e+02}
!238 = !{!239, !240, i1 false, i2 1}
!239 = !{!"fixp", i32 -32, i32 10}
!240 = !{double 0xC133390AB01DAEC4, double 0x4133BE0C96EF773E}
!241 = !{!225, !242, i1 false, i2 1}
!242 = !{double -1.000000e+01, double 1.000000e+01}
!243 = !{!244, !245, i1 false, i2 1}
!244 = !{!"fixp", i32 -32, i32 14}
!245 = !{double 0xC0FEC1AAB362B139, double 0x40FF967A8B18BEC9}
!246 = !{i1 false, !247, i1 false, i2 0}
!247 = !{double 0.000000e+00, double 2.560000e+02}
!248 = !{i1 false, !249, i1 false, i2 0}
!249 = !{double 0.000000e+00, double 5.100000e+02}
!250 = !{i1 false, i1 false}
!251 = !{i1 false, !252, i1 false, i2 0}
!252 = !{double 0.000000e+00, double 2.550000e+02}
!253 = !{i1 false, !233, i1 false, i2 1}
!254 = !{i1 false, !255, i1 false, i2 0}
!255 = !{double 1.000000e+00, double 5.110000e+02}
!256 = !{i1 false, !237, i1 false, i2 1}
!257 = !{i1 false, !258, i1 false, i2 0}
!258 = !{double 1.000000e+00, double 2.560000e+02}
!259 = distinct !{!259, !51}
!260 = !{i1 false, !261, i1 false, i2 0}
!261 = !{double 0.000000e+00, double 6.553600e+04}
!262 = !{i1 false, !263, i1 false, i2 0}
!263 = !{double 0.000000e+00, double 1.000000e+00}
!264 = !{i1 false, !265, i1 false, i2 0}
!265 = !{double 0.000000e+00, double 6.553500e+04}
!266 = !{!65, !267, i1 false, i2 1}
!267 = !{double 0.000000e+00, double 0x401921FB54442EEA}
!268 = !{i1 false, !269}
!269 = !{i1 false, !270, i1 false, i2 0}
!270 = !{double 0x3F91DF46A2529E84, double 0x3F91DF46A2529E84}
!271 = !{!32, !272, i1 false, i2 1}
!272 = !{double 0.000000e+00, double 0x401921FB60000000}
!273 = !{i1 false, i1 false, i1 false}
!274 = !{!275, !240, i1 false, i2 1}
!275 = !{!"fixp", i32 -64, i32 42}
!276 = !{i1 false, !277, i1 false, i2 1}
!277 = !{double -1.000000e+02, double 1.000000e+02}
!278 = !{i1 false, !279, i1 false, i2 0}
!279 = !{double 1.000000e+00, double 6.553600e+04}
!280 = distinct !{!280, !51}
!281 = distinct !{!281, !51}
!282 = !{!239, i1 false, i1 false, i2 1}
!283 = distinct !{!283, !51}
!284 = !{}
!285 = !{i1 false, !286}
!286 = !{i1 false, !287, i1 false, i2 0}
!287 = !{double 0x3FCD70A3E0000000, double 0x3FCD70A3E0000000}
!288 = distinct !{!288, !51}
!289 = !{i32 2, i32 -1}
!290 = !{i32 1, !52, i32 1, !41}
!291 = !{i32 (float, float)* @compare_float}
!292 = !{!37, !293, i1 false, i2 1}
!293 = !{double 0xC01F6A7A40ABCC77, double 0x401921FB531D087A}
!294 = !{!37, !295, i1 false, i2 1}
!295 = !{double 0xC01F6A7A3F543389, double 0x401921FB5474A168}
!296 = !{i1 false, !15, i1 false, i2 0}
!297 = !{i32 1, !44, i32 1, !41}
!298 = !{!37, !299, i1 false, i2 1}
!299 = !{double 0xC01F6A7A40ABCC77, double 0x4012D97C7F543389}
!300 = !{!37, !301, i1 false, i2 1}
!301 = !{double 0xC01F6A7A3F543389, double 0x4012D97C80ABCC77}
!302 = !{i32 1, i32 1}
!303 = !{i32 1, !241, i32 1, !243}
!304 = !{void (float*, float*)* @manual_cos}
!305 = !{!37, !242, i1 false, i2 1}
!306 = !{!37, !307, i1 false, i2 1}
!307 = !{double 0xC027243F80000000, double 0x4020DBC0A0000000}
!308 = distinct !{!308, !51}
!309 = !{!37, !310, i1 false, i2 1}
!310 = !{double 0xC027243F80000000, double 1.000000e+01}
!311 = !{!37, !312, i1 false, i2 1}
!312 = !{double 0xC02D6CBE60000000, double 0x401B6F0260000000}
!313 = !{!65, !314, i1 false, i2 1}
!314 = !{double 0.000000e+00, double 0x406B0E8A97749520}
!315 = !{!316, !314, i1 false, i2 1}
!316 = !{!"fixp", i32 32, i32 24}
!317 = !{!318, !319, i1 false, i2 1}
!318 = !{!"fixp", i32 -32, i32 24}
!319 = !{double 0.000000e+00, double 0x405B0E8A97749520}
!320 = !{!321, !322, i1 false, i2 1}
!321 = !{!"fixp", i32 -64, i32 26}
!322 = !{double 0.000000e+00, double 0x403209B1BA4DB8C0}
!323 = !{!172, !322, i1 false, i2 1}
!324 = !{!75, !325, i1 false, i2 1}
!325 = !{double 0.000000e+00, double 0x401CDC4F907C5ACD}
!326 = !{!37, !325, i1 false, i2 1}
!327 = !{!82, !328, i1 false, i2 1}
!328 = !{double 0.000000e+00, double 0x400EEC0C1ACE6149}
!329 = !{!27, !328, i1 false, i2 1}
!330 = !{!89, !331, i1 false, i2 1}
!331 = !{double 0.000000e+00, double 0x40033D8A6052E733}
!332 = !{!95, !331, i1 false, i2 1}
!333 = !{!89, !334, i1 false, i2 1}
!334 = !{double 0.000000e+00, double 0x3FFA3CA56C13F574}
!335 = !{!95, !334, i1 false, i2 1}
!336 = !{!89, !337, i1 false, i2 1}
!337 = !{double 0.000000e+00, double 0x3FF30769E91C8AA3}
!338 = !{!95, !337, i1 false, i2 1}
!339 = !{!95, !340, i1 false, i2 1}
!340 = !{double 0xBFC83B4F48E45518, double 1.000000e+00}
!341 = !{!95, !342, i1 false, i2 1}
!342 = !{double 0xBFFA3CA56C13F574, double -0.000000e+00}
!343 = !{!137, !344, i1 false, i2 1}
!344 = !{double 0xBFE4794AD827EAE8, double 0x3FF4F78738E29272}
!345 = !{!95, !344, i1 false, i2 1}
!346 = !{!95, !347, i1 false, i2 1}
!347 = !{double 0xC0033D8A6052E733, double -0.000000e+00}
!348 = !{!137, !349, i1 false, i2 1}
!349 = !{double 0xC00136959C3E073B, double 0x40044F642FB76F02}
!350 = !{!37, !349, i1 false, i2 1}
!351 = !{!37, !352, i1 false, i2 1}
!352 = !{double 0xC00EEC0C1ACE6149, double -0.000000e+00}
!353 = !{!225, !354, i1 false, i2 1}
!354 = !{double 0xC021A03F1E64F104, double 0x4022A22554BDE81B}
!355 = !{!37, !354, i1 false, i2 1}
!356 = !{!37, !357, i1 false, i2 1}
!357 = !{double 0xC01CDC4F907C5ACD, double -0.000000e+00}
!358 = !{!225, !359, i1 false, i2 1}
!359 = !{double 0xC0508E29BF3AFF16, double 0x40502590BFBAB6E6}
!360 = !{!318, !359, i1 false, i2 1}
!361 = !{!172, !362, i1 false, i2 1}
!362 = !{double 0xC03209B1BA4DB8C0, double -0.000000e+00}
!363 = !{!155, !364, i1 false, i2 1}
!364 = !{double 0xC092300B54B251BA, double 0x4092ADF6D410D446}
!365 = !{!366, !364, i1 false, i2 1}
!366 = !{!"fixp", i32 -32, i32 20}
!367 = !{!318, !368, i1 false, i2 1}
!368 = !{double 0xC05B0E8A97749520, double -0.000000e+00}
!369 = !{!370, !371, i1 false, i2 1}
!370 = !{!"fixp", i32 -64, i32 44}
!371 = !{double 0xC0FF967A8B18BEC9, double 0x40FEC1AAB362B139}
!372 = !{!244, !371, i1 false, i2 1}
!373 = !{!374, !245, i1 false, i2 1}
!374 = !{!"fixp", i32 -64, i32 14}
!375 = !{!65, !376, i1 false, i2 1}
!376 = !{double 0.000000e+00, double 0x4060BC44575E0200}
!377 = !{!316, !376, i1 false, i2 1}
!378 = !{!318, !379, i1 false, i2 1}
!379 = !{double 0.000000e+00, double 0x4050BC44575E0200}
!380 = !{!75, !381, i1 false, i2 1}
!381 = !{double 0.000000e+00, double 0x4026505B1F2802AB}
!382 = !{!37, !381, i1 false, i2 1}
!383 = !{!82, !384, i1 false, i2 1}
!384 = !{double 0.000000e+00, double 0x4011D9E27F533555}
!385 = !{!27, !384, i1 false, i2 1}
!386 = !{!89, !387, i1 false, i2 1}
!387 = !{double 0.000000e+00, double 0x4003204E1AB49492}
!388 = !{!95, !387, i1 false, i2 1}
!389 = !{!89, !390, i1 false, i2 1}
!390 = !{double 0.000000e+00, double 0x3FF7CD2DFF199C72}
!391 = !{!95, !390, i1 false, i2 1}
!392 = !{!89, !393, i1 false, i2 1}
!393 = !{double 0.000000e+00, double 0x3FF03A70D0D747C2}
!394 = !{!95, !393, i1 false, i2 1}
!395 = !{!110, !396, i1 false, i2 1}
!396 = !{double 0.000000e+00, double 0x3FE78A38BE681952}
!397 = !{!116, !396, i1 false, i2 1}
!398 = !{!14, !399, i1 false, i2 1}
!399 = !{double 0x3FD0EB8E832FCD5C, double 1.000000e+00}
!400 = !{!95, !401, i1 false, i2 1}
!401 = !{double 0xBFF03A70D0D747C2, double -0.000000e+00}
!402 = !{!131, !403, i1 false, i2 1}
!403 = !{double 0xBF8D38686BA3E100, double 1.000000e+00}
!404 = !{!95, !403, i1 false, i2 1}
!405 = !{!95, !406, i1 false, i2 1}
!406 = !{double 0xBFF7CD2DFF199C72, double -0.000000e+00}
!407 = !{!137, !408, i1 false, i2 1}
!408 = !{double 0xBFDF34B7FC6671C8, double 0x3FF056EF99AA4C58}
!409 = !{!95, !408, i1 false, i2 1}
!410 = !{!95, !411, i1 false, i2 1}
!411 = !{double 0xC003204E1AB49492, double -0.000000e+00}
!412 = !{!137, !413, i1 false, i2 1}
!413 = !{double 0xBFF71074518696F4, double 0x4001536710325012}
!414 = !{!37, !413, i1 false, i2 1}
!415 = !{!37, !416, i1 false, i2 1}
!416 = !{double 0xC011D9E27F533555, double -0.000000e+00}
!417 = !{!225, !418, i1 false, i2 1}
!418 = !{double 0xC021548DEAF100AF, double 0x401DBB9140263ED3}
!419 = !{!37, !418, i1 false, i2 1}
!420 = !{!37, !421, i1 false, i2 1}
!421 = !{double 0xC026505B1F2802AB, double -0.000000e+00}
!422 = !{!225, !423, i1 false, i2 1}
!423 = !{double 0xC0547B9D71929AE1, double 0x40586B4C9B48676D}
!424 = !{!318, !423, i1 false, i2 1}
!425 = !{!318, !426, i1 false, i2 1}
!426 = !{double 0xC050BC44575E0200, double -0.000000e+00}
!427 = !{!428, !429, i1 false, i2 1}
!428 = !{!"fixp", i32 -64, i32 48}
!429 = !{double 0xC0B989A1ACC5781C, double 0x40B56DA168BEB912}
!430 = !{!431, !429, i1 false, i2 1}
!431 = !{!"fixp", i32 -32, i32 18}
