; ModuleID = '/tmp/tmp.Q7bgWbyqST/test.ll.4.taffotmp.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.Complex = type { float, float }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_put"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, i8*, i64, i8, i8, i8, i8, i8*, i8*, i8, %"class.std::codecvt"*, i8*, i64, i8*, i8* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%"class.std::__basic_file" = type <{ %struct._IO_FILE*, i8, [7 x i8] }>
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__mbstate_t = type { i32, %union.anon.0 }
%union.anon.0 = type { i32 }
%"class.std::codecvt" = type { %"class.std::__codecvt_abstract_base.base", %struct.__locale_struct* }
%"class.std::__codecvt_abstract_base.base" = type { %"class.std::locale::facet.base" }

$_ZNSt8ios_base9precisionEl = comdat any

@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_test.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_fourier_modified.cpp, i8* null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !taffo.structinfo !0
@_ZL1x = internal global %struct.Complex* null, align 8
@_ZL1f = internal global %struct.Complex* null, align 8
@_ZL7indices = internal global i32* null, align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8, !taffo.structinfo !0
@.str = private unnamed_addr constant [53 x i8] c"cannot allocate memory for the triangle coordinates!\00", align 1, !taffo.info !1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1, !taffo.info !3
@_ZStL8__ioinit.3 = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !taffo.structinfo !0
@__dso_handle = external hidden global i8

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_test.cpp() #0 section ".text.startup" !taffo.initweight !0 !taffo.funinfo !0 {
entry:
  call void @__cxx_global_var_init(), !taffo.constinfo !11
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !taffo.initweight !0 !taffo.funinfo !0 {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !taffo.constinfo !12
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3, !taffo.constinfo !13
  ret void
}

declare !taffo.initweight !14 !taffo.funinfo !15 void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare !taffo.initweight !14 !taffo.funinfo !15 void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare !taffo.initweight !16 !taffo.funinfo !17 i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: mustprogress noinline norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, i8** noundef %argv) #4 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !taffo.initweight !18 !taffo.funinfo !19 {
entry:
  %outputFilename = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp = alloca %"class.std::ios_base::Init", align 1
  %outputFileHandler = alloca %"class.std::basic_ofstream", align 8
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %0 = load i8*, i8** %arrayidx, align 8
  call void @_ZNSaIcEC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) %ref.tmp) #3, !taffo.constinfo !12
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %outputFilename, i8* noundef %0, %"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !taffo.constinfo !20

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) %ref.tmp) #3, !taffo.constinfo !12
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %outputFileHandler)
          to label %invoke.cont2 unwind label %lpad1, !taffo.constinfo !13

invoke.cont2:                                     ; preds = %invoke.cont
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %outputFileHandler, %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %outputFilename, i32 noundef 16)
          to label %invoke.cont4 unwind label %lpad3, !taffo.constinfo !20

invoke.cont4:                                     ; preds = %invoke.cont2
  %1 = bitcast %"class.std::basic_ofstream"* %outputFileHandler to i8**
  %vtable = load i8*, i8** %1, align 8
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %2 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %2, align 8
  %3 = bitcast %"class.std::basic_ofstream"* %outputFileHandler to i8*
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %vbase.offset
  %4 = bitcast i8* %add.ptr to %"class.std::ios_base"*
  %call = invoke noundef i64 @_ZNSt8ios_base9precisionEl(%"class.std::ios_base"* noundef nonnull align 8 dereferenceable(216) %4, i64 noundef 5)
          to label %invoke.cont5 unwind label %lpad3, !taffo.constinfo !21

invoke.cont5:                                     ; preds = %invoke.cont4
  %call6 = call noalias i8* @malloc(i64 noundef 8192) #10, !taffo.constinfo !12
  %5 = bitcast i8* %call6 to %struct.Complex*
  store %struct.Complex* %5, %struct.Complex** @_ZL1x, align 8, !taffo.constinfo !12
  %call7 = call noalias i8* @malloc(i64 noundef 8192) #10, !taffo.constinfo !12
  %6 = bitcast i8* %call7 to %struct.Complex*
  store %struct.Complex* %6, %struct.Complex** @_ZL1f, align 8, !taffo.constinfo !12
  %call8 = call noalias i8* @malloc(i64 noundef 4096) #10, !taffo.constinfo !12
  %7 = bitcast i8* %call8 to i32*
  store i32* %7, i32** @_ZL7indices, align 8, !taffo.constinfo !12
  %8 = load %struct.Complex*, %struct.Complex** @_ZL1x, align 8
  %cmp = icmp eq %struct.Complex* %8, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %invoke.cont5
  %9 = load %struct.Complex*, %struct.Complex** @_ZL1f, align 8
  %cmp9 = icmp eq %struct.Complex* %9, null
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %10 = load i32*, i32** @_ZL7indices, align 8
  %cmp11 = icmp eq i32* %10, null
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false10, %lor.lhs.false, %invoke.cont5
  %call13 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* noundef getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
          to label %invoke.cont12 unwind label %lpad3, !taffo.constinfo !21

invoke.cont12:                                    ; preds = %if.then
  %call15 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call13, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %invoke.cont14 unwind label %lpad3, !taffo.constinfo !21

invoke.cont14:                                    ; preds = %invoke.cont12
  br label %cleanup

lpad:                                             ; preds = %entry
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  %13 = extractvalue { i8*, i32 } %11, 1
  call void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) %ref.tmp) #3, !taffo.constinfo !12
  br label %eh.resume

lpad1:                                            ; preds = %invoke.cont
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  %16 = extractvalue { i8*, i32 } %14, 1
  br label %ehcleanup

lpad3:                                            ; preds = %for.end47, %invoke.cont41, %invoke.cont37, %invoke.cont35, %invoke.cont30, %invoke.cont28, %for.body24, %for.end, %invoke.cont12, %if.then, %invoke.cont4, %invoke.cont2
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  %19 = extractvalue { i8*, i32 } %17, 1
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %outputFileHandler) #3, !taffo.constinfo !12
  br label %ehcleanup

if.end:                                           ; preds = %lor.lhs.false10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.inc ]
  %cmp16 = icmp slt i32 %i.0, 1024
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %cmp17 = icmp slt i32 %i.0, 10
  %cond = select i1 %cmp17, double 1.000000e+00, double 0.000000e+00
  %conv = fptrunc double %cond to float
  %20 = load %struct.Complex*, %struct.Complex** @_ZL1x, align 8
  %idxprom = sext i32 %i.0 to i64
  %arrayidx18 = getelementptr inbounds %struct.Complex, %struct.Complex* %20, i64 %idxprom
  %real = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx18, i32 0, i32 0
  store float %conv, float* %real, align 4
  %21 = load %struct.Complex*, %struct.Complex** @_ZL1x, align 8
  %idxprom19 = sext i32 %i.0 to i64
  %arrayidx20 = getelementptr inbounds %struct.Complex, %struct.Complex* %21, i64 %idxprom19
  %imag = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx20, i32 0, i32 1
  store float 0.000000e+00, float* %imag, align 4, !taffo.constinfo !22
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.constinfo !12
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond
  %22 = load i32*, i32** @_ZL7indices, align 8
  %23 = load %struct.Complex*, %struct.Complex** @_ZL1x, align 8
  %24 = load %struct.Complex*, %struct.Complex** @_ZL1f, align 8
  invoke void @_Z23radix2DitCooleyTykeyFftPiP7ComplexS1_(i32* noundef %22, %struct.Complex* noundef %23, %struct.Complex* noundef %24)
          to label %invoke.cont21 unwind label %lpad3, !taffo.constinfo !20

invoke.cont21:                                    ; preds = %for.end
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc45, %invoke.cont21
  %i.1 = phi i32 [ 0, %invoke.cont21 ], [ %inc46, %for.inc45 ]
  %cmp23 = icmp slt i32 %i.1, 1024
  br i1 %cmp23, label %for.body24, label %for.end47

for.body24:                                       ; preds = %for.cond22
  %25 = bitcast %"class.std::basic_ofstream"* %outputFileHandler to %"class.std::basic_ostream"*
  %26 = load %struct.Complex*, %struct.Complex** @_ZL1f, align 8
  %idxprom25 = sext i32 %i.1 to i64
  %arrayidx26 = getelementptr inbounds %struct.Complex, %struct.Complex* %26, i64 %idxprom25
  %real27 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx26, i32 0, i32 0
  %27 = load float, float* %real27, align 4
  %call29 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %25, float noundef %27)
          to label %invoke.cont28 unwind label %lpad3, !taffo.constinfo !21

invoke.cont28:                                    ; preds = %for.body24
  %call31 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call29, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
          to label %invoke.cont30 unwind label %lpad3, !taffo.constinfo !21

invoke.cont30:                                    ; preds = %invoke.cont28
  %28 = load %struct.Complex*, %struct.Complex** @_ZL1f, align 8
  %idxprom32 = sext i32 %i.1 to i64
  %arrayidx33 = getelementptr inbounds %struct.Complex, %struct.Complex* %28, i64 %idxprom32
  %imag34 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx33, i32 0, i32 1
  %29 = load float, float* %imag34, align 4
  %call36 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call31, float noundef %29)
          to label %invoke.cont35 unwind label %lpad3, !taffo.constinfo !21

invoke.cont35:                                    ; preds = %invoke.cont30
  %call38 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call36, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
          to label %invoke.cont37 unwind label %lpad3, !taffo.constinfo !21

invoke.cont37:                                    ; preds = %invoke.cont35
  %30 = load i32*, i32** @_ZL7indices, align 8
  %idxprom39 = sext i32 %i.1 to i64
  %arrayidx40 = getelementptr inbounds i32, i32* %30, i64 %idxprom39
  %31 = load i32, i32* %arrayidx40, align 4
  %call42 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call38, i32 noundef %31)
          to label %invoke.cont41 unwind label %lpad3, !taffo.constinfo !21

invoke.cont41:                                    ; preds = %invoke.cont37
  %call44 = invoke noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8) %call42, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
          to label %invoke.cont43 unwind label %lpad3, !taffo.constinfo !21

invoke.cont43:                                    ; preds = %invoke.cont41
  br label %for.inc45

for.inc45:                                        ; preds = %invoke.cont43
  %inc46 = add nsw i32 %i.1, 1, !taffo.constinfo !12
  br label %for.cond22, !llvm.loop !27

for.end47:                                        ; preds = %for.cond22
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %outputFileHandler)
          to label %invoke.cont48 unwind label %lpad3, !taffo.constinfo !13

invoke.cont48:                                    ; preds = %for.end47
  br label %cleanup

cleanup:                                          ; preds = %invoke.cont48, %invoke.cont14
  %retval.0 = phi i32 [ -1, %invoke.cont14 ], [ 0, %invoke.cont48 ]
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248) %outputFileHandler) #3, !taffo.constinfo !12
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %outputFilename) #3, !taffo.constinfo !12
  ret i32 %retval.0

ehcleanup:                                        ; preds = %lpad3, %lpad1
  %exn.slot.0 = phi i8* [ %18, %lpad3 ], [ %15, %lpad1 ]
  %ehselector.slot.0 = phi i32 [ %19, %lpad3 ], [ %16, %lpad1 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32) %outputFilename) #3, !taffo.constinfo !12
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup, %lpad
  %exn.slot.1 = phi i8* [ %exn.slot.0, %ehcleanup ], [ %12, %lpad ]
  %ehselector.slot.1 = phi i32 [ %ehselector.slot.0, %ehcleanup ], [ %13, %lpad ]
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.1, 0
  %lpad.val50 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.1, 1
  resume { i8*, i32 } %lpad.val50
}

declare !taffo.initweight !0 !taffo.funinfo !0 i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare !taffo.initweight !14 !taffo.funinfo !15 void @_ZNSaIcEC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare !taffo.initweight !16 !taffo.funinfo !17 void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i8* noundef, %"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare !taffo.initweight !14 !taffo.funinfo !15 void @_ZNSaIcED1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare !taffo.initweight !14 !taffo.funinfo !15 void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248)) unnamed_addr #1

declare !taffo.initweight !16 !taffo.funinfo !17 void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248), %"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32), i32 noundef) #1

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8ios_base9precisionEl(%"class.std::ios_base"* noundef nonnull align 8 dereferenceable(216) %this, i64 noundef %__prec) #5 comdat align 2 !taffo.initweight !18 !taffo.funinfo !19 {
entry:
  %_M_precision = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this, i32 0, i32 1
  %0 = load i64, i64* %_M_precision, align 8
  %_M_precision2 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this, i32 0, i32 1
  store i64 %__prec, i64* %_M_precision2, align 8
  ret i64 %0
}

; Function Attrs: nounwind allocsize(0)
declare !taffo.initweight !14 !taffo.funinfo !15 noalias i8* @malloc(i64 noundef) #6

declare !taffo.initweight !18 !taffo.funinfo !19 noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i8* noundef) #1

declare !taffo.initweight !14 !taffo.funinfo !15 noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8)) #1

declare !taffo.initweight !18 !taffo.funinfo !19 noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* noundef) #1

; Function Attrs: nounwind
declare !taffo.initweight !14 !taffo.funinfo !15 void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248)) unnamed_addr #2

declare !taffo.initweight !18 !taffo.funinfo !19 noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEf(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), float noundef) #1

declare !taffo.initweight !18 !taffo.funinfo !19 noundef nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* noundef nonnull align 8 dereferenceable(8), i32 noundef) #1

declare !taffo.initweight !14 !taffo.funinfo !15 void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv(%"class.std::basic_ofstream"* noundef nonnull align 8 dereferenceable(248)) #1

; Function Attrs: nounwind
declare !taffo.initweight !14 !taffo.funinfo !15 void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_fourier_modified.cpp() #0 section ".text.startup" !taffo.initweight !0 !taffo.funinfo !0 {
entry:
  call void @__cxx_global_var_init.2(), !taffo.constinfo !11
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.2() #0 section ".text.startup" !taffo.initweight !0 !taffo.funinfo !0 {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit.3), !taffo.constinfo !12
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit.3, i32 0, i32 0), i8* @__dso_handle) #3, !taffo.constinfo !13
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef float @_Z11manual_log2f(float noundef %x) #5 !taffo.initweight !14 !taffo.funinfo !28 {
entry:
  %cmp = fcmp ole float %x, 0.000000e+00, !taffo.info !23
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %exponent.0 = phi i32 [ 0, %if.end ], [ %inc, %while.body ], !taffo.info !31
  %x.addr.0 = phi float [ %x, %if.end ], [ %div, %while.body ], !taffo.info !33
  %cmp1 = fcmp oge float %x.addr.0, 2.000000e+00, !taffo.info !35
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %div = fdiv float %x.addr.0, 2.000000e+00, !taffo.info !37, !taffo.constinfo !39
  %inc = add nsw i32 %exponent.0, 1, !taffo.info !35, !taffo.constinfo !12
  br label %while.cond, !llvm.loop !42

while.end:                                        ; preds = %while.cond
  %sub = fsub float %x.addr.0, 1.000000e+00, !taffo.info !43, !taffo.constinfo !45
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %i.0 = phi i32 [ 0, %while.end ], [ %inc7, %for.inc ], !taffo.info !46
  %power_of_two.0 = phi float [ 5.000000e-01, %while.end ], [ %mul, %for.inc ], !taffo.info !48
  %fraction.0 = phi float [ %sub, %while.end ], [ %fraction.1, %for.inc ], !taffo.info !50
  %cmp2 = icmp slt i32 %i.0, 23, !taffo.info !31
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %cmp3 = fcmp oge float %fraction.0, %power_of_two.0, !taffo.info !35
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %for.body
  %sub5 = fsub float %fraction.0, %power_of_two.0, !taffo.info !52
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %for.body
  %fraction.1 = phi float [ %sub5, %if.then4 ], [ %fraction.0, %for.body ], !taffo.info !50
  %mul = fmul float %power_of_two.0, 5.000000e-01, !taffo.info !54, !taffo.constinfo !56
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %inc7 = add nsw i32 %i.0, 1, !taffo.info !59, !taffo.constinfo !12
  br label %for.cond, !llvm.loop !61

for.end:                                          ; preds = %for.cond
  %conv = sitofp i32 %exponent.0 to float, !taffo.info !31
  %add8 = fadd float %conv, undef, !taffo.info !62
  br label %return

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi float [ 0.000000e+00, %if.then ], [ %add8, %for.end ], !taffo.info !62
  ret float %retval.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z14calcFftIndicesPi(i32* noundef %indices) #5 !taffo.initweight !14 !taffo.funinfo !15 !taffo.equivalentChild !64 {
entry:
  %call = call noundef float @_Z11manual_log2f(float noundef 1.024000e+03), !taffo.constinfo !65
  %conv = fptosi float %call to i32
  %arrayidx = getelementptr inbounds i32, i32* %indices, i64 0
  store i32 0, i32* %arrayidx, align 4, !taffo.constinfo !12
  %sub = sub nsw i32 %conv, 1, !taffo.constinfo !12
  %shl = shl i32 1, %sub, !taffo.constinfo !12
  %arrayidx1 = getelementptr inbounds i32, i32* %indices, i64 1
  store i32 %shl, i32* %arrayidx1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc17, %for.inc16 ]
  %cmp = icmp slt i32 %i.0, %conv
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %shl2 = shl i32 1, %i.0, !taffo.constinfo !12
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ %shl2, %for.body ], [ %inc, %for.inc ]
  %add = add nsw i32 %i.0, 1, !taffo.constinfo !12
  %shl4 = shl i32 1, %add, !taffo.constinfo !12
  %cmp5 = icmp slt i32 %j.0, %shl4
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond3
  %shl7 = shl i32 1, %i.0, !taffo.constinfo !12
  %sub8 = sub nsw i32 %j.0, %shl7
  %idxprom = sext i32 %sub8 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %indices, i64 %idxprom
  %0 = load i32, i32* %arrayidx9, align 4
  %add10 = add nsw i32 %i.0, 1, !taffo.constinfo !12
  %sub11 = sub nsw i32 %conv, %add10
  %shl12 = shl i32 1, %sub11, !taffo.constinfo !12
  %add13 = add nsw i32 %0, %shl12
  %idxprom14 = sext i32 %j.0 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %indices, i64 %idxprom14
  store i32 %add13, i32* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !12
  br label %for.cond3, !llvm.loop !66

for.end:                                          ; preds = %for.cond3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %i.0, 1, !taffo.constinfo !12
  br label %for.cond, !llvm.loop !67

for.end18:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z30radix2DitCooleyTykeyFftWrapperPiPfS0_S0_S0_(i32* noundef %indices, float* noundef %x_real, float* noundef %x_imag, float* noundef %f_real, float* noundef %f_imag) #7 !taffo.initweight !68 !taffo.funinfo !69 !taffo.start !70 {
entry:
  %x = alloca [1024 x %struct.Complex], align 16, !taffo.structinfo !71, !taffo.initweight !73, !taffo.target !74
  %f = alloca [1024 x %struct.Complex], align 16, !taffo.structinfo !71, !taffo.initweight !73, !taffo.target !75
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !taffo.info !76
  %cmp = icmp slt i32 %i.0, 1024, !taffo.info !35
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !taffo.info !78
  %arrayidx = getelementptr inbounds float, float* %x_real, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %idxprom3 = sext i32 %i.0 to i64, !taffo.info !78
  %arrayidx4.flt = getelementptr inbounds [1024 x %struct.Complex], [1024 x %struct.Complex]* %x, i64 0, i64 %idxprom3, !taffo.structinfo !71, !taffo.initweight !81, !taffo.target !74
  %real = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx4.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !82, !taffo.target !74
  store float %0, float* %real, align 8, !taffo.info !72, !taffo.target !74
  %idxprom5 = sext i32 %i.0 to i64, !taffo.info !78
  %arrayidx6 = getelementptr inbounds float, float* %x_imag, i64 %idxprom5
  %1 = load float, float* %arrayidx6, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %idxprom7 = sext i32 %i.0 to i64, !taffo.info !78
  %arrayidx8.flt = getelementptr inbounds [1024 x %struct.Complex], [1024 x %struct.Complex]* %x, i64 0, i64 %idxprom7, !taffo.structinfo !71, !taffo.initweight !81, !taffo.target !74
  %imag = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx8.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !82, !taffo.target !74
  store float %1, float* %imag, align 4, !taffo.info !72, !taffo.target !74
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !taffo.info !83, !taffo.constinfo !12
  br label %for.cond, !llvm.loop !85

for.end:                                          ; preds = %for.cond
  %arraydecay.flt = getelementptr inbounds [1024 x %struct.Complex], [1024 x %struct.Complex]* %x, i64 0, i64 0, !taffo.structinfo !71, !taffo.initweight !81, !taffo.target !74
  %arraydecay9.flt = getelementptr inbounds [1024 x %struct.Complex], [1024 x %struct.Complex]* %f, i64 0, i64 0, !taffo.structinfo !71, !taffo.initweight !81, !taffo.target !75
  call void @_Z23radix2DitCooleyTykeyFftPiP7ComplexS1_.1_fixp(i32* %indices, %struct.Complex* %arraydecay.flt, %struct.Complex* %arraydecay9.flt), !taffo.info !72, !taffo.constinfo !13, !taffo.target !74
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc24, %for.end
  %i10.0 = phi i32 [ 0, %for.end ], [ %inc25, %for.inc24 ], !taffo.info !76
  %cmp12 = icmp slt i32 %i10.0, 1024, !taffo.info !35
  br i1 %cmp12, label %for.body13, label %for.end26

for.body13:                                       ; preds = %for.cond11
  %idxprom14 = sext i32 %i10.0 to i64, !taffo.info !78
  %arrayidx15.flt = getelementptr inbounds [1024 x %struct.Complex], [1024 x %struct.Complex]* %f, i64 0, i64 %idxprom14, !taffo.structinfo !71, !taffo.initweight !81, !taffo.target !75
  %real16 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx15.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !82, !taffo.target !75
  %2 = load float, float* %real16, align 8, !taffo.info !72, !taffo.initweight !86, !taffo.target !75
  %idxprom17 = sext i32 %i10.0 to i64, !taffo.info !78
  %arrayidx18 = getelementptr inbounds float, float* %f_real, i64 %idxprom17
  store float %2, float* %arrayidx18, align 4, !taffo.info !72, !taffo.target !75
  %idxprom19 = sext i32 %i10.0 to i64, !taffo.info !78
  %arrayidx20.flt = getelementptr inbounds [1024 x %struct.Complex], [1024 x %struct.Complex]* %f, i64 0, i64 %idxprom19, !taffo.structinfo !71, !taffo.initweight !81, !taffo.target !75
  %imag21 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx20.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !82, !taffo.target !75
  %3 = load float, float* %imag21, align 4, !taffo.info !72, !taffo.initweight !86, !taffo.target !75
  %idxprom22 = sext i32 %i10.0 to i64, !taffo.info !78
  %arrayidx23 = getelementptr inbounds float, float* %f_imag, i64 %idxprom22
  store float %3, float* %arrayidx23, align 4, !taffo.info !72, !taffo.target !75
  br label %for.inc24

for.inc24:                                        ; preds = %for.body13
  %inc25 = add nsw i32 %i10.0, 1, !taffo.info !83, !taffo.constinfo !12
  br label %for.cond11, !llvm.loop !87

for.end26:                                        ; preds = %for.cond11
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define dso_local void @_Z23radix2DitCooleyTykeyFftPiP7ComplexS1_(i32* noundef %indices, %struct.Complex* noundef %x, %struct.Complex* noundef %f) #7 !taffo.initweight !16 !taffo.funinfo !17 !taffo.equivalentChild !88 {
entry:
  %fftSin = alloca float, align 4, !taffo.info !72, !taffo.initweight !73
  %fftCos = alloca float, align 4, !taffo.info !72, !taffo.initweight !73
  %0 = alloca { i32, i32 }, align 4
  call void @_Z14calcFftIndicesPi.2(i32* noundef %indices), !taffo.info !89, !taffo.initweight !82, !taffo.constinfo !12, !taffo.originalCall !91
  %add = add nsw i32 0, 1, !taffo.constinfo !12
  %shl = shl i32 1, %add, !taffo.constinfo !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc94, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc95, %for.inc94 ]
  %N.0 = phi i32 [ %shl, %entry ], [ %shl97, %for.inc94 ]
  %cmp = icmp sle i32 %N.0, 1024
  br i1 %cmp, label %for.body, label %for.end98

for.body:                                         ; preds = %for.cond
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc91, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %add92, %for.inc91 ]
  %cmp10 = icmp slt i32 %j.0, 1024
  br i1 %cmp10, label %for.body11, label %for.end93

for.body11:                                       ; preds = %for.cond9
  %shr = ashr i32 %N.0, 1, !taffo.constinfo !12
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body11
  %k.0 = phi i32 [ 0, %for.body11 ], [ %inc, %for.inc ], !taffo.info !89, !taffo.initweight !73
  %cmp13 = icmp slt i32 %k.0, %shr, !taffo.info !89, !taffo.initweight !82
  br i1 %cmp13, label %for.body14, label %for.end, !taffo.info !89, !taffo.initweight !86

