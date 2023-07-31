; ModuleID = '/tmp/tmp.4WTsqR8K4k/test.ll.4.taffotmp.ll'
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
define dso_local void @_Z9fftSinCosfPfS_(float noundef %x, float* noundef %s, float* noundef %c) #5 !taffo.initweight !103 !taffo.funinfo !104 !taffo.equivalentChild !105 {
entry:
  %conv = fpext float %x to double, !taffo.info !72, !taffo.initweight !82
  %mul = fmul double 0xC01921FB54442D18, %conv, !taffo.info !72, !taffo.initweight !86, !taffo.constinfo !106
  %call = call double @sin(double noundef %mul) #3, !taffo.info !72, !taffo.initweight !80, !taffo.constinfo !12
  %conv4 = fptrunc double %call to float, !taffo.info !72, !taffo.initweight !109
  store float %conv4, float* %s, align 4, !taffo.info !72
  %conv5 = fpext float %x to double, !taffo.info !72, !taffo.initweight !82
  %mul6 = fmul double 0xC01921FB54442D18, %conv5, !taffo.info !72, !taffo.initweight !86, !taffo.constinfo !106
  %call7 = call double @cos(double noundef %mul6) #3, !taffo.info !72, !taffo.initweight !80, !taffo.constinfo !12
  %conv8 = fptrunc double %call7 to float, !taffo.info !72, !taffo.initweight !109
  store float %conv8, float* %c, align 4, !taffo.info !72
  ret void
}

; Function Attrs: nounwind
declare !taffo.initweight !14 !taffo.funinfo !15 double @sin(double noundef) #2

; Function Attrs: nounwind
declare !taffo.initweight !14 !taffo.funinfo !15 double @cos(double noundef) #2

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @_Z14calcFftIndicesPi.2(i32* noundef %indices) #5 !taffo.initweight !82 !taffo.funinfo !110 !taffo.sourceFunction !91 {
entry:
  %call = call noundef float @_Z11manual_log2f(float noundef 1.024000e+03), !taffo.constinfo !65
  %conv = fptosi float %call to i32
  %arrayidx = getelementptr inbounds i32, i32* %indices, i64 0, !taffo.info !89, !taffo.initweight !109
  store i32 0, i32* %arrayidx, align 4, !taffo.info !89, !taffo.initweight !111, !taffo.constinfo !12
  %sub = sub nsw i32 %conv, 1, !taffo.constinfo !12
  %shl = shl i32 1, %sub, !taffo.constinfo !12
  %arrayidx1 = getelementptr inbounds i32, i32* %indices, i64 1, !taffo.info !89, !taffo.initweight !109
  store i32 %shl, i32* %arrayidx1, align 4, !taffo.info !89, !taffo.initweight !111
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
  %arrayidx9 = getelementptr inbounds i32, i32* %indices, i64 %idxprom, !taffo.info !89, !taffo.initweight !109
  %0 = load i32, i32* %arrayidx9, align 4, !taffo.info !89, !taffo.initweight !111
  %add10 = add nsw i32 %i.0, 1, !taffo.constinfo !12
  %sub11 = sub nsw i32 %conv, %add10
  %shl12 = shl i32 1, %sub11, !taffo.constinfo !12
  %add13 = add nsw i32 %0, %shl12, !taffo.info !89, !taffo.initweight !112
  %idxprom14 = sext i32 %j.0 to i64
  %arrayidx15 = getelementptr inbounds i32, i32* %indices, i64 %idxprom14, !taffo.info !89, !taffo.initweight !109
  store i32 %add13, i32* %arrayidx15, align 4, !taffo.info !89, !taffo.initweight !111
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %j.0, 1, !taffo.constinfo !12
  br label %for.cond3, !llvm.loop !113

for.end:                                          ; preds = %for.cond3
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %i.0, 1, !taffo.constinfo !12
  br label %for.cond, !llvm.loop !114

