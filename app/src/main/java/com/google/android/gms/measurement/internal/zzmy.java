package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
abstract class zzmy extends zzmz {

    /* renamed from: c, reason: collision with root package name */
    public boolean f12137c;

    public zzmy(zznd zzndVar) {
        super(zzndVar);
        this.f12138b.f12199r++;
    }

    public final void zzak() {
        if (!this.f12137c) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzal() {
        if (this.f12137c) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzc();
        this.f12138b.f12200s++;
        this.f12137c = true;
    }

    public abstract boolean zzc();
}
