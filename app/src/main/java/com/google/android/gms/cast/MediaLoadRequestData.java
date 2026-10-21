package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.JsonUtils;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class MediaLoadRequestData extends AbstractSafeParcelable implements RequestData {

    /* renamed from: b, reason: collision with root package name */
    public final MediaInfo f9686b;

    /* renamed from: e, reason: collision with root package name */
    public final MediaQueueData f9687e;

    /* renamed from: f, reason: collision with root package name */
    public final Boolean f9688f;

    /* renamed from: j, reason: collision with root package name */
    public final long f9689j;

    /* renamed from: m, reason: collision with root package name */
    public final double f9690m;

    /* renamed from: n, reason: collision with root package name */
    public final long[] f9691n;

    /* renamed from: p, reason: collision with root package name */
    public String f9692p;

    /* renamed from: q, reason: collision with root package name */
    public final JSONObject f9693q;

    /* renamed from: r, reason: collision with root package name */
    public final String f9694r;

    /* renamed from: s, reason: collision with root package name */
    public final String f9695s;

    /* renamed from: t, reason: collision with root package name */
    public final String f9696t;

    /* renamed from: u, reason: collision with root package name */
    public final String f9697u;

    /* renamed from: v, reason: collision with root package name */
    public final long f9698v;

    /* renamed from: w, reason: collision with root package name */
    public static final Logger f9685w = new Logger("MediaLoadRequestData");

    @KeepForSdk
    public static final Parcelable.Creator<MediaLoadRequestData> CREATOR = new zzcc();

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public MediaInfo f9699a;

        /* renamed from: b, reason: collision with root package name */
        public MediaQueueData f9700b;

        /* renamed from: c, reason: collision with root package name */
        public final Boolean f9701c = Boolean.TRUE;

        /* renamed from: d, reason: collision with root package name */
        public long f9702d = -1;

        /* renamed from: e, reason: collision with root package name */
        public double f9703e = 1.0d;

        /* renamed from: f, reason: collision with root package name */
        public long[] f9704f;

        /* renamed from: g, reason: collision with root package name */
        public JSONObject f9705g;

        public MediaLoadRequestData build() {
            return new MediaLoadRequestData(this.f9699a, this.f9700b, this.f9701c, this.f9702d, this.f9703e, this.f9704f, this.f9705g, null, null, null, null, 0L);
        }

        public Builder setActiveTrackIds(long[] jArr) {
            this.f9704f = jArr;
            return this;
        }

        public Builder setCurrentTime(long j7) {
            this.f9702d = j7;
            return this;
        }

        public Builder setCustomData(JSONObject jSONObject) {
            this.f9705g = jSONObject;
            return this;
        }

        public Builder setMediaInfo(MediaInfo mediaInfo) {
            this.f9699a = mediaInfo;
            return this;
        }

        public Builder setPlaybackRate(double d7) {
            if (Double.compare(d7, 2.0d) > 0 || Double.compare(d7, 0.5d) < 0) {
                throw new IllegalArgumentException("playbackRate must be between PLAYBACK_RATE_MIN and PLAYBACK_RATE_MAX");
            }
            this.f9703e = d7;
            return this;
        }

        public Builder setQueueData(MediaQueueData mediaQueueData) {
            this.f9700b = mediaQueueData;
            return this;
        }
    }

    public MediaLoadRequestData(MediaInfo mediaInfo, MediaQueueData mediaQueueData, Boolean bool, long j7, double d7, long[] jArr, JSONObject jSONObject, String str, String str2, String str3, String str4, long j8) {
        this.f9686b = mediaInfo;
        this.f9687e = mediaQueueData;
        this.f9688f = bool;
        this.f9689j = j7;
        this.f9690m = d7;
        this.f9691n = jArr;
        this.f9693q = jSONObject;
        this.f9694r = str;
        this.f9695s = str2;
        this.f9696t = str3;
        this.f9697u = str4;
        this.f9698v = j8;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaLoadRequestData)) {
            return false;
        }
        MediaLoadRequestData mediaLoadRequestData = (MediaLoadRequestData) obj;
        return JsonUtils.areJsonValuesEquivalent(this.f9693q, mediaLoadRequestData.f9693q) && Objects.equal(this.f9686b, mediaLoadRequestData.f9686b) && Objects.equal(this.f9687e, mediaLoadRequestData.f9687e) && Objects.equal(this.f9688f, mediaLoadRequestData.f9688f) && this.f9689j == mediaLoadRequestData.f9689j && this.f9690m == mediaLoadRequestData.f9690m && Arrays.equals(this.f9691n, mediaLoadRequestData.f9691n) && Objects.equal(this.f9694r, mediaLoadRequestData.f9694r) && Objects.equal(this.f9695s, mediaLoadRequestData.f9695s) && Objects.equal(this.f9696t, mediaLoadRequestData.f9696t) && Objects.equal(this.f9697u, mediaLoadRequestData.f9697u) && this.f9698v == mediaLoadRequestData.f9698v;
    }

    public long[] getActiveTrackIds() {
        return this.f9691n;
    }

    public Boolean getAutoplay() {
        return this.f9688f;
    }

    public String getCredentials() {
        return this.f9694r;
    }

    public String getCredentialsType() {
        return this.f9695s;
    }

    public long getCurrentTime() {
        return this.f9689j;
    }

    public MediaInfo getMediaInfo() {
        return this.f9686b;
    }

    public double getPlaybackRate() {
        return this.f9690m;
    }

    public MediaQueueData getQueueData() {
        return this.f9687e;
    }

    @KeepForSdk
    public long getRequestId() {
        return this.f9698v;
    }

    public int hashCode() {
        return Objects.hashCode(this.f9686b, this.f9687e, this.f9688f, Long.valueOf(this.f9689j), Double.valueOf(this.f9690m), this.f9691n, String.valueOf(this.f9693q), this.f9694r, this.f9695s, this.f9696t, this.f9697u, Long.valueOf(this.f9698v));
    }

    @KeepForSdk
    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            MediaInfo mediaInfo = this.f9686b;
            if (mediaInfo != null) {
                jSONObject.put("media", mediaInfo.zza());
            }
            MediaQueueData mediaQueueData = this.f9687e;
            if (mediaQueueData != null) {
                jSONObject.put("queueData", mediaQueueData.zza());
            }
            jSONObject.putOpt("autoplay", this.f9688f);
            long j7 = this.f9689j;
            if (j7 != -1) {
                jSONObject.put("currentTime", CastUtils.millisecToSec(j7));
            }
            jSONObject.put("playbackRate", this.f9690m);
            jSONObject.putOpt("credentials", this.f9694r);
            jSONObject.putOpt("credentialsType", this.f9695s);
            jSONObject.putOpt("atvCredentials", this.f9696t);
            jSONObject.putOpt("atvCredentialsType", this.f9697u);
            long[] jArr = this.f9691n;
            if (jArr != null) {
                JSONArray jSONArray = new JSONArray();
                for (int i2 = 0; i2 < jArr.length; i2++) {
                    jSONArray.put(i2, jArr[i2]);
                }
                jSONObject.put("activeTrackIds", jSONArray);
            }
            jSONObject.putOpt("customData", this.f9693q);
            jSONObject.put("requestId", this.f9698v);
            return jSONObject;
        } catch (JSONException e3) {
            f9685w.e("Error transforming MediaLoadRequestData into JSONObject", e3);
            return new JSONObject();
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        JSONObject jSONObject = this.f9693q;
        this.f9692p = jSONObject == null ? null : jSONObject.toString();
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getMediaInfo(), i2, false);
        SafeParcelWriter.writeParcelable(parcel, 3, getQueueData(), i2, false);
        SafeParcelWriter.writeBooleanObject(parcel, 4, getAutoplay(), false);
        SafeParcelWriter.writeLong(parcel, 5, getCurrentTime());
        SafeParcelWriter.writeDouble(parcel, 6, getPlaybackRate());
        SafeParcelWriter.writeLongArray(parcel, 7, getActiveTrackIds(), false);
        SafeParcelWriter.writeString(parcel, 8, this.f9692p, false);
        SafeParcelWriter.writeString(parcel, 9, getCredentials(), false);
        SafeParcelWriter.writeString(parcel, 10, getCredentialsType(), false);
        SafeParcelWriter.writeString(parcel, 11, this.f9696t, false);
        SafeParcelWriter.writeString(parcel, 12, this.f9697u, false);
        SafeParcelWriter.writeLong(parcel, 13, getRequestId());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
