; ModuleID = 'Palindrome.bc'
source_filename = "llvm-link"
target datalayout = "e-m:o-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:128-n8:16:32-S128"
target triple = "i386-apple-macosx10.12.0"

@.str = private unnamed_addr constant [32 x i8] c"\0AWelcome to Palindrome Finder\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\09Please enter a possible palindrome: \00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"\09\09Nope, that's not a palindrome\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\09\09Yes, that's a palindrome!\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"\0A\0AEASTER EGG!\0A\0A\00", align 1

; Function Attrs: noinline nounwind
define i32 @cgc_transmit_all(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i8*, i8** %6, align 4
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %44

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store i32 2, i32* %4, align 4
  br label %44

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = load i8*, i8** %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds i8, i8* %25, i32 %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub i32 %28, %29
  %31 = call i32 @cgc_transmit(i32 %24, i8* %27, i32 %30, i32* %9) #3
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 3, i32* %4, align 4
  br label %44

35:                                               ; preds = %23
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 3, i32* %4, align 4
  br label %44

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %19

43:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %38, %34, %17, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare i32 @cgc_transmit(i32, i8*, i32, i32*) #1

; Function Attrs: noinline nounwind
define i32 @cgc_receive_delim(i32 %0, i8* %1, i32 %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 4
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %7, align 4
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %53

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store i32 2, i32* %5, align 4
  br label %53

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %48, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i8*, i8** %7, align 4
  %28 = load i32, i32* %10, align 4
  %29 = getelementptr inbounds i8, i8* %27, i32 %28
  %30 = call i32 @cgc_receive(i32 %26, i8* %29, i32 1, i32* %11) #3
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 3, i32* %5, align 4
  br label %53

34:                                               ; preds = %25
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 3, i32* %5, align 4
  br label %53

38:                                               ; preds = %34
  %39 = load i8*, i8** %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = getelementptr inbounds i8, i8* %39, i32 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* %9, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %52

48:                                               ; preds = %38
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %21

52:                                               ; preds = %47, %21
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %37, %33, %19, %15
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare i32 @cgc_receive(i32, i8*, i32, i32*) #1

; Function Attrs: noinline nounwind
define i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 4
  %7 = call i32 @cgc_transmit_all(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i32 31) #3
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @cgc__terminate(i32 0) #4
  unreachable

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %34
  %12 = call i32 @cgc_transmit_all(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), i32 37) #3
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  call void @cgc__terminate(i32 0) #4
  unreachable

15:                                               ; preds = %11
  %16 = call i32 @cgc_check() #3
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %35

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = call i32 @cgc_transmit_all(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i32 33) #3
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  call void @cgc__terminate(i32 0) #4
  unreachable

27:                                               ; preds = %23
  br label %33

28:                                               ; preds = %20
  %29 = call i32 @cgc_transmit_all(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 29) #3
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @cgc__terminate(i32 0) #4
  unreachable

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %27
  br label %34

34:                                               ; preds = %33
  br label %11

35:                                               ; preds = %19
  ret i32 0
}

; Function Attrs: noreturn
declare void @cgc__terminate(i32) #2

; Function Attrs: noinline nounwind
define i32 @cgc_check() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [64 x i8], align 1
  %6 = alloca i32, align 4
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %13, %0
  %8 = load i32, i32* %3, align 4
  %9 = icmp ult i32 %8, 64
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 %11
  store i8 0, i8* %12, align 1
  br label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %7

16:                                               ; preds = %7
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 0
  %18 = call i32 @cgc_receive_delim(i32 0, i8* %17, i32 128, i8 signext 10) #3
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %1, align 4
  br label %78

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %31, %21
  %23 = load i32, i32* %3, align 4
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %22

34:                                               ; preds = %22
  %35 = load i32, i32* %2, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %2, align 4
  %37 = srem i32 %36, 2
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %39, %34
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %63, %42
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sdiv i32 %45, 2
  %47 = icmp sle i32 %44, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load i32, i32* %3, align 4
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load i32, i32* %2, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load i32, i32* %3, align 4
  %56 = sub nsw i32 %54, %55
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %52, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %48
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %43

66:                                               ; preds = %43
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i32 0, i32 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 94
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = call i32 @cgc_transmit_all(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i32 15) #3
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  call void @cgc__terminate(i32 0) #4
  unreachable

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %66
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %1, align 4
  br label %78

78:                                               ; preds = %76, %20
  %79 = load i32, i32* %1, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin }
attributes #4 = { nobuiltin noreturn }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"Apple LLVM version 9.0.0 (clang-900.0.39.2)"}
!1 = !{i32 1, !"NumRegisterParameters", i32 0}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 700000003}
!4 = !{i32 7, !"PIC Level", i32 2}