for.end18:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @_Z9fftSinCosfPfS_.3_fixp(float noundef %x, float* noundef %s, float* noundef %c) #5 !taffo.initweight !115 !taffo.funinfo !116 !taffo.sourceFunction !117 {
entry:
  %conv = fpext float %x to double, !taffo.info !72, !taffo.initweight !82
  %mul = fmul double 0xC01921FB54442D18, %conv, !taffo.info !72, !taffo.initweight !86, !taffo.constinfo !106
  %call = call double @sin(double noundef %mul) #3, !taffo.info !72, !taffo.initweight !80, !taffo.constinfo !12
  %conv4 = fptrunc double %call to float, !taffo.info !72, !taffo.initweight !109
  store float %conv4, float* %s, align 4, !taffo.info !72
  %conv5 = fpext float %x to double, !taffo.info !72, !taffo.initweight !82
  %mul6 = fmul double 0xC01921FB54442D18, %conv5, !taffo.info !72, !taffo.initweight !86, !taffo.constinfo !106
  %call7 = call double @cos(double noundef %mul6) #3, !taffo.info !72, !taffo.initweight !80, !taffo.constinfo !12
  %conv8 = fptrunc double %call7 to float, !taffo.info !72, !taffo.initweight !109
  store float %conv8, float* %c, align 4, !taffo.info !72
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define internal void @_Z23radix2DitCooleyTykeyFftPiP7ComplexS1_.1_fixp(i32* noundef %indices, %struct.Complex* noundef %x, %struct.Complex* noundef %f) #7 !taffo.initweight !118 !taffo.funinfo !119 !taffo.sourceFunction !120 {
entry:
  %fftSin.s2_30fixp = alloca i32, align 4, !taffo.info !121
  %fftCos.s2_30fixp = alloca i32, align 4, !taffo.info !121
  %0 = alloca { i32, i32 }, align 4
  call void @_Z14calcFftIndicesPi.2(i32* noundef %indices), !taffo.info !89, !taffo.initweight !82, !taffo.constinfo !12, !taffo.originalCall !91
  %add = add nsw i32 0, 1, !taffo.info !35, !taffo.constinfo !12
  %shl = shl i32 1, %add, !taffo.info !40, !taffo.constinfo !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc94, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc95, %for.inc94 ], !taffo.info !31
  %N.0 = phi i32 [ %shl, %entry ], [ %shl97, %for.inc94 ], !taffo.info !124
  %cmp = icmp sle i32 %N.0, 1024, !taffo.info !35
  br i1 %cmp, label %for.body, label %for.end98

for.body:                                         ; preds = %for.cond
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc91, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %add92, %for.inc91 ], !taffo.info !126
  %cmp10 = icmp slt i32 %j.0, 1024, !taffo.info !35
  br i1 %cmp10, label %for.body11, label %for.end93

for.body11:                                       ; preds = %for.cond9
  %shr = ashr i32 %N.0, 1, !taffo.info !35, !taffo.constinfo !12
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %for.body11
  %k.0 = phi i32 [ 0, %for.body11 ], [ %inc, %for.inc ], !taffo.info !89, !taffo.initweight !73
  %cmp13 = icmp slt i32 %k.0, %shr, !taffo.info !128, !taffo.initweight !82
  br i1 %cmp13, label %for.body14, label %for.end, !taffo.info !89, !taffo.initweight !86

