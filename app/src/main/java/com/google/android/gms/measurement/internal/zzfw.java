package com.google.android.gms.measurement.internal;

import A.i;
import android.os.Bundle;
import b.c;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;

/* loaded from: classes2.dex */
public final class zzfw {

    /* renamed from: b, reason: collision with root package name */
    public static final AtomicReference f11548b = new AtomicReference();

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicReference f11549c = new AtomicReference();

    /* renamed from: d, reason: collision with root package name */
    public static final AtomicReference f11550d = new AtomicReference();

    /* renamed from: a, reason: collision with root package name */
    public final zzfz f11551a;

    public zzfw(zzfz zzfzVar) {
        this.f11551a = zzfzVar;
    }

    public static String a(String str, String[] strArr, String[] strArr2, AtomicReference atomicReference) {
        String str2;
        Preconditions.checkNotNull(strArr);
        Preconditions.checkNotNull(strArr2);
        Preconditions.checkNotNull(atomicReference);
        Preconditions.checkArgument(strArr.length == strArr2.length);
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (str.equals(strArr[i2])) {
                synchronized (atomicReference) {
                    try {
                        String[] strArr3 = (String[]) atomicReference.get();
                        if (strArr3 == null) {
                            strArr3 = new String[strArr2.length];
                            atomicReference.set(strArr3);
                        }
                        if (strArr3[i2] == null) {
                            strArr3[i2] = strArr2[i2] + "(" + strArr[i2] + ")";
                        }
                        str2 = strArr3[i2];
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    public final String b(Object[] objArr) {
        if (objArr == null) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder o6 = c.o("[");
        for (Object obj : objArr) {
            String zza = obj instanceof Bundle ? zza((Bundle) obj) : String.valueOf(obj);
            if (zza != null) {
                if (o6.length() != 1) {
                    o6.append(", ");
                }
                o6.append(zza);
            }
        }
        o6.append("]");
        return o6.toString();
    }

    public final String zza(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!this.f11551a.zza()) {
            return bundle.toString();
        }
        StringBuilder o6 = c.o("Bundle[{");
        for (String str : bundle.keySet()) {
            if (o6.length() != 8) {
                o6.append(", ");
            }
            o6.append(zzb(str));
            o6.append("=");
            Object obj = bundle.get(str);
            o6.append(obj instanceof Bundle ? b(new Object[]{obj}) : obj instanceof Object[] ? b((Object[]) obj) : obj instanceof ArrayList ? b(((ArrayList) obj).toArray()) : String.valueOf(obj));
        }
        o6.append("}]");
        return o6.toString();
    }

    public final String zzb(String str) {
        if (str == null) {
            return null;
        }
        return !this.f11551a.zza() ? str : a(str, zzis.f11824b, zzis.f11823a, f11549c);
    }

    public final String zzc(String str) {
        if (str == null) {
            return null;
        }
        return !this.f11551a.zza() ? str : str.startsWith("_exp_") ? i.l("experiment_id(", str, ")") : a(str, zziv.f11832b, zziv.f11831a, f11550d);
    }

    public final String zza(zzbf zzbfVar) {
        String str = null;
        if (zzbfVar == null) {
            return null;
        }
        zzfz zzfzVar = this.f11551a;
        if (!zzfzVar.zza()) {
            return zzbfVar.toString();
        }
        StringBuilder sb = new StringBuilder("origin=");
        sb.append(zzbfVar.f11259f);
        sb.append(",name=");
        sb.append(zza(zzbfVar.f11257b));
        sb.append(",params=");
        zzba zzbaVar = zzbfVar.f11258e;
        if (zzbaVar != null) {
            if (!zzfzVar.zza()) {
                str = zzbaVar.toString();
            } else {
                str = zza(zzbaVar.zzb());
            }
        }
        sb.append(str);
        return sb.toString();
    }

    public final String zza(String str) {
        if (str == null) {
            return null;
        }
        return !this.f11551a.zza() ? str : a(str, zzit.f11829c, zzit.f11827a, f11548b);
    }
}
