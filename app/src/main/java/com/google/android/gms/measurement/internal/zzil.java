package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
abstract class zzil extends zzim {

    /* renamed from: b, reason: collision with root package name */
    public boolean f11803b;

    public zzil(zzho zzhoVar) {
        super(zzhoVar);
        this.f11804a.f11706E++;
    }

    public void zzaa() {
    }

    public final void zzac() {
        if (!this.f11803b) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzad() {
        if (this.f11803b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (zzo()) {
            return;
        }
        this.f11804a.f11708G.incrementAndGet();
        this.f11803b = true;
    }

    public final void zzae() {
        if (this.f11803b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzaa();
        this.f11804a.f11708G.incrementAndGet();
        this.f11803b = true;
    }

    public abstract boolean zzo();
}
