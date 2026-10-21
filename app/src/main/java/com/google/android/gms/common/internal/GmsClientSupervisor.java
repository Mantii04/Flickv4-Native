package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.HandlerThread;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.concurrent.Executor;

@KeepForSdk
/* loaded from: classes.dex */
public abstract class GmsClientSupervisor {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f10880a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static zzs f10881b;

    /* renamed from: c, reason: collision with root package name */
    public static HandlerThread f10882c;

    @KeepForSdk
    public static GmsClientSupervisor getInstance(Context context) {
        synchronized (f10880a) {
            try {
                if (f10881b == null) {
                    f10881b = new zzs(context.getApplicationContext(), context.getMainLooper());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f10881b;
    }

    @KeepForSdk
    public static HandlerThread getOrStartHandlerThread() {
        synchronized (f10880a) {
            try {
                HandlerThread handlerThread = f10882c;
                if (handlerThread != null) {
                    return handlerThread;
                }
                HandlerThread handlerThread2 = new HandlerThread("GoogleApiHandler", 9);
                f10882c = handlerThread2;
                handlerThread2.start();
                return f10882c;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void zza(zzo zzoVar, ServiceConnection serviceConnection, String str);

    public final void zzb(String str, String str2, int i2, ServiceConnection serviceConnection, String str3, boolean z6) {
        zza(new zzo(str, str2, 4225, z6), serviceConnection, str3);
    }

    public abstract boolean zzc(zzo zzoVar, ServiceConnection serviceConnection, String str, Executor executor);
}
