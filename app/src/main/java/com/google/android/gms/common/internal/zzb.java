package com.google.android.gms.common.internal;

import A.i;
import android.app.PendingIntent;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* loaded from: classes.dex */
final class zzb extends com.google.android.gms.internal.common.zzi {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BaseGmsClient f10944a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzb(BaseGmsClient baseGmsClient, Looper looper) {
        super(looper);
        this.f10944a = baseGmsClient;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks;
        BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks2;
        ConnectionResult connectionResult;
        ConnectionResult connectionResult2;
        boolean z6;
        BaseGmsClient baseGmsClient = this.f10944a;
        if (baseGmsClient.zzd.get() != message.arg1) {
            int i2 = message.what;
            if (i2 == 2 || i2 == 1 || i2 == 7) {
                zzc zzcVar = (zzc) message.obj;
                zzcVar.zzc();
                zzcVar.zzg();
                return;
            }
            return;
        }
        int i7 = message.what;
        if ((i7 == 1 || i7 == 7 || ((i7 == 4 && !baseGmsClient.enableLocalFallback()) || message.what == 5)) && !baseGmsClient.isConnecting()) {
            zzc zzcVar2 = (zzc) message.obj;
            zzcVar2.zzc();
            zzcVar2.zzg();
            return;
        }
        int i8 = message.what;
        if (i8 == 4) {
            baseGmsClient.zzB = new ConnectionResult(message.arg2);
            if (BaseGmsClient.zzo(baseGmsClient)) {
                z6 = baseGmsClient.zzC;
                if (!z6) {
                    baseGmsClient.a(3, null);
                    return;
                }
            }
            connectionResult2 = baseGmsClient.zzB;
            ConnectionResult connectionResult3 = connectionResult2 != null ? baseGmsClient.zzB : new ConnectionResult(8);
            baseGmsClient.zzc.onReportServiceBinding(connectionResult3);
            baseGmsClient.onConnectionFailed(connectionResult3);
            return;
        }
        if (i8 == 5) {
            connectionResult = baseGmsClient.zzB;
            ConnectionResult connectionResult4 = connectionResult != null ? baseGmsClient.zzB : new ConnectionResult(8);
            baseGmsClient.zzc.onReportServiceBinding(connectionResult4);
            baseGmsClient.onConnectionFailed(connectionResult4);
            return;
        }
        if (i8 == 3) {
            Object obj = message.obj;
            ConnectionResult connectionResult5 = new ConnectionResult(message.arg2, obj instanceof PendingIntent ? (PendingIntent) obj : null);
            baseGmsClient.zzc.onReportServiceBinding(connectionResult5);
            baseGmsClient.onConnectionFailed(connectionResult5);
            return;
        }
        if (i8 == 6) {
            baseGmsClient.a(5, null);
            baseConnectionCallbacks = baseGmsClient.zzw;
            if (baseConnectionCallbacks != null) {
                baseConnectionCallbacks2 = baseGmsClient.zzw;
                baseConnectionCallbacks2.onConnectionSuspended(message.arg2);
            }
            baseGmsClient.onConnectionSuspended(message.arg2);
            BaseGmsClient.zzn(baseGmsClient, 5, 1, null);
            return;
        }
        if (i8 == 2 && !baseGmsClient.isConnected()) {
            zzc zzcVar3 = (zzc) message.obj;
            zzcVar3.zzc();
            zzcVar3.zzg();
            return;
        }
        int i9 = message.what;
        if (i9 == 2 || i9 == 1 || i9 == 7) {
            ((zzc) message.obj).zze();
        } else {
            Log.wtf("GmsClient", i.f(i9, "Don't know how to handle message: "), new Exception());
        }
    }
}
