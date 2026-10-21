package com.google.android.gms.tasks;

import java.util.concurrent.ExecutionException;

/* loaded from: classes2.dex */
final class zzaf<T> implements zzae<T> {

    /* renamed from: b, reason: collision with root package name */
    public final Object f12301b = new Object();

    /* renamed from: e, reason: collision with root package name */
    public final int f12302e;

    /* renamed from: f, reason: collision with root package name */
    public final zzw f12303f;

    /* renamed from: j, reason: collision with root package name */
    public int f12304j;

    /* renamed from: m, reason: collision with root package name */
    public int f12305m;

    /* renamed from: n, reason: collision with root package name */
    public int f12306n;

    /* renamed from: p, reason: collision with root package name */
    public Exception f12307p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f12308q;

    public zzaf(int i2, zzw zzwVar) {
        this.f12302e = i2;
        this.f12303f = zzwVar;
    }

    public final void a() {
        int i2 = this.f12304j + this.f12305m + this.f12306n;
        int i7 = this.f12302e;
        if (i2 == i7) {
            Exception exc = this.f12307p;
            zzw zzwVar = this.f12303f;
            if (exc == null) {
                if (this.f12308q) {
                    zzwVar.zzc();
                    return;
                } else {
                    zzwVar.zzb(null);
                    return;
                }
            }
            zzwVar.zza(new ExecutionException(this.f12305m + " out of " + i7 + " underlying tasks failed", this.f12307p));
        }
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void onCanceled() {
        synchronized (this.f12301b) {
            this.f12306n++;
            this.f12308q = true;
            a();
        }
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(Exception exc) {
        synchronized (this.f12301b) {
            this.f12305m++;
            this.f12307p = exc;
            a();
        }
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(T t6) {
        synchronized (this.f12301b) {
            this.f12304j++;
            a();
        }
    }
}
