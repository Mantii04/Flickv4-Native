package com.google.android.gms.cast.framework.media.widget;

import android.os.Looper;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.internal.cast.zzed;
import java.util.TimerTask;

/* loaded from: classes.dex */
final class zzk extends TimerTask {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f10243b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ExpandedControllerActivity f10244e;

    public zzk(ExpandedControllerActivity expandedControllerActivity, RemoteMediaClient remoteMediaClient) {
        this.f10244e = expandedControllerActivity;
        this.f10243b = remoteMediaClient;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        new zzed(Looper.getMainLooper()).post(new zzj(this));
    }
}