for.body14:                                       ; preds = %for.cond12
  %conv = sitofp i32 %k.0 to float, !taffo.info !89, !taffo.initweight !82
  %conv15 = sitofp i32 %N.0 to float
  %div = fdiv float %conv, %conv15, !taffo.info !89, !taffo.initweight !86
  %add16 = add nsw i32 %j.0, %k.0, !taffo.info !89, !taffo.initweight !82
  %add17 = add nsw i32 %j.0, %shr
  %add18 = add nsw i32 %add17, %k.0, !taffo.info !89, !taffo.initweight !82
  call void @_Z9fftSinCosfPfS_.3_fixp(float %div, float* %fftSin, float* %fftCos), !taffo.info !72, !taffo.constinfo !13
  %idxprom = sext i32 %add16 to i64
  %arrayidx = getelementptr inbounds i32, i32* %indices, i64 %idxprom, !taffo.info !89, !taffo.initweight !82
  %1 = load i32, i32* %arrayidx, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom19 = sext i32 %1 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx20.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom19, !taffo.structinfo !71, !taffo.initweight !82, !taffo.target !74
  %2 = bitcast { i32, i32 }* %0 to %struct.Complex*
  %3 = bitcast %struct.Complex* %2 to i8*, !taffo.info !92, !taffo.initweight !81
  %4 = bitcast %struct.Complex* %arrayidx20.flt to i8*, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 %4, i64 8, i1 false), !taffo.info !72, !taffo.initweight !82, !taffo.constinfo !21
  %real.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0, !taffo.info !93
  %s15_17fixp3 = load i32, i32* %real.s15_17fixp, align 4, !taffo.info !93
  %idxprom21 = sext i32 %add18 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %indices, i64 %idxprom21, !taffo.info !89, !taffo.initweight !82
  %5 = load i32, i32* %arrayidx22, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom23 = sext i32 %5 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx24.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom23, !taffo.structinfo !71, !taffo.initweight !82, !taffo.target !74
  %real25 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx24.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %6 = load float, float* %real25, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %7 = load float, float* %fftCos, align 4, !taffo.info !72, !taffo.initweight !81
  %idxprom26 = sext i32 %add16 to i64
  %arrayidx27 = getelementptr inbounds i32, i32* %indices, i64 %idxprom26, !taffo.info !89, !taffo.initweight !82
  %8 = load i32, i32* %arrayidx27, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom28 = sext i32 %8 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx29.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom28, !taffo.structinfo !71, !taffo.initweight !82, !taffo.target !74
  %imag = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx29.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %9 = load float, float* %imag, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %10 = load float, float* %fftSin, align 4, !taffo.info !72, !taffo.initweight !81
  %mul30 = fmul float %9, %10, !taffo.info !72, !taffo.initweight !82
  %neg = fneg float %mul30, !taffo.info !72, !taffo.initweight !86
  %11 = call float @llvm.fmuladd.f32(float %6, float %7, float %neg), !taffo.info !72, !taffo.initweight !82, !taffo.constinfo !13
  %12 = fmul float 1.310720e+05, %11, !taffo.info !72
  %13 = fptosi float %12 to i32, !taffo.info !72
  %add31.s15_17fixp = add i32 %s15_17fixp3, %13, !taffo.info !96
  %14 = sitofp i32 %add31.s15_17fixp to float, !taffo.info !96
  %15 = fdiv float %14, 1.310720e+05, !taffo.info !96
  %idxprom32 = sext i32 %add16 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %indices, i64 %idxprom32, !taffo.info !89, !taffo.initweight !82
  %16 = load i32, i32* %arrayidx33, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom34 = sext i32 %16 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx35.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom34, !taffo.structinfo !71, !taffo.initweight !82, !taffo.target !74
  %real36 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx35.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  store float %15, float* %real36, align 4, !taffo.info !72, !taffo.target !74
  %imag37.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1, !taffo.info !93
  %s15_17fixp2 = load i32, i32* %imag37.s15_17fixp, align 4, !taffo.info !93
  %idxprom38 = sext i32 %add16 to i64
  %arrayidx39 = getelementptr inbounds i32, i32* %indices, i64 %idxprom38, !taffo.info !89, !taffo.initweight !82
  %17 = load i32, i32* %arrayidx39, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom40 = sext i32 %17 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx41.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom40, !taffo.structinfo !71, !taffo.initweight !82, !taffo.target !74
  %imag42 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx41.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %18 = load float, float* %imag42, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %19 = load float, float* %fftCos, align 4, !taffo.info !72, !taffo.initweight !81
  %idxprom43 = sext i32 %add18 to i64
  %arrayidx44 = getelementptr inbounds i32, i32* %indices, i64 %idxprom43, !taffo.info !89, !taffo.initweight !82
  %20 = load i32, i32* %arrayidx44, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom45 = sext i32 %20 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx46.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom45, !taffo.structinfo !71, !taffo.initweight !82, !taffo.target !74
  %real47 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx46.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %21 = load float, float* %real47, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %22 = load float, float* %fftSin, align 4, !taffo.info !72, !taffo.initweight !81
  %mul48 = fmul float %21, %22, !taffo.info !72, !taffo.initweight !82
  %23 = call float @llvm.fmuladd.f32(float %18, float %19, float %mul48), !taffo.info !72, !taffo.initweight !82, !taffo.constinfo !13
  %24 = fmul float 1.310720e+05, %23, !taffo.info !72
  %25 = fptosi float %24 to i32, !taffo.info !72
  %add49.s15_17fixp = add i32 %s15_17fixp2, %25, !taffo.info !93
  %26 = sitofp i32 %add49.s15_17fixp to float, !taffo.info !93
  %27 = fdiv float %26, 1.310720e+05, !taffo.info !93
  %idxprom50 = sext i32 %add16 to i64
  %arrayidx51 = getelementptr inbounds i32, i32* %indices, i64 %idxprom50, !taffo.info !89, !taffo.initweight !82
  %28 = load i32, i32* %arrayidx51, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom52 = sext i32 %28 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx53.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom52, !taffo.structinfo !71, !taffo.initweight !82, !taffo.target !74
  %imag54 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx53.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  store float %27, float* %imag54, align 4, !taffo.info !72, !taffo.target !74
  %real55.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0, !taffo.info !93
  %s15_17fixp1 = load i32, i32* %real55.s15_17fixp, align 4, !taffo.info !93
  %idxprom56 = sext i32 %add18 to i64
  %arrayidx57 = getelementptr inbounds i32, i32* %indices, i64 %idxprom56, !taffo.info !89, !taffo.initweight !82
  %29 = load i32, i32* %arrayidx57, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom58 = sext i32 %29 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx59.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom58, !taffo.structinfo !71, !taffo.initweight !82, !taffo.target !74
  %real60 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx59.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %30 = load float, float* %real60, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %31 = load float, float* %fftCos, align 4, !taffo.info !72, !taffo.initweight !81
  %idxprom61 = sext i32 %add16 to i64
  %arrayidx62 = getelementptr inbounds i32, i32* %indices, i64 %idxprom61, !taffo.info !89, !taffo.initweight !82
  %32 = load i32, i32* %arrayidx62, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom63 = sext i32 %32 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx64.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom63, !taffo.structinfo !71, !taffo.initweight !82, !taffo.target !74
  %imag65 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx64.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %33 = load float, float* %imag65, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %34 = load float, float* %fftSin, align 4, !taffo.info !72, !taffo.initweight !81
  %mul66 = fmul float %33, %34, !taffo.info !72, !taffo.initweight !82
  %neg67 = fneg float %mul66, !taffo.info !72, !taffo.initweight !86
  %35 = call float @llvm.fmuladd.f32(float %30, float %31, float %neg67), !taffo.info !72, !taffo.initweight !82, !taffo.constinfo !13
  %36 = fmul float 1.310720e+05, %35, !taffo.info !72
  %37 = fptosi float %36 to i32, !taffo.info !72
  %sub.s15_17fixp = sub i32 %s15_17fixp1, %37, !taffo.info !96
  %38 = sitofp i32 %sub.s15_17fixp to float, !taffo.info !96
  %39 = fdiv float %38, 1.310720e+05, !taffo.info !96
  %idxprom68 = sext i32 %add18 to i64
  %arrayidx69 = getelementptr inbounds i32, i32* %indices, i64 %idxprom68, !taffo.info !89, !taffo.initweight !82
  %40 = load i32, i32* %arrayidx69, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom70 = sext i32 %40 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx71.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom70, !taffo.structinfo !71, !taffo.initweight !82, !taffo.target !74
  %real72 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx71.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  store float %39, float* %real72, align 4, !taffo.info !72, !taffo.target !74
  %imag73.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1, !taffo.info !93
  %s15_17fixp = load i32, i32* %imag73.s15_17fixp, align 4, !taffo.info !93
  %idxprom74 = sext i32 %add16 to i64
  %arrayidx75 = getelementptr inbounds i32, i32* %indices, i64 %idxprom74, !taffo.info !89, !taffo.initweight !82
  %41 = load i32, i32* %arrayidx75, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom76 = sext i32 %41 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx77.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom76, !taffo.structinfo !71, !taffo.initweight !82, !taffo.target !74
  %imag78 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx77.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %42 = load float, float* %imag78, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %43 = load float, float* %fftCos, align 4, !taffo.info !72, !taffo.initweight !81
  %idxprom79 = sext i32 %add18 to i64
  %arrayidx80 = getelementptr inbounds i32, i32* %indices, i64 %idxprom79, !taffo.info !89, !taffo.initweight !82
  %44 = load i32, i32* %arrayidx80, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom81 = sext i32 %44 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx82.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom81, !taffo.structinfo !71, !taffo.initweight !82, !taffo.target !74
  %real83 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx82.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %45 = load float, float* %real83, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %46 = load float, float* %fftSin, align 4, !taffo.info !72, !taffo.initweight !81
  %mul84 = fmul float %45, %46, !taffo.info !72, !taffo.initweight !82
  %47 = call float @llvm.fmuladd.f32(float %42, float %43, float %mul84), !taffo.info !72, !taffo.initweight !82, !taffo.constinfo !13
  %48 = fmul float 1.310720e+05, %47, !taffo.info !72
  %49 = fptosi float %48 to i32, !taffo.info !72
  %sub85.s15_17fixp = sub i32 %s15_17fixp, %49, !taffo.info !93
  %50 = sitofp i32 %sub85.s15_17fixp to float, !taffo.info !93
  %51 = fdiv float %50, 1.310720e+05, !taffo.info !93
  %idxprom86 = sext i32 %add18 to i64
  %arrayidx87 = getelementptr inbounds i32, i32* %indices, i64 %idxprom86, !taffo.info !89, !taffo.initweight !82
  %52 = load i32, i32* %arrayidx87, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom88 = sext i32 %52 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx89.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom88, !taffo.structinfo !71, !taffo.initweight !82, !taffo.target !74
  %imag90 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx89.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  store float %51, float* %imag90, align 4, !taffo.info !72, !taffo.target !74
  br label %for.inc

for.inc:                                          ; preds = %for.body14
  %inc = add nsw i32 %k.0, 1, !taffo.info !89, !taffo.initweight !82, !taffo.constinfo !12
  br label %for.cond12, !llvm.loop !97

for.end:                                          ; preds = %for.cond12
  br label %for.inc91

for.inc91:                                        ; preds = %for.end
  %add92 = add nsw i32 %j.0, %N.0
  br label %for.cond9, !llvm.loop !98

for.end93:                                        ; preds = %for.cond9
  br label %for.inc94

for.inc94:                                        ; preds = %for.end93
  %inc95 = add nsw i32 %i.0, 1, !taffo.constinfo !12
  %add96 = add nsw i32 %inc95, 1, !taffo.constinfo !12
  %shl97 = shl i32 1, %add96, !taffo.constinfo !12
  br label %for.cond, !llvm.loop !99

for.end98:                                        ; preds = %for.cond
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc109, %for.end98
  %i99.0 = phi i32 [ 0, %for.end98 ], [ %inc110, %for.inc109 ]
  %cmp101 = icmp slt i32 %i99.0, 1024
  br i1 %cmp101, label %for.body102, label %for.end111

for.body102:                                      ; preds = %for.cond100
  %idxprom103 = sext i32 %i99.0 to i64
  %arrayidx104 = getelementptr inbounds i32, i32* %indices, i64 %idxprom103, !taffo.info !89, !taffo.initweight !82
  %53 = load i32, i32* %arrayidx104, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom105 = sext i32 %53 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx106.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom105, !taffo.structinfo !71, !taffo.initweight !82, !taffo.target !74
  %idxprom107 = sext i32 %i99.0 to i64
  %arrayidx108.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %f, i64 %idxprom107, !taffo.structinfo !71, !taffo.initweight !82, !taffo.target !75
  %54 = bitcast %struct.Complex* %arrayidx108.flt to i8*, !taffo.info !72, !taffo.initweight !86, !taffo.target !75
  %55 = bitcast %struct.Complex* %arrayidx106.flt to i8*, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 8, i1 false), !taffo.info !72, !taffo.initweight !80, !taffo.constinfo !21, !taffo.target !74
  br label %for.inc109

for.inc109:                                       ; preds = %for.body102
  %inc110 = add nsw i32 %i99.0, 1, !taffo.constinfo !12
  br label %for.cond100, !llvm.loop !100

for.end111:                                       ; preds = %for.cond100
  ret void
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare !taffo.initweight !101 !taffo.funinfo !102 void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare !taffo.initweight !16 !taffo.funinfo !17 float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local noundef i32 @_Z13compare_floatff(float noundef %f1, float noundef %f2) #5 !taffo.initweight !103 !taffo.funinfo !104 !taffo.equivalentChild !108 {
entry:
  %0 = fmul float 0x41D0000000000000, %f2, !taffo.info !105
  %1 = fptosi float %0 to i32, !taffo.info !105
  %2 = fmul float 0x41D0000000000000, %f2, !taffo.info !105
  %3 = fptosi float %2 to i32, !taffo.info !105
  %4 = fmul float 0x41D0000000000000, %f1, !taffo.info !105
  %5 = fptosi float %4 to i32, !taffo.info !105
  %6 = fmul float 0x41D0000000000000, %f1, !taffo.info !105
  %7 = fptosi float %6 to i32, !taffo.info !105
  %8 = lshr i32 21, 1
  %sub.s2_30fixp = sub i32 %7, %8, !taffo.info !105, !taffo.constinfo !109
  %9 = icmp slt i32 %sub.s2_30fixp, %3, !taffo.info !112
  br i1 %9, label %if.then, label %if.else, !taffo.info !113, !taffo.initweight !86

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %10 = lshr i32 21, 1
  %add.s2_30fixp = add i32 %5, %10, !taffo.info !105, !taffo.constinfo !109
  %11 = icmp sgt i32 %add.s2_30fixp, %1, !taffo.info !112
  br i1 %11, label %if.then5, label %if.else6, !taffo.info !113, !taffo.initweight !86

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z10manual_cosPfS_(float* noundef %x_f, float* noundef %res) #5 !taffo.initweight !18 !taffo.funinfo !19 !taffo.equivalentChild !114 !taffo.start !70 {
entry:
  %.flt = load float, float* %x_f, align 4, !taffo.info !115, !taffo.initweight !82, !taffo.target !74
  %0 = fmul float 0x41B0000000000000, %.flt, !taffo.info !115, !taffo.target !74
  %.flt.fallback.s4_28fixp = fptosi float %0 to i32, !taffo.info !115, !taffo.target !74
  %1 = lshr i32 0, 4
  %2 = icmp slt i32 %.flt.fallback.s4_28fixp, %1, !taffo.info !118, !taffo.target !74
  %3 = ashr i32 %.flt.fallback.s4_28fixp, 1, !taffo.info !115, !taffo.target !74
  br i1 %2, label %if.then, label %if.end, !taffo.info !120, !taffo.initweight !86, !taffo.target !74

if.then:                                          ; preds = %entry
  %fneg.s4_28fixp = sub i32 0, %.flt.fallback.s4_28fixp, !taffo.info !121, !taffo.target !74
  %4 = ashr i32 %fneg.s4_28fixp, 1, !taffo.info !121, !taffo.target !74
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %x.0.s5_27fixp = phi i32 [ %4, %if.then ], [ %3, %entry ], !taffo.info !123
  %5 = call i32 @_Z13compare_floatff.6_fixp(i32 %x.0.s5_27fixp, float 0x3FF921FB60000000), !taffo.info !126, !taffo.constinfo !127, !taffo.target !74
  %cmp2.flt = icmp sle i32 0, %5, !taffo.info !126, !taffo.initweight !86, !taffo.target !74
  %6 = ashr i32 %x.0.s5_27fixp, 2, !taffo.info !123
  br i1 %cmp2.flt, label %if.then3, label %if.end7, !taffo.info !120, !taffo.initweight !80, !taffo.target !74

if.then3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then3
  %x.1.s5_27fixp = phi i32 [ %x.0.s5_27fixp, %if.then3 ], [ %sub.s5_27fixp, %do.cond ], !taffo.info !123
  %7 = lshr i32 1686629705, 3
  %sub.s5_27fixp = sub i32 %x.1.s5_27fixp, %7, !taffo.info !130, !taffo.constinfo !132, !taffo.target !74
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %8 = call i32 @_Z13compare_floatff.6_fixp(i32 %sub.s5_27fixp, float 0x3FF921FB60000000), !taffo.info !135, !taffo.constinfo !127, !taffo.target !74
  %cmp6.flt = icmp sle i32 0, %8, !taffo.info !135, !taffo.initweight !86, !taffo.target !74
  br i1 %cmp6.flt, label %do.body, label %do.end, !llvm.loop !136, !taffo.info !120, !taffo.initweight !80, !taffo.target !74

do.end:                                           ; preds = %do.cond
  %9 = ashr i32 %sub.s5_27fixp, 2, !taffo.info !130, !taffo.constinfo !132, !taffo.target !74
  br label %if.end7

if.end7:                                          ; preds = %if.end, %do.end
  %x.2.s7_25fixp = phi i32 [ %9, %do.end ], [ %6, %if.end ], !taffo.info !137
  %10 = call i32 @_Z13compare_floatff.4_fixp(i32 %x.2.s7_25fixp, float 0x400921FB60000000), !taffo.info !135, !taffo.constinfo !140, !taffo.target !74
  %cmp9.flt = icmp sle i32 0, %10, !taffo.info !135, !taffo.initweight !86, !taffo.target !74
  br i1 %cmp9.flt, label %land.lhs.true, label %if.end41, !taffo.info !120, !taffo.initweight !80, !taffo.target !74

land.lhs.true:                                    ; preds = %if.end7
  %11 = call i32 @_Z13compare_floatff.4_fixp(i32 %x.2.s7_25fixp, float 0x3FF921FB60000000), !taffo.info !135, !taffo.constinfo !127, !taffo.target !74
  %cmp11.flt = icmp eq i32 -1, %11, !taffo.info !135, !taffo.initweight !86, !taffo.target !74
  br i1 %cmp11.flt, label %if.then12, label %if.end41, !taffo.info !120, !taffo.initweight !80, !taffo.target !74

if.then12:                                        ; preds = %land.lhs.true
  %conv13.s5_27fixp = shl i32 %x.2.s7_25fixp, 2, !taffo.info !143, !taffo.target !74
  %12 = lshr i32 1686629711, 2
  %sub14.s5_27fixp = sub i32 %conv13.s5_27fixp, %12, !taffo.info !144, !taffo.constinfo !146, !taffo.target !74
  %13 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %14 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %15 = mul i64 %13, %14, !taffo.info !149, !taffo.target !74
  %16 = lshr i64 %15, 29, !taffo.info !149, !taffo.target !74
  %mul.u7_25fixp = trunc i64 %16 to i32, !taffo.info !152, !taffo.target !74
  %div.s7_25fixp = sdiv i32 %mul.u7_25fixp, 2, !taffo.info !154, !taffo.constinfo !39, !taffo.target !74
  %17 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %18 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %19 = mul i64 %17, %18, !taffo.info !149, !taffo.target !74
  %20 = lshr i64 %19, 29, !taffo.info !149, !taffo.target !74
  %mul16.u7_25fixp = trunc i64 %20 to i32, !taffo.info !152, !taffo.target !74
  %21 = zext i32 %mul16.u7_25fixp to i64, !taffo.info !152, !taffo.target !74
  %22 = shl i64 %21, 2, !taffo.info !152, !taffo.target !74
  %23 = zext i32 12 to i64
  %24 = sdiv i64 %22, %23, !taffo.info !156, !taffo.constinfo !159, !taffo.target !74
  %div17.s5_27fixp = trunc i64 %24 to i32, !taffo.info !162, !taffo.target !74
  %25 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %26 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %27 = mul i64 %25, %26, !taffo.info !149, !taffo.target !74
  %28 = lshr i64 %27, 29, !taffo.info !149, !taffo.target !74
  %mul18.u7_25fixp = trunc i64 %28 to i32, !taffo.info !152, !taffo.target !74
  %29 = zext i32 %mul18.u7_25fixp to i64, !taffo.info !152, !taffo.target !74
  %30 = shl i64 %29, 3, !taffo.info !152, !taffo.target !74
  %31 = zext i32 30 to i64
  %32 = sdiv i64 %30, %31, !taffo.info !163, !taffo.constinfo !166, !taffo.target !74
  %div19.s4_28fixp = trunc i64 %32 to i32, !taffo.info !169, !taffo.target !74
  %33 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %34 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %35 = mul i64 %33, %34, !taffo.info !149, !taffo.target !74
  %36 = lshr i64 %35, 29, !taffo.info !149, !taffo.target !74
  %mul20.u7_25fixp = trunc i64 %36 to i32, !taffo.info !152, !taffo.target !74
  %37 = zext i32 %mul20.u7_25fixp to i64, !taffo.info !152, !taffo.target !74
  %38 = shl i64 %37, 4, !taffo.info !152, !taffo.target !74
  %39 = zext i32 56 to i64
  %40 = sdiv i64 %38, %39, !taffo.info !170, !taffo.constinfo !173, !taffo.target !74
  %div21.s3_29fixp = trunc i64 %40 to i32, !taffo.info !176, !taffo.target !74
  %41 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %42 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %43 = mul i64 %41, %42, !taffo.info !149, !taffo.target !74
  %44 = lshr i64 %43, 29, !taffo.info !149, !taffo.target !74
  %mul22.u7_25fixp = trunc i64 %44 to i32, !taffo.info !152, !taffo.target !74
  %45 = zext i32 %mul22.u7_25fixp to i64, !taffo.info !152, !taffo.target !74
  %46 = shl i64 %45, 4, !taffo.info !152, !taffo.target !74
  %47 = zext i32 90 to i64
  %48 = sdiv i64 %46, %47, !taffo.info !178, !taffo.constinfo !180, !taffo.target !74
  %div23.s3_29fixp = trunc i64 %48 to i32, !taffo.info !183, !taffo.target !74
  %49 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %50 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %51 = mul i64 %49, %50, !taffo.info !149, !taffo.target !74
  %52 = lshr i64 %51, 29, !taffo.info !149, !taffo.target !74
  %mul24.u7_25fixp = trunc i64 %52 to i32, !taffo.info !152, !taffo.target !74
  %53 = zext i32 %mul24.u7_25fixp to i64, !taffo.info !152, !taffo.target !74
  %54 = shl i64 %53, 5, !taffo.info !152, !taffo.target !74
  %55 = zext i32 132 to i64
  %56 = sdiv i64 %54, %55, !taffo.info !184, !taffo.constinfo !187, !taffo.target !74
  %div25.s2_30fixp = trunc i64 %56 to i32, !taffo.info !190, !taffo.target !74
  %57 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %58 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %59 = mul i64 %57, %58, !taffo.info !149, !taffo.target !74
  %60 = lshr i64 %59, 29, !taffo.info !149, !taffo.target !74
  %mul26.u7_25fixp = trunc i64 %60 to i32, !taffo.info !152, !taffo.target !74
  %61 = zext i32 %mul26.u7_25fixp to i64, !taffo.info !152, !taffo.target !74
  %62 = shl i64 %61, 6, !taffo.info !152, !taffo.target !74
  %63 = zext i32 182 to i64
  %64 = udiv i64 %62, %63, !taffo.info !191, !taffo.constinfo !194, !taffo.target !74
  %div27.u1_31fixp = trunc i64 %64 to i32, !taffo.info !197, !taffo.target !74
  %sub28.u1_31fixp = sub i32 -2147483648, %div27.u1_31fixp, !taffo.info !199, !taffo.constinfo !201, !taffo.target !74
  %neg.s2_30fixp = sub i32 0, %div25.s2_30fixp, !taffo.info !202, !taffo.target !74
  %65 = lshr i32 -2147483648, 1
  %66 = sext i32 %neg.s2_30fixp to i64, !taffo.info !202, !taffo.target !74
  %67 = zext i32 %sub28.u1_31fixp to i64, !taffo.info !199, !taffo.target !74
  %68 = mul i64 %66, %67, !taffo.info !204, !taffo.target !74
  %69 = ashr i64 %68, 31
  %70 = trunc i64 %69 to i32
  %s2_30fixp6 = add i32 %70, %65, !taffo.info !207, !taffo.target !74
  %neg31.s3_29fixp = sub i32 0, %div23.s3_29fixp, !taffo.info !208, !taffo.target !74
  %71 = lshr i32 -2147483648, 2
  %72 = sext i32 %neg31.s3_29fixp to i64, !taffo.info !208, !taffo.target !74
  %73 = sext i32 %s2_30fixp6 to i64, !taffo.info !207, !taffo.target !74
  %74 = mul i64 %72, %73, !taffo.info !210, !taffo.target !74
  %75 = ashr i64 %74, 30
  %76 = trunc i64 %75 to i32
  %s3_29fixp8 = add i32 %76, %71, !taffo.info !213, !taffo.target !74
  %neg33.s3_29fixp = sub i32 0, %div21.s3_29fixp, !taffo.info !214, !taffo.target !74
  %77 = lshr i32 -2147483648, 3
  %78 = sext i32 %neg33.s3_29fixp to i64, !taffo.info !214, !taffo.target !74
  %79 = sext i32 %s3_29fixp8 to i64, !taffo.info !213, !taffo.target !74
  %80 = mul i64 %78, %79, !taffo.info !216, !taffo.target !74
  %81 = ashr i64 %80, 30
  %82 = trunc i64 %81 to i32
  %s4_28fixp9 = add i32 %82, %77, !taffo.info !219, !taffo.target !74
  %neg35.s4_28fixp = sub i32 0, %div19.s4_28fixp, !taffo.info !220, !taffo.target !74
  %83 = lshr i32 -2147483648, 3
  %84 = sext i32 %neg35.s4_28fixp to i64, !taffo.info !220, !taffo.target !74
  %85 = sext i32 %s4_28fixp9 to i64, !taffo.info !219, !taffo.target !74
  %86 = mul i64 %84, %85, !taffo.info !222, !taffo.target !74
  %87 = ashr i64 %86, 28
  %88 = trunc i64 %87 to i32
  %s4_28fixp10 = add i32 %88, %83, !taffo.info !225, !taffo.target !74
  %89 = ashr i32 %div17.s5_27fixp, 2, !taffo.info !162, !taffo.target !74
  %neg37.s7_25fixp = sub i32 0, %89, !taffo.info !226, !taffo.target !74
  %90 = lshr i32 -2147483648, 6
  %91 = sext i32 %neg37.s7_25fixp to i64, !taffo.info !226, !taffo.target !74
  %92 = sext i32 %s4_28fixp10 to i64, !taffo.info !225, !taffo.target !74
  %93 = mul i64 %91, %92, !taffo.info !228, !taffo.target !74
  %94 = ashr i64 %93, 28
  %95 = trunc i64 %94 to i32
  %s7_25fixp = add i32 %95, %90, !taffo.info !231, !taffo.target !74
  %neg39.s7_25fixp = sub i32 0, %div.s7_25fixp, !taffo.info !232, !taffo.target !74
  %96 = lshr i32 -2147483648, 12
  %97 = sext i32 %neg39.s7_25fixp to i64, !taffo.info !232, !taffo.target !74
  %98 = sext i32 %s7_25fixp to i64, !taffo.info !231, !taffo.target !74
  %99 = mul i64 %97, %98, !taffo.info !234, !taffo.target !74
  %100 = ashr i64 %99, 31
  %101 = trunc i64 %100 to i32
  %s13_19fixp = add i32 %101, %96, !taffo.info !237, !taffo.target !74
  %102 = sext i32 -1 to i64
  %103 = sext i32 %s13_19fixp to i64, !taffo.info !237, !taffo.target !74
  %104 = mul i64 %102, %103, !taffo.info !239, !taffo.constinfo !242, !taffo.target !74
  %mul40.s13_19fixp = trunc i64 %104 to i32, !taffo.info !245, !taffo.target !74
  %105 = sitofp i32 %mul40.s13_19fixp to float, !taffo.info !245, !taffo.target !74
  %106 = fdiv float %105, 5.242880e+05, !taffo.info !245, !taffo.target !74
  store float %106, float* %res, align 4, !taffo.info !120, !taffo.target !74
  br label %return

