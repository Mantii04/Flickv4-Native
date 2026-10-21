package com.google.android.gms.cast.internal;

import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class zzq implements Cast.ApplicationConnectionResult {

    /* renamed from: b, reason: collision with root package name */
    public final Status f10398b;

    /* renamed from: e, reason: collision with root package name */
    public final ApplicationMetadata f10399e;

    /* renamed from: f, reason: collision with root package name */
    public final String f10400f;

    /* renamed from: j, reason: collision with root package name */
    public final String f10401j;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f10402m;

    public zzq(Status status, ApplicationMetadata applicationMetadata, String str, String str2, boolean z6) {
        this.f10398b = status;
        this.f10399e = applicationMetadata;
        this.f10400f = str;
        this.f10401j = str2;
        this.f10402m = z6;
    }

    @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
    public final ApplicationMetadata getApplicationMetadata() {
        return this.f10399e;
    }

    @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
    public final String getApplicationStatus() {
        return this.f10400f;
    }

    @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
    public final String getSessionId() {
        return this.f10401j;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f10398b;
    }

    @Override // com.google.android.gms.cast.Cast.ApplicationConnectionResult
    public final boolean getWasLaunched() {
        return this.f10402m;
    }
}
