package com.google.android.gms.measurement.internal;

import A.i;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzqv;
import com.google.firebase.analytics.FirebaseAnalytics;
import j1.AbstractC1039b;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import org.apache.commons.lang3.time.DateUtils;

/* loaded from: classes2.dex */
public final class zznt extends zzil {

    /* renamed from: i, reason: collision with root package name */
    public static final String[] f12238i = {"firebase_", "google_", "ga_"};

    /* renamed from: j, reason: collision with root package name */
    public static final String[] f12239j = {"_err"};

    /* renamed from: c, reason: collision with root package name */
    public SecureRandom f12240c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicLong f12241d;

    /* renamed from: e, reason: collision with root package name */
    public int f12242e;

    /* renamed from: f, reason: collision with root package name */
    public AbstractC1039b f12243f;

    /* renamed from: g, reason: collision with root package name */
    public Boolean f12244g;

    /* renamed from: h, reason: collision with root package name */
    public Integer f12245h;

    public zznt(zzho zzhoVar) {
        super(zzhoVar);
        this.f12245h = null;
        this.f12241d = new AtomicLong(0L);
    }

    public static boolean B(Context context) {
        Preconditions.checkNotNull(context);
        return Build.VERSION.SDK_INT >= 24 ? H(context, "com.google.android.gms.measurement.AppMeasurementJobService") : H(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    public static boolean E(Bundle bundle, int i2) {
        if (bundle == null || bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i2);
        return true;
    }

    public static boolean H(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) != null) {
                if (serviceInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static boolean L(String str) {
        String str2 = (String) zzbh.f11359v0.zza(null);
        return str2.equals("*") || Arrays.asList(str2.split(",")).contains(str);
    }

    public static boolean M(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    public static boolean N(String str) {
        Preconditions.checkNotEmpty(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    public static int O(String str) {
        if ("_ldl".equals(str)) {
            return 2048;
        }
        if ("_id".equals(str)) {
            return 256;
        }
        return ("_lgclid".equals(str) || "_gbraid".equals(str)) ? 100 : 36;
    }

    public static MessageDigest P() {
        MessageDigest messageDigest;
        for (int i2 = 0; i2 < 2; i2++) {
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    public static long d(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        int i2 = 0;
        Preconditions.checkState(bArr.length > 0);
        long j7 = 0;
        for (int length = bArr.length - 1; length >= 0 && length >= bArr.length - 8; length--) {
            j7 += (bArr[length] & 255) << i2;
            i2 += 8;
        }
        return j7;
    }

    public static void i(Bundle bundle, int i2, String str, Object obj) {
        if (E(bundle, i2)) {
            bundle.putString("_ev", zza(str, 40, true));
            if (obj != null) {
                Preconditions.checkNotNull(bundle);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", String.valueOf(obj).length());
                }
            }
        }
    }

    public static void m(zzns zznsVar, String str, int i2, String str2, String str3, int i7) {
        Bundle bundle = new Bundle();
        E(bundle, i2);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i2 == 6 || i2 == 7 || i2 == 2) {
            bundle.putLong("_el", i7);
        }
        zznsVar.zza(str, "_err", bundle);
    }

    public static boolean q(Context context) {
        ActivityInfo receiverInfo;
        Preconditions.checkNotNull(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static boolean r(Intent intent) {
        String stringExtra = intent.getStringExtra("android.intent.extra.REFERRER_NAME");
        return "android-app://com.google.android.googlequicksearchbox/https/www.google.com".equals(stringExtra) || "https://www.google.com".equals(stringExtra) || "android-app://com.google.appcrawler".equals(stringExtra);
    }

    public static boolean s(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    public static boolean w(String str, String str2, String str3, String str4) {
        boolean isEmpty = TextUtils.isEmpty(str);
        boolean isEmpty2 = TextUtils.isEmpty(str2);
        if (!isEmpty && !isEmpty2) {
            Preconditions.checkNotNull(str);
            return !str.equals(str2);
        }
        if (isEmpty && isEmpty2) {
            return (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) ? !TextUtils.isEmpty(str4) : !str3.equals(str4);
        }
        if (isEmpty || !isEmpty2) {
            return TextUtils.isEmpty(str3) || !str3.equals(str4);
        }
        if (TextUtils.isEmpty(str4)) {
            return false;
        }
        return TextUtils.isEmpty(str3) || !str3.equals(str4);
    }

    public static boolean x(String str, String[] strArr) {
        Preconditions.checkNotNull(strArr);
        for (String str2 : strArr) {
            if (Objects.equals(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public static byte[] z(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(obtain, 0);
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    public final Bundle A(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object C6 = C(bundle.get(str), str);
                if (C6 == null) {
                    zzj().zzv().zza("Param value can't be null", zzi().zzb(str));
                } else {
                    k(bundle2, str, C6);
                }
            }
        }
        return bundle2;
    }

    public final Object C(Object obj, String str) {
        if ("_ev".equals(str)) {
            return h(Math.max(zze().a(null, false), 256), obj, true, true);
        }
        return h(M(str) ? Math.max(zze().a(null, false), 256) : zze().a(null, false), obj, false, true);
    }

    public final boolean D(Context context, String str) {
        Signature[] signatureArr;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo packageInfo = Wrappers.packageManager(context).getPackageInfo(str, 64);
            if (packageInfo == null || (signatureArr = packageInfo.signatures) == null || signatureArr.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e3) {
            zzj().zzg().zza("Package name not found", e3);
            return true;
        } catch (CertificateException e7) {
            zzj().zzg().zza("Error obtaining certificate", e7);
            return true;
        }
    }

    public final boolean F(String str, String str2) {
        if (str2 == null) {
            zzj().zzh().zza("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            zzj().zzh().zza("Name is required and can't be empty. Type", str);
            return false;
        }
        int codePointAt = str2.codePointAt(0);
        if (!Character.isLetter(codePointAt) && codePointAt != 95) {
            zzj().zzh().zza("Name must start with a letter or _ (underscore). Type, name", str, str2);
            return false;
        }
        int length = str2.length();
        int charCount = Character.charCount(codePointAt);
        while (charCount < length) {
            int codePointAt2 = str2.codePointAt(charCount);
            if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                zzj().zzh().zza("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            charCount += Character.charCount(codePointAt2);
        }
        return true;
    }

    public final Object G(Object obj, String str) {
        return "_ldl".equals(str) ? h(O(str), obj, true, false) : h(O(str), obj, false, false);
    }

    public final boolean I(String str, String str2) {
        if (str2 == null) {
            zzj().zzh().zza("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.length() == 0) {
            zzj().zzh().zza("Name is required and can't be empty. Type", str);
            return false;
        }
        int codePointAt = str2.codePointAt(0);
        if (!Character.isLetter(codePointAt)) {
            zzj().zzh().zza("Name must start with a letter. Type, name", str, str2);
            return false;
        }
        int length = str2.length();
        int charCount = Character.charCount(codePointAt);
        while (charCount < length) {
            int codePointAt2 = str2.codePointAt(charCount);
            if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                zzj().zzh().zza("Name must consist of letters, digits or _ (underscores). Type, name", str, str2);
                return false;
            }
            charCount += Character.charCount(codePointAt2);
        }
        return true;
    }

    public final boolean J(String str, String str2) {
        if (zzqv.zza() && zze().zza(zzbh.f11357u0) && !TextUtils.isEmpty(str2)) {
            return true;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return zze().zzn().equals(str);
    }

    public final boolean K(String str) {
        zzt();
        if (Wrappers.packageManager(zza()).checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        zzj().zzc().zza("Permission not granted", str);
        return false;
    }

    public final SecureRandom Q() {
        zzt();
        if (this.f12240c == null) {
            this.f12240c = new SecureRandom();
        }
        return this.f12240c;
    }

    public final int a(Object obj, String str) {
        return "_ldl".equals(str) ? v("user property referrer", str, O(str), obj) : v("user property", str, O(str), obj) ? 0 : 7;
    }

    public final int b(String str) {
        if (!F("event", str)) {
            return 2;
        }
        if (y("event", zzit.f11827a, zzit.f11828b, str)) {
            return !p(40, "event", str) ? 2 : 0;
        }
        return 13;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int c(java.lang.String r10, java.lang.String r11, java.lang.Object r12, android.os.Bundle r13, java.util.List r14, boolean r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznt.c(java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    public final Bundle e(Uri uri, boolean z6, boolean z7) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        if (uri != null) {
            try {
                if (uri.isHierarchical()) {
                    str = uri.getQueryParameter("utm_campaign");
                    str2 = uri.getQueryParameter("utm_source");
                    str3 = uri.getQueryParameter("utm_medium");
                    str4 = uri.getQueryParameter("gclid");
                    str5 = z7 ? uri.getQueryParameter("gbraid") : null;
                    str6 = uri.getQueryParameter("utm_id");
                    str7 = uri.getQueryParameter("dclid");
                    str8 = uri.getQueryParameter("srsltid");
                    str9 = z6 ? uri.getQueryParameter("sfmc_id") : null;
                } else {
                    str = null;
                    str2 = null;
                    str3 = null;
                    str4 = null;
                    str5 = null;
                    str6 = null;
                    str7 = null;
                    str8 = null;
                    str9 = null;
                }
                if (!TextUtils.isEmpty(str) || !TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str3) || !TextUtils.isEmpty(str4) || ((z7 && !TextUtils.isEmpty(str5)) || !TextUtils.isEmpty(str6) || !TextUtils.isEmpty(str7) || !TextUtils.isEmpty(str8) || (z6 && !TextUtils.isEmpty(str9)))) {
                    Bundle bundle = new Bundle();
                    if (TextUtils.isEmpty(str)) {
                        str10 = "sfmc_id";
                    } else {
                        str10 = "sfmc_id";
                        bundle.putString(FirebaseAnalytics.Param.CAMPAIGN, str);
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        bundle.putString(FirebaseAnalytics.Param.SOURCE, str2);
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        bundle.putString(FirebaseAnalytics.Param.MEDIUM, str3);
                    }
                    if (!TextUtils.isEmpty(str4)) {
                        bundle.putString("gclid", str4);
                    }
                    if (z7 && !TextUtils.isEmpty(str5)) {
                        bundle.putString("gbraid", str5);
                    }
                    String queryParameter = uri.getQueryParameter("utm_term");
                    if (!TextUtils.isEmpty(queryParameter)) {
                        bundle.putString(FirebaseAnalytics.Param.TERM, queryParameter);
                    }
                    String queryParameter2 = uri.getQueryParameter("utm_content");
                    if (!TextUtils.isEmpty(queryParameter2)) {
                        bundle.putString(FirebaseAnalytics.Param.CONTENT, queryParameter2);
                    }
                    String queryParameter3 = uri.getQueryParameter(FirebaseAnalytics.Param.ACLID);
                    if (!TextUtils.isEmpty(queryParameter3)) {
                        bundle.putString(FirebaseAnalytics.Param.ACLID, queryParameter3);
                    }
                    String queryParameter4 = uri.getQueryParameter(FirebaseAnalytics.Param.CP1);
                    if (!TextUtils.isEmpty(queryParameter4)) {
                        bundle.putString(FirebaseAnalytics.Param.CP1, queryParameter4);
                    }
                    String queryParameter5 = uri.getQueryParameter("anid");
                    if (!TextUtils.isEmpty(queryParameter5)) {
                        bundle.putString("anid", queryParameter5);
                    }
                    if (!TextUtils.isEmpty(str6)) {
                        bundle.putString(FirebaseAnalytics.Param.CAMPAIGN_ID, str6);
                    }
                    if (!TextUtils.isEmpty(str7)) {
                        bundle.putString("dclid", str7);
                    }
                    String queryParameter6 = uri.getQueryParameter("utm_source_platform");
                    if (!TextUtils.isEmpty(queryParameter6)) {
                        bundle.putString(FirebaseAnalytics.Param.SOURCE_PLATFORM, queryParameter6);
                    }
                    String queryParameter7 = uri.getQueryParameter("utm_creative_format");
                    if (!TextUtils.isEmpty(queryParameter7)) {
                        bundle.putString(FirebaseAnalytics.Param.CREATIVE_FORMAT, queryParameter7);
                    }
                    String queryParameter8 = uri.getQueryParameter("utm_marketing_tactic");
                    if (!TextUtils.isEmpty(queryParameter8)) {
                        bundle.putString(FirebaseAnalytics.Param.MARKETING_TACTIC, queryParameter8);
                    }
                    if (!TextUtils.isEmpty(str8)) {
                        bundle.putString("srsltid", str8);
                    }
                    if (z6 && !TextUtils.isEmpty(str9)) {
                        bundle.putString(str10, str9);
                    }
                    return bundle;
                }
            } catch (UnsupportedOperationException e3) {
                zzj().zzu().zza("Install referrer url isn't a hierarchical URI", e3);
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x007d, code lost:
    
        if (r0.p(40, "event param", r2) == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0063, code lost:
    
        if (r0.p(40, "event param", r2) == false) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0080  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle f(java.lang.String r18, android.os.Bundle r19, java.util.List r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznt.f(java.lang.String, android.os.Bundle, java.util.List, boolean):android.os.Bundle");
    }

    public final zzbf g(String str, Bundle bundle, String str2, long j7, boolean z6) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (b(str) != 0) {
            zzj().zzg().zza("Invalid conditional property event name", zzi().zzc(str));
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str2);
        Bundle f3 = f(str, bundle2, CollectionUtils.listOf("_o"), true);
        if (z6) {
            f3 = A(f3);
        }
        Preconditions.checkNotNull(f3);
        return new zzbf(str, new zzba(f3), str2, j7);
    }

    public final Object h(int i2, Object obj, boolean z6, boolean z7) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Long) {
            return obj;
        }
        if (obj instanceof Double) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(((Boolean) obj).booleanValue() ? 1L : 0L);
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            return zza(String.valueOf(obj), i2, z6);
        }
        if (!z7) {
            return null;
        }
        if (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[])) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Parcelable parcelable : (Parcelable[]) obj) {
            if (parcelable instanceof Bundle) {
                Bundle A6 = A((Bundle) parcelable);
                if (!A6.isEmpty()) {
                    arrayList.add(A6);
                }
            }
        }
        return arrayList.toArray(new Bundle[arrayList.size()]);
    }

    public final void j(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                zzq().k(bundle, str, bundle2.get(str));
            }
        }
    }

    public final void k(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
            return;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
        } else if (str != null) {
            zzj().zzv().zza("Not putting event parameter. Invalid value type. name, type", zzi().zzb(str), obj != null ? obj.getClass().getSimpleName() : null);
        }
    }

    public final void l(zzgf zzgfVar, int i2) {
        Iterator it = new TreeSet(zzgfVar.f11580d.keySet()).iterator();
        int i7 = 0;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (N(str) && (i7 = i7 + 1) > i2) {
                String g7 = i.g(i2, "Event can't contain more than ", " params");
                zzgd zzh = zzj().zzh();
                String zza = zzi().zza(zzgfVar.f11577a);
                zzfw zzi = zzi();
                Bundle bundle = zzgfVar.f11580d;
                zzh.zza(g7, zza, zzi.zza(bundle));
                E(bundle, 5);
                bundle.remove(str);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x0098, code lost:
    
        if (p(40, "event param", r2) == false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x007e, code lost:
    
        if (p(40, "event param", r2) == false) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x009f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x009b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n(java.lang.String r18, java.lang.String r19, android.os.Bundle r20, java.util.List r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 403
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznt.n(java.lang.String, java.lang.String, android.os.Bundle, java.util.List, boolean):void");
    }

    public final void o(Parcelable[] parcelableArr, int i2, boolean z6) {
        Preconditions.checkNotNull(parcelableArr);
        for (Parcelable parcelable : parcelableArr) {
            Bundle bundle = (Bundle) parcelable;
            Iterator it = new TreeSet(bundle.keySet()).iterator();
            int i7 = 0;
            while (it.hasNext()) {
                String str = (String) it.next();
                if (N(str) && !x(str, zzis.f11826d) && (i7 = i7 + 1) > i2) {
                    if (z6) {
                        zzj().zzh().zza(i.g(i2, "Param can't contain more than ", " item-scoped custom parameters"), zzi().zzb(str), zzi().zza(bundle));
                        E(bundle, 28);
                    } else {
                        zzj().zzh().zza("Param cannot contain item-scoped custom parameters", zzi().zzb(str), zzi().zza(bundle));
                        E(bundle, 23);
                    }
                    bundle.remove(str);
                }
            }
        }
    }

    public final boolean p(int i2, String str, String str2) {
        if (str2 == null) {
            zzj().zzh().zza("Name is required and can't be null. Type", str);
            return false;
        }
        if (str2.codePointCount(0, str2.length()) <= i2) {
            return true;
        }
        zzj().zzh().zza("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i2), str2);
        return false;
    }

    public final boolean t(String str, double d7) {
        try {
            SharedPreferences.Editor edit = zza().getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
            edit.putString("deeplink", str);
            edit.putLong("timestamp", Double.doubleToRawLongBits(d7));
            return edit.commit();
        } catch (RuntimeException e3) {
            zzj().zzg().zza("Failed to persist Deferred Deep Link. exception", e3);
            return false;
        }
    }

    public final boolean u(String str, String str2) {
        boolean isEmpty = TextUtils.isEmpty(str);
        zzho zzhoVar = this.f11804a;
        if (!isEmpty) {
            Preconditions.checkNotNull(str);
            if (str.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$")) {
                return true;
            }
            if (zzhoVar.zzae()) {
                zzj().zzh().zza("Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id", zzgb.zza(str));
                return false;
            }
        } else {
            if (!TextUtils.isEmpty(str2)) {
                Preconditions.checkNotNull(str2);
                if (str2.matches("^(1:\\d+:android:[a-f0-9]+|ca-app-pub-.*)$")) {
                    return true;
                }
                zzj().zzh().zza("Invalid admob_app_id. Analytics disabled.", zzgb.zza(str2));
                return false;
            }
            if (zzhoVar.zzae()) {
                zzj().zzh().zza("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            }
        }
        return false;
    }

    public final boolean v(String str, String str2, int i2, Object obj) {
        if (obj == null || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Boolean) || (obj instanceof Double)) {
            return true;
        }
        if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
            return false;
        }
        String valueOf = String.valueOf(obj);
        if (valueOf.codePointCount(0, valueOf.length()) > i2) {
            zzj().zzv().zza("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(valueOf.length()));
            return false;
        }
        return true;
    }

    public final boolean y(String str, String[] strArr, String[] strArr2, String str2) {
        if (str2 == null) {
            zzj().zzh().zza("Name is required and can't be null. Type", str);
            return false;
        }
        Preconditions.checkNotNull(str2);
        String[] strArr3 = f12238i;
        for (int i2 = 0; i2 < 3; i2++) {
            if (str2.startsWith(strArr3[i2])) {
                zzj().zzh().zza("Name starts with reserved prefix. Type, name", str, str2);
                return false;
            }
        }
        if (strArr == null || !x(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && x(str2, strArr2)) {
            return true;
        }
        zzj().zzh().zza("Name is reserved. Type, name", str, str2);
        return false;
    }

    public final int zza(int i2) {
        return GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(zza(), 12451000);
    }

    @Override // com.google.android.gms.measurement.internal.zzil
    public final void zzaa() {
        zzt();
        SecureRandom secureRandom = new SecureRandom();
        long nextLong = secureRandom.nextLong();
        if (nextLong == 0) {
            nextLong = secureRandom.nextLong();
            if (nextLong == 0) {
                zzj().zzu().zza("Utils falling back to Random for random id");
            }
        }
        this.f12241d.set(nextLong);
    }

    public final int zzb(String str) {
        if (!F("user property", str)) {
            return 6;
        }
        if (y("user property", zziv.f11831a, null, str)) {
            return !p(24, "user property", str) ? 6 : 0;
        }
        return 15;
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzad zzd() {
        return super.zzd();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzae zze() {
        return super.zze();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzaz zzf() {
        return super.zzf();
    }

    public final int zzg() {
        if (this.f12245h == null) {
            this.f12245h = Integer.valueOf(GoogleApiAvailabilityLight.getInstance().getApkVersion(zza()) / 1000);
        }
        return this.f12245h.intValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00f2 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzh() {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznt.zzh():long");
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzfw zzi() {
        return super.zzi();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzgb zzj() {
        return super.zzj();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zzgm zzk() {
        return super.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ zzhh zzl() {
        return super.zzl();
    }

    public final long zzm() {
        long andIncrement;
        long j7;
        if (this.f12241d.get() != 0) {
            synchronized (this.f12241d) {
                this.f12241d.compareAndSet(-1L, 1L);
                andIncrement = this.f12241d.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (this.f12241d) {
            long nextLong = new Random(System.nanoTime() ^ zzb().currentTimeMillis()).nextLong();
            int i2 = this.f12242e + 1;
            this.f12242e = i2;
            j7 = nextLong + i2;
        }
        return j7;
    }

    @Override // com.google.android.gms.measurement.internal.zzil
    public final boolean zzo() {
        return true;
    }

    public final String zzp() {
        byte[] bArr = new byte[16];
        Q().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ zznt zzq() {
        return super.zzq();
    }

    @Override // com.google.android.gms.measurement.internal.zzim
    public final /* bridge */ /* synthetic */ void zzt() {
        super.zzt();
    }

    public final boolean zzx() {
        try {
            zza().getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static boolean zzj(String str) {
        return !f12239j[0].equals(str);
    }

    public final boolean zzi(String str) {
        List<ResolveInfo> queryIntentActivities;
        return (TextUtils.isEmpty(str) || (queryIntentActivities = zza().getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(str)), 0)) == null || queryIntentActivities.isEmpty()) ? false : true;
    }

    public static long zza(zzba zzbaVar) {
        long j7 = 0;
        if (zzbaVar == null) {
            return 0L;
        }
        Iterator<String> it = zzbaVar.iterator();
        while (it.hasNext()) {
            if (zzbaVar.f11244b.get(it.next()) instanceof Parcelable[]) {
                j7 += ((Parcelable[]) r3).length;
            }
        }
        return j7;
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Clock zzb() {
        return super.zzb();
    }

    public static ArrayList<Bundle> zzb(List<zzac> list) {
        if (list == null) {
            return new ArrayList<>(0);
        }
        ArrayList<Bundle> arrayList = new ArrayList<>(list.size());
        for (zzac zzacVar : list) {
            Bundle bundle = new Bundle();
            bundle.putString("app_id", zzacVar.f11164b);
            bundle.putString(FirebaseAnalytics.Param.ORIGIN, zzacVar.f11165e);
            bundle.putLong("creation_timestamp", zzacVar.f11167j);
            bundle.putString("name", zzacVar.f11166f.f12227e);
            zzin.zza(bundle, Preconditions.checkNotNull(zzacVar.f11166f.zza()));
            bundle.putBoolean("active", zzacVar.f11168m);
            String str = zzacVar.f11169n;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            zzbf zzbfVar = zzacVar.f11170p;
            if (zzbfVar != null) {
                bundle.putString("timed_out_event_name", zzbfVar.f11257b);
                zzba zzbaVar = zzbfVar.f11258e;
                if (zzbaVar != null) {
                    bundle.putBundle("timed_out_event_params", zzbaVar.zzb());
                }
            }
            bundle.putLong("trigger_timeout", zzacVar.f11171q);
            zzbf zzbfVar2 = zzacVar.f11172r;
            if (zzbfVar2 != null) {
                bundle.putString("triggered_event_name", zzbfVar2.f11257b);
                zzba zzbaVar2 = zzbfVar2.f11258e;
                if (zzbaVar2 != null) {
                    bundle.putBundle("triggered_event_params", zzbaVar2.zzb());
                }
            }
            bundle.putLong("triggered_timestamp", zzacVar.f11166f.f12228f);
            bundle.putLong("time_to_live", zzacVar.f11173s);
            zzbf zzbfVar3 = zzacVar.f11174t;
            if (zzbfVar3 != null) {
                bundle.putString("expired_event_name", zzbfVar3.f11257b);
                zzba zzbaVar3 = zzbfVar3.f11258e;
                if (zzbaVar3 != null) {
                    bundle.putBundle("expired_event_params", zzbaVar3.zzb());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    public static long zza(long j7, long j8) {
        return ((j8 * 60000) + j7) / DateUtils.MILLIS_PER_DAY;
    }

    @Override // com.google.android.gms.measurement.internal.zzim, com.google.android.gms.measurement.internal.zzio
    public final /* bridge */ /* synthetic */ Context zza() {
        return super.zza();
    }

    public static Bundle zza(List<zzno> list) {
        Bundle bundle = new Bundle();
        if (list != null) {
            for (zzno zznoVar : list) {
                String str = zznoVar.f12230m;
                String str2 = zznoVar.f12227e;
                if (str != null) {
                    bundle.putString(str2, str);
                } else {
                    Long l7 = zznoVar.f12229j;
                    if (l7 != null) {
                        bundle.putLong(str2, l7.longValue());
                    } else {
                        Double d7 = zznoVar.f12232p;
                        if (d7 != null) {
                            bundle.putDouble(str2, d7.doubleValue());
                        }
                    }
                }
            }
        }
        return bundle;
    }

    public static Bundle zza(Bundle bundle) {
        if (bundle == null) {
            return new Bundle();
        }
        Bundle bundle2 = new Bundle(bundle);
        for (String str : bundle2.keySet()) {
            Object obj = bundle2.get(str);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str, new Bundle((Bundle) obj));
            } else {
                int i2 = 0;
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    while (i2 < parcelableArr.length) {
                        if (parcelableArr[i2] instanceof Bundle) {
                            parcelableArr[i2] = new Bundle((Bundle) parcelableArr[i2]);
                        }
                        i2++;
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    while (i2 < list.size()) {
                        Object obj2 = list.get(i2);
                        if (obj2 instanceof Bundle) {
                            list.set(i2, new Bundle((Bundle) obj2));
                        }
                        i2++;
                    }
                }
            }
        }
        return bundle2;
    }

    public static String zza(String str, int i2, boolean z6) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i2) {
            return str;
        }
        if (z6) {
            return i.B(str.substring(0, str.offsetByCodePoints(0, i2)), "...");
        }
        return null;
    }

    public final URL zza(long j7, String str, String str2, long j8, String str3) {
        try {
            Preconditions.checkNotEmpty(str2);
            Preconditions.checkNotEmpty(str);
            String str4 = "https://www.googleadservices.com/pagead/conversion/app/deeplink?id_type=adid&sdk_version=" + ("v" + j7 + "." + zzg()) + "&rdid=" + str2 + "&bundleid=" + str + "&retry=" + j8;
            if (str.equals(zze().zzo())) {
                str4 = str4.concat("&ddl_test=1");
            }
            if (!str3.isEmpty()) {
                if (str3.charAt(0) != '&') {
                    str4 = str4.concat("&");
                }
                str4 = str4.concat(str3);
            }
            return new URL(str4);
        } catch (IllegalArgumentException e3) {
            e = e3;
            zzj().zzg().zza("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        } catch (MalformedURLException e7) {
            e = e7;
            zzj().zzg().zza("Failed to create BOW URL for Deferred Deep Link. exception", e.getMessage());
            return null;
        }
    }

    public final void zza(Bundle bundle, long j7) {
        long j8 = bundle.getLong("_et");
        if (j8 != 0) {
            zzj().zzu().zza("Params already contained engagement", Long.valueOf(j8));
        }
        bundle.putLong("_et", j7 + j8);
    }

    public static void zza(zzks zzksVar, Bundle bundle, boolean z6) {
        if (bundle == null || zzksVar == null || (bundle.containsKey("_sc") && !z6)) {
            if (bundle != null && zzksVar == null && z6) {
                bundle.remove("_sn");
                bundle.remove("_sc");
                bundle.remove("_si");
                return;
            }
            return;
        }
        String str = zzksVar.f11966a;
        if (str != null) {
            bundle.putString("_sn", str);
        } else {
            bundle.remove("_sn");
        }
        String str2 = zzksVar.f11967b;
        if (str2 != null) {
            bundle.putString("_sc", str2);
        } else {
            bundle.remove("_sc");
        }
        bundle.putLong("_si", zzksVar.f11968c);
    }

    public static void zza(zzns zznsVar, int i2, String str, String str2, int i7) {
        m(zznsVar, null, i2, str, str2, i7);
    }

    public final void zza(com.google.android.gms.internal.measurement.zzdi zzdiVar, boolean z6) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z6);
        try {
            zzdiVar.zza(bundle);
        } catch (RemoteException e3) {
            this.f11804a.zzj().zzu().zza("Error returning boolean value to wrapper", e3);
        }
    }

    public final void zza(com.google.android.gms.internal.measurement.zzdi zzdiVar, ArrayList<Bundle> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            zzdiVar.zza(bundle);
        } catch (RemoteException e3) {
            this.f11804a.zzj().zzu().zza("Error returning bundle list to wrapper", e3);
        }
    }

    public final void zza(com.google.android.gms.internal.measurement.zzdi zzdiVar, Bundle bundle) {
        try {
            zzdiVar.zza(bundle);
        } catch (RemoteException e3) {
            this.f11804a.zzj().zzu().zza("Error returning bundle value to wrapper", e3);
        }
    }

    public final void zza(com.google.android.gms.internal.measurement.zzdi zzdiVar, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            zzdiVar.zza(bundle);
        } catch (RemoteException e3) {
            this.f11804a.zzj().zzu().zza("Error returning byte array to wrapper", e3);
        }
    }

    public final void zza(com.google.android.gms.internal.measurement.zzdi zzdiVar, int i2) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i2);
        try {
            zzdiVar.zza(bundle);
        } catch (RemoteException e3) {
            this.f11804a.zzj().zzu().zza("Error returning int value to wrapper", e3);
        }
    }

    public final void zza(com.google.android.gms.internal.measurement.zzdi zzdiVar, long j7) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j7);
        try {
            zzdiVar.zza(bundle);
        } catch (RemoteException e3) {
            this.f11804a.zzj().zzu().zza("Error returning long value to wrapper", e3);
        }
    }

    public final void zza(com.google.android.gms.internal.measurement.zzdi zzdiVar, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            zzdiVar.zza(bundle);
        } catch (RemoteException e3) {
            this.f11804a.zzj().zzu().zza("Error returning string value to wrapper", e3);
        }
    }

    public final boolean zza(int i2, boolean z6) {
        Boolean bool = this.f11804a.zzr().f12002e;
        if (zzg() < i2 / 1000) {
            return (bool == null || bool.booleanValue()) ? false : true;
        }
        return true;
    }
}
