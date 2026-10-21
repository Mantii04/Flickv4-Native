package com.google.firebase.crashlytics.ktx;

import com.google.firebase.crashlytics.FirebaseCrashlytics;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class KeyValueBuilder {
    private final FirebaseCrashlytics crashlytics;

    public KeyValueBuilder(FirebaseCrashlytics crashlytics) {
        j.checkNotNullParameter(crashlytics, "crashlytics");
        this.crashlytics = crashlytics;
    }

    public final void key(String key, boolean z6) {
        j.checkNotNullParameter(key, "key");
        this.crashlytics.setCustomKey(key, z6);
    }

    public final void key(String key, double d7) {
        j.checkNotNullParameter(key, "key");
        this.crashlytics.setCustomKey(key, d7);
    }

    public final void key(String key, float f3) {
        j.checkNotNullParameter(key, "key");
        this.crashlytics.setCustomKey(key, f3);
    }

    public final void key(String key, int i2) {
        j.checkNotNullParameter(key, "key");
        this.crashlytics.setCustomKey(key, i2);
    }

    public final void key(String key, long j7) {
        j.checkNotNullParameter(key, "key");
        this.crashlytics.setCustomKey(key, j7);
    }

    public final void key(String key, String value) {
        j.checkNotNullParameter(key, "key");
        j.checkNotNullParameter(value, "value");
        this.crashlytics.setCustomKey(key, value);
    }
}