if.end41:                                         ; preds = %if.end7, %land.lhs.true
  %107 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %108 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %109 = mul i64 %107, %108, !taffo.info !246, !taffo.target !74
  %110 = lshr i64 %109, 24, !taffo.info !246, !taffo.target !74
  %mul42.u6_26fixp = trunc i64 %110 to i32, !taffo.info !249, !taffo.target !74
  %div43.s6_26fixp = sdiv i32 %mul42.u6_26fixp, 2, !taffo.info !251, !taffo.constinfo !39, !taffo.target !74
  %111 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %112 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %113 = mul i64 %111, %112, !taffo.info !254, !taffo.target !74
  %114 = ashr i64 %113, 25, !taffo.info !254, !taffo.target !74
  %mul44.s7_25fixp = trunc i64 %114 to i32, !taffo.info !255, !taffo.target !74
  %115 = sext i32 %mul44.s7_25fixp to i64, !taffo.info !255, !taffo.target !74
  %116 = shl i64 %115, 3, !taffo.info !255, !taffo.target !74
  %117 = zext i32 12 to i64
  %118 = sdiv i64 %116, %117, !taffo.info !256, !taffo.constinfo !159, !taffo.target !74
  %div45.s4_28fixp = trunc i64 %118 to i32, !taffo.info !258, !taffo.target !74
  %119 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %120 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %121 = mul i64 %119, %120, !taffo.info !254, !taffo.target !74
  %122 = ashr i64 %121, 25, !taffo.info !254, !taffo.target !74
  %mul46.s7_25fixp = trunc i64 %122 to i32, !taffo.info !255, !taffo.target !74
  %123 = sext i32 %mul46.s7_25fixp to i64, !taffo.info !255, !taffo.target !74
  %124 = shl i64 %123, 4, !taffo.info !255, !taffo.target !74
  %125 = zext i32 30 to i64
  %126 = sdiv i64 %124, %125, !taffo.info !259, !taffo.constinfo !166, !taffo.target !74
  %div47.s3_29fixp = trunc i64 %126 to i32, !taffo.info !261, !taffo.target !74
  %127 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %128 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %129 = mul i64 %127, %128, !taffo.info !254, !taffo.target !74
  %130 = ashr i64 %129, 25, !taffo.info !254, !taffo.target !74
  %mul48.s7_25fixp = trunc i64 %130 to i32, !taffo.info !255, !taffo.target !74
  %131 = sext i32 %mul48.s7_25fixp to i64, !taffo.info !255, !taffo.target !74
  %132 = shl i64 %131, 4, !taffo.info !255, !taffo.target !74
  %133 = zext i32 56 to i64
  %134 = sdiv i64 %132, %133, !taffo.info !262, !taffo.constinfo !173, !taffo.target !74
  %div49.s3_29fixp = trunc i64 %134 to i32, !taffo.info !264, !taffo.target !74
  %135 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %136 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %137 = mul i64 %135, %136, !taffo.info !254, !taffo.target !74
  %138 = ashr i64 %137, 25, !taffo.info !254, !taffo.target !74
  %mul50.s7_25fixp = trunc i64 %138 to i32, !taffo.info !255, !taffo.target !74
  %139 = sext i32 %mul50.s7_25fixp to i64, !taffo.info !255, !taffo.target !74
  %140 = shl i64 %139, 5, !taffo.info !255, !taffo.target !74
  %141 = zext i32 90 to i64
  %142 = sdiv i64 %140, %141, !taffo.info !265, !taffo.constinfo !180, !taffo.target !74
  %div51.s2_30fixp = trunc i64 %142 to i32, !taffo.info !267, !taffo.target !74
  %143 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %144 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %145 = mul i64 %143, %144, !taffo.info !254, !taffo.target !74
  %146 = ashr i64 %145, 25, !taffo.info !254, !taffo.target !74
  %mul52.s7_25fixp = trunc i64 %146 to i32, !taffo.info !255, !taffo.target !74
  %147 = sext i32 %mul52.s7_25fixp to i64, !taffo.info !255, !taffo.target !74
  %148 = shl i64 %147, 5, !taffo.info !255, !taffo.target !74
  %149 = zext i32 132 to i64
  %150 = sdiv i64 %148, %149, !taffo.info !268, !taffo.constinfo !187, !taffo.target !74
  %div53.s2_30fixp = trunc i64 %150 to i32, !taffo.info !270, !taffo.target !74
  %151 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %152 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %153 = mul i64 %151, %152, !taffo.info !254, !taffo.target !74
  %154 = ashr i64 %153, 25, !taffo.info !254, !taffo.target !74
  %mul54.s7_25fixp = trunc i64 %154 to i32, !taffo.info !255, !taffo.target !74
  %155 = sext i32 %mul54.s7_25fixp to i64, !taffo.info !255, !taffo.target !74
  %156 = shl i64 %155, 6, !taffo.info !255, !taffo.target !74
  %157 = zext i32 182 to i64
  %158 = udiv i64 %156, %157, !taffo.info !271, !taffo.constinfo !194, !taffo.target !74
  %div55.u1_31fixp = trunc i64 %158 to i32, !taffo.info !273, !taffo.target !74
  %sub56.u1_31fixp = sub i32 -2147483648, %div55.u1_31fixp, !taffo.info !274, !taffo.constinfo !201, !taffo.target !74
  %neg58.s2_30fixp = sub i32 0, %div53.s2_30fixp, !taffo.info !276, !taffo.target !74
  %159 = lshr i32 -2147483648, 1
  %160 = sext i32 %neg58.s2_30fixp to i64, !taffo.info !276, !taffo.target !74
  %161 = zext i32 %sub56.u1_31fixp to i64, !taffo.info !274, !taffo.target !74
  %162 = mul i64 %160, %161, !taffo.info !278, !taffo.target !74
  %163 = ashr i64 %162, 31
  %164 = trunc i64 %163 to i32
  %s2_30fixp = add i32 %164, %159, !taffo.info !280, !taffo.target !74
  %neg60.s2_30fixp = sub i32 0, %div51.s2_30fixp, !taffo.info !281, !taffo.target !74
  %165 = lshr i32 -2147483648, 1
  %166 = sext i32 %neg60.s2_30fixp to i64, !taffo.info !281, !taffo.target !74
  %167 = sext i32 %s2_30fixp to i64, !taffo.info !280, !taffo.target !74
  %168 = mul i64 %166, %167, !taffo.info !283, !taffo.target !74
  %169 = ashr i64 %168, 30
  %170 = trunc i64 %169 to i32
  %s2_30fixp5 = add i32 %170, %165, !taffo.info !286, !taffo.target !74
  %neg62.s3_29fixp = sub i32 0, %div49.s3_29fixp, !taffo.info !287, !taffo.target !74
  %171 = lshr i32 -2147483648, 2
  %172 = sext i32 %neg62.s3_29fixp to i64, !taffo.info !287, !taffo.target !74
  %173 = sext i32 %s2_30fixp5 to i64, !taffo.info !286, !taffo.target !74
  %174 = mul i64 %172, %173, !taffo.info !289, !taffo.target !74
  %175 = ashr i64 %174, 30
  %176 = trunc i64 %175 to i32
  %s3_29fixp = add i32 %176, %171, !taffo.info !291, !taffo.target !74
  %neg64.s3_29fixp = sub i32 0, %div47.s3_29fixp, !taffo.info !292, !taffo.target !74
  %177 = lshr i32 -2147483648, 3
  %178 = sext i32 %neg64.s3_29fixp to i64, !taffo.info !292, !taffo.target !74
  %179 = sext i32 %s3_29fixp to i64, !taffo.info !291, !taffo.target !74
  %180 = mul i64 %178, %179, !taffo.info !294, !taffo.target !74
  %181 = ashr i64 %180, 30
  %182 = trunc i64 %181 to i32
  %s4_28fixp = add i32 %182, %177, !taffo.info !296, !taffo.target !74
  %neg66.s4_28fixp = sub i32 0, %div45.s4_28fixp, !taffo.info !297, !taffo.target !74
  %183 = lshr i32 -2147483648, 3
  %184 = sext i32 %neg66.s4_28fixp to i64, !taffo.info !297, !taffo.target !74
  %185 = sext i32 %s4_28fixp to i64, !taffo.info !296, !taffo.target !74
  %186 = mul i64 %184, %185, !taffo.info !299, !taffo.target !74
  %187 = ashr i64 %186, 28
  %188 = trunc i64 %187 to i32
  %s4_28fixp7 = add i32 %188, %183, !taffo.info !301, !taffo.target !74
  %neg68.s6_26fixp = sub i32 0, %div43.s6_26fixp, !taffo.info !302, !taffo.target !74
  %189 = lshr i32 -2147483648, 8
  %190 = sext i32 %neg68.s6_26fixp to i64, !taffo.info !302, !taffo.target !74
  %191 = sext i32 %s4_28fixp7 to i64, !taffo.info !301, !taffo.target !74
  %192 = mul i64 %190, %191, !taffo.info !304, !taffo.target !74
  %193 = ashr i64 %192, 31
  %194 = trunc i64 %193 to i32
  %s9_23fixp = add i32 %194, %189, !taffo.info !307, !taffo.target !74
  %195 = sitofp i32 %s9_23fixp to float, !taffo.info !307, !taffo.target !74
  %196 = fdiv float %195, 0x4160000000000000, !taffo.info !307, !taffo.target !74
  store float %196, float* %res, align 4, !taffo.info !120, !taffo.target !74
  br label %return

return:                                           ; preds = %if.end41, %if.then12
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z10manual_sinPfS_(float* noundef %x_f, float* noundef %res) #5 !taffo.initweight !18 !taffo.funinfo !19 !taffo.equivalentChild !309 {
entry:
  %0 = load float, float* %x_f, align 4
  %conv = fpext float %0 to double
  %sub = fsub double %conv, 0x3FF921FB52713C02, !taffo.constinfo !132
  %conv1 = fptrunc double %sub to float
  store float %conv1, float* %x_f, align 4
  call void @_Z10manual_cosPfS_(float* noundef %x_f, float* noundef %res), !taffo.constinfo !310
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define dso_local void @_Z9fftSinCosfPfS_(float noundef %x, float* noundef %s, float* noundef %c) #5 !taffo.initweight !311 !taffo.funinfo !312 !taffo.equivalentChild !313 {
entry:
  %x.addr = alloca float, align 4, !taffo.info !72, !taffo.initweight !73
  store float %x, float* %x.addr, align 4, !taffo.info !72
  call void @_Z10manual_sinPfS_.8_fixp(float* %x.addr, float* %s), !taffo.info !72, !taffo.constinfo !310
  call void @_Z10manual_cosPfS_.9_fixp(float* %x.addr, float* %c), !taffo.info !72, !taffo.constinfo !310
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @_Z14calcFftIndicesPi.2(i32* noundef %indices) #5 !taffo.initweight !82 !taffo.funinfo !314 !taffo.sourceFunction !91 {
entry:
  %call = call noundef float @_Z11manual_log2f(float noundef 1.024000e+03), !taffo.constinfo !65
  %conv = fptosi float %call to i32
  %arrayidx = getelementptr inbounds i32, i32* %indices, i64 0, !taffo.info !89, !taffo.initweight !315
  store i32 0, i32* %arrayidx, align 4, !taffo.info !89, !taffo.initweight !316, !taffo.constinfo !12
  %sub = sub nsw i32 %conv, 1, !taffo.constinfo !12
  %shl = shl i32 1, %sub, !taffo.constinfo !12
  %arrayidx1 = getelementptr inbounds i32, i32* %indices, i64 1, !taffo.info !89, !taffo.initweight !315
  store i32 %shl, i32* %arrayidx1, align 4, !taffo.info !89, !taffo.initweight !316
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc17, %for.inc16 ]
  %cmp = icmp slt i32 %i.0, %conv
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  %shl2 = shl i32 1, %i.0, !taffo.constinfo !12
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ %shl2, %for.body ], [ %inc, %for.inc ]
  %add = add nsw i32 %i.0, 1, !taffo.constinfo !12
  %shl4 = shl i32 1, %add, !taffo.constinfo !12
  %cmp5 = icmp slt i32 %j.0, %shl4
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond3
  %shl7 = shl i32 1, %i.0, !taffo.constinfo !12
  %sub8 = sub nsw i32 %j.0, %shl7
  %idxprom = sext i32 %sub8 to i64
  %arrayidx9 = getelementptr inbounds i32, i32* %indices, i64 %idxprom, !taffo.info !89, !taffo.initweight !315
  %0 = load i32, i32* %arrayidx9, align 4, !taffo.info !89, !taffo.initweight !316
  %add10 = add nsw i32 %i.0, 1, !taffo.constinfo !12
  %sub11 = sub nsw i32 %conv, %add10
  %shl12 = shl i32 1, %sub11, !taffo.constinfo !12
  %add13 = add nsw i32 %0, %shl12, !taffo.info !89, !taffo.initweight !317
  %idxprom14 = sext i32 %j.0 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %indices, i64 %idxprom14, !taffo.info !89, !taffo.initweight !315
  store i32 %add13, i32* %arrayidx15, align 4, !taffo.info !89, !taffo.initweight !316
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !12
  br label %for.cond3, !llvm.loop !318

for.end:                                          ; preds = %for.cond3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %i.0, 1, !taffo.constinfo !12
  br label %for.cond, !llvm.loop !319

for.end18:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @_Z9fftSinCosfPfS_.3_fixp(float noundef %x, float* noundef %s, float* noundef %c) #5 !taffo.initweight !320 !taffo.funinfo !321 !taffo.sourceFunction !322 {
entry:
  %x.addr = alloca float, align 4, !taffo.info !72, !taffo.initweight !73
  store float %x, float* %x.addr, align 4, !taffo.info !72
  call void @_Z10manual_sinPfS_.8_fixp(float* %x.addr, float* %s), !taffo.info !72, !taffo.constinfo !310
  call void @_Z10manual_cosPfS_.9_fixp(float* %x.addr, float* %c), !taffo.info !72, !taffo.constinfo !310
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @_Z10manual_sinPfS_.8_fixp(float* noundef %x_f, float* noundef %res) #5 !taffo.initweight !323 !taffo.funinfo !324 !taffo.equivalentChild !325 !taffo.sourceFunction !326 {
entry:
  %0 = load float, float* %x_f, align 4, !taffo.info !72, !taffo.initweight !80
  %conv = fpext float %0 to double, !taffo.info !72, !taffo.initweight !315
  %sub = fsub double %conv, 0x3FF921FB52713C02, !taffo.info !72, !taffo.initweight !316, !taffo.constinfo !132
  %conv1 = fptrunc double %sub to float, !taffo.info !72, !taffo.initweight !317
  store float %conv1, float* %x_f, align 4, !taffo.info !72
  call void @_Z10manual_cosPfS_.9_fixp(float* %x_f, float* %res), !taffo.info !72, !taffo.constinfo !310
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @_Z10manual_cosPfS_.9_fixp(float* noundef %x_f, float* noundef %res) #5 !taffo.initweight !323 !taffo.funinfo !324 !taffo.equivalentChild !327 !taffo.start !70 !taffo.sourceFunction !328 {
entry:
  %.flt = load float, float* %x_f, align 4, !taffo.info !115, !taffo.initweight !82, !taffo.target !74
  %0 = fmul float 0x41B0000000000000, %.flt, !taffo.info !115, !taffo.target !74
  %.flt.fallback.s4_28fixp = fptosi float %0 to i32, !taffo.info !115, !taffo.target !74
  %1 = lshr i32 0, 4
  %2 = icmp slt i32 %.flt.fallback.s4_28fixp, %1, !taffo.info !118, !taffo.target !74
  %3 = ashr i32 %.flt.fallback.s4_28fixp, 1, !taffo.info !115, !taffo.target !74
  br i1 %2, label %if.then, label %if.end, !taffo.info !120, !taffo.initweight !86, !taffo.target !74

if.then:                                          ; preds = %entry
  %fneg.s4_28fixp = sub i32 0, %.flt.fallback.s4_28fixp, !taffo.info !121, !taffo.target !74
  %4 = ashr i32 %fneg.s4_28fixp, 1, !taffo.info !121, !taffo.target !74
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %x.0.s5_27fixp = phi i32 [ %4, %if.then ], [ %3, %entry ], !taffo.info !123
  %5 = call i32 @_Z13compare_floatff.7.15_fixp(i32 %x.0.s5_27fixp, float 0x3FF921FB60000000), !taffo.info !126, !taffo.constinfo !127, !taffo.target !74
  %cmp2.flt = icmp sle i32 0, %5, !taffo.info !126, !taffo.initweight !86, !taffo.target !74
  %6 = ashr i32 %x.0.s5_27fixp, 2, !taffo.info !123
  br i1 %cmp2.flt, label %if.then3, label %if.end7, !taffo.info !120, !taffo.initweight !80, !taffo.target !74

if.then3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then3
  %x.1.s5_27fixp = phi i32 [ %x.0.s5_27fixp, %if.then3 ], [ %sub.s5_27fixp, %do.cond ], !taffo.info !123
  %7 = lshr i32 1686629705, 3
  %sub.s5_27fixp = sub i32 %x.1.s5_27fixp, %7, !taffo.info !130, !taffo.constinfo !132, !taffo.target !74
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %8 = call i32 @_Z13compare_floatff.6.16_fixp(i32 %sub.s5_27fixp, float 0x3FF921FB60000000), !taffo.info !135, !taffo.constinfo !127, !taffo.target !74
  %cmp6.flt = icmp sle i32 0, %8, !taffo.info !135, !taffo.initweight !86, !taffo.target !74
  br i1 %cmp6.flt, label %do.body, label %do.end, !llvm.loop !329, !taffo.info !120, !taffo.initweight !80, !taffo.target !74

do.end:                                           ; preds = %do.cond
  %9 = ashr i32 %sub.s5_27fixp, 2, !taffo.info !130, !taffo.constinfo !132, !taffo.target !74
  br label %if.end7

if.end7:                                          ; preds = %if.end, %do.end
  %x.2.s7_25fixp = phi i32 [ %9, %do.end ], [ %6, %if.end ], !taffo.info !137
  %10 = call i32 @_Z13compare_floatff.5.17_fixp(i32 %x.2.s7_25fixp, float 0x400921FB60000000), !taffo.info !135, !taffo.constinfo !140, !taffo.target !74
  %cmp9.flt = icmp sle i32 0, %10, !taffo.info !135, !taffo.initweight !86, !taffo.target !74
  br i1 %cmp9.flt, label %land.lhs.true, label %if.end41, !taffo.info !120, !taffo.initweight !80, !taffo.target !74

land.lhs.true:                                    ; preds = %if.end7
  %11 = call i32 @_Z13compare_floatff.4.18_fixp(i32 %x.2.s7_25fixp, float 0x3FF921FB60000000), !taffo.info !135, !taffo.constinfo !127, !taffo.target !74
  %cmp11.flt = icmp eq i32 -1, %11, !taffo.info !135, !taffo.initweight !86, !taffo.target !74
  br i1 %cmp11.flt, label %if.then12, label %if.end41, !taffo.info !120, !taffo.initweight !80, !taffo.target !74

