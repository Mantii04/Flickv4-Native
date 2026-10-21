package com.google.android.gms.dynamite;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.CrashUtils;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

@KeepForSdk
/* loaded from: classes.dex */
public final class DynamiteModule {

    /* renamed from: c, reason: collision with root package name */
    public static final VersionPolicy f11105c;

    /* renamed from: d, reason: collision with root package name */
    public static final VersionPolicy f11106d;

    /* renamed from: e, reason: collision with root package name */
    public static Boolean f11107e = null;

    /* renamed from: f, reason: collision with root package name */
    public static String f11108f = null;

    /* renamed from: g, reason: collision with root package name */
    public static boolean f11109g = false;

    /* renamed from: h, reason: collision with root package name */
    public static int f11110h = -1;

    /* renamed from: i, reason: collision with root package name */
    public static Boolean f11111i;

    /* renamed from: m, reason: collision with root package name */
    public static zzq f11115m;

    /* renamed from: n, reason: collision with root package name */
    public static zzr f11116n;

    /* renamed from: a, reason: collision with root package name */
    public final Context f11117a;

    /* renamed from: j, reason: collision with root package name */
    public static final ThreadLocal f11112j = new ThreadLocal();

    /* renamed from: k, reason: collision with root package name */
    public static final ThreadLocal f11113k = new zzd();

    /* renamed from: l, reason: collision with root package name */
    public static final VersionPolicy.IVersions f11114l = new zze();

    /* renamed from: b, reason: collision with root package name */
    public static final VersionPolicy f11104b = new zzf();

    @DynamiteApi
    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    @KeepForSdk
    public static class LoadingException extends Exception {
    }

    public interface VersionPolicy {

        @KeepForSdk
        public interface IVersions {
            int zza(Context context, String str);

            int zzb(Context context, String str, boolean z6) throws LoadingException;
        }

        @KeepForSdk
        public static class SelectionResult {

            /* renamed from: a, reason: collision with root package name */
            public int f11118a = 0;

            /* renamed from: b, reason: collision with root package name */
            public int f11119b = 0;

            /* renamed from: c, reason: collision with root package name */
            public int f11120c = 0;
        }

        @KeepForSdk
        SelectionResult selectModule(Context context, String str, IVersions iVersions) throws LoadingException;
    }

    static {
        new zzg();
        new zzh();
        f11105c = new zzi();
        f11106d = new zzj();
        new zzk();
        new zzl();
    }

    public DynamiteModule(Context context) {
        Preconditions.checkNotNull(context);
        this.f11117a = context;
    }

