; ModuleID = '/tmp/tmp.VCBC5bans6/test.ll.4.taffotmp.ll'
source_filename = "test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.6 = private unnamed_addr constant [10 x i8] c"Input A:\0A\00", align 1, !taffo.info !0
@.str.7 = private unnamed_addr constant [6 x i8] c"%.2f \00", align 1, !taffo.info !2
@.str.8 = private unnamed_addr constant [10 x i8] c"Input B:\0A\00", align 1, !taffo.info !0
@.str.9 = private unnamed_addr constant [9 x i8] c"Result:\0A\00", align 1, !taffo.info !0

; Function Attrs: noinline nounwind uwtable
define dso_local void @mm(float* noalias %in_a, float* noalias %in_b, float* noalias %out_c) #0 !taffo.initweight !6 !taffo.equivalentChild !7 !taffo.funinfo !8 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %sum.0.u9_23fixp = phi i32 [ 0, %entry ], [ %sum.1.u9_23fixp, %for.inc23 ], !taffo.info !9
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ]
  %cmp = icmp slt i32 %i.0, 32
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc20, %for.body
  %sum.1.u9_23fixp = phi i32 [ %sum.0.u9_23fixp, %for.body ], [ %sum.2.u9_23fixp, %for.inc20 ], !taffo.info !9
  %j.0 = phi i32 [ 0, %for.body ], [ %inc21, %for.inc20 ]
  %cmp5 = icmp slt i32 %j.0, 32
  br i1 %cmp5, label %for.body6, label %for.end22

for.body6:                                        ; preds = %for.cond4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %sum.2.u9_23fixp = phi i32 [ %sum.1.u9_23fixp, %for.body6 ], [ %add15.u9_23fixp, %for.inc ], !taffo.info !9
  %k.0 = phi i32 [ 0, %for.body6 ], [ %inc, %for.inc ]
  %0 = uitofp i32 %sum.2.u9_23fixp to float, !taffo.info !9
  %1 = fdiv float %0, 0x4160000000000000, !taffo.info !9
  %cmp8 = icmp slt i32 %k.0, 32
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %mul = mul nsw i32 %i.0, 32, !taffo.constinfo !11
  %add = add nsw i32 %mul, %k.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds float, float* %in_a, i64 %idxprom
  %2 = load float, float* %arrayidx, align 4
  %mul10 = mul nsw i32 %k.0, 32, !taffo.constinfo !11
  %add11 = add nsw i32 %mul10, %j.0
  %idxprom12 = sext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds float, float* %in_b, i64 %idxprom12
  %3 = load float, float* %arrayidx13, align 4
  %4 = fmul float 0x4160000000000000, %2, !taffo.info !12
  %5 = fptoui float %4 to i32, !taffo.info !12
  %6 = fmul float 0x4160000000000000, %3, !taffo.info !12
  %7 = fptoui float %6 to i32, !taffo.info !12
  %8 = zext i32 %5 to i64, !taffo.info !12
  %9 = zext i32 %7 to i64, !taffo.info !12
  %10 = mul i64 %8, %9, !taffo.info !14
  %11 = lshr i64 %10, 23, !taffo.info !14
  %mul14.u9_23fixp = trunc i64 %11 to i32, !taffo.info !12
  %add15.u9_23fixp = add i32 %sum.2.u9_23fixp, %mul14.u9_23fixp, !taffo.info !9
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %k.0, 1, !taffo.constinfo !11
  br label %for.cond7, !llvm.loop !16

for.end:                                          ; preds = %for.cond7
  %mul16 = mul nsw i32 %i.0, 32, !taffo.constinfo !11
  %add17 = add nsw i32 %mul16, %j.0
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds float, float* %out_c, i64 %idxprom18
  store float %1, float* %arrayidx19, align 4, !taffo.info !19
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %j.0, 1, !taffo.constinfo !11
  br label %for.cond4, !llvm.loop !20

for.end22:                                        ; preds = %for.cond4
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %inc24 = add nsw i32 %i.0, 1, !taffo.constinfo !11
  br label %for.cond, !llvm.loop !21

