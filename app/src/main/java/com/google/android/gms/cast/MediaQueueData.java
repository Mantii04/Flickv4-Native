package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.cast.MediaQueueContainerMetadata;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.media.MediaCommon;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
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
public class MediaQueueData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MediaQueueData> CREATOR = new zzci();

    /* renamed from: b, reason: collision with root package name */
    public String f9717b;

    /* renamed from: e, reason: collision with root package name */
    public String f9718e;

    /* renamed from: f, reason: collision with root package name */
    public int f9719f;

    /* renamed from: j, reason: collision with root package name */
    public String f9720j;

    /* renamed from: m, reason: collision with root package name */
    public MediaQueueContainerMetadata f9721m;

    /* renamed from: n, reason: collision with root package name */
    public int f9722n;

    /* renamed from: p, reason: collision with root package name */
    public ArrayList f9723p;

    /* renamed from: q, reason: collision with root package name */
    public int f9724q;

    /* renamed from: r, reason: collision with root package name */
    public long f9725r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f9726s;

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final MediaQueueData f9727a;

        public Builder() {
            MediaQueueData mediaQueueData = new MediaQueueData();
            mediaQueueData.a();
            this.f9727a = mediaQueueData;
        }

        public MediaQueueData build() {
            MediaQueueData mediaQueueData = new MediaQueueData();
            MediaQueueData mediaQueueData2 = this.f9727a;
            mediaQueueData.f9717b = mediaQueueData2.f9717b;
            mediaQueueData.f9718e = mediaQueueData2.f9718e;
            mediaQueueData.f9719f = mediaQueueData2.f9719f;
            mediaQueueData.f9720j = mediaQueueData2.f9720j;
            mediaQueueData.f9721m = mediaQueueData2.f9721m;
            mediaQueueData.f9722n = mediaQueueData2.f9722n;
            mediaQueueData.f9723p = mediaQueueData2.f9723p;
            mediaQueueData.f9724q = mediaQueueData2.f9724q;
            mediaQueueData.f9725r = mediaQueueData2.f9725r;
            mediaQueueData.f9726s = mediaQueueData2.f9726s;
            return mediaQueueData;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        public final Builder zza(JSONObject jSONObject) {
            char c7;
            Parcelable.Creator<MediaQueueData> creator = MediaQueueData.CREATOR;
            MediaQueueData mediaQueueData = this.f9727a;
            mediaQueueData.a();
            if (jSONObject != null) {
                mediaQueueData.f9717b = CastUtils.optStringOrNull(jSONObject, "id");
                mediaQueueData.f9718e = CastUtils.optStringOrNull(jSONObject, "entity");
                String optString = jSONObject.optString("queueType");
                switch (optString.hashCode()) {
                    case -1803151310:
                        if (optString.equals("PODCAST_SERIES")) {
                            c7 = 4;
                            break;
                        }
                        c7 = 65535;
                        break;
                    case -1758903120:
                        if (optString.equals("RADIO_STATION")) {
                            c7 = 3;
                            break;
                        }
                        c7 = 65535;
                        break;
                    case -1632865838:
                        if (optString.equals("PLAYLIST")) {
                            c7 = 1;
                            break;
                        }
                        c7 = 65535;
                        break;
                    case -1319760993:
                        if (optString.equals("AUDIOBOOK")) {
                            c7 = 2;
                            break;
                        }
                        c7 = 65535;
                        break;
                    case -1088524588:
                        if (optString.equals("TV_SERIES")) {
                            c7 = 5;
                            break;
                        }
                        c7 = 65535;
                        break;
                    case 62359119:
                        if (optString.equals("ALBUM")) {
                            c7 = 0;
                            break;
                        }
                        c7 = 65535;
                        break;
                    case 73549584:
                        if (optString.equals("MOVIE")) {
                            c7 = '\b';
                            break;
                        }
                        c7 = 65535;
                        break;
                    case 393100598:
                        if (optString.equals("VIDEO_PLAYLIST")) {
                            c7 = 6;
                            break;
                        }
                        c7 = 65535;
                        break;
                    case 902303413:
                        if (optString.equals("LIVE_TV")) {
                            c7 = 7;
                            break;
                        }
                        c7 = 65535;
                        break;
                    default:
                        c7 = 65535;
                        break;
                }
                switch (c7) {
                    case 0:
                        mediaQueueData.f9719f = 1;
                        break;
                    case 1:
                        mediaQueueData.f9719f = 2;
                        break;
                    case 2:
                        mediaQueueData.f9719f = 3;
                        break;
                    case 3:
                        mediaQueueData.f9719f = 4;
                        break;
                    case 4:
                        mediaQueueData.f9719f = 5;
                        break;
                    case 5:
                        mediaQueueData.f9719f = 6;
                        break;
                    case 6:
                        mediaQueueData.f9719f = 7;
                        break;
                    case 7:
                        mediaQueueData.f9719f = 8;
                        break;
                    case '\b':
                        mediaQueueData.f9719f = 9;
                        break;
                }
                mediaQueueData.f9720j = CastUtils.optStringOrNull(jSONObject, "name");
                JSONObject optJSONObject = jSONObject.has("containerMetadata") ? jSONObject.optJSONObject("containerMetadata") : null;
                if (optJSONObject != null) {
                    MediaQueueContainerMetadata.Builder builder = new MediaQueueContainerMetadata.Builder();
                    builder.zza(optJSONObject);
                    mediaQueueData.f9721m = builder.build();
                }
                Integer mediaRepeatModeFromString = MediaCommon.mediaRepeatModeFromString(jSONObject.optString("repeatMode"));
                if (mediaRepeatModeFromString != null) {
                    mediaQueueData.f9722n = mediaRepeatModeFromString.intValue();
                }
                JSONArray optJSONArray = jSONObject.optJSONArray(FirebaseAnalytics.Param.ITEMS);
                if (optJSONArray != null) {
                    ArrayList arrayList = new ArrayList();
                    mediaQueueData.f9723p = arrayList;
                    for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                        JSONObject optJSONObject2 = optJSONArray.optJSONObject(i2);
                        if (optJSONObject2 != null) {
                            try {
                                arrayList.add(new MediaQueueItem(optJSONObject2));
                            } catch (JSONException unused) {
                            }
                        }
                    }
                }
                mediaQueueData.f9724q = jSONObject.optInt("startIndex", mediaQueueData.f9724q);
                if (jSONObject.has("startTime")) {
                    mediaQueueData.f9725r = CastUtils.secToMillisec(jSONObject.optDouble("startTime", mediaQueueData.f9725r));
                }
                mediaQueueData.f9726s = jSONObject.optBoolean("shuffle");
            }
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MediaQueueType {
    }

    private MediaQueueData() {
        a();
    }

    public final void a() {
        this.f9717b = null;
        this.f9718e = null;
        this.f9719f = 0;
        this.f9720j = null;
        this.f9722n = 0;
        this.f9723p = null;
        this.f9724q = 0;
        this.f9725r = -1L;
        this.f9726s = false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaQueueData)) {
            return false;
        }
        MediaQueueData mediaQueueData = (MediaQueueData) obj;
        return TextUtils.equals(this.f9717b, mediaQueueData.f9717b) && TextUtils.equals(this.f9718e, mediaQueueData.f9718e) && this.f9719f == mediaQueueData.f9719f && TextUtils.equals(this.f9720j, mediaQueueData.f9720j) && Objects.equal(this.f9721m, mediaQueueData.f9721m) && this.f9722n == mediaQueueData.f9722n && Objects.equal(this.f9723p, mediaQueueData.f9723p) && this.f9724q == mediaQueueData.f9724q && this.f9725r == mediaQueueData.f9725r && this.f9726s == mediaQueueData.f9726s;
    }

    public MediaQueueContainerMetadata getContainerMetadata() {
        return this.f9721m;
    }

    public String getEntity() {
        return this.f9718e;
    }

    public List<MediaQueueItem> getItems() {
        ArrayList arrayList = this.f9723p;
        if (arrayList == null) {
            return null;
        }
        return Collections.unmodifiableList(arrayList);
    }

    public String getName() {
        return this.f9720j;
    }

    public String getQueueId() {
        return this.f9717b;
    }

    public int getQueueType() {
        return this.f9719f;
    }

    public int getRepeatMode() {
        return this.f9722n;
    }

    public int getStartIndex() {
        return this.f9724q;
    }

    public long getStartTime() {
        return this.f9725r;
    }

    public int hashCode() {
        return Objects.hashCode(this.f9717b, this.f9718e, Integer.valueOf(this.f9719f), this.f9720j, this.f9721m, Integer.valueOf(this.f9722n), this.f9723p, Integer.valueOf(this.f9724q), Long.valueOf(this.f9725r), Boolean.valueOf(this.f9726s));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getQueueId(), false);
        SafeParcelWriter.writeString(parcel, 3, getEntity(), false);
        SafeParcelWriter.writeInt(parcel, 4, getQueueType());
        SafeParcelWriter.writeString(parcel, 5, getName(), false);
        SafeParcelWriter.writeParcelable(parcel, 6, getContainerMetadata(), i2, false);
        SafeParcelWriter.writeInt(parcel, 7, getRepeatMode());
        SafeParcelWriter.writeTypedList(parcel, 8, getItems(), false);
        SafeParcelWriter.writeInt(parcel, 9, getStartIndex());
        SafeParcelWriter.writeLong(parcel, 10, getStartTime());
        SafeParcelWriter.writeBoolean(parcel, 11, this.f9726s);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final JSONObject zza() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.f9717b)) {
                jSONObject.put("id", this.f9717b);
            }
            if (!TextUtils.isEmpty(this.f9718e)) {
                jSONObject.put("entity", this.f9718e);
            }
            switch (this.f9719f) {
                case 1:
                    jSONObject.put("queueType", "ALBUM");
                    break;
                case 2:
                    jSONObject.put("queueType", "PLAYLIST");
                    break;
                case 3:
                    jSONObject.put("queueType", "AUDIOBOOK");
                    break;
                case 4:
                    jSONObject.put("queueType", "RADIO_STATION");
                    break;
                case 5:
                    jSONObject.put("queueType", "PODCAST_SERIES");
                    break;
                case 6:
                    jSONObject.put("queueType", "TV_SERIES");
                    break;
                case 7:
                    jSONObject.put("queueType", "VIDEO_PLAYLIST");
                    break;
                case 8:
                    jSONObject.put("queueType", "LIVE_TV");
                    break;
                case 9:
                    jSONObject.put("queueType", "MOVIE");
                    break;
            }
            if (!TextUtils.isEmpty(this.f9720j)) {
                jSONObject.put("name", this.f9720j);
            }
            MediaQueueContainerMetadata mediaQueueContainerMetadata = this.f9721m;
            if (mediaQueueContainerMetadata != null) {
                jSONObject.put("containerMetadata", mediaQueueContainerMetadata.zza());
            }
            String zza = MediaCommon.zza(Integer.valueOf(this.f9722n));
            if (zza != null) {
                jSONObject.put("repeatMode", zza);
            }
            ArrayList arrayList = this.f9723p;
            if (arrayList != null && !arrayList.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = this.f9723p.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((MediaQueueItem) it.next()).toJson());
                }
                jSONObject.put(FirebaseAnalytics.Param.ITEMS, jSONArray);
            }
            jSONObject.put("startIndex", this.f9724q);
            long j7 = this.f9725r;
            if (j7 != -1) {
                jSONObject.put("startTime", CastUtils.millisecToSec(j7));
            }
            jSONObject.put("shuffle", this.f9726s);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    @ShowFirstParty
    public final boolean zzk() {
        return this.f9726s;
    }
}
