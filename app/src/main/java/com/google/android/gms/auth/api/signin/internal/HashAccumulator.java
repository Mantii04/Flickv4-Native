package com.google.android.gms.auth.api.signin.internal;

import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes.dex */
public class HashAccumulator {

    /* renamed from: a, reason: collision with root package name */
    public int f9562a = 1;

    @KeepForSdk
    public HashAccumulator addObject(Object obj) {
        this.f9562a = (31 * this.f9562a) + (obj == null ? 0 : obj.hashCode());
        return this;
    }

    @KeepForSdk
    public int hash() {
        return this.f9562a;
    }

    public final HashAccumulator zaa(boolean z6) {
        this.f9562a = (31 * this.f9562a) + (z6 ? 1 : 0);
        return this;
    }
}
