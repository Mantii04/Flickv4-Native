package com.google.android.gms.cast.internal;

/* loaded from: classes.dex */
public class zzp {

    /* renamed from: a, reason: collision with root package name */
    public final Logger f10395a;

    /* renamed from: b, reason: collision with root package name */
    public final String f10396b;

    /* renamed from: c, reason: collision with root package name */
    public zzar f10397c;

    public zzp(String str, String str2, String str3) {
        CastUtils.throwIfInvalidNamespace(str);
        this.f10396b = str;
        this.f10395a = new Logger("MediaControlChannel", null);
    }

    public final long zzd() {
        zzar zzarVar = this.f10397c;
        if (zzarVar != null) {
            return zzarVar.zza();
        }
        this.f10395a.e("Attempt to generate requestId without a sink", new Object[0]);
        return 0L;
    }

    public final String zze() {
        return this.f10396b;
    }

    public void zzf() {
        throw null;
    }

    public final void zzg(String str, long j7, String str2) throws IllegalStateException {
        zzar zzarVar = this.f10397c;
        if (zzarVar != null) {
            zzarVar.zzb(this.f10396b, str, j7, null);
        } else {
            this.f10395a.e("Attempt to send text message without a sink", new Object[0]);
        }
    }

    public final void zzh(zzar zzarVar) {
        this.f10397c = zzarVar;
        if (zzarVar == null) {
            zzf();
        }
    }
}
