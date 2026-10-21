package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.StrictMode;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
final class zzp implements ServiceConnection, zzt {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f10964a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public int f10965b = 2;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10966c;

    /* renamed from: d, reason: collision with root package name */
    public IBinder f10967d;

    /* renamed from: e, reason: collision with root package name */
    public final zzo f10968e;

    /* renamed from: f, reason: collision with root package name */
    public ComponentName f10969f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ zzs f10970g;

    public zzp(zzs zzsVar, zzo zzoVar) {
        this.f10970g = zzsVar;
        this.f10968e = zzoVar;
    }

    @Override // android.content.ServiceConnection
    public final void onBindingDied(ComponentName componentName) {
        onServiceDisconnected(componentName);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this.f10970g.f10972d) {
            try {
                this.f10970g.f10974f.removeMessages(1, this.f10968e);
                this.f10967d = iBinder;
                this.f10969f = componentName;
                Iterator it = this.f10964a.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceConnected(componentName, iBinder);
                }
                this.f10965b = 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        synchronized (this.f10970g.f10972d) {
            try {
                this.f10970g.f10974f.removeMessages(1, this.f10968e);
                this.f10967d = null;
                this.f10969f = componentName;
                Iterator it = this.f10964a.values().iterator();
                while (it.hasNext()) {
                    ((ServiceConnection) it.next()).onServiceDisconnected(componentName);
                }
                this.f10965b = 2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final int zza() {
        return this.f10965b;
    }

    public final ComponentName zzb() {
        return this.f10969f;
    }

    public final IBinder zzc() {
        return this.f10967d;
    }

    public final void zzd(ServiceConnection serviceConnection, ServiceConnection serviceConnection2, String str) {
        this.f10964a.put(serviceConnection, serviceConnection2);
    }

    public final void zze(String str, Executor executor) {
        ConnectionTracker connectionTracker;
        Context context;
        StrictMode.VmPolicy.Builder permitUnsafeIntentLaunch;
        this.f10965b = 3;
        StrictMode.VmPolicy vmPolicy = StrictMode.getVmPolicy();
        if (PlatformVersion.isAtLeastS()) {
            permitUnsafeIntentLaunch = new StrictMode.VmPolicy.Builder(vmPolicy).permitUnsafeIntentLaunch();
            StrictMode.setVmPolicy(permitUnsafeIntentLaunch.build());
        }
        try {
            zzs zzsVar = this.f10970g;
            connectionTracker = zzsVar.f10975g;
            context = zzsVar.f10973e;
        } catch (Throwable th) {
            th = th;
        }
        try {
            boolean zza = connectionTracker.zza(context, str, this.f10968e.zzb(context), this, 4225, executor);
            this.f10966c = zza;
            if (zza) {
                this.f10970g.f10974f.sendMessageDelayed(this.f10970g.f10974f.obtainMessage(1, this.f10968e), this.f10970g.f10977i);
            } else {
                this.f10965b = 2;
                try {
                    zzs zzsVar2 = this.f10970g;
                    zzsVar2.f10975g.unbindService(zzsVar2.f10973e, this);
                } catch (IllegalArgumentException unused) {
                }
            }
            StrictMode.setVmPolicy(vmPolicy);
        } catch (Throwable th2) {
            th = th2;
            Throwable th3 = th;
            StrictMode.setVmPolicy(vmPolicy);
            throw th3;
        }
    }

    public final void zzf(ServiceConnection serviceConnection, String str) {
        this.f10964a.remove(serviceConnection);
    }

    public final void zzg(String str) {
        this.f10970g.f10974f.removeMessages(1, this.f10968e);
        zzs zzsVar = this.f10970g;
        zzsVar.f10975g.unbindService(zzsVar.f10973e, this);
        this.f10966c = false;
        this.f10965b = 2;
    }

    public final boolean zzh(ServiceConnection serviceConnection) {
        return this.f10964a.containsKey(serviceConnection);
    }

    public final boolean zzi() {
        return this.f10964a.isEmpty();
    }

    public final boolean zzj() {
        return this.f10966c;
    }
}