for.body14:                                       ; preds = %for.cond12
  %conv = sitofp i32 %k.0 to float, !taffo.info !89, !taffo.initweight !82
  %conv15 = sitofp i32 %N.0 to float, !taffo.info !40
  %div = fdiv float %conv, %conv15, !taffo.info !129, !taffo.initweight !86
  %add16 = add nsw i32 %j.0, %k.0, !taffo.info !89, !taffo.initweight !82
  %add17 = add nsw i32 %j.0, %shr, !taffo.info !35
  %add18 = add nsw i32 %add17, %k.0, !taffo.info !131, !taffo.initweight !82
  %1 = fmul float 1.024000e+03, %div, !taffo.info !129
  %2 = fptoui float %1 to i32, !taffo.info !129
  call void @_Z9fftSinCosfPfS_.5_fixp(i32 %2, i32* %fftSin.s2_30fixp, i32* %fftCos.s2_30fixp), !taffo.info !72, !taffo.constinfo !13
  %idxprom = sext i32 %add16 to i64, !taffo.info !133
  %arrayidx = getelementptr inbounds i32, i32* %indices, i64 %idxprom, !taffo.info !89, !taffo.initweight !82
  %3 = load i32, i32* %arrayidx, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom19 = sext i32 %3 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx20.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom19, !taffo.structinfo !71, !taffo.initweight !109, !taffo.target !74
  %4 = bitcast { i32, i32 }* %0 to %struct.Complex*
  %5 = bitcast %struct.Complex* %4 to i8*, !taffo.info !92, !taffo.initweight !81
  %6 = bitcast %struct.Complex* %arrayidx20.flt to i8*, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 %6, i64 8, i1 false), !taffo.info !72, !taffo.initweight !82, !taffo.constinfo !21
  %real.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0, !taffo.info !93
  %s15_17fixp10 = load i32, i32* %real.s15_17fixp, align 4, !taffo.info !93
  %idxprom21 = sext i32 %add18 to i64, !taffo.info !134
  %arrayidx22 = getelementptr inbounds i32, i32* %indices, i64 %idxprom21, !taffo.info !89, !taffo.initweight !82
  %7 = load i32, i32* %arrayidx22, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom23 = sext i32 %7 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx24.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom23, !taffo.structinfo !71, !taffo.initweight !109, !taffo.target !74
  %real25 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx24.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %8 = load float, float* %real25, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %s2_30fixp7 = load i32, i32* %fftCos.s2_30fixp, align 4, !taffo.info !121
  %idxprom26 = sext i32 %add16 to i64, !taffo.info !133
  %arrayidx27 = getelementptr inbounds i32, i32* %indices, i64 %idxprom26, !taffo.info !89, !taffo.initweight !82
  %9 = load i32, i32* %arrayidx27, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom28 = sext i32 %9 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx29.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom28, !taffo.structinfo !71, !taffo.initweight !109, !taffo.target !74
  %imag = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx29.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %10 = load float, float* %imag, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %s2_30fixp3 = load i32, i32* %fftSin.s2_30fixp, align 4, !taffo.info !121
  %11 = fmul float 0x41D0000000000000, %10, !taffo.info !72, !taffo.target !74
  %12 = fptosi float %11 to i32, !taffo.info !72, !taffo.target !74
  %13 = sext i32 %12 to i64, !taffo.info !72, !taffo.target !74
  %14 = sext i32 %s2_30fixp3 to i64, !taffo.info !121
  %15 = mul i64 %13, %14, !taffo.info !135
  %16 = ashr i64 %15, 30, !taffo.info !135
  %mul30.s2_30fixp = trunc i64 %16 to i32, !taffo.info !137
  %neg.s2_30fixp = sub i32 0, %mul30.s2_30fixp, !taffo.info !137
  %17 = fmul float 0x41D0000000000000, %8, !taffo.info !72, !taffo.target !74
  %18 = fptosi float %17 to i32, !taffo.info !72, !taffo.target !74
  %19 = sext i32 %18 to i64, !taffo.info !72, !taffo.target !74
  %20 = sext i32 %s2_30fixp7 to i64, !taffo.info !121
  %21 = mul i64 %19, %20, !taffo.info !135
  %22 = ashr i64 %21, 30
  %23 = trunc i64 %22 to i32
  %s2_30fixp13 = add i32 %23, %neg.s2_30fixp, !taffo.info !137
  %24 = shl i32 %s15_17fixp10, 13, !taffo.info !93
  %add31.s2_30fixp = add i32 %24, %s2_30fixp13, !taffo.info !137
  %25 = sitofp i32 %add31.s2_30fixp to float, !taffo.info !137
  %26 = fdiv float %25, 0x41D0000000000000, !taffo.info !137
  %idxprom32 = sext i32 %add16 to i64, !taffo.info !133
  %arrayidx33 = getelementptr inbounds i32, i32* %indices, i64 %idxprom32, !taffo.info !89, !taffo.initweight !82
  %27 = load i32, i32* %arrayidx33, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom34 = sext i32 %27 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx35.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom34, !taffo.structinfo !71, !taffo.initweight !109, !taffo.target !74
  %real36 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx35.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  store float %26, float* %real36, align 4, !taffo.info !72, !taffo.target !74
  %imag37.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1, !taffo.info !93
  %s15_17fixp9 = load i32, i32* %imag37.s15_17fixp, align 4, !taffo.info !93
  %idxprom38 = sext i32 %add16 to i64, !taffo.info !133
  %arrayidx39 = getelementptr inbounds i32, i32* %indices, i64 %idxprom38, !taffo.info !89, !taffo.initweight !82
  %28 = load i32, i32* %arrayidx39, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom40 = sext i32 %28 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx41.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom40, !taffo.structinfo !71, !taffo.initweight !109, !taffo.target !74
  %imag42 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx41.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %29 = load float, float* %imag42, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %s2_30fixp6 = load i32, i32* %fftCos.s2_30fixp, align 4, !taffo.info !121
  %idxprom43 = sext i32 %add18 to i64, !taffo.info !134
  %arrayidx44 = getelementptr inbounds i32, i32* %indices, i64 %idxprom43, !taffo.info !89, !taffo.initweight !82
  %30 = load i32, i32* %arrayidx44, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom45 = sext i32 %30 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx46.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom45, !taffo.structinfo !71, !taffo.initweight !109, !taffo.target !74
  %real47 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx46.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %31 = load float, float* %real47, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %s2_30fixp2 = load i32, i32* %fftSin.s2_30fixp, align 4, !taffo.info !121
  %32 = fmul float 0x41D0000000000000, %31, !taffo.info !72, !taffo.target !74
  %33 = fptosi float %32 to i32, !taffo.info !72, !taffo.target !74
  %34 = sext i32 %33 to i64, !taffo.info !72, !taffo.target !74
  %35 = sext i32 %s2_30fixp2 to i64, !taffo.info !121
  %36 = mul i64 %34, %35, !taffo.info !135
  %37 = ashr i64 %36, 30, !taffo.info !135
  %mul48.s2_30fixp = trunc i64 %37 to i32, !taffo.info !137
  %38 = fmul float 0x41D0000000000000, %29, !taffo.info !72, !taffo.target !74
  %39 = fptosi float %38 to i32, !taffo.info !72, !taffo.target !74
  %40 = sext i32 %39 to i64, !taffo.info !72, !taffo.target !74
  %41 = sext i32 %s2_30fixp6 to i64, !taffo.info !121
  %42 = mul i64 %40, %41, !taffo.info !135
  %43 = ashr i64 %42, 30
  %44 = trunc i64 %43 to i32
  %s2_30fixp12 = add i32 %44, %mul48.s2_30fixp, !taffo.info !137
  %45 = ashr i32 %s2_30fixp12, 13, !taffo.info !137
  %add49.s15_17fixp = add i32 %s15_17fixp9, %45, !taffo.info !93
  %46 = sitofp i32 %add49.s15_17fixp to float, !taffo.info !93
  %47 = fdiv float %46, 1.310720e+05, !taffo.info !93
  %idxprom50 = sext i32 %add16 to i64, !taffo.info !133
  %arrayidx51 = getelementptr inbounds i32, i32* %indices, i64 %idxprom50, !taffo.info !89, !taffo.initweight !82
  %48 = load i32, i32* %arrayidx51, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom52 = sext i32 %48 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx53.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom52, !taffo.structinfo !71, !taffo.initweight !109, !taffo.target !74
  %imag54 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx53.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  store float %47, float* %imag54, align 4, !taffo.info !72, !taffo.target !74
  %real55.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 0, !taffo.info !93
  %s15_17fixp8 = load i32, i32* %real55.s15_17fixp, align 4, !taffo.info !93
  %idxprom56 = sext i32 %add18 to i64, !taffo.info !134
  %arrayidx57 = getelementptr inbounds i32, i32* %indices, i64 %idxprom56, !taffo.info !89, !taffo.initweight !82
  %49 = load i32, i32* %arrayidx57, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom58 = sext i32 %49 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx59.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom58, !taffo.structinfo !71, !taffo.initweight !109, !taffo.target !74
  %real60 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx59.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %50 = load float, float* %real60, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %s2_30fixp5 = load i32, i32* %fftCos.s2_30fixp, align 4, !taffo.info !121
  %idxprom61 = sext i32 %add16 to i64, !taffo.info !133
  %arrayidx62 = getelementptr inbounds i32, i32* %indices, i64 %idxprom61, !taffo.info !89, !taffo.initweight !82
  %51 = load i32, i32* %arrayidx62, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom63 = sext i32 %51 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx64.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom63, !taffo.structinfo !71, !taffo.initweight !109, !taffo.target !74
  %imag65 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx64.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %52 = load float, float* %imag65, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %s2_30fixp1 = load i32, i32* %fftSin.s2_30fixp, align 4, !taffo.info !121
  %53 = fmul float 0x41D0000000000000, %52, !taffo.info !72, !taffo.target !74
  %54 = fptosi float %53 to i32, !taffo.info !72, !taffo.target !74
  %55 = sext i32 %54 to i64, !taffo.info !72, !taffo.target !74
  %56 = sext i32 %s2_30fixp1 to i64, !taffo.info !121
  %57 = mul i64 %55, %56, !taffo.info !135
  %58 = ashr i64 %57, 30, !taffo.info !135
  %mul66.s2_30fixp = trunc i64 %58 to i32, !taffo.info !137
  %neg67.s2_30fixp = sub i32 0, %mul66.s2_30fixp, !taffo.info !137
  %59 = fmul float 0x41D0000000000000, %50, !taffo.info !72, !taffo.target !74
  %60 = fptosi float %59 to i32, !taffo.info !72, !taffo.target !74
  %61 = sext i32 %60 to i64, !taffo.info !72, !taffo.target !74
  %62 = sext i32 %s2_30fixp5 to i64, !taffo.info !121
  %63 = mul i64 %61, %62, !taffo.info !135
  %64 = ashr i64 %63, 30
  %65 = trunc i64 %64 to i32
  %s2_30fixp14 = add i32 %65, %neg67.s2_30fixp, !taffo.info !137
  %66 = shl i32 %s15_17fixp8, 13, !taffo.info !93
  %sub.s2_30fixp = sub i32 %66, %s2_30fixp14, !taffo.info !137
  %67 = sitofp i32 %sub.s2_30fixp to float, !taffo.info !137
  %68 = fdiv float %67, 0x41D0000000000000, !taffo.info !137
  %idxprom68 = sext i32 %add18 to i64, !taffo.info !134
  %arrayidx69 = getelementptr inbounds i32, i32* %indices, i64 %idxprom68, !taffo.info !89, !taffo.initweight !82
  %69 = load i32, i32* %arrayidx69, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom70 = sext i32 %69 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx71.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom70, !taffo.structinfo !71, !taffo.initweight !109, !taffo.target !74
  %real72 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx71.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  store float %68, float* %real72, align 4, !taffo.info !72, !taffo.target !74
  %imag73.s15_17fixp = getelementptr inbounds { i32, i32 }, { i32, i32 }* %0, i32 0, i32 1, !taffo.info !93
  %s15_17fixp = load i32, i32* %imag73.s15_17fixp, align 4, !taffo.info !93
  %idxprom74 = sext i32 %add16 to i64, !taffo.info !133
  %arrayidx75 = getelementptr inbounds i32, i32* %indices, i64 %idxprom74, !taffo.info !89, !taffo.initweight !82
  %70 = load i32, i32* %arrayidx75, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom76 = sext i32 %70 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx77.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom76, !taffo.structinfo !71, !taffo.initweight !109, !taffo.target !74
  %imag78 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx77.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %71 = load float, float* %imag78, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %s2_30fixp4 = load i32, i32* %fftCos.s2_30fixp, align 4, !taffo.info !121
  %idxprom79 = sext i32 %add18 to i64, !taffo.info !134
  %arrayidx80 = getelementptr inbounds i32, i32* %indices, i64 %idxprom79, !taffo.info !89, !taffo.initweight !82
  %72 = load i32, i32* %arrayidx80, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom81 = sext i32 %72 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx82.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom81, !taffo.structinfo !71, !taffo.initweight !109, !taffo.target !74
  %real83 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx82.flt, i32 0, i32 0, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  %73 = load float, float* %real83, align 4, !taffo.info !72, !taffo.initweight !80, !taffo.target !74
  %s2_30fixp = load i32, i32* %fftSin.s2_30fixp, align 4, !taffo.info !121
  %74 = fmul float 0x41D0000000000000, %73, !taffo.info !72, !taffo.target !74
  %75 = fptosi float %74 to i32, !taffo.info !72, !taffo.target !74
  %76 = sext i32 %75 to i64, !taffo.info !72, !taffo.target !74
  %77 = sext i32 %s2_30fixp to i64, !taffo.info !121
  %78 = mul i64 %76, %77, !taffo.info !135
  %79 = ashr i64 %78, 30, !taffo.info !135
  %mul84.s2_30fixp = trunc i64 %79 to i32, !taffo.info !137
  %80 = fmul float 0x41D0000000000000, %71, !taffo.info !72, !taffo.target !74
  %81 = fptosi float %80 to i32, !taffo.info !72, !taffo.target !74
  %82 = sext i32 %81 to i64, !taffo.info !72, !taffo.target !74
  %83 = sext i32 %s2_30fixp4 to i64, !taffo.info !121
  %84 = mul i64 %82, %83, !taffo.info !135
  %85 = ashr i64 %84, 30
  %86 = trunc i64 %85 to i32
  %s2_30fixp11 = add i32 %86, %mul84.s2_30fixp, !taffo.info !137
  %87 = ashr i32 %s2_30fixp11, 13, !taffo.info !137
  %sub85.s15_17fixp = sub i32 %s15_17fixp, %87, !taffo.info !93
  %88 = sitofp i32 %sub85.s15_17fixp to float, !taffo.info !93
  %89 = fdiv float %88, 1.310720e+05, !taffo.info !93
  %idxprom86 = sext i32 %add18 to i64, !taffo.info !134
  %arrayidx87 = getelementptr inbounds i32, i32* %indices, i64 %idxprom86, !taffo.info !89, !taffo.initweight !82
  %90 = load i32, i32* %arrayidx87, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom88 = sext i32 %90 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx89.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom88, !taffo.structinfo !71, !taffo.initweight !109, !taffo.target !74
  %imag90 = getelementptr inbounds %struct.Complex, %struct.Complex* %arrayidx89.flt, i32 0, i32 1, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  store float %89, float* %imag90, align 4, !taffo.info !72, !taffo.target !74
  br label %for.inc

