package com.google.android.gms.cast.internal;

/* loaded from: classes.dex */
final class zzal implements zzas {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzas f10352a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzaq f10353b;

    public zzal(zzaq zzaqVar, zzas zzasVar) {
        this.f10353b = zzaqVar;
        this.f10352a = zzasVar;
    }

    @Override // com.google.android.gms.cast.internal.zzas
    public final void zza(String str, long j7, int i2, Object obj, long j8, long j9) {
        this.f10353b.f10359g = null;
        zzas zzasVar = this.f10352a;
        if (zzasVar != null) {
            zzasVar.zza(str, j7, i2, obj, j8, j9);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzas
    public final void zzb(String str, long j7, long j8, long j9) {
        zzas zzasVar = this.f10352a;
        if (zzasVar != null) {
            zzasVar.zzb(str, j7, j8, j9);
        }
    }
}
