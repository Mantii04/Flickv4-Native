package com.google.android.gms.cast.internal;

/* loaded from: classes.dex */
final class zzr implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzw f10403b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f10404e;

    public zzr(zzw zzwVar, int i2) {
        this.f10403b = zzwVar;
        this.f10404e = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10403b.f10419c.onApplicationDisconnected(this.f10404e);
    }
}
