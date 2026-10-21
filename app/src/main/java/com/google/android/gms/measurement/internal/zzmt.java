package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzmt {

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f12128b = {"GoogleConsent", "gdprApplies", "EnableAdvertiserConsentMode", "PolicyVersion", "PurposeConsents", "CmpSdkID"};

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f12129a;

    public zzmt(HashMap hashMap) {
        HashMap hashMap2 = new HashMap();
        this.f12129a = hashMap2;
        hashMap2.putAll(hashMap);
    }

    public final String a() {
        StringBuilder sb = new StringBuilder();
        String[] strArr = f12128b;
        for (int i2 = 0; i2 < 6; i2++) {
            String str = strArr[i2];
            HashMap hashMap = this.f12129a;
            if (hashMap.containsKey(str)) {
                if (sb.length() > 0) {
                    sb.append(";");
                }
                sb.append(str);
                sb.append("=");
                sb.append((String) hashMap.get(str));
            }
        }
        return sb.toString();
    }

    public final int b() {
        try {
            String str = (String) this.f12129a.get("PolicyVersion");
            if (TextUtils.isEmpty(str)) {
                return -1;
            }
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzmt) {
            return a().equalsIgnoreCase(((zzmt) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return a();
    }

    public final Bundle zza() {
        HashMap hashMap = this.f12129a;
        if (!"1".equals(hashMap.get("GoogleConsent")) || !"1".equals(hashMap.get("gdprApplies")) || !"1".equals(hashMap.get("EnableAdvertiserConsentMode"))) {
            return Bundle.EMPTY;
        }
        int b7 = b();
        if (b7 < 0) {
            return Bundle.EMPTY;
        }
        String str = (String) hashMap.get("PurposeConsents");
        if (TextUtils.isEmpty(str)) {
            return Bundle.EMPTY;
        }
        Bundle bundle = new Bundle();
        String str2 = "denied";
        if (str.length() > 0) {
            bundle.putString("ad_storage", str.charAt(0) == '1' ? "granted" : "denied");
        }
        if (str.length() > 3) {
            bundle.putString("ad_personalization", (str.charAt(2) == '1' && str.charAt(3) == '1') ? "granted" : "denied");
        }
        if (str.length() > 6 && b7 >= 4) {
            if (str.charAt(0) == '1' && str.charAt(6) == '1') {
                str2 = "granted";
            }
            bundle.putString("ad_user_data", str2);
        }
        return bundle;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0066  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zzb() {
        /*
            r7 = this;
            java.util.HashMap r0 = r7.f12129a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "1"
            r1.<init>(r2)
            java.lang.String r3 = "CmpSdkID"
            java.lang.Object r3 = r0.get(r3)     // Catch: java.lang.NumberFormatException -> L1c
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.NumberFormatException -> L1c
            boolean r4 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.NumberFormatException -> L1c
            if (r4 != 0) goto L1c
            int r3 = java.lang.Integer.parseInt(r3)     // Catch: java.lang.NumberFormatException -> L1c
            goto L1d
        L1c:
            r3 = -1
        L1d:
            r4 = 63
            java.lang.String r5 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_"
            if (r3 < 0) goto L3a
            r6 = 4095(0xfff, float:5.738E-42)
            if (r3 > r6) goto L3a
            int r6 = r3 >> 6
            r6 = r6 & r4
            char r6 = r5.charAt(r6)
            r1.append(r6)
            r3 = r3 & r4
            char r3 = r5.charAt(r3)
            r1.append(r3)
            goto L3f
        L3a:
            java.lang.String r3 = "00"
            r1.append(r3)
        L3f:
            int r3 = r7.b()
            if (r3 < 0) goto L4f
            if (r3 > r4) goto L4f
            char r3 = r5.charAt(r3)
            r1.append(r3)
            goto L54
        L4f:
            java.lang.String r3 = "0"
            r1.append(r3)
        L54:
            r3 = 1
            com.google.android.gms.common.internal.Preconditions.checkArgument(r3)
            java.lang.String r3 = "gdprApplies"
            java.lang.Object r3 = r0.get(r3)
            boolean r3 = r2.equals(r3)
            if (r3 == 0) goto L66
            r3 = 2
            goto L67
        L66:
            r3 = 0
        L67:
            r4 = r3 | 4
            java.lang.String r6 = "EnableAdvertiserConsentMode"
            java.lang.Object r0 = r0.get(r6)
            boolean r0 = r2.equals(r0)
            if (r0 == 0) goto L77
            r4 = r3 | 12
        L77:
            char r0 = r5.charAt(r4)
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzmt.zzb():java.lang.String");
    }

    public static zzmt zza(SharedPreferences sharedPreferences) {
        String str;
        int i2;
        int i7;
        int i8;
        String str2;
        int i9;
        HashMap hashMap = new HashMap();
        try {
            str = sharedPreferences.getString("IABTCF_VendorConsents", "\u0000");
        } catch (ClassCastException unused) {
            str = "\u0000";
        }
        if (!"\u0000".equals(str) && str.length() > 754) {
            hashMap.put("GoogleConsent", String.valueOf(str.charAt(754)));
        }
        try {
            i2 = sharedPreferences.getInt("IABTCF_gdprApplies", -1);
        } catch (ClassCastException unused2) {
            i2 = -1;
        }
        if (i2 != -1) {
            hashMap.put("gdprApplies", String.valueOf(i2));
        }
        try {
            i7 = sharedPreferences.getInt("IABTCF_EnableAdvertiserConsentMode", -1);
        } catch (ClassCastException unused3) {
            i7 = -1;
        }
        if (i7 != -1) {
            hashMap.put("EnableAdvertiserConsentMode", String.valueOf(i7));
        }
        try {
            i8 = sharedPreferences.getInt("IABTCF_PolicyVersion", -1);
        } catch (ClassCastException unused4) {
            i8 = -1;
        }
        if (i8 != -1) {
            hashMap.put("PolicyVersion", String.valueOf(i8));
        }
        try {
            str2 = sharedPreferences.getString("IABTCF_PurposeConsents", "\u0000");
        } catch (ClassCastException unused5) {
            str2 = "\u0000";
        }
        if (!"\u0000".equals(str2)) {
            hashMap.put("PurposeConsents", str2);
        }
        try {
            i9 = sharedPreferences.getInt("IABTCF_CmpSdkID", -1);
        } catch (ClassCastException unused6) {
            i9 = -1;
        }
        if (i9 != -1) {
            hashMap.put("CmpSdkID", String.valueOf(i9));
        }
        return new zzmt(hashMap);
    }

    public static String zza(String str, boolean z6) {
        if (!z6 || str.length() <= 4) {
            return str;
        }
        char[] charArray = str.toCharArray();
        int i2 = 1;
        while (true) {
            if (i2 >= 64) {
                i2 = 0;
                break;
            }
            if (charArray[4] == "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i2)) {
                break;
            }
            i2++;
        }
        charArray[4] = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(1 | i2);
        return String.valueOf(charArray);
    }
}