for.inc:                                          ; preds = %for.body14
  %inc = add nsw i32 %k.0, 1, !taffo.info !131, !taffo.initweight !82, !taffo.constinfo !12
  br label %for.cond12, !llvm.loop !138

for.end:                                          ; preds = %for.cond12
  br label %for.inc91

for.inc91:                                        ; preds = %for.end
  %add92 = add nsw i32 %j.0, %N.0, !taffo.info !40
  br label %for.cond9, !llvm.loop !139

for.end93:                                        ; preds = %for.cond9
  br label %for.inc94

for.inc94:                                        ; preds = %for.end93
  %inc95 = add nsw i32 %i.0, 1, !taffo.info !35, !taffo.constinfo !12
  %add96 = add nsw i32 %inc95, 1, !taffo.info !40, !taffo.constinfo !12
  %shl97 = shl i32 1, %add96, !taffo.info !140, !taffo.constinfo !12
  br label %for.cond, !llvm.loop !142

for.end98:                                        ; preds = %for.cond
  br label %for.cond100

for.cond100:                                      ; preds = %for.inc109, %for.end98
  %i99.0 = phi i32 [ 0, %for.end98 ], [ %inc110, %for.inc109 ], !taffo.info !76
  %cmp101 = icmp slt i32 %i99.0, 1024, !taffo.info !35
  br i1 %cmp101, label %for.body102, label %for.end111

