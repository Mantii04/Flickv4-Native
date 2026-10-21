package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;

/* loaded from: classes2.dex */
public final class zzlx implements ServiceConnection, BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a, reason: collision with root package name */
    public volatile boolean f12075a;

    /* renamed from: b, reason: collision with root package name */
    public volatile zzfy f12076b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzla f12077c;

    public zzlx(zzla zzlaVar) {
        this.f12077c = zzlaVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                Preconditions.checkNotNull(this.f12076b);
                this.f12077c.zzl().zzb(new zzly(this, this.f12076b.getService()));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.f12076b = null;
                this.f12075a = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionFailed");
        zzgb zzm = this.f12077c.f11804a.zzm();
        if (zzm != null) {
            zzm.zzu().zza("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.f12075a = false;
            this.f12076b = null;
        }
        this.f12077c.zzl().zzb(new zzma(this));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i2) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onConnectionSuspended");
        zzla zzlaVar = this.f12077c;
        zzlaVar.zzj().zzc().zza("Service connection suspended");
        zzlaVar.zzl().zzb(new zzmb(this));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.f12075a = false;
                this.f12077c.zzj().zzg().zza("Service connected with null binder");
                return;
            }
            zzfq zzfqVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    zzfqVar = queryLocalInterface instanceof zzfq ? (zzfq) queryLocalInterface : new zzfs(iBinder);
                    this.f12077c.zzj().zzp().zza("Bound to IMeasurementService interface");
                } else {
                    this.f12077c.zzj().zzg().zza("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException unused) {
                this.f12077c.zzj().zzg().zza("Service connect failed to get IMeasurementService");
            }
            if (zzfqVar == null) {
                this.f12075a = false;
                try {
                    ConnectionTracker.getInstance().unbindService(this.f12077c.zza(), this.f12077c.f12000c);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                this.f12077c.zzl().zzb(new zzlw(this, zzfqVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Preconditions.checkMainThread("MeasurementServiceConnection.onServiceDisconnected");
        zzla zzlaVar = this.f12077c;
        zzlaVar.zzj().zzc().zza("Service disconnected");
        zzlaVar.zzl().zzb(new zzlz(this, componentName));
    }

    public final void zza(Intent intent) {
        this.f12077c.zzt();
        Context zza = this.f12077c.zza();
        ConnectionTracker connectionTracker = ConnectionTracker.getInstance();
        synchronized (this) {
            try {
                if (this.f12075a) {
                    this.f12077c.zzj().zzp().zza("Connection attempt already in progress");
                    return;
                }
                this.f12077c.zzj().zzp().zza("Using local app measurement service");
                this.f12075a = true;
                connectionTracker.bindService(zza, intent, this.f12077c.f12000c, 129);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzb() {
        if (this.f12076b != null && (this.f12076b.isConnected() || this.f12076b.isConnecting())) {
            this.f12076b.disconnect();
        }
        this.f12076b = null;
    }

    public final void zza() {
        this.f12077c.zzt();
        Context zza = this.f12077c.zza();
        synchronized (this) {
            try {
                if (this.f12075a) {
                    this.f12077c.zzj().zzp().zza("Connection attempt already in progress");
                    return;
                }
                if (this.f12076b != null && (this.f12076b.isConnecting() || this.f12076b.isConnected())) {
                    this.f12077c.zzj().zzp().zza("Already awaiting connection attempt");
                    return;
                }
                this.f12076b = new zzfy(zza, Looper.getMainLooper(), this, this);
                this.f12077c.zzj().zzp().zza("Connecting to remote service");
                this.f12075a = true;
                Preconditions.checkNotNull(this.f12076b);
                this.f12076b.checkAvailabilityAndConnect();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
