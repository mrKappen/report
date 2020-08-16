; ModuleID = 'Palindrome.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"\0AWelcome to Palindrome Finder\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\09Please enter a possible palindrome: \00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\09\09Nope, that's not a palindrome\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\09\09Yes, that's a palindrome!\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\0A\0AEASTER EGG!\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone
define dso_local i32 @cgc_transmit_all(i32 %0, i8* %1, i32 %2) #0 !dbg !10 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !22, metadata !DIExpression()), !dbg !23
  store i8* %1, i8** %6, align 4
  call void @llvm.dbg.declare(metadata i8** %6, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %8, metadata !28, metadata !DIExpression()), !dbg !29
  store i32 0, i32* %8, align 4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %9, metadata !30, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %9, align 4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %10, metadata !32, metadata !DIExpression()), !dbg !33
  %11 = load i8*, i8** %6, align 4, !dbg !34
  %12 = icmp ne i8* %11, null, !dbg !34
  br i1 %12, label %14, label %13, !dbg !36

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4, !dbg !37
  br label %44, !dbg !37

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4, !dbg !38
  %16 = icmp ne i32 %15, 0, !dbg !38
  br i1 %16, label %18, label %17, !dbg !40

17:                                               ; preds = %14
  store i32 2, i32* %4, align 4, !dbg !41
  br label %44, !dbg !41

18:                                               ; preds = %14
  br label %19, !dbg !42

19:                                               ; preds = %39, %18
  %20 = load i32, i32* %8, align 4, !dbg !43
  %21 = load i32, i32* %7, align 4, !dbg !44
  %22 = icmp ult i32 %20, %21, !dbg !45
  br i1 %22, label %23, label %43, !dbg !42

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4, !dbg !46
  %25 = load i8*, i8** %6, align 4, !dbg !48
  %26 = load i32, i32* %8, align 4, !dbg !49
  %27 = getelementptr inbounds i8, i8* %25, i32 %26, !dbg !50
  %28 = load i32, i32* %7, align 4, !dbg !51
  %29 = load i32, i32* %8, align 4, !dbg !52
  %30 = sub i32 %28, %29, !dbg !53
  %31 = call i32 @cgc_transmit(i32 %24, i8* %27, i32 %30, i32* %9) #4, !dbg !54
  store i32 %31, i32* %10, align 4, !dbg !55
  %32 = load i32, i32* %9, align 4, !dbg !56
  %33 = icmp eq i32 %32, 0, !dbg !58
  br i1 %33, label %34, label %35, !dbg !59

34:                                               ; preds = %23
  store i32 3, i32* %4, align 4, !dbg !60
  br label %44, !dbg !60

35:                                               ; preds = %23
  %36 = load i32, i32* %10, align 4, !dbg !62
  %37 = icmp ne i32 %36, 0, !dbg !64
  br i1 %37, label %38, label %39, !dbg !65

38:                                               ; preds = %35
  store i32 3, i32* %4, align 4, !dbg !66
  br label %44, !dbg !66

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4, !dbg !68
  %41 = load i32, i32* %8, align 4, !dbg !69
  %42 = add i32 %41, %40, !dbg !69
  store i32 %42, i32* %8, align 4, !dbg !69
  br label %19, !dbg !42, !llvm.loop !70

43:                                               ; preds = %19
  store i32 0, i32* %4, align 4, !dbg !72
  br label %44, !dbg !72

44:                                               ; preds = %43, %38, %34, %17, %13
  %45 = load i32, i32* %4, align 4, !dbg !73
  ret i32 %45, !dbg !73
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @cgc_transmit(i32, i8*, i32, i32*) #2

; Function Attrs: noinline nounwind optnone
define dso_local i32 @cgc_receive_delim(i32 %0, i8* %1, i32 %2, i8 signext %3) #0 !dbg !74 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !78, metadata !DIExpression()), !dbg !79
  store i8* %1, i8** %7, align 4
  call void @llvm.dbg.declare(metadata i8** %7, metadata !80, metadata !DIExpression()), !dbg !81
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !82, metadata !DIExpression()), !dbg !83
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata i32* %10, metadata !86, metadata !DIExpression()), !dbg !87
  store i32 0, i32* %10, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %11, metadata !88, metadata !DIExpression()), !dbg !89
  store i32 0, i32* %11, align 4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %12, metadata !90, metadata !DIExpression()), !dbg !91
  %13 = load i8*, i8** %7, align 4, !dbg !92
  %14 = icmp ne i8* %13, null, !dbg !92
  br i1 %14, label %16, label %15, !dbg !94

