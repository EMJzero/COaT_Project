; ModuleID = '/tmp/tmp.TKioOPPPH1/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.in_a = private unnamed_addr constant [256 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01], align 16, !taffo.info !0
@__const.main.in_b = private unnamed_addr constant [256 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01], align 16, !taffo.info !0
@__const.main.in_c = private unnamed_addr constant [256 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01], align 16, !taffo.info !0
@.str.5 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1, !taffo.info !2

; Function Attrs: noinline nounwind uwtable
define dso_local void @mm(float* noalias %in_a, float* noalias %in_b, float* noalias %in_c, i32 %A_ROWS, i32 %A_COLS, i32 %B_COLS) #0 !taffo.initweight !6 !taffo.equivalentChild !7 !taffo.funinfo !8 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ]
  %cmp = icmp ult i32 %i.0, %A_ROWS
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc21, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc22, %for.inc21 ]
  %cmp5 = icmp ult i32 %j.0, %B_COLS
  br i1 %cmp5, label %for.body6, label %for.end23

for.body6:                                        ; preds = %for.cond4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body6
  %k.0 = phi i32 [ 0, %for.body6 ], [ %inc, %for.inc ]
  %sum.0 = phi float [ 0.000000e+00, %for.body6 ], [ %add16, %for.inc ]
  %cmp9 = icmp ult i32 %k.0, %A_COLS
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %mul = mul i32 %i.0, %A_COLS
  %add = add i32 %mul, %k.0
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds float, float* %in_a, i64 %idxprom, !taffo.info !9, !taffo.initweight !10
  %0 = load float, float* %arrayidx, align 4, !taffo.info !9, !taffo.initweight !11
  %mul11 = mul i32 %k.0, %B_COLS
  %add12 = add i32 %mul11, %j.0
  %idxprom13 = zext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds float, float* %in_b, i64 %idxprom13, !taffo.info !9, !taffo.initweight !10
  %1 = load float, float* %arrayidx14, align 4, !taffo.info !9, !taffo.initweight !11
  %mul15 = fmul float %0, %1
  %add16 = fadd float %sum.0, %mul15, !taffo.info !9, !taffo.initweight !10
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !12
  br label %for.cond8, !llvm.loop !13

for.end:                                          ; preds = %for.cond8
  %mul17 = mul i32 %i.0, %B_COLS
  %add18 = add i32 %mul17, %j.0
  %idxprom19 = zext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds float, float* %in_c, i64 %idxprom19, !taffo.info !9, !taffo.initweight !10
  store float %sum.0, float* %arrayidx20, align 4, !taffo.info !9
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %inc22 = add nsw i32 %j.0, 1, !taffo.constinfo !12
  br label %for.cond4, !llvm.loop !16

for.end23:                                        ; preds = %for.cond4
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  %inc25 = add nsw i32 %i.0, 1, !taffo.constinfo !12
  br label %for.cond, !llvm.loop !17

