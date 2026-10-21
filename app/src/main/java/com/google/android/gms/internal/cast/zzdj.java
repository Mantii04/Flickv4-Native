package com.google.android.gms.internal.cast;

import android.annotation.TargetApi;
import android.hardware.display.DisplayManager;
import android.hardware.display.VirtualDisplay;
import android.os.RemoteException;
import android.view.Display;
import android.view.Surface;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Status;

@TargetApi(19)
/* loaded from: classes2.dex */
public final class zzdj extends zzdi {
    final /* synthetic */ zzdl zza;
    private final zzdq zzb;

    public zzdj(zzdl zzdlVar, zzdq zzdqVar) {
        this.zza = zzdlVar;
        this.zzb = zzdqVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.cast.zzdi, com.google.android.gms.internal.cast.zzds
    public final void zzb(int i2, int i7, Surface surface) {
        Logger logger;
        VirtualDisplay virtualDisplay;
        VirtualDisplay virtualDisplay2;
        Logger logger2;
        VirtualDisplay virtualDisplay3;
        Logger logger3;
        Logger logger4;
        Logger logger5;
        logger = zzdn.zza;
        logger.d("onConnected", new Object[0]);
        DisplayManager displayManager = (DisplayManager) this.zzb.getContext().getSystemService("display");
        if (displayManager == null) {
            logger5 = zzdn.zza;
            logger5.e("Unable to get the display manager", new Object[0]);
            this.zza.setResult((zzdl) new zzdm(Status.f10607p));
            return;
        }
        zzdn.zzf(this.zza.zzc);
        this.zza.zzc.zzc = displayManager.createVirtualDisplay("private_display", i2, i7, ((i2 < i7 ? i2 : i7) * 320) / 1080, surface, 2);
        zzdn zzdnVar = this.zza.zzc;
        virtualDisplay = zzdnVar.zzc;
        if (virtualDisplay == null) {
            logger4 = zzdn.zza;
            logger4.e("Unable to create virtual display", new Object[0]);
            this.zza.setResult((zzdl) new zzdm(Status.f10607p));
            return;
        }
        virtualDisplay2 = zzdnVar.zzc;
        if (virtualDisplay2.getDisplay() == null) {
            logger3 = zzdn.zza;
            logger3.e("Virtual display does not have a display", new Object[0]);
            this.zza.setResult((zzdl) new zzdm(Status.f10607p));
            return;
        }
        try {
            zzdq zzdqVar = this.zzb;
            virtualDisplay3 = this.zza.zzc.zzc;
            ((zzdt) zzdqVar.getService()).zzf(this, virtualDisplay3.getDisplay().getDisplayId());
        } catch (RemoteException | IllegalStateException unused) {
            logger2 = zzdn.zza;
            logger2.e("Unable to provision the route's new virtual Display", new Object[0]);
            this.zza.setResult((zzdl) new zzdm(Status.f10607p));
        }
    }

    @Override // com.google.android.gms.internal.cast.zzdi, com.google.android.gms.internal.cast.zzds
    public final void zzc() {
        Logger logger;
        VirtualDisplay virtualDisplay;
        VirtualDisplay virtualDisplay2;
        Logger logger2;
        Logger logger3;
        logger = zzdn.zza;
        logger.d("onConnectedWithDisplay", new Object[0]);
        zzdn zzdnVar = this.zza.zzc;
        virtualDisplay = zzdnVar.zzc;
        if (virtualDisplay == null) {
            logger3 = zzdn.zza;
            logger3.e("There is no virtual display", new Object[0]);
            this.zza.setResult((zzdl) new zzdm(Status.f10607p));
            return;
        }
        virtualDisplay2 = zzdnVar.zzc;
        Display display = virtualDisplay2.getDisplay();
        if (display != null) {
            this.zza.setResult((zzdl) new zzdm(display));
            return;
        }
        logger2 = zzdn.zza;
        logger2.e("Virtual display no longer has a display", new Object[0]);
        this.zza.setResult((zzdl) new zzdm(Status.f10607p));
    }

    @Override // com.google.android.gms.internal.cast.zzdi, com.google.android.gms.internal.cast.zzds
    public final void zzd(int i2) throws RemoteException {
        Logger logger;
        logger = zzdn.zza;
        logger.d("onError: %d", Integer.valueOf(i2));
        zzdn.zzf(this.zza.zzc);
        this.zza.setResult((zzdl) new zzdm(Status.f10607p));
    }
}
