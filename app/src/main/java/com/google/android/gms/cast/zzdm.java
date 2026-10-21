package com.google.android.gms.cast;

/* loaded from: classes.dex */
final class zzdm implements com.google.android.gms.cast.internal.zzar {

    /* renamed from: a, reason: collision with root package name */
    public long f10539a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaPlayer f10540b;

    public zzdm(RemoteMediaPlayer remoteMediaPlayer) {
        this.f10540b = remoteMediaPlayer;
    }

    @Override // com.google.android.gms.cast.internal.zzar
    public final long zza() {
        long j7 = this.f10539a + 1;
        this.f10539a = j7;
        return j7;
    }

    @Override // com.google.android.gms.cast.internal.zzar
    public final void zzb(String str, String str2, long j7, String str3) {
        throw new IllegalStateException("No GoogleApiClient available");
    }
}