for.end25:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 !taffo.initweight !22 !taffo.funinfo !22 !taffo.start !23 {
entry:
  %in_a.u9_23fixp = alloca [1024 x i32], align 16, !taffo.info !12, !taffo.target !24
  %in_b.u9_23fixp = alloca [1024 x i32], align 16, !taffo.info !12, !taffo.target !25
  %out_c.u32_32fixp = alloca [1024 x i64], align 16, !taffo.info !26, !taffo.target !29
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ], !taffo.info !30
  %cmp = icmp slt i32 %i.0, 32, !taffo.info !32
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ], !taffo.info !34
  %cmp5 = icmp slt i32 %j.0, 32, !taffo.info !32
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %add = add nsw i32 %j.0, 1, !taffo.info !36, !taffo.constinfo !11
  %rem = srem i32 %add, 16, !taffo.info !38, !taffo.constinfo !11
  %conv.u4_28fixp = shl i32 %rem, 28, !taffo.info !40, !taffo.constinfo !11
  %mul = mul nsw i32 %i.0, 32, !taffo.info !42, !taffo.constinfo !11
  %add7 = add nsw i32 %mul, %j.0, !taffo.info !44
  %idxprom = sext i32 %add7 to i64, !taffo.info !44
  %arrayidx.u9_23fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %in_a.u9_23fixp, i64 0, i64 %idxprom, !taffo.info !12, !taffo.target !24
  %0 = lshr i32 %conv.u4_28fixp, 5, !taffo.info !40, !taffo.constinfo !11
  store i32 %0, i32* %arrayidx.u9_23fixp, align 4, !taffo.info !46, !taffo.target !24
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %j.0, 1, !taffo.info !36, !taffo.constinfo !11
  br label %for.cond4, !llvm.loop !47

for.end:                                          ; preds = %for.cond4
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %inc9 = add nsw i32 %i.0, 1, !taffo.info !48, !taffo.constinfo !11
  br label %for.cond, !llvm.loop !50

for.end10:                                        ; preds = %for.cond
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc29, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc30, %for.inc29 ], !taffo.info !30
  %cmp12 = icmp slt i32 %i.1, 32, !taffo.info !32
  br i1 %cmp12, label %for.body14, label %for.end31

for.body14:                                       ; preds = %for.cond11
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc26, %for.body14
  %j.1 = phi i32 [ 0, %for.body14 ], [ %inc27, %for.inc26 ], !taffo.info !34
  %cmp16 = icmp slt i32 %j.1, 32, !taffo.info !32
  br i1 %cmp16, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond15
  %add19 = add nsw i32 %j.1, 1, !taffo.info !36, !taffo.constinfo !11
  %rem20 = srem i32 %add19, 16, !taffo.info !38, !taffo.constinfo !11
  %conv21.u4_28fixp = shl i32 %rem20, 28, !taffo.info !40, !taffo.constinfo !11
  %mul22 = mul nsw i32 %i.1, 32, !taffo.info !42, !taffo.constinfo !11
  %add23 = add nsw i32 %mul22, %j.1, !taffo.info !44
  %idxprom24 = sext i32 %add23 to i64, !taffo.info !44
  %arrayidx25.u9_23fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %in_b.u9_23fixp, i64 0, i64 %idxprom24, !taffo.info !12, !taffo.target !25
  %1 = lshr i32 %conv21.u4_28fixp, 5, !taffo.info !40, !taffo.constinfo !11
  store i32 %1, i32* %arrayidx25.u9_23fixp, align 4, !taffo.info !46, !taffo.target !25
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %inc27 = add nsw i32 %j.1, 1, !taffo.info !36, !taffo.constinfo !11
  br label %for.cond15, !llvm.loop !51

for.end28:                                        ; preds = %for.cond15
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %inc30 = add nsw i32 %i.1, 1, !taffo.info !48, !taffo.constinfo !11
  br label %for.cond11, !llvm.loop !52

