package com.google.android.gms.common.api;

/* loaded from: classes.dex */
public class ApiException extends Exception {

    /* renamed from: b, reason: collision with root package name */
    public final Status f10585b;

    public ApiException(Status status) {
        super(status.getStatusCode() + ": " + (status.getStatusMessage() != null ? status.getStatusMessage() : ""));
        this.f10585b = status;
    }

    public Status getStatus() {
        return this.f10585b;
    }

    public int getStatusCode() {
        return this.f10585b.getStatusCode();
    }
}
