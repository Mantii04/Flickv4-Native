package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.internal.cast.zzed;
import java.util.HashSet;

/* loaded from: classes.dex */
final class zzbp {

    /* renamed from: b, reason: collision with root package name */
    public final long f10284b;

    /* renamed from: d, reason: collision with root package name */
    public boolean f10286d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f10287e;

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f10283a = new HashSet();

    /* renamed from: c, reason: collision with root package name */
    public final Runnable f10285c = new zzbo(this);

    public zzbp(RemoteMediaClient remoteMediaClient, long j7) {
        this.f10287e = remoteMediaClient;
        this.f10284b = j7;
    }

    public final long zzb() {
        return this.f10284b;
    }

    public final void zzd(RemoteMediaClient.ProgressListener progressListener) {
        this.f10283a.add(progressListener);
    }

    public final void zze(RemoteMediaClient.ProgressListener progressListener) {
        this.f10283a.remove(progressListener);
    }

    public final void zzf() {
        RemoteMediaClient remoteMediaClient = this.f10287e;
        zzed zzedVar = remoteMediaClient.f10031b;
        Runnable runnable = this.f10285c;
        zzedVar.removeCallbacks(runnable);
        this.f10286d = true;
        remoteMediaClient.f10031b.postDelayed(runnable, this.f10284b);
    }

    public final void zzg() {
        this.f10287e.f10031b.removeCallbacks(this.f10285c);
        this.f10286d = false;
    }

    public final boolean zzh() {
        return !this.f10283a.isEmpty();
    }

    public final boolean zzi() {
        return this.f10286d;
    }
}
