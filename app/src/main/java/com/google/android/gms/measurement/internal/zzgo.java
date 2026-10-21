package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Bundle;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzpy;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class zzgo {

    /* renamed from: a, reason: collision with root package name */
    public final String f11623a;

    /* renamed from: b, reason: collision with root package name */
    public final Bundle f11624b;

    /* renamed from: c, reason: collision with root package name */
    public Bundle f11625c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ zzgm f11626d;

    public zzgo(zzgm zzgmVar, String str, Bundle bundle) {
        this.f11626d = zzgmVar;
        Preconditions.checkNotEmpty(str);
        this.f11623a = str;
        this.f11624b = new Bundle();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x011a A[Catch: NumberFormatException | JSONException -> 0x0122, NumberFormatException | JSONException -> 0x0122, TRY_LEAVE, TryCatch #0 {NumberFormatException | JSONException -> 0x0122, blocks: (B:13:0x0025, B:31:0x0091, B:31:0x0091, B:34:0x00a0, B:34:0x00a0, B:36:0x00a6, B:36:0x00a6, B:38:0x00b2, B:38:0x00b2, B:40:0x00c4, B:40:0x00c4, B:42:0x00cd, B:42:0x00cd, B:46:0x00d1, B:46:0x00d1, B:48:0x00d7, B:48:0x00d7, B:50:0x00e3, B:50:0x00e3, B:52:0x00f5, B:52:0x00f5, B:54:0x00fe, B:54:0x00fe, B:58:0x0102, B:58:0x0102, B:60:0x010e, B:60:0x010e, B:62:0x011a, B:62:0x011a, B:64:0x0052, B:67:0x005c, B:70:0x0066, B:73:0x0070, B:76:0x007a), top: B:12:0x0025, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.os.Bundle zza() {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgo.zza():android.os.Bundle");
    }

    public final void zza(Bundle bundle) {
        zzgm zzgmVar;
        JSONObject jSONObject;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        zzgm zzgmVar2 = this.f11626d;
        SharedPreferences.Editor edit = zzgmVar2.zzg().edit();
        int size = bundle2.size();
        String str = this.f11623a;
        if (size == 0) {
            edit.remove(str);
        } else {
            JSONArray jSONArray = new JSONArray();
            for (String str2 : bundle2.keySet()) {
                Object obj = bundle2.get(str2);
                if (obj != null) {
                    try {
                        jSONObject = new JSONObject();
                        jSONObject.put("n", str2);
                    } catch (JSONException e3) {
                        e = e3;
                        zzgmVar = zzgmVar2;
                    }
                    if (zzpy.zza()) {
                        zzgmVar = zzgmVar2;
                        try {
                        } catch (JSONException e7) {
                            e = e7;
                            zzgmVar.zzj().zzg().zza("Cannot serialize bundle value to SharedPreferences", e);
                            zzgmVar2 = zzgmVar;
                        }
                        if (zzgmVar2.zze().zza(zzbh.f11273F0)) {
                            if (obj instanceof String) {
                                jSONObject.put("v", String.valueOf(obj));
                                jSONObject.put("t", CmcdData.STREAMING_FORMAT_SS);
                            } else if (obj instanceof Long) {
                                jSONObject.put("v", String.valueOf(obj));
                                jSONObject.put("t", CmcdData.STREAM_TYPE_LIVE);
                            } else if (obj instanceof int[]) {
                                jSONObject.put("v", Arrays.toString((int[]) obj));
                                jSONObject.put("t", "ia");
                            } else if (obj instanceof long[]) {
                                jSONObject.put("v", Arrays.toString((long[]) obj));
                                jSONObject.put("t", "la");
                            } else if (obj instanceof Double) {
                                jSONObject.put("v", String.valueOf(obj));
                                jSONObject.put("t", "d");
                            } else {
                                zzgmVar.zzj().zzg().zza("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                                zzgmVar2 = zzgmVar;
                            }
                            jSONArray.put(jSONObject);
                            zzgmVar2 = zzgmVar;
                        }
                    } else {
                        zzgmVar = zzgmVar2;
                    }
                    jSONObject.put("v", String.valueOf(obj));
                    if (obj instanceof String) {
                        jSONObject.put("t", CmcdData.STREAMING_FORMAT_SS);
                    } else if (obj instanceof Long) {
                        jSONObject.put("t", CmcdData.STREAM_TYPE_LIVE);
                    } else if (obj instanceof Double) {
                        jSONObject.put("t", "d");
                    } else {
                        zzgmVar.zzj().zzg().zza("Cannot serialize bundle value to SharedPreferences. Type", obj.getClass());
                        zzgmVar2 = zzgmVar;
                    }
                    jSONArray.put(jSONObject);
                    zzgmVar2 = zzgmVar;
                }
            }
            edit.putString(str, jSONArray.toString());
        }
        edit.apply();
        this.f11625c = bundle2;
    }
}
