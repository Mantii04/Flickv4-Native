package com.google.android.gms.common.api.internal;

/* loaded from: classes.dex */
final class zabn implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f10720b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zabq f10721e;

    public zabn(zabq zabqVar, int i2) {
        this.f10721e = zabqVar;
        this.f10720b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10721e.g(this.f10720b);
    }
}
