package com.google.android.gms.cast;

import A.i;
import android.annotation.TargetApi;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public final class MediaTrack extends AbstractSafeParcelable implements ReflectedParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<MediaTrack> CREATOR = new zzcn();

    /* renamed from: b, reason: collision with root package name */
    public final long f9770b;

    /* renamed from: e, reason: collision with root package name */
    public final int f9771e;

    /* renamed from: f, reason: collision with root package name */
    public final String f9772f;

    /* renamed from: j, reason: collision with root package name */
    public final String f9773j;

    /* renamed from: m, reason: collision with root package name */
    public final String f9774m;

    /* renamed from: n, reason: collision with root package name */
    public final String f9775n;

    /* renamed from: p, reason: collision with root package name */
    public final int f9776p;

    /* renamed from: q, reason: collision with root package name */
    public final AbstractCollection f9777q;

    /* renamed from: r, reason: collision with root package name */
    public String f9778r;

    /* renamed from: s, reason: collision with root package name */
    public final JSONObject f9779s;

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final long f9780a;

        /* renamed from: b, reason: collision with root package name */
        public final int f9781b;

        /* renamed from: c, reason: collision with root package name */
        public String f9782c;

        /* renamed from: d, reason: collision with root package name */
        public String f9783d;

        /* renamed from: e, reason: collision with root package name */
        public int f9784e = 0;

        public Builder(long j7, int i2) throws IllegalArgumentException {
            this.f9780a = j7;
            this.f9781b = i2;
        }

        public MediaTrack build() {
            return new MediaTrack(this.f9780a, this.f9781b, this.f9782c, null, this.f9783d, null, this.f9784e, null, null);
        }

        public Builder setContentId(String str) {
            this.f9782c = str;
            return this;
        }

        public Builder setName(String str) {
            this.f9783d = str;
            return this;
        }

        public Builder setSubtype(int i2) throws IllegalArgumentException {
            if (i2 < -1 || i2 > 5) {
                throw new IllegalArgumentException(i.f(i2, "invalid subtype "));
            }
            if (i2 != 0 && this.f9781b != 1) {
                throw new IllegalArgumentException("subtypes are only valid for text tracks");
            }
            this.f9784e = i2;
            return this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MediaTrack(long j7, int i2, String str, String str2, String str3, String str4, int i7, List list, JSONObject jSONObject) {
        this.f9770b = j7;
        this.f9771e = i2;
        this.f9772f = str;
        this.f9773j = str2;
        this.f9774m = str3;
        this.f9775n = str4;
        this.f9776p = i7;
        this.f9777q = (AbstractCollection) list;
        this.f9779s = jSONObject;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MediaTrack) {
                MediaTrack mediaTrack = (MediaTrack) obj;
                JSONObject jSONObject = this.f9779s;
                boolean z6 = jSONObject == null;
                JSONObject jSONObject2 = mediaTrack.f9779s;
                if (z6 == (jSONObject2 == null) && ((jSONObject == null || jSONObject2 == null || JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) && this.f9770b == mediaTrack.f9770b && this.f9771e == mediaTrack.f9771e && CastUtils.zze(this.f9772f, mediaTrack.f9772f) && CastUtils.zze(this.f9773j, mediaTrack.f9773j) && CastUtils.zze(this.f9774m, mediaTrack.f9774m) && CastUtils.zze(this.f9775n, mediaTrack.f9775n) && this.f9776p == mediaTrack.f9776p && CastUtils.zze(this.f9777q, mediaTrack.f9777q))) {
                }
            }
            return false;
        }
        return true;
    }

    public String getContentId() {
        return this.f9772f;
    }

    public String getContentType() {
        return this.f9773j;
    }

    public long getId() {
        return this.f9770b;
    }

    public String getLanguage() {
        return this.f9775n;
    }

    @TargetApi(21)
    public Locale getLanguageLocale() {
        String str = this.f9775n;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (PlatformVersion.isAtLeastLollipop()) {
            return Locale.forLanguageTag(str);
        }
        String[] split = str.split("-", -1);
        return split.length == 1 ? new Locale(split[0]) : new Locale(split[0], split[1]);
    }

    public String getName() {
        return this.f9774m;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractCollection, java.util.List<java.lang.String>] */
    public List<String> getRoles() {
        return this.f9777q;
    }

    public int getSubtype() {
        return this.f9776p;
    }

    public int getType() {
        return this.f9771e;
    }

    public int hashCode() {
        Long valueOf = Long.valueOf(this.f9770b);
        Integer valueOf2 = Integer.valueOf(this.f9771e);
        Integer valueOf3 = Integer.valueOf(this.f9776p);
        String valueOf4 = String.valueOf(this.f9779s);
        return Objects.hashCode(valueOf, valueOf2, this.f9772f, this.f9773j, this.f9774m, this.f9775n, valueOf3, this.f9777q, valueOf4);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        JSONObject jSONObject = this.f9779s;
        this.f9778r = jSONObject == null ? null : jSONObject.toString();
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 2, getId());
        SafeParcelWriter.writeInt(parcel, 3, getType());
        SafeParcelWriter.writeString(parcel, 4, getContentId(), false);
        SafeParcelWriter.writeString(parcel, 5, getContentType(), false);
        SafeParcelWriter.writeString(parcel, 6, getName(), false);
        SafeParcelWriter.writeString(parcel, 7, getLanguage(), false);
        SafeParcelWriter.writeInt(parcel, 8, getSubtype());
        SafeParcelWriter.writeStringList(parcel, 9, getRoles(), false);
        SafeParcelWriter.writeString(parcel, 10, this.f9778r, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final JSONObject zza() {
        String str = this.f9775n;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("trackId", this.f9770b);
            int i2 = this.f9771e;
            if (i2 == 1) {
                jSONObject.put("type", "TEXT");
            } else if (i2 == 2) {
                jSONObject.put("type", "AUDIO");
            } else if (i2 == 3) {
                jSONObject.put("type", "VIDEO");
            }
            String str2 = this.f9772f;
            if (str2 != null) {
                jSONObject.put("trackContentId", str2);
            }
            String str3 = this.f9773j;
            if (str3 != null) {
                jSONObject.put("trackContentType", str3);
            }
            String str4 = this.f9774m;
            if (str4 != null) {
                jSONObject.put("name", str4);
            }
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("language", str);
            }
            int i7 = this.f9776p;
            if (i7 == 1) {
                jSONObject.put("subtype", "SUBTITLES");
            } else if (i7 == 2) {
                jSONObject.put("subtype", "CAPTIONS");
            } else if (i7 == 3) {
                jSONObject.put("subtype", "DESCRIPTIONS");
            } else if (i7 == 4) {
                jSONObject.put("subtype", "CHAPTERS");
            } else if (i7 == 5) {
                jSONObject.put("subtype", "METADATA");
            }
            AbstractCollection abstractCollection = this.f9777q;
            if (abstractCollection != null) {
                jSONObject.put("roles", new JSONArray((Collection) abstractCollection));
            }
            JSONObject jSONObject2 = this.f9779s;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