for.end31:                                        ; preds = %for.cond11
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)), !taffo.constinfo !11
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc50, %for.end31
  %i.2 = phi i32 [ 0, %for.end31 ], [ %inc51, %for.inc50 ], !taffo.info !30
  %cmp33 = icmp slt i32 %i.2, 32, !taffo.info !32
  br i1 %cmp33, label %for.body35, label %for.end52

for.body35:                                       ; preds = %for.cond32
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc46, %for.body35
  %j.2 = phi i32 [ 0, %for.body35 ], [ %inc47, %for.inc46 ], !taffo.info !34
  %cmp37 = icmp slt i32 %j.2, 32, !taffo.info !32
  br i1 %cmp37, label %for.body39, label %for.end48

for.body39:                                       ; preds = %for.cond36
  %mul40 = mul nsw i32 %i.2, 32, !taffo.info !42, !taffo.constinfo !11
  %add41 = add nsw i32 %mul40, %j.2, !taffo.info !44
  %idxprom42 = sext i32 %add41 to i64, !taffo.info !44
  %arrayidx43.u9_23fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %in_a.u9_23fixp, i64 0, i64 %idxprom42, !taffo.info !12, !taffo.target !24
  %u9_23fixp = load i32, i32* %arrayidx43.u9_23fixp, align 4, !taffo.info !12, !taffo.target !24
  %2 = uitofp i32 %u9_23fixp to double, !taffo.info !12, !taffo.target !24
  %3 = fdiv double %2, 0x4160000000000000, !taffo.info !12, !taffo.target !24
  %call45.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %3), !taffo.info !9, !taffo.initweight !53, !taffo.constinfo !54, !taffo.target !24
  br label %for.inc46

for.inc46:                                        ; preds = %for.body39
  %inc47 = add nsw i32 %j.2, 1, !taffo.info !36, !taffo.constinfo !11
  br label %for.cond36, !llvm.loop !55

for.end48:                                        ; preds = %for.cond36
  %call49 = call i32 @putchar(i32 10), !taffo.constinfo !11
  br label %for.inc50

for.inc50:                                        ; preds = %for.end48
  %inc51 = add nsw i32 %i.2, 1, !taffo.info !48, !taffo.constinfo !11
  br label %for.cond32, !llvm.loop !56

for.end52:                                        ; preds = %for.cond32
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)), !taffo.constinfo !11
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc72, %for.end52
  %i.3 = phi i32 [ 0, %for.end52 ], [ %inc73, %for.inc72 ], !taffo.info !30
  %cmp55 = icmp slt i32 %i.3, 32, !taffo.info !32
  br i1 %cmp55, label %for.body57, label %for.end74

for.body57:                                       ; preds = %for.cond54
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc68, %for.body57
  %j.3 = phi i32 [ 0, %for.body57 ], [ %inc69, %for.inc68 ], !taffo.info !34
  %cmp59 = icmp slt i32 %j.3, 32, !taffo.info !32
  br i1 %cmp59, label %for.body61, label %for.end70

for.body61:                                       ; preds = %for.cond58
  %mul62 = mul nsw i32 %i.3, 32, !taffo.info !42, !taffo.constinfo !11
  %add63 = add nsw i32 %mul62, %j.3, !taffo.info !44
  %idxprom64 = sext i32 %add63 to i64, !taffo.info !44
  %arrayidx65.u9_23fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %in_b.u9_23fixp, i64 0, i64 %idxprom64, !taffo.info !12, !taffo.target !25
  %u9_23fixp1 = load i32, i32* %arrayidx65.u9_23fixp, align 4, !taffo.info !12, !taffo.target !25
  %4 = uitofp i32 %u9_23fixp1 to double, !taffo.info !12, !taffo.target !25
  %5 = fdiv double %4, 0x4160000000000000, !taffo.info !12, !taffo.target !25
  %call67.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %5), !taffo.info !9, !taffo.initweight !53, !taffo.constinfo !54, !taffo.target !25
  br label %for.inc68

for.inc68:                                        ; preds = %for.body61
  %inc69 = add nsw i32 %j.3, 1, !taffo.info !36, !taffo.constinfo !11
  br label %for.cond58, !llvm.loop !57

