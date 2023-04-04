; ModuleID = '/tmp/tmp.LIG51zG33D/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__const.main.in_a = private unnamed_addr constant [256 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01], align 16, !taffo.info !0
@__const.main.in_b = private unnamed_addr constant [256 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01], align 16, !taffo.info !0
@__const.main.in_c = private unnamed_addr constant [256 x float] [float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01], align 16, !taffo.info !0
@.str.6 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1, !taffo.info !2

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
  %sum.0.u12_20fixp = phi i32 [ 0, %for.body6 ], [ %add16.u12_20fixp, %for.inc ], !taffo.info !9
  %0 = uitofp i32 %sum.0.u12_20fixp to float, !taffo.info !9
  %1 = fdiv float %0, 0x4130000000000000, !taffo.info !9
  %cmp9 = icmp ult i32 %k.0, %A_COLS
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %mul = mul i32 %i.0, %A_COLS
  %add = add i32 %mul, %k.0
  %idxprom = zext i32 %add to i64
  %arrayidx.flt.u5_27fixp = getelementptr inbounds float, float* %in_a, i64 %idxprom, !taffo.info !11, !taffo.initweight !14
  %.flt = load float, float* %arrayidx.flt.u5_27fixp, align 4, !taffo.info !11, !taffo.initweight !15
  %2 = fmul float 0x41A0000000000000, %.flt, !taffo.info !11
  %.flt.fallback.u5_27fixp = fptoui float %2 to i32, !taffo.info !11
  %3 = uitofp i32 %.flt.fallback.u5_27fixp to float, !taffo.info !11
  %4 = fdiv float %3, 0x41A0000000000000, !taffo.info !11
  %mul11 = mul i32 %k.0, %B_COLS
  %add12 = add i32 %mul11, %j.0
  %idxprom13 = zext i32 %add12 to i64
  %arrayidx14.flt.u5_27fixp = getelementptr inbounds float, float* %in_b, i64 %idxprom13, !taffo.info !11, !taffo.initweight !14
  %.flt1 = load float, float* %arrayidx14.flt.u5_27fixp, align 4, !taffo.info !11, !taffo.initweight !15
  %5 = fmul float 0x41A0000000000000, %.flt1, !taffo.info !11
  %.flt1.fallback.u5_27fixp = fptoui float %5 to i32, !taffo.info !11
  %6 = uitofp i32 %.flt1.fallback.u5_27fixp to float, !taffo.info !11
  %7 = fdiv float %6, 0x41A0000000000000, !taffo.info !11
  %mul15 = fmul float %4, %7
  %8 = fmul float 0x4130000000000000, %mul15, !taffo.info !16
  %9 = fptoui float %8 to i32, !taffo.info !16
  %add16.u12_20fixp = add i32 %sum.0.u12_20fixp, %9, !taffo.info !16
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !18
  br label %for.cond8, !llvm.loop !19

for.end:                                          ; preds = %for.cond8
  %mul17 = mul i32 %i.0, %B_COLS
  %add18 = add i32 %mul17, %j.0
  %idxprom19 = zext i32 %add18 to i64
  %arrayidx20.flt.u12_20fixp = getelementptr inbounds float, float* %in_c, i64 %idxprom19, !taffo.info !16, !taffo.initweight !14
  store float %1, float* %arrayidx20.flt.u12_20fixp, align 4, !taffo.info !22
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %inc22 = add nsw i32 %j.0, 1, !taffo.constinfo !18
  br label %for.cond4, !llvm.loop !23

for.end23:                                        ; preds = %for.cond4
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  %inc25 = add nsw i32 %i.0, 1, !taffo.constinfo !18
  br label %for.cond, !llvm.loop !24