15:                                               ; preds = %4
  store i32 1, i32* %5, align 4, !dbg !95
  br label %53, !dbg !95

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4, !dbg !96
  %18 = icmp ne i32 %17, 0, !dbg !96
  br i1 %18, label %20, label %19, !dbg !98

19:                                               ; preds = %16
  store i32 2, i32* %5, align 4, !dbg !99
  br label %53, !dbg !99

20:                                               ; preds = %16
  br label %21, !dbg !100

21:                                               ; preds = %48, %20
  %22 = load i32, i32* %10, align 4, !dbg !101
  %23 = load i32, i32* %8, align 4, !dbg !102
  %24 = icmp ult i32 %22, %23, !dbg !103
  br i1 %24, label %25, label %52, !dbg !100

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4, !dbg !104
  %27 = load i8*, i8** %7, align 4, !dbg !106
  %28 = load i32, i32* %10, align 4, !dbg !107
  %29 = getelementptr inbounds i8, i8* %27, i32 %28, !dbg !108
  %30 = call i32 @cgc_receive(i32 %26, i8* %29, i32 1, i32* %11) #4, !dbg !109
  store i32 %30, i32* %12, align 4, !dbg !110
  %31 = load i32, i32* %11, align 4, !dbg !111
  %32 = icmp eq i32 %31, 0, !dbg !113
  br i1 %32, label %33, label %34, !dbg !114

33:                                               ; preds = %25
  store i32 3, i32* %5, align 4, !dbg !115
  br label %53, !dbg !115

34:                                               ; preds = %25
  %35 = load i32, i32* %12, align 4, !dbg !117
  %36 = icmp ne i32 %35, 0, !dbg !119
  br i1 %36, label %37, label %38, !dbg !120

37:                                               ; preds = %34
  store i32 3, i32* %5, align 4, !dbg !121
  br label %53, !dbg !121

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 4, !dbg !123
  %40 = load i32, i32* %10, align 4, !dbg !125
  %41 = getelementptr inbounds i8, i8* %39, i32 %40, !dbg !123
  %42 = load i8, i8* %41, align 1, !dbg !123
  %43 = sext i8 %42 to i32, !dbg !123
  %44 = load i8, i8* %9, align 1, !dbg !126
  %45 = sext i8 %44 to i32, !dbg !126
  %46 = icmp eq i32 %43, %45, !dbg !127
  br i1 %46, label %47, label %48, !dbg !128

47:                                               ; preds = %38
  br label %52, !dbg !129

48:                                               ; preds = %38
  %49 = load i32, i32* %11, align 4, !dbg !131
  %50 = load i32, i32* %10, align 4, !dbg !132
  %51 = add i32 %50, %49, !dbg !132
  store i32 %51, i32* %10, align 4, !dbg !132
  br label %21, !dbg !100, !llvm.loop !133

52:                                               ; preds = %47, %21
  store i32 0, i32* %5, align 4, !dbg !135
  br label %53, !dbg !135

53:                                               ; preds = %52, %37, %33, %19, %15
  %54 = load i32, i32* %5, align 4, !dbg !136
  ret i32 %54, !dbg !136
}

declare dso_local i32 @cgc_receive(i32, i8*, i32, i32*) #2

; Function Attrs: noinline nounwind optnone
define dso_local i32 @main(i32 %0, i8** %1) #0 !dbg !137 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !142, metadata !DIExpression()), !dbg !143
  store i8** %1, i8*** %5, align 4
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata i32* %6, metadata !146, metadata !DIExpression()), !dbg !147
  %7 = call i32 @cgc_transmit_all(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i32 31) #4, !dbg !148
  %8 = icmp ne i32 %7, 0, !dbg !150
  br i1 %8, label %9, label %10, !dbg !151

9:                                                ; preds = %2
  call void @cgc__terminate(i32 0) #5, !dbg !152
  unreachable, !dbg !152

10:                                               ; preds = %2
  br label %11, !dbg !154

11:                                               ; preds = %10, %34
  %12 = call i32 @cgc_transmit_all(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), i32 37) #4, !dbg !155
  %13 = icmp ne i32 %12, 0, !dbg !158
  br i1 %13, label %14, label %15, !dbg !159

14:                                               ; preds = %11
  call void @cgc__terminate(i32 0) #5, !dbg !160
  unreachable, !dbg !160

15:                                               ; preds = %11
  %16 = call i32 @cgc_check() #4, !dbg !162
  store i32 %16, i32* %6, align 4, !dbg !163
  %17 = load i32, i32* %6, align 4, !dbg !164
  %18 = icmp eq i32 %17, -1, !dbg !166
  br i1 %18, label %19, label %20, !dbg !167

19:                                               ; preds = %15
  br label %35, !dbg !168

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4, !dbg !170
  %22 = icmp eq i32 %21, 0, !dbg !172
  br i1 %22, label %23, label %28, !dbg !173