    public static int a(Context context, String str, boolean z6, boolean z7) {
        Throwable th;
        Exception exc;
        boolean z8;
        try {
            try {
                boolean z9 = true;
                Cursor query = context.getContentResolver().query(new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority("com.google.android.gms.chimera").path(true != z6 ? "api" : "api_force_staging").appendPath(str).appendQueryParameter("requestStartTime", String.valueOf(((Long) f11113k.get()).longValue())).build(), null, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            boolean z10 = false;
                            int i2 = query.getInt(0);
                            if (i2 > 0) {
                                synchronized (DynamiteModule.class) {
                                    try {
                                        f11108f = query.getString(2);
                                        int columnIndex = query.getColumnIndex("loaderVersion");
                                        if (columnIndex >= 0) {
                                            f11110h = query.getInt(columnIndex);
                                        }
                                        int columnIndex2 = query.getColumnIndex("disableStandaloneDynamiteLoader2");
                                        if (columnIndex2 >= 0) {
                                            z8 = query.getInt(columnIndex2) != 0;
                                            f11109g = z8;
                                        } else {
                                            z8 = false;
                                        }
                                    } catch (Throwable th2) {
                                        throw th2;
                                    }
                                }
                                zzn zznVar = (zzn) f11112j.get();
                                if (zznVar == null || zznVar.f11123a != null) {
                                    z9 = false;
                                } else {
                                    zznVar.f11123a = query;
                                }
                                r1 = z9 ? null : query;
                                z10 = z8;
                            } else {
                                r1 = query;
                            }
                            if (z7 && z10) {
                                throw new LoadingException("forcing fallback to container DynamiteLoader impl");
                            }
                            if (r1 != null) {
                                r1.close();
                            }
                            return i2;
                        }
                    } catch (Exception e3) {
                        exc = e3;
                        if (exc instanceof LoadingException) {
                            throw exc;
                        }
                        throw new LoadingException("V2 version check failed: " + exc.getMessage(), exc);
                    } catch (Throwable th3) {
                        r1 = query;
                        th = th3;
                        if (r1 == null) {
                            throw th;
                        }
                        r1.close();
                        throw th;
                    }
                }
                Log.w("DynamiteModule", "Failed to retrieve remote module version.");
                throw new LoadingException("Failed to connect to dynamite module ContentResolver.");
            } catch (Exception e7) {
                exc = e7;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static void b(ClassLoader classLoader) {
        zzr zzrVar;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zzrVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoaderV2");
                if (queryLocalInterface instanceof zzr) {
                    zzrVar = (zzr) queryLocalInterface;
                } else {
                    try {
                        zzrVar = new zzr(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
                    } catch (IllegalAccessException e3) {
                        e = e3;
                        throw new LoadingException("Failed to instantiate dynamite loader", e);
                    } catch (InstantiationException e7) {
                        e = e7;
                        throw new LoadingException("Failed to instantiate dynamite loader", e);
                    } catch (NoSuchMethodException e8) {
                        e = e8;
                        throw new LoadingException("Failed to instantiate dynamite loader", e);
                    } catch (InvocationTargetException e9) {
                        e = e9;
                        throw new LoadingException("Failed to instantiate dynamite loader", e);
                    }
                }
            }
            f11116n = zzrVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e10) {
            e = e10;
        }
    }

