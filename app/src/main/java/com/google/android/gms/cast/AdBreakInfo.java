package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class AdBreakInfo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AdBreakInfo> CREATOR = new zzb();

    /* renamed from: b, reason: collision with root package name */
    public final long f9580b;

    /* renamed from: e, reason: collision with root package name */
    public final String f9581e;

    /* renamed from: f, reason: collision with root package name */
    public final long f9582f;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f9583j;

    /* renamed from: m, reason: collision with root package name */
    public final String[] f9584m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f9585n;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f9586p;

    public static class Builder {
    }

    @SafeParcelable.Constructor
    public AdBreakInfo(@SafeParcelable.Param long j7, @SafeParcelable.Param String str, @SafeParcelable.Param long j8, @SafeParcelable.Param boolean z6, @SafeParcelable.Param String[] strArr, @SafeParcelable.Param boolean z7, @SafeParcelable.Param boolean z8) {
        this.f9580b = j7;
        this.f9581e = str;
        this.f9582f = j8;
        this.f9583j = z6;
        this.f9584m = strArr;
        this.f9585n = z7;
        this.f9586p = z8;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakInfo)) {
            return false;
        }
        AdBreakInfo adBreakInfo = (AdBreakInfo) obj;
        return CastUtils.zze(this.f9581e, adBreakInfo.f9581e) && this.f9580b == adBreakInfo.f9580b && this.f9582f == adBreakInfo.f9582f && this.f9583j == adBreakInfo.f9583j && Arrays.equals(this.f9584m, adBreakInfo.f9584m) && this.f9585n == adBreakInfo.f9585n && this.f9586p == adBreakInfo.f9586p;
    }

    public String[] getBreakClipIds() {
        return this.f9584m;
    }

    public long getDurationInMs() {
        return this.f9582f;
    }

    public String getId() {
        return this.f9581e;
    }

    public long getPlaybackPositionInMs() {
        return this.f9580b;
    }

    public int hashCode() {
        return this.f9581e.hashCode();
    }

    public boolean isEmbedded() {
        return this.f9585n;
    }

    @KeepForSdk
    public boolean isExpanded() {
        return this.f9586p;
    }

    public boolean isWatched() {
        return this.f9583j;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 2, getPlaybackPositionInMs());
        SafeParcelWriter.writeString(parcel, 3, getId(), false);
        SafeParcelWriter.writeLong(parcel, 4, getDurationInMs());
        SafeParcelWriter.writeBoolean(parcel, 5, isWatched());
        SafeParcelWriter.writeStringArray(parcel, 6, getBreakClipIds(), false);
        SafeParcelWriter.writeBoolean(parcel, 7, isEmbedded());
        SafeParcelWriter.writeBoolean(parcel, 8, isExpanded());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final JSONObject zza() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("id", this.f9581e);
            jSONObject.put("position", CastUtils.millisecToSec(this.f9580b));
            jSONObject.put("isWatched", this.f9583j);
            jSONObject.put("isEmbedded", this.f9585n);
            jSONObject.put("duration", CastUtils.millisecToSec(this.f9582f));
            jSONObject.put("expanded", this.f9586p);
            String[] strArr = this.f9584m;
            if (strArr != null) {
                JSONArray jSONArray = new JSONArray();
                for (String str : strArr) {
                    jSONArray.put(str);
                }
                jSONObject.put("breakClipIds", jSONArray);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
