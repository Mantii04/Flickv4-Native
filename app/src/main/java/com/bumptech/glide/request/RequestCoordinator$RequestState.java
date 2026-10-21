package com.bumptech.glide.request;

/* loaded from: classes.dex */
public enum RequestCoordinator$RequestState {
    RUNNING(false),
    PAUSED(false),
    CLEARED(false),
    SUCCESS(true),
    FAILED(true);


    /* renamed from: b, reason: collision with root package name */
    public final boolean f9408b;

    RequestCoordinator$RequestState(boolean z6) {
        this.f9408b = z6;
    }
}
