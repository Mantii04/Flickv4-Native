package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.internal.cast.zzfn;
import com.google.android.gms.internal.cast.zzfq;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class MediaInfo extends AbstractSafeParcelable implements ReflectedParcelable {

    /* renamed from: B, reason: collision with root package name */
    public static final long f9656B = CastUtils.secToMillisec(-1L);
    public static final Parcelable.Creator<MediaInfo> CREATOR = new zzby();

    /* renamed from: A, reason: collision with root package name */
    public final JSONObject f9657A;

    /* renamed from: b, reason: collision with root package name */
    public final String f9658b;

    /* renamed from: e, reason: collision with root package name */
    public final int f9659e;

    /* renamed from: f, reason: collision with root package name */
    public final String f9660f;

    /* renamed from: j, reason: collision with root package name */
    public final MediaMetadata f9661j;

    /* renamed from: m, reason: collision with root package name */
    public final long f9662m;

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f9663n;

    /* renamed from: p, reason: collision with root package name */
    public final TextTrackStyle f9664p;

    /* renamed from: q, reason: collision with root package name */
    public String f9665q;

    /* renamed from: r, reason: collision with root package name */
    public List f9666r;

    /* renamed from: s, reason: collision with root package name */
    public ArrayList f9667s;

    /* renamed from: t, reason: collision with root package name */
    public final String f9668t;

    /* renamed from: u, reason: collision with root package name */
    public final VastAdsRequest f9669u;

    /* renamed from: v, reason: collision with root package name */
    public final long f9670v;

    /* renamed from: w, reason: collision with root package name */
    public final String f9671w;

    /* renamed from: x, reason: collision with root package name */
    public final String f9672x;

    /* renamed from: y, reason: collision with root package name */
    public final String f9673y;

    /* renamed from: z, reason: collision with root package name */
    public final String f9674z;

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final String f9675a;

        /* renamed from: c, reason: collision with root package name */
        public String f9677c;

        /* renamed from: d, reason: collision with root package name */
        public MediaMetadata f9678d;

        /* renamed from: b, reason: collision with root package name */
        public int f9676b = -1;

        /* renamed from: e, reason: collision with root package name */
        public long f9679e = -1;

        public Builder() {
        }

        public MediaInfo build() {
            return new MediaInfo(this.f9675a, this.f9676b, this.f9677c, this.f9678d, this.f9679e, null, null, null, null, null, null, null, -1L, null, null, null, null);
        }

        public Builder setContentType(String str) {
            this.f9677c = str;
            return this;
        }

        public Builder setMetadata(MediaMetadata mediaMetadata) {
            this.f9678d = mediaMetadata;
            return this;
        }

        public Builder setStreamDuration(long j7) {
            if (j7 < 0 && j7 != -1) {
                throw new IllegalArgumentException("Invalid stream duration");
            }
            this.f9679e = j7;
            return this;
        }

        public Builder setStreamType(int i2) {
            if (i2 < -1 || i2 > 2) {
                throw new IllegalArgumentException("invalid stream type");
            }
            this.f9676b = i2;
            return this;
        }

        public Builder(String str) {
            this.f9675a = str;
        }
    }

    @KeepForSdk
    public class Writer {
        public Writer(MediaInfo mediaInfo) {
        }
    }

    public MediaInfo(String str, int i2, String str2, MediaMetadata mediaMetadata, long j7, ArrayList arrayList, TextTrackStyle textTrackStyle, String str3, ArrayList arrayList2, ArrayList arrayList3, String str4, VastAdsRequest vastAdsRequest, long j8, String str5, String str6, String str7, String str8) {
        new Writer(this);
        this.f9658b = str;
        this.f9659e = i2;
        this.f9660f = str2;
        this.f9661j = mediaMetadata;
        this.f9662m = j7;
        this.f9663n = arrayList;
        this.f9664p = textTrackStyle;
        this.f9665q = str3;
        if (str3 != null) {
            try {
                this.f9657A = new JSONObject(this.f9665q);
            } catch (JSONException unused) {
                this.f9657A = null;
                this.f9665q = null;
            }
        } else {
            this.f9657A = null;
        }
        this.f9666r = arrayList2;
        this.f9667s = arrayList3;
        this.f9668t = str4;
        this.f9669u = vastAdsRequest;
        this.f9670v = j8;
        this.f9671w = str5;
        this.f9672x = str6;
        this.f9673y = str7;
        this.f9674z = str8;
        if (this.f9658b == null && str6 == null && str4 == null) {
            throw new IllegalArgumentException("Either contentID or contentUrl or entity should be set");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x00ad A[LOOP:0: B:4:0x0021->B:10:0x00ad, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00b5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0193 A[LOOP:2: B:35:0x00d5->B:41:0x0193, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x019a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(org.json.JSONObject r26) {
        /*
            Method dump skipped, instructions count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.MediaInfo.a(org.json.JSONObject):void");
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MediaInfo) {
                MediaInfo mediaInfo = (MediaInfo) obj;
                JSONObject jSONObject = this.f9657A;
                boolean z6 = jSONObject == null;
                JSONObject jSONObject2 = mediaInfo.f9657A;
                if (z6 == (jSONObject2 == null) && ((jSONObject == null || jSONObject2 == null || JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) && CastUtils.zze(this.f9658b, mediaInfo.f9658b) && this.f9659e == mediaInfo.f9659e && CastUtils.zze(this.f9660f, mediaInfo.f9660f) && CastUtils.zze(this.f9661j, mediaInfo.f9661j) && this.f9662m == mediaInfo.f9662m && CastUtils.zze(this.f9663n, mediaInfo.f9663n) && CastUtils.zze(this.f9664p, mediaInfo.f9664p) && CastUtils.zze(this.f9666r, mediaInfo.f9666r) && CastUtils.zze(this.f9667s, mediaInfo.f9667s) && CastUtils.zze(this.f9668t, mediaInfo.f9668t) && CastUtils.zze(this.f9669u, mediaInfo.f9669u) && this.f9670v == mediaInfo.f9670v && CastUtils.zze(this.f9671w, mediaInfo.f9671w) && CastUtils.zze(this.f9672x, mediaInfo.f9672x) && CastUtils.zze(this.f9673y, mediaInfo.f9673y) && CastUtils.zze(this.f9674z, mediaInfo.f9674z))) {
                }
            }
            return false;
        }
        return true;
    }

    public List<AdBreakClipInfo> getAdBreakClips() {
        ArrayList arrayList = this.f9667s;
        if (arrayList == null) {
            return null;
        }
        return Collections.unmodifiableList(arrayList);
    }

    public List<AdBreakInfo> getAdBreaks() {
        List list = this.f9666r;
        if (list == null) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    public String getContentId() {
        String str = this.f9658b;
        return str == null ? "" : str;
    }

    public String getContentType() {
        return this.f9660f;
    }

    public String getContentUrl() {
        return this.f9672x;
    }

    public String getEntity() {
        return this.f9668t;
    }

    @HlsSegmentFormat
    public String getHlsSegmentFormat() {
        return this.f9673y;
    }

    @HlsVideoSegmentFormat
    public String getHlsVideoSegmentFormat() {
        return this.f9674z;
    }

    public List<MediaTrack> getMediaTracks() {
        return this.f9663n;
    }

    public MediaMetadata getMetadata() {
        return this.f9661j;
    }

    public long getStartAbsoluteTime() {
        return this.f9670v;
    }

    public long getStreamDuration() {
        return this.f9662m;
    }

    public int getStreamType() {
        return this.f9659e;
    }

    public TextTrackStyle getTextTrackStyle() {
        return this.f9664p;
    }

    public VastAdsRequest getVmapAdsRequest() {
        return this.f9669u;
    }

    public int hashCode() {
        return Objects.hashCode(this.f9658b, Integer.valueOf(this.f9659e), this.f9660f, this.f9661j, Long.valueOf(this.f9662m), String.valueOf(this.f9657A), this.f9663n, this.f9664p, this.f9666r, this.f9667s, this.f9668t, this.f9669u, Long.valueOf(this.f9670v), this.f9671w, this.f9673y, this.f9674z);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        JSONObject jSONObject = this.f9657A;
        this.f9665q = jSONObject == null ? null : jSONObject.toString();
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getContentId(), false);
        SafeParcelWriter.writeInt(parcel, 3, getStreamType());
        SafeParcelWriter.writeString(parcel, 4, getContentType(), false);
        SafeParcelWriter.writeParcelable(parcel, 5, getMetadata(), i2, false);
        SafeParcelWriter.writeLong(parcel, 6, getStreamDuration());
        SafeParcelWriter.writeTypedList(parcel, 7, getMediaTracks(), false);
        SafeParcelWriter.writeParcelable(parcel, 8, getTextTrackStyle(), i2, false);
        SafeParcelWriter.writeString(parcel, 9, this.f9665q, false);
        SafeParcelWriter.writeTypedList(parcel, 10, getAdBreaks(), false);
        SafeParcelWriter.writeTypedList(parcel, 11, getAdBreakClips(), false);
        SafeParcelWriter.writeString(parcel, 12, getEntity(), false);
        SafeParcelWriter.writeParcelable(parcel, 13, getVmapAdsRequest(), i2, false);
        SafeParcelWriter.writeLong(parcel, 14, getStartAbsoluteTime());
        SafeParcelWriter.writeString(parcel, 15, this.f9671w, false);
        SafeParcelWriter.writeString(parcel, 16, getContentUrl(), false);
        SafeParcelWriter.writeString(parcel, 17, getHlsSegmentFormat(), false);
        SafeParcelWriter.writeString(parcel, 18, getHlsVideoSegmentFormat(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final JSONObject zza() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("contentId", this.f9658b);
            jSONObject.putOpt("contentUrl", this.f9672x);
            int i2 = this.f9659e;
            jSONObject.put("streamType", i2 != 1 ? i2 != 2 ? "NONE" : "LIVE" : "BUFFERED");
            String str = this.f9660f;
            if (str != null) {
                jSONObject.put("contentType", str);
            }
            MediaMetadata mediaMetadata = this.f9661j;
            if (mediaMetadata != null) {
                jSONObject.put("metadata", mediaMetadata.zza());
            }
            long j7 = this.f9662m;
            if (j7 <= -1) {
                jSONObject.put("duration", JSONObject.NULL);
            } else {
                jSONObject.put("duration", CastUtils.millisecToSec(j7));
            }
            ArrayList arrayList = this.f9663n;
            if (arrayList != null) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((MediaTrack) it.next()).zza());
                }
                jSONObject.put("tracks", jSONArray);
            }
            TextTrackStyle textTrackStyle = this.f9664p;
            if (textTrackStyle != null) {
                jSONObject.put("textTrackStyle", textTrackStyle.zza());
            }
            JSONObject jSONObject2 = this.f9657A;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
            String str2 = this.f9668t;
            if (str2 != null) {
                jSONObject.put("entity", str2);
            }
            if (this.f9666r != null) {
                JSONArray jSONArray2 = new JSONArray();
                Iterator it2 = this.f9666r.iterator();
                while (it2.hasNext()) {
                    jSONArray2.put(((AdBreakInfo) it2.next()).zza());
                }
                jSONObject.put("breaks", jSONArray2);
            }
            if (this.f9667s != null) {
                JSONArray jSONArray3 = new JSONArray();
                Iterator it3 = this.f9667s.iterator();
                while (it3.hasNext()) {
                    jSONArray3.put(((AdBreakClipInfo) it3.next()).zza());
                }
                jSONObject.put("breakClips", jSONArray3);
            }
            VastAdsRequest vastAdsRequest = this.f9669u;
            if (vastAdsRequest != null) {
                jSONObject.put("vmapAdsRequest", vastAdsRequest.zza());
            }
            long j8 = this.f9670v;
            if (j8 != -1) {
                jSONObject.put("startAbsoluteTime", CastUtils.millisecToSec(j8));
            }
            jSONObject.putOpt("atvEntity", this.f9671w);
            String str3 = this.f9673y;
            if (str3 != null) {
                jSONObject.put("hlsSegmentFormat", str3);
            }
            String str4 = this.f9674z;
            if (str4 != null) {
                jSONObject.put("hlsVideoSegmentFormat", str4);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public MediaInfo(JSONObject jSONObject) {
        this(jSONObject.optString("contentId"), -1, null, null, -1L, null, null, null, null, null, null, null, -1L, null, null, null, null);
        int i2;
        int i7;
        zzfq zzfqVar;
        int i8;
        String optString = jSONObject.optString("streamType", "NONE");
        int i9 = 2;
        if ("NONE".equals(optString)) {
            this.f9659e = 0;
        } else if ("BUFFERED".equals(optString)) {
            this.f9659e = 1;
        } else if ("LIVE".equals(optString)) {
            this.f9659e = 2;
        } else {
            this.f9659e = -1;
        }
        this.f9660f = CastUtils.optStringOrNull(jSONObject, "contentType");
        if (jSONObject.has("metadata")) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("metadata");
            MediaMetadata mediaMetadata = new MediaMetadata(jSONObject2.getInt("metadataType"));
            this.f9661j = mediaMetadata;
            mediaMetadata.zzc(jSONObject2);
        }
        this.f9662m = -1L;
        if (this.f9659e != 2 && jSONObject.has("duration") && !jSONObject.isNull("duration")) {
            double optDouble = jSONObject.optDouble("duration", FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
            if (!Double.isNaN(optDouble) && !Double.isInfinite(optDouble) && optDouble >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                this.f9662m = CastUtils.secToMillisec(optDouble);
            }
        }
        if (jSONObject.has("tracks")) {
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArray = jSONObject.getJSONArray("tracks");
            int i10 = 0;
            while (i10 < jSONArray.length()) {
                JSONObject jSONObject3 = jSONArray.getJSONObject(i10);
                Parcelable.Creator<MediaTrack> creator = MediaTrack.CREATOR;
                long j7 = jSONObject3.getLong("trackId");
                String optString2 = jSONObject3.optString("type");
                int i11 = 3;
                if ("TEXT".equals(optString2)) {
                    i2 = 3;
                    i11 = 1;
                } else if ("AUDIO".equals(optString2)) {
                    i2 = 3;
                    i11 = i9;
                } else if ("VIDEO".equals(optString2)) {
                    i2 = 3;
                } else {
                    i2 = 3;
                    i11 = 0;
                }
                String optStringOrNull = CastUtils.optStringOrNull(jSONObject3, "trackContentId");
                String optStringOrNull2 = CastUtils.optStringOrNull(jSONObject3, "trackContentType");
                String optStringOrNull3 = CastUtils.optStringOrNull(jSONObject3, "name");
                String optStringOrNull4 = CastUtils.optStringOrNull(jSONObject3, "language");
                if (jSONObject3.has("subtype")) {
                    String string = jSONObject3.getString("subtype");
                    if ("SUBTITLES".equals(string)) {
                        i7 = 1;
                    } else if ("CAPTIONS".equals(string)) {
                        i7 = i9;
                    } else if ("DESCRIPTIONS".equals(string)) {
                        i7 = i2;
                    } else {
                        if ("CHAPTERS".equals(string)) {
                            i8 = 4;
                        } else if ("METADATA".equals(string)) {
                            i8 = 5;
                        } else {
                            i7 = -1;
                        }
                        i7 = i8;
                    }
                } else {
                    i7 = 0;
                }
                if (jSONObject3.has("roles")) {
                    zzfn zzfnVar = new zzfn();
                    JSONArray jSONArray2 = jSONObject3.getJSONArray("roles");
                    for (int i12 = 0; i12 < jSONArray2.length(); i12++) {
                        zzfnVar.zzb(jSONArray2.optString(i12));
                    }
                    zzfqVar = zzfnVar.zzc();
                } else {
                    zzfqVar = null;
                }
                arrayList.add(new MediaTrack(j7, i11, optStringOrNull, optStringOrNull2, optStringOrNull3, optStringOrNull4, i7, zzfqVar, jSONObject3.optJSONObject("customData")));
                i10++;
                i9 = 2;
            }
            this.f9663n = new ArrayList(arrayList);
        } else {
            this.f9663n = null;
        }
        if (jSONObject.has("textTrackStyle")) {
            JSONObject jSONObject4 = jSONObject.getJSONObject("textTrackStyle");
            TextTrackStyle textTrackStyle = new TextTrackStyle();
            textTrackStyle.fromJson(jSONObject4);
            this.f9664p = textTrackStyle;
        } else {
            this.f9664p = null;
        }
        a(jSONObject);
        this.f9657A = jSONObject.optJSONObject("customData");
        this.f9668t = CastUtils.optStringOrNull(jSONObject, "entity");
        this.f9671w = CastUtils.optStringOrNull(jSONObject, "atvEntity");
        this.f9669u = VastAdsRequest.fromJson(jSONObject.optJSONObject("vmapAdsRequest"));
        if (jSONObject.has("startAbsoluteTime") && !jSONObject.isNull("startAbsoluteTime")) {
            double optDouble2 = jSONObject.optDouble("startAbsoluteTime");
            if (!Double.isNaN(optDouble2) && !Double.isInfinite(optDouble2) && optDouble2 >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                this.f9670v = CastUtils.secToMillisec(optDouble2);
            }
        }
        if (jSONObject.has("contentUrl")) {
            this.f9672x = jSONObject.optString("contentUrl");
        }
        this.f9673y = CastUtils.optStringOrNull(jSONObject, "hlsSegmentFormat");
        this.f9674z = CastUtils.optStringOrNull(jSONObject, "hlsVideoSegmentFormat");
    }
}