23:                                               ; preds = %20
  %24 = call i32 @cgc_transmit_all(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i32 33) #4, !dbg !174
  %25 = icmp ne i32 %24, 0, !dbg !177
  br i1 %25, label %26, label %27, !dbg !178

26:                                               ; preds = %23
  call void @cgc__terminate(i32 0) #5, !dbg !179
  unreachable, !dbg !179

27:                                               ; preds = %23
  br label %33, !dbg !181

28:                                               ; preds = %20
  %29 = call i32 @cgc_transmit_all(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 29) #4, !dbg !182
  %30 = icmp ne i32 %29, 0, !dbg !185
  br i1 %30, label %31, label %32, !dbg !186

31:                                               ; preds = %28
  call void @cgc__terminate(i32 0) #5, !dbg !187
  unreachable, !dbg !187

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %27
  br label %34

34:                                               ; preds = %33
  br label %11, !dbg !154, !llvm.loop !189

35:                                               ; preds = %19
  ret i32 0, !dbg !191
}

; Function Attrs: noreturn
declare dso_local void @cgc__terminate(i32) #3

; Function Attrs: noinline nounwind optnone
define dso_local i32 @cgc_check() #0 !dbg !192 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 1
  %6 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !195, metadata !DIExpression()), !dbg !196
  store i32 -1, i32* %2, align 4, !dbg !196
  call void @llvm.dbg.declare(metadata i32* %3, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata i32* %4, metadata !199, metadata !DIExpression()), !dbg !200
  store i32 1, i32* %4, align 4, !dbg !200
  call void @llvm.dbg.declare(metadata [64 x i8]* %5, metadata !201, metadata !DIExpression()), !dbg !205
  store i32 0, i32* %3, align 4, !dbg !206
  br label %7, !dbg !208

7:                                                ; preds = %13, %0
  %8 = load i32, i32* %3, align 4, !dbg !209
  %9 = icmp ult i32 %8, 64, !dbg !211
  br i1 %9, label %10, label %16, !dbg !212

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4, !dbg !213
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 %11, !dbg !214
  store i8 0, i8* %12, align 1, !dbg !215
  br label %13, !dbg !214

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4, !dbg !216
  %15 = add nsw i32 %14, 1, !dbg !216
  store i32 %15, i32* %3, align 4, !dbg !216
  br label %7, !dbg !217, !llvm.loop !218

16:                                               ; preds = %7
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 0, !dbg !220
  %18 = call i32 @cgc_receive_delim(i32 0, i8* %17, i32 128, i8 signext 10) #4, !dbg !222
  %19 = icmp ne i32 %18, 0, !dbg !223
  br i1 %19, label %20, label %21, !dbg !224

20:                                               ; preds = %16
  store i32 -1, i32* %1, align 4, !dbg !225
  br label %78, !dbg !225

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4, !dbg !226
  br label %22, !dbg !228

22:                                               ; preds = %31, %21
  %23 = load i32, i32* %3, align 4, !dbg !229
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 %23, !dbg !231
  %25 = load i8, i8* %24, align 1, !dbg !231
  %26 = sext i8 %25 to i32, !dbg !231
  %27 = icmp ne i32 %26, 0, !dbg !232
  br i1 %27, label %28, label %34, !dbg !233

28:                                               ; preds = %22
  %29 = load i32, i32* %2, align 4, !dbg !234
  %30 = add nsw i32 %29, 1, !dbg !234
  store i32 %30, i32* %2, align 4, !dbg !234
  br label %31, !dbg !236

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4, !dbg !237
  %33 = add nsw i32 %32, 1, !dbg !237
  store i32 %33, i32* %3, align 4, !dbg !237
  br label %22, !dbg !238, !llvm.loop !239

34:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata i32* %6, metadata !241, metadata !DIExpression()), !dbg !242
  %35 = load i32, i32* %2, align 4, !dbg !243
  store i32 %35, i32* %6, align 4, !dbg !242
  %36 = load i32, i32* %2, align 4, !dbg !244
  %37 = srem i32 %36, 2, !dbg !246
  %38 = icmp eq i32 %37, 1, !dbg !247
  br i1 %38, label %39, label %42, !dbg !248

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4, !dbg !249
  %41 = add nsw i32 %40, -1, !dbg !249
  store i32 %41, i32* %6, align 4, !dbg !249
  br label %42, !dbg !251

42:                                               ; preds = %39, %34
  store i32 0, i32* %3, align 4, !dbg !252
  br label %43, !dbg !254

