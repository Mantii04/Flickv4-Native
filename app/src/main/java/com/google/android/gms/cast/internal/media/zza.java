package com.google.android.gms.cast.internal.media;

import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.images.WebImage;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class zza {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f10337a = new Logger("MetadataUtils");

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f10338b;

    /* renamed from: c, reason: collision with root package name */
    public static final String f10339c;

    static {
        String[] strArr = {"Z", "+hh", "+hhmm", "+hh:mm"};
        f10338b = strArr;
        f10339c = "yyyyMMdd'T'HHmmss".concat(String.valueOf(strArr[0]));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Calendar zzb(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.internal.media.zza.zzb(java.lang.String):java.util.Calendar");
    }

    public static JSONArray zzc(List list) {
        list.getClass();
        JSONArray jSONArray = new JSONArray();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(((WebImage) it.next()).toJson());
        }
        return jSONArray;
    }

    public static void zzd(List list, JSONArray jSONArray) {
        try {
            list.clear();
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                try {
                    list.add(new WebImage(jSONArray.getJSONObject(i2)));
                } catch (IllegalArgumentException unused) {
                }
            }
        } catch (JSONException unused2) {
        }
    }
}
