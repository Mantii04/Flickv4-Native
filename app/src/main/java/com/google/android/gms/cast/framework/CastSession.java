package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.cast.zzbt;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class CastSession extends Session {

    /* renamed from: n, reason: collision with root package name */
    public static final Logger f9859n = new Logger("CastSession");

    /* renamed from: c, reason: collision with root package name */
    public final Context f9860c;

    /* renamed from: d, reason: collision with root package name */
    public final HashSet f9861d;

    /* renamed from: e, reason: collision with root package name */
    public final zzam f9862e;

    /* renamed from: f, reason: collision with root package name */
    public final CastOptions f9863f;

    /* renamed from: g, reason: collision with root package name */
    public final com.google.android.gms.internal.cast.zzbf f9864g;

    /* renamed from: h, reason: collision with root package name */
    public final com.google.android.gms.cast.framework.media.internal.zzv f9865h;

    /* renamed from: i, reason: collision with root package name */
    public com.google.android.gms.cast.zzr f9866i;

    /* renamed from: j, reason: collision with root package name */
    public RemoteMediaClient f9867j;

    /* renamed from: k, reason: collision with root package name */
    public CastDevice f9868k;

    /* renamed from: l, reason: collision with root package name */
    public Cast.ApplicationConnectionResult f9869l;

    /* renamed from: m, reason: collision with root package name */
    public zzs f9870m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CastSession(Context context, String str, String str2, CastOptions castOptions, com.google.android.gms.internal.cast.zzbf zzbfVar, com.google.android.gms.cast.framework.media.internal.zzv zzvVar) {
        super(context, str, str2);
        int i2 = zzo.f10326a;
        this.f9861d = new HashSet();
        this.f9860c = context.getApplicationContext();
        this.f9863f = castOptions;
        this.f9864g = zzbfVar;
        this.f9865h = zzvVar;
        this.f9862e = com.google.android.gms.internal.cast.zzag.zzb(context, castOptions, zzn(), new zzw(this));
    }

    public static /* bridge */ /* synthetic */ void a(CastSession castSession, String str, Task task) {
        Logger logger = f9859n;
        zzam zzamVar = castSession.f9862e;
        if (zzamVar == null) {
            return;
        }
        try {
            if (task.isSuccessful()) {
                Cast.ApplicationConnectionResult applicationConnectionResult = (Cast.ApplicationConnectionResult) task.getResult();
                castSession.f9869l = applicationConnectionResult;
                if (applicationConnectionResult.getStatus() != null && applicationConnectionResult.getStatus().isSuccess()) {
                    logger.d("%s() -> success result", str);
                    RemoteMediaClient remoteMediaClient = new RemoteMediaClient(new com.google.android.gms.cast.internal.zzaq(null));
                    castSession.f9867j = remoteMediaClient;
                    remoteMediaClient.zzs(castSession.f9866i);
                    castSession.f9867j.registerCallback(new zzr(castSession));
                    castSession.f9867j.zzq();
                    castSession.f9865h.zzh(castSession.f9867j, castSession.getCastDevice());
                    zzamVar.zzf((ApplicationMetadata) Preconditions.checkNotNull(applicationConnectionResult.getApplicationMetadata()), applicationConnectionResult.getApplicationStatus(), (String) Preconditions.checkNotNull(applicationConnectionResult.getSessionId()), applicationConnectionResult.getWasLaunched());
                    return;
                }
                if (applicationConnectionResult.getStatus() != null) {
                    logger.d("%s() -> failure result", str);
                    zzamVar.zzg(applicationConnectionResult.getStatus().getStatusCode());
                    return;
                }
            } else {
                Exception exception = task.getException();
                if (exception instanceof ApiException) {
                    zzamVar.zzg(((ApiException) exception).getStatusCode());
                    return;
                }
            }
            zzamVar.zzg(2476);
        } catch (RemoteException e3) {
            logger.d(e3, "Unable to call %s on %s.", "methods", "zzam");
        }
    }

    public void addCastListener(Cast.Listener listener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (listener != null) {
            this.f9861d.add(listener);
        }
    }

    public final void b(Bundle bundle) {
        CastDevice fromBundle = CastDevice.getFromBundle(bundle);
        this.f9868k = fromBundle;
        if (fromBundle == null) {
            if (isResuming()) {
                notifyFailedToResumeSession(2153);
                return;
            } else {
                notifyFailedToStartSession(2151);
                return;
            }
        }
        com.google.android.gms.cast.zzr zzrVar = this.f9866i;
        if (zzrVar != null) {
            zzrVar.zzf();
            this.f9866i = null;
        }
        f9859n.d("Acquiring a connection to Google Play Services for %s", this.f9868k);
        CastDevice castDevice = (CastDevice) Preconditions.checkNotNull(this.f9868k);
        Bundle bundle2 = new Bundle();
        CastOptions castOptions = this.f9863f;
        CastMediaOptions castMediaOptions = castOptions == null ? null : castOptions.getCastMediaOptions();
        NotificationOptions notificationOptions = castMediaOptions != null ? castMediaOptions.getNotificationOptions() : null;
        boolean z6 = castMediaOptions != null && castMediaOptions.zza();
        bundle2.putBoolean("com.google.android.gms.cast.EXTRA_CAST_FRAMEWORK_NOTIFICATION_ENABLED", notificationOptions != null);
        bundle2.putBoolean("com.google.android.gms.cast.EXTRA_CAST_REMOTE_CONTROL_NOTIFICATION_ENABLED", z6);
        bundle2.putBoolean("com.google.android.gms.cast.EXTRA_CAST_ALWAYS_FOLLOW_SESSION_ENABLED", this.f9864g.zzs());
        Cast.CastOptions.Builder builder = new Cast.CastOptions.Builder(castDevice, new zzy(this));
        builder.zzc(bundle2);
        com.google.android.gms.cast.zzr zza = Cast.zza(this.f9860c, builder.build());
        zza.zzk(new zzaa(this));
        this.f9866i = zza;
        zza.zze();
    }

    @Override // com.google.android.gms.cast.framework.Session
    public void end(boolean z6) {
        zzam zzamVar = this.f9862e;
        if (zzamVar != null) {
            try {
                zzamVar.zze(z6, 0);
            } catch (RemoteException e3) {
                f9859n.d(e3, "Unable to call %s on %s.", "disconnectFromDevice", "zzam");
            }
            notifySessionEnded(0);
        }
    }

    public CastDevice getCastDevice() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.f9868k;
    }

    public RemoteMediaClient getRemoteMediaClient() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.f9867j;
    }

    @Override // com.google.android.gms.cast.framework.Session
    public long getSessionRemainingTimeMs() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        RemoteMediaClient remoteMediaClient = this.f9867j;
        if (remoteMediaClient == null) {
            return 0L;
        }
        return remoteMediaClient.getStreamDuration() - this.f9867j.getApproximateStreamPosition();
    }

    public boolean isMute() throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        com.google.android.gms.cast.zzr zzrVar = this.f9866i;
        return zzrVar != null && zzrVar.zzl() && zzrVar.zzm();
    }

    @Override // com.google.android.gms.cast.framework.Session
    public void onResuming(Bundle bundle) {
        this.f9868k = CastDevice.getFromBundle(bundle);
    }

    @Override // com.google.android.gms.cast.framework.Session
    public void onStarting(Bundle bundle) {
        this.f9868k = CastDevice.getFromBundle(bundle);
    }

    public void removeCastListener(Cast.Listener listener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (listener != null) {
            this.f9861d.remove(listener);
        }
    }

    @Override // com.google.android.gms.cast.framework.Session
    public void resume(Bundle bundle) {
        b(bundle);
    }

    public void setMute(final boolean z6) throws IOException, IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        com.google.android.gms.cast.zzr zzrVar = this.f9866i;
        if (zzrVar == null || !zzrVar.zzl()) {
            return;
        }
        final zzbt zzbtVar = (zzbt) zzrVar;
        zzbtVar.doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzbc
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzbt zzbtVar2 = zzbt.this;
                zzbtVar2.getClass();
                ((com.google.android.gms.cast.internal.zzag) ((com.google.android.gms.cast.internal.zzx) obj).getService()).zzn(z6, zzbtVar2.f10526u, zzbtVar2.f10527v);
                ((TaskCompletionSource) obj2).setResult(null);
            }
        }).setMethodKey(8412).build());
    }

    @Override // com.google.android.gms.cast.framework.Session
    public void start(Bundle bundle) {
        b(bundle);
    }

    public final void zzj(zzs zzsVar) {
        this.f9870m = zzsVar;
    }

    @Override // com.google.android.gms.cast.framework.Session
    public final void zzk(Bundle bundle) {
        CastDevice castDevice;
        CastDevice castDevice2;
        CastDevice fromBundle = CastDevice.getFromBundle(bundle);
        if (fromBundle == null || fromBundle.equals(this.f9868k)) {
            return;
        }
        boolean z6 = !TextUtils.isEmpty(fromBundle.getFriendlyName()) && ((castDevice2 = this.f9868k) == null || !TextUtils.equals(castDevice2.getFriendlyName(), fromBundle.getFriendlyName()));
        this.f9868k = fromBundle;
        f9859n.d("update to device (%s) with name %s", fromBundle, true != z6 ? "unchanged" : "changed");
        if (!z6 || (castDevice = this.f9868k) == null) {
            return;
        }
        com.google.android.gms.cast.framework.media.internal.zzv zzvVar = this.f9865h;
        if (zzvVar != null) {
            zzvVar.zzk(castDevice);
        }
        Iterator it = new HashSet(this.f9861d).iterator();
        while (it.hasNext()) {
            ((Cast.Listener) it.next()).onDeviceNameChanged();
        }
    }

    public final boolean zzl() {
        return this.f9864g.zzs();
    }
}