if.then12:                                        ; preds = %land.lhs.true
  %conv13.s5_27fixp = shl i32 %x.2.s7_25fixp, 2, !taffo.info !143, !taffo.target !74
  %12 = lshr i32 1686629711, 2
  %sub14.s5_27fixp = sub i32 %conv13.s5_27fixp, %12, !taffo.info !144, !taffo.constinfo !146, !taffo.target !74
  %13 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %14 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %15 = mul i64 %13, %14, !taffo.info !149, !taffo.target !74
  %16 = lshr i64 %15, 29, !taffo.info !149, !taffo.target !74
  %mul.u7_25fixp = trunc i64 %16 to i32, !taffo.info !152, !taffo.target !74
  %div.s7_25fixp = sdiv i32 %mul.u7_25fixp, 2, !taffo.info !154, !taffo.constinfo !39, !taffo.target !74
  %17 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %18 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %19 = mul i64 %17, %18, !taffo.info !149, !taffo.target !74
  %20 = lshr i64 %19, 29, !taffo.info !149, !taffo.target !74
  %mul16.u7_25fixp = trunc i64 %20 to i32, !taffo.info !152, !taffo.target !74
  %21 = zext i32 %mul16.u7_25fixp to i64, !taffo.info !152, !taffo.target !74
  %22 = shl i64 %21, 2, !taffo.info !152, !taffo.target !74
  %23 = zext i32 12 to i64
  %24 = sdiv i64 %22, %23, !taffo.info !156, !taffo.constinfo !159, !taffo.target !74
  %div17.s5_27fixp = trunc i64 %24 to i32, !taffo.info !162, !taffo.target !74
  %25 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %26 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %27 = mul i64 %25, %26, !taffo.info !149, !taffo.target !74
  %28 = lshr i64 %27, 29, !taffo.info !149, !taffo.target !74
  %mul18.u7_25fixp = trunc i64 %28 to i32, !taffo.info !152, !taffo.target !74
  %29 = zext i32 %mul18.u7_25fixp to i64, !taffo.info !152, !taffo.target !74
  %30 = shl i64 %29, 3, !taffo.info !152, !taffo.target !74
  %31 = zext i32 30 to i64
  %32 = sdiv i64 %30, %31, !taffo.info !163, !taffo.constinfo !166, !taffo.target !74
  %div19.s4_28fixp = trunc i64 %32 to i32, !taffo.info !169, !taffo.target !74
  %33 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %34 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %35 = mul i64 %33, %34, !taffo.info !149, !taffo.target !74
  %36 = lshr i64 %35, 29, !taffo.info !149, !taffo.target !74
  %mul20.u7_25fixp = trunc i64 %36 to i32, !taffo.info !152, !taffo.target !74
  %37 = zext i32 %mul20.u7_25fixp to i64, !taffo.info !152, !taffo.target !74
  %38 = shl i64 %37, 4, !taffo.info !152, !taffo.target !74
  %39 = zext i32 56 to i64
  %40 = sdiv i64 %38, %39, !taffo.info !170, !taffo.constinfo !173, !taffo.target !74
  %div21.s3_29fixp = trunc i64 %40 to i32, !taffo.info !176, !taffo.target !74
  %41 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %42 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %43 = mul i64 %41, %42, !taffo.info !149, !taffo.target !74
  %44 = lshr i64 %43, 29, !taffo.info !149, !taffo.target !74
  %mul22.u7_25fixp = trunc i64 %44 to i32, !taffo.info !152, !taffo.target !74
  %45 = zext i32 %mul22.u7_25fixp to i64, !taffo.info !152, !taffo.target !74
  %46 = shl i64 %45, 4, !taffo.info !152, !taffo.target !74
  %47 = zext i32 90 to i64
  %48 = sdiv i64 %46, %47, !taffo.info !178, !taffo.constinfo !180, !taffo.target !74
  %div23.s3_29fixp = trunc i64 %48 to i32, !taffo.info !183, !taffo.target !74
  %49 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %50 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %51 = mul i64 %49, %50, !taffo.info !149, !taffo.target !74
  %52 = lshr i64 %51, 29, !taffo.info !149, !taffo.target !74
  %mul24.u7_25fixp = trunc i64 %52 to i32, !taffo.info !152, !taffo.target !74
  %53 = zext i32 %mul24.u7_25fixp to i64, !taffo.info !152, !taffo.target !74
  %54 = shl i64 %53, 5, !taffo.info !152, !taffo.target !74
  %55 = zext i32 132 to i64
  %56 = sdiv i64 %54, %55, !taffo.info !184, !taffo.constinfo !187, !taffo.target !74
  %div25.s2_30fixp = trunc i64 %56 to i32, !taffo.info !190, !taffo.target !74
  %57 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %58 = sext i32 %sub14.s5_27fixp to i64, !taffo.info !144, !taffo.target !74
  %59 = mul i64 %57, %58, !taffo.info !149, !taffo.target !74
  %60 = lshr i64 %59, 29, !taffo.info !149, !taffo.target !74
  %mul26.u7_25fixp = trunc i64 %60 to i32, !taffo.info !152, !taffo.target !74
  %61 = zext i32 %mul26.u7_25fixp to i64, !taffo.info !152, !taffo.target !74
  %62 = shl i64 %61, 6, !taffo.info !152, !taffo.target !74
  %63 = zext i32 182 to i64
  %64 = udiv i64 %62, %63, !taffo.info !191, !taffo.constinfo !194, !taffo.target !74
  %div27.u1_31fixp = trunc i64 %64 to i32, !taffo.info !197, !taffo.target !74
  %sub28.u1_31fixp = sub i32 -2147483648, %div27.u1_31fixp, !taffo.info !199, !taffo.constinfo !201, !taffo.target !74
  %neg.s2_30fixp = sub i32 0, %div25.s2_30fixp, !taffo.info !202, !taffo.target !74
  %65 = lshr i32 -2147483648, 1
  %66 = sext i32 %neg.s2_30fixp to i64, !taffo.info !202, !taffo.target !74
  %67 = zext i32 %sub28.u1_31fixp to i64, !taffo.info !199, !taffo.target !74
  %68 = mul i64 %66, %67, !taffo.info !204, !taffo.target !74
  %69 = ashr i64 %68, 31
  %70 = trunc i64 %69 to i32
  %s2_30fixp6 = add i32 %70, %65, !taffo.info !207, !taffo.target !74
  %neg31.s3_29fixp = sub i32 0, %div23.s3_29fixp, !taffo.info !208, !taffo.target !74
  %71 = lshr i32 -2147483648, 2
  %72 = sext i32 %neg31.s3_29fixp to i64, !taffo.info !208, !taffo.target !74
  %73 = sext i32 %s2_30fixp6 to i64, !taffo.info !207, !taffo.target !74
  %74 = mul i64 %72, %73, !taffo.info !210, !taffo.target !74
  %75 = ashr i64 %74, 30
  %76 = trunc i64 %75 to i32
  %s3_29fixp7 = add i32 %76, %71, !taffo.info !213, !taffo.target !74
  %neg33.s3_29fixp = sub i32 0, %div21.s3_29fixp, !taffo.info !214, !taffo.target !74
  %77 = lshr i32 -2147483648, 3
  %78 = sext i32 %neg33.s3_29fixp to i64, !taffo.info !214, !taffo.target !74
  %79 = sext i32 %s3_29fixp7 to i64, !taffo.info !213, !taffo.target !74
  %80 = mul i64 %78, %79, !taffo.info !216, !taffo.target !74
  %81 = ashr i64 %80, 30
  %82 = trunc i64 %81 to i32
  %s4_28fixp9 = add i32 %82, %77, !taffo.info !219, !taffo.target !74
  %neg35.s4_28fixp = sub i32 0, %div19.s4_28fixp, !taffo.info !220, !taffo.target !74
  %83 = lshr i32 -2147483648, 3
  %84 = sext i32 %neg35.s4_28fixp to i64, !taffo.info !220, !taffo.target !74
  %85 = sext i32 %s4_28fixp9 to i64, !taffo.info !219, !taffo.target !74
  %86 = mul i64 %84, %85, !taffo.info !222, !taffo.target !74
  %87 = ashr i64 %86, 28
  %88 = trunc i64 %87 to i32
  %s4_28fixp10 = add i32 %88, %83, !taffo.info !225, !taffo.target !74
  %89 = ashr i32 %div17.s5_27fixp, 2, !taffo.info !162, !taffo.target !74
  %neg37.s7_25fixp = sub i32 0, %89, !taffo.info !226, !taffo.target !74
  %90 = lshr i32 -2147483648, 6
  %91 = sext i32 %neg37.s7_25fixp to i64, !taffo.info !226, !taffo.target !74
  %92 = sext i32 %s4_28fixp10 to i64, !taffo.info !225, !taffo.target !74
  %93 = mul i64 %91, %92, !taffo.info !228, !taffo.target !74
  %94 = ashr i64 %93, 28
  %95 = trunc i64 %94 to i32
  %s7_25fixp = add i32 %95, %90, !taffo.info !231, !taffo.target !74
  %neg39.s7_25fixp = sub i32 0, %div.s7_25fixp, !taffo.info !232, !taffo.target !74
  %96 = lshr i32 -2147483648, 12
  %97 = sext i32 %neg39.s7_25fixp to i64, !taffo.info !232, !taffo.target !74
  %98 = sext i32 %s7_25fixp to i64, !taffo.info !231, !taffo.target !74
  %99 = mul i64 %97, %98, !taffo.info !234, !taffo.target !74
  %100 = ashr i64 %99, 31
  %101 = trunc i64 %100 to i32
  %s13_19fixp = add i32 %101, %96, !taffo.info !237, !taffo.target !74
  %102 = sext i32 -1 to i64
  %103 = sext i32 %s13_19fixp to i64, !taffo.info !237, !taffo.target !74
  %104 = mul i64 %102, %103, !taffo.info !239, !taffo.constinfo !242, !taffo.target !74
  %mul40.s13_19fixp = trunc i64 %104 to i32, !taffo.info !245, !taffo.target !74
  %105 = sitofp i32 %mul40.s13_19fixp to float, !taffo.info !245, !taffo.target !74
  %106 = fdiv float %105, 5.242880e+05, !taffo.info !245, !taffo.target !74
  store float %106, float* %res, align 4, !taffo.info !120, !taffo.target !74
  br label %return

if.end41:                                         ; preds = %land.lhs.true, %if.end7
  %107 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %108 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %109 = mul i64 %107, %108, !taffo.info !246, !taffo.target !74
  %110 = lshr i64 %109, 24, !taffo.info !246, !taffo.target !74
  %mul42.u6_26fixp = trunc i64 %110 to i32, !taffo.info !249, !taffo.target !74
  %div43.s6_26fixp = sdiv i32 %mul42.u6_26fixp, 2, !taffo.info !251, !taffo.constinfo !39, !taffo.target !74
  %111 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %112 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %113 = mul i64 %111, %112, !taffo.info !254, !taffo.target !74
  %114 = ashr i64 %113, 25, !taffo.info !254, !taffo.target !74
  %mul44.s7_25fixp = trunc i64 %114 to i32, !taffo.info !255, !taffo.target !74
  %115 = sext i32 %mul44.s7_25fixp to i64, !taffo.info !255, !taffo.target !74
  %116 = shl i64 %115, 3, !taffo.info !255, !taffo.target !74
  %117 = zext i32 12 to i64
  %118 = sdiv i64 %116, %117, !taffo.info !256, !taffo.constinfo !159, !taffo.target !74
  %div45.s4_28fixp = trunc i64 %118 to i32, !taffo.info !258, !taffo.target !74
  %119 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %120 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %121 = mul i64 %119, %120, !taffo.info !254, !taffo.target !74
  %122 = ashr i64 %121, 25, !taffo.info !254, !taffo.target !74
  %mul46.s7_25fixp = trunc i64 %122 to i32, !taffo.info !255, !taffo.target !74
  %123 = sext i32 %mul46.s7_25fixp to i64, !taffo.info !255, !taffo.target !74
  %124 = shl i64 %123, 4, !taffo.info !255, !taffo.target !74
  %125 = zext i32 30 to i64
  %126 = sdiv i64 %124, %125, !taffo.info !259, !taffo.constinfo !166, !taffo.target !74
  %div47.s3_29fixp = trunc i64 %126 to i32, !taffo.info !261, !taffo.target !74
  %127 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %128 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %129 = mul i64 %127, %128, !taffo.info !254, !taffo.target !74
  %130 = ashr i64 %129, 25, !taffo.info !254, !taffo.target !74
  %mul48.s7_25fixp = trunc i64 %130 to i32, !taffo.info !255, !taffo.target !74
  %131 = sext i32 %mul48.s7_25fixp to i64, !taffo.info !255, !taffo.target !74
  %132 = shl i64 %131, 4, !taffo.info !255, !taffo.target !74
  %133 = zext i32 56 to i64
  %134 = sdiv i64 %132, %133, !taffo.info !262, !taffo.constinfo !173, !taffo.target !74
  %div49.s3_29fixp = trunc i64 %134 to i32, !taffo.info !264, !taffo.target !74
  %135 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %136 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %137 = mul i64 %135, %136, !taffo.info !254, !taffo.target !74
  %138 = ashr i64 %137, 25, !taffo.info !254, !taffo.target !74
  %mul50.s7_25fixp = trunc i64 %138 to i32, !taffo.info !255, !taffo.target !74
  %139 = sext i32 %mul50.s7_25fixp to i64, !taffo.info !255, !taffo.target !74
  %140 = shl i64 %139, 5, !taffo.info !255, !taffo.target !74
  %141 = zext i32 90 to i64
  %142 = sdiv i64 %140, %141, !taffo.info !265, !taffo.constinfo !180, !taffo.target !74
  %div51.s2_30fixp = trunc i64 %142 to i32, !taffo.info !267, !taffo.target !74
  %143 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %144 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %145 = mul i64 %143, %144, !taffo.info !254, !taffo.target !74
  %146 = ashr i64 %145, 25, !taffo.info !254, !taffo.target !74
  %mul52.s7_25fixp = trunc i64 %146 to i32, !taffo.info !255, !taffo.target !74
  %147 = sext i32 %mul52.s7_25fixp to i64, !taffo.info !255, !taffo.target !74
  %148 = shl i64 %147, 5, !taffo.info !255, !taffo.target !74
  %149 = zext i32 132 to i64
  %150 = sdiv i64 %148, %149, !taffo.info !268, !taffo.constinfo !187, !taffo.target !74
  %div53.s2_30fixp = trunc i64 %150 to i32, !taffo.info !270, !taffo.target !74
  %151 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %152 = sext i32 %x.2.s7_25fixp to i64, !taffo.info !137
  %153 = mul i64 %151, %152, !taffo.info !254, !taffo.target !74
  %154 = ashr i64 %153, 25, !taffo.info !254, !taffo.target !74
  %mul54.s7_25fixp = trunc i64 %154 to i32, !taffo.info !255, !taffo.target !74
  %155 = sext i32 %mul54.s7_25fixp to i64, !taffo.info !255, !taffo.target !74
  %156 = shl i64 %155, 6, !taffo.info !255, !taffo.target !74
  %157 = zext i32 182 to i64
  %158 = udiv i64 %156, %157, !taffo.info !271, !taffo.constinfo !194, !taffo.target !74
  %div55.u1_31fixp = trunc i64 %158 to i32, !taffo.info !273, !taffo.target !74
  %sub56.u1_31fixp = sub i32 -2147483648, %div55.u1_31fixp, !taffo.info !274, !taffo.constinfo !201, !taffo.target !74
  %neg58.s2_30fixp = sub i32 0, %div53.s2_30fixp, !taffo.info !276, !taffo.target !74
  %159 = lshr i32 -2147483648, 1
  %160 = sext i32 %neg58.s2_30fixp to i64, !taffo.info !276, !taffo.target !74
  %161 = zext i32 %sub56.u1_31fixp to i64, !taffo.info !274, !taffo.target !74
  %162 = mul i64 %160, %161, !taffo.info !278, !taffo.target !74
  %163 = ashr i64 %162, 31
  %164 = trunc i64 %163 to i32
  %s2_30fixp = add i32 %164, %159, !taffo.info !280, !taffo.target !74
  %neg60.s2_30fixp = sub i32 0, %div51.s2_30fixp, !taffo.info !281, !taffo.target !74
  %165 = lshr i32 -2147483648, 1
  %166 = sext i32 %neg60.s2_30fixp to i64, !taffo.info !281, !taffo.target !74
  %167 = sext i32 %s2_30fixp to i64, !taffo.info !280, !taffo.target !74
  %168 = mul i64 %166, %167, !taffo.info !283, !taffo.target !74
  %169 = ashr i64 %168, 30
  %170 = trunc i64 %169 to i32
  %s2_30fixp5 = add i32 %170, %165, !taffo.info !286, !taffo.target !74
  %neg62.s3_29fixp = sub i32 0, %div49.s3_29fixp, !taffo.info !287, !taffo.target !74
  %171 = lshr i32 -2147483648, 2
  %172 = sext i32 %neg62.s3_29fixp to i64, !taffo.info !287, !taffo.target !74
  %173 = sext i32 %s2_30fixp5 to i64, !taffo.info !286, !taffo.target !74
  %174 = mul i64 %172, %173, !taffo.info !289, !taffo.target !74
  %175 = ashr i64 %174, 30
  %176 = trunc i64 %175 to i32
  %s3_29fixp = add i32 %176, %171, !taffo.info !291, !taffo.target !74
  %neg64.s3_29fixp = sub i32 0, %div47.s3_29fixp, !taffo.info !292, !taffo.target !74
  %177 = lshr i32 -2147483648, 3
  %178 = sext i32 %neg64.s3_29fixp to i64, !taffo.info !292, !taffo.target !74
  %179 = sext i32 %s3_29fixp to i64, !taffo.info !291, !taffo.target !74
  %180 = mul i64 %178, %179, !taffo.info !294, !taffo.target !74
  %181 = ashr i64 %180, 30
  %182 = trunc i64 %181 to i32
  %s4_28fixp = add i32 %182, %177, !taffo.info !296, !taffo.target !74
  %neg66.s4_28fixp = sub i32 0, %div45.s4_28fixp, !taffo.info !297, !taffo.target !74
  %183 = lshr i32 -2147483648, 3
  %184 = sext i32 %neg66.s4_28fixp to i64, !taffo.info !297, !taffo.target !74
  %185 = sext i32 %s4_28fixp to i64, !taffo.info !296, !taffo.target !74
  %186 = mul i64 %184, %185, !taffo.info !299, !taffo.target !74
  %187 = ashr i64 %186, 28
  %188 = trunc i64 %187 to i32
  %s4_28fixp8 = add i32 %188, %183, !taffo.info !301, !taffo.target !74
  %neg68.s6_26fixp = sub i32 0, %div43.s6_26fixp, !taffo.info !302, !taffo.target !74
  %189 = lshr i32 -2147483648, 8
  %190 = sext i32 %neg68.s6_26fixp to i64, !taffo.info !302, !taffo.target !74
  %191 = sext i32 %s4_28fixp8 to i64, !taffo.info !301, !taffo.target !74
  %192 = mul i64 %190, %191, !taffo.info !304, !taffo.target !74
  %193 = ashr i64 %192, 31
  %194 = trunc i64 %193 to i32
  %s9_23fixp = add i32 %194, %189, !taffo.info !307, !taffo.target !74
  %195 = sitofp i32 %s9_23fixp to float, !taffo.info !307, !taffo.target !74
  %196 = fdiv float %195, 0x4160000000000000, !taffo.info !307, !taffo.target !74
  store float %196, float* %res, align 4, !taffo.info !120, !taffo.target !74
  br label %return

return:                                           ; preds = %if.end41, %if.then12
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i32 @_Z13compare_floatff.6_fixp(i32 noundef %f1.s5_27fixp, float noundef %f2) #5 !taffo.initweight !330 !taffo.funinfo !331 !taffo.equivalentChild !332 !taffo.sourceFunction !333 {
entry:
  %0 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %1 = fptoui float %0 to i32, !taffo.info !128
  %2 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %3 = fptoui float %2 to i32, !taffo.info !128
  %4 = lshr i32 21, 4
  %sub.s5_27fixp = sub i32 %f1.s5_27fixp, %4, !taffo.info !334, !taffo.constinfo !109
  %5 = lshr i32 %3, 3, !taffo.info !128
  %6 = icmp slt i32 %sub.s5_27fixp, %5, !taffo.info !135
  br i1 %6, label %if.then, label %if.else, !taffo.info !113, !taffo.initweight !86

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %7 = lshr i32 21, 4
  %add.s5_27fixp = add i32 %f1.s5_27fixp, %7, !taffo.info !336, !taffo.constinfo !109
  %8 = lshr i32 %1, 3, !taffo.info !128
  %9 = icmp sgt i32 %add.s5_27fixp, %8, !taffo.info !135
  br i1 %9, label %if.then5, label %if.else6, !taffo.info !113, !taffo.initweight !86

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !338
  ret i32 %retval.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i32 @_Z13compare_floatff.4_fixp(i32 noundef %f1.s7_25fixp, float noundef %f2) #5 !taffo.initweight !330 !taffo.funinfo !339 !taffo.equivalentChild !340 !taffo.sourceFunction !333 {
entry:
  %0 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %1 = fptoui float %0 to i32, !taffo.info !128
  %2 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %3 = fptoui float %2 to i32, !taffo.info !128
  %4 = shl i32 %f1.s7_25fixp, 2, !taffo.info !137
  %5 = lshr i32 21, 4
  %sub.s5_27fixp = sub i32 %4, %5, !taffo.info !341, !taffo.constinfo !109
  %6 = lshr i32 %3, 3, !taffo.info !128
  %7 = icmp slt i32 %sub.s5_27fixp, %6, !taffo.info !135
  br i1 %7, label %if.then, label %if.else, !taffo.info !113, !taffo.initweight !86

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %8 = shl i32 %f1.s7_25fixp, 2, !taffo.info !137
  %9 = lshr i32 21, 4
  %add.s5_27fixp = add i32 %8, %9, !taffo.info !343, !taffo.constinfo !109
  %10 = lshr i32 %1, 3, !taffo.info !128
  %11 = icmp sgt i32 %add.s5_27fixp, %10, !taffo.info !135
  br i1 %11, label %if.then5, label %if.else6, !taffo.info !113, !taffo.initweight !86

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !338
  ret i32 %retval.0
}

; Function Attrs: mustprogress noinline uwtable
define internal void @_Z23radix2DitCooleyTykeyFftPiP7ComplexS1_.1_fixp(i32* noundef %indices, %struct.Complex* noundef %x, %struct.Complex* noundef %f) #7 !taffo.initweight !345 !taffo.funinfo !346 !taffo.sourceFunction !347 {
entry:
  %fftSin = alloca float, align 4, !taffo.info !348, !taffo.initweight !73
  %fftCos = alloca float, align 4, !taffo.info !348, !taffo.initweight !73
  %0 = alloca { i32, i32 }, align 4
  call void @_Z14calcFftIndicesPi.2(i32* noundef %indices), !taffo.info !89, !taffo.initweight !82, !taffo.constinfo !12, !taffo.originalCall !91
  %add = add nsw i32 0, 1, !taffo.info !35, !taffo.constinfo !12
  %shl = shl i32 1, %add, !taffo.info !40, !taffo.constinfo !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc94, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc95, %for.inc94 ], !taffo.info !31
  %N.0 = phi i32 [ %shl, %entry ], [ %shl97, %for.inc94 ], !taffo.info !351
  %cmp = icmp sle i32 %N.0, 1024, !taffo.info !35
  br i1 %cmp, label %for.body, label %for.end98

for.body:                                         ; preds = %for.cond
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc91, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %add92, %for.inc91 ], !taffo.info !353
  %cmp10 = icmp slt i32 %j.0, 1024, !taffo.info !35
  br i1 %cmp10, label %for.body11, label %for.end93

for.body11:                                       ; preds = %for.cond9
  %shr = ashr i32 %N.0, 1, !taffo.info !35, !taffo.constinfo !12
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body11
  %k.0 = phi i32 [ 0, %for.body11 ], [ %inc, %for.inc ], !taffo.info !89, !taffo.initweight !73
  %cmp13 = icmp slt i32 %k.0, %shr, !taffo.info !355, !taffo.initweight !82
  br i1 %cmp13, label %for.body14, label %for.end, !taffo.info !89, !taffo.initweight !86

