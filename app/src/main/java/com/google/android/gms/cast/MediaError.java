package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import org.json.JSONObject;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class MediaError extends AbstractSafeParcelable implements ReflectedParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<MediaError> CREATOR = new zzbx();

    /* renamed from: b, reason: collision with root package name */
    public final String f9650b;

    /* renamed from: e, reason: collision with root package name */
    public final long f9651e;

    /* renamed from: f, reason: collision with root package name */
    public final Integer f9652f;

    /* renamed from: j, reason: collision with root package name */
    public final String f9653j;

    /* renamed from: m, reason: collision with root package name */
    public String f9654m;

    /* renamed from: n, reason: collision with root package name */
    public final JSONObject f9655n;

    public static class Builder {
    }

    public @interface DetailedErrorCode {
    }

    @KeepForSdk
    public MediaError(String str, long j7, Integer num, String str2, JSONObject jSONObject) {
        this.f9650b = str;
        this.f9651e = j7;
        this.f9652f = num;
        this.f9653j = str2;
        this.f9655n = jSONObject;
    }

    public static MediaError zza(JSONObject jSONObject) {
        return new MediaError(jSONObject.optString("type", "ERROR"), jSONObject.optLong("requestId"), jSONObject.has("detailedErrorCode") ? Integer.valueOf(jSONObject.optInt("detailedErrorCode")) : null, CastUtils.optStringOrNull(jSONObject, "reason"), jSONObject.has("customData") ? jSONObject.optJSONObject("customData") : null);
    }

    public Integer getDetailedErrorCode() {
        return this.f9652f;
    }

    public String getReason() {
        return this.f9653j;
    }

    @KeepForSdk
    public long getRequestId() {
        return this.f9651e;
    }

    public String getType() {
        return this.f9650b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        JSONObject jSONObject = this.f9655n;
        this.f9654m = jSONObject == null ? null : jSONObject.toString();
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getType(), false);
        SafeParcelWriter.writeLong(parcel, 3, getRequestId());
        SafeParcelWriter.writeIntegerObject(parcel, 4, getDetailedErrorCode(), false);
        SafeParcelWriter.writeString(parcel, 5, getReason(), false);
        SafeParcelWriter.writeString(parcel, 6, this.f9654m, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