43:                                               ; preds = %63, %42
  %44 = load i32, i32* %3, align 4, !dbg !255
  %45 = load i32, i32* %6, align 4, !dbg !257
  %46 = sdiv i32 %45, 2, !dbg !258
  %47 = icmp sle i32 %44, %46, !dbg !259
  br i1 %47, label %48, label %66, !dbg !260

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4, !dbg !261
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 %49, !dbg !264
  %51 = load i8, i8* %50, align 1, !dbg !264
  %52 = sext i8 %51 to i32, !dbg !264
  %53 = load i32, i32* %2, align 4, !dbg !265
  %54 = sub nsw i32 %53, 1, !dbg !266
  %55 = load i32, i32* %3, align 4, !dbg !267
  %56 = sub nsw i32 %54, %55, !dbg !268
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 %56, !dbg !269
  %58 = load i8, i8* %57, align 1, !dbg !269
  %59 = sext i8 %58 to i32, !dbg !269
  %60 = icmp ne i32 %52, %59, !dbg !270
  br i1 %60, label %61, label %62, !dbg !271

61:                                               ; preds = %48
  store i32 0, i32* %4, align 4, !dbg !272
  br label %62, !dbg !274

62:                                               ; preds = %61, %48
  br label %63, !dbg !275

63:                                               ; preds = %62
  %64 = load i32, i32* %3, align 4, !dbg !276
  %65 = add nsw i32 %64, 1, !dbg !276
  store i32 %65, i32* %3, align 4, !dbg !276
  br label %43, !dbg !277, !llvm.loop !278

66:                                               ; preds = %43
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 0, !dbg !280
  %68 = load i8, i8* %67, align 1, !dbg !280
  %69 = sext i8 %68 to i32, !dbg !280
  %70 = icmp eq i32 %69, 94, !dbg !282
  br i1 %70, label %71, label %76, !dbg !283

71:                                               ; preds = %66
  %72 = call i32 @cgc_transmit_all(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 15) #4, !dbg !284
  %73 = icmp ne i32 %72, 0, !dbg !287
  br i1 %73, label %74, label %75, !dbg !288

74:                                               ; preds = %71
  call void @cgc__terminate(i32 0) #5, !dbg !289
  unreachable, !dbg !289

75:                                               ; preds = %71
  br label %76, !dbg !291

76:                                               ; preds = %75, %66
  %77 = load i32, i32* %4, align 4, !dbg !292
  store i32 %77, i32* %1, align 4, !dbg !293
  br label %78, !dbg !293

78:                                               ; preds = %76, %20
  %79 = load i32, i32* %1, align 4, !dbg !294
  ret i32 %79, !dbg !294
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-builtins" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pentium4" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin noreturn "no-builtins" }

