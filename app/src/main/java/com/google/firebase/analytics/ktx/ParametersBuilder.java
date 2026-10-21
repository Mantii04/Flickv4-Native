package com.google.firebase.analytics.ktx;

import android.os.Bundle;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class ParametersBuilder {
    private final Bundle zza = new Bundle();

    public final Bundle getBundle() {
        return this.zza;
    }

    public final void param(String key, double d7) {
        j.checkNotNullParameter(key, "key");
        this.zza.putDouble(key, d7);
    }

    public final void param(String key, long j7) {
        j.checkNotNullParameter(key, "key");
        this.zza.putLong(key, j7);
    }

    public final void param(String key, Bundle value) {
        j.checkNotNullParameter(key, "key");
        j.checkNotNullParameter(value, "value");
        this.zza.putBundle(key, value);
    }

    public final void param(String key, String value) {
        j.checkNotNullParameter(key, "key");
        j.checkNotNullParameter(value, "value");
        this.zza.putString(key, value);
    }

    public final void param(String key, Bundle[] value) {
        j.checkNotNullParameter(key, "key");
        j.checkNotNullParameter(value, "value");
        this.zza.putParcelableArray(key, value);
    }
}
