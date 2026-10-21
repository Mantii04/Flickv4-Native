package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.JsonUtils;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class MediaQueueItem extends AbstractSafeParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<MediaQueueItem> CREATOR = new zzck();

    /* renamed from: b, reason: collision with root package name */
    public MediaInfo f9728b;

    /* renamed from: e, reason: collision with root package name */
    public int f9729e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f9730f;

    /* renamed from: j, reason: collision with root package name */
    public double f9731j;

    /* renamed from: m, reason: collision with root package name */
    public double f9732m;

    /* renamed from: n, reason: collision with root package name */
    public double f9733n;

    /* renamed from: p, reason: collision with root package name */
    public long[] f9734p;

    /* renamed from: q, reason: collision with root package name */
    public String f9735q;

    /* renamed from: r, reason: collision with root package name */
    public JSONObject f9736r;

    @KeepForSdk
    public class Writer {
        public Writer(MediaQueueItem mediaQueueItem) {
        }
    }

    public MediaQueueItem(MediaInfo mediaInfo, int i2, boolean z6, double d7, double d8, double d9, long[] jArr, String str) {
        this.f9731j = Double.NaN;
        new Writer(this);
        this.f9728b = mediaInfo;
        this.f9729e = i2;
        this.f9730f = z6;
        this.f9731j = d7;
        this.f9732m = d8;
        this.f9733n = d9;
        this.f9734p = jArr;
        this.f9735q = str;
        if (str == null) {
            this.f9736r = null;
            return;
        }
        try {
            this.f9736r = new JSONObject(this.f9735q);
        } catch (JSONException unused) {
            this.f9736r = null;
            this.f9735q = null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaQueueItem)) {
            return false;
        }
        MediaQueueItem mediaQueueItem = (MediaQueueItem) obj;
        JSONObject jSONObject = this.f9736r;
        boolean z6 = jSONObject == null;
        JSONObject jSONObject2 = mediaQueueItem.f9736r;
        if (z6 != (jSONObject2 == null)) {
            return false;
        }
        return (jSONObject == null || jSONObject2 == null || JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) && CastUtils.zze(this.f9728b, mediaQueueItem.f9728b) && this.f9729e == mediaQueueItem.f9729e && this.f9730f == mediaQueueItem.f9730f && ((Double.isNaN(this.f9731j) && Double.isNaN(mediaQueueItem.f9731j)) || this.f9731j == mediaQueueItem.f9731j) && this.f9732m == mediaQueueItem.f9732m && this.f9733n == mediaQueueItem.f9733n && Arrays.equals(this.f9734p, mediaQueueItem.f9734p);
    }

    @KeepForSdk
    public boolean fromJson(JSONObject jSONObject) throws JSONException {
        boolean z6;
        long[] jArr;
        boolean z7;
        int i2;
        boolean z8 = false;
        if (jSONObject.has("media")) {
            this.f9728b = new MediaInfo(jSONObject.getJSONObject("media"));
            z6 = true;
        } else {
            z6 = false;
        }
        if (jSONObject.has("itemId") && this.f9729e != (i2 = jSONObject.getInt("itemId"))) {
            this.f9729e = i2;
            z6 = true;
        }
        if (jSONObject.has("autoplay") && this.f9730f != (z7 = jSONObject.getBoolean("autoplay"))) {
            this.f9730f = z7;
            z6 = true;
        }
        double optDouble = jSONObject.optDouble("startTime");
        if (Double.isNaN(optDouble) != Double.isNaN(this.f9731j) || (!Double.isNaN(optDouble) && Math.abs(optDouble - this.f9731j) > 1.0E-7d)) {
            this.f9731j = optDouble;
            z6 = true;
        }
        if (jSONObject.has("playbackDuration")) {
            double d7 = jSONObject.getDouble("playbackDuration");
            if (Math.abs(d7 - this.f9732m) > 1.0E-7d) {
                this.f9732m = d7;
                z6 = true;
            }
        }
        if (jSONObject.has("preloadTime")) {
            double d8 = jSONObject.getDouble("preloadTime");
            if (Math.abs(d8 - this.f9733n) > 1.0E-7d) {
                this.f9733n = d8;
                z6 = true;
            }
        }
        if (jSONObject.has("activeTrackIds")) {
            JSONArray jSONArray = jSONObject.getJSONArray("activeTrackIds");
            int length = jSONArray.length();
            jArr = new long[length];
            for (int i7 = 0; i7 < length; i7++) {
                jArr[i7] = jSONArray.getLong(i7);
            }
            long[] jArr2 = this.f9734p;
            if (jArr2 != null && jArr2.length == length) {
                for (int i8 = 0; i8 < length; i8++) {
                    if (this.f9734p[i8] == jArr[i8]) {
                    }
                }
            }
            z8 = true;
            break;
        } else {
            jArr = null;
        }
        if (z8) {
            this.f9734p = jArr;
            z6 = true;
        }
        if (!jSONObject.has("customData")) {
            return z6;
        }
        this.f9736r = jSONObject.getJSONObject("customData");
        return true;
    }

    public long[] getActiveTrackIds() {
        return this.f9734p;
    }

    public boolean getAutoplay() {
        return this.f9730f;
    }

    public int getItemId() {
        return this.f9729e;
    }

    public MediaInfo getMedia() {
        return this.f9728b;
    }

    public double getPlaybackDuration() {
        return this.f9732m;
    }

    public double getPreloadTime() {
        return this.f9733n;
    }

    public double getStartTime() {
        return this.f9731j;
    }

    public int hashCode() {
        return Objects.hashCode(this.f9728b, Integer.valueOf(this.f9729e), Boolean.valueOf(this.f9730f), Double.valueOf(this.f9731j), Double.valueOf(this.f9732m), Double.valueOf(this.f9733n), Integer.valueOf(Arrays.hashCode(this.f9734p)), String.valueOf(this.f9736r));
    }

    @KeepForSdk
    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            MediaInfo mediaInfo = this.f9728b;
            if (mediaInfo != null) {
                jSONObject.put("media", mediaInfo.zza());
            }
            int i2 = this.f9729e;
            if (i2 != 0) {
                jSONObject.put("itemId", i2);
            }
            jSONObject.put("autoplay", this.f9730f);
            if (!Double.isNaN(this.f9731j)) {
                jSONObject.put("startTime", this.f9731j);
            }
            double d7 = this.f9732m;
            if (d7 != Double.POSITIVE_INFINITY) {
                jSONObject.put("playbackDuration", d7);
            }
            jSONObject.put("preloadTime", this.f9733n);
            if (this.f9734p != null) {
                JSONArray jSONArray = new JSONArray();
                for (long j7 : this.f9734p) {
                    jSONArray.put(j7);
                }
                jSONObject.put("activeTrackIds", jSONArray);
            }
            JSONObject jSONObject2 = this.f9736r;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        JSONObject jSONObject = this.f9736r;
        this.f9735q = jSONObject == null ? null : jSONObject.toString();
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getMedia(), i2, false);
        SafeParcelWriter.writeInt(parcel, 3, getItemId());
        SafeParcelWriter.writeBoolean(parcel, 4, getAutoplay());
        SafeParcelWriter.writeDouble(parcel, 5, getStartTime());
        SafeParcelWriter.writeDouble(parcel, 6, getPlaybackDuration());
        SafeParcelWriter.writeDouble(parcel, 7, getPreloadTime());
        SafeParcelWriter.writeLongArray(parcel, 8, getActiveTrackIds(), false);
        SafeParcelWriter.writeString(parcel, 9, this.f9735q, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @KeepForSdk
    public MediaQueueItem(JSONObject jSONObject) throws JSONException {
        this(null, 0, true, Double.NaN, Double.POSITIVE_INFINITY, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, null, null);
        fromJson(jSONObject);
    }

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final MediaQueueItem f9737a;

        public Builder(MediaInfo mediaInfo) throws IllegalArgumentException {
            MediaQueueItem mediaQueueItem = new MediaQueueItem(mediaInfo, 0, true, Double.NaN, Double.POSITIVE_INFINITY, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, null, null);
            if (mediaInfo == null) {
                throw new IllegalArgumentException("media cannot be null.");
            }
            this.f9737a = mediaQueueItem;
        }

        public MediaQueueItem build() {
            MediaQueueItem mediaQueueItem = this.f9737a;
            if (mediaQueueItem.f9728b == null) {
                throw new IllegalArgumentException("media cannot be null.");
            }
            if (!Double.isNaN(mediaQueueItem.f9731j) && mediaQueueItem.f9731j < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                throw new IllegalArgumentException("startTime cannot be negative or NaN.");
            }
            if (Double.isNaN(mediaQueueItem.f9732m)) {
                throw new IllegalArgumentException("playbackDuration cannot be NaN.");
            }
            if (Double.isNaN(mediaQueueItem.f9733n) || mediaQueueItem.f9733n < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                throw new IllegalArgumentException("preloadTime cannot be negative or Nan.");
            }
            return mediaQueueItem;
        }

        public Builder(JSONObject jSONObject) throws JSONException {
            this.f9737a = new MediaQueueItem(jSONObject);
        }
    }
}
