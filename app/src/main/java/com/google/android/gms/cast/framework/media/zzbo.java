package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.internal.Logger;
import java.util.HashSet;
import java.util.TimerTask;

/* loaded from: classes.dex */
final class zzbo extends TimerTask {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzbp f10282b;

    public zzbo(zzbp zzbpVar) {
        this.f10282b = zzbpVar;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        zzbp zzbpVar = this.f10282b;
        HashSet hashSet = zzbpVar.f10283a;
        Logger logger = RemoteMediaClient.f10029l;
        RemoteMediaClient remoteMediaClient = zzbpVar.f10287e;
        remoteMediaClient.b(hashSet);
        remoteMediaClient.f10031b.postDelayed(this, zzbpVar.f10284b);
    }
}
