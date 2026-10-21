package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.NetworkOnMainThreadException;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import androidx.media3.exoplayer.Renderer;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;

/* loaded from: classes2.dex */
public class zzds {
    private static volatile zzds zzb;
    protected final Clock zza;
    private final String zzc;
    private final ExecutorService zzd;
    private final AppMeasurementSdk zze;
    private final List<Pair<com.google.android.gms.measurement.internal.zzix, zzd>> zzf;
    private int zzg;
    private boolean zzh;
    private String zzi;
    private volatile zzdd zzj;

    public static class zza extends zzdm {
        private final com.google.android.gms.measurement.internal.zziu zza;

        public zza(com.google.android.gms.measurement.internal.zziu zziuVar) {
            this.zza = zziuVar;
        }

        @Override // com.google.android.gms.internal.measurement.zzdj
        public final int zza() {
            return System.identityHashCode(this.zza);
        }

        @Override // com.google.android.gms.internal.measurement.zzdj
        public final void zza(String str, String str2, Bundle bundle, long j7) {
            this.zza.interceptEvent(str, str2, bundle, j7);
        }
    }

    public abstract class zzb implements Runnable {
        final long zza;
        final long zzb;
        private final boolean zzc;

        public zzb(zzds zzdsVar) {
            this(true);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (zzds.this.zzh) {
                zzb();
                return;
            }
            try {
                zza();
            } catch (Exception e3) {
                zzds.this.zza(e3, false, this.zzc);
                zzb();
            }
        }

        public abstract void zza() throws RemoteException;

        public void zzb() {
        }

        public zzb(boolean z6) {
            this.zza = zzds.this.zza.currentTimeMillis();
            this.zzb = zzds.this.zza.elapsedRealtime();
            this.zzc = z6;
        }
    }