for.body102:                                      ; preds = %for.cond100
  %idxprom103 = sext i32 %i99.0 to i64, !taffo.info !78
  %arrayidx104 = getelementptr inbounds i32, i32* %indices, i64 %idxprom103, !taffo.info !89, !taffo.initweight !82
  %91 = load i32, i32* %arrayidx104, align 4, !taffo.info !89, !taffo.initweight !86
  %idxprom105 = sext i32 %91 to i64, !taffo.info !89, !taffo.initweight !80
  %arrayidx106.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %x, i64 %idxprom105, !taffo.structinfo !71, !taffo.initweight !109, !taffo.target !74
  %idxprom107 = sext i32 %i99.0 to i64, !taffo.info !78
  %arrayidx108.flt = getelementptr inbounds %struct.Complex, %struct.Complex* %f, i64 %idxprom107, !taffo.structinfo !71, !taffo.initweight !109, !taffo.target !75
  %92 = bitcast %struct.Complex* %arrayidx108.flt to i8*, !taffo.info !72, !taffo.initweight !86, !taffo.target !75
  %93 = bitcast %struct.Complex* %arrayidx106.flt to i8*, !taffo.info !72, !taffo.initweight !86, !taffo.target !74
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 8, i1 false), !taffo.info !72, !taffo.initweight !80, !taffo.constinfo !21, !taffo.target !74
  br label %for.inc109