for.body14:                                       ; preds = %for.cond12
  %conv = sitofp i32 %k.0 to float, !taffo.info !89, !taffo.initweight !82
  %conv15 = sitofp i32 %N.0 to float, !taffo.info !40
  %div = fdiv float %conv, %conv15, !taffo.info !356, !taffo.initweight !86
  %add16 = add nsw i32 %j.0, %k.0, !taffo.info !89, !taffo.initweight !82
  %add17 = add nsw i32 %j.0, %shr, !taffo.info !35
  %add18 = add nsw i32 %add17, %k.0, !taffo.info !358, !taffo.initweight !82
  %1 = fmul float 1.024000e+03, %div, !taffo.info !356
  %2 = fptoui float %1 to i32, !taffo.info !356
  call void @_Z9fftSinCosfPfS_.11_fixp(i32 %2, float* %fftSin, float* %fftCos), !taffo.info !72, !taffo.constinfo !13
  %idxprom = sext i32 %add16 to i64, !taffo.info !360
  %arrayidx = getelementptr inbounds i32, i32* %indices, i64 %idxprom, !taffo.info !89, !taffo.initweight !82
  %3 = load i32, i32* %arrayidx, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom19 = sext i32 %3 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx20.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom19, !taffo.structinfo !71, !taffo.initweight !315, !taffo.target !74
  %4 = bitcast { i32, i32 }* %0 to %struct.Complex*
  %5 = bitcast %struct.Complex* %4 to i8*, !taffo.info !92, !taffo.initweight !81
  %6 = bitcast %struct.Complex* %arrayidx20.flt to i8*, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 8, i1 false), !taffo.info !72, !taffo.initweight !82, !taffo.constinfo !21
  %real.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0, !taffo.info !93
  %s15_17fixp10 = load i32, i32* %real.s15_17fixp, align 4, !taffo.info !93
  %7 = sitofp i32 %s15_17fixp10 to float, !taffo.info !93
  %8 = fdiv float %7, 1.310720e+05, !taffo.info !93
  %idxprom21 = sext i32 %add18 to i64, !taffo.info !361
  %arrayidx22 = getelementptr inbounds i32, i32* %indices, i64 %idxprom21, !taffo.info !89, !taffo.initweight !82
  %9 = load i32, i32* %arrayidx22, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom23 = sext i32 %9 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx24.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom23, !taffo.structinfo !71, !taffo.initweight !315, !taffo.target !74
  %real25 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx24.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %10 = load float, float* %real25, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %.flt.fallback.1flp7 = load float, float* %fftCos, align 4, !taffo.info !348, !taffo.initweight !81
  %idxprom26 = sext i32 %add16 to i64, !taffo.info !360
  %arrayidx27 = getelementptr inbounds i32, i32* %indices, i64 %idxprom26, !taffo.info !89, !taffo.initweight !82
  %11 = load i32, i32* %arrayidx27, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom28 = sext i32 %11 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx29.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom28, !taffo.structinfo !71, !taffo.initweight !315, !taffo.target !74
  %imag = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx29.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %12 = load float, float* %imag, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %.flt.fallback.1flp3 = load float, float* %fftSin, align 4, !taffo.info !348, !taffo.initweight !81
  %mul30.1flp = fmul float %12, %.flt.fallback.1flp3, !taffo.info !362
  %neg.1flp = fneg float %mul30.1flp, !taffo.info !362
  %"1flp13" = call float @llvm.fmuladd.f32(float %10, float %.flt.fallback.1flp7, float %neg.1flp), !taffo.info !362, !taffo.constinfo !13
  %add31.1flp = fadd float %8, %"1flp13", !taffo.info !362
  %idxprom32 = sext i32 %add16 to i64, !taffo.info !360
  %arrayidx33 = getelementptr inbounds i32, i32* %indices, i64 %idxprom32, !taffo.info !89, !taffo.initweight !82
  %13 = load i32, i32* %arrayidx33, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom34 = sext i32 %13 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx35.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom34, !taffo.structinfo !71, !taffo.initweight !315, !taffo.target !74
  %real36 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx35.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  store float %add31.1flp, float* %real36, align 4, !taffo.info !72, !taffo.target !74
  %imag37.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1, !taffo.info !93
  %s15_17fixp9 = load i32, i32* %imag37.s15_17fixp, align 4, !taffo.info !93
  %idxprom38 = sext i32 %add16 to i64, !taffo.info !360
  %arrayidx39 = getelementptr inbounds i32, i32* %indices, i64 %idxprom38, !taffo.info !89, !taffo.initweight !82
  %14 = load i32, i32* %arrayidx39, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom40 = sext i32 %14 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx41.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom40, !taffo.structinfo !71, !taffo.initweight !315, !taffo.target !74
  %imag42 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx41.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %15 = load float, float* %imag42, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %.flt.fallback.1flp6 = load float, float* %fftCos, align 4, !taffo.info !348, !taffo.initweight !81
  %idxprom43 = sext i32 %add18 to i64, !taffo.info !361
  %arrayidx44 = getelementptr inbounds i32, i32* %indices, i64 %idxprom43, !taffo.info !89, !taffo.initweight !82
  %16 = load i32, i32* %arrayidx44, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom45 = sext i32 %16 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx46.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom45, !taffo.structinfo !71, !taffo.initweight !315, !taffo.target !74
  %real47 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx46.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %17 = load float, float* %real47, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %.flt.fallback.1flp2 = load float, float* %fftSin, align 4, !taffo.info !348, !taffo.initweight !81
  %mul48.1flp = fmul float %17, %.flt.fallback.1flp2, !taffo.info !362
  %"1flp" = call float @llvm.fmuladd.f32(float %15, float %.flt.fallback.1flp6, float %mul48.1flp), !taffo.info !362, !taffo.constinfo !13
  %18 = fmul float 1.310720e+05, %"1flp", !taffo.info !362
  %19 = fptosi float %18 to i32, !taffo.info !362
  %add49.s15_17fixp = add i32 %s15_17fixp9, %19, !taffo.info !93
  %20 = sitofp i32 %add49.s15_17fixp to float, !taffo.info !93
  %21 = fdiv float %20, 1.310720e+05, !taffo.info !93
  %idxprom50 = sext i32 %add16 to i64, !taffo.info !360
  %arrayidx51 = getelementptr inbounds i32, i32* %indices, i64 %idxprom50, !taffo.info !89, !taffo.initweight !82
  %22 = load i32, i32* %arrayidx51, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom52 = sext i32 %22 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx53.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom52, !taffo.structinfo !71, !taffo.initweight !315, !taffo.target !74
  %imag54 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx53.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  store float %21, float* %imag54, align 4, !taffo.info !72, !taffo.target !74
  %real55.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0, !taffo.info !93
  %s15_17fixp8 = load i32, i32* %real55.s15_17fixp, align 4, !taffo.info !93
  %23 = sitofp i32 %s15_17fixp8 to float, !taffo.info !93
  %24 = fdiv float %23, 1.310720e+05, !taffo.info !93
  %idxprom56 = sext i32 %add18 to i64, !taffo.info !361
  %arrayidx57 = getelementptr inbounds i32, i32* %indices, i64 %idxprom56, !taffo.info !89, !taffo.initweight !82
  %25 = load i32, i32* %arrayidx57, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom58 = sext i32 %25 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx59.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom58, !taffo.structinfo !71, !taffo.initweight !315, !taffo.target !74
  %real60 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx59.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %26 = load float, float* %real60, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %.flt.fallback.1flp5 = load float, float* %fftCos, align 4, !taffo.info !348, !taffo.initweight !81
  %idxprom61 = sext i32 %add16 to i64, !taffo.info !360
  %arrayidx62 = getelementptr inbounds i32, i32* %indices, i64 %idxprom61, !taffo.info !89, !taffo.initweight !82
  %27 = load i32, i32* %arrayidx62, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom63 = sext i32 %27 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx64.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom63, !taffo.structinfo !71, !taffo.initweight !315, !taffo.target !74
  %imag65 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx64.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %28 = load float, float* %imag65, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %.flt.fallback.1flp1 = load float, float* %fftSin, align 4, !taffo.info !348, !taffo.initweight !81
  %mul66.1flp = fmul float %28, %.flt.fallback.1flp1, !taffo.info !362
  %neg67.1flp = fneg float %mul66.1flp, !taffo.info !362
  %"1flp12" = call float @llvm.fmuladd.f32(float %26, float %.flt.fallback.1flp5, float %neg67.1flp), !taffo.info !362, !taffo.constinfo !13
  %sub.1flp = fsub float %24, %"1flp12", !taffo.info !362
  %idxprom68 = sext i32 %add18 to i64, !taffo.info !361
  %arrayidx69 = getelementptr inbounds i32, i32* %indices, i64 %idxprom68, !taffo.info !89, !taffo.initweight !82
  %29 = load i32, i32* %arrayidx69, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom70 = sext i32 %29 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx71.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom70, !taffo.structinfo !71, !taffo.initweight !315, !taffo.target !74
  %real72 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx71.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  store float %sub.1flp, float* %real72, align 4, !taffo.info !72, !taffo.target !74
  %imag73.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1, !taffo.info !93
  %s15_17fixp = load i32, i32* %imag73.s15_17fixp, align 4, !taffo.info !93
  %idxprom74 = sext i32 %add16 to i64, !taffo.info !360
  %arrayidx75 = getelementptr inbounds i32, i32* %indices, i64 %idxprom74, !taffo.info !89, !taffo.initweight !82
  %30 = load i32, i32* %arrayidx75, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom76 = sext i32 %30 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx77.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom76, !taffo.structinfo !71, !taffo.initweight !315, !taffo.target !74
  %imag78 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx77.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %31 = load float, float* %imag78, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %.flt.fallback.1flp4 = load float, float* %fftCos, align 4, !taffo.info !348, !taffo.initweight !81
  %idxprom79 = sext i32 %add18 to i64, !taffo.info !361
  %arrayidx80 = getelementptr inbounds i32, i32* %indices, i64 %idxprom79, !taffo.info !89, !taffo.initweight !82
  %32 = load i32, i32* %arrayidx80, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom81 = sext i32 %32 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx82.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom81, !taffo.structinfo !71, !taffo.initweight !315, !taffo.target !74
  %real83 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx82.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %33 = load float, float* %real83, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %.flt.fallback.1flp = load float, float* %fftSin, align 4, !taffo.info !348, !taffo.initweight !81
  %mul84.1flp = fmul float %33, %.flt.fallback.1flp, !taffo.info !362
  %"1flp11" = call float @llvm.fmuladd.f32(float %31, float %.flt.fallback.1flp4, float %mul84.1flp), !taffo.info !362, !taffo.constinfo !13
  %34 = fmul float 1.310720e+05, %"1flp11", !taffo.info !362
  %35 = fptosi float %34 to i32, !taffo.info !362
  %sub85.s15_17fixp = sub i32 %s15_17fixp, %35, !taffo.info !93
  %36 = sitofp i32 %sub85.s15_17fixp to float, !taffo.info !93
  %37 = fdiv float %36, 1.310720e+05, !taffo.info !93
  %idxprom86 = sext i32 %add18 to i64, !taffo.info !361
  %arrayidx87 = getelementptr inbounds i32, i32* %indices, i64 %idxprom86, !taffo.info !89, !taffo.initweight !82
  %38 = load i32, i32* %arrayidx87, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom88 = sext i32 %38 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx89.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom88, !taffo.structinfo !71, !taffo.initweight !315, !taffo.target !74
  %imag90 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx89.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  store float %37, float* %imag90, align 4, !taffo.info !72, !taffo.target !74
  br label %for.inc

for.inc:                                          ; preds = %for.body14
  %inc = add nsw i32 %k.0, 1, !taffo.info !358, !taffo.initweight !82, !taffo.constinfo !12
  br label %for.cond12, !llvm.loop !363

for.end:                                          ; preds = %for.cond12
  br label %for.inc91

for.inc91:                                        ; preds = %for.end
  %add92 = add nsw i32 %j.0, %N.0, !taffo.info !40
  br label %for.cond9, !llvm.loop !364

for.end93:                                        ; preds = %for.cond9
  br label %for.inc94

for.inc94:                                        ; preds = %for.end93
  %inc95 = add nsw i32 %i.0, 1, !taffo.info !35, !taffo.constinfo !12
  %add96 = add nsw i32 %inc95, 1, !taffo.info !40, !taffo.constinfo !12
  %shl97 = shl i32 1, %add96, !taffo.info !365, !taffo.constinfo !12
  br label %for.cond, !llvm.loop !367

for.end98:                                        ; preds = %for.cond
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc109, %for.end98
  %i99.0 = phi i32 [ 0, %for.end98 ], [ %inc110, %for.inc109 ], !taffo.info !76
  %cmp101 = icmp slt i32 %i99.0, 1024, !taffo.info !35
  br i1 %cmp101, label %for.body102, label %for.end111

for.body102:                                      ; preds = %for.cond100
  %idxprom103 = sext i32 %i99.0 to i64, !taffo.info !78
  %arrayidx104 = getelementptr inbounds i32, i32* %indices, i64 %idxprom103, !taffo.info !89, !taffo.initweight !82
  %39 = load i32, i32* %arrayidx104, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom105 = sext i32 %39 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx106.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom105, !taffo.structinfo !71, !taffo.initweight !315, !taffo.target !74
  %idxprom107 = sext i32 %i99.0 to i64, !taffo.info !78
  %arrayidx108.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %f, i64 %idxprom107, !taffo.structinfo !71, !taffo.initweight !315, !taffo.target !75
  %40 = bitcast %struct.Complex* %arrayidx108.flt to i8*, !taffo.info !72, !taffo.initweight !86, !taffo.target !75
  %41 = bitcast %struct.Complex* %arrayidx106.flt to i8*, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 8, i1 false), !taffo.info !72, !taffo.initweight !80, !taffo.constinfo !21, !taffo.target !74
  br label %for.inc109

for.inc109:                                       ; preds = %for.body102
  %inc110 = add nsw i32 %i99.0, 1, !taffo.info !83, !taffo.constinfo !12
  br label %for.cond100, !llvm.loop !368

for.end111:                                       ; preds = %for.cond100
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i32 @_Z13compare_floatff.5.17_fixp(i32 noundef %f1.s7_25fixp, float noundef %f2) #5 !taffo.initweight !330 !taffo.funinfo !369 !taffo.equivalentChild !370 !taffo.sourceFunction !371 {
entry:
  %0 = fmul float 0x41C0000000000000, %f2, !taffo.info !141
  %1 = fptoui float %0 to i32, !taffo.info !141
  %2 = fmul float 0x41C0000000000000, %f2, !taffo.info !141
  %3 = fptoui float %2 to i32, !taffo.info !141
  %4 = shl i32 %f1.s7_25fixp, 2, !taffo.info !137
  %5 = lshr i32 21, 4
  %sub.s5_27fixp = sub i32 %4, %5, !taffo.info !341, !taffo.constinfo !109
  %6 = lshr i32 %3, 2, !taffo.info !141
  %7 = icmp slt i32 %sub.s5_27fixp, %6, !taffo.info !135
  br i1 %7, label %if.then, label %if.else, !taffo.info !113, !taffo.initweight !86

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %8 = shl i32 %f1.s7_25fixp, 2, !taffo.info !137
  %9 = lshr i32 21, 4
  %add.s5_27fixp = add i32 %8, %9, !taffo.info !343, !taffo.constinfo !109
  %10 = lshr i32 %1, 2, !taffo.info !141
  %11 = icmp sgt i32 %add.s5_27fixp, %10, !taffo.info !135
  br i1 %11, label %if.then5, label %if.else6, !taffo.info !113, !taffo.initweight !86

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !338
  ret i32 %retval.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i32 @_Z13compare_floatff.4.18_fixp(i32 noundef %f1.s7_25fixp, float noundef %f2) #5 !taffo.initweight !330 !taffo.funinfo !339 !taffo.equivalentChild !372 !taffo.sourceFunction !373 {
entry:
  %0 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %1 = fptoui float %0 to i32, !taffo.info !128
  %2 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %3 = fptoui float %2 to i32, !taffo.info !128
  %4 = shl i32 %f1.s7_25fixp, 2, !taffo.info !137
  %5 = lshr i32 21, 4
  %sub.s5_27fixp = sub i32 %4, %5, !taffo.info !341, !taffo.constinfo !109
  %6 = lshr i32 %3, 3, !taffo.info !128
  %7 = icmp slt i32 %sub.s5_27fixp, %6, !taffo.info !135
  br i1 %7, label %if.then, label %if.else, !taffo.info !113, !taffo.initweight !86

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %8 = shl i32 %f1.s7_25fixp, 2, !taffo.info !137
  %9 = lshr i32 21, 4
  %add.s5_27fixp = add i32 %8, %9, !taffo.info !343, !taffo.constinfo !109
  %10 = lshr i32 %1, 3, !taffo.info !128
  %11 = icmp sgt i32 %add.s5_27fixp, %10, !taffo.info !135
  br i1 %11, label %if.then5, label %if.else6, !taffo.info !113, !taffo.initweight !86

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !338
  ret i32 %retval.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i32 @_Z13compare_floatff.7.15_fixp(i32 noundef %f1.s5_27fixp, float noundef %f2) #5 !taffo.initweight !330 !taffo.funinfo !374 !taffo.equivalentChild !375 !taffo.sourceFunction !376 {
entry:
  %0 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %1 = fptoui float %0 to i32, !taffo.info !128
  %2 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %3 = fptoui float %2 to i32, !taffo.info !128
  %4 = shl i32 %f1.s5_27fixp, 1, !taffo.info !123
  %5 = lshr i32 21, 3
  %sub.s4_28fixp = sub i32 %4, %5, !taffo.info !377, !taffo.constinfo !109
  %6 = lshr i32 %3, 2, !taffo.info !128
  %7 = icmp slt i32 %sub.s4_28fixp, %6, !taffo.info !126
  br i1 %7, label %if.then, label %if.else, !taffo.info !113, !taffo.initweight !86

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %8 = shl i32 %f1.s5_27fixp, 1, !taffo.info !123
  %9 = lshr i32 21, 3
  %add.s4_28fixp = add i32 %8, %9, !taffo.info !379, !taffo.constinfo !109
  %10 = lshr i32 %1, 2, !taffo.info !128
  %11 = icmp sgt i32 %add.s4_28fixp, %10, !taffo.info !126
  br i1 %11, label %if.then5, label %if.else6, !taffo.info !113, !taffo.initweight !86

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !338
  ret i32 %retval.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i32 @_Z13compare_floatff.6.16_fixp(i32 noundef %f1.s5_27fixp, float noundef %f2) #5 !taffo.initweight !330 !taffo.funinfo !331 !taffo.equivalentChild !381 !taffo.sourceFunction !382 {
entry:
  %0 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %1 = fptoui float %0 to i32, !taffo.info !128
  %2 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %3 = fptoui float %2 to i32, !taffo.info !128
  %4 = lshr i32 21, 4
  %sub.s5_27fixp = sub i32 %f1.s5_27fixp, %4, !taffo.info !334, !taffo.constinfo !109
  %5 = lshr i32 %3, 3, !taffo.info !128
  %6 = icmp slt i32 %sub.s5_27fixp, %5, !taffo.info !135
  br i1 %6, label %if.then, label %if.else, !taffo.info !113, !taffo.initweight !86

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %7 = lshr i32 21, 4
  %add.s5_27fixp = add i32 %f1.s5_27fixp, %7, !taffo.info !336, !taffo.constinfo !109
  %8 = lshr i32 %1, 3, !taffo.info !128
  %9 = icmp sgt i32 %add.s5_27fixp, %8, !taffo.info !135
  br i1 %9, label %if.then5, label %if.else6, !taffo.info !113, !taffo.initweight !86

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !338
  ret i32 %retval.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @_Z9fftSinCosfPfS_.11_fixp(i32 noundef %x.u22_10fixp, float* noundef %s, float* noundef %c) #5 !taffo.initweight !320 !taffo.funinfo !383 !taffo.sourceFunction !322 {
entry:
  %x.addr.s23_9fixp = alloca i32, align 4, !taffo.info !386
  %0 = lshr i32 %x.u22_10fixp, 1, !taffo.info !384
  store i32 %0, i32* %x.addr.s23_9fixp, align 4, !taffo.info !72
  call void @_Z10manual_sinPfS_.8.19_fixp(i32* %x.addr.s23_9fixp, float* %s), !taffo.info !72, !taffo.constinfo !310
  call void @_Z10manual_cosPfS_.9.20_fixp(i32* %x.addr.s23_9fixp, float* %c), !taffo.info !72, !taffo.constinfo !310
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @_Z10manual_cosPfS_.9.20_fixp(i32* noundef %x_f.s23_9fixp, float* noundef %res) #5 !taffo.initweight !323 !taffo.funinfo !389 !taffo.start !70 !taffo.sourceFunction !390 {
entry:
  %s23_9fixp = load i32, i32* %x_f.s23_9fixp, align 4, !taffo.info !386, !taffo.target !74
  %0 = lshr i32 0, 23
  %1 = icmp slt i32 %s23_9fixp, %0, !taffo.info !391, !taffo.target !74
  br i1 %1, label %if.then, label %if.end, !taffo.info !120, !taffo.initweight !86, !taffo.target !74

if.then:                                          ; preds = %entry
  %fneg.s23_9fixp = sub i32 0, %s23_9fixp, !taffo.info !392, !taffo.target !74
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %x.0.s23_9fixp = phi i32 [ %fneg.s23_9fixp, %if.then ], [ %s23_9fixp, %entry ], !taffo.info !394
  %2 = call i32 @_Z13compare_floatff.7.15.31_fixp(i32 %x.0.s23_9fixp, float 0x3FF921FB60000000), !taffo.info !391, !taffo.constinfo !127, !taffo.target !74
  %cmp2.flt = icmp sle i32 0, %2, !taffo.info !391, !taffo.initweight !86, !taffo.target !74
  br i1 %cmp2.flt, label %if.then3, label %if.end7, !taffo.info !120, !taffo.initweight !80, !taffo.target !74

if.then3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then3
  %x.1.s23_9fixp = phi i32 [ %x.0.s23_9fixp, %if.then3 ], [ %sub.s23_9fixp, %do.cond ], !taffo.info !394
  %3 = lshr i32 1686629705, 21
  %sub.s23_9fixp = sub i32 %x.1.s23_9fixp, %3, !taffo.info !396, !taffo.constinfo !132, !taffo.target !74
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = call i32 @_Z13compare_floatff.6.16.32_fixp(i32 %sub.s23_9fixp, float 0x3FF921FB60000000), !taffo.info !391, !taffo.constinfo !127, !taffo.target !74
  %cmp6.flt = icmp sle i32 0, %4, !taffo.info !391, !taffo.initweight !86, !taffo.target !74
  br i1 %cmp6.flt, label %do.body, label %do.end, !llvm.loop !398, !taffo.info !120, !taffo.initweight !80, !taffo.target !74

do.end:                                           ; preds = %do.cond
  br label %if.end7

if.end7:                                          ; preds = %if.end, %do.end
  %x.2.s23_9fixp = phi i32 [ %sub.s23_9fixp, %do.end ], [ %x.0.s23_9fixp, %if.end ], !taffo.info !399
  %5 = call i32 @_Z13compare_floatff.5.17.33_fixp(i32 %x.2.s23_9fixp, float 0x400921FB60000000), !taffo.info !391, !taffo.constinfo !140, !taffo.target !74
  %cmp9.flt = icmp sle i32 0, %5, !taffo.info !391, !taffo.initweight !86, !taffo.target !74
  br i1 %cmp9.flt, label %land.lhs.true, label %if.end41, !taffo.info !120, !taffo.initweight !80, !taffo.target !74

land.lhs.true:                                    ; preds = %if.end7
  %6 = call i32 @_Z13compare_floatff.4.18.34_fixp(i32 %x.2.s23_9fixp, float 0x3FF921FB60000000), !taffo.info !391, !taffo.constinfo !127, !taffo.target !74
  %cmp11.flt = icmp eq i32 -1, %6, !taffo.info !391, !taffo.initweight !86, !taffo.target !74
  br i1 %cmp11.flt, label %if.then12, label %if.end41, !taffo.info !120, !taffo.initweight !80, !taffo.target !74

if.then12:                                        ; preds = %land.lhs.true
  %7 = lshr i32 1686629711, 20
  %sub14.s23_9fixp = sub i32 %x.2.s23_9fixp, %7, !taffo.info !401, !taffo.constinfo !146, !taffo.target !74
  %8 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %9 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %10 = mul i64 %8, %9, !taffo.info !403, !taffo.target !74
  %mul.u43_21fixp = shl i64 %10, 3, !taffo.info !406, !taffo.target !74
  %div.s43_21fixp = sdiv i64 %mul.u43_21fixp, 2, !taffo.info !408, !taffo.constinfo !39, !taffo.target !74
  %11 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %12 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %13 = mul i64 %11, %12, !taffo.info !403, !taffo.target !74
  %mul16.u43_21fixp = shl i64 %13, 3, !taffo.info !406, !taffo.target !74
  %14 = zext i64 %mul16.u43_21fixp to i128, !taffo.info !406, !taffo.target !74
  %15 = shl i128 %14, 3, !taffo.info !406, !taffo.target !74
  %16 = zext i64 12 to i128
  %17 = sdiv i128 %15, %16, !taffo.info !411, !taffo.constinfo !159, !taffo.target !74
  %div17.s40_24fixp = trunc i128 %17 to i64, !taffo.info !414, !taffo.target !74
  %18 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %19 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %20 = mul i64 %18, %19, !taffo.info !403, !taffo.target !74
  %mul18.u43_21fixp = shl i64 %20, 3, !taffo.info !406, !taffo.target !74
  %21 = zext i64 %mul18.u43_21fixp to i128, !taffo.info !406, !taffo.target !74
  %22 = shl i128 %21, 4, !taffo.info !406, !taffo.target !74
  %23 = zext i64 30 to i128
  %24 = sdiv i128 %22, %23, !taffo.info !416, !taffo.constinfo !166, !taffo.target !74
  %div19.s39_25fixp = trunc i128 %24 to i64, !taffo.info !419, !taffo.target !74
  %25 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %26 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %27 = mul i64 %25, %26, !taffo.info !403, !taffo.target !74
  %mul20.u43_21fixp = shl i64 %27, 3, !taffo.info !406, !taffo.target !74
  %28 = zext i64 %mul20.u43_21fixp to i128, !taffo.info !406, !taffo.target !74
  %29 = shl i128 %28, 5, !taffo.info !406, !taffo.target !74
  %30 = zext i64 56 to i128
  %31 = sdiv i128 %29, %30, !taffo.info !421, !taffo.constinfo !173, !taffo.target !74
  %div21.s38_26fixp = trunc i128 %31 to i64, !taffo.info !424, !taffo.target !74
  %32 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %33 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %34 = mul i64 %32, %33, !taffo.info !403, !taffo.target !74
  %mul22.u43_21fixp = shl i64 %34, 3, !taffo.info !406, !taffo.target !74
  %35 = zext i64 %mul22.u43_21fixp to i128, !taffo.info !406, !taffo.target !74
  %36 = shl i128 %35, 6, !taffo.info !406, !taffo.target !74
  %37 = zext i64 90 to i128
  %38 = sdiv i128 %36, %37, !taffo.info !426, !taffo.constinfo !180, !taffo.target !74
  %div23.s37_27fixp = trunc i128 %38 to i64, !taffo.info !429, !taffo.target !74
  %39 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %40 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %41 = mul i64 %39, %40, !taffo.info !403, !taffo.target !74
  %mul24.u43_21fixp = shl i64 %41, 3, !taffo.info !406, !taffo.target !74
  %42 = zext i64 %mul24.u43_21fixp to i128, !taffo.info !406, !taffo.target !74
  %43 = shl i128 %42, 7, !taffo.info !406, !taffo.target !74
  %44 = zext i64 132 to i128
  %45 = sdiv i128 %43, %44, !taffo.info !430, !taffo.constinfo !187, !taffo.target !74
  %div25.s36_28fixp = trunc i128 %45 to i64, !taffo.info !433, !taffo.target !74
  %46 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %47 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %48 = mul i64 %46, %47, !taffo.info !403, !taffo.target !74
  %mul26.u43_21fixp = shl i64 %48, 3, !taffo.info !406, !taffo.target !74
  %49 = zext i64 %mul26.u43_21fixp to i128, !taffo.info !406, !taffo.target !74
  %50 = shl i128 %49, 7, !taffo.info !406, !taffo.target !74
  %51 = zext i64 182 to i128
  %52 = sdiv i128 %50, %51, !taffo.info !434, !taffo.constinfo !194, !taffo.target !74
  %div27.s36_28fixp = trunc i128 %52 to i64, !taffo.info !436, !taffo.target !74
  %53 = lshr i64 -9223372036854775808, 35
  %sub28.s36_28fixp = sub i64 %53, %div27.s36_28fixp, !taffo.info !437, !taffo.constinfo !201, !taffo.target !74
  %54 = sitofp i64 %sub28.s36_28fixp to float, !taffo.info !437, !taffo.target !74
  %55 = fdiv float %54, 0x41B0000000000000, !taffo.info !437, !taffo.constinfo !201, !taffo.target !74
  %neg.s36_28fixp = sub i64 0, %div25.s36_28fixp, !taffo.info !439, !taffo.target !74
  %56 = sitofp i64 %neg.s36_28fixp to float, !taffo.info !439, !taffo.target !74
  %57 = fdiv float %56, 0x41B0000000000000, !taffo.info !439, !taffo.target !74
  %"1flp7" = call float @llvm.fmuladd.f32(float %57, float %55, float 1.000000e+00), !taffo.info !441, !taffo.constinfo !444, !taffo.target !74
  %neg31.s37_27fixp = sub i64 0, %div23.s37_27fixp, !taffo.info !445, !taffo.target !74
  %58 = sitofp i64 %neg31.s37_27fixp to float, !taffo.info !445, !taffo.target !74
  %59 = fdiv float %58, 0x41A0000000000000, !taffo.info !445, !taffo.target !74
  %"1flp9" = call float @llvm.fmuladd.f32(float %59, float %"1flp7", float 1.000000e+00), !taffo.info !447, !taffo.constinfo !444, !taffo.target !74
  %neg33.s38_26fixp = sub i64 0, %div21.s38_26fixp, !taffo.info !450, !taffo.target !74
  %60 = sitofp i64 %neg33.s38_26fixp to float, !taffo.info !450, !taffo.target !74
  %61 = fdiv float %60, 0x4190000000000000, !taffo.info !450, !taffo.target !74
  %"1flp11" = call float @llvm.fmuladd.f32(float %61, float %"1flp9", float 1.000000e+00), !taffo.info !452, !taffo.constinfo !444, !taffo.target !74
  %neg35.s39_25fixp = sub i64 0, %div19.s39_25fixp, !taffo.info !455, !taffo.target !74
  %62 = sitofp i64 %neg35.s39_25fixp to float, !taffo.info !455, !taffo.target !74
  %63 = fdiv float %62, 0x4180000000000000, !taffo.info !455, !taffo.target !74
  %"1flp13" = call float @llvm.fmuladd.f32(float %63, float %"1flp11", float 1.000000e+00), !taffo.info !457, !taffo.constinfo !444, !taffo.target !74
  %neg37.s40_24fixp = sub i64 0, %div17.s40_24fixp, !taffo.info !460, !taffo.target !74
  %64 = sitofp i64 %neg37.s40_24fixp to float, !taffo.info !460, !taffo.target !74
  %65 = fdiv float %64, 0x4170000000000000, !taffo.info !460, !taffo.target !74
  %"1flp14" = call float @llvm.fmuladd.f32(float %65, float %"1flp13", float 1.000000e+00), !taffo.info !462, !taffo.constinfo !444, !taffo.target !74
  %neg39.s43_21fixp = sub i64 0, %div.s43_21fixp, !taffo.info !465, !taffo.target !74
  %66 = sitofp i64 %neg39.s43_21fixp to float, !taffo.info !465, !taffo.target !74
  %67 = fdiv float %66, 0x4140000000000000, !taffo.info !465, !taffo.target !74
  %"1flp15" = call float @llvm.fmuladd.f32(float %67, float %"1flp14", float 1.000000e+00), !taffo.info !467, !taffo.constinfo !444, !taffo.target !74
  %mul40.1flp = fmul float -1.000000e+00, %"1flp15", !taffo.info !469, !taffo.constinfo !242, !taffo.target !74
  store float %mul40.1flp, float* %res, align 4, !taffo.info !120, !taffo.target !74
  br label %return

