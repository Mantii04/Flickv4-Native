package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import b.c;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.analytics.FirebaseAnalytics;
import flix.com.vision.subtitles.OpenSubtitles;
import io.reactivex.annotations.SchedulerSupport;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class MediaMetadata extends AbstractSafeParcelable {

    /* renamed from: m, reason: collision with root package name */
    public static final zzcd f9707m;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f9708b;

    /* renamed from: e, reason: collision with root package name */
    public final Bundle f9709e;

    /* renamed from: f, reason: collision with root package name */
    public int f9710f;

    /* renamed from: j, reason: collision with root package name */
    public static final String[] f9706j = {SchedulerSupport.NONE, "String", "int", "double", "ISO-8601 date String", "Time in milliseconds as long"};
    public static final Parcelable.Creator<MediaMetadata> CREATOR = new zzce();

    @KeepForSdk
    public class Writer {
        public Writer(MediaMetadata mediaMetadata) {
        }
    }

    static {
        zzcd zzcdVar = new zzcd();
        zzcdVar.zzb("com.google.android.gms.cast.metadata.CREATION_DATE", "creationDateTime", 4);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.RELEASE_DATE", "releaseDate", 4);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.BROADCAST_DATE", "originalAirdate", 4);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.TITLE", "title", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.SUBTITLE", "subtitle", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.ARTIST", "artist", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.ALBUM_ARTIST", "albumArtist", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.ALBUM_TITLE", "albumName", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.COMPOSER", "composer", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.DISC_NUMBER", "discNumber", 2);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.TRACK_NUMBER", "trackNumber", 2);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.SEASON_NUMBER", OpenSubtitles.Params.Key.SEASON, 2);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.EPISODE_NUMBER", OpenSubtitles.Params.Key.EPISODE, 2);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.SERIES_TITLE", "seriesTitle", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.STUDIO", "studio", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.WIDTH", "width", 2);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.HEIGHT", "height", 2);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.LOCATION_NAME", FirebaseAnalytics.Param.LOCATION, 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "latitude", 3);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "longitude", 3);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.SECTION_DURATION", "sectionDuration", 5);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA", "sectionStartTimeInMedia", 5);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME", "sectionStartAbsoluteTime", 5);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER", "sectionStartTimeInContainer", 5);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.QUEUE_ITEM_ID", "queueItemId", 2);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.BOOK_TITLE", "bookTitle", 1);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.CHAPTER_NUMBER", "chapterNumber", 2);
        zzcdVar.zzb("com.google.android.gms.cast.metadata.CHAPTER_TITLE", "chapterTitle", 1);
        f9707m = zzcdVar;
    }

    public MediaMetadata() {
        this(0);
    }

    public static boolean a(Bundle bundle, Bundle bundle2) {
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            Object obj2 = bundle2.get(str);
            if ((obj instanceof Bundle) && (obj2 instanceof Bundle) && !a((Bundle) obj, (Bundle) obj2)) {
                return false;
            }
            if (obj == null) {
                if (obj2 != null || !bundle2.containsKey(str)) {
                    return false;
                }
            } else if (!obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }

    @KeepForSdk
    public static void throwIfWrongType(String str, int i2) throws IllegalArgumentException {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("null and empty keys are not allowed");
        }
        int zza = f9707m.zza(str);
        if (zza != i2 && zza != 0) {
            throw new IllegalArgumentException(c.l("Value for ", str, " must be a ", f9706j[i2]));
        }
    }

    public void addImage(WebImage webImage) {
        this.f9708b.add(webImage);
    }

    public void clear() {
        this.f9709e.clear();
        this.f9708b.clear();
    }

    public boolean containsKey(String str) {
        return this.f9709e.containsKey(str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaMetadata)) {
            return false;
        }
        MediaMetadata mediaMetadata = (MediaMetadata) obj;
        return a(this.f9709e, mediaMetadata.f9709e) && this.f9708b.equals(mediaMetadata.f9708b);
    }

    public List<WebImage> getImages() {
        return this.f9708b;
    }

    public int getMediaType() {
        return this.f9710f;
    }

    public String getString(String str) {
        throwIfWrongType(str, 1);
        return this.f9709e.getString(str);
    }

    public long getTimeMillis(String str) {
        throwIfWrongType(str, 5);
        return this.f9709e.getLong(str);
    }

    public boolean hasImages() {
        ArrayList arrayList = this.f9708b;
        return (arrayList == null || arrayList.isEmpty()) ? false : true;
    }

    public int hashCode() {
        int i2 = 17;
        Bundle bundle = this.f9709e;
        if (bundle != null) {
            Iterator<String> it = bundle.keySet().iterator();
            while (it.hasNext()) {
                Object obj = bundle.get(it.next());
                i2 = (i2 * 31) + (obj != null ? obj.hashCode() : 0);
            }
        }
        return this.f9708b.hashCode() + (i2 * 31);
    }

    public void putString(String str, String str2) {
        throwIfWrongType(str, 1);
        this.f9709e.putString(str, str2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 2, getImages(), false);
        SafeParcelWriter.writeBundle(parcel, 3, this.f9709e, false);
        SafeParcelWriter.writeInt(parcel, 4, getMediaType());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final JSONObject zza() {
        Bundle bundle;
        zzcd zzcdVar;
        String zzc;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("metadataType", this.f9710f);
        } catch (JSONException unused) {
        }
        JSONArray zzc2 = com.google.android.gms.cast.internal.media.zza.zzc(this.f9708b);
        if (zzc2.length() != 0) {
            try {
                jSONObject.put("images", zzc2);
            } catch (JSONException unused2) {
            }
        }
        ArrayList arrayList = new ArrayList();
        int i2 = this.f9710f;
        if (i2 == 0) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i2 == 1) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.STUDIO", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i2 == 2) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.SERIES_TITLE", "com.google.android.gms.cast.metadata.SEASON_NUMBER", "com.google.android.gms.cast.metadata.EPISODE_NUMBER", "com.google.android.gms.cast.metadata.BROADCAST_DATE");
        } else if (i2 == 3) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.ALBUM_TITLE", "com.google.android.gms.cast.metadata.ALBUM_ARTIST", "com.google.android.gms.cast.metadata.COMPOSER", "com.google.android.gms.cast.metadata.TRACK_NUMBER", "com.google.android.gms.cast.metadata.DISC_NUMBER", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i2 == 4) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.LOCATION_NAME", "com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "com.google.android.gms.cast.metadata.WIDTH", "com.google.android.gms.cast.metadata.HEIGHT", "com.google.android.gms.cast.metadata.CREATION_DATE");
        } else if (i2 == 5) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.CHAPTER_TITLE", "com.google.android.gms.cast.metadata.CHAPTER_NUMBER", "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.BOOK_TITLE", "com.google.android.gms.cast.metadata.SUBTITLE");
        }
        Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.SECTION_DURATION", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA", "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER", "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID");
        try {
            Iterator it = arrayList.iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                bundle = this.f9709e;
                if (!hasNext) {
                    break;
                }
                String str = (String) it.next();
                if (str != null && bundle.containsKey(str) && (zzc = (zzcdVar = f9707m).zzc(str)) != null) {
                    int zza = zzcdVar.zza(str);
                    if (zza != 1) {
                        if (zza == 2) {
                            jSONObject.put(zzc, bundle.getInt(str));
                        } else if (zza == 3) {
                            jSONObject.put(zzc, bundle.getDouble(str));
                        } else if (zza != 4) {
                            if (zza == 5) {
                                jSONObject.put(zzc, CastUtils.millisecToSec(bundle.getLong(str)));
                            }
                        }
                    }
                    jSONObject.put(zzc, bundle.getString(str));
                }
            }
            for (String str2 : bundle.keySet()) {
                if (!str2.startsWith("com.google.")) {
                    Object obj = bundle.get(str2);
                    if (obj instanceof String) {
                        jSONObject.put(str2, obj);
                    } else if (obj instanceof Integer) {
                        jSONObject.put(str2, obj);
                    } else if (obj instanceof Double) {
                        jSONObject.put(str2, obj);
                    }
                }
            }
        } catch (JSONException unused3) {
        }
        return jSONObject;
    }

    public final void zzc(JSONObject jSONObject) {
        clear();
        this.f9710f = 0;
        try {
            this.f9710f = jSONObject.getInt("metadataType");
        } catch (JSONException unused) {
        }
        JSONArray optJSONArray = jSONObject.optJSONArray("images");
        if (optJSONArray != null) {
            com.google.android.gms.cast.internal.media.zza.zzd(this.f9708b, optJSONArray);
        }
        ArrayList arrayList = new ArrayList();
        int i2 = this.f9710f;
        if (i2 == 0) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i2 == 1) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.STUDIO", "com.google.android.gms.cast.metadata.SUBTITLE", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i2 == 2) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.SERIES_TITLE", "com.google.android.gms.cast.metadata.SEASON_NUMBER", "com.google.android.gms.cast.metadata.EPISODE_NUMBER", "com.google.android.gms.cast.metadata.BROADCAST_DATE");
        } else if (i2 == 3) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ALBUM_TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.ALBUM_ARTIST", "com.google.android.gms.cast.metadata.COMPOSER", "com.google.android.gms.cast.metadata.TRACK_NUMBER", "com.google.android.gms.cast.metadata.DISC_NUMBER", "com.google.android.gms.cast.metadata.RELEASE_DATE");
        } else if (i2 == 4) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.ARTIST", "com.google.android.gms.cast.metadata.LOCATION_NAME", "com.google.android.gms.cast.metadata.LOCATION_LATITUDE", "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE", "com.google.android.gms.cast.metadata.WIDTH", "com.google.android.gms.cast.metadata.HEIGHT", "com.google.android.gms.cast.metadata.CREATION_DATE");
        } else if (i2 == 5) {
            Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.CHAPTER_TITLE", "com.google.android.gms.cast.metadata.CHAPTER_NUMBER", "com.google.android.gms.cast.metadata.TITLE", "com.google.android.gms.cast.metadata.BOOK_TITLE", "com.google.android.gms.cast.metadata.SUBTITLE");
        }
        Collections.addAll(arrayList, "com.google.android.gms.cast.metadata.SECTION_DURATION", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_MEDIA", "com.google.android.gms.cast.metadata.SECTION_START_ABSOLUTE_TIME", "com.google.android.gms.cast.metadata.SECTION_START_TIME_IN_CONTAINER", "com.google.android.gms.cast.metadata.QUEUE_ITEM_ID");
        HashSet hashSet = new HashSet(arrayList);
        try {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next != null && !"metadataType".equals(next)) {
                    zzcd zzcdVar = f9707m;
                    String zzd = zzcdVar.zzd(next);
                    Bundle bundle = this.f9709e;
                    if (zzd == null) {
                        Object obj = jSONObject.get(next);
                        if (obj instanceof String) {
                            bundle.putString(next, (String) obj);
                        } else if (obj instanceof Integer) {
                            bundle.putInt(next, ((Integer) obj).intValue());
                        } else if (obj instanceof Double) {
                            bundle.putDouble(next, ((Double) obj).doubleValue());
                        }
                    } else if (hashSet.contains(zzd)) {
                        try {
                            Object obj2 = jSONObject.get(next);
                            if (obj2 != null) {
                                int zza = zzcdVar.zza(zzd);
                                if (zza != 1) {
                                    if (zza != 2) {
                                        if (zza == 3) {
                                            double optDouble = jSONObject.optDouble(next);
                                            if (!Double.isNaN(optDouble)) {
                                                bundle.putDouble(zzd, optDouble);
                                            }
                                        } else if (zza != 4) {
                                            if (zza == 5) {
                                                bundle.putLong(zzd, CastUtils.secToMillisec(jSONObject.optLong(next)));
                                            }
                                        } else if (obj2 instanceof String) {
                                            String str = (String) obj2;
                                            if (com.google.android.gms.cast.internal.media.zza.zzb(str) != null) {
                                                bundle.putString(zzd, str);
                                            }
                                        }
                                    } else if (obj2 instanceof Integer) {
                                        bundle.putInt(zzd, ((Integer) obj2).intValue());
                                    }
                                } else if (obj2 instanceof String) {
                                    bundle.putString(zzd, (String) obj2);
                                }
                            }
                        } catch (JSONException unused2) {
                        }
                    }
                }
            }
        } catch (JSONException unused3) {
        }
    }

    public MediaMetadata(int i2) {
        this(new ArrayList(), new Bundle(), i2);
    }

    public MediaMetadata(ArrayList arrayList, Bundle bundle, int i2) {
        new Writer(this);
        this.f9708b = arrayList;
        this.f9709e = bundle;
        this.f9710f = i2;
    }
}