for.inc109:                                       ; preds = %for.body102
  %inc110 = add nsw i32 %i99.0, 1, !taffo.info !83, !taffo.constinfo !12
  br label %for.cond100, !llvm.loop !143

for.end111:                                       ; preds = %for.cond100
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define internal void @_Z9fftSinCosfPfS_.5_fixp(i32 noundef %x.u22_10fixp, i32* noundef %s.s2_30fixp, i32* noundef %c.s2_30fixp) #5 !taffo.initweight !115 !taffo.funinfo !144 !taffo.sourceFunction !117 {
entry:
  %0 = sext i32 -1686629714 to i64
  %1 = zext i32 %x.u22_10fixp to i64, !taffo.info !145
  %2 = mul i64 %0, %1, !taffo.info !147, !taffo.constinfo !106
  %3 = ashr i64 %2, 31, !taffo.info !147, !taffo.constinfo !106
  %mul.s25_7fixp = trunc i64 %3 to i32, !taffo.info !150
  %4 = sitofp i32 %mul.s25_7fixp to double, !taffo.info !150
  %5 = fdiv double %4, 1.280000e+02, !taffo.info !150
  %call.flt = call double @sin(double noundef %5) #3, !taffo.info !121, !taffo.initweight !80, !taffo.constinfo !12
  %6 = fmul double 0x41D0000000000000, %call.flt, !taffo.info !121, !taffo.constinfo !12
  %call.flt.fallback.s2_30fixp = fptosi double %6 to i32, !taffo.info !121
  store i32 %call.flt.fallback.s2_30fixp, i32* %s.s2_30fixp, align 4, !taffo.info !72
  %7 = sext i32 -1686629714 to i64
  %8 = zext i32 %x.u22_10fixp to i64, !taffo.info !145
  %9 = mul i64 %7, %8, !taffo.info !147, !taffo.constinfo !106
  %10 = ashr i64 %9, 31, !taffo.info !147, !taffo.constinfo !106
  %mul6.s25_7fixp = trunc i64 %10 to i32, !taffo.info !150
  %11 = sitofp i32 %mul6.s25_7fixp to double, !taffo.info !150
  %12 = fdiv double %11, 1.280000e+02, !taffo.info !150
  %call7.flt = call double @cos(double noundef %12) #3, !taffo.info !121, !taffo.initweight !80, !taffo.constinfo !12
  %13 = fmul double 0x41D0000000000000, %call7.flt, !taffo.info !121, !taffo.constinfo !12
  %call7.flt.fallback.s2_30fixp = fptosi double %13 to i32, !taffo.info !121
  store i32 %call7.flt.fallback.s2_30fixp, i32* %c.s2_30fixp, align 4, !taffo.info !72
  ret void
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
!103 = !{i32 2, i32 -1, i32 -1}
!104 = !{i32 1, !72, i32 0, i1 false, i32 0, i1 false}
!105 = distinct !{null, null}
!106 = !{!107, i1 false}
!107 = !{i1 false, !108, i1 false, i2 0}
!108 = !{double 0xC01921FB54442D18, double 0xC01921FB54442D18}
!109 = !{i32 5}
!110 = !{i32 1, !89}
!111 = !{i32 6}
!112 = !{i32 7}
!113 = distinct !{!113, !26}
!114 = distinct !{!114, !26}
!115 = !{i32 2, i32 1, i32 1}
!116 = !{i32 1, !72, i32 1, !72, i32 1, !72}
!117 = !{void (float, float*, float*)* @_Z9fftSinCosfPfS_}
!118 = !{i32 -1, i32 2, i32 2}
!119 = !{i32 0, i1 false, i32 2, !71, i32 2, !71}
!120 = !{void (i32*, %struct.Complex*, %struct.Complex*)* @_Z23radix2DitCooleyTykeyFftPiP7ComplexS1_}
!121 = !{!122, !123, i1 false, i2 1}
!122 = !{!"fixp", i32 -32, i32 30}
!123 = !{double -1.000000e+00, double 1.000000e+00}
!124 = !{i1 false, !125, i1 false, i2 0}
!125 = !{double 2.000000e+00, double 4.000000e+00}
!126 = !{i1 false, !127, i1 false, i2 0}
!127 = !{double 0.000000e+00, double 2.000000e+00}
!128 = !{i1 false, !24, i1 false, i2 -2}
!129 = !{i1 false, !130, i1 false, i2 -2}
!130 = !{double 5.000000e-01, double 0x4140000000000000}
!131 = !{i1 false, !132, i1 false, i2 -2}
!132 = !{double 2.000000e+00, double 0x4150000040000000}
!133 = !{i1 false, !90, i1 false, i2 0}
!134 = !{i1 false, !132, i1 false, i2 0}
!135 = !{!136, i1 false, i1 false, i2 1}
!136 = !{!"fixp", i32 -64, i32 60}
!137 = !{!122, i1 false, i1 false, i2 1}
!138 = distinct !{!138, !26}
!139 = distinct !{!139, !26}
!140 = !{i1 false, !141, i1 false, i2 0}
!141 = !{double 4.000000e+00, double 4.000000e+00}
!142 = distinct !{!142, !26}
!143 = distinct !{!143, !26}
!144 = !{i32 1, !145, i32 1, !121, i32 1, !121}
!145 = !{!146, !130, i1 false, i2 1}
!146 = !{!"fixp", i32 32, i32 10}
!147 = !{!148, !149, i1 false, i2 1}
!148 = !{!"fixp", i32 -64, i32 38}
!149 = !{double 0xC16921FB54442D18, double 0xC00921FB54442D18}
!150 = !{!151, !149, i1 false, i2 1}
!151 = !{!"fixp", i32 -32, i32 7}