!llvm.dbg.cu = !{!0, !3}
!llvm.ident = !{!5, !5}
!llvm.module.flags = !{!6, !7, !8, !9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/tkappen/3ASummer/cb-multios/challenges/Palindrome/lib/libc.c", directory: "/home/tkappen/3ASummer/cb-multios/binaries-llvm/challenges/Palindrome")
!2 = !{}
!3 = distinct !DICompileUnit(language: DW_LANG_C99, file: !4, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!4 = !DIFile(filename: "/home/tkappen/3ASummer/cb-multios/challenges/Palindrome/src/service.c", directory: "/home/tkappen/3ASummer/cb-multios/binaries-llvm/challenges/Palindrome")
!5 = !{!"clang version 10.0.0 "}
!6 = !{i32 1, !"NumRegisterParameters", i32 0}
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = distinct !DISubprogram(name: "cgc_transmit_all", scope: !11, file: !11, line: 4, type: !12, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DIFile(filename: "challenges/Palindrome/lib/libc.c", directory: "/home/tkappen/3ASummer/cb-multios")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !14, !15, !18}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "cgc_size_t", file: !20, line: 19, baseType: !21)
!20 = !DIFile(filename: "include/libcgc.h", directory: "/home/tkappen/3ASummer/cb-multios")
!21 = !DIBasicType(name: "long unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DILocalVariable(name: "fd", arg: 1, scope: !10, file: !11, line: 4, type: !14)
!23 = !DILocation(line: 4, column: 26, scope: !10)
!24 = !DILocalVariable(name: "buf", arg: 2, scope: !10, file: !11, line: 4, type: !15)
!25 = !DILocation(line: 4, column: 42, scope: !10)
!26 = !DILocalVariable(name: "size", arg: 3, scope: !10, file: !11, line: 4, type: !18)
!27 = !DILocation(line: 4, column: 64, scope: !10)
!28 = !DILocalVariable(name: "sent", scope: !10, file: !11, line: 5, type: !19)
!29 = !DILocation(line: 5, column: 16, scope: !10)
!30 = !DILocalVariable(name: "sent_now", scope: !10, file: !11, line: 6, type: !19)
!31 = !DILocation(line: 6, column: 16, scope: !10)
!32 = !DILocalVariable(name: "ret", scope: !10, file: !11, line: 7, type: !14)
!33 = !DILocation(line: 7, column: 9, scope: !10)
!34 = !DILocation(line: 9, column: 10, scope: !35)
!35 = distinct !DILexicalBlock(scope: !10, file: !11, line: 9, column: 9)
!36 = !DILocation(line: 9, column: 9, scope: !10)
!37 = !DILocation(line: 10, column: 9, scope: !35)
!38 = !DILocation(line: 12, column: 10, scope: !39)
!39 = distinct !DILexicalBlock(scope: !10, file: !11, line: 12, column: 9)
!40 = !DILocation(line: 12, column: 9, scope: !10)
!41 = !DILocation(line: 13, column: 9, scope: !39)
!42 = !DILocation(line: 15, column: 5, scope: !10)
!43 = !DILocation(line: 15, column: 12, scope: !10)
!44 = !DILocation(line: 15, column: 19, scope: !10)
!45 = !DILocation(line: 15, column: 17, scope: !10)
!46 = !DILocation(line: 16, column: 28, scope: !47)
!47 = distinct !DILexicalBlock(scope: !10, file: !11, line: 15, column: 25)
!48 = !DILocation(line: 16, column: 32, scope: !47)
!49 = !DILocation(line: 16, column: 38, scope: !47)
!50 = !DILocation(line: 16, column: 36, scope: !47)
!51 = !DILocation(line: 16, column: 44, scope: !47)
!52 = !DILocation(line: 16, column: 51, scope: !47)
!53 = !DILocation(line: 16, column: 49, scope: !47)
!54 = !DILocation(line: 16, column: 15, scope: !47)
!55 = !DILocation(line: 16, column: 13, scope: !47)
!56 = !DILocation(line: 17, column: 13, scope: !57)
!57 = distinct !DILexicalBlock(scope: !47, file: !11, line: 17, column: 13)
!58 = !DILocation(line: 17, column: 22, scope: !57)
!59 = !DILocation(line: 17, column: 13, scope: !47)
!60 = !DILocation(line: 20, column: 13, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !11, line: 17, column: 28)
!62 = !DILocation(line: 22, column: 13, scope: !63)
!63 = distinct !DILexicalBlock(scope: !47, file: !11, line: 22, column: 13)
!64 = !DILocation(line: 22, column: 17, scope: !63)
!65 = !DILocation(line: 22, column: 13, scope: !47)
!66 = !DILocation(line: 23, column: 13, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !11, line: 22, column: 23)
!68 = !DILocation(line: 25, column: 17, scope: !47)
!69 = !DILocation(line: 25, column: 14, scope: !47)
!70 = distinct !{!70, !42, !71}
!71 = !DILocation(line: 26, column: 5, scope: !10)
!72 = !DILocation(line: 28, column: 5, scope: !10)
!73 = !DILocation(line: 29, column: 1, scope: !10)
!74 = distinct !DISubprogram(name: "cgc_receive_delim", scope: !11, file: !11, line: 31, type: !75, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!75 = !DISubroutineType(types: !76)
!76 = !{!14, !14, !77, !18, !17}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 32)
!78 = !DILocalVariable(name: "fd", arg: 1, scope: !74, file: !11, line: 31, type: !14)
!79 = !DILocation(line: 31, column: 27, scope: !74)
!80 = !DILocalVariable(name: "buf", arg: 2, scope: !74, file: !11, line: 31, type: !77)
!81 = !DILocation(line: 31, column: 37, scope: !74)
!82 = !DILocalVariable(name: "size", arg: 3, scope: !74, file: !11, line: 31, type: !18)
!83 = !DILocation(line: 31, column: 59, scope: !74)
!84 = !DILocalVariable(name: "delim", arg: 4, scope: !74, file: !11, line: 31, type: !17)
!85 = !DILocation(line: 31, column: 70, scope: !74)
!86 = !DILocalVariable(name: "rx", scope: !74, file: !11, line: 32, type: !19)
!87 = !DILocation(line: 32, column: 16, scope: !74)
!88 = !DILocalVariable(name: "rx_now", scope: !74, file: !11, line: 33, type: !19)
!89 = !DILocation(line: 33, column: 16, scope: !74)
!90 = !DILocalVariable(name: "ret", scope: !74, file: !11, line: 34, type: !14)
!91 = !DILocation(line: 34, column: 9, scope: !74)
!92 = !DILocation(line: 36, column: 10, scope: !93)
!93 = distinct !DILexicalBlock(scope: !74, file: !11, line: 36, column: 9)
!94 = !DILocation(line: 36, column: 9, scope: !74)
!95 = !DILocation(line: 37, column: 9, scope: !93)
!96 = !DILocation(line: 39, column: 10, scope: !97)
!97 = distinct !DILexicalBlock(scope: !74, file: !11, line: 39, column: 9)
!98 = !DILocation(line: 39, column: 9, scope: !74)
!99 = !DILocation(line: 40, column: 9, scope: !97)
!100 = !DILocation(line: 42, column: 5, scope: !74)
!101 = !DILocation(line: 42, column: 12, scope: !74)
!102 = !DILocation(line: 42, column: 17, scope: !74)
!103 = !DILocation(line: 42, column: 15, scope: !74)
!104 = !DILocation(line: 43, column: 27, scope: !105)
!105 = distinct !DILexicalBlock(scope: !74, file: !11, line: 42, column: 23)
!106 = !DILocation(line: 43, column: 31, scope: !105)
!107 = !DILocation(line: 43, column: 37, scope: !105)
!108 = !DILocation(line: 43, column: 35, scope: !105)
!109 = !DILocation(line: 43, column: 15, scope: !105)
!110 = !DILocation(line: 43, column: 13, scope: !105)
!111 = !DILocation(line: 44, column: 13, scope: !112)
!112 = distinct !DILexicalBlock(scope: !105, file: !11, line: 44, column: 13)
!113 = !DILocation(line: 44, column: 20, scope: !112)
!114 = !DILocation(line: 44, column: 13, scope: !105)
!115 = !DILocation(line: 47, column: 13, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !11, line: 44, column: 26)
!117 = !DILocation(line: 49, column: 13, scope: !118)
!118 = distinct !DILexicalBlock(scope: !105, file: !11, line: 49, column: 13)
!119 = !DILocation(line: 49, column: 17, scope: !118)
!120 = !DILocation(line: 49, column: 13, scope: !105)
!121 = !DILocation(line: 50, column: 13, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !11, line: 49, column: 23)
!123 = !DILocation(line: 52, column: 13, scope: !124)
!124 = distinct !DILexicalBlock(scope: !105, file: !11, line: 52, column: 13)
!125 = !DILocation(line: 52, column: 17, scope: !124)
!126 = !DILocation(line: 52, column: 24, scope: !124)
!127 = !DILocation(line: 52, column: 21, scope: !124)
!128 = !DILocation(line: 52, column: 13, scope: !105)
!129 = !DILocation(line: 53, column: 12, scope: !130)
!130 = distinct !DILexicalBlock(scope: !124, file: !11, line: 52, column: 31)
!131 = !DILocation(line: 55, column: 15, scope: !105)
!132 = !DILocation(line: 55, column: 12, scope: !105)
!133 = distinct !{!133, !100, !134}
!134 = !DILocation(line: 56, column: 5, scope: !74)
!135 = !DILocation(line: 58, column: 5, scope: !74)
!136 = !DILocation(line: 59, column: 1, scope: !74)
!137 = distinct !DISubprogram(name: "main", scope: !138, file: !138, line: 14, type: !139, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!138 = !DIFile(filename: "challenges/Palindrome/src/service.c", directory: "/home/tkappen/3ASummer/cb-multios")
!139 = !DISubroutineType(types: !140)
!140 = !{!14, !14, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 32)
!142 = !DILocalVariable(name: "cgc_argc", arg: 1, scope: !137, file: !138, line: 14, type: !14)
!143 = !DILocation(line: 14, column: 14, scope: !137)
!144 = !DILocalVariable(name: "cgc_argv", arg: 2, scope: !137, file: !138, line: 14, type: !141)
!145 = !DILocation(line: 14, column: 30, scope: !137)
!146 = !DILocalVariable(name: "r", scope: !137, file: !138, line: 15, type: !14)
!147 = !DILocation(line: 15, column: 9, scope: !137)
!148 = !DILocation(line: 17, column: 9, scope: !149)
!149 = distinct !DILexicalBlock(scope: !137, file: !138, line: 17, column: 9)
!150 = !DILocation(line: 17, column: 47, scope: !149)
!151 = !DILocation(line: 17, column: 9, scope: !137)
!152 = !DILocation(line: 18, column: 9, scope: !153)
!153 = distinct !DILexicalBlock(scope: !149, file: !138, line: 17, column: 53)
!154 = !DILocation(line: 21, column: 5, scope: !137)
!155 = !DILocation(line: 22, column: 13, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !138, line: 22, column: 13)
!157 = distinct !DILexicalBlock(scope: !137, file: !138, line: 21, column: 13)
!158 = !DILocation(line: 22, column: 53, scope: !156)
!159 = !DILocation(line: 22, column: 13, scope: !157)
!160 = !DILocation(line: 23, column: 13, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !138, line: 22, column: 59)
!162 = !DILocation(line: 25, column: 13, scope: !157)
!163 = !DILocation(line: 25, column: 11, scope: !157)
!164 = !DILocation(line: 26, column: 13, scope: !165)
!165 = distinct !DILexicalBlock(scope: !157, file: !138, line: 26, column: 13)
!166 = !DILocation(line: 26, column: 15, scope: !165)
!167 = !DILocation(line: 26, column: 13, scope: !157)
!168 = !DILocation(line: 27, column: 13, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !138, line: 26, column: 21)
!170 = !DILocation(line: 29, column: 18, scope: !171)
!171 = distinct !DILexicalBlock(scope: !165, file: !138, line: 29, column: 18)
!172 = !DILocation(line: 29, column: 20, scope: !171)
!173 = !DILocation(line: 29, column: 18, scope: !165)
!174 = !DILocation(line: 30, column: 17, scope: !175)
!175 = distinct !DILexicalBlock(scope: !176, file: !138, line: 30, column: 17)
!176 = distinct !DILexicalBlock(scope: !171, file: !138, line: 29, column: 25)
!177 = !DILocation(line: 30, column: 55, scope: !175)
!178 = !DILocation(line: 30, column: 17, scope: !176)
!179 = !DILocation(line: 31, column: 17, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !138, line: 30, column: 61)
!181 = !DILocation(line: 33, column: 9, scope: !176)
!182 = !DILocation(line: 35, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !138, line: 35, column: 17)
!184 = distinct !DILexicalBlock(scope: !171, file: !138, line: 34, column: 13)
!185 = !DILocation(line: 35, column: 57, scope: !183)
!186 = !DILocation(line: 35, column: 17, scope: !184)
!187 = !DILocation(line: 36, column: 17, scope: !188)
!188 = distinct !DILexicalBlock(scope: !183, file: !138, line: 35, column: 63)
!189 = distinct !{!189, !154, !190}
!190 = !DILocation(line: 39, column: 5, scope: !137)
!191 = !DILocation(line: 40, column: 5, scope: !137)
!192 = distinct !DISubprogram(name: "cgc_check", scope: !138, file: !138, line: 43, type: !193, scopeLine: 43, spFlags: DISPFlagDefinition, unit: !3, retainedNodes: !2)
!193 = !DISubroutineType(types: !194)
!194 = !{!14}
!195 = !DILocalVariable(name: "len", scope: !192, file: !138, line: 44, type: !14)
!196 = !DILocation(line: 44, column: 9, scope: !192)
!197 = !DILocalVariable(name: "i", scope: !192, file: !138, line: 45, type: !14)
!198 = !DILocation(line: 45, column: 9, scope: !192)
!199 = !DILocalVariable(name: "pal", scope: !192, file: !138, line: 46, type: !14)
!200 = !DILocation(line: 46, column: 9, scope: !192)
!201 = !DILocalVariable(name: "string", scope: !192, file: !138, line: 47, type: !202)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 64)
!205 = !DILocation(line: 47, column: 10, scope: !192)
!206 = !DILocation(line: 48, column: 12, scope: !207)
!207 = distinct !DILexicalBlock(scope: !192, file: !138, line: 48, column: 5)
!208 = !DILocation(line: 48, column: 10, scope: !207)
!209 = !DILocation(line: 48, column: 17, scope: !210)
!210 = distinct !DILexicalBlock(scope: !207, file: !138, line: 48, column: 5)
!211 = !DILocation(line: 48, column: 19, scope: !210)
!212 = !DILocation(line: 48, column: 5, scope: !207)
!213 = !DILocation(line: 49, column: 16, scope: !210)
!214 = !DILocation(line: 49, column: 9, scope: !210)
!215 = !DILocation(line: 49, column: 19, scope: !210)
!216 = !DILocation(line: 48, column: 38, scope: !210)
!217 = !DILocation(line: 48, column: 5, scope: !210)
!218 = distinct !{!218, !212, !219}
!219 = !DILocation(line: 49, column: 21, scope: !207)
!220 = !DILocation(line: 54, column: 30, scope: !221)
!221 = distinct !DILexicalBlock(scope: !192, file: !138, line: 54, column: 9)
!222 = !DILocation(line: 54, column: 9, scope: !221)
!223 = !DILocation(line: 54, column: 49, scope: !221)
!224 = !DILocation(line: 54, column: 9, scope: !192)
!225 = !DILocation(line: 55, column: 9, scope: !221)
!226 = !DILocation(line: 57, column: 11, scope: !227)
!227 = distinct !DILexicalBlock(scope: !192, file: !138, line: 57, column: 5)
!228 = !DILocation(line: 57, column: 9, scope: !227)
!229 = !DILocation(line: 57, column: 23, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !138, line: 57, column: 5)
!231 = !DILocation(line: 57, column: 16, scope: !230)
!232 = !DILocation(line: 57, column: 26, scope: !230)
!233 = !DILocation(line: 57, column: 5, scope: !227)
!234 = !DILocation(line: 58, column: 12, scope: !235)
!235 = distinct !DILexicalBlock(scope: !230, file: !138, line: 57, column: 39)
!236 = !DILocation(line: 59, column: 5, scope: !235)
!237 = !DILocation(line: 57, column: 36, scope: !230)
!238 = !DILocation(line: 57, column: 5, scope: !230)
!239 = distinct !{!239, !233, !240}
!240 = !DILocation(line: 59, column: 5, scope: !227)
!241 = !DILocalVariable(name: "steps", scope: !192, file: !138, line: 60, type: !14)
!242 = !DILocation(line: 60, column: 9, scope: !192)
!243 = !DILocation(line: 60, column: 17, scope: !192)
!244 = !DILocation(line: 61, column: 8, scope: !245)
!245 = distinct !DILexicalBlock(scope: !192, file: !138, line: 61, column: 8)
!246 = !DILocation(line: 61, column: 12, scope: !245)
!247 = !DILocation(line: 61, column: 16, scope: !245)
!248 = !DILocation(line: 61, column: 8, scope: !192)
!249 = !DILocation(line: 62, column: 14, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !138, line: 61, column: 21)
!251 = !DILocation(line: 63, column: 5, scope: !250)
!252 = !DILocation(line: 64, column: 11, scope: !253)
!253 = distinct !DILexicalBlock(scope: !192, file: !138, line: 64, column: 5)
!254 = !DILocation(line: 64, column: 9, scope: !253)
!255 = !DILocation(line: 64, column: 16, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !138, line: 64, column: 5)
!257 = !DILocation(line: 64, column: 21, scope: !256)
!258 = !DILocation(line: 64, column: 26, scope: !256)
!259 = !DILocation(line: 64, column: 18, scope: !256)
!260 = !DILocation(line: 64, column: 5, scope: !253)
!261 = !DILocation(line: 65, column: 19, scope: !262)
!262 = distinct !DILexicalBlock(scope: !263, file: !138, line: 65, column: 12)
!263 = distinct !DILexicalBlock(scope: !256, file: !138, line: 64, column: 34)
!264 = !DILocation(line: 65, column: 12, scope: !262)
!265 = !DILocation(line: 65, column: 32, scope: !262)
!266 = !DILocation(line: 65, column: 35, scope: !262)
!267 = !DILocation(line: 65, column: 38, scope: !262)
!268 = !DILocation(line: 65, column: 37, scope: !262)
!269 = !DILocation(line: 65, column: 25, scope: !262)
!270 = !DILocation(line: 65, column: 22, scope: !262)
!271 = !DILocation(line: 65, column: 12, scope: !263)
!272 = !DILocation(line: 66, column: 17, scope: !273)
!273 = distinct !DILexicalBlock(scope: !262, file: !138, line: 65, column: 41)
!274 = !DILocation(line: 67, column: 9, scope: !273)
!275 = !DILocation(line: 68, column: 5, scope: !263)
!276 = !DILocation(line: 64, column: 31, scope: !256)
!277 = !DILocation(line: 64, column: 5, scope: !256)
!278 = distinct !{!278, !260, !279}
!279 = !DILocation(line: 68, column: 5, scope: !253)
!280 = !DILocation(line: 69, column: 8, scope: !281)
!281 = distinct !DILexicalBlock(scope: !192, file: !138, line: 69, column: 8)
!282 = !DILocation(line: 69, column: 18, scope: !281)
!283 = !DILocation(line: 69, column: 8, scope: !192)
!284 = !DILocation(line: 70, column: 13, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !138, line: 70, column: 13)
!286 = distinct !DILexicalBlock(scope: !281, file: !138, line: 69, column: 25)
!287 = !DILocation(line: 70, column: 65, scope: !285)
!288 = !DILocation(line: 70, column: 13, scope: !286)
!289 = !DILocation(line: 71, column: 13, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !138, line: 70, column: 71)
!291 = !DILocation(line: 73, column: 5, scope: !286)
!292 = !DILocation(line: 74, column: 12, scope: !192)
!293 = !DILocation(line: 74, column: 5, scope: !192)
!294 = !DILocation(line: 75, column: 1, scope: !192)
