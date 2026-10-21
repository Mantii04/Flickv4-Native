package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.measurement.zzqv;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeSet;
import p.g;

@DynamiteApi
/* loaded from: classes2.dex */
public class AppMeasurementDynamiteService extends com.google.android.gms.internal.measurement.zzdg {

    /* renamed from: a, reason: collision with root package name */
    public zzho f11147a = null;

    /* renamed from: b, reason: collision with root package name */
    public final g f11148b = new g();

    public class zza implements zziu {

        /* renamed from: a, reason: collision with root package name */
        public final com.google.android.gms.internal.measurement.zzdj f11149a;

        public zza(com.google.android.gms.internal.measurement.zzdj zzdjVar) {
            this.f11149a = zzdjVar;
        }

        @Override // com.google.android.gms.measurement.internal.zziu
        public final void interceptEvent(String str, String str2, Bundle bundle, long j7) {
            try {
                this.f11149a.zza(str, str2, bundle, j7);
            } catch (RemoteException e3) {
                zzho zzhoVar = AppMeasurementDynamiteService.this.f11147a;
                if (zzhoVar != null) {
                    zzhoVar.zzj().zzu().zza("Event interceptor threw exception", e3);
                }
            }
        }
    }

    public class zzb implements zzix {

        /* renamed from: a, reason: collision with root package name */
        public final com.google.android.gms.internal.measurement.zzdj f11151a;

        public zzb(com.google.android.gms.internal.measurement.zzdj zzdjVar) {
            this.f11151a = zzdjVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzix
        public final void onEvent(String str, String str2, Bundle bundle, long j7) {
            try {
                this.f11151a.zza(str, str2, bundle, j7);
            } catch (RemoteException e3) {
                zzho zzhoVar = AppMeasurementDynamiteService.this.f11147a;
                if (zzhoVar != null) {
                    zzhoVar.zzj().zzu().zza("Event listener threw exception", e3);
                }
            }
        }
    }

