package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class AdBreakClipInfo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AdBreakClipInfo> CREATOR = new zza();

    /* renamed from: b, reason: collision with root package name */
    public final String f9567b;

    /* renamed from: e, reason: collision with root package name */
    public final String f9568e;

    /* renamed from: f, reason: collision with root package name */
    public final long f9569f;

    /* renamed from: j, reason: collision with root package name */
    public final String f9570j;

    /* renamed from: m, reason: collision with root package name */
    public final String f9571m;

    /* renamed from: n, reason: collision with root package name */
    public final String f9572n;

    /* renamed from: p, reason: collision with root package name */
    public final String f9573p;

    /* renamed from: q, reason: collision with root package name */
    public final String f9574q;

    /* renamed from: r, reason: collision with root package name */
    public final String f9575r;

    /* renamed from: s, reason: collision with root package name */
    public final long f9576s;

    /* renamed from: t, reason: collision with root package name */
    public final String f9577t;

    /* renamed from: u, reason: collision with root package name */
    public final VastAdsRequest f9578u;

    /* renamed from: v, reason: collision with root package name */
    public final JSONObject f9579v;

    public static class Builder {
    }

    public AdBreakClipInfo(String str, String str2, long j7, String str3, String str4, String str5, String str6, String str7, String str8, long j8, String str9, VastAdsRequest vastAdsRequest) {
        this.f9567b = str;
        this.f9568e = str2;
        this.f9569f = j7;
        this.f9570j = str3;
        this.f9571m = str4;
        this.f9572n = str5;
        this.f9573p = str6;
        this.f9574q = str7;
        this.f9575r = str8;
        this.f9576s = j8;
        this.f9577t = str9;
        this.f9578u = vastAdsRequest;
        if (TextUtils.isEmpty(str6)) {
            this.f9579v = new JSONObject();
            return;
        }
        try {
            this.f9579v = new JSONObject(str6);
        } catch (JSONException e3) {
            Locale locale = Locale.ROOT;
            Log.w("AdBreakClipInfo", "Error creating AdBreakClipInfo: " + e3.getMessage());
            this.f9573p = null;
            this.f9579v = new JSONObject();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakClipInfo)) {
            return false;
        }
        AdBreakClipInfo adBreakClipInfo = (AdBreakClipInfo) obj;
        return CastUtils.zze(this.f9567b, adBreakClipInfo.f9567b) && CastUtils.zze(this.f9568e, adBreakClipInfo.f9568e) && this.f9569f == adBreakClipInfo.f9569f && CastUtils.zze(this.f9570j, adBreakClipInfo.f9570j) && CastUtils.zze(this.f9571m, adBreakClipInfo.f9571m) && CastUtils.zze(this.f9572n, adBreakClipInfo.f9572n) && CastUtils.zze(this.f9573p, adBreakClipInfo.f9573p) && CastUtils.zze(this.f9574q, adBreakClipInfo.f9574q) && CastUtils.zze(this.f9575r, adBreakClipInfo.f9575r) && this.f9576s == adBreakClipInfo.f9576s && CastUtils.zze(this.f9577t, adBreakClipInfo.f9577t) && CastUtils.zze(this.f9578u, adBreakClipInfo.f9578u);
    }

    public String getClickThroughUrl() {
        return this.f9572n;
    }

    public String getContentId() {
        return this.f9574q;
    }

    public String getContentUrl() {
        return this.f9570j;
    }

    public long getDurationInMs() {
        return this.f9569f;
    }

    public String getHlsSegmentFormat() {
        return this.f9577t;
    }

    public String getId() {
        return this.f9567b;
    }

    public String getImageUrl() {
        return this.f9575r;
    }

    public String getMimeType() {
        return this.f9571m;
    }

    public String getTitle() {
        return this.f9568e;
    }

    public VastAdsRequest getVastAdsRequest() {
        return this.f9578u;
    }

    public long getWhenSkippableInMs() {
        return this.f9576s;
    }

    public int hashCode() {
        return Objects.hashCode(this.f9567b, this.f9568e, Long.valueOf(this.f9569f), this.f9570j, this.f9571m, this.f9572n, this.f9573p, this.f9574q, this.f9575r, Long.valueOf(this.f9576s), this.f9577t, this.f9578u);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getId(), false);
        SafeParcelWriter.writeString(parcel, 3, getTitle(), false);
        SafeParcelWriter.writeLong(parcel, 4, getDurationInMs());
        SafeParcelWriter.writeString(parcel, 5, getContentUrl(), false);
        SafeParcelWriter.writeString(parcel, 6, getMimeType(), false);
        SafeParcelWriter.writeString(parcel, 7, getClickThroughUrl(), false);
        SafeParcelWriter.writeString(parcel, 8, this.f9573p, false);
        SafeParcelWriter.writeString(parcel, 9, getContentId(), false);
        SafeParcelWriter.writeString(parcel, 10, getImageUrl(), false);
        SafeParcelWriter.writeLong(parcel, 11, getWhenSkippableInMs());
        SafeParcelWriter.writeString(parcel, 12, getHlsSegmentFormat(), false);
        SafeParcelWriter.writeParcelable(parcel, 13, getVastAdsRequest(), i2, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final JSONObject zza() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f9567b);
            jSONObject.put("duration", CastUtils.millisecToSec(this.f9569f));
            long j7 = this.f9576s;
            if (j7 != -1) {
                jSONObject.put("whenSkippable", CastUtils.millisecToSec(j7));
            }
            String str = this.f9574q;
            if (str != null) {
                jSONObject.put("contentId", str);
            }
            String str2 = this.f9571m;
            if (str2 != null) {
                jSONObject.put("contentType", str2);
            }
            String str3 = this.f9568e;
            if (str3 != null) {
                jSONObject.put("title", str3);
            }
            String str4 = this.f9570j;
            if (str4 != null) {
                jSONObject.put("contentUrl", str4);
            }
            String str5 = this.f9572n;
            if (str5 != null) {
                jSONObject.put("clickThroughUrl", str5);
            }
            JSONObject jSONObject2 = this.f9579v;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
            String str6 = this.f9575r;
            if (str6 != null) {
                jSONObject.put("posterUrl", str6);
            }
            String str7 = this.f9577t;
            if (str7 != null) {
                jSONObject.put("hlsSegmentFormat", str7);
            }
            VastAdsRequest vastAdsRequest = this.f9578u;
            if (vastAdsRequest != null) {
                jSONObject.put("vastAdsRequest", vastAdsRequest.zza());
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