for.end26:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !18 !taffo.funinfo !18 !taffo.start !19 {
entry:
  %in_a = alloca [256 x float], align 16, !taffo.info !9, !taffo.initweight !20, !taffo.target !21
  %in_b = alloca [256 x float], align 16, !taffo.info !9, !taffo.initweight !20, !taffo.target !22
  %in_c.u0_32fixp = alloca [256 x i32], align 16, !taffo.info !23, !taffo.target !26
  %0 = bitcast [256 x float]* %in_a to i8*, !taffo.info !9, !taffo.initweight !27, !taffo.target !21
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([256 x float]* @__const.main.in_a to i8*), i64 1024, i1 false), !taffo.info !9, !taffo.initweight !10, !taffo.constinfo !28, !taffo.target !21
  %1 = bitcast [256 x float]* %in_b to i8*, !taffo.info !9, !taffo.initweight !27, !taffo.target !22
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([256 x float]* @__const.main.in_b to i8*), i64 1024, i1 false), !taffo.info !9, !taffo.initweight !10, !taffo.constinfo !28, !taffo.target !22
  %2 = bitcast [256 x i32]* %in_c.u0_32fixp to i8*, !taffo.info !29, !taffo.target !26
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([256 x float]* @__const.main.in_c to i8*), i64 1024, i1 false), !taffo.info !9, !taffo.initweight !10, !taffo.constinfo !28, !taffo.target !26
  %arraydecay = getelementptr inbounds [256 x float], [256 x float]* %in_a, i64 0, i64 0, !taffo.info !9, !taffo.initweight !27, !taffo.target !21
  %arraydecay4 = getelementptr inbounds [256 x float], [256 x float]* %in_b, i64 0, i64 0, !taffo.info !9, !taffo.initweight !27, !taffo.target !22
  %arraydecay5.u0_32fixp = getelementptr inbounds [256 x i32], [256 x i32]* %in_c.u0_32fixp, i64 0, i64 0, !taffo.info !23, !taffo.target !26
  call void @mm.1_fixp(float* %arraydecay, float* %arraydecay4, i32* %arraydecay5.u0_32fixp, i32 16, i32 16, i32 16), !taffo.info !9, !taffo.constinfo !30, !taffo.target !21
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.info !31
  %cmp = icmp ult i32 %i.0, 16, !taffo.info !33
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !35
  %cmp7 = icmp ult i32 %j.0, 16, !taffo.info !33
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %mul = mul i32 %i.0, 16, !taffo.info !37, !taffo.constinfo !12
  %add = add i32 %mul, %j.0, !taffo.info !39
  %idxprom = zext i32 %add to i64, !taffo.info !39
  %arrayidx.u0_32fixp = getelementptr inbounds [256 x i32], [256 x i32]* %in_c.u0_32fixp, i64 0, i64 %idxprom, !taffo.info !23, !taffo.target !26
  %u0_32fixp = load i32, i32* %arrayidx.u0_32fixp, align 4, !taffo.info !23, !taffo.target !26
  %3 = uitofp i32 %u0_32fixp to double, !taffo.info !23, !taffo.target !26
  %4 = fdiv double %3, 0x41F0000000000000, !taffo.info !23, !taffo.target !26
  %call.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), double %4), !taffo.info !29, !taffo.initweight !41, !taffo.constinfo !42, !taffo.target !26
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %j.0, 1, !taffo.info !43, !taffo.constinfo !12
  br label %for.cond6, !llvm.loop !45

for.end:                                          ; preds = %for.cond6
  %call9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10), !taffo.constinfo !12
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.info !46, !taffo.constinfo !12
  br label %for.cond, !llvm.loop !48

for.end12:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare !taffo.initweight !49 !taffo.funinfo !50 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare !taffo.initweight !51 !taffo.funinfo !52 dso_local i32 @printf(i8*, ...) #2

declare !taffo.initweight !18 !taffo.funinfo !18 dso_local i32 @putchar(...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @mm.1_fixp(float* noalias %in_a, float* noalias %in_b, i32* noalias %in_c.u0_32fixp, i32 %A_ROWS, i32 %A_COLS, i32 %B_COLS) #0 !taffo.initweight !53 !taffo.funinfo !54 !taffo.sourceFunction !57 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ], !taffo.info !33
  %cmp = icmp ult i32 %i.0, %A_ROWS, !taffo.info !58
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc21, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc22, %for.inc21 ], !taffo.info !33
  %cmp5 = icmp ult i32 %j.0, %B_COLS, !taffo.info !58
  br i1 %cmp5, label %for.body6, label %for.end23

for.body6:                                        ; preds = %for.cond4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body6
  %k.0 = phi i32 [ 0, %for.body6 ], [ %inc, %for.inc ], !taffo.info !33
  %sum.0.u0_32fixp = phi i32 [ 0, %for.body6 ], [ %add16.u0_32fixp, %for.inc ], !taffo.info !23
  %cmp9 = icmp ult i32 %k.0, %A_COLS, !taffo.info !58
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %mul = mul i32 %i.0, %A_COLS, !taffo.info !60
  %add = add i32 %mul, %k.0, !taffo.info !60
  %idxprom = zext i32 %add to i64, !taffo.info !60
  %arrayidx = getelementptr inbounds float, float* %in_a, i64 %idxprom, !taffo.info !9, !taffo.initweight !10
  %0 = load float, float* %arrayidx, align 4, !taffo.info !9, !taffo.initweight !11
  %mul11 = mul i32 %k.0, %B_COLS, !taffo.info !60
  %add12 = add i32 %mul11, %j.0, !taffo.info !60
  %idxprom13 = zext i32 %add12 to i64, !taffo.info !60
  %arrayidx14 = getelementptr inbounds float, float* %in_b, i64 %idxprom13, !taffo.info !9, !taffo.initweight !10
  %1 = load float, float* %arrayidx14, align 4, !taffo.info !9, !taffo.initweight !11
  %mul15 = fmul float %0, %1
  %2 = fmul float 0x41F0000000000000, %mul15, !taffo.info !29
  %3 = fptoui float %2 to i32, !taffo.info !29
  %add16.u0_32fixp = add i32 %sum.0.u0_32fixp, %3, !taffo.info !29
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %inc = add nsw i32 %k.0, 1, !taffo.info !58, !taffo.constinfo !12
  br label %for.cond8, !llvm.loop !61