    public class zzc implements Application.ActivityLifecycleCallbacks {
        public zzc() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            zzds.this.zza(new zzfa(this, bundle, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            zzds.this.zza(new zzff(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            zzds.this.zza(new zzfb(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            zzds.this.zza(new zzfc(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            zzde zzdeVar = new zzde();
            zzds.this.zza(new zzfd(this, activity, zzdeVar));
            Bundle zza = zzdeVar.zza(50L);
            if (zza != null) {
                bundle.putAll(zza);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            zzds.this.zza(new zzez(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            zzds.this.zza(new zzfe(this, activity));
        }
    }

    public static class zzd extends zzdm {
        private final com.google.android.gms.measurement.internal.zzix zza;

        public zzd(com.google.android.gms.measurement.internal.zzix zzixVar) {
            this.zza = zzixVar;
        }

        @Override // com.google.android.gms.internal.measurement.zzdj
        public final int zza() {
            return System.identityHashCode(this.zza);
        }

        @Override // com.google.android.gms.internal.measurement.zzdj
        public final void zza(String str, String str2, Bundle bundle, long j7) {
            this.zza.onEvent(str, str2, bundle, j7);
        }
    }

    private zzds(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str == null || !zzc(str2, str3)) {
            this.zzc = "FA";
        } else {
            this.zzc = str;
        }
        this.zza = DefaultClock.getInstance();
        this.zzd = zzcu.zza().zza(new zzee(this), zzcz.zza);
        this.zze = new AppMeasurementSdk(this);
        this.zzf = new ArrayList();
        if (zzb(context) && !zzk()) {
            this.zzi = null;
            this.zzh = true;
            Log.w(this.zzc, "Disabling data collection. Found google_app_id in strings.xml but Google Analytics for Firebase is missing. Remove this value or add Google Analytics for Firebase to resume data collection.");
            return;
        }
        if (zzc(str2, str3)) {
            this.zzi = str2;
        } else {
            this.zzi = "fa";
            if (str2 == null || str3 == null) {
                if ((str2 == null) ^ (str3 == null)) {
                    Log.w(this.zzc, "Specified origin or custom app id is null. Both parameters will be ignored.");
                }
            } else {
                Log.v(this.zzc, "Deferring to Google Analytics for Firebase for event data collection. https://firebase.google.com/docs/analytics");
            }
        }
        zza(new zzdr(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            Log.w(this.zzc, "Unable to register lifecycle notifications. Application null.");
        } else {
            application.registerActivityLifecycleCallbacks(new zzc());
        }
    }

    private final boolean zzk() {
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics", false, getClass().getClassLoader());
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public final String zzd() {
        return this.zzi;
    }

    public final String zze() {
        zzde zzdeVar = new zzde();
        zza(new zzes(this, zzdeVar));
        return zzdeVar.zzc(120000L);
    }

    public final String zzf() {
        zzde zzdeVar = new zzde();
        zza(new zzeh(this, zzdeVar));
        return zzdeVar.zzc(50L);
    }

    public final String zzg() {
        zzde zzdeVar = new zzde();
        zza(new zzem(this, zzdeVar));
        return zzdeVar.zzc(500L);
    }

    public final String zzh() {
        zzde zzdeVar = new zzde();
        zza(new zzej(this, zzdeVar));
        return zzdeVar.zzc(500L);
    }

    public final String zzi() {
        zzde zzdeVar = new zzde();
        zza(new zzei(this, zzdeVar));
        return zzdeVar.zzc(500L);
    }

    public final void zzj() {
        zza(new zzeb(this));
    }

    public final AppMeasurementSdk zzb() {
        return this.zze;
    }

    public final Long zzc() {
        zzde zzdeVar = new zzde();
        zza(new zzer(this, zzdeVar));
        return zzdeVar.zzb(120000L);
    }

    public final void zzd(Bundle bundle) {
        zza(new zzew(this, bundle));
    }

    public final void zzb(String str) {
        zza(new zzeg(this, str));
    }

    public final void zzd(String str) {
        zza(new zzdy(this, str));
    }

    public final void zzb(String str, String str2, Bundle bundle) {
        zza(str, str2, bundle, true, true, null);
    }

    public final void zzb(Bundle bundle) {
        zza(new zzdz(this, bundle));
    }

    public final void zzc(String str) {
        zza(new zzef(this, str));
    }

    public final int zza(String str) {
        zzde zzdeVar = new zzde();
        zza(new zzep(this, str, zzdeVar));
        Integer num = (Integer) zzde.zza(zzdeVar.zza(Renderer.DEFAULT_DURATION_TO_PROGRESS_US), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final void zzb(String str, String str2) {
        zza((String) null, str, (Object) str2, false);
    }

    public final void zzc(Bundle bundle) {
        zza(new zzec(this, bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean zzc(String str, String str2) {
        return (str2 == null || str == null || zzk()) ? false : true;
    }

    public final void zzb(com.google.android.gms.measurement.internal.zzix zzixVar) {
        Pair<com.google.android.gms.measurement.internal.zzix, zzd> pair;
        Preconditions.checkNotNull(zzixVar);
        synchronized (this.zzf) {
            int i2 = 0;
            while (true) {
                try {
                    if (i2 >= this.zzf.size()) {
                        pair = null;
                        break;
                    } else {
                        if (zzixVar.equals(this.zzf.get(i2).first)) {
                            pair = this.zzf.get(i2);
                            break;
                        }
                        i2++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (pair == null) {
                Log.w(this.zzc, "OnEventListener had not been registered.");
                return;
            }
            this.zzf.remove(pair);
            zzd zzdVar = (zzd) pair.second;
            if (this.zzj != null) {
                try {
                    this.zzj.unregisterOnMeasurementEventListener(zzdVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w(this.zzc, "Failed to unregister event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            zza(new zzey(this, zzdVar));
        }
    }

    public final long zza() {
        zzde zzdeVar = new zzde();
        zza(new zzek(this, zzdeVar));
        Long zzb2 = zzdeVar.zzb(500L);
        if (zzb2 == null) {
            long nextLong = new Random(System.nanoTime() ^ this.zza.currentTimeMillis()).nextLong();
            int i2 = this.zzg + 1;
            this.zzg = i2;
            return nextLong + i2;
        }
        return zzb2.longValue();
    }

    public final Bundle zza(Bundle bundle, boolean z6) {
        zzde zzdeVar = new zzde();
        zza(new zzeq(this, bundle, zzdeVar));
        if (z6) {
            return zzdeVar.zza(5000L);
        }
        return null;
    }

    public final zzdd zza(Context context, boolean z6) {
        try {
            return zzdg.asInterface(DynamiteModule.load(context, DynamiteModule.f11105c, ModuleDescriptor.MODULE_ID).instantiate("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.LoadingException e3) {
            zza((Exception) e3, true, false);
            return null;
        }
    }

    private static boolean zzb(Context context) {
        return new com.google.android.gms.measurement.internal.zzhi(context, com.google.android.gms.measurement.internal.zzhi.zza(context)).zza("google_app_id") != null;
    }

    public static zzds zza(Context context) {
        return zza(context, (String) null, (String) null, (String) null, (Bundle) null);
    }

    public static zzds zza(Context context, String str, String str2, String str3, Bundle bundle) {
        Preconditions.checkNotNull(context);
        if (zzb == null) {
            synchronized (zzds.class) {
                try {
                    if (zzb == null) {
                        zzb = new zzds(context, str, str2, str3, bundle);
                    }
                } finally {
                }
            }
        }
        return zzb;
    }

    public final Object zza(int i2) {
        zzde zzdeVar = new zzde();
        zza(new zzeu(this, zzdeVar, i2));
        return zzde.zza(zzdeVar.zza(15000L), Object.class);
    }

    public final List<Bundle> zza(String str, String str2) {
        zzde zzdeVar = new zzde();
        zza(new zzdv(this, str, str2, zzdeVar));
        List<Bundle> list = (List) zzde.zza(zzdeVar.zza(5000L), List.class);
        return list == null ? Collections.EMPTY_LIST : list;
    }

    public final Map<String, Object> zza(String str, String str2, boolean z6) {
        zzde zzdeVar = new zzde();
        zza(new zzel(this, str, str2, z6, zzdeVar));
        Bundle zza2 = zzdeVar.zza(5000L);
        if (zza2 != null && zza2.size() != 0) {
            HashMap hashMap = new HashMap(zza2.size());
            for (String str3 : zza2.keySet()) {
                Object obj = zza2.get(str3);
                if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                    hashMap.put(str3, obj);
                }
            }
            return hashMap;
        }
        return Collections.EMPTY_MAP;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(Exception exc, boolean z6, boolean z7) {
        zzds zzdsVar;
        Exception exc2;
        this.zzh |= z6;
        if (z6) {
            Log.w(this.zzc, "Data collection startup failed. No data will be collected.", exc);
            return;
        }
        if (z7) {
            zzdsVar = this;
            exc2 = exc;
            zzdsVar.zza(5, "Error with data collection. Data lost.", exc2, (Object) null, (Object) null);
        } else {
            zzdsVar = this;
            exc2 = exc;
        }
        Log.w(zzdsVar.zzc, "Error with data collection. Data lost.", exc2);
    }

    public final void zza(String str, String str2, Bundle bundle) {
        zza(new zzdw(this, str, str2, bundle));
    }

    public final void zza(String str, Bundle bundle) {
        zza(null, str, bundle, false, true, null);
    }

    public final void zza(String str, String str2, Bundle bundle, long j7) {
        zza(str, str2, bundle, true, false, Long.valueOf(j7));
    }

    private final void zza(String str, String str2, Bundle bundle, boolean z6, boolean z7, Long l7) {
        zza(new zzex(this, l7, str, str2, bundle, z6, z7));
    }

    public final void zza(int i2, String str, Object obj, Object obj2, Object obj3) {
        zza(new zzeo(this, false, 5, str, obj, null, null));
    }

    public final void zza(com.google.android.gms.measurement.internal.zzix zzixVar) {
        Preconditions.checkNotNull(zzixVar);
        synchronized (this.zzf) {
            for (int i2 = 0; i2 < this.zzf.size(); i2++) {
                try {
                    if (zzixVar.equals(this.zzf.get(i2).first)) {
                        Log.w(this.zzc, "OnEventListener already registered.");
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            zzd zzdVar = new zzd(zzixVar);
            this.zzf.add(new Pair<>(zzixVar, zzdVar));
            if (this.zzj != null) {
                try {
                    this.zzj.registerOnMeasurementEventListener(zzdVar);
                    return;
                } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                    Log.w(this.zzc, "Failed to register event listener on calling thread. Trying again on the dynamite thread.");
                }
            }
            zza(new zzev(this, zzdVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(zzb zzbVar) {
        this.zzd.execute(zzbVar);
    }

    public final void zza(Bundle bundle) {
        zza(new zzdt(this, bundle));
    }

    public final void zza(Activity activity, String str, String str2) {
        zza(new zzdx(this, activity, str, str2));
    }

    public final void zza(boolean z6) {
        zza(new zzet(this, z6));
    }

    public final void zza(com.google.android.gms.measurement.internal.zziu zziuVar) {
        zza zzaVar = new zza(zziuVar);
        if (this.zzj != null) {
            try {
                this.zzj.setEventInterceptor(zzaVar);
                return;
            } catch (BadParcelableException | NetworkOnMainThreadException | RemoteException | IllegalArgumentException | IllegalStateException | NullPointerException | SecurityException | UnsupportedOperationException unused) {
                Log.w(this.zzc, "Failed to set event interceptor on calling thread. Trying again on the dynamite thread.");
            }
        }
        zza(new zzen(this, zzaVar));
    }

    public final void zza(Boolean bool) {
        zza(new zzea(this, bool));
    }

    public final void zza(long j7) {
        zza(new zzed(this, j7));
    }

    public final void zza(String str, String str2, Object obj, boolean z6) {
        zza(new zzdu(this, str, str2, obj, z6));
    }
}
