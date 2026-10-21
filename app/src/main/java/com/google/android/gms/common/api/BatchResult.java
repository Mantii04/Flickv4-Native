package com.google.android.gms.common.api;

/* loaded from: classes.dex */
public final class BatchResult implements Result {

    /* renamed from: b, reason: collision with root package name */
    public final Status f10587b;

    public BatchResult(Status status) {
        this.f10587b = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.f10587b;
    }
}
