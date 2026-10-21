package com.google.firebase.crashlytics.internal.stacktrace;

/* loaded from: classes2.dex */
public class MiddleOutStrategy implements StackTraceTrimmingStrategy {
    private final int trimmedSize;

    public MiddleOutStrategy(int i2) {
        this.trimmedSize = i2;
    }

    @Override // com.google.firebase.crashlytics.internal.stacktrace.StackTraceTrimmingStrategy
    public StackTraceElement[] getTrimmedStackTrace(StackTraceElement[] stackTraceElementArr) {
        int length = stackTraceElementArr.length;
        int i2 = this.trimmedSize;
        if (length <= i2) {
            return stackTraceElementArr;
        }
        int i7 = i2 / 2;
        int i8 = i2 - i7;
        StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[i2];
        System.arraycopy(stackTraceElementArr, 0, stackTraceElementArr2, 0, i8);
        System.arraycopy(stackTraceElementArr, stackTraceElementArr.length - i7, stackTraceElementArr2, i8, i7);
        return stackTraceElementArr2;
    }
}
