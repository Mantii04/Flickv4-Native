package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.media3.exoplayer.Renderer;
import b.c;
import com.google.android.gms.common.BlockingServiceConnection;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads_identifier.zze;
import com.google.android.gms.internal.ads_identifier.zzf;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;

@KeepForSdk
/* loaded from: classes.dex */
public class AdvertisingIdClient {

    /* renamed from: a, reason: collision with root package name */
    public BlockingServiceConnection f9515a;

    /* renamed from: b, reason: collision with root package name */
    public zzf f9516b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f9517c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f9518d;

    /* renamed from: e, reason: collision with root package name */
    public zzb f9519e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f9520f;

    /* renamed from: g, reason: collision with root package name */
    public final long f9521g;

    @KeepForSdkWithMembers
    public static final class Info {

        /* renamed from: a, reason: collision with root package name */
        public final String f9522a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f9523b;

        @Deprecated
        public Info(String str, boolean z6) {
            this.f9522a = str;
            this.f9523b = z6;
        }

        public String getId() {
            return this.f9522a;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.f9523b;
        }

        public String toString() {
            String str = this.f9522a;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(this.f9523b);
            return sb.toString();
        }
    }

    @KeepForSdk
    public AdvertisingIdClient(Context context) {
        this(context, 30000L, false, false);
    }

    public static void a(Info info, long j7, Throwable th) {
        if (Math.random() <= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            HashMap p6 = c.p("app_context", "1");
            if (info != null) {
                p6.put("limit_ad_tracking", true != info.isLimitAdTrackingEnabled() ? "0" : "1");
                String id = info.getId();
                if (id != null) {
                    p6.put("ad_id_size", Integer.toString(id.length()));
                }
            }
            if (th != null) {
                p6.put("error", th.getClass().getName());
            }
            p6.put("tag", "AdvertisingIdClient");
            p6.put("time_spent", Long.toString(j7));
            new zza(p6).start();
        }
    }

    @KeepForSdk
    public static Info getAdvertisingIdInfo(Context context) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, true, false);
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            advertisingIdClient.zzb(false);
            Info b7 = advertisingIdClient.b();
            a(b7, SystemClock.elapsedRealtime() - elapsedRealtime, null);
            return b7;
        } finally {
        }
    }

    @KeepForSdk
    public static boolean getIsAdIdFakeForDebugLogging(Context context) throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        boolean zzd;
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1L, false, false);
        try {
            advertisingIdClient.zzb(false);
            Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
            synchronized (advertisingIdClient) {
                try {
                    if (!advertisingIdClient.f9517c) {
                        synchronized (advertisingIdClient.f9518d) {
                            zzb zzbVar = advertisingIdClient.f9519e;
                            if (zzbVar == null || !zzbVar.f9528j) {
                                throw new IOException("AdvertisingIdClient is not connected.");
                            }
                        }
                        try {
                            advertisingIdClient.zzb(false);
                            if (!advertisingIdClient.f9517c) {
                                throw new IOException("AdvertisingIdClient cannot reconnect.");
                            }
                        } catch (Exception e3) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.", e3);
                        }
                    }
                    Preconditions.checkNotNull(advertisingIdClient.f9515a);
                    Preconditions.checkNotNull(advertisingIdClient.f9516b);
                    try {
                        zzd = advertisingIdClient.f9516b.zzd();
                    } catch (RemoteException e7) {
                        Log.i("AdvertisingIdClient", "GMS remote exception ", e7);
                        throw new IOException("Remote exception");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            advertisingIdClient.c();
            advertisingIdClient.zza();
            return zzd;
        } catch (Throwable th2) {
            advertisingIdClient.zza();
            throw th2;
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static void setShouldSkipGmsCoreVersionCheck(boolean z6) {
    }

    public final Info b() {
        Info info;
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (!this.f9517c) {
                    synchronized (this.f9518d) {
                        zzb zzbVar = this.f9519e;
                        if (zzbVar == null || !zzbVar.f9528j) {
                            throw new IOException("AdvertisingIdClient is not connected.");
                        }
                    }
                    try {
                        zzb(false);
                        if (!this.f9517c) {
                            throw new IOException("AdvertisingIdClient cannot reconnect.");
                        }
                    } catch (Exception e3) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.", e3);
                    }
                }
                Preconditions.checkNotNull(this.f9515a);
                Preconditions.checkNotNull(this.f9516b);
                try {
                    info = new Info(this.f9516b.zzc(), this.f9516b.zze(true));
                } catch (RemoteException e7) {
                    Log.i("AdvertisingIdClient", "GMS remote exception ", e7);
                    throw new IOException("Remote exception");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        c();
        return info;
    }

    public final void c() {
        synchronized (this.f9518d) {
            zzb zzbVar = this.f9519e;
            if (zzbVar != null) {
                zzbVar.f9527f.countDown();
                try {
                    this.f9519e.join();
                } catch (InterruptedException unused) {
                }
            }
            long j7 = this.f9521g;
            if (j7 > 0) {
                this.f9519e = new zzb(this, j7);
            }
        }
    }

    public final void finalize() throws Throwable {
        zza();
        super.finalize();
    }

    @KeepForSdk
    public Info getInfo() throws IOException {
        return b();
    }

    @KeepForSdk
    public void start() throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        zzb(true);
    }

    public final void zza() {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.f9520f == null || this.f9515a == null) {
                    return;
                }
                try {
                    if (this.f9517c) {
                        ConnectionTracker.getInstance().unbindService(this.f9520f, this.f9515a);
                    }
                } catch (Throwable th) {
                    Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", th);
                }
                this.f9517c = false;
                this.f9516b = null;
                this.f9515a = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @VisibleForTesting
    public final void zzb(boolean z6) throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException {
        Preconditions.checkNotMainThread("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            try {
                if (this.f9517c) {
                    zza();
                }
                Context context = this.f9520f;
                try {
                    context.getPackageManager().getPackageInfo("com.android.vending", 0);
                    int isGooglePlayServicesAvailable = GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, 12451000);
                    if (isGooglePlayServicesAvailable != 0 && isGooglePlayServicesAvailable != 2) {
                        throw new IOException("Google Play services not available");
                    }
                    BlockingServiceConnection blockingServiceConnection = new BlockingServiceConnection();
                    Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                    intent.setPackage("com.google.android.gms");
                    try {
                        if (!ConnectionTracker.getInstance().bindService(context, intent, blockingServiceConnection, 1)) {
                            throw new IOException("Connection failure");
                        }
                        this.f9515a = blockingServiceConnection;
                        try {
                            this.f9516b = zze.zza(blockingServiceConnection.getServiceWithTimeout(Renderer.DEFAULT_DURATION_TO_PROGRESS_US, TimeUnit.MILLISECONDS));
                            this.f9517c = true;
                            if (z6) {
                                c();
                            }
                        } catch (InterruptedException unused) {
                            throw new IOException("Interrupted exception");
                        } catch (Throwable th) {
                            throw new IOException(th);
                        }
                    } finally {
                        IOException iOException = new IOException(th);
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                    throw new GooglePlayServicesNotAvailableException(9);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @VisibleForTesting
    public AdvertisingIdClient(Context context, long j7, boolean z6, boolean z7) {
        Context applicationContext;
        this.f9518d = new Object();
        Preconditions.checkNotNull(context);
        if (z6 && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f9520f = context;
        this.f9517c = false;
        this.f9521g = j7;
    }
}