if.end41:                                         ; preds = %land.lhs.true, %if.end7
  %68 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %69 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %70 = mul i64 %68, %69, !taffo.info !471, !taffo.target !74
  %mul42.u43_21fixp = shl i64 %70, 3, !taffo.info !473, !taffo.target !74
  %div43.s43_21fixp = sdiv i64 %mul42.u43_21fixp, 2, !taffo.info !474, !taffo.constinfo !39, !taffo.target !74
  %71 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %72 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %73 = mul i64 %71, %72, !taffo.info !471, !taffo.target !74
  %mul44.u43_21fixp = shl i64 %73, 3, !taffo.info !473, !taffo.target !74
  %74 = zext i64 %mul44.u43_21fixp to i128, !taffo.info !473, !taffo.target !74
  %75 = shl i128 %74, 3, !taffo.info !473, !taffo.target !74
  %76 = zext i64 12 to i128
  %77 = sdiv i128 %75, %76, !taffo.info !476, !taffo.constinfo !159, !taffo.target !74
  %div45.s40_24fixp = trunc i128 %77 to i64, !taffo.info !478, !taffo.target !74
  %78 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %79 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %80 = mul i64 %78, %79, !taffo.info !471, !taffo.target !74
  %mul46.u43_21fixp = shl i64 %80, 3, !taffo.info !473, !taffo.target !74
  %81 = zext i64 %mul46.u43_21fixp to i128, !taffo.info !473, !taffo.target !74
  %82 = shl i128 %81, 4, !taffo.info !473, !taffo.target !74
  %83 = zext i64 30 to i128
  %84 = sdiv i128 %82, %83, !taffo.info !479, !taffo.constinfo !166, !taffo.target !74
  %div47.s39_25fixp = trunc i128 %84 to i64, !taffo.info !481, !taffo.target !74
  %85 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %86 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %87 = mul i64 %85, %86, !taffo.info !471, !taffo.target !74
  %mul48.u43_21fixp = shl i64 %87, 3, !taffo.info !473, !taffo.target !74
  %88 = zext i64 %mul48.u43_21fixp to i128, !taffo.info !473, !taffo.target !74
  %89 = shl i128 %88, 5, !taffo.info !473, !taffo.target !74
  %90 = zext i64 56 to i128
  %91 = sdiv i128 %89, %90, !taffo.info !482, !taffo.constinfo !173, !taffo.target !74
  %div49.s38_26fixp = trunc i128 %91 to i64, !taffo.info !484, !taffo.target !74
  %92 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %93 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %94 = mul i64 %92, %93, !taffo.info !471, !taffo.target !74
  %mul50.u43_21fixp = shl i64 %94, 3, !taffo.info !473, !taffo.target !74
  %95 = zext i64 %mul50.u43_21fixp to i128, !taffo.info !473, !taffo.target !74
  %96 = shl i128 %95, 6, !taffo.info !473, !taffo.target !74
  %97 = zext i64 90 to i128
  %98 = sdiv i128 %96, %97, !taffo.info !485, !taffo.constinfo !180, !taffo.target !74
  %div51.s37_27fixp = trunc i128 %98 to i64, !taffo.info !487, !taffo.target !74
  %99 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %100 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %101 = mul i64 %99, %100, !taffo.info !471, !taffo.target !74
  %mul52.u43_21fixp = shl i64 %101, 3, !taffo.info !473, !taffo.target !74
  %102 = zext i64 %mul52.u43_21fixp to i128, !taffo.info !473, !taffo.target !74
  %103 = shl i128 %102, 7, !taffo.info !473, !taffo.target !74
  %104 = zext i64 132 to i128
  %105 = sdiv i128 %103, %104, !taffo.info !488, !taffo.constinfo !187, !taffo.target !74
  %div53.s36_28fixp = trunc i128 %105 to i64, !taffo.info !490, !taffo.target !74
  %106 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %107 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %108 = mul i64 %106, %107, !taffo.info !471, !taffo.target !74
  %mul54.u43_21fixp = shl i64 %108, 3, !taffo.info !473, !taffo.target !74
  %109 = zext i64 %mul54.u43_21fixp to i128, !taffo.info !473, !taffo.target !74
  %110 = shl i128 %109, 7, !taffo.info !473, !taffo.target !74
  %111 = zext i64 182 to i128
  %112 = sdiv i128 %110, %111, !taffo.info !491, !taffo.constinfo !194, !taffo.target !74
  %div55.s36_28fixp = trunc i128 %112 to i64, !taffo.info !493, !taffo.target !74
  %113 = lshr i64 -9223372036854775808, 35
  %sub56.s36_28fixp = sub i64 %113, %div55.s36_28fixp, !taffo.info !494, !taffo.constinfo !201, !taffo.target !74
  %114 = sitofp i64 %sub56.s36_28fixp to float, !taffo.info !494, !taffo.target !74
  %115 = fdiv float %114, 0x41B0000000000000, !taffo.info !494, !taffo.constinfo !201, !taffo.target !74
  %neg58.s36_28fixp = sub i64 0, %div53.s36_28fixp, !taffo.info !496, !taffo.target !74
  %116 = sitofp i64 %neg58.s36_28fixp to float, !taffo.info !496, !taffo.target !74
  %117 = fdiv float %116, 0x41B0000000000000, !taffo.info !496, !taffo.target !74
  %"1flp" = call float @llvm.fmuladd.f32(float %117, float %115, float 1.000000e+00), !taffo.info !498, !taffo.constinfo !444, !taffo.target !74
  %neg60.s37_27fixp = sub i64 0, %div51.s37_27fixp, !taffo.info !501, !taffo.target !74
  %118 = sitofp i64 %neg60.s37_27fixp to float, !taffo.info !501, !taffo.target !74
  %119 = fdiv float %118, 0x41A0000000000000, !taffo.info !501, !taffo.target !74
  %"1flp5" = call float @llvm.fmuladd.f32(float %119, float %"1flp", float 1.000000e+00), !taffo.info !503, !taffo.constinfo !444, !taffo.target !74
  %neg62.s38_26fixp = sub i64 0, %div49.s38_26fixp, !taffo.info !506, !taffo.target !74
  %120 = sitofp i64 %neg62.s38_26fixp to float, !taffo.info !506, !taffo.target !74
  %121 = fdiv float %120, 0x4190000000000000, !taffo.info !506, !taffo.target !74
  %"1flp6" = call float @llvm.fmuladd.f32(float %121, float %"1flp5", float 1.000000e+00), !taffo.info !508, !taffo.constinfo !444, !taffo.target !74
  %neg64.s39_25fixp = sub i64 0, %div47.s39_25fixp, !taffo.info !511, !taffo.target !74
  %122 = sitofp i64 %neg64.s39_25fixp to float, !taffo.info !511, !taffo.target !74
  %123 = fdiv float %122, 0x4180000000000000, !taffo.info !511, !taffo.target !74
  %"1flp8" = call float @llvm.fmuladd.f32(float %123, float %"1flp6", float 1.000000e+00), !taffo.info !513, !taffo.constinfo !444, !taffo.target !74
  %neg66.s40_24fixp = sub i64 0, %div45.s40_24fixp, !taffo.info !516, !taffo.target !74
  %124 = sitofp i64 %neg66.s40_24fixp to float, !taffo.info !516, !taffo.target !74
  %125 = fdiv float %124, 0x4170000000000000, !taffo.info !516, !taffo.target !74
  %"1flp10" = call float @llvm.fmuladd.f32(float %125, float %"1flp8", float 1.000000e+00), !taffo.info !518, !taffo.constinfo !444, !taffo.target !74
  %neg68.s43_21fixp = sub i64 0, %div43.s43_21fixp, !taffo.info !521, !taffo.target !74
  %126 = sitofp i64 %neg68.s43_21fixp to float, !taffo.info !521, !taffo.target !74
  %127 = fdiv float %126, 0x4140000000000000, !taffo.info !521, !taffo.target !74
  %"1flp12" = call float @llvm.fmuladd.f32(float %127, float %"1flp10", float 1.000000e+00), !taffo.info !523, !taffo.constinfo !444, !taffo.target !74
  store float %"1flp12", float* %res, align 4, !taffo.info !120, !taffo.target !74
  br label %return

return:                                           ; preds = %if.end41, %if.then12
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @_Z10manual_sinPfS_.8.19_fixp(i32* noundef %x_f.s23_9fixp, float* noundef %res) #5 !taffo.initweight !323 !taffo.funinfo !389 !taffo.sourceFunction !526 {
entry:
  %s23_9fixp = load i32, i32* %x_f.s23_9fixp, align 4, !taffo.info !527
  %0 = lshr i32 1686629705, 21
  %sub.s23_9fixp = sub i32 %s23_9fixp, %0, !taffo.info !528, !taffo.constinfo !132
  %conv1.s22_10fixp = shl i32 %sub.s23_9fixp, 1, !taffo.info !530, !taffo.constinfo !132
  %1 = ashr i32 %conv1.s22_10fixp, 1, !taffo.info !530, !taffo.constinfo !132
  store i32 %1, i32* %x_f.s23_9fixp, align 4, !taffo.info !72
  call void @_Z10manual_cosPfS_.14.30_fixp(i32* %x_f.s23_9fixp, float* %res), !taffo.info !72, !taffo.constinfo !310
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i32 @_Z13compare_floatff.5.17.33_fixp(i32 noundef %f1.s23_9fixp, float noundef %f2) #5 !taffo.initweight !330 !taffo.funinfo !533 !taffo.sourceFunction !534 {
entry:
  %0 = fmul float 0x41C0000000000000, %f2, !taffo.info !141
  %1 = fptoui float %0 to i32, !taffo.info !141
  %2 = fmul float 0x41C0000000000000, %f2, !taffo.info !141
  %3 = fptoui float %2 to i32, !taffo.info !141
  %4 = lshr i32 21, 22
  %sub.s23_9fixp = sub i32 %f1.s23_9fixp, %4, !taffo.info !535, !taffo.constinfo !109
  %5 = lshr i32 %3, 20, !taffo.info !141
  %6 = icmp slt i32 %sub.s23_9fixp, %5, !taffo.info !391
  br i1 %6, label %if.then, label %if.else, !taffo.info !113, !taffo.initweight !86

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %7 = lshr i32 21, 22
  %add.s23_9fixp = add i32 %f1.s23_9fixp, %7, !taffo.info !537, !taffo.constinfo !109
  %8 = lshr i32 %1, 20, !taffo.info !141
  %9 = icmp sgt i32 %add.s23_9fixp, %8, !taffo.info !391
  br i1 %9, label %if.then5, label %if.else6, !taffo.info !113, !taffo.initweight !86

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !338
  ret i32 %retval.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i32 @_Z13compare_floatff.7.15.31_fixp(i32 noundef %f1.s23_9fixp, float noundef %f2) #5 !taffo.initweight !330 !taffo.funinfo !539 !taffo.sourceFunction !540 {
entry:
  %0 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %1 = fptoui float %0 to i32, !taffo.info !128
  %2 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %3 = fptoui float %2 to i32, !taffo.info !128
  %4 = lshr i32 21, 22
  %sub.s23_9fixp = sub i32 %f1.s23_9fixp, %4, !taffo.info !541, !taffo.constinfo !109
  %5 = lshr i32 %3, 21, !taffo.info !128
  %6 = icmp slt i32 %sub.s23_9fixp, %5, !taffo.info !391
  br i1 %6, label %if.then, label %if.else, !taffo.info !113, !taffo.initweight !86

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %7 = lshr i32 21, 22
  %add.s23_9fixp = add i32 %f1.s23_9fixp, %7, !taffo.info !543, !taffo.constinfo !109
  %8 = lshr i32 %1, 21, !taffo.info !128
  %9 = icmp sgt i32 %add.s23_9fixp, %8, !taffo.info !391
  br i1 %9, label %if.then5, label %if.else6, !taffo.info !113, !taffo.initweight !86

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !338
  ret i32 %retval.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i32 @_Z13compare_floatff.4.18.34_fixp(i32 noundef %f1.s23_9fixp, float noundef %f2) #5 !taffo.initweight !330 !taffo.funinfo !545 !taffo.sourceFunction !546 {
entry:
  %0 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %1 = fptoui float %0 to i32, !taffo.info !128
  %2 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %3 = fptoui float %2 to i32, !taffo.info !128
  %4 = lshr i32 21, 22
  %sub.s23_9fixp = sub i32 %f1.s23_9fixp, %4, !taffo.info !535, !taffo.constinfo !109
  %5 = lshr i32 %3, 21, !taffo.info !128
  %6 = icmp slt i32 %sub.s23_9fixp, %5, !taffo.info !391
  br i1 %6, label %if.then, label %if.else, !taffo.info !113, !taffo.initweight !86

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %7 = lshr i32 21, 22
  %add.s23_9fixp = add i32 %f1.s23_9fixp, %7, !taffo.info !537, !taffo.constinfo !109
  %8 = lshr i32 %1, 21, !taffo.info !128
  %9 = icmp sgt i32 %add.s23_9fixp, %8, !taffo.info !391
  br i1 %9, label %if.then5, label %if.else6, !taffo.info !113, !taffo.initweight !86

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !338
  ret i32 %retval.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i32 @_Z13compare_floatff.6.16.32_fixp(i32 noundef %f1.s23_9fixp, float noundef %f2) #5 !taffo.initweight !330 !taffo.funinfo !547 !taffo.sourceFunction !548 {
entry:
  %0 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %1 = fptoui float %0 to i32, !taffo.info !128
  %2 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %3 = fptoui float %2 to i32, !taffo.info !128
  %4 = lshr i32 21, 22
  %sub.s23_9fixp = sub i32 %f1.s23_9fixp, %4, !taffo.info !549, !taffo.constinfo !109
  %5 = lshr i32 %3, 21, !taffo.info !128
  %6 = icmp slt i32 %sub.s23_9fixp, %5, !taffo.info !391
  br i1 %6, label %if.then, label %if.else, !taffo.info !113, !taffo.initweight !86

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %7 = lshr i32 21, 22
  %add.s23_9fixp = add i32 %f1.s23_9fixp, %7, !taffo.info !551, !taffo.constinfo !109
  %8 = lshr i32 %1, 21, !taffo.info !128
  %9 = icmp sgt i32 %add.s23_9fixp, %8, !taffo.info !391
  br i1 %9, label %if.then5, label %if.else6, !taffo.info !113, !taffo.initweight !86

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !338
  ret i32 %retval.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @_Z10manual_cosPfS_.14.30_fixp(i32* noundef %x_f.s23_9fixp, float* noundef %res) #5 !taffo.initweight !553 !taffo.funinfo !389 !taffo.start !70 !taffo.sourceFunction !554 {
entry:
  %s23_9fixp = load i32, i32* %x_f.s23_9fixp, align 4, !taffo.info !386, !taffo.target !74
  %0 = lshr i32 0, 23
  %1 = icmp slt i32 %s23_9fixp, %0, !taffo.info !391, !taffo.target !74
  br i1 %1, label %if.then, label %if.end, !taffo.info !120, !taffo.initweight !86, !taffo.target !74

if.then:                                          ; preds = %entry
  %fneg.s23_9fixp = sub i32 0, %s23_9fixp, !taffo.info !392, !taffo.target !74
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %x.0.s23_9fixp = phi i32 [ %fneg.s23_9fixp, %if.then ], [ %s23_9fixp, %entry ], !taffo.info !394
  %2 = call i32 @_Z13compare_floatff.7.26.39_fixp(i32 %x.0.s23_9fixp, float 0x3FF921FB60000000), !taffo.info !391, !taffo.constinfo !127, !taffo.target !74
  %cmp2.flt = icmp sle i32 0, %2, !taffo.info !391, !taffo.initweight !86, !taffo.target !74
  br i1 %cmp2.flt, label %if.then3, label %if.end7, !taffo.info !120, !taffo.initweight !80, !taffo.target !74

if.then3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then3
  %x.1.s23_9fixp = phi i32 [ %x.0.s23_9fixp, %if.then3 ], [ %sub.s23_9fixp, %do.cond ], !taffo.info !394
  %3 = lshr i32 1686629705, 21
  %sub.s23_9fixp = sub i32 %x.1.s23_9fixp, %3, !taffo.info !396, !taffo.constinfo !132, !taffo.target !74
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %4 = call i32 @_Z13compare_floatff.6.27.40_fixp(i32 %sub.s23_9fixp, float 0x3FF921FB60000000), !taffo.info !391, !taffo.constinfo !127, !taffo.target !74
  %cmp6.flt = icmp sle i32 0, %4, !taffo.info !391, !taffo.initweight !86, !taffo.target !74
  br i1 %cmp6.flt, label %do.body, label %do.end, !llvm.loop !555, !taffo.info !120, !taffo.initweight !80, !taffo.target !74

do.end:                                           ; preds = %do.cond
  br label %if.end7

if.end7:                                          ; preds = %if.end, %do.end
  %x.2.s23_9fixp = phi i32 [ %sub.s23_9fixp, %do.end ], [ %x.0.s23_9fixp, %if.end ], !taffo.info !399
  %5 = call i32 @_Z13compare_floatff.5.28.41_fixp(i32 %x.2.s23_9fixp, float 0x400921FB60000000), !taffo.info !391, !taffo.constinfo !140, !taffo.target !74
  %cmp9.flt = icmp sle i32 0, %5, !taffo.info !391, !taffo.initweight !86, !taffo.target !74
  br i1 %cmp9.flt, label %land.lhs.true, label %if.end41, !taffo.info !120, !taffo.initweight !80, !taffo.target !74

land.lhs.true:                                    ; preds = %if.end7
  %6 = call i32 @_Z13compare_floatff.4.29.42_fixp(i32 %x.2.s23_9fixp, float 0x3FF921FB60000000), !taffo.info !391, !taffo.constinfo !127, !taffo.target !74
  %cmp11.flt = icmp eq i32 -1, %6, !taffo.info !391, !taffo.initweight !86, !taffo.target !74
  br i1 %cmp11.flt, label %if.then12, label %if.end41, !taffo.info !120, !taffo.initweight !80, !taffo.target !74

if.then12:                                        ; preds = %land.lhs.true
  %7 = lshr i32 1686629711, 20
  %sub14.s23_9fixp = sub i32 %x.2.s23_9fixp, %7, !taffo.info !401, !taffo.constinfo !146, !taffo.target !74
  %8 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %9 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %10 = mul i64 %8, %9, !taffo.info !403, !taffo.target !74
  %mul.u43_21fixp = shl i64 %10, 3, !taffo.info !406, !taffo.target !74
  %div.s43_21fixp = sdiv i64 %mul.u43_21fixp, 2, !taffo.info !408, !taffo.constinfo !39, !taffo.target !74
  %11 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %12 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %13 = mul i64 %11, %12, !taffo.info !403, !taffo.target !74
  %mul16.u43_21fixp = shl i64 %13, 3, !taffo.info !406, !taffo.target !74
  %14 = zext i64 %mul16.u43_21fixp to i128, !taffo.info !406, !taffo.target !74
  %15 = shl i128 %14, 3, !taffo.info !406, !taffo.target !74
  %16 = zext i64 12 to i128
  %17 = sdiv i128 %15, %16, !taffo.info !411, !taffo.constinfo !159, !taffo.target !74
  %div17.s40_24fixp = trunc i128 %17 to i64, !taffo.info !414, !taffo.target !74
  %18 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %19 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %20 = mul i64 %18, %19, !taffo.info !403, !taffo.target !74
  %mul18.u43_21fixp = shl i64 %20, 3, !taffo.info !406, !taffo.target !74
  %21 = zext i64 %mul18.u43_21fixp to i128, !taffo.info !406, !taffo.target !74
  %22 = shl i128 %21, 4, !taffo.info !406, !taffo.target !74
  %23 = zext i64 30 to i128
  %24 = sdiv i128 %22, %23, !taffo.info !416, !taffo.constinfo !166, !taffo.target !74
  %div19.s39_25fixp = trunc i128 %24 to i64, !taffo.info !419, !taffo.target !74
  %25 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %26 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %27 = mul i64 %25, %26, !taffo.info !403, !taffo.target !74
  %mul20.u43_21fixp = shl i64 %27, 3, !taffo.info !406, !taffo.target !74
  %28 = zext i64 %mul20.u43_21fixp to i128, !taffo.info !406, !taffo.target !74
  %29 = shl i128 %28, 5, !taffo.info !406, !taffo.target !74
  %30 = zext i64 56 to i128
  %31 = sdiv i128 %29, %30, !taffo.info !421, !taffo.constinfo !173, !taffo.target !74
  %div21.s38_26fixp = trunc i128 %31 to i64, !taffo.info !424, !taffo.target !74
  %32 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %33 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %34 = mul i64 %32, %33, !taffo.info !403, !taffo.target !74
  %mul22.u43_21fixp = shl i64 %34, 3, !taffo.info !406, !taffo.target !74
  %35 = zext i64 %mul22.u43_21fixp to i128, !taffo.info !406, !taffo.target !74
  %36 = shl i128 %35, 6, !taffo.info !406, !taffo.target !74
  %37 = zext i64 90 to i128
  %38 = sdiv i128 %36, %37, !taffo.info !426, !taffo.constinfo !180, !taffo.target !74
  %div23.s37_27fixp = trunc i128 %38 to i64, !taffo.info !429, !taffo.target !74
  %39 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %40 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %41 = mul i64 %39, %40, !taffo.info !403, !taffo.target !74
  %mul24.u43_21fixp = shl i64 %41, 3, !taffo.info !406, !taffo.target !74
  %42 = zext i64 %mul24.u43_21fixp to i128, !taffo.info !406, !taffo.target !74
  %43 = shl i128 %42, 7, !taffo.info !406, !taffo.target !74
  %44 = zext i64 132 to i128
  %45 = sdiv i128 %43, %44, !taffo.info !430, !taffo.constinfo !187, !taffo.target !74
  %div25.s36_28fixp = trunc i128 %45 to i64, !taffo.info !433, !taffo.target !74
  %46 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %47 = sext i32 %sub14.s23_9fixp to i64, !taffo.info !401, !taffo.target !74
  %48 = mul i64 %46, %47, !taffo.info !403, !taffo.target !74
  %mul26.u43_21fixp = shl i64 %48, 3, !taffo.info !406, !taffo.target !74
  %49 = zext i64 %mul26.u43_21fixp to i128, !taffo.info !406, !taffo.target !74
  %50 = shl i128 %49, 7, !taffo.info !406, !taffo.target !74
  %51 = zext i64 182 to i128
  %52 = sdiv i128 %50, %51, !taffo.info !434, !taffo.constinfo !194, !taffo.target !74
  %div27.s36_28fixp = trunc i128 %52 to i64, !taffo.info !436, !taffo.target !74
  %53 = lshr i64 -9223372036854775808, 35
  %sub28.s36_28fixp = sub i64 %53, %div27.s36_28fixp, !taffo.info !437, !taffo.constinfo !201, !taffo.target !74
  %54 = sitofp i64 %sub28.s36_28fixp to float, !taffo.info !437, !taffo.target !74
  %55 = fdiv float %54, 0x41B0000000000000, !taffo.info !437, !taffo.constinfo !201, !taffo.target !74
  %neg.s36_28fixp = sub i64 0, %div25.s36_28fixp, !taffo.info !439, !taffo.target !74
  %56 = sitofp i64 %neg.s36_28fixp to float, !taffo.info !439, !taffo.target !74
  %57 = fdiv float %56, 0x41B0000000000000, !taffo.info !439, !taffo.target !74
  %"1flp7" = call float @llvm.fmuladd.f32(float %57, float %55, float 1.000000e+00), !taffo.info !441, !taffo.constinfo !444, !taffo.target !74
  %neg31.s37_27fixp = sub i64 0, %div23.s37_27fixp, !taffo.info !445, !taffo.target !74
  %58 = sitofp i64 %neg31.s37_27fixp to float, !taffo.info !445, !taffo.target !74
  %59 = fdiv float %58, 0x41A0000000000000, !taffo.info !445, !taffo.target !74
  %"1flp9" = call float @llvm.fmuladd.f32(float %59, float %"1flp7", float 1.000000e+00), !taffo.info !447, !taffo.constinfo !444, !taffo.target !74
  %neg33.s38_26fixp = sub i64 0, %div21.s38_26fixp, !taffo.info !450, !taffo.target !74
  %60 = sitofp i64 %neg33.s38_26fixp to float, !taffo.info !450, !taffo.target !74
  %61 = fdiv float %60, 0x4190000000000000, !taffo.info !450, !taffo.target !74
  %"1flp11" = call float @llvm.fmuladd.f32(float %61, float %"1flp9", float 1.000000e+00), !taffo.info !452, !taffo.constinfo !444, !taffo.target !74
  %neg35.s39_25fixp = sub i64 0, %div19.s39_25fixp, !taffo.info !455, !taffo.target !74
  %62 = sitofp i64 %neg35.s39_25fixp to float, !taffo.info !455, !taffo.target !74
  %63 = fdiv float %62, 0x4180000000000000, !taffo.info !455, !taffo.target !74
  %"1flp13" = call float @llvm.fmuladd.f32(float %63, float %"1flp11", float 1.000000e+00), !taffo.info !457, !taffo.constinfo !444, !taffo.target !74
  %neg37.s40_24fixp = sub i64 0, %div17.s40_24fixp, !taffo.info !460, !taffo.target !74
  %64 = sitofp i64 %neg37.s40_24fixp to float, !taffo.info !460, !taffo.target !74
  %65 = fdiv float %64, 0x4170000000000000, !taffo.info !460, !taffo.target !74
  %"1flp14" = call float @llvm.fmuladd.f32(float %65, float %"1flp13", float 1.000000e+00), !taffo.info !462, !taffo.constinfo !444, !taffo.target !74
  %neg39.s43_21fixp = sub i64 0, %div.s43_21fixp, !taffo.info !465, !taffo.target !74
  %66 = sitofp i64 %neg39.s43_21fixp to float, !taffo.info !465, !taffo.target !74
  %67 = fdiv float %66, 0x4140000000000000, !taffo.info !465, !taffo.target !74
  %"1flp15" = call float @llvm.fmuladd.f32(float %67, float %"1flp14", float 1.000000e+00), !taffo.info !467, !taffo.constinfo !444, !taffo.target !74
  %mul40.1flp = fmul float -1.000000e+00, %"1flp15", !taffo.info !469, !taffo.constinfo !242, !taffo.target !74
  store float %mul40.1flp, float* %res, align 4, !taffo.info !120, !taffo.target !74
  br label %return

