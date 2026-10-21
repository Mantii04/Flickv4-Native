package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
abstract class zzg extends zzd {

    /* renamed from: b, reason: collision with root package name */
    public boolean f11553b;

    public zzg(zzho zzhoVar) {
        super(zzhoVar);
        this.f11804a.f11706E++;
    }

    public final void zzu() {
        if (!this.f11553b) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzv() {
        if (this.f11553b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (zzz()) {
            return;
        }
        this.f11804a.f11708G.incrementAndGet();
        this.f11553b = true;
    }

    public final void zzw() {
        if (this.f11553b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzx();
        this.f11804a.f11708G.incrementAndGet();
        this.f11553b = true;
    }

    public void zzx() {
    }

    public abstract boolean zzz();
}
