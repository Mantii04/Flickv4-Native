package com.google.firebase.crashlytics.internal.stacktrace;

import java.util.HashMap;

/* loaded from: classes2.dex */
public class RemoveRepeatsStrategy implements StackTraceTrimmingStrategy {
    private final int maxRepetitions;

    public RemoveRepeatsStrategy() {
        this(1);
    }

    private static boolean isRepeatingSequence(StackTraceElement[] stackTraceElementArr, int i2, int i7) {
        int i8 = i7 - i2;
        if (i7 + i8 > stackTraceElementArr.length) {
            return false;
        }
        for (int i9 = 0; i9 < i8; i9++) {
            if (!stackTraceElementArr[i2 + i9].equals(stackTraceElementArr[i7 + i9])) {
                return false;
            }
        }
        return true;
    }

    private static StackTraceElement[] trimRepeats(StackTraceElement[] stackTraceElementArr, int i2) {
        int i7;
        HashMap hashMap = new HashMap();
        StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[stackTraceElementArr.length];
        int i8 = 0;
        int i9 = 0;
        int i10 = 1;
        while (i8 < stackTraceElementArr.length) {
            StackTraceElement stackTraceElement = stackTraceElementArr[i8];
            Integer num = (Integer) hashMap.get(stackTraceElement);
            if (num == null || !isRepeatingSequence(stackTraceElementArr, num.intValue(), i8)) {
                stackTraceElementArr2[i9] = stackTraceElementArr[i8];
                i9++;
                i10 = 1;
                i7 = i8;
            } else {
                int intValue = i8 - num.intValue();
                if (i10 < i2) {
                    System.arraycopy(stackTraceElementArr, i8, stackTraceElementArr2, i9, intValue);
                    i9 += intValue;
                    i10++;
                }
                i7 = (intValue - 1) + i8;
            }
            hashMap.put(stackTraceElement, Integer.valueOf(i8));
            i8 = i7 + 1;
        }
        StackTraceElement[] stackTraceElementArr3 = new StackTraceElement[i9];
        System.arraycopy(stackTraceElementArr2, 0, stackTraceElementArr3, 0, i9);
        return stackTraceElementArr3;
    }

    @Override // com.google.firebase.crashlytics.internal.stacktrace.StackTraceTrimmingStrategy
    public StackTraceElement[] getTrimmedStackTrace(StackTraceElement[] stackTraceElementArr) {
        StackTraceElement[] trimRepeats = trimRepeats(stackTraceElementArr, this.maxRepetitions);
        return trimRepeats.length < stackTraceElementArr.length ? trimRepeats : stackTraceElementArr;
    }

    public RemoveRepeatsStrategy(int i2) {
        this.maxRepetitions = i2;
    }
}
