package com.google.android.gms.cast;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.JsonUtils;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class
@SafeParcelable.Reserved
/* loaded from: classes.dex */
public class MediaStatus extends AbstractSafeParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<MediaStatus> CREATOR;

    /* renamed from: A, reason: collision with root package name */
    public boolean f9746A;

    /* renamed from: B, reason: collision with root package name */
    public AdBreakStatus f9747B;

    /* renamed from: C, reason: collision with root package name */
    public VideoInfo f9748C;

    /* renamed from: D, reason: collision with root package name */
    public MediaLiveSeekableRange f9749D;

    /* renamed from: E, reason: collision with root package name */
    public MediaQueueData f9750E;

    /* renamed from: F, reason: collision with root package name */
    public boolean f9751F;

    /* renamed from: G, reason: collision with root package name */
    public final SparseArray f9752G;

    /* renamed from: b, reason: collision with root package name */
    public MediaInfo f9753b;

    /* renamed from: e, reason: collision with root package name */
    public long f9754e;

    /* renamed from: f, reason: collision with root package name */
    public int f9755f;

    /* renamed from: j, reason: collision with root package name */
    public double f9756j;

    /* renamed from: m, reason: collision with root package name */
    public int f9757m;

    /* renamed from: n, reason: collision with root package name */
    public int f9758n;

    /* renamed from: p, reason: collision with root package name */
    public long f9759p;

    /* renamed from: q, reason: collision with root package name */
    public long f9760q;

    /* renamed from: r, reason: collision with root package name */
    public double f9761r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f9762s;

    /* renamed from: t, reason: collision with root package name */
    public long[] f9763t;

    /* renamed from: u, reason: collision with root package name */
    public int f9764u;

    /* renamed from: v, reason: collision with root package name */
    public int f9765v;

    /* renamed from: w, reason: collision with root package name */
    public String f9766w;

    /* renamed from: x, reason: collision with root package name */
    public JSONObject f9767x;

    /* renamed from: y, reason: collision with root package name */
    public int f9768y;

    /* renamed from: z, reason: collision with root package name */
    public final ArrayList f9769z;

    @KeepForSdk
    public static class Builder {
        public Builder() {
            new ArrayList();
        }
    }

    @KeepForSdk
    public class Writer {
        public Writer(MediaStatus mediaStatus) {
        }
    }

    static {
        new Logger("MediaStatus");
        CREATOR = new zzcm();
    }

    @SafeParcelable.Constructor
    @SuppressLint({"NonSdkVisibleApi"})
    public MediaStatus(@SafeParcelable.Param MediaInfo mediaInfo, @SafeParcelable.Param long j7, @SafeParcelable.Param int i2, @SafeParcelable.Param double d7, @SafeParcelable.Param int i7, @SafeParcelable.Param int i8, @SafeParcelable.Param long j8, @SafeParcelable.Param long j9, @SafeParcelable.Param double d8, @SafeParcelable.Param boolean z6, @SafeParcelable.Param long[] jArr, @SafeParcelable.Param int i9, @SafeParcelable.Param int i10, @SafeParcelable.Param String str, @SafeParcelable.Param int i11, @SafeParcelable.Param List list, @SafeParcelable.Param boolean z7, @SafeParcelable.Param AdBreakStatus adBreakStatus, @SafeParcelable.Param VideoInfo videoInfo, @SafeParcelable.Param MediaLiveSeekableRange mediaLiveSeekableRange, @SafeParcelable.Param MediaQueueData mediaQueueData) {
        this.f9769z = new ArrayList();
        this.f9752G = new SparseArray();
        new Writer(this);
        this.f9753b = mediaInfo;
        this.f9754e = j7;
        this.f9755f = i2;
        this.f9756j = d7;
        this.f9757m = i7;
        this.f9758n = i8;
        this.f9759p = j8;
        this.f9760q = j9;
        this.f9761r = d8;
        this.f9762s = z6;
        this.f9763t = jArr;
        this.f9764u = i9;
        this.f9765v = i10;
        this.f9766w = str;
        if (str != null) {
            try {
                this.f9767x = new JSONObject(this.f9766w);
            } catch (JSONException unused) {
                this.f9767x = null;
                this.f9766w = null;
            }
        } else {
            this.f9767x = null;
        }
        this.f9768y = i11;
        if (list != null && !list.isEmpty()) {
            a(list);
        }
        this.f9746A = z7;
        this.f9747B = adBreakStatus;
        this.f9748C = videoInfo;
        this.f9749D = mediaLiveSeekableRange;
        this.f9750E = mediaQueueData;
        boolean z8 = false;
        if (mediaQueueData != null && mediaQueueData.zzk()) {
            z8 = true;
        }
        this.f9751F = z8;
    }

    public final void a(List list) {
        ArrayList arrayList = this.f9769z;
        arrayList.clear();
        SparseArray sparseArray = this.f9752G;
        sparseArray.clear();
        for (int i2 = 0; i2 < list.size(); i2++) {
            MediaQueueItem mediaQueueItem = (MediaQueueItem) list.get(i2);
            arrayList.add(mediaQueueItem);
            sparseArray.put(mediaQueueItem.getItemId(), Integer.valueOf(i2));
        }
    }

    public boolean equals(Object obj) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        if (this != obj) {
            if (obj instanceof MediaStatus) {
                MediaStatus mediaStatus = (MediaStatus) obj;
                if ((this.f9767x == null) == (mediaStatus.f9767x == null) && this.f9754e == mediaStatus.f9754e && this.f9755f == mediaStatus.f9755f && this.f9756j == mediaStatus.f9756j && this.f9757m == mediaStatus.f9757m && this.f9758n == mediaStatus.f9758n && this.f9759p == mediaStatus.f9759p && this.f9761r == mediaStatus.f9761r && this.f9762s == mediaStatus.f9762s && this.f9764u == mediaStatus.f9764u && this.f9765v == mediaStatus.f9765v && this.f9768y == mediaStatus.f9768y && Arrays.equals(this.f9763t, mediaStatus.f9763t) && CastUtils.zze(Long.valueOf(this.f9760q), Long.valueOf(mediaStatus.f9760q)) && CastUtils.zze(this.f9769z, mediaStatus.f9769z) && CastUtils.zze(this.f9753b, mediaStatus.f9753b) && (((jSONObject = this.f9767x) == null || (jSONObject2 = mediaStatus.f9767x) == null || JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) && this.f9746A == mediaStatus.isPlayingAd() && CastUtils.zze(this.f9747B, mediaStatus.f9747B) && CastUtils.zze(this.f9748C, mediaStatus.f9748C) && CastUtils.zze(this.f9749D, mediaStatus.f9749D) && Objects.equal(this.f9750E, mediaStatus.f9750E) && this.f9751F == mediaStatus.f9751F)) {
                }
            }
            return false;
        }
        return true;
    }

    public long[] getActiveTrackIds() {
        return this.f9763t;
    }

    public AdBreakStatus getAdBreakStatus() {
        return this.f9747B;
    }

    public AdBreakClipInfo getCurrentAdBreakClip() {
        MediaInfo mediaInfo;
        List<AdBreakClipInfo> adBreakClips;
        AdBreakStatus adBreakStatus = this.f9747B;
        if (adBreakStatus == null) {
            return null;
        }
        String breakClipId = adBreakStatus.getBreakClipId();
        if (!TextUtils.isEmpty(breakClipId) && (mediaInfo = this.f9753b) != null && (adBreakClips = mediaInfo.getAdBreakClips()) != null && !adBreakClips.isEmpty()) {
            for (AdBreakClipInfo adBreakClipInfo : adBreakClips) {
                if (breakClipId.equals(adBreakClipInfo.getId())) {
                    return adBreakClipInfo;
                }
            }
        }
        return null;
    }

    public int getCurrentItemId() {
        return this.f9755f;
    }

    public JSONObject getCustomData() {
        return this.f9767x;
    }

    public int getIdleReason() {
        return this.f9758n;
    }

    public Integer getIndexById(int i2) {
        return (Integer) this.f9752G.get(i2);
    }

    public MediaQueueItem getItemById(int i2) {
        Integer num = (Integer) this.f9752G.get(i2);
        if (num == null) {
            return null;
        }
        return (MediaQueueItem) this.f9769z.get(num.intValue());
    }

    public MediaLiveSeekableRange getLiveSeekableRange() {
        return this.f9749D;
    }

    public int getLoadingItemId() {
        return this.f9764u;
    }

    public MediaInfo getMediaInfo() {
        return this.f9753b;
    }

    public double getPlaybackRate() {
        return this.f9756j;
    }

    public int getPlayerState() {
        return this.f9757m;
    }

    public int getPreloadedItemId() {
        return this.f9765v;
    }

    public MediaQueueData getQueueData() {
        return this.f9750E;
    }

    public MediaQueueItem getQueueItemById(int i2) {
        return getItemById(i2);
    }

    public int getQueueItemCount() {
        return this.f9769z.size();
    }

    public int getQueueRepeatMode() {
        return this.f9768y;
    }

    public long getStreamPosition() {
        return this.f9759p;
    }

    public double getStreamVolume() {
        return this.f9761r;
    }

    public VideoInfo getVideoInfo() {
        return this.f9748C;
    }

    public int hashCode() {
        return Objects.hashCode(this.f9753b, Long.valueOf(this.f9754e), Integer.valueOf(this.f9755f), Double.valueOf(this.f9756j), Integer.valueOf(this.f9757m), Integer.valueOf(this.f9758n), Long.valueOf(this.f9759p), Long.valueOf(this.f9760q), Double.valueOf(this.f9761r), Boolean.valueOf(this.f9762s), Integer.valueOf(Arrays.hashCode(this.f9763t)), Integer.valueOf(this.f9764u), Integer.valueOf(this.f9765v), String.valueOf(this.f9767x), Integer.valueOf(this.f9768y), this.f9769z, Boolean.valueOf(this.f9746A), this.f9747B, this.f9748C, this.f9749D, this.f9750E);
    }

    public boolean isMediaCommandSupported(long j7) {
        return (j7 & this.f9760q) != 0;
    }

    public boolean isMute() {
        return this.f9762s;
    }

    public boolean isPlayingAd() {
        return this.f9746A;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        JSONObject jSONObject = this.f9767x;
        this.f9766w = jSONObject == null ? null : jSONObject.toString();
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getMediaInfo(), i2, false);
        SafeParcelWriter.writeLong(parcel, 3, this.f9754e);
        SafeParcelWriter.writeInt(parcel, 4, getCurrentItemId());
        SafeParcelWriter.writeDouble(parcel, 5, getPlaybackRate());
        SafeParcelWriter.writeInt(parcel, 6, getPlayerState());
        SafeParcelWriter.writeInt(parcel, 7, getIdleReason());
        SafeParcelWriter.writeLong(parcel, 8, getStreamPosition());
        SafeParcelWriter.writeLong(parcel, 9, this.f9760q);
        SafeParcelWriter.writeDouble(parcel, 10, getStreamVolume());
        SafeParcelWriter.writeBoolean(parcel, 11, isMute());
        SafeParcelWriter.writeLongArray(parcel, 12, getActiveTrackIds(), false);
        SafeParcelWriter.writeInt(parcel, 13, getLoadingItemId());
        SafeParcelWriter.writeInt(parcel, 14, getPreloadedItemId());
        SafeParcelWriter.writeString(parcel, 15, this.f9766w, false);
        SafeParcelWriter.writeInt(parcel, 16, this.f9768y);
        SafeParcelWriter.writeTypedList(parcel, 17, this.f9769z, false);
        SafeParcelWriter.writeBoolean(parcel, 18, isPlayingAd());
        SafeParcelWriter.writeParcelable(parcel, 19, getAdBreakStatus(), i2, false);
        SafeParcelWriter.writeParcelable(parcel, 20, getVideoInfo(), i2, false);
        SafeParcelWriter.writeParcelable(parcel, 21, getLiveSeekableRange(), i2, false);
        SafeParcelWriter.writeParcelable(parcel, 22, getQueueData(), i2, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX WARN: Code restructure failed: missing block: B:277:0x020b, code lost:
    
        if (r12 != 3) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x020f, code lost:
    
        if (r5 != 2) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0212, code lost:
    
        if (r13 == 0) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x0188, code lost:
    
        if (r25.f9763t != null) goto L103;
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0355 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0404 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:182:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x042e  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0383 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x03cc  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0336 A[Catch: JSONException -> 0x033d, TryCatch #2 {JSONException -> 0x033d, blocks: (B:260:0x030e, B:262:0x0336, B:264:0x033f), top: B:259:0x030e }] */
    /* JADX WARN: Removed duplicated region for block: B:272:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(org.json.JSONObject r26, int r27) throws org.json.JSONException {
        /*
            Method dump skipped, instructions count: 1201
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.MediaStatus.zza(org.json.JSONObject, int):int");
    }

    public final long zzb() {
        return this.f9754e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001a, code lost:
    
        if (r2 != 3) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzd() {
        /*
            r5 = this;
            com.google.android.gms.cast.MediaInfo r0 = r5.f9753b
            if (r0 != 0) goto L6
            r0 = -1
            goto La
        L6:
            int r0 = r0.getStreamType()
        La:
            int r1 = r5.f9757m
            int r2 = r5.f9758n
            int r3 = r5.f9764u
            r4 = 1
            if (r1 == r4) goto L14
            goto L23
        L14:
            if (r2 == r4) goto L20
            r1 = 2
            if (r2 == r1) goto L1d
            r0 = 3
            if (r2 == r0) goto L20
            goto L22
        L1d:
            if (r0 == r1) goto L23
            goto L22
        L20:
            if (r3 != 0) goto L23
        L22:
            return r4
        L23:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.MediaStatus.zzd():boolean");
    }

    @KeepForSdk
    public MediaStatus(JSONObject jSONObject) throws JSONException {
        this(null, 0L, 0, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, 0, 0, 0L, 0L, FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, false, null, 0, 0, null, 0, null, false, null, null, null, null);
        zza(jSONObject, 0);
    }
}