    public static boolean c(Context context) {
        ApplicationInfo applicationInfo;
        Boolean bool = Boolean.TRUE;
        if (bool.equals(null) || bool.equals(f11111i)) {
            return true;
        }
        boolean z6 = false;
        if (f11111i == null) {
            ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.chimera", 0);
            if (GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, 10000000) == 0 && resolveContentProvider != null && "com.google.android.gms".equals(resolveContentProvider.packageName)) {
                z6 = true;
            }
            f11111i = Boolean.valueOf(z6);
            if (z6 && (applicationInfo = resolveContentProvider.applicationInfo) != null && (applicationInfo.flags & 129) == 0) {
                Log.i("DynamiteModule", "Non-system-image GmsCore APK, forcing V1");
                f11109g = true;
            }
        }
        if (!z6) {
            Log.e("DynamiteModule", "Invalid GmsCore APK, remote loading disabled.");
        }
        return z6;
    }

    public static zzq d(Context context) {
        zzq zzqVar;
        synchronized (DynamiteModule.class) {
            zzq zzqVar2 = f11115m;
            if (zzqVar2 != null) {
                return zzqVar2;
            }
            try {
                IBinder iBinder = (IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance();
                if (iBinder == null) {
                    zzqVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamite.IDynamiteLoader");
                    zzqVar = queryLocalInterface instanceof zzq ? (zzq) queryLocalInterface : new zzq(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
                }
                if (zzqVar != null) {
                    f11115m = zzqVar;
                    return zzqVar;
                }
            } catch (Exception e3) {
                Log.e("DynamiteModule", "Failed to load IDynamiteLoader from GmsCore: " + e3.getMessage());
            }
            return null;
        }
    }

    @KeepForSdk
    public static int getLocalVersion(Context context, String str) {
        try {
            Class<?> loadClass = context.getApplicationContext().getClassLoader().loadClass("com.google.android.gms.dynamite.descriptors." + str + ".ModuleDescriptor");
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (Objects.equal(declaredField.get(null), str)) {
                return declaredField2.getInt(null);
            }
            Log.e("DynamiteModule", "Module descriptor id '" + String.valueOf(declaredField.get(null)) + "' didn't match expected id '" + str + "'");
            return 0;
        } catch (ClassNotFoundException unused) {
            Log.w("DynamiteModule", "Local module descriptor class for " + str + " not found.");
            return 0;
        } catch (Exception e3) {
            Log.e("DynamiteModule", "Failed to load module descriptor class: ".concat(String.valueOf(e3.getMessage())));
            return 0;
        }
    }

    @KeepForSdk
    public static int getRemoteVersion(Context context, String str) {
        return zza(context, str, false);
    }

    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public static DynamiteModule load(Context context, VersionPolicy versionPolicy, String str) throws LoadingException {
        long j7;
        DynamiteModule dynamiteModule;
        Boolean bool;
        IObjectWrapper zzh;
        DynamiteModule dynamiteModule2;
        zzr zzrVar;
        boolean z6;
        IObjectWrapper zze;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            throw new LoadingException("null application Context");
        }
        ThreadLocal threadLocal = f11112j;
        zzn zznVar = (zzn) threadLocal.get();
        zzn zznVar2 = new zzn();
        threadLocal.set(zznVar2);
        ThreadLocal threadLocal2 = f11113k;
        Long l7 = (Long) threadLocal2.get();
        long longValue = l7.longValue();
        try {
            threadLocal2.set(Long.valueOf(SystemClock.elapsedRealtime()));
            VersionPolicy.SelectionResult selectModule = versionPolicy.selectModule(context, str, f11114l);
            j7 = longValue;
            try {
                Log.i("DynamiteModule", "Considering local module " + str + ":" + selectModule.f11118a + " and remote module " + str + ":" + selectModule.f11119b);
                int i2 = selectModule.f11120c;
                if (i2 != 0) {
                    if (i2 == -1) {
                        if (selectModule.f11118a != 0) {
                            i2 = -1;
                        }
                    }
                    if (i2 != 1 || selectModule.f11119b != 0) {
                        if (i2 == -1) {
                            Log.i("DynamiteModule", "Selected local version of ".concat(String.valueOf(str)));
                            dynamiteModule = new DynamiteModule(applicationContext);
                        } else {
                            if (i2 != 1) {
                                throw new LoadingException("VersionPolicy returned invalid code:" + i2);
                            }
                            try {
                                int i7 = selectModule.f11119b;
                                try {
                                    synchronized (DynamiteModule.class) {
                                        if (!c(context)) {
                                            throw new LoadingException("Remote loading disabled");
                                        }
                                        bool = f11107e;
                                    }
                                    if (bool == null) {
                                        throw new LoadingException("Failed to determine which loading route to use.");
                                    }
                                    if (bool.booleanValue()) {
                                        Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i7);
                                        synchronized (DynamiteModule.class) {
                                            zzrVar = f11116n;
                                        }
                                        if (zzrVar == null) {
                                            throw new LoadingException("DynamiteLoaderV2 was not cached.");
                                        }
                                        zzn zznVar3 = (zzn) threadLocal.get();
                                        if (zznVar3 == null || zznVar3.f11123a == null) {
                                            throw new LoadingException("No result cursor");
                                        }
                                        Context applicationContext2 = context.getApplicationContext();
                                        Cursor cursor = zznVar3.f11123a;
                                        ObjectWrapper.wrap(null);
                                        synchronized (DynamiteModule.class) {
                                            z6 = f11110h >= 2;
                                        }
                                        if (z6) {
                                            Log.v("DynamiteModule", "Dynamite loader version >= 2, using loadModule2NoCrashUtils");
                                            zze = zzrVar.zzf(ObjectWrapper.wrap(applicationContext2), str, i7, ObjectWrapper.wrap(cursor));
                                        } else {
                                            Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to loadModule2");
                                            zze = zzrVar.zze(ObjectWrapper.wrap(applicationContext2), str, i7, ObjectWrapper.wrap(cursor));
                                        }
                                        Context context2 = (Context) ObjectWrapper.unwrap(zze);
                                        if (context2 == null) {
                                            throw new LoadingException("Failed to get module context");
                                        }
                                        dynamiteModule2 = new DynamiteModule(context2);
                                    } else {
                                        Log.i("DynamiteModule", "Selected remote version of " + str + ", version >= " + i7);
                                        zzq d7 = d(context);
                                        if (d7 == null) {
                                            throw new LoadingException("Failed to create IDynamiteLoader.");
                                        }
                                        int zze2 = d7.zze();
                                        if (zze2 >= 3) {
                                            zzn zznVar4 = (zzn) threadLocal.get();
                                            if (zznVar4 == null) {
                                                throw new LoadingException("No cached result cursor holder");
                                            }
                                            zzh = d7.zzi(ObjectWrapper.wrap(context), str, i7, ObjectWrapper.wrap(zznVar4.f11123a));
                                        } else if (zze2 == 2) {
                                            Log.w("DynamiteModule", "IDynamite loader version = 2");
                                            zzh = d7.zzj(ObjectWrapper.wrap(context), str, i7);
                                        } else {
                                            Log.w("DynamiteModule", "Dynamite loader version < 2, falling back to createModuleContext");
                                            zzh = d7.zzh(ObjectWrapper.wrap(context), str, i7);
                                        }
                                        Object unwrap = ObjectWrapper.unwrap(zzh);
                                        if (unwrap == null) {
                                            throw new LoadingException("Failed to load remote module.");
                                        }
                                        dynamiteModule2 = new DynamiteModule((Context) unwrap);
                                    }
                                    dynamiteModule = dynamiteModule2;
                                } catch (RemoteException e3) {
                                    throw new LoadingException("Failed to load remote module.", e3);
                                } catch (LoadingException e7) {
                                    throw e7;
                                } catch (Throwable th) {
                                    CrashUtils.addDynamiteErrorToDropBox(context, th);
                                    throw new LoadingException("Failed to load remote module.", th);
                                }
                            } catch (LoadingException e8) {
                                Log.w("DynamiteModule", "Failed to load remote module: " + e8.getMessage());
                                int i8 = selectModule.f11118a;
                                if (i8 == 0 || versionPolicy.selectModule(context, str, new zzo(i8, 0)).f11120c != -1) {
                                    throw new LoadingException("Remote load failed. No local fallback found.", e8);
                                }
                                Log.i("DynamiteModule", "Selected local version of ".concat(String.valueOf(str)));
                                dynamiteModule = new DynamiteModule(applicationContext);
                            }
                        }
                        if (j7 == 0) {
                            f11113k.remove();
                        } else {
                            f11113k.set(l7);
                        }
                        Cursor cursor2 = zznVar2.f11123a;
                        if (cursor2 != null) {
                            cursor2.close();
                        }
                        f11112j.set(zznVar);
                        return dynamiteModule;
                    }
                }
                throw new LoadingException("No acceptable module " + str + " found. Local version is " + selectModule.f11118a + " and remote version is " + selectModule.f11119b + ".");
            } catch (Throwable th2) {
                th = th2;
                if (j7 == 0) {
                    f11113k.remove();
                } else {
                    f11113k.set(l7);
                }
                Cursor cursor3 = zznVar2.f11123a;
                if (cursor3 != null) {
                    cursor3.close();
                }
                f11112j.set(zznVar);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            j7 = longValue;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x016f, code lost:
    
        if (r2 != false) goto L102;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zza(android.content.Context r11, java.lang.String r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.zza(android.content.Context, java.lang.String, boolean):int");
    }

    @ResultIgnorabilityUnspecified
    @KeepForSdk
    public Context getModuleContext() {
        return this.f11117a;
    }

    @KeepForSdk
    public IBinder instantiate(String str) throws LoadingException {
        try {
            return (IBinder) this.f11117a.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e3) {
            throw new LoadingException("Failed to instantiate module class: ".concat(String.valueOf(str)), e3);
        }
    }
}
