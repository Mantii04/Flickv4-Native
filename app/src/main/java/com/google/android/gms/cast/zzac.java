package com.google.android.gms.cast;

import android.hardware.display.DisplayManager;
import android.hardware.display.VirtualDisplay;
import android.os.RemoteException;
import android.view.Display;
import android.view.Surface;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzac extends zzaf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f10449a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ com.google.android.gms.internal.cast.zzdo f10450b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CastRemoteDisplayClient f10451c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ zzal f10452d;

    public zzac(CastRemoteDisplayClient castRemoteDisplayClient, TaskCompletionSource taskCompletionSource, com.google.android.gms.internal.cast.zzdo zzdoVar, zzal zzalVar) {
        this.f10451c = castRemoteDisplayClient;
        this.f10449a = taskCompletionSource;
        this.f10450b = zzdoVar;
        this.f10452d = zzalVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.cast.zzaf, com.google.android.gms.internal.cast.zzds
    public final void zzb(int i2, int i7, Surface surface) throws RemoteException {
        CastRemoteDisplayClient castRemoteDisplayClient = this.f10451c;
        castRemoteDisplayClient.f9631j.d("onConnected", new Object[0]);
        DisplayManager displayManager = (DisplayManager) castRemoteDisplayClient.getApplicationContext().getSystemService("display");
        TaskCompletionSource taskCompletionSource = this.f10449a;
        if (displayManager == null) {
            castRemoteDisplayClient.f9631j.e("Unable to get the display manager", new Object[0]);
            TaskUtil.setResultOrApiException(Status.f10607p, null, taskCompletionSource);
            return;
        }
        CastRemoteDisplayClient.a(castRemoteDisplayClient);
        castRemoteDisplayClient.f9632k = displayManager.createVirtualDisplay("private_display", i2, i7, (Math.min(i2, i7) * 320) / 1080, surface, 2);
        VirtualDisplay virtualDisplay = castRemoteDisplayClient.f9632k;
        if (virtualDisplay == null) {
            castRemoteDisplayClient.f9631j.e("Unable to create virtual display", new Object[0]);
            TaskUtil.setResultOrApiException(Status.f10607p, null, taskCompletionSource);
            return;
        }
        Display display = virtualDisplay.getDisplay();
        if (display == null) {
            castRemoteDisplayClient.f9631j.e("Virtual display does not have a display", new Object[0]);
            TaskUtil.setResultOrApiException(Status.f10607p, null, taskCompletionSource);
        } else {
            try {
                ((com.google.android.gms.internal.cast.zzdt) this.f10450b.getService()).zzf(this, display.getDisplayId());
            } catch (RemoteException | IllegalStateException unused) {
                castRemoteDisplayClient.f9631j.e("Unable to provision the route's new virtual Display", new Object[0]);
                TaskUtil.setResultOrApiException(Status.f10607p, null, taskCompletionSource);
            }
        }
    }

    @Override // com.google.android.gms.cast.zzaf, com.google.android.gms.internal.cast.zzds
    public final void zzc() {
        CastRemoteDisplayClient castRemoteDisplayClient = this.f10451c;
        castRemoteDisplayClient.f9631j.d("onConnectedWithDisplay", new Object[0]);
        VirtualDisplay virtualDisplay = castRemoteDisplayClient.f9632k;
        TaskCompletionSource taskCompletionSource = this.f10449a;
        if (virtualDisplay == null) {
            castRemoteDisplayClient.f9631j.e("There is no virtual display", new Object[0]);
            TaskUtil.setResultOrApiException(Status.f10607p, null, taskCompletionSource);
        } else {
            Display display = virtualDisplay.getDisplay();
            if (display != null) {
                TaskUtil.setResultOrApiException(Status.f10605m, display, taskCompletionSource);
            } else {
                castRemoteDisplayClient.f9631j.e("Virtual display no longer has a display", new Object[0]);
                TaskUtil.setResultOrApiException(Status.f10607p, null, taskCompletionSource);
            }
        }
    }

    @Override // com.google.android.gms.cast.zzaf, com.google.android.gms.internal.cast.zzds
    public final void zzd(int i2) throws RemoteException {
        CastRemoteDisplayClient castRemoteDisplayClient = this.f10451c;
        castRemoteDisplayClient.f9631j.d("onError: %d", Integer.valueOf(i2));
        CastRemoteDisplayClient.a(castRemoteDisplayClient);
        TaskUtil.setResultOrApiException(Status.f10607p, null, this.f10449a);
    }

    @Override // com.google.android.gms.cast.zzaf, com.google.android.gms.internal.cast.zzds
    public final void zze(boolean z6) {
        this.f10451c.f9631j.d("onRemoteDisplayMuteStateChanged: %b", Boolean.valueOf(z6));
        if (this.f10452d == null) {
            return;
        }
        new StringBuilder("onRemoteDisplayMuteStateChanged: ").append(z6);
        Logger logger = CastRemoteDisplayLocalService.f9633q;
        throw null;
    }
}
