package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
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
public class MediaQueueContainerMetadata extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MediaQueueContainerMetadata> CREATOR = new zzcg();

    /* renamed from: b, reason: collision with root package name */
    public int f9711b = 0;

    /* renamed from: e, reason: collision with root package name */
    public String f9712e = null;

    /* renamed from: f, reason: collision with root package name */
    public ArrayList f9713f = null;

    /* renamed from: j, reason: collision with root package name */
    public ArrayList f9714j = null;

    /* renamed from: m, reason: collision with root package name */
    public double f9715m = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;

    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final MediaQueueContainerMetadata f9716a;

        public Builder() {
            MediaQueueContainerMetadata mediaQueueContainerMetadata = new MediaQueueContainerMetadata();
            mediaQueueContainerMetadata.f9711b = 0;
            mediaQueueContainerMetadata.f9712e = null;
            mediaQueueContainerMetadata.f9713f = null;
            mediaQueueContainerMetadata.f9714j = null;
            mediaQueueContainerMetadata.f9715m = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            this.f9716a = mediaQueueContainerMetadata;
        }

        public MediaQueueContainerMetadata build() {
            MediaQueueContainerMetadata mediaQueueContainerMetadata = new MediaQueueContainerMetadata();
            MediaQueueContainerMetadata mediaQueueContainerMetadata2 = this.f9716a;
            mediaQueueContainerMetadata.f9711b = mediaQueueContainerMetadata2.f9711b;
            mediaQueueContainerMetadata.f9712e = mediaQueueContainerMetadata2.f9712e;
            mediaQueueContainerMetadata.f9713f = mediaQueueContainerMetadata2.f9713f;
            mediaQueueContainerMetadata.f9714j = mediaQueueContainerMetadata2.f9714j;
            mediaQueueContainerMetadata.f9715m = mediaQueueContainerMetadata2.f9715m;
            return mediaQueueContainerMetadata;
        }

        public final Builder zza(JSONObject jSONObject) {
            char c7;
            Parcelable.Creator<MediaQueueContainerMetadata> creator = MediaQueueContainerMetadata.CREATOR;
            MediaQueueContainerMetadata mediaQueueContainerMetadata = this.f9716a;
            mediaQueueContainerMetadata.f9711b = 0;
            mediaQueueContainerMetadata.f9712e = null;
            mediaQueueContainerMetadata.f9713f = null;
            mediaQueueContainerMetadata.f9714j = null;
            mediaQueueContainerMetadata.f9715m = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            String optString = jSONObject.optString("containerType", "");
            int hashCode = optString.hashCode();
            if (hashCode != 6924225) {
                if (hashCode == 828666841 && optString.equals("GENERIC_CONTAINER")) {
                    c7 = 0;
                }
                c7 = 65535;
            } else {
                if (optString.equals("AUDIOBOOK_CONTAINER")) {
                    c7 = 1;
                }
                c7 = 65535;
            }
            if (c7 == 0) {
                mediaQueueContainerMetadata.f9711b = 0;
            } else if (c7 == 1) {
                mediaQueueContainerMetadata.f9711b = 1;
            }
            mediaQueueContainerMetadata.f9712e = CastUtils.optStringOrNull(jSONObject, "title");
            JSONArray optJSONArray = jSONObject.optJSONArray("sections");
            if (optJSONArray != null) {
                ArrayList arrayList = new ArrayList();
                mediaQueueContainerMetadata.f9713f = arrayList;
                for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i2);
                    if (optJSONObject != null) {
                        MediaMetadata mediaMetadata = new MediaMetadata();
                        mediaMetadata.zzc(optJSONObject);
                        arrayList.add(mediaMetadata);
                    }
                }
            }
            JSONArray optJSONArray2 = jSONObject.optJSONArray("containerImages");
            if (optJSONArray2 != null) {
                ArrayList arrayList2 = new ArrayList();
                mediaQueueContainerMetadata.f9714j = arrayList2;
                com.google.android.gms.cast.internal.media.zza.zzd(arrayList2, optJSONArray2);
            }
            mediaQueueContainerMetadata.f9715m = jSONObject.optDouble("containerDuration", mediaQueueContainerMetadata.f9715m);
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface MediaQueueContainerType {
    }

    private MediaQueueContainerMetadata() {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaQueueContainerMetadata)) {
            return false;
        }
        MediaQueueContainerMetadata mediaQueueContainerMetadata = (MediaQueueContainerMetadata) obj;
        return this.f9711b == mediaQueueContainerMetadata.f9711b && TextUtils.equals(this.f9712e, mediaQueueContainerMetadata.f9712e) && Objects.equal(this.f9713f, mediaQueueContainerMetadata.f9713f) && Objects.equal(this.f9714j, mediaQueueContainerMetadata.f9714j) && this.f9715m == mediaQueueContainerMetadata.f9715m;
    }

    public double getContainerDuration() {
        return this.f9715m;
    }

    public List<WebImage> getContainerImages() {
        ArrayList arrayList = this.f9714j;
        if (arrayList == null) {
            return null;
        }
        return Collections.unmodifiableList(arrayList);
    }

    public int getContainerType() {
        return this.f9711b;
    }

    public List<MediaMetadata> getSections() {
        ArrayList arrayList = this.f9713f;
        if (arrayList == null) {
            return null;
        }
        return Collections.unmodifiableList(arrayList);
    }

    public String getTitle() {
        return this.f9712e;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f9711b), this.f9712e, this.f9713f, this.f9714j, Double.valueOf(this.f9715m));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, getContainerType());
        SafeParcelWriter.writeString(parcel, 3, getTitle(), false);
        SafeParcelWriter.writeTypedList(parcel, 4, getSections(), false);
        SafeParcelWriter.writeTypedList(parcel, 5, getContainerImages(), false);
        SafeParcelWriter.writeDouble(parcel, 6, getContainerDuration());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final JSONObject zza() {
        JSONObject jSONObject = new JSONObject();
        try {
            int i2 = this.f9711b;
            if (i2 == 0) {
                jSONObject.put("containerType", "GENERIC_CONTAINER");
            } else if (i2 == 1) {
                jSONObject.put("containerType", "AUDIOBOOK_CONTAINER");
            }
            if (!TextUtils.isEmpty(this.f9712e)) {
                jSONObject.put("title", this.f9712e);
            }
            ArrayList arrayList = this.f9713f;
            if (arrayList != null && !arrayList.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                Iterator it = this.f9713f.iterator();
                while (it.hasNext()) {
                    jSONArray.put(((MediaMetadata) it.next()).zza());
                }
                jSONObject.put("sections", jSONArray);
            }
            ArrayList arrayList2 = this.f9714j;
            if (arrayList2 != null && !arrayList2.isEmpty()) {
                jSONObject.put("containerImages", com.google.android.gms.cast.internal.media.zza.zzc(this.f9714j));
            }
            jSONObject.put("containerDuration", this.f9715m);
        } catch (JSONException unused) {
        }
        return jSONObject;
    }
}
