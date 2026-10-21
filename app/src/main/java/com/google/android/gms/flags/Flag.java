package com.google.android.gms.flags;

import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
@Deprecated
/* loaded from: classes.dex */
public abstract class Flag<T> {

    @Deprecated
    public static class BooleanFlag extends Flag<Boolean> {
    }

    @Deprecated
    @KeepForSdk
    public static class IntegerFlag extends Flag<Integer> {
    }

    @Deprecated
    @KeepForSdk
    public static class LongFlag extends Flag<Long> {
    }

    @Deprecated
    @KeepForSdk
    public static class StringFlag extends Flag<String> {
    }
}
