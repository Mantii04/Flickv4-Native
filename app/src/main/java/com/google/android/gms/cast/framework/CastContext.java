package com.google.android.gms.cast.framework;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.cast.zzbn;
import com.google.android.gms.internal.cast.zzcy;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.TaskCompletionSource;
import f1.L;
import f1.X;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class CastContext {

    /* renamed from: m, reason: collision with root package name */
    public static final Logger f9815m = new Logger("CastContext");

    /* renamed from: n, reason: collision with root package name */
    public static final Object f9816n = new Object();

    /* renamed from: o, reason: collision with root package name */
    public static volatile CastContext f9817o;

    /* renamed from: a, reason: collision with root package name */
    public final Context f9818a;

    /* renamed from: b, reason: collision with root package name */
    public final zzaj f9819b;

    /* renamed from: c, reason: collision with root package name */
    public final SessionManager f9820c;

    /* renamed from: d, reason: collision with root package name */
    public final zzac f9821d;

    /* renamed from: e, reason: collision with root package name */
    public final CastOptions f9822e;

    /* renamed from: f, reason: collision with root package name */
    public final com.google.android.gms.cast.internal.zzn f9823f;

    /* renamed from: g, reason: collision with root package name */
    public final com.google.android.gms.internal.cast.zzaf f9824g;

    /* renamed from: h, reason: collision with root package name */
    public final com.google.android.gms.internal.cast.zzay f9825h;

    /* renamed from: i, reason: collision with root package name */
    public final List f9826i;

    /* renamed from: j, reason: collision with root package name */
    public final zzbn f9827j;

    /* renamed from: k, reason: collision with root package name */
    public final com.google.android.gms.internal.cast.zzai f9828k;

    /* renamed from: l, reason: collision with root package name */
    public CastReasonCodes f9829l;

    public CastContext(Context context, CastOptions castOptions, List list, com.google.android.gms.internal.cast.zzbf zzbfVar, final com.google.android.gms.cast.internal.zzn zznVar) {
        this.f9818a = context;
        this.f9822e = castOptions;
        this.f9823f = zznVar;
        this.f9826i = list;
        this.f9825h = new com.google.android.gms.internal.cast.zzay(context);
        this.f9827j = zzbfVar.zzn();
        this.f9828k = !TextUtils.isEmpty(castOptions.getReceiverApplicationId()) ? new com.google.android.gms.internal.cast.zzai(context, castOptions, zzbfVar) : null;
        HashMap hashMap = new HashMap();
        com.google.android.gms.internal.cast.zzai zzaiVar = this.f9828k;
        if (zzaiVar != null) {
            hashMap.put(zzaiVar.getCategory(), zzaiVar.zza());
        }
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                SessionProvider sessionProvider = (SessionProvider) it.next();
                Preconditions.checkNotNull(sessionProvider, "Additional SessionProvider must not be null.");
                String checkNotEmpty = Preconditions.checkNotEmpty(sessionProvider.getCategory(), "Category for SessionProvider must not be null or empty string.");
                Preconditions.checkArgument(!hashMap.containsKey(checkNotEmpty), "SessionProvider for category " + checkNotEmpty + " already added");
                hashMap.put(checkNotEmpty, sessionProvider.zza());
            }
        }
        castOptions.zzb(new zzl(1));
        try {
            zzaj zza = com.google.android.gms.internal.cast.zzag.zza(context, castOptions, zzbfVar, hashMap);
            this.f9819b = zza;
            try {
                this.f9821d = new zzac(zza.zzf());
                try {
                    SessionManager sessionManager = new SessionManager(zza.zzg(), context);
                    this.f9820c = sessionManager;
                    new MediaNotificationManager(sessionManager);
                    new PrecacheManager(this.f9822e, sessionManager, zznVar);
                    zzbn zzbnVar = this.f9827j;
                    if (zzbnVar != null) {
                        zzbnVar.zzj(sessionManager);
                    }
                    new zzcy(context);
                    com.google.android.gms.internal.cast.zzaf zzafVar = new com.google.android.gms.internal.cast.zzaf();
                    this.f9824g = zzafVar;
                    try {
                        zza.zzh(zzafVar);
                        zzafVar.zza.add(this.f9825h.zza);
                        if (!castOptions.zza().isEmpty()) {
                            f9815m.i("Setting Route Discovery for appIds: ".concat(String.valueOf(this.f9822e.zza())), new Object[0]);
                            this.f9825h.zza(this.f9822e.zza());
                        }
                        zznVar.zza(new String[]{"com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_ENABLED", "com.google.android.gms.cast.FLAG_CLIENT_SESSION_ANALYTICS_MODE", "com.google.android.gms.cast.FLAG_FIRELOG_UPLOAD_MODE", "com.google.android.gms.cast.FLAG_ANALYTICS_LOGGING_BUCKET_SIZE", "com.google.android.gms.cast.FLAG_CLIENT_FEATURE_USAGE_ANALYTICS_ENABLED"}).addOnSuccessListener(new OnSuccessListener() { // from class: com.google.android.gms.cast.framework.zzg
                            @Override // com.google.android.gms.tasks.OnSuccessListener
                            public final void onSuccess(Object obj) {
                                CastContext.zzd(CastContext.this, (Bundle) obj);
                            }
                        });
                        final String[] strArr = {"com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES"};
                        zznVar.doRead(TaskApiCall.builder().run(new RemoteCall(zznVar, strArr) { // from class: com.google.android.gms.cast.internal.zzh

                            /* renamed from: a, reason: collision with root package name */
                            public final /* synthetic */ String[] f10389a;

                            {
                                this.f10389a = strArr;
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // com.google.android.gms.common.api.internal.RemoteCall
                            public final void accept(Object obj, Object obj2) {
                                ((zzaj) ((zzo) obj).getService()).zzg(new zzm((TaskCompletionSource) obj2), this.f10389a);
                            }
                        }).setFeatures(com.google.android.gms.cast.zzax.f10468d).setAutoResolveMissingFeatures(false).setMethodKey(8427).build()).addOnSuccessListener(new OnSuccessListener() { // from class: com.google.android.gms.cast.framework.zzh
                            @Override // com.google.android.gms.tasks.OnSuccessListener
                            public final void onSuccess(Object obj) {
                                CastContext castContext = CastContext.this;
                                castContext.getClass();
                                castContext.f9829l = new CastReasonCodes((Bundle) obj);
                            }
                        });
                    } catch (RemoteException e3) {
                        throw new IllegalStateException("Failed to call addAppVisibilityListener", e3);
                    }
                } catch (RemoteException e7) {
                    throw new IllegalStateException("Failed to call getSessionManagerImpl", e7);
                }
            } catch (RemoteException e8) {
                throw new IllegalStateException("Failed to call getDiscoveryManagerImpl", e8);
            }
        } catch (RemoteException e9) {
            throw new IllegalStateException("Failed to call newCastContextImpl", e9);
        }
    }

    public static OptionsProvider a(Context context) {
        try {
            Bundle bundle = Wrappers.packageManager(context).getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle == null) {
                f9815m.e("Bundle is null", new Object[0]);
            }
            String string = bundle.getString("com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME");
            if (string != null) {
                return (OptionsProvider) Class.forName(string).asSubclass(OptionsProvider.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            }
            throw new IllegalStateException("The fully qualified name of the implementation of OptionsProvider must be provided as a metadata in the AndroidManifest.xml with key com.google.android.gms.cast.framework.OPTIONS_PROVIDER_CLASS_NAME.");
        } catch (PackageManager.NameNotFoundException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | NullPointerException | InvocationTargetException e3) {
            throw new IllegalStateException("Failed to initialize CastContext.", e3);
        }
    }

    public static CastContext getSharedInstance() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return f9817o;
    }

    public static CastContext zza(Context context) throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return getSharedInstance(context);
        } catch (RuntimeException e3) {
            f9815m.e("Failed to load module from Google Play services. Cast will not work properly. Might due to outdated Google Play services. Ignoring this failure silently.", e3);
            return null;
        }
    }

    public static /* synthetic */ void zzd(CastContext castContext, Bundle bundle) {
        if (com.google.android.gms.internal.cast.zzg.zza) {
            com.google.android.gms.internal.cast.zzg.zza(castContext.f9818a, castContext.f9823f, castContext.f9820c, castContext.f9827j, castContext.f9824g).zzc(bundle);
        }
    }

    public CastOptions getCastOptions() throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.f9822e;
    }

    public int getCastReasonCodeForCastStatusCode(int i2) {
        CastReasonCodes castReasonCodes = this.f9829l;
        if (castReasonCodes != null) {
            return castReasonCodes.zza(i2);
        }
        f9815m.w("castReasonCodes hasn't been initialized yet", new Object[0]);
        return 0;
    }

    public L getMergedSelector() throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return L.fromBundle(this.f9819b.zze());
        } catch (RemoteException e3) {
            f9815m.d(e3, "Unable to call %s on %s.", "getMergedSelectorAsBundle", "zzaj");
            return null;
        }
    }

    public SessionManager getSessionManager() throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.f9820c;
    }

    @ShowFirstParty
    public final zzac zzc() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.f9821d;
    }

    public static CastContext getSharedInstance(Context context) throws IllegalStateException {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (f9817o == null) {
            synchronized (f9816n) {
                if (f9817o == null) {
                    Context applicationContext = context.getApplicationContext();
                    OptionsProvider a7 = a(applicationContext);
                    CastOptions castOptions = a7.getCastOptions(applicationContext);
                    com.google.android.gms.cast.internal.zzn zznVar = new com.google.android.gms.cast.internal.zzn(applicationContext);
                    try {
                        f9817o = new CastContext(applicationContext, castOptions, a7.getAdditionalSessionProviders(applicationContext), new com.google.android.gms.internal.cast.zzbf(applicationContext, X.getInstance(applicationContext), castOptions, zznVar), zznVar);
                    } catch (ModuleUnavailableException e3) {
                        throw new RuntimeException(e3);
                    }
                }
            }
        }
        return f9817o;
    }
}