for.end70:                                        ; preds = %for.cond58
  %call71 = call i32 @putchar(i32 10), !taffo.constinfo !11
  br label %for.inc72

for.inc72:                                        ; preds = %for.end70
  %inc73 = add nsw i32 %i.3, 1, !taffo.info !48, !taffo.constinfo !11
  br label %for.cond54, !llvm.loop !58

for.end74:                                        ; preds = %for.cond54
  %arraydecay.u9_23fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %in_a.u9_23fixp, i64 0, i64 0, !taffo.info !12, !taffo.target !24
  %arraydecay75.u9_23fixp = getelementptr inbounds [1024 x i32], [1024 x i32]* %in_b.u9_23fixp, i64 0, i64 0, !taffo.info !12, !taffo.target !25
  %arraydecay76.u32_32fixp = getelementptr inbounds [1024 x i64], [1024 x i64]* %out_c.u32_32fixp, i64 0, i64 0, !taffo.info !26, !taffo.target !29
  call void @mm_1_fixp(i32* %arraydecay.u9_23fixp, i32* %arraydecay75.u9_23fixp, i64* %arraydecay76.u32_32fixp), !taffo.info !46, !taffo.constinfo !59, !taffo.target !24
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)), !taffo.constinfo !11
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc96, %for.end74
  %i.4 = phi i32 [ 0, %for.end74 ], [ %inc97, %for.inc96 ], !taffo.info !30
  %cmp79 = icmp slt i32 %i.4, 32, !taffo.info !32
  br i1 %cmp79, label %for.body81, label %for.end98

for.body81:                                       ; preds = %for.cond78
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc92, %for.body81
  %j.4 = phi i32 [ 0, %for.body81 ], [ %inc93, %for.inc92 ], !taffo.info !34
  %cmp83 = icmp slt i32 %j.4, 32, !taffo.info !32
  br i1 %cmp83, label %for.body85, label %for.end94

for.body85:                                       ; preds = %for.cond82
  %mul86 = mul nsw i32 %i.4, 32, !taffo.info !42, !taffo.constinfo !11
  %add87 = add nsw i32 %mul86, %j.4, !taffo.info !44
  %idxprom88 = sext i32 %add87 to i64, !taffo.info !44
  %arrayidx89.u32_32fixp = getelementptr inbounds [1024 x i64], [1024 x i64]* %out_c.u32_32fixp, i64 0, i64 %idxprom88, !taffo.info !26, !taffo.target !29
  %u32_32fixp = load i64, i64* %arrayidx89.u32_32fixp, align 4, !taffo.info !26, !taffo.target !29
  %6 = uitofp i64 %u32_32fixp to double, !taffo.info !26, !taffo.target !29
  %7 = fdiv double %6, 0x41F0000000000000, !taffo.info !26, !taffo.target !29
  %call91.flt = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), double %7), !taffo.info !60, !taffo.initweight !53, !taffo.constinfo !54, !taffo.target !29
  br label %for.inc92

for.inc92:                                        ; preds = %for.body85
  %inc93 = add nsw i32 %j.4, 1, !taffo.info !36, !taffo.constinfo !11
  br label %for.cond82, !llvm.loop !61

for.end94:                                        ; preds = %for.cond82
  %call95 = call i32 @putchar(i32 10), !taffo.constinfo !11
  br label %for.inc96

for.inc96:                                        ; preds = %for.end94
  %inc97 = add nsw i32 %i.4, 1, !taffo.info !48, !taffo.constinfo !11
  br label %for.cond78, !llvm.loop !62

for.end98:                                        ; preds = %for.cond78
  ret i32 0
}

declare !taffo.initweight !63 !taffo.funinfo !64 dso_local i32 @printf(i8*, ...) #1