for.end:                                          ; preds = %for.cond8
  %mul17 = mul i32 %i.0, %B_COLS, !taffo.info !60
  %add18 = add i32 %mul17, %j.0, !taffo.info !60
  %idxprom19 = zext i32 %add18 to i64, !taffo.info !60
  %arrayidx20.u0_32fixp = getelementptr inbounds i32, i32* %in_c.u0_32fixp, i64 %idxprom19, !taffo.info !23
  store i32 %sum.0.u0_32fixp, i32* %arrayidx20.u0_32fixp, align 4, !taffo.info !9
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %inc22 = add nsw i32 %j.0, 1, !taffo.info !58, !taffo.constinfo !12
  br label %for.cond4, !llvm.loop !62

for.end23:                                        ; preds = %for.cond4
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  %inc25 = add nsw i32 %i.0, 1, !taffo.info !58, !taffo.constinfo !12
  br label %for.cond, !llvm.loop !63

for.end26:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!4}
!llvm.ident = !{!5}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 1.000000e+00, double 1.600000e+01}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.020000e+02}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!6 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!7 = distinct !{null}
!8 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!9 = !{i1 false, i1 false, i1 false, i2 1}
!10 = !{i32 2}
!11 = !{i32 3}
!12 = !{i1 false, i1 false}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.count", i32 4}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = !{}
!19 = !{i1 true}
!20 = !{i32 0}
!21 = !{!"input_a"}
!22 = !{!"input_b"}
!23 = !{!24, !25, i1 false, i2 1}
!24 = !{!"fixp", i32 32, i32 32}
!25 = !{double 0.000000e+00, double 0.000000e+00}
!26 = !{!"result_c"}
!27 = !{i32 1}
!28 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!29 = !{!24, i1 false, i1 false, i2 1}
!30 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!31 = !{i1 false, !32, i1 false, i2 0}
!32 = !{double 0.000000e+00, double 1.700000e+01}
!33 = !{i1 false, !34, i1 false, i2 0}
!34 = !{double 0.000000e+00, double 1.000000e+00}
!35 = !{i1 false, !36, i1 false, i2 0}
!36 = !{double 0.000000e+00, double 2.890000e+02}
!37 = !{i1 false, !38, i1 false, i2 0}
!38 = !{double 0.000000e+00, double 2.560000e+02}
!39 = !{i1 false, !40, i1 false, i2 0}
!40 = !{double 0.000000e+00, double 5.440000e+02}
!41 = !{i32 4}
!42 = !{i1 false, i1 false, i1 false}
!43 = !{i1 false, !44, i1 false, i2 0}
!44 = !{double 1.000000e+00, double 2.890000e+02}
!45 = distinct !{!45, !14}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 1.000000e+00, double 1.700000e+01}
!48 = distinct !{!48, !14}
!49 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!50 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!51 = !{i32 -1}
!52 = !{i32 0, i1 false}
!53 = !{i32 2, i32 2, i32 2, i32 -1, i32 -1, i32 -1}
!54 = !{i32 1, !9, i32 1, !9, i32 1, !23, i32 1, !55, i32 1, !55, i32 1, !55}
!55 = !{i1 false, !56, i1 false, i2 0}
!56 = !{double 1.600000e+01, double 1.600000e+01}
!57 = !{void (float*, float*, float*, i32, i32, i32)* @mm}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 1.000000e+00, double 1.000000e+00}
!60 = !{i1 false, !25, i1 false, i2 0}
!61 = distinct !{!61, !14, !15}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