for.end26:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !25 !taffo.funinfo !25 !taffo.start !26 {
entry:
  %in_a.u5_27fixp = alloca [256 x i32], align 16, !taffo.info !11, !taffo.target !27
  %in_b.u5_27fixp = alloca [256 x i32], align 16, !taffo.info !11, !taffo.target !28
  %in_c.u12_20fixp = alloca [256 x i32], align 16, !taffo.info !16, !taffo.target !29
  %0 = bitcast [256 x i32]* %in_a.u5_27fixp to i8*, !taffo.info !30, !taffo.target !27
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([256 x float]* @__const.main.in_a to i8*), i64 1024, i1 false), !taffo.info !31, !taffo.initweight !14, !taffo.constinfo !32, !taffo.target !27
  %1 = bitcast [256 x i32]* %in_b.u5_27fixp to i8*, !taffo.info !30, !taffo.target !28
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 bitcast ([256 x float]* @__const.main.in_b to i8*), i64 1024, i1 false), !taffo.info !31, !taffo.initweight !14, !taffo.constinfo !32, !taffo.target !28
  %2 = bitcast [256 x i32]* %in_c.u12_20fixp to i8*, !taffo.info !9, !taffo.target !29
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([256 x float]* @__const.main.in_c to i8*), i64 1024, i1 false), !taffo.info !22, !taffo.initweight !14, !taffo.constinfo !32, !taffo.target !29
  %arraydecay.u5_27fixp = getelementptr inbounds [256 x i32], [256 x i32]* %in_a.u5_27fixp, i64 0, i64 0, !taffo.info !11, !taffo.target !27
  %arraydecay4.u5_27fixp = getelementptr inbounds [256 x i32], [256 x i32]* %in_b.u5_27fixp, i64 0, i64 0, !taffo.info !11, !taffo.target !28
  %arraydecay5.u12_20fixp = getelementptr inbounds [256 x i32], [256 x i32]* %in_c.u12_20fixp, i64 0, i64 0, !taffo.info !16, !taffo.target !29
  call void @mm.1_fixp(i32* %arraydecay.u5_27fixp, i32* %arraydecay4.u5_27fixp, i32* %arraydecay5.u12_20fixp, i32 16, i32 16, i32 16), !taffo.info !31, !taffo.constinfo !33, !taffo.target !27
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc11, %for.inc10 ], !taffo.info !34
  %cmp = icmp ult i32 %i.0, 16, !taffo.info !36
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !38
  %cmp7 = icmp ult i32 %j.0, 16, !taffo.info !36
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %mul = mul i32 %i.0, 16, !taffo.info !40, !taffo.constinfo !18
  %add = add i32 %mul, %j.0, !taffo.info !42
  %idxprom = zext i32 %add to i64, !taffo.info !42
  %arrayidx.u12_20fixp = getelementptr inbounds [256 x i32], [256 x i32]* %in_c.u12_20fixp, i64 0, i64 %idxprom, !taffo.info !16, !taffo.target !29
  %u12_20fixp = load i32, i32* %arrayidx.u12_20fixp, align 4, !taffo.info !16, !taffo.target !29
  %3 = uitofp i32 %u12_20fixp to double, !taffo.info !16, !taffo.target !29
  %4 = fdiv double %3, 0x4130000000000000, !taffo.info !16, !taffo.target !29
  %call.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), double %4), !taffo.info !9, !taffo.initweight !44, !taffo.constinfo !45, !taffo.target !29
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %inc = add nsw i32 %j.0, 1, !taffo.info !46, !taffo.constinfo !18
  br label %for.cond6, !llvm.loop !48

for.end:                                          ; preds = %for.cond6
  %call9 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 10), !taffo.constinfo !18
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %i.0, 1, !taffo.info !49, !taffo.constinfo !18
  br label %for.cond, !llvm.loop !51

for.end12:                                        ; preds = %for.cond
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare !taffo.initweight !52 !taffo.funinfo !53 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare !taffo.initweight !54 !taffo.funinfo !55 dso_local i32 @printf(i8*, ...) #2

declare !taffo.initweight !25 !taffo.funinfo !25 dso_local i32 @putchar(...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @mm.1_fixp(i32* noalias %in_a.u5_27fixp, i32* noalias %in_b.u5_27fixp, i32* noalias %in_c.u12_20fixp, i32 %A_ROWS, i32 %A_COLS, i32 %B_COLS) #0 !taffo.initweight !56 !taffo.funinfo !57 !taffo.sourceFunction !60 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25, %for.inc24 ], !taffo.info !36
  %cmp = icmp ult i32 %i.0, %A_ROWS, !taffo.info !61
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc21, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc22, %for.inc21 ], !taffo.info !36
  %cmp5 = icmp ult i32 %j.0, %B_COLS, !taffo.info !61
  br i1 %cmp5, label %for.body6, label %for.end23

for.body6:                                        ; preds = %for.cond4
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc, %for.body6
  %k.0 = phi i32 [ 0, %for.body6 ], [ %inc, %for.inc ], !taffo.info !36
  %sum.0.u9_23fixp = phi i32 [ 0, %for.body6 ], [ %add16.u9_23fixp, %for.inc ], !taffo.info !63
  %cmp9 = icmp ult i32 %k.0, %A_COLS, !taffo.info !61
  br i1 %cmp9, label %for.body10, label %for.end