declare !taffo.initweight !63 !taffo.funinfo !64 dso_local i32 @putchar(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @mm_1_fixp(i32* noalias %in_a, i32* noalias %in_b, i64* noalias %out_c) #0 !taffo.initweight !65 !taffo.funinfo !66 !taffo.sourceFunction !67 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %sum.0.u32_32fixp = phi i64 [ 0, %entry ], [ %sum.1.u32_32fixp, %for.inc23 ], !taffo.info !26
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ], !taffo.info !30
  %cmp = icmp slt i32 %i.0, 32, !taffo.info !32
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc20, %for.body
  %sum.1.u32_32fixp = phi i64 [ %sum.0.u32_32fixp, %for.body ], [ %sum.2.u32_32fixp, %for.inc20 ], !taffo.info !26
  %j.0 = phi i32 [ 0, %for.body ], [ %inc21, %for.inc20 ], !taffo.info !34
  %cmp5 = icmp slt i32 %j.0, 32, !taffo.info !32
  br i1 %cmp5, label %for.body6, label %for.end22

for.body6:                                        ; preds = %for.cond4
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %sum.2.u32_32fixp = phi i64 [ %sum.1.u32_32fixp, %for.body6 ], [ %add15.u32_32fixp, %for.inc ], !taffo.info !26
  %k.0 = phi i32 [ 0, %for.body6 ], [ %inc, %for.inc ], !taffo.info !68
  %cmp8 = icmp slt i32 %k.0, 32, !taffo.info !32
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %mul = mul nsw i32 %i.0, 32, !taffo.info !42, !taffo.constinfo !11
  %add = add nsw i32 %mul, %k.0, !taffo.info !70
  %idxprom = sext i32 %add to i64, !taffo.info !70
  %arrayidx.u9_23fixp = getelementptr inbounds i32, i32* %in_a, i64 %idxprom, !taffo.info !12
  %u9_23fixp = load i32, i32* %arrayidx.u9_23fixp, align 4, !taffo.info !12
  %mul10 = mul nsw i32 %k.0, 32, !taffo.info !72, !taffo.constinfo !11
  %add11 = add nsw i32 %mul10, %j.0, !taffo.info !74
  %idxprom12 = sext i32 %add11 to i64, !taffo.info !74
  %arrayidx13.u9_23fixp = getelementptr inbounds i32, i32* %in_b, i64 %idxprom12, !taffo.info !12
  %u9_23fixp5 = load i32, i32* %arrayidx13.u9_23fixp, align 4, !taffo.info !12
  %0 = zext i32 %u9_23fixp to i64, !taffo.info !12
  %1 = zext i32 %u9_23fixp5 to i64, !taffo.info !12
  %2 = mul i64 %0, %1, !taffo.info !76
  %3 = lshr i64 %2, 31, !taffo.info !76
  %mul14.u17_15fixp = trunc i64 %3 to i32, !taffo.info !78
  %4 = zext i32 %mul14.u17_15fixp to i64, !taffo.info !78
  %5 = shl i64 %4, 17, !taffo.info !78
  %add15.u32_32fixp = add i64 %sum.2.u32_32fixp, %5, !taffo.info !26
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %inc = add nsw i32 %k.0, 1, !taffo.info !80, !taffo.constinfo !11
  br label %for.cond7, !llvm.loop !82

for.end:                                          ; preds = %for.cond7
  %mul16 = mul nsw i32 %i.0, 32, !taffo.info !42, !taffo.constinfo !11
  %add17 = add nsw i32 %mul16, %j.0, !taffo.info !44
  %idxprom18 = sext i32 %add17 to i64, !taffo.info !44
  %arrayidx19.u32_32fixp = getelementptr inbounds i64, i64* %out_c, i64 %idxprom18, !taffo.info !26
  store i64 %sum.2.u32_32fixp, i64* %arrayidx19.u32_32fixp, align 4, !taffo.info !19
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %inc21 = add nsw i32 %j.0, 1, !taffo.info !36, !taffo.constinfo !11
  br label %for.cond4, !llvm.loop !83

for.end22:                                        ; preds = %for.cond4
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %inc24 = add nsw i32 %i.0, 1, !taffo.info !48, !taffo.constinfo !11
  br label %for.cond, !llvm.loop !84