if.end41:                                         ; preds = %land.lhs.true, %if.end7
  %68 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399
  %69 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399
  %70 = mul i64 %68, %69, !taffo.info !471, !taffo.target !74
  %mul42.u43_21fixp = shl i64 %70, 3, !taffo.info !473, !taffo.target !74
  %div43.s43_21fixp = sdiv i64 %mul42.u43_21fixp, 2, !taffo.info !474, !taffo.constinfo !39, !taffo.target !74
  %71 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %72 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %73 = mul i64 %71, %72, !taffo.info !471, !taffo.target !74
  %mul44.u43_21fixp = shl i64 %73, 3, !taffo.info !473, !taffo.target !74
  %74 = zext i64 %mul44.u43_21fixp to i128, !taffo.info !473, !taffo.target !74
  %75 = shl i128 %74, 3, !taffo.info !473, !taffo.target !74
  %76 = zext i64 12 to i128
  %77 = sdiv i128 %75, %76, !taffo.info !476, !taffo.constinfo !159, !taffo.target !74
  %div45.s40_24fixp = trunc i128 %77 to i64, !taffo.info !478, !taffo.target !74
  %78 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %79 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %80 = mul i64 %78, %79, !taffo.info !471, !taffo.target !74
  %mul46.u43_21fixp = shl i64 %80, 3, !taffo.info !473, !taffo.target !74
  %81 = zext i64 %mul46.u43_21fixp to i128, !taffo.info !473, !taffo.target !74
  %82 = shl i128 %81, 4, !taffo.info !473, !taffo.target !74
  %83 = zext i64 30 to i128
  %84 = sdiv i128 %82, %83, !taffo.info !479, !taffo.constinfo !166, !taffo.target !74
  %div47.s39_25fixp = trunc i128 %84 to i64, !taffo.info !481, !taffo.target !74
  %85 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399
  %86 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399
  %87 = mul i64 %85, %86, !taffo.info !471, !taffo.target !74
  %mul48.u43_21fixp = shl i64 %87, 3, !taffo.info !473, !taffo.target !74
  %88 = zext i64 %mul48.u43_21fixp to i128, !taffo.info !473, !taffo.target !74
  %89 = shl i128 %88, 5, !taffo.info !473, !taffo.target !74
  %90 = zext i64 56 to i128
  %91 = sdiv i128 %89, %90, !taffo.info !482, !taffo.constinfo !173, !taffo.target !74
  %div49.s38_26fixp = trunc i128 %91 to i64, !taffo.info !484, !taffo.target !74
  %92 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399
  %93 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399
  %94 = mul i64 %92, %93, !taffo.info !471, !taffo.target !74
  %mul50.u43_21fixp = shl i64 %94, 3, !taffo.info !473, !taffo.target !74
  %95 = zext i64 %mul50.u43_21fixp to i128, !taffo.info !473, !taffo.target !74
  %96 = shl i128 %95, 6, !taffo.info !473, !taffo.target !74
  %97 = zext i64 90 to i128
  %98 = sdiv i128 %96, %97, !taffo.info !485, !taffo.constinfo !180, !taffo.target !74
  %div51.s37_27fixp = trunc i128 %98 to i64, !taffo.info !487, !taffo.target !74
  %99 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %100 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %101 = mul i64 %99, %100, !taffo.info !471, !taffo.target !74
  %mul52.u43_21fixp = shl i64 %101, 3, !taffo.info !473, !taffo.target !74
  %102 = zext i64 %mul52.u43_21fixp to i128, !taffo.info !473, !taffo.target !74
  %103 = shl i128 %102, 7, !taffo.info !473, !taffo.target !74
  %104 = zext i64 132 to i128
  %105 = sdiv i128 %103, %104, !taffo.info !488, !taffo.constinfo !187, !taffo.target !74
  %div53.s36_28fixp = trunc i128 %105 to i64, !taffo.info !490, !taffo.target !74
  %106 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %107 = sext i32 %x.2.s23_9fixp to i64, !taffo.info !399, !taffo.target !74
  %108 = mul i64 %106, %107, !taffo.info !471, !taffo.target !74
  %mul54.u43_21fixp = shl i64 %108, 3, !taffo.info !473, !taffo.target !74
  %109 = zext i64 %mul54.u43_21fixp to i128, !taffo.info !473, !taffo.target !74
  %110 = shl i128 %109, 7, !taffo.info !473, !taffo.target !74
  %111 = zext i64 182 to i128
  %112 = sdiv i128 %110, %111, !taffo.info !491, !taffo.constinfo !194, !taffo.target !74
  %div55.s36_28fixp = trunc i128 %112 to i64, !taffo.info !493, !taffo.target !74
  %113 = lshr i64 -9223372036854775808, 35
  %sub56.s36_28fixp = sub i64 %113, %div55.s36_28fixp, !taffo.info !494, !taffo.constinfo !201, !taffo.target !74
  %114 = sitofp i64 %sub56.s36_28fixp to float, !taffo.info !494, !taffo.target !74
  %115 = fdiv float %114, 0x41B0000000000000, !taffo.info !494, !taffo.constinfo !201, !taffo.target !74
  %neg58.s36_28fixp = sub i64 0, %div53.s36_28fixp, !taffo.info !496, !taffo.target !74
  %116 = sitofp i64 %neg58.s36_28fixp to float, !taffo.info !496, !taffo.target !74
  %117 = fdiv float %116, 0x41B0000000000000, !taffo.info !496, !taffo.target !74
  %"1flp" = call float @llvm.fmuladd.f32(float %117, float %115, float 1.000000e+00), !taffo.info !498, !taffo.constinfo !444, !taffo.target !74
  %neg60.s37_27fixp = sub i64 0, %div51.s37_27fixp, !taffo.info !501, !taffo.target !74
  %118 = sitofp i64 %neg60.s37_27fixp to float, !taffo.info !501, !taffo.target !74
  %119 = fdiv float %118, 0x41A0000000000000, !taffo.info !501, !taffo.target !74
  %"1flp5" = call float @llvm.fmuladd.f32(float %119, float %"1flp", float 1.000000e+00), !taffo.info !503, !taffo.constinfo !444, !taffo.target !74
  %neg62.s38_26fixp = sub i64 0, %div49.s38_26fixp, !taffo.info !506, !taffo.target !74
  %120 = sitofp i64 %neg62.s38_26fixp to float, !taffo.info !506, !taffo.target !74
  %121 = fdiv float %120, 0x4190000000000000, !taffo.info !506, !taffo.target !74
  %"1flp6" = call float @llvm.fmuladd.f32(float %121, float %"1flp5", float 1.000000e+00), !taffo.info !508, !taffo.constinfo !444, !taffo.target !74
  %neg64.s39_25fixp = sub i64 0, %div47.s39_25fixp, !taffo.info !511, !taffo.target !74
  %122 = sitofp i64 %neg64.s39_25fixp to float, !taffo.info !511, !taffo.target !74
  %123 = fdiv float %122, 0x4180000000000000, !taffo.info !511, !taffo.target !74
  %"1flp8" = call float @llvm.fmuladd.f32(float %123, float %"1flp6", float 1.000000e+00), !taffo.info !513, !taffo.constinfo !444, !taffo.target !74
  %neg66.s40_24fixp = sub i64 0, %div45.s40_24fixp, !taffo.info !516, !taffo.target !74
  %124 = sitofp i64 %neg66.s40_24fixp to float, !taffo.info !516, !taffo.target !74
  %125 = fdiv float %124, 0x4170000000000000, !taffo.info !516, !taffo.target !74
  %"1flp10" = call float @llvm.fmuladd.f32(float %125, float %"1flp8", float 1.000000e+00), !taffo.info !518, !taffo.constinfo !444, !taffo.target !74
  %neg68.s43_21fixp = sub i64 0, %div43.s43_21fixp, !taffo.info !521, !taffo.target !74
  %126 = sitofp i64 %neg68.s43_21fixp to float, !taffo.info !521, !taffo.target !74
  %127 = fdiv float %126, 0x4140000000000000, !taffo.info !521, !taffo.target !74
  %"1flp12" = call float @llvm.fmuladd.f32(float %127, float %"1flp10", float 1.000000e+00), !taffo.info !523, !taffo.constinfo !444, !taffo.target !74
  store float %"1flp12", float* %res, align 4, !taffo.info !120, !taffo.target !74
  br label %return

return:                                           ; preds = %if.end41, %if.then12
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i32 @_Z13compare_floatff.7.26.39_fixp(i32 noundef %f1.s23_9fixp, float noundef %f2) #5 !taffo.initweight !330 !taffo.funinfo !539 !taffo.sourceFunction !556 {
entry:
  %0 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %1 = fptoui float %0 to i32, !taffo.info !128
  %2 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %3 = fptoui float %2 to i32, !taffo.info !128
  %4 = lshr i32 21, 22
  %sub.s23_9fixp = sub i32 %f1.s23_9fixp, %4, !taffo.info !541, !taffo.constinfo !109
  %5 = lshr i32 %3, 21, !taffo.info !128
  %6 = icmp slt i32 %sub.s23_9fixp, %5, !taffo.info !391
  br i1 %6, label %if.then, label %if.else, !taffo.info !113, !taffo.initweight !86

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %7 = lshr i32 21, 22
  %add.s23_9fixp = add i32 %f1.s23_9fixp, %7, !taffo.info !543, !taffo.constinfo !109
  %8 = lshr i32 %1, 21, !taffo.info !128
  %9 = icmp sgt i32 %add.s23_9fixp, %8, !taffo.info !391
  br i1 %9, label %if.then5, label %if.else6, !taffo.info !113, !taffo.initweight !86

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !338
  ret i32 %retval.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i32 @_Z13compare_floatff.5.28.41_fixp(i32 noundef %f1.s23_9fixp, float noundef %f2) #5 !taffo.initweight !330 !taffo.funinfo !533 !taffo.sourceFunction !557 {
entry:
  %0 = fmul float 0x41C0000000000000, %f2, !taffo.info !141
  %1 = fptoui float %0 to i32, !taffo.info !141
  %2 = fmul float 0x41C0000000000000, %f2, !taffo.info !141
  %3 = fptoui float %2 to i32, !taffo.info !141
  %4 = lshr i32 21, 22
  %sub.s23_9fixp = sub i32 %f1.s23_9fixp, %4, !taffo.info !535, !taffo.constinfo !109
  %5 = lshr i32 %3, 20, !taffo.info !141
  %6 = icmp slt i32 %sub.s23_9fixp, %5, !taffo.info !391
  br i1 %6, label %if.then, label %if.else, !taffo.info !113, !taffo.initweight !86

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %7 = lshr i32 21, 22
  %add.s23_9fixp = add i32 %f1.s23_9fixp, %7, !taffo.info !537, !taffo.constinfo !109
  %8 = lshr i32 %1, 20, !taffo.info !141
  %9 = icmp sgt i32 %add.s23_9fixp, %8, !taffo.info !391
  br i1 %9, label %if.then5, label %if.else6, !taffo.info !113, !taffo.initweight !86

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !338
  ret i32 %retval.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i32 @_Z13compare_floatff.4.29.42_fixp(i32 noundef %f1.s23_9fixp, float noundef %f2) #5 !taffo.initweight !330 !taffo.funinfo !545 !taffo.sourceFunction !558 {
entry:
  %0 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %1 = fptoui float %0 to i32, !taffo.info !128
  %2 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %3 = fptoui float %2 to i32, !taffo.info !128
  %4 = lshr i32 21, 22
  %sub.s23_9fixp = sub i32 %f1.s23_9fixp, %4, !taffo.info !535, !taffo.constinfo !109
  %5 = lshr i32 %3, 21, !taffo.info !128
  %6 = icmp slt i32 %sub.s23_9fixp, %5, !taffo.info !391
  br i1 %6, label %if.then, label %if.else, !taffo.info !113, !taffo.initweight !86

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %7 = lshr i32 21, 22
  %add.s23_9fixp = add i32 %f1.s23_9fixp, %7, !taffo.info !537, !taffo.constinfo !109
  %8 = lshr i32 %1, 21, !taffo.info !128
  %9 = icmp sgt i32 %add.s23_9fixp, %8, !taffo.info !391
  br i1 %9, label %if.then5, label %if.else6, !taffo.info !113, !taffo.initweight !86

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !338
  ret i32 %retval.0
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal noundef i32 @_Z13compare_floatff.6.27.40_fixp(i32 noundef %f1.s23_9fixp, float noundef %f2) #5 !taffo.initweight !330 !taffo.funinfo !547 !taffo.sourceFunction !559 {
entry:
  %0 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %1 = fptoui float %0 to i32, !taffo.info !128
  %2 = fmul float 0x41D0000000000000, %f2, !taffo.info !128
  %3 = fptoui float %2 to i32, !taffo.info !128
  %4 = lshr i32 21, 22
  %sub.s23_9fixp = sub i32 %f1.s23_9fixp, %4, !taffo.info !549, !taffo.constinfo !109
  %5 = lshr i32 %3, 21, !taffo.info !128
  %6 = icmp slt i32 %sub.s23_9fixp, %5, !taffo.info !391
  br i1 %6, label %if.then, label %if.else, !taffo.info !113, !taffo.initweight !86

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %7 = lshr i32 21, 22
  %add.s23_9fixp = add i32 %f1.s23_9fixp, %7, !taffo.info !551, !taffo.constinfo !109
  %8 = lshr i32 %1, 21, !taffo.info !128
  %9 = icmp sgt i32 %add.s23_9fixp, %8, !taffo.info !391
  br i1 %9, label %if.then5, label %if.else6, !taffo.info !113, !taffo.initweight !86

if.then5:                                         ; preds = %if.else
  br label %return

if.else6:                                         ; preds = %if.else
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 1, %if.then5 ], [ 0, %if.else6 ], !taffo.info !338
  ret i32 %retval.0
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline norecurse uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nocallback nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind allocsize(0) }

!llvm.ident = !{!5, !5, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10}

