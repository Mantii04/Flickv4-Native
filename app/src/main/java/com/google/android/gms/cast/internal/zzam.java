package com.google.android.gms.cast.internal;

/* loaded from: classes.dex */
final class zzam implements zzas {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzas f10354a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzaq f10355b;

    public zzam(zzaq zzaqVar, zzas zzasVar) {
        this.f10355b = zzaqVar;
        this.f10354a = zzasVar;
    }

    @Override // com.google.android.gms.cast.internal.zzas
    public final void zza(String str, long j7, int i2, Object obj, long j8, long j9) {
        int i7;
        if (this.f10354a != null) {
            if (i2 == 2001) {
                zzaq zzaqVar = this.f10355b;
                zzaqVar.f10395a.w("Possibility of local queue out of sync with receiver queue. Refetching sequence number. Current Local Sequence Number = %d", Integer.valueOf(zzaqVar.f10361i));
                zzaqVar.f10360h.zzl();
                i7 = 2001;
            } else {
                i7 = i2;
            }
            this.f10354a.zza(str, j7, i7, obj, j8, j9);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzas
    public final void zzb(String str, long j7, long j8, long j9) {
        zzas zzasVar = this.f10354a;
        if (zzasVar != null) {
            zzasVar.zzb(str, j7, j8, j9);
        }
    }
}
