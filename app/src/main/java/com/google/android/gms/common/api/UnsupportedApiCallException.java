package com.google.android.gms.common.api;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;

/* loaded from: classes.dex */
public final class UnsupportedApiCallException extends UnsupportedOperationException {

    /* renamed from: b, reason: collision with root package name */
    public final Feature f10614b;

    @KeepForSdk
    public UnsupportedApiCallException(Feature feature) {
        this.f10614b = feature;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return "Missing ".concat(String.valueOf(this.f10614b));
    }
}
