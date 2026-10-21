package com.google.android.gms.cast.framework;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.cast.internal.Logger;

/* loaded from: classes.dex */
public class ReconnectionService extends Service {

    /* renamed from: e, reason: collision with root package name */
    public static final Logger f9871e = new Logger("ReconnectionService");

    /* renamed from: b, reason: collision with root package name */
    public zzat f9872b;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        zzat zzatVar = this.f9872b;
        if (zzatVar != null) {
            try {
                return zzatVar.zzf(intent);
            } catch (RemoteException e3) {
                f9871e.d(e3, "Unable to call %s on %s.", "onBind", "zzat");
            }
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        CastContext sharedInstance = CastContext.getSharedInstance(this);
        zzat zzc = com.google.android.gms.internal.cast.zzag.zzc(this, sharedInstance.getSessionManager().zzb(), sharedInstance.zzc().zza());
        this.f9872b = zzc;
        if (zzc != null) {
            try {
                zzc.zzg();
            } catch (RemoteException e3) {
                f9871e.d(e3, "Unable to call %s on %s.", "onCreate", "zzat");
            }
            super.onCreate();
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        zzat zzatVar = this.f9872b;
        if (zzatVar != null) {
            try {
                zzatVar.zzh();
            } catch (RemoteException e3) {
                f9871e.d(e3, "Unable to call %s on %s.", "onDestroy", "zzat");
            }
            super.onDestroy();
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i2, int i7) {
        zzat zzatVar = this.f9872b;
        if (zzatVar != null) {
            try {
                return zzatVar.zze(intent, i2, i7);
            } catch (RemoteException e3) {
                f9871e.d(e3, "Unable to call %s on %s.", "onStartCommand", "zzat");
            }
        }
        return 2;
    }
}