for.body10:                                       ; preds = %for.cond8
  %mul = mul i32 %i.0, %A_COLS, !taffo.info !65
  %add = add i32 %mul, %k.0, !taffo.info !65
  %idxprom = zext i32 %add to i64, !taffo.info !65
  %arrayidx.u5_27fixp = getelementptr inbounds i32, i32* %in_a.u5_27fixp, i64 %idxprom, !taffo.info !11
  %u5_27fixp = load i32, i32* %arrayidx.u5_27fixp, align 4, !taffo.info !11
  %0 = uitofp i32 %u5_27fixp to float, !taffo.info !11
  %1 = fdiv float %0, 0x41A0000000000000, !taffo.info !11
  %mul11 = mul i32 %k.0, %B_COLS, !taffo.info !65
  %add12 = add i32 %mul11, %j.0, !taffo.info !65
  %idxprom13 = zext i32 %add12 to i64, !taffo.info !65
  %arrayidx14.u5_27fixp = getelementptr inbounds i32, i32* %in_b.u5_27fixp, i64 %idxprom13, !taffo.info !11
  %u5_27fixp1 = load i32, i32* %arrayidx14.u5_27fixp, align 4, !taffo.info !11
  %2 = uitofp i32 %u5_27fixp1 to float, !taffo.info !11
  %3 = fdiv float %2, 0x41A0000000000000, !taffo.info !11
  %mul15 = fmul float %1, %3, !taffo.info !40
  %4 = fmul float 0x4160000000000000, %mul15, !taffo.info !40
  %5 = fptoui float %4 to i32, !taffo.info !40
  %add16.u9_23fixp = add i32 %sum.0.u9_23fixp, %5, !taffo.info !63
  br label %for.inc

for.inc:                                          ; preds = %for.body10
  %inc = add nsw i32 %k.0, 1, !taffo.info !61, !taffo.constinfo !18
  br label %for.cond8, !llvm.loop !67

for.end:                                          ; preds = %for.cond8
  %mul17 = mul i32 %i.0, %B_COLS, !taffo.info !65
  %add18 = add i32 %mul17, %j.0, !taffo.info !65
  %idxprom19 = zext i32 %add18 to i64, !taffo.info !65
  %arrayidx20.u12_20fixp = getelementptr inbounds i32, i32* %in_c.u12_20fixp, i64 %idxprom19, !taffo.info !16
  %6 = lshr i32 %sum.0.u9_23fixp, 3, !taffo.info !63
  store i32 %6, i32* %arrayidx20.u12_20fixp, align 4, !taffo.info !22
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %inc22 = add nsw i32 %j.0, 1, !taffo.info !61, !taffo.constinfo !18
  br label %for.cond4, !llvm.loop !68

for.end23:                                        ; preds = %for.cond4
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  %inc25 = add nsw i32 %i.0, 1, !taffo.info !61, !taffo.constinfo !18
  br label %for.cond, !llvm.loop !69

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
!9 = !{!10, i1 false, i1 false, i2 1}
!10 = !{!"fixp", i32 32, i32 20}
!11 = !{!12, !13, i1 false, i2 1}
!12 = !{!"fixp", i32 32, i32 27}
!13 = !{double 0.000000e+00, double 1.600000e+01}
!14 = !{i32 2}
!15 = !{i32 3}
!16 = !{!10, !17, i1 false, i2 1}
!17 = !{double 0.000000e+00, double 2.200000e+03}
!18 = !{i1 false, i1 false}
!19 = distinct !{!19, !20, !21}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.unroll.count", i32 4}
!22 = !{i1 false, !17, i1 false, i2 1}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = !{}
!26 = !{i1 true}
!27 = !{!"input_a"}
!28 = !{!"input_b"}
!29 = !{!"result_c"}
!30 = !{!12, i1 false, i1 false, i2 1}
!31 = !{i1 false, !13, i1 false, i2 1}
!32 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!33 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!34 = !{i1 false, !35, i1 false, i2 0}
!35 = !{double 0.000000e+00, double 1.700000e+01}
!36 = !{i1 false, !37, i1 false, i2 0}
!37 = !{double 0.000000e+00, double 1.000000e+00}
!38 = !{i1 false, !39, i1 false, i2 0}
!39 = !{double 0.000000e+00, double 2.890000e+02}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 0.000000e+00, double 2.560000e+02}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 0.000000e+00, double 5.440000e+02}
!44 = !{i32 4}
!45 = !{i1 false, i1 false, i1 false}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 1.000000e+00, double 2.890000e+02}
!48 = distinct !{!48, !20}
!49 = !{i1 false, !50, i1 false, i2 0}
!50 = !{double 1.000000e+00, double 1.700000e+01}
!51 = distinct !{!51, !20}
!52 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!53 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!54 = !{i32 -1}
!55 = !{i32 0, i1 false}
!56 = !{i32 2, i32 2, i32 2, i32 -1, i32 -1, i32 -1}
!57 = !{i32 1, !11, i32 1, !11, i32 1, !16, i32 1, !58, i32 1, !58, i32 1, !58}
!58 = !{i1 false, !59, i1 false, i2 0}
!59 = !{double 1.600000e+01, double 1.600000e+01}
!60 = !{void (float*, float*, float*, i32, i32, i32)* @mm}
!61 = !{i1 false, !62, i1 false, i2 0}
!62 = !{double 1.000000e+00, double 1.000000e+00}
!63 = !{!64, !41, i1 false, i2 1}
!64 = !{!"fixp", i32 32, i32 23}
!65 = !{i1 false, !66, i1 false, i2 0}
!66 = !{double 0.000000e+00, double 0.000000e+00}
!67 = distinct !{!67, !20, !21}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !20}
