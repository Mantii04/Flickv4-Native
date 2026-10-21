package com.google.android.gms.cast.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.media3.common.PlaybackException;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.zzav;
import com.google.android.gms.cast.zzbu;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public final class zzw extends GmsClient {

    /* renamed from: x, reason: collision with root package name */
    public static final Logger f10414x = new Logger("CastClientImpl");

    /* renamed from: y, reason: collision with root package name */
    public static final Object f10415y = new Object();

    /* renamed from: z, reason: collision with root package name */
    public static final Object f10416z = new Object();

    /* renamed from: a, reason: collision with root package name */
    public ApplicationMetadata f10417a;

    /* renamed from: b, reason: collision with root package name */
    public final CastDevice f10418b;

    /* renamed from: c, reason: collision with root package name */
    public final Cast.Listener f10419c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f10420d;

    /* renamed from: e, reason: collision with root package name */
    public final long f10421e;

    /* renamed from: f, reason: collision with root package name */
    public final Bundle f10422f;

    /* renamed from: g, reason: collision with root package name */
    public zzv f10423g;

    /* renamed from: h, reason: collision with root package name */
    public String f10424h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f10425i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f10426j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f10427k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f10428l;

    /* renamed from: m, reason: collision with root package name */
    public double f10429m;

    /* renamed from: n, reason: collision with root package name */
    public zzav f10430n;

    /* renamed from: o, reason: collision with root package name */
    public int f10431o;

    /* renamed from: p, reason: collision with root package name */
    public int f10432p;

    /* renamed from: q, reason: collision with root package name */
    public final AtomicLong f10433q;

    /* renamed from: r, reason: collision with root package name */
    public String f10434r;

    /* renamed from: s, reason: collision with root package name */
    public String f10435s;

    /* renamed from: t, reason: collision with root package name */
    public Bundle f10436t;

    /* renamed from: u, reason: collision with root package name */
    public final HashMap f10437u;

    /* renamed from: v, reason: collision with root package name */
    public BaseImplementation.ResultHolder f10438v;

    /* renamed from: w, reason: collision with root package name */
    public BaseImplementation.ResultHolder f10439w;

    public zzw(Context context, Looper looper, ClientSettings clientSettings, CastDevice castDevice, long j7, Cast.Listener listener, Bundle bundle, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 10, clientSettings, (ConnectionCallbacks) connectionCallbacks, (OnConnectionFailedListener) onConnectionFailedListener);
        this.f10418b = castDevice;
        this.f10419c = listener;
        this.f10421e = j7;
        this.f10422f = bundle;
        this.f10420d = new HashMap();
        this.f10433q = new AtomicLong(0L);
        this.f10437u = new HashMap();
        this.f10428l = false;
        this.f10431o = -1;
        this.f10432p = -1;
        this.f10417a = null;
        this.f10424h = null;
        this.f10429m = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        h();
        this.f10425i = false;
        this.f10430n = null;
        h();
    }

    public final boolean b() {
        zzv zzvVar;
        return (!this.f10428l || (zzvVar = this.f10423g) == null || zzvVar.zzr()) ? false : true;
    }

    public final void c() {
        f10414x.d("removing all MessageReceivedCallbacks", new Object[0]);
        synchronized (this.f10420d) {
            this.f10420d.clear();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.internal.ICastDeviceController");
        return queryLocalInterface instanceof zzag ? (zzag) queryLocalInterface : new zzag(iBinder);
    }

    public final void d(int i2, long j7) {
        BaseImplementation.ResultHolder resultHolder;
        synchronized (this.f10437u) {
            resultHolder = (BaseImplementation.ResultHolder) this.f10437u.remove(Long.valueOf(j7));
        }
        if (resultHolder != null) {
            resultHolder.setResult(new Status(i2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final void disconnect() {
        Logger logger = f10414x;
        logger.d("disconnect(); ServiceListener=%s, isConnected=%b", this.f10423g, Boolean.valueOf(isConnected()));
        zzv zzvVar = this.f10423g;
        this.f10423g = null;
        if (zzvVar == null || zzvVar.zzq() == null) {
            logger.d("already disposed, so short-circuiting", new Object[0]);
            return;
        }
        c();
        try {
            try {
                ((zzag) getService()).zzf();
            } finally {
                super.disconnect();
            }
        } catch (RemoteException | IllegalStateException e3) {
            logger.d(e3, "Error while disconnecting the controller interface", new Object[0]);
        }
    }

    public final void e(int i2) {
        synchronized (f10416z) {
            try {
                BaseImplementation.ResultHolder resultHolder = this.f10439w;
                if (resultHolder != null) {
                    resultHolder.setResult(new Status(i2));
                    this.f10439w = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f(BaseImplementation.ResultHolder resultHolder) {
        synchronized (f10415y) {
            try {
                BaseImplementation.ResultHolder resultHolder2 = this.f10438v;
                if (resultHolder2 != null) {
                    resultHolder2.setResult(new zzq(new Status(2477), null, null, null, false));
                }
                this.f10438v = resultHolder;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g(BaseImplementation.ResultHolder resultHolder) {
        synchronized (f10416z) {
            try {
                if (this.f10439w != null) {
                    resultHolder.setResult(new Status(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED));
                } else {
                    this.f10439w = resultHolder;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle getConnectionHint() {
        Bundle bundle = this.f10436t;
        if (bundle == null) {
            return super.getConnectionHint();
        }
        this.f10436t = null;
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle getGetServiceRequestExtraArgs() {
        Bundle bundle = new Bundle();
        f10414x.d("getRemoteService(): mLastApplicationId=%s, mLastSessionId=%s", this.f10434r, this.f10435s);
        this.f10418b.putInBundle(bundle);
        bundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", this.f10421e);
        Bundle bundle2 = this.f10422f;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        this.f10423g = new zzv(this);
        bundle.putParcelable("listener", new BinderWrapper(this.f10423g));
        String str = this.f10434r;
        if (str != null) {
            bundle.putString("last_application_id", str);
            String str2 = this.f10435s;
            if (str2 != null) {
                bundle.putString("last_session_id", str2);
            }
        }
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return 12800000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return "com.google.android.gms.cast.internal.ICastDeviceController";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
    }

    public final void h() {
        CastDevice castDevice = this.f10418b;
        Preconditions.checkNotNull(castDevice, "device should not be null");
        if (castDevice.hasCapability(2048) || !castDevice.hasCapability(4) || castDevice.hasCapability(1)) {
            return;
        }
        "Chromecast Audio".equals(castDevice.getModelName());
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        super.onConnectionFailed(connectionResult);
        c();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final void onPostInitHandler(int i2, IBinder iBinder, Bundle bundle, int i7) {
        f10414x.d("in onPostInitHandler; statusCode=%d", Integer.valueOf(i2));
        if (i2 == 0 || i2 == 2300) {
            this.f10428l = true;
            this.f10426j = true;
            this.f10427k = true;
        } else {
            this.f10428l = false;
        }
        if (i2 == 2300) {
            Bundle bundle2 = new Bundle();
            this.f10436t = bundle2;
            bundle2.putBoolean("com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING", true);
            i2 = 0;
        }
        super.onPostInitHandler(i2, iBinder, bundle, i7);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzL(String str, String str2, zzbu zzbuVar, BaseImplementation.ResultHolder resultHolder) throws IllegalStateException, RemoteException {
        f(resultHolder);
        zzbu zzbuVar2 = new zzbu();
        zzag zzagVar = (zzag) getService();
        if (b()) {
            zzagVar.zzg(str, str2, zzbuVar2);
        } else {
            zzR(2016);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzM(String str, LaunchOptions launchOptions, BaseImplementation.ResultHolder resultHolder) throws IllegalStateException, RemoteException {
        f(resultHolder);
        zzag zzagVar = (zzag) getService();
        if (b()) {
            zzagVar.zzh(str, launchOptions);
        } else {
            zzR(2016);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzN(BaseImplementation.ResultHolder resultHolder) throws IllegalStateException, RemoteException {
        g(resultHolder);
        zzag zzagVar = (zzag) getService();
        if (b()) {
            zzagVar.zzi();
        } else {
            e(2016);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzQ(String str, String str2, BaseImplementation.ResultHolder resultHolder) throws IllegalArgumentException, IllegalStateException, RemoteException {
        HashMap hashMap = this.f10437u;
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("The message payload cannot be null or empty");
        }
        if (str2.length() > 524288) {
            f10414x.w("Message send failed. Message exceeds maximum size", new Object[0]);
            throw new IllegalArgumentException("Message exceeds maximum size");
        }
        CastUtils.throwIfInvalidNamespace(str);
        long incrementAndGet = this.f10433q.incrementAndGet();
        try {
            hashMap.put(Long.valueOf(incrementAndGet), resultHolder);
            zzag zzagVar = (zzag) getService();
            if (b()) {
                zzagVar.zzm(str, str2, incrementAndGet);
            } else {
                d(2016, incrementAndGet);
            }
        } catch (Throwable th) {
            hashMap.remove(Long.valueOf(incrementAndGet));
            throw th;
        }
    }

    public final void zzR(int i2) {
        synchronized (f10415y) {
            try {
                BaseImplementation.ResultHolder resultHolder = this.f10438v;
                if (resultHolder != null) {
                    resultHolder.setResult(new zzq(new Status(i2), null, null, null, false));
                    this.f10438v = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzV(String str, BaseImplementation.ResultHolder resultHolder) throws IllegalStateException, RemoteException {
        g(resultHolder);
        zzag zzagVar = (zzag) getService();
        if (b()) {
            zzagVar.zzp(str);
        } else {
            e(2016);
        }
    }
}