for.end25:                                        ; preds = %for.cond
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!4}
!llvm.ident = !{!5}

!0 = !{i1 false, !1, i1 false, i2 0}
!1 = !{double 0.000000e+00, double 1.170000e+02}
!2 = !{i1 false, !3, i1 false, i2 0}
!3 = !{double 0.000000e+00, double 1.020000e+02}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{!"Ubuntu clang version 12.0.1-19ubuntu3"}
!6 = !{i32 -1, i32 -1, i32 -1}
!7 = distinct !{null}
!8 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!9 = !{!10, i1 false, i1 false, i2 1}
!10 = !{!"fixp", i32 32, i32 23}
!11 = !{i1 false, i1 false}
!12 = !{!10, !13, i1 false, i2 1}
!13 = !{double 0.000000e+00, double 2.560000e+02}
!14 = !{!15, !13, i1 false, i2 1}
!15 = !{!"fixp", i32 64, i32 46}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.count", i32 4}
!19 = !{i1 false, i1 false, i1 false, i2 1}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = !{}
!23 = !{i1 true}
!24 = !{!"input_a"}
!25 = !{!"input_b"}
!26 = !{!27, !28, i1 false, i2 1}
!27 = !{!"fixp", i32 64, i32 32}
!28 = !{double 0.000000e+00, double 0x41E18C2000000000}
!29 = !{!"result_c"}
!30 = !{i1 false, !31, i1 false, i2 0}
!31 = !{double 0.000000e+00, double 3.300000e+01}
!32 = !{i1 false, !33, i1 false, i2 0}
!33 = !{double 0.000000e+00, double 1.000000e+00}
!34 = !{i1 false, !35, i1 false, i2 0}
!35 = !{double 0.000000e+00, double 1.089000e+03}
!36 = !{i1 false, !37, i1 false, i2 0}
!37 = !{double 1.000000e+00, double 1.089000e+03}
!38 = !{i1 false, !39, i1 false, i2 0}
!39 = !{double 0.000000e+00, double 1.500000e+01}
!40 = !{!41, !39, i1 false, i2 1}
!41 = !{!"fixp", i32 32, i32 28}
!42 = !{i1 false, !43, i1 false, i2 0}
!43 = !{double 0.000000e+00, double 1.024000e+03}
!44 = !{i1 false, !45, i1 false, i2 0}
!45 = !{double 0.000000e+00, double 2.112000e+03}
!46 = !{i1 false, !13, i1 false, i2 1}
!47 = distinct !{!47, !17}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 1.000000e+00, double 3.300000e+01}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17}
!53 = !{i32 4}
!54 = !{i1 false, i1 false, i1 false}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = !{i1 false, i1 false, i1 false, i1 false}
!60 = !{!27, i1 false, i1 false, i2 1}
!61 = distinct !{!61, !17}
!62 = distinct !{!62, !17}
!63 = !{i32 -1}
!64 = !{i32 0, i1 false}
!65 = !{i32 2, i32 2, i32 2}
!66 = !{i32 1, !12, i32 1, !12, i32 1, !26}
!67 = !{void (float*, float*, float*)* @mm}
!68 = !{i1 false, !69, i1 false, i2 0}
!69 = !{double 0.000000e+00, double 3.593700e+04}
!70 = !{i1 false, !71, i1 false, i2 0}
!71 = !{double 0.000000e+00, double 3.696000e+04}
!72 = !{i1 false, !73, i1 false, i2 0}
!73 = !{double 0.000000e+00, double 0x41318C0000000000}
!74 = !{i1 false, !75, i1 false, i2 0}
!75 = !{double 0.000000e+00, double 1.151040e+06}
!76 = !{!15, !77, i1 false, i2 1}
!77 = !{double 0.000000e+00, double 6.553600e+04}
!78 = !{!79, !77, i1 false, i2 1}
!79 = !{!"fixp", i32 32, i32 15}
!80 = !{i1 false, !81, i1 false, i2 0}
!81 = !{double 1.000000e+00, double 3.593700e+04}
!82 = distinct !{!82, !17, !18}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !17}
