package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* loaded from: classes.dex */
public final class zzf extends zza {

    /* renamed from: g, reason: collision with root package name */
    public final IBinder f10952g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ BaseGmsClient f10953h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzf(BaseGmsClient baseGmsClient, int i2, IBinder iBinder, Bundle bundle) {
        super(baseGmsClient, i2, bundle);
        this.f10953h = baseGmsClient;
        this.f10952g = iBinder;
    }

    @Override // com.google.android.gms.common.internal.zza
    public final void zzb(ConnectionResult connectionResult) {
        BaseGmsClient baseGmsClient = this.f10953h;
        if (baseGmsClient.zzx != null) {
            baseGmsClient.zzx.onConnectionFailed(connectionResult);
        }
        baseGmsClient.onConnectionFailed(connectionResult);
    }

    @Override // com.google.android.gms.common.internal.zza
    public final boolean zzd() {
        BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks;
        BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks2;
        IBinder iBinder = this.f10952g;
        try {
            Preconditions.checkNotNull(iBinder);
            String interfaceDescriptor = iBinder.getInterfaceDescriptor();
            BaseGmsClient baseGmsClient = this.f10953h;
            if (!baseGmsClient.getServiceDescriptor().equals(interfaceDescriptor)) {
                Log.w("GmsClient", "service descriptor mismatch: " + baseGmsClient.getServiceDescriptor() + " vs. " + interfaceDescriptor);
                return false;
            }
            IInterface createServiceInterface = baseGmsClient.createServiceInterface(iBinder);
            if (createServiceInterface == null || !(BaseGmsClient.zzn(baseGmsClient, 2, 4, createServiceInterface) || BaseGmsClient.zzn(baseGmsClient, 3, 4, createServiceInterface))) {
                return false;
            }
            baseGmsClient.zzB = null;
            Bundle connectionHint = baseGmsClient.getConnectionHint();
            baseConnectionCallbacks = baseGmsClient.zzw;
            if (baseConnectionCallbacks == null) {
                return true;
            }
            baseConnectionCallbacks2 = baseGmsClient.zzw;
            baseConnectionCallbacks2.onConnected(connectionHint);
            return true;
        } catch (RemoteException unused) {
            Log.w("GmsClient", "service probably died");
            return false;
        }
    }
}
