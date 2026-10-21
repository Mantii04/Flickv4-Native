package com.google.android.gms.common;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zzaf;
import com.google.android.gms.common.internal.zzag;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import java.security.MessageDigest;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zzn {

    /* renamed from: e, reason: collision with root package name */
    public static volatile zzag f11073e;

    /* renamed from: g, reason: collision with root package name */
    public static Context f11075g;

    /* renamed from: a, reason: collision with root package name */
    public static final zzf f11069a = new zzf(zzj.zze("0\u0082\u0005È0\u0082\u0003° \u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\bsù/\u008eQí"));

    /* renamed from: b, reason: collision with root package name */
    public static final zzg f11070b = new zzg(zzj.zze("0\u0082\u0006\u00040\u0082\u0003ì \u0003\u0002\u0001\u0002\u0002\u0014\u0003£²\u00ad×árÊkì"));

    /* renamed from: c, reason: collision with root package name */
    public static final zzh f11071c = new zzh(zzj.zze("0\u0082\u0004C0\u0082\u0003+ \u0003\u0002\u0001\u0002\u0002\t\u0000Âà\u0087FdJ0\u008d0"));

    /* renamed from: d, reason: collision with root package name */
    public static final zzi f11072d = new zzi(zzj.zze("0\u0082\u0004¨0\u0082\u0003\u0090 \u0003\u0002\u0001\u0002\u0002\t\u0000Õ\u0085¸l}ÓNõ0"));

    /* renamed from: f, reason: collision with root package name */
    public static final Object f11074f = new Object();

    public static synchronized void a(Context context) {
        synchronized (zzn.class) {
            if (f11075g != null) {
                Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
            } else if (context != null) {
                f11075g = context.getApplicationContext();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r8v3, types: [com.google.android.gms.common.zze] */
    public static zzx b(final String str, final zzj zzjVar, final boolean z6, boolean z7) {
        try {
            c();
            Preconditions.checkNotNull(f11075g);
            try {
                return f11073e.zzh(new zzs(str, zzjVar, z6, z7), ObjectWrapper.wrap(f11075g.getPackageManager())) ? zzx.f11091d : new zzv(new Callable() { // from class: com.google.android.gms.common.zze
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        String str2;
                        boolean z8 = z6;
                        String str3 = str;
                        zzj zzjVar2 = zzjVar;
                        if (z8) {
                            zzf zzfVar = zzn.f11069a;
                        } else if (zzn.b(str3, zzjVar2, true, false).f11092a) {
                            str2 = "debug cert rejected";
                            MessageDigest zza = AndroidUtilsLight.zza("SHA-256");
                            Preconditions.checkNotNull(zza);
                            return str2 + ": pkg=" + str3 + ", sha256=" + Hex.bytesToStringLowercase(zza.digest(zzjVar2.a())) + ", atk=" + z8 + ", ver=12451000.false";
                        }
                        str2 = "not allowed";
                        MessageDigest zza2 = AndroidUtilsLight.zza("SHA-256");
                        Preconditions.checkNotNull(zza2);
                        return str2 + ": pkg=" + str3 + ", sha256=" + Hex.bytesToStringLowercase(zza2.digest(zzjVar2.a())) + ", atk=" + z8 + ", ver=12451000.false";
                    }
                });
            } catch (RemoteException e3) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e3);
                return new zzx(false, "module call", e3);
            }
        } catch (DynamiteModule.LoadingException e7) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e7);
            return new zzx(false, "module init: ".concat(String.valueOf(e7.getMessage())), e7);
        }
    }

    public static void c() {
        if (f11073e != null) {
            return;
        }
        Preconditions.checkNotNull(f11075g);
        synchronized (f11074f) {
            try {
                if (f11073e == null) {
                    f11073e = zzaf.zzb(DynamiteModule.load(f11075g, DynamiteModule.f11106d, "com.google.android.gms.googlecertificates").instantiate("com.google.android.gms.common.GoogleCertificatesImpl"));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