!0 = !{}
!1 = !{i1 false, !2, i1 false, i2 0}
!2 = !{double 0.000000e+00, double 1.210000e+02}
!3 = !{i1 false, !4, i1 false, i2 0}
!4 = !{double 0.000000e+00, double 3.200000e+01}
!5 = !{!"Ubuntu clang version 15.0.7"}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{i1 false}
!12 = !{i1 false, i1 false}
!13 = !{i1 false, i1 false, i1 false, i1 false}
!14 = !{i32 -1}
!15 = !{i32 0, i1 false}
!16 = !{i32 -1, i32 -1, i32 -1}
!17 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!18 = !{i32 -1, i32 -1}
!19 = !{i32 0, i1 false, i32 0, i1 false}
!20 = !{i1 false, i1 false, i1 false, i1 false, i1 false, i1 false}
!21 = !{i1 false, i1 false, i1 false, i1 false, i1 false}
!22 = !{!23, i1 false}
!23 = !{i1 false, !24, i1 false, i2 0}
!24 = !{double 0.000000e+00, double 0.000000e+00}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = !{i32 1, !29}
!29 = !{i1 false, !30, i1 false, i2 0}
!30 = !{double 1.024000e+03, double 1.024000e+03}
!31 = !{i1 false, !32, i1 false, i2 0}
!32 = !{double 0.000000e+00, double 1.000000e+00}
!33 = !{i1 false, !34, i1 false, i2 0}
!34 = !{double 5.120000e+02, double 1.024000e+03}
!35 = !{i1 false, !36, i1 false, i2 0}
!36 = !{double 1.000000e+00, double 1.000000e+00}
!37 = !{i1 false, !38, i1 false, i2 0}
!38 = !{double 5.120000e+02, double 5.120000e+02}
!39 = !{i1 false, !40}
!40 = !{i1 false, !41, i1 false, i2 0}
!41 = !{double 2.000000e+00, double 2.000000e+00}
!42 = distinct !{!42, !26}
!43 = !{i1 false, !44, i1 false, i2 0}
!44 = !{double 5.110000e+02, double 1.023000e+03}
!45 = !{i1 false, !35}
!46 = !{i1 false, !47, i1 false, i2 0}
!47 = !{double 0.000000e+00, double 2.400000e+01}
!48 = !{i1 false, !49, i1 false, i2 0}
!49 = !{double 0x3E60000000000000, double 5.000000e-01}
!50 = !{i1 false, !51, i1 false, i2 0}
!51 = !{double 4.990000e+02, double 1.023000e+03}
!52 = !{i1 false, !53, i1 false, i2 0}
!53 = !{double 4.990000e+02, double 0x408FF7FFFFF80000}
!54 = !{i1 false, !55, i1 false, i2 0}
!55 = !{double 0x3E60000000000000, double 2.500000e-01}
!56 = !{i1 false, !57}
!57 = !{i1 false, !58, i1 false, i2 0}
!58 = !{double 5.000000e-01, double 5.000000e-01}
!59 = !{i1 false, !60, i1 false, i2 0}
!60 = !{double 1.000000e+00, double 2.400000e+01}
!61 = distinct !{!61, !26}
!62 = !{i1 false, !63, i1 false, i2 0}
!63 = !{double 0.000000e+00, double 1.300000e+01}
!64 = !{void (i32*)* @_Z14calcFftIndicesPi.2, void (i32*)* @_Z14calcFftIndicesPi.2}
!65 = !{!29, i1 false}
!66 = distinct !{!66, !26}
!67 = distinct !{!67, !26}
!68 = !{i32 -1, i32 -1, i32 -1, i32 -1, i32 -1}
!69 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!70 = !{i1 true}
!71 = !{!72, !72}
!72 = !{i1 false, i1 false, i1 false, i2 1}
!73 = !{i32 0}
!74 = !{!"x"}
!75 = !{!"f"}
!76 = !{i1 false, !77, i1 false, i2 0}
!77 = !{double 0.000000e+00, double 2.560000e+02}
!78 = !{i1 false, !79, i1 false, i2 0}
!79 = !{double 0.000000e+00, double 2.550000e+02}
!80 = !{i32 4}
!81 = !{i32 1}
!82 = !{i32 2}
!83 = !{i1 false, !84, i1 false, i2 0}
!84 = !{double 1.000000e+00, double 2.560000e+02}
!85 = distinct !{!85, !26}
!86 = !{i32 3}
!87 = distinct !{!87, !26}
!88 = distinct !{null}
!89 = !{i1 false, !90, i1 false, i2 -2}
!90 = !{double 1.000000e+00, double 0x4150000000000000}
!91 = !{void (i32*)* @_Z14calcFftIndicesPi}
!92 = !{i1 false, i1 false, i1 false, i2 0}
!93 = !{!94, !95, i1 false, i2 -1}
!94 = !{!"fixp", i32 -32, i32 17}
!95 = !{double -1.000000e+04, double 1.000000e+04}
!96 = !{!94, i1 false, i1 false, i2 -1}
!97 = distinct !{!97, !26}
!98 = distinct !{!98, !26}
!99 = distinct !{!99, !26}
!100 = distinct !{!100, !26}
!101 = !{i32 -1, i32 -1, i32 -1, i32 -1}
!102 = !{i32 0, i1 false, i32 0, i1 false, i32 0, i1 false, i32 0, i1 false}
!103 = !{i32 2, i32 2}
!104 = !{i32 1, !105, i32 1, !105}
!105 = !{!106, !107, i1 false, i2 1}
!106 = !{!"fixp", i32 -32, i32 30}
!107 = !{double -1.000000e+00, double 1.000000e+00}
!108 = distinct !{null, null, null, null}
!109 = !{i1 false, !110}
!110 = !{i1 false, !111, i1 false, i2 0}
!111 = !{double 0x3E45798EE0000000, double 0x3E45798EE0000000}
!112 = !{!106, i1 false, i1 false, i2 1}
!113 = !{i1 false, !107, i1 false, i2 1}
!114 = distinct !{null, null, null, null}
!115 = !{!116, !117, i1 false, i2 1}
!116 = !{!"fixp", i32 -32, i32 28}
!117 = !{double 0.000000e+00, double 0x401921FB53C8D4F1}
!118 = !{!119, i1 false, i1 false, i2 1}
!119 = !{!"fixp", i32 32, i32 29}
!120 = !{i1 false, !117, i1 false, i2 1}
!121 = !{!116, !122, i1 false, i2 1}
!122 = !{double 0xC01921FB53C8D4F1, double -0.000000e+00}
!123 = !{!124, !125, i1 false, i2 1}
!124 = !{!"fixp", i32 -32, i32 27}
!125 = !{double 0xC01921FB53C8D4F1, double 0x401921FB53C8D4F1}
!126 = !{!116, i1 false, i1 false, i2 1}
!127 = !{i1 false, !128, i1 false}
!128 = !{i1 false, !129, i1 false, i2 0}
!129 = !{double 0x3FF921FB60000000, double 0x3FF921FB60000000}
!130 = !{!124, !131, i1 false, i2 1}
!131 = !{double 0xC01F6A7A40000000, double 0x4012D97C80000000}
!132 = !{i1 false, !133}
!133 = !{i1 false, !134, i1 false, i2 0}
!134 = !{double 0x3FF921FB52713C02, double 0x3FF921FB52713C02}
!135 = !{!124, i1 false, i1 false, i2 1}
!136 = distinct !{!136, !26}
!137 = !{!138, !139, i1 false, i2 1}
!138 = !{!"fixp", i32 -32, i32 25}
!139 = !{double 0xC01F6A7A40000000, double 0x401921FB53C8D4F1}
!140 = !{i1 false, !141, i1 false}
!141 = !{i1 false, !142, i1 false, i2 0}
!142 = !{double 0x400921FB60000000, double 0x400921FB60000000}
!143 = !{!124, !139, i1 false, i2 1}
!144 = !{!124, !145, i1 false, i2 1}
!145 = !{double 0xC025FDBC00000000, double 0x400921FB60000000}
!146 = !{i1 false, !147}
!147 = !{i1 false, !148, i1 false, i2 0}
!148 = !{double 0x400921FB53C8D4F1, double 0x400921FB53C8D4F1}
!149 = !{!150, !151, i1 false, i2 1}
!150 = !{!"fixp", i32 64, i32 54}
!151 = !{double 0.000000e+00, double 0x405E39C552210000}
!152 = !{!153, !151, i1 false, i2 1}
!153 = !{!"fixp", i32 32, i32 25}
!154 = !{!138, !155, i1 false, i2 1}
!155 = !{double 0.000000e+00, double 0x404E39C552210000}
!156 = !{!157, !158, i1 false, i2 1}
!157 = !{!"fixp", i32 -64, i32 27}
!158 = !{double 0.000000e+00, double 0x402426838C160000}
!159 = !{i1 false, !160}
!160 = !{i1 false, !161, i1 false, i2 0}
!161 = !{double 1.200000e+01, double 1.200000e+01}
!162 = !{!124, !158, i1 false, i2 1}
!163 = !{!164, !165, i1 false, i2 1}
!164 = !{!"fixp", i32 -64, i32 28}
!165 = !{double 0.000000e+00, double 0x40101ECFA344CCCD}
!166 = !{i1 false, !167}
!167 = !{i1 false, !168, i1 false, i2 0}
!168 = !{double 3.000000e+01, double 3.000000e+01}
!169 = !{!116, !165, i1 false, i2 1}
!170 = !{!171, !172, i1 false, i2 1}
!171 = !{!"fixp", i32 -64, i32 29}
!172 = !{double 0.000000e+00, double 0x4001459553809249}
!173 = !{i1 false, !174}
!174 = !{i1 false, !175, i1 false, i2 0}
!175 = !{double 5.600000e+01, double 5.600000e+01}
!176 = !{!177, !172, i1 false, i2 1}
!177 = !{!"fixp", i32 -32, i32 29}
!178 = !{!171, !179, i1 false, i2 1}
!179 = !{double 0.000000e+00, double 0x3FF57E6A2F066666}
!180 = !{i1 false, !181}
!181 = !{i1 false, !182, i1 false, i2 0}
!182 = !{double 9.000000e+01, double 9.000000e+01}
!183 = !{!177, !179, i1 false, i2 1}
!184 = !{!185, !186, i1 false, i2 1}
!185 = !{!"fixp", i32 -64, i32 30}
!186 = !{double 0.000000e+00, double 0x3FED4F4AFA4E8BA3}
!187 = !{i1 false, !188}
!188 = !{i1 false, !189, i1 false, i2 0}
!189 = !{double 1.320000e+02, double 1.320000e+02}
!190 = !{!106, !186, i1 false, i2 1}
!191 = !{!192, !193, i1 false, i2 1}
!192 = !{!"fixp", i32 64, i32 31}
!193 = !{double 0.000000e+00, double 0x3FE541F2DCED02D0}
!194 = !{i1 false, !195}
!195 = !{i1 false, !196, i1 false, i2 0}
!196 = !{double 1.820000e+02, double 1.820000e+02}
!197 = !{!198, !193, i1 false, i2 1}
!198 = !{!"fixp", i32 32, i32 31}
!199 = !{!198, !200, i1 false, i2 1}
!200 = !{double 0x3FD57C1A4625FA60, double 1.000000e+00}
!201 = !{!35, i1 false}
!202 = !{!106, !203, i1 false, i2 1}
!203 = !{double 0xBFED4F4AFA4E8BA3, double -0.000000e+00}
!204 = !{!205, !206, i1 false, i2 1}
!205 = !{!"fixp", i32 -64, i32 61}
!206 = !{double 0x3FB585A82D8BA2E8, double 1.000000e+00}
!207 = !{!106, !206, i1 false, i2 1}
!208 = !{!177, !209, i1 false, i2 1}
!209 = !{double 0xBFF57E6A2F066666, double -0.000000e+00}
!210 = !{!211, !212, i1 false, i2 1}
!211 = !{!"fixp", i32 -64, i32 59}
!212 = !{double 0xBFD5F9A8BC199998, double 1.000000e+00}
!213 = !{!177, !212, i1 false, i2 1}
!214 = !{!177, !215, i1 false, i2 1}
!215 = !{double 0xC001459553809249, double -0.000000e+00}
!216 = !{!217, !218, i1 false, i2 1}
!217 = !{!"fixp", i32 -64, i32 58}
!218 = !{double 0xBFF28B2AA7012492, double 0x3FFBDC6A8394B563}
!219 = !{!116, !218, i1 false, i2 1}
!220 = !{!116, !221, i1 false, i2 1}
!221 = !{double 0xC0101ECFA344CCCD, double -0.000000e+00}
!222 = !{!223, !224, i1 false, i2 1}
!223 = !{!"fixp", i32 -64, i32 56}
!224 = !{double 0xC01812115B3ABD0B, double 0x4016AEE03CAB96AC}
!225 = !{!116, !224, i1 false, i2 1}
!226 = !{!138, !227, i1 false, i2 1}
!227 = !{double 0xC02426838C160000, double -0.000000e+00}
!228 = !{!229, !230, i1 false, i2 1}
!229 = !{!"fixp", i32 -64, i32 53}
!230 = !{double 0xC04C11321ECBDF21, double 0x404ED08681EF6376}
!231 = !{!138, !230, i1 false, i2 1}
!232 = !{!138, !233, i1 false, i2 1}
!233 = !{double 0xC04E39C552210000, double -0.000000e+00}
!234 = !{!235, !236, i1 false, i2 1}
!235 = !{!"fixp", i32 -64, i32 50}
!236 = !{double 0xC0AD191F8C3A0F49, double 0x40AA84CAB00B8C16}
!237 = !{!238, !236, i1 false, i2 1}
!238 = !{!"fixp", i32 -32, i32 19}
!239 = !{!240, !241, i1 false, i2 1}
!240 = !{!"fixp", i32 -64, i32 19}
!241 = !{double 0xC0AA84CAB00B8C16, double 0x40AD191F8C3A0F49}
!242 = !{!243, i1 false}
!243 = !{i1 false, !244, i1 false, i2 0}
!244 = !{double -1.000000e+00, double -1.000000e+00}
!245 = !{!238, !241, i1 false, i2 1}
!246 = !{!247, !248, i1 false, i2 1}
!247 = !{!"fixp", i32 64, i32 50}
!248 = !{double 0.000000e+00, double 0x404ED7AF27BB0880}
!249 = !{!250, !248, i1 false, i2 1}
!250 = !{!"fixp", i32 32, i32 26}
!251 = !{!252, !253, i1 false, i2 1}
!252 = !{!"fixp", i32 -32, i32 26}
!253 = !{double 0.000000e+00, double 0x403ED7AF27BB0880}
!254 = !{!235, !248, i1 false, i2 1}
!255 = !{!138, !248, i1 false, i2 1}
!256 = !{!164, !257, i1 false, i2 1}
!257 = !{double 0.000000e+00, double 0x40148FCA1A7CB055}
!258 = !{!116, !257, i1 false, i2 1}
!259 = !{!171, !260, i1 false, i2 1}
!260 = !{double 0.000000e+00, double 0x4000730815308D11}
!261 = !{!177, !260, i1 false, i2 1}
!262 = !{!171, !263, i1 false, i2 1}
!263 = !{double 0.000000e+00, double 0x3FF19FD1CD8F7292}
!264 = !{!177, !263, i1 false, i2 1}
!265 = !{!185, !266, i1 false, i2 1}
!266 = !{double 0.000000e+00, double 0x3FE5EEB57196116C}
!267 = !{!106, !266, i1 false, i2 1}
!268 = !{!185, !269, i1 false, i2 1}
!269 = !{double 0.000000e+00, double 0x3FDDE86BC96F8C1F}
!270 = !{!106, !269, i1 false, i2 1}
!271 = !{!192, !272, i1 false, i2 1}
!272 = !{double 0.000000e+00, double 0x3FD5B1023813032A}
!273 = !{!198, !272, i1 false, i2 1}
!274 = !{!198, !275, i1 false, i2 1}
!275 = !{double 0x3FE5277EE3F67E6B, double 1.000000e+00}
!276 = !{!106, !277, i1 false, i2 1}
!277 = !{double 0xBFDDE86BC96F8C1F, double -0.000000e+00}
!278 = !{!205, !279, i1 false, i2 1}
!279 = !{double 0x3FE10BCA1B4839F0, double 1.000000e+00}
!280 = !{!106, !279, i1 false, i2 1}
!281 = !{!106, !282, i1 false, i2 1}
!282 = !{double 0xBFE5EEB57196116C, double -0.000000e+00}
!283 = !{!284, !285, i1 false, i2 1}
!284 = !{!"fixp", i32 -64, i32 60}
!285 = !{double 0x3FD422951CD3DD28, double 1.000000e+00}
!286 = !{!106, !285, i1 false, i2 1}
!287 = !{!177, !288, i1 false, i2 1}
!288 = !{double 0xBFF19FD1CD8F7292, double -0.000000e+00}
!289 = !{!211, !290, i1 false, i2 1}
!290 = !{double 0xBFB9FD1CD8F72920, double 1.000000e+00}
!291 = !{!177, !290, i1 false, i2 1}
!292 = !{!177, !293, i1 false, i2 1}
!293 = !{double 0xC000730815308D11, double -0.000000e+00}
!294 = !{!217, !295, i1 false, i2 1}
!295 = !{double 0xBFF0E6102A611A22, double 0x3FF356FEA729030D}
!296 = !{!116, !295, i1 false, i2 1}
!297 = !{!116, !298, i1 false, i2 1}
!298 = !{double 0xC0148FCA1A7CB055, double -0.000000e+00}
!299 = !{!223, !300, i1 false, i2 1}
!300 = !{double 0xC014DA8C1F3C55EA, double 0x4019B771D9F9C70D}
!301 = !{!116, !300, i1 false, i2 1}
!302 = !{!252, !303, i1 false, i2 1}
!303 = !{double 0xC03ED7AF27BB0880, double -0.000000e+00}
!304 = !{!305, !306, i1 false, i2 1}
!305 = !{!"fixp", i32 -64, i32 54}
!306 = !{double 0xC068A950046F3273, double 0x40643971DFCCF632}
!307 = !{!308, !306, i1 false, i2 1}
!308 = !{!"fixp", i32 -32, i32 23}
!309 = distinct !{null, null}
!310 = !{i1 false, i1 false, i1 false}
!311 = !{i32 2, i32 -1, i32 -1}
!312 = !{i32 1, !72, i32 0, i1 false, i32 0, i1 false}
!313 = distinct !{null, null}
!314 = !{i32 1, !89}
!315 = !{i32 5}
!316 = !{i32 6}
!317 = !{i32 7}
!318 = distinct !{!318, !26}
!319 = distinct !{!319, !26}
!320 = !{i32 2, i32 1, i32 1}
!321 = !{i32 1, !72, i32 1, !72, i32 1, !72}
!322 = !{void (float, float*, float*)* @_Z9fftSinCosfPfS_}
!323 = !{i32 1, i32 2}
!324 = !{i32 1, !72, i32 1, !72}
!325 = distinct !{null}
!326 = !{void (float*, float*)* @_Z10manual_sinPfS_}
!327 = distinct !{null}
!328 = !{void (float*, float*)* @_Z10manual_cosPfS_}
!329 = distinct !{!329, !26}
!330 = !{i32 2, i32 -1}
!331 = !{i32 1, !130, i32 1, !128}
!332 = distinct !{null, null, null, null}
!333 = !{i32 (float, float)* @_Z13compare_floatff}
!334 = !{!124, !335, i1 false, i2 1}
!335 = !{double 0xC01F6A7A40ABCC77, double 0x4012D97C7F543389}
!336 = !{!124, !337, i1 false, i2 1}
!337 = !{double 0xC01F6A7A3F543389, double 0x4012D97C80ABCC77}
!338 = !{i1 false, !107, i1 false, i2 0}
!339 = !{i32 1, !137, i32 1, !128}
!340 = distinct !{null, null, null, null}
!341 = !{!124, !342, i1 false, i2 1}
!342 = !{double 0xC01F6A7A40ABCC77, double 0x401921FB531D087A}
!343 = !{!124, !344, i1 false, i2 1}
!344 = !{double 0xC01F6A7A3F543389, double 0x401921FB5474A168}
!345 = !{i32 -1, i32 2, i32 2}
!346 = !{i32 0, i1 false, i32 2, !71, i32 2, !71}
!347 = !{void (i32*, %struct.Complex*, %struct.Complex*)* @_Z23radix2DitCooleyTykeyFftPiP7ComplexS1_}
!348 = !{!349, !350, i1 false, i2 1}
!349 = !{!"float", i32 1, double 0x500939ABD6A33C8C}
!350 = !{double 0xD0093987F8C02F87, double 0x500939ABD6A33C8C}
!351 = !{i1 false, !352, i1 false, i2 0}
!352 = !{double 2.000000e+00, double 4.000000e+00}
!353 = !{i1 false, !354, i1 false, i2 0}
!354 = !{double 0.000000e+00, double 2.000000e+00}
!355 = !{i1 false, !24, i1 false, i2 -2}
!356 = !{i1 false, !357, i1 false, i2 -2}
!357 = !{double 5.000000e-01, double 0x4140000000000000}
!358 = !{i1 false, !359, i1 false, i2 -2}
!359 = !{double 2.000000e+00, double 0x4150000040000000}
!360 = !{i1 false, !90, i1 false, i2 0}
!361 = !{i1 false, !359, i1 false, i2 0}
!362 = !{!349, i1 false, i1 false, i2 1}
!363 = distinct !{!363, !26}
!364 = distinct !{!364, !26}
!365 = !{i1 false, !366, i1 false, i2 0}
!366 = !{double 4.000000e+00, double 4.000000e+00}
!367 = distinct !{!367, !26}
!368 = distinct !{!368, !26}
!369 = !{i32 1, !137, i32 1, !141}
!370 = distinct !{null}
!371 = distinct !{null}
!372 = distinct !{null}
!373 = distinct !{null}
!374 = !{i32 1, !123, i32 1, !128}
!375 = distinct !{null}
!376 = distinct !{null}
!377 = !{!116, !378, i1 false, i2 1}
!378 = !{double 0xC01921FB5474A168, double 0x401921FB531D087A}
!379 = !{!116, !380, i1 false, i2 1}
!380 = !{double 0xC01921FB531D087A, double 0x401921FB5474A168}
!381 = distinct !{null}
!382 = distinct !{null}
!383 = !{i32 1, !384, i32 1, !348, i32 1, !348}
!384 = !{!385, !357, i1 false, i2 1}
!385 = !{!"fixp", i32 32, i32 10}
!386 = !{!387, !388, i1 false, i2 1}
!387 = !{!"fixp", i32 -32, i32 9}
!388 = !{double 0xBFF121FB60000000, double 0x4140000000000000}
!389 = !{i32 1, !386, i32 1, !348}
!390 = distinct !{null}
!391 = !{!387, i1 false, i1 false, i2 1}
!392 = !{!387, !393, i1 false, i2 1}
!393 = !{double 0xC140000000000000, double 0x3FF121FB60000000}
!394 = !{!387, !395, i1 false, i2 1}
!395 = !{double 0xC140000000000000, double 0x4140000000000000}
!396 = !{!387, !397, i1 false, i2 1}
!397 = !{double 0xC1400000E0000000, double 0x413FFFFE80000000}
!398 = distinct !{!398, !26}
!399 = !{!387, !400, i1 false, i2 1}
!400 = !{double 0xC1400000E0000000, double 0x4140000000000000}
!401 = !{!387, !402, i1 false, i2 1}
!402 = !{double 0xC140000280000000, double 0x413FFFFCE0000000}
!403 = !{!404, !405, i1 false, i2 1}
!404 = !{!"fixp", i32 64, i32 18}
!405 = !{double 0.000000e+00, double 0x4290000500006400}
!406 = !{!407, !405, i1 false, i2 1}
!407 = !{!"fixp", i32 64, i32 21}
!408 = !{!409, !410, i1 false, i2 1}
!409 = !{!"fixp", i32 -64, i32 21}
!410 = !{double 0.000000e+00, double 0x4280000500006400}
!411 = !{!412, !413, i1 false, i2 1}
!412 = !{!"fixp", i32 -128, i32 24}
!413 = !{double 0.000000e+00, double 0x4255555C00008555}
!414 = !{!415, !413, i1 false, i2 1}
!415 = !{!"fixp", i32 -64, i32 24}
!416 = !{!417, !418, i1 false, i2 1}
!417 = !{!"fixp", i32 -128, i32 25}
!418 = !{double 0.000000e+00, double 0x424111166666D111}
!419 = !{!420, !418, i1 false, i2 1}
!420 = !{!"fixp", i32 -64, i32 25}
!421 = !{!422, !423, i1 false, i2 1}
!422 = !{!"fixp", i32 -128, i32 26}
!423 = !{double 0.000000e+00, double 0x4232492A49250492}
!424 = !{!425, !423, i1 false, i2 1}
!425 = !{!"fixp", i32 -64, i32 26}
!426 = !{!427, !428, i1 false, i2 1}
!427 = !{!"fixp", i32 -128, i32 27}
!428 = !{double 0.000000e+00, double 0x4226C1733333C16C}
!429 = !{!157, !428, i1 false, i2 1}
!430 = !{!431, !432, i1 false, i2 1}
!431 = !{!"fixp", i32 -128, i32 28}
!432 = !{double 0.000000e+00, double 0x421F07CBA2E97C1F}
!433 = !{!164, !432, i1 false, i2 1}
!434 = !{!431, !435, i1 false, i2 1}
!435 = !{double 0.000000e+00, double 0x4216816F1EF27BC8}
!436 = !{!164, !435, i1 false, i2 1}
!437 = !{!164, !438, i1 false, i2 1}
!438 = !{double 0xC216816F1EEE7BC8, double 1.000000e+00}
!439 = !{!164, !440, i1 false, i2 1}
!440 = !{double 0xC21F07CBA2E97C1F, double -0.000000e+00}
!441 = !{!442, !443, i1 false, i2 1}
!442 = !{!"float", i32 1, double 0x4445D2DF2DF23097}
!443 = !{double 0xC21F07CBA2E57C1F, double 0x4445D2DF2DF23097}
!444 = !{i1 false, i1 false, !35, i1 false}
!445 = !{!157, !446, i1 false, i2 1}
!446 = !{double 0xC226C1733333C16C, double -0.000000e+00}
!447 = !{!448, !449, i1 false, i2 1}
!448 = !{!"float", i32 1, double 0x467F09CFA4C215D3}
!449 = !{double 0xC67F09CFA4C215D3, double 0x445610F2B9D6AB5B}
!450 = !{!425, !451, i1 false, i2 1}
!451 = !{double 0xC232492A49250492, double -0.000000e+00}
!452 = !{!453, !454, i1 false, i2 1}
!453 = !{!"float", i32 1, double 0x48C1BC7C322FD8BE}
!454 = !{double 0xC69937F8B5DEECF6, double 0x48C1BC7C322FD8BE}
!455 = !{!420, !456, i1 false, i2 1}
!456 = !{double 0xC24111166666D111, double -0.000000e+00}
!457 = !{!458, !459, i1 false, i2 1}
!458 = !{!"float", i32 1, double 0x4B12EB350DF67F3B}
!459 = !{double 0xCB12EB350DF67F3B, double 0x48EAE66707DAF293}
!460 = !{!415, !461, i1 false, i2 1}
!461 = !{double 0xC255555C00008555, double -0.000000e+00}
!462 = !{!463, !464, i1 false, i2 1}
!463 = !{!"float", i32 1, double 0x4D7939A3F49F6272}
!464 = !{double 0xCB51EEF4F53D336F, double 0x4D7939A3F49F6272}
!465 = !{!409, !466, i1 false, i2 1}
!466 = !{double 0xC280000500006400, double -0.000000e+00}
!467 = !{!349, !468, i1 false, i2 1}
!468 = !{double 0xD00939ABD6A33C8C, double 0x4DE1EEFA8FEA3028}
!469 = !{!349, !470, i1 false, i2 1}
!470 = !{double 0xCDE1EEFA8FEA3028, double 0x500939ABD6A33C8C}
!471 = !{!404, !472, i1 false, i2 1}
!472 = !{double 0.000000e+00, double 0x42900001C0000C40}
!473 = !{!407, !472, i1 false, i2 1}
!474 = !{!409, !475, i1 false, i2 1}
!475 = !{double 0.000000e+00, double 0x42800001C0000C40}
!476 = !{!412, !477, i1 false, i2 1}
!477 = !{double 0.000000e+00, double 0x42555557AAAABB00}
!478 = !{!415, !477, i1 false, i2 1}
!479 = !{!417, !480, i1 false, i2 1}
!480 = !{double 0.000000e+00, double 0x42411112EEEEFC00}
!481 = !{!420, !480, i1 false, i2 1}
!482 = !{!422, !483, i1 false, i2 1}
!483 = !{double 0.000000e+00, double 0x4232492692493292}
!484 = !{!425, !483, i1 false, i2 1}
!485 = !{!427, !486, i1 false, i2 1}
!486 = !{double 0.000000e+00, double 0x4226C16E93E95000}
!487 = !{!157, !486, i1 false, i2 1}
!488 = !{!431, !489, i1 false, i2 1}
!489 = !{double 0.000000e+00, double 0x421F07C555556D17}
!490 = !{!164, !489, i1 false, i2 1}
!491 = !{!431, !492, i1 false, i2 1}
!492 = !{double 0.000000e+00, double 0x4216816A8CA8DBC8}
!493 = !{!164, !492, i1 false, i2 1}
!494 = !{!164, !495, i1 false, i2 1}
!495 = !{double 0xC216816A8CA4DBC8, double 1.000000e+00}
!496 = !{!164, !497, i1 false, i2 1}
!497 = !{double 0xC21F07C555556D17, double -0.000000e+00}
!498 = !{!499, !500, i1 false, i2 1}
!499 = !{!"float", i32 1, double 0x4445D2D6504A4252}
!500 = !{double 0xC21F07C555516D17, double 0x4445D2D6504A4252}
!501 = !{!157, !502, i1 false, i2 1}
!502 = !{double 0xC226C16E93E95000, double -0.000000e+00}
!503 = !{!504, !505, i1 false, i2 1}
!504 = !{!"float", i32 1, double 0x467F09BCBACF4F60}
!505 = !{double 0xC67F09BCBACF4F60, double 0x445610E9C2F6D40A}
!506 = !{!425, !507, i1 false, i2 1}
!507 = !{double 0xC232492692493292, double -0.000000e+00}
!508 = !{!509, !510, i1 false, i2 1}
!509 = !{!"float", i32 1, double 0x48C1BC6DC9124FC1}
!510 = !{double 0xC69937E957C9ABB9, double 0x48C1BC6DC9124FC1}
!511 = !{!420, !512, i1 false, i2 1}
!512 = !{double 0xC2411112EEEEFC00, double -0.000000e+00}
!513 = !{!514, !515, i1 false, i2 1}
!514 = !{!"float", i32 1, double 0x4B12EB21D72065AE}
!515 = !{double 0xCB12EB21D72065AE, double 0x48EAE6512CB26B57}
!516 = !{!415, !517, i1 false, i2 1}
!517 = !{double 0xC2555557AAAABB00, double -0.000000e+00}
!518 = !{!519, !520, i1 false, i2 1}
!519 = !{!"float", i32 1, double 0x4D79398536758A42}
!520 = !{double 0xCB51EEE2BE9795E2, double 0x4D79398536758A42}
!521 = !{!409, !522, i1 false, i2 1}
!522 = !{double 0xC2800001C0000C40, double -0.000000e+00}
!523 = !{!524, !525, i1 false, i2 1}
!524 = !{!"float", i32 1, double 0x50093987F8C02F87}
!525 = !{double 0xD0093987F8C02F87, double 0x4DE1EEE4B4B87075}
!526 = distinct !{null}
!527 = !{!387, !357, i1 false, i2 1}
!528 = !{!387, !529, i1 false, i2 1}
!529 = !{double 0xBFF121FB52713C02, double 0x413FFFFE6DE04AD9}
!530 = !{!531, !532, i1 false, i2 1}
!531 = !{!"fixp", i32 -32, i32 10}
!532 = !{double 0xBFF121FB60000000, double 0x413FFFFE80000000}
!533 = !{i32 1, !399, i32 1, !141}
!534 = distinct !{null}
!535 = !{!387, !536, i1 false, i2 1}
!536 = !{double 0xC1400000E0000015, double 0x413FFFFFFFFFFFD5}
!537 = !{!387, !538, i1 false, i2 1}
!538 = !{double 0xC1400000DFFFFFEB, double 0x4140000000000015}
!539 = !{i32 1, !394, i32 1, !128}
!540 = distinct !{null}
!541 = !{!387, !542, i1 false, i2 1}
!542 = !{double 0xC140000000000015, double 0x413FFFFFFFFFFFD5}
!543 = !{!387, !544, i1 false, i2 1}
!544 = !{double 0xC13FFFFFFFFFFFD5, double 0x4140000000000015}
!545 = !{i32 1, !399, i32 1, !128}
!546 = distinct !{null}
!547 = !{i32 1, !396, i32 1, !128}
!548 = distinct !{null}
!549 = !{!387, !550, i1 false, i2 1}
!550 = !{double 0xC1400000E0000015, double 0x413FFFFE7FFFFFD5}
!551 = !{!387, !552, i1 false, i2 1}
!552 = !{double 0xC1400000DFFFFFEB, double 0x413FFFFE8000002B}
!553 = !{i32 4, i32 5}
!554 = distinct !{null}
!555 = distinct !{!555, !26}
!556 = distinct !{null}
!557 = distinct !{null}
!558 = distinct !{null}
!559 = distinct !{null}
