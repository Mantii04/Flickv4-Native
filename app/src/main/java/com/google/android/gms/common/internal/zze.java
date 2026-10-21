package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public final class zze implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final int f10950a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BaseGmsClient f10951b;

    public zze(BaseGmsClient baseGmsClient, int i2) {
        this.f10951b = baseGmsClient;
        this.f10950a = i2;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        BaseGmsClient baseGmsClient = this.f10951b;
        if (iBinder == null) {
            BaseGmsClient.zzk(baseGmsClient, 16);
            return;
        }
        obj = baseGmsClient.zzq;
        synchronized (obj) {
            try {
                BaseGmsClient baseGmsClient2 = this.f10951b;
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
                baseGmsClient2.zzr = (queryLocalInterface == null || !(queryLocalInterface instanceof IGmsServiceBroker)) ? new zzad(iBinder) : (IGmsServiceBroker) queryLocalInterface;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f10951b.zzl(0, null, this.f10950a);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Object obj;
        obj = this.f10951b.zzq;
        synchronized (obj) {
            this.f10951b.zzr = null;
        }
        BaseGmsClient baseGmsClient = this.f10951b;
        int i2 = this.f10950a;
        Handler handler = baseGmsClient.zzb;
        handler.sendMessage(handler.obtainMessage(6, i2, 1));
    }
}
