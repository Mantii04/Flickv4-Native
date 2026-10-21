package com.google.android.gms.measurement.internal;

/* loaded from: classes2.dex */
final class zzhw implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f11752b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f11753e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f11754f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ long f11755j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ zzhs f11756m;

    public zzhw(zzhs zzhsVar, String str, String str2, String str3, long j7) {
        this.f11752b = str;
        this.f11753e = str2;
        this.f11754f = str3;
        this.f11755j = j7;
        this.f11756m = zzhsVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.f11753e;
        zzhs zzhsVar = this.f11756m;
        String str2 = this.f11752b;
        if (str2 == null) {
            zzhsVar.f11742a.zza(str, null);
        } else {
            zzhsVar.f11742a.zza(str, new zzks(this.f11754f, str2, this.f11755j));
        }
    }
}