    public final void a() {
        if (this.f11147a == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void beginAdUnitExposure(String str, long j7) throws RemoteException {
        a();
        this.f11147a.zze().zza(str, j7);
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        a();
        this.f11147a.zzp().zza(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void clearMeasurementEnabled(long j7) throws RemoteException {
        a();
        this.f11147a.zzp().zza((Boolean) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void endAdUnitExposure(String str, long j7) throws RemoteException {
        a();
        this.f11147a.zze().zzb(str, j7);
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void generateEventId(com.google.android.gms.internal.measurement.zzdi zzdiVar) throws RemoteException {
        a();
        long zzm = this.f11147a.zzt().zzm();
        a();
        this.f11147a.zzt().zza(zzdiVar, zzm);
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void getAppInstanceId(com.google.android.gms.internal.measurement.zzdi zzdiVar) throws RemoteException {
        a();
        this.f11147a.zzl().zzb(new zzh(this, zzdiVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void getCachedAppInstanceId(com.google.android.gms.internal.measurement.zzdi zzdiVar) throws RemoteException {
        a();
        String zzae = this.f11147a.zzp().zzae();
        a();
        this.f11147a.zzt().zza(zzdiVar, zzae);
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void getConditionalUserProperties(String str, String str2, com.google.android.gms.internal.measurement.zzdi zzdiVar) throws RemoteException {
        a();
        this.f11147a.zzl().zzb(new zzk(this, zzdiVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void getCurrentScreenClass(com.google.android.gms.internal.measurement.zzdi zzdiVar) throws RemoteException {
        a();
        String zzaf = this.f11147a.zzp().zzaf();
        a();
        this.f11147a.zzt().zza(zzdiVar, zzaf);
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void getCurrentScreenName(com.google.android.gms.internal.measurement.zzdi zzdiVar) throws RemoteException {
        a();
        String zzag = this.f11147a.zzp().zzag();
        a();
        this.f11147a.zzt().zza(zzdiVar, zzag);
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void getGmpAppId(com.google.android.gms.internal.measurement.zzdi zzdiVar) throws RemoteException {
        a();
        String zzah = this.f11147a.zzp().zzah();
        a();
        this.f11147a.zzt().zza(zzdiVar, zzah);
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void getMaxUserProperties(String str, com.google.android.gms.internal.measurement.zzdi zzdiVar) throws RemoteException {
        a();
        this.f11147a.zzp();
        Preconditions.checkNotEmpty(str);
        a();
        this.f11147a.zzt().zza(zzdiVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void getSessionId(com.google.android.gms.internal.measurement.zzdi zzdiVar) throws RemoteException {
        a();
        zziy zzp = this.f11147a.zzp();
        zzp.zzl().zzb(new zzka(zzp, zzdiVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void getTestFlag(com.google.android.gms.internal.measurement.zzdi zzdiVar, int i2) throws RemoteException {
        a();
        if (i2 == 0) {
            this.f11147a.zzt().zza(zzdiVar, this.f11147a.zzp().zzai());
            return;
        }
        if (i2 == 1) {
            this.f11147a.zzt().zza(zzdiVar, this.f11147a.zzp().zzad().longValue());
            return;
        }
        if (i2 != 2) {
            if (i2 == 3) {
                this.f11147a.zzt().zza(zzdiVar, this.f11147a.zzp().zzac().intValue());
                return;
            } else {
                if (i2 != 4) {
                    return;
                }
                this.f11147a.zzt().zza(zzdiVar, this.f11147a.zzp().zzaa().booleanValue());
                return;
            }
        }
        zznt zzt = this.f11147a.zzt();
        double doubleValue = this.f11147a.zzp().zzab().doubleValue();
        Bundle bundle = new Bundle();
        bundle.putDouble("r", doubleValue);
        try {
            zzdiVar.zza(bundle);
        } catch (RemoteException e3) {
            zzt.f11804a.zzj().zzu().zza("Error returning double value to wrapper", e3);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void getUserProperties(String str, String str2, boolean z6, com.google.android.gms.internal.measurement.zzdi zzdiVar) throws RemoteException {
        a();
        this.f11147a.zzl().zzb(new zzi(this, zzdiVar, str, str2, z6));
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void initForTests(Map map) throws RemoteException {
        a();
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void initialize(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzdq zzdqVar, long j7) throws RemoteException {
        zzho zzhoVar = this.f11147a;
        if (zzhoVar == null) {
            this.f11147a = zzho.zza((Context) Preconditions.checkNotNull((Context) ObjectWrapper.unwrap(iObjectWrapper)), zzdqVar, Long.valueOf(j7));
        } else {
            zzhoVar.zzj().zzu().zza("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void isDataCollectionEnabled(com.google.android.gms.internal.measurement.zzdi zzdiVar) throws RemoteException {
        a();
        this.f11147a.zzl().zzb(new zzm(this, zzdiVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void logEvent(String str, String str2, Bundle bundle, boolean z6, boolean z7, long j7) throws RemoteException {
        a();
        this.f11147a.zzp().zza(str, str2, bundle, z6, z7, j7);
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void logEventAndBundle(String str, String str2, Bundle bundle, com.google.android.gms.internal.measurement.zzdi zzdiVar, long j7) throws RemoteException {
        a();
        Preconditions.checkNotEmpty(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.f11147a.zzl().zzb(new zzj(this, zzdiVar, new zzbf(str2, new zzba(bundle), "app", j7), str));
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void logHealthData(int i2, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        a();
        this.f11147a.zzj().zza(i2, true, false, str, iObjectWrapper == null ? null : ObjectWrapper.unwrap(iObjectWrapper), iObjectWrapper2 == null ? null : ObjectWrapper.unwrap(iObjectWrapper2), iObjectWrapper3 != null ? ObjectWrapper.unwrap(iObjectWrapper3) : null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j7) throws RemoteException {
        a();
        zzkl zzklVar = this.f11147a.zzp().f11843c;
        if (zzklVar != null) {
            this.f11147a.zzp().zzak();
            zzklVar.onActivityCreated((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j7) throws RemoteException {
        a();
        zzkl zzklVar = this.f11147a.zzp().f11843c;
        if (zzklVar != null) {
            this.f11147a.zzp().zzak();
            zzklVar.onActivityDestroyed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void onActivityPaused(IObjectWrapper iObjectWrapper, long j7) throws RemoteException {
        a();
        zzkl zzklVar = this.f11147a.zzp().f11843c;
        if (zzklVar != null) {
            this.f11147a.zzp().zzak();
            zzklVar.onActivityPaused((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void onActivityResumed(IObjectWrapper iObjectWrapper, long j7) throws RemoteException {
        a();
        zzkl zzklVar = this.f11147a.zzp().f11843c;
        if (zzklVar != null) {
            this.f11147a.zzp().zzak();
            zzklVar.onActivityResumed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzdi zzdiVar, long j7) throws RemoteException {
        a();
        zzkl zzklVar = this.f11147a.zzp().f11843c;
        Bundle bundle = new Bundle();
        if (zzklVar != null) {
            this.f11147a.zzp().zzak();
            zzklVar.onActivitySaveInstanceState((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
        try {
            zzdiVar.zza(bundle);
        } catch (RemoteException e3) {
            this.f11147a.zzj().zzu().zza("Error returning bundle value to wrapper", e3);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void onActivityStarted(IObjectWrapper iObjectWrapper, long j7) throws RemoteException {
        a();
        zzkl zzklVar = this.f11147a.zzp().f11843c;
        if (zzklVar != null) {
            this.f11147a.zzp().zzak();
            zzklVar.onActivityStarted((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void onActivityStopped(IObjectWrapper iObjectWrapper, long j7) throws RemoteException {
        a();
        zzkl zzklVar = this.f11147a.zzp().f11843c;
        if (zzklVar != null) {
            this.f11147a.zzp().zzak();
            zzklVar.onActivityStopped((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void performAction(Bundle bundle, com.google.android.gms.internal.measurement.zzdi zzdiVar, long j7) throws RemoteException {
        a();
        zzdiVar.zza(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void registerOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzdj zzdjVar) throws RemoteException {
        zzix zzixVar;
        a();
        synchronized (this.f11148b) {
            try {
                zzixVar = (zzix) this.f11148b.get(Integer.valueOf(zzdjVar.zza()));
                if (zzixVar == null) {
                    zzixVar = new zzb(zzdjVar);
                    this.f11148b.put(Integer.valueOf(zzdjVar.zza()), zzixVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f11147a.zzp().zza(zzixVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void resetAnalyticsData(long j7) throws RemoteException {
        a();
        zziy zzp = this.f11147a.zzp();
        zzp.i(null);
        zzp.zzl().zzb(new zzjx(zzp, j7));
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void setConditionalUserProperty(Bundle bundle, long j7) throws RemoteException {
        a();
        if (bundle == null) {
            this.f11147a.zzj().zzg().zza("Conditional user property must not be null");
        } else {
            this.f11147a.zzp().zza(bundle, j7);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void setConsent(final Bundle bundle, final long j7) throws RemoteException {
        a();
        final zziy zzp = this.f11147a.zzp();
        zzp.zzl().zzc(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzje
            @Override // java.lang.Runnable
            public final void run() {
                zziy zziyVar = zziy.this;
                if (TextUtils.isEmpty(zziyVar.zzg().zzae())) {
                    zziyVar.c(bundle, 0, j7);
                } else {
                    zziyVar.zzj().zzv().zza("Using developer consent only; google app id found");
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void setConsentThirdParty(Bundle bundle, long j7) throws RemoteException {
        a();
        this.f11147a.zzp().c(bundle, -20, j7);
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j7) throws RemoteException {
        a();
        this.f11147a.zzq().zza((Activity) ObjectWrapper.unwrap(iObjectWrapper), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void setDataCollectionEnabled(boolean z6) throws RemoteException {
        a();
        zziy zzp = this.f11147a.zzp();
        zzp.zzu();
        zzp.zzl().zzb(new zzjm(zzp, z6));
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void setDefaultEventParameters(Bundle bundle) {
        a();
        final zziy zzp = this.f11147a.zzp();
        final Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
        zzp.zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzjf
            @Override // java.lang.Runnable
            public final void run() {
                zzkd zzkdVar;
                zziy zziyVar = zziy.this;
                Bundle bundle3 = bundle2;
                if (bundle3 == null) {
                    zziyVar.zzk().f11621z.zza(new Bundle());
                    return;
                }
                Bundle zza2 = zziyVar.zzk().f11621z.zza();
                Iterator<String> it = bundle3.keySet().iterator();
                while (true) {
                    boolean hasNext = it.hasNext();
                    zzkdVar = zziyVar.f11859s;
                    if (!hasNext) {
                        break;
                    }
                    String next = it.next();
                    Object obj = bundle3.get(next);
                    if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                        zziyVar.zzq();
                        if (zznt.s(obj)) {
                            zziyVar.zzq();
                            zznt.zza(zzkdVar, 27, (String) null, (String) null, 0);
                        }
                        zziyVar.zzj().zzv().zza("Invalid default event parameter type. Name, value", next, obj);
                    } else if (zznt.M(next)) {
                        zziyVar.zzj().zzv().zza("Invalid default event parameter name. Name", next);
                    } else if (obj == null) {
                        zza2.remove(next);
                    } else if (zziyVar.zzq().v("param", next, zziyVar.zze().a(null, false), obj)) {
                        zziyVar.zzq().k(zza2, next, obj);
                    }
                }
                zziyVar.zzq();
                int zzg = zziyVar.zze().zzg();
                if (zza2.size() > zzg) {
                    Iterator it2 = new TreeSet(zza2.keySet()).iterator();
                    int i2 = 0;
                    while (it2.hasNext()) {
                        String str = (String) it2.next();
                        i2++;
                        if (i2 > zzg) {
                            zza2.remove(str);
                        }
                    }
                    zziyVar.zzq();
                    zznt.zza(zzkdVar, 26, (String) null, (String) null, 0);
                    zziyVar.zzj().zzv().zza("Too many default event parameters set. Discarding beyond event parameter limit");
                }
                zziyVar.zzk().f11621z.zza(zza2);
                zziyVar.zzo().zza(zza2);
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void setEventInterceptor(com.google.android.gms.internal.measurement.zzdj zzdjVar) throws RemoteException {
        a();
        zza zzaVar = new zza(zzdjVar);
        if (this.f11147a.zzl().zzg()) {
            this.f11147a.zzp().zza(zzaVar);
        } else {
            this.f11147a.zzl().zzb(new zzl(this, zzaVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void setInstanceIdProvider(com.google.android.gms.internal.measurement.zzdo zzdoVar) throws RemoteException {
        a();
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void setMeasurementEnabled(boolean z6, long j7) throws RemoteException {
        a();
        this.f11147a.zzp().zza(Boolean.valueOf(z6));
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void setMinimumSessionDuration(long j7) throws RemoteException {
        a();
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void setSessionTimeoutDuration(long j7) throws RemoteException {
        a();
        zziy zzp = this.f11147a.zzp();
        zzp.zzl().zzb(new zzjo(zzp, j7));
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void setSgtmDebugInfo(Intent intent) throws RemoteException {
        a();
        zziy zzp = this.f11147a.zzp();
        if (zzqv.zza() && zzp.zze().zzf(null, zzbh.f11357u0)) {
            Uri data = intent.getData();
            if (data == null) {
                zzp.zzj().zzn().zza("Activity intent has no data. Preview Mode was not enabled.");
                return;
            }
            String queryParameter = data.getQueryParameter("sgtm_debug_enable");
            if (queryParameter == null || !queryParameter.equals("1")) {
                zzp.zzj().zzn().zza("Preview Mode was not enabled.");
                zzp.zze().zzi(null);
                return;
            }
            String queryParameter2 = data.getQueryParameter("sgtm_preview_key");
            if (TextUtils.isEmpty(queryParameter2)) {
                return;
            }
            zzp.zzj().zzn().zza("Preview Mode was enabled. Using the sgtmPreviewKey: ", queryParameter2);
            zzp.zze().zzi(queryParameter2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void setUserId(final String str, long j7) throws RemoteException {
        a();
        final zziy zzp = this.f11147a.zzp();
        if (str != null && TextUtils.isEmpty(str)) {
            zzp.f11804a.zzj().zzu().zza("User ID must be non-empty or null");
        } else {
            zzp.zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzjj
                @Override // java.lang.Runnable
                public final void run() {
                    zziy zziyVar = zziy.this;
                    zzfv zzg = zziyVar.zzg();
                    String str2 = zzg.f11547p;
                    String str3 = str;
                    boolean z6 = (str2 == null || str2.equals(str3)) ? false : true;
                    zzg.f11547p = str3;
                    if (z6) {
                        zziyVar.zzg().zzag();
                    }
                }
            });
            zzp.zza(null, "_id", str, true, j7);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z6, long j7) throws RemoteException {
        a();
        this.f11147a.zzp().zza(str, str2, ObjectWrapper.unwrap(iObjectWrapper), z6, j7);
    }

    @Override // com.google.android.gms.internal.measurement.zzdd
    public void unregisterOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzdj zzdjVar) throws RemoteException {
        zzix zzixVar;
        a();
        synchronized (this.f11148b) {
            zzixVar = (zzix) this.f11148b.remove(Integer.valueOf(zzdjVar.zza()));
        }
        if (zzixVar == null) {
            zzixVar = new zzb(zzdjVar);
        }
        this.f11147a.zzp().zzb(zzixVar);
    }
}
