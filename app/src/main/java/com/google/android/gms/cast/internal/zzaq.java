package com.google.android.gms.cast.internal;

import A.i;
import android.os.SystemClock;
import androidx.media3.common.PlaybackException;
import androidx.media3.exoplayer.Renderer;
import com.google.android.gms.cast.AdBreakStatus;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaLiveSeekableRange;
import com.google.android.gms.cast.MediaLoadRequestData;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaSeekOptions;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.internal.media.MediaCommon;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.Iterator;
import java.util.Locale;
import java.util.regex.Pattern;
import org.apache.commons.lang3.time.DateUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzaq extends zzd {

    /* renamed from: w, reason: collision with root package name */
    public static final String f10356w;

    /* renamed from: e, reason: collision with root package name */
    public long f10357e;

    /* renamed from: f, reason: collision with root package name */
    public MediaStatus f10358f;

    /* renamed from: g, reason: collision with root package name */
    public Long f10359g;

    /* renamed from: h, reason: collision with root package name */
    public zzan f10360h;

    /* renamed from: i, reason: collision with root package name */
    public int f10361i;

    /* renamed from: j, reason: collision with root package name */
    public final zzau f10362j;

    /* renamed from: k, reason: collision with root package name */
    public final zzau f10363k;

    /* renamed from: l, reason: collision with root package name */
    public final zzau f10364l;

    /* renamed from: m, reason: collision with root package name */
    public final zzau f10365m;

    /* renamed from: n, reason: collision with root package name */
    public final zzau f10366n;

    /* renamed from: o, reason: collision with root package name */
    public final zzau f10367o;

    /* renamed from: p, reason: collision with root package name */
    public final zzau f10368p;

    /* renamed from: q, reason: collision with root package name */
    public final zzau f10369q;

    /* renamed from: r, reason: collision with root package name */
    public final zzau f10370r;

    /* renamed from: s, reason: collision with root package name */
    public final zzau f10371s;

    /* renamed from: t, reason: collision with root package name */
    public final zzau f10372t;

    /* renamed from: u, reason: collision with root package name */
    public final zzau f10373u;

    /* renamed from: v, reason: collision with root package name */
    public final zzau f10374v;

    static {
        Pattern pattern = CastUtils.f10332a;
        f10356w = "urn:x-cast:com.google.cast.media";
    }

    public zzaq(String str) {
        super(f10356w, "MediaControlChannel", null);
        this.f10361i = -1;
        zzau zzauVar = new zzau(DateUtils.MILLIS_PER_DAY, "load");
        this.f10362j = zzauVar;
        zzau zzauVar2 = new zzau(DateUtils.MILLIS_PER_DAY, "pause");
        this.f10363k = zzauVar2;
        zzau zzauVar3 = new zzau(DateUtils.MILLIS_PER_DAY, "play");
        this.f10364l = zzauVar3;
        zzau zzauVar4 = new zzau(DateUtils.MILLIS_PER_DAY, "stop");
        zzau zzauVar5 = new zzau(Renderer.DEFAULT_DURATION_TO_PROGRESS_US, "seek");
        this.f10365m = zzauVar5;
        zzau zzauVar6 = new zzau(DateUtils.MILLIS_PER_DAY, "volume");
        this.f10366n = zzauVar6;
        zzau zzauVar7 = new zzau(DateUtils.MILLIS_PER_DAY, "mute");
        this.f10367o = zzauVar7;
        zzau zzauVar8 = new zzau(DateUtils.MILLIS_PER_DAY, "status");
        this.f10368p = zzauVar8;
        zzau zzauVar9 = new zzau(DateUtils.MILLIS_PER_DAY, "activeTracks");
        this.f10369q = zzauVar9;
        zzau zzauVar10 = new zzau(DateUtils.MILLIS_PER_DAY, "trackStyle");
        zzau zzauVar11 = new zzau(DateUtils.MILLIS_PER_DAY, "queueInsert");
        zzau zzauVar12 = new zzau(DateUtils.MILLIS_PER_DAY, "queueUpdate");
        this.f10370r = zzauVar12;
        zzau zzauVar13 = new zzau(DateUtils.MILLIS_PER_DAY, "queueRemove");
        zzau zzauVar14 = new zzau(DateUtils.MILLIS_PER_DAY, "queueReorder");
        zzau zzauVar15 = new zzau(DateUtils.MILLIS_PER_DAY, "queueFetchItemIds");
        this.f10371s = zzauVar15;
        zzau zzauVar16 = new zzau(DateUtils.MILLIS_PER_DAY, "queueFetchItemRange");
        this.f10373u = zzauVar16;
        this.f10372t = new zzau(DateUtils.MILLIS_PER_DAY, "queueFetchItems");
        zzau zzauVar17 = new zzau(DateUtils.MILLIS_PER_DAY, "setPlaybackRate");
        zzau zzauVar18 = new zzau(DateUtils.MILLIS_PER_DAY, "skipAd");
        this.f10374v = zzauVar18;
        zzc(zzauVar);
        zzc(zzauVar2);
        zzc(zzauVar3);
        zzc(zzauVar4);
        zzc(zzauVar5);
        zzc(zzauVar6);
        zzc(zzauVar7);
        zzc(zzauVar8);
        zzc(zzauVar9);
        zzc(zzauVar10);
        zzc(zzauVar11);
        zzc(zzauVar12);
        zzc(zzauVar13);
        zzc(zzauVar14);
        zzc(zzauVar15);
        zzc(zzauVar16);
        zzc(zzauVar16);
        zzc(zzauVar17);
        zzc(zzauVar18);
        c();
    }

    public static zzap b(JSONObject jSONObject) {
        MediaError.zza(jSONObject);
        zzap zzapVar = new zzap();
        Pattern pattern = CastUtils.f10332a;
        if (jSONObject.has("customData")) {
            jSONObject.optJSONObject("customData");
        }
        return zzapVar;
    }

    public static int[] e(JSONArray jSONArray) {
        if (jSONArray == null) {
            return null;
        }
        int[] iArr = new int[jSONArray.length()];
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            iArr[i2] = jSONArray.getInt(i2);
        }
        return iArr;
    }

    public final long a(long j7, double d7, long j8) {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f10357e;
        if (elapsedRealtime < 0) {
            elapsedRealtime = 0;
        }
        if (elapsedRealtime == 0) {
            return j7;
        }
        long j9 = j7 + ((long) (elapsedRealtime * d7));
        if (j8 > 0 && j9 > j8) {
            return j8;
        }
        if (j9 >= 0) {
            return j9;
        }
        return 0L;
    }

    public final void c() {
        this.f10357e = 0L;
        this.f10358f = null;
        Iterator it = zza().iterator();
        while (it.hasNext()) {
            ((zzau) it.next()).zzc(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_TIMEOUT);
        }
    }

    public final void d(JSONObject jSONObject, String str) {
        if (jSONObject.has("sequenceNumber")) {
            this.f10361i = jSONObject.optInt("sequenceNumber", -1);
        } else {
            this.f10395a.w(str.concat(" message is missing a sequence number."), new Object[0]);
        }
    }

    public final long zzA(zzas zzasVar, int i2, long j7, MediaQueueItem[] mediaQueueItemArr, int i7, Boolean bool, Integer num, JSONObject jSONObject) throws IllegalArgumentException, IllegalStateException, zzao {
        if (j7 != -1 && j7 < 0) {
            throw new IllegalArgumentException(i.i("playPosition cannot be negative: ", j7));
        }
        JSONObject jSONObject2 = new JSONObject();
        long zzd = zzd();
        try {
            jSONObject2.put("requestId", zzd);
            jSONObject2.put("type", "QUEUE_UPDATE");
            jSONObject2.put("mediaSessionId", zzn());
            if (i2 != 0) {
                jSONObject2.put("currentItemId", i2);
            }
            if (i7 != 0) {
                jSONObject2.put("jump", i7);
            }
            if (mediaQueueItemArr != null && mediaQueueItemArr.length > 0) {
                JSONArray jSONArray = new JSONArray();
                for (int i8 = 0; i8 < mediaQueueItemArr.length; i8++) {
                    jSONArray.put(i8, mediaQueueItemArr[i8].toJson());
                }
                jSONObject2.put(FirebaseAnalytics.Param.ITEMS, jSONArray);
            }
            if (bool != null) {
                jSONObject2.put("shuffle", bool);
            }
            String zza = MediaCommon.zza(num);
            if (zza != null) {
                jSONObject2.put("repeatMode", zza);
            }
            if (j7 != -1) {
                jSONObject2.put("currentTime", CastUtils.millisecToSec(j7));
            }
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
            int i9 = this.f10361i;
            if (i9 != -1) {
                jSONObject2.put("sequenceNumber", i9);
            }
        } catch (JSONException unused) {
        }
        zzg(jSONObject2.toString(), zzd, null);
        this.f10370r.zzb(zzd, new zzam(this, zzasVar));
        return zzd;
    }

    public final long zzB(zzas zzasVar) throws IllegalStateException {
        JSONObject jSONObject = new JSONObject();
        long zzd = zzd();
        try {
            jSONObject.put("requestId", zzd);
            jSONObject.put("type", "GET_STATUS");
            MediaStatus mediaStatus = this.f10358f;
            if (mediaStatus != null) {
                jSONObject.put("mediaSessionId", mediaStatus.zzb());
            }
        } catch (JSONException unused) {
        }
        zzg(jSONObject.toString(), zzd, null);
        this.f10368p.zzb(zzd, zzasVar);
        return zzd;
    }

    public final long zzC(zzas zzasVar, MediaSeekOptions mediaSeekOptions) throws IllegalStateException, zzao {
        JSONObject jSONObject = new JSONObject();
        long zzd = zzd();
        long position = mediaSeekOptions.isSeekToInfinite() ? 4294967296000L : mediaSeekOptions.getPosition();
        try {
            jSONObject.put("requestId", zzd);
            jSONObject.put("type", "SEEK");
            jSONObject.put("mediaSessionId", zzn());
            jSONObject.put("currentTime", CastUtils.millisecToSec(position));
            if (mediaSeekOptions.getResumeState() == 1) {
                jSONObject.put("resumeState", "PLAYBACK_START");
            } else if (mediaSeekOptions.getResumeState() == 2) {
                jSONObject.put("resumeState", "PLAYBACK_PAUSE");
            }
            if (mediaSeekOptions.getCustomData() != null) {
                jSONObject.put("customData", mediaSeekOptions.getCustomData());
            }
        } catch (JSONException unused) {
        }
        zzg(jSONObject.toString(), zzd, null);
        this.f10359g = Long.valueOf(position);
        this.f10365m.zzb(zzd, new zzal(this, zzasVar));
        return zzd;
    }

    public final long zzD(zzas zzasVar, long[] jArr) throws IllegalStateException, zzao {
        if (jArr == null) {
            throw new IllegalArgumentException("trackIds cannot be null");
        }
        JSONObject jSONObject = new JSONObject();
        long zzd = zzd();
        try {
            jSONObject.put("requestId", zzd);
            jSONObject.put("type", "EDIT_TRACKS_INFO");
            jSONObject.put("mediaSessionId", zzn());
            JSONArray jSONArray = new JSONArray();
            for (int i2 = 0; i2 < jArr.length; i2++) {
                jSONArray.put(i2, jArr[i2]);
            }
            jSONObject.put("activeTrackIds", jSONArray);
        } catch (JSONException unused) {
        }
        zzg(jSONObject.toString(), zzd, null);
        this.f10369q.zzb(zzd, zzasVar);
        return zzd;
    }

    public final long zzI(zzas zzasVar) throws IllegalStateException, zzao {
        JSONObject jSONObject = new JSONObject();
        long zzd = zzd();
        try {
            jSONObject.put("requestId", zzd);
            jSONObject.put("type", "SKIP_AD");
            jSONObject.put("mediaSessionId", zzn());
        } catch (JSONException e3) {
            Locale locale = Locale.ROOT;
            this.f10395a.w(i.k("Error creating SkipAd message: ", e3.getMessage()), new Object[0]);
        }
        zzg(jSONObject.toString(), zzd, null);
        this.f10374v.zzb(zzd, zzasVar);
        return zzd;
    }

    public final MediaInfo zzK() {
        MediaStatus mediaStatus = this.f10358f;
        if (mediaStatus == null) {
            return null;
        }
        return mediaStatus.getMediaInfo();
    }

    public final MediaStatus zzL() {
        return this.f10358f;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0266 A[Catch: JSONException -> 0x00d2, TryCatch #0 {JSONException -> 0x00d2, blocks: (B:3:0x0017, B:11:0x00a0, B:13:0x00ad, B:14:0x00ba, B:16:0x00c0, B:18:0x00d5, B:22:0x00db, B:24:0x00e8, B:26:0x00fd, B:38:0x013d, B:40:0x0152, B:42:0x016f, B:45:0x0175, B:47:0x017b, B:49:0x0181, B:63:0x0187, B:65:0x0194, B:67:0x019e, B:71:0x01a4, B:72:0x01ac, B:74:0x01b2, B:76:0x01c2, B:80:0x01c8, B:82:0x01d2, B:83:0x01e2, B:85:0x01e8, B:88:0x01f8, B:90:0x0202, B:92:0x020c, B:93:0x021c, B:95:0x0222, B:98:0x0232, B:100:0x023e, B:102:0x024d, B:107:0x0266, B:110:0x026b, B:112:0x0282, B:114:0x0286, B:116:0x0293, B:117:0x0296, B:119:0x029c, B:121:0x02a6, B:122:0x02a9, B:124:0x02ad, B:125:0x02b3, B:127:0x02b7, B:129:0x02bb, B:130:0x02be, B:132:0x02c2, B:134:0x02c6, B:135:0x02c9, B:137:0x02cd, B:139:0x02d1, B:140:0x02d4, B:142:0x02d8, B:144:0x02e2, B:145:0x02e5, B:147:0x02e9, B:149:0x02f3, B:150:0x0315, B:151:0x031d, B:153:0x0323, B:156:0x0272, B:157:0x0256, B:159:0x025c, B:163:0x02f7, B:165:0x02fd, B:166:0x0300, B:168:0x0304, B:169:0x0307, B:171:0x030b, B:172:0x030e, B:174:0x0312), top: B:2:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0286 A[Catch: JSONException -> 0x00d2, TryCatch #0 {JSONException -> 0x00d2, blocks: (B:3:0x0017, B:11:0x00a0, B:13:0x00ad, B:14:0x00ba, B:16:0x00c0, B:18:0x00d5, B:22:0x00db, B:24:0x00e8, B:26:0x00fd, B:38:0x013d, B:40:0x0152, B:42:0x016f, B:45:0x0175, B:47:0x017b, B:49:0x0181, B:63:0x0187, B:65:0x0194, B:67:0x019e, B:71:0x01a4, B:72:0x01ac, B:74:0x01b2, B:76:0x01c2, B:80:0x01c8, B:82:0x01d2, B:83:0x01e2, B:85:0x01e8, B:88:0x01f8, B:90:0x0202, B:92:0x020c, B:93:0x021c, B:95:0x0222, B:98:0x0232, B:100:0x023e, B:102:0x024d, B:107:0x0266, B:110:0x026b, B:112:0x0282, B:114:0x0286, B:116:0x0293, B:117:0x0296, B:119:0x029c, B:121:0x02a6, B:122:0x02a9, B:124:0x02ad, B:125:0x02b3, B:127:0x02b7, B:129:0x02bb, B:130:0x02be, B:132:0x02c2, B:134:0x02c6, B:135:0x02c9, B:137:0x02cd, B:139:0x02d1, B:140:0x02d4, B:142:0x02d8, B:144:0x02e2, B:145:0x02e5, B:147:0x02e9, B:149:0x02f3, B:150:0x0315, B:151:0x031d, B:153:0x0323, B:156:0x0272, B:157:0x0256, B:159:0x025c, B:163:0x02f7, B:165:0x02fd, B:166:0x0300, B:168:0x0304, B:169:0x0307, B:171:0x030b, B:172:0x030e, B:174:0x0312), top: B:2:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x029c A[Catch: JSONException -> 0x00d2, TryCatch #0 {JSONException -> 0x00d2, blocks: (B:3:0x0017, B:11:0x00a0, B:13:0x00ad, B:14:0x00ba, B:16:0x00c0, B:18:0x00d5, B:22:0x00db, B:24:0x00e8, B:26:0x00fd, B:38:0x013d, B:40:0x0152, B:42:0x016f, B:45:0x0175, B:47:0x017b, B:49:0x0181, B:63:0x0187, B:65:0x0194, B:67:0x019e, B:71:0x01a4, B:72:0x01ac, B:74:0x01b2, B:76:0x01c2, B:80:0x01c8, B:82:0x01d2, B:83:0x01e2, B:85:0x01e8, B:88:0x01f8, B:90:0x0202, B:92:0x020c, B:93:0x021c, B:95:0x0222, B:98:0x0232, B:100:0x023e, B:102:0x024d, B:107:0x0266, B:110:0x026b, B:112:0x0282, B:114:0x0286, B:116:0x0293, B:117:0x0296, B:119:0x029c, B:121:0x02a6, B:122:0x02a9, B:124:0x02ad, B:125:0x02b3, B:127:0x02b7, B:129:0x02bb, B:130:0x02be, B:132:0x02c2, B:134:0x02c6, B:135:0x02c9, B:137:0x02cd, B:139:0x02d1, B:140:0x02d4, B:142:0x02d8, B:144:0x02e2, B:145:0x02e5, B:147:0x02e9, B:149:0x02f3, B:150:0x0315, B:151:0x031d, B:153:0x0323, B:156:0x0272, B:157:0x0256, B:159:0x025c, B:163:0x02f7, B:165:0x02fd, B:166:0x0300, B:168:0x0304, B:169:0x0307, B:171:0x030b, B:172:0x030e, B:174:0x0312), top: B:2:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02ad A[Catch: JSONException -> 0x00d2, TryCatch #0 {JSONException -> 0x00d2, blocks: (B:3:0x0017, B:11:0x00a0, B:13:0x00ad, B:14:0x00ba, B:16:0x00c0, B:18:0x00d5, B:22:0x00db, B:24:0x00e8, B:26:0x00fd, B:38:0x013d, B:40:0x0152, B:42:0x016f, B:45:0x0175, B:47:0x017b, B:49:0x0181, B:63:0x0187, B:65:0x0194, B:67:0x019e, B:71:0x01a4, B:72:0x01ac, B:74:0x01b2, B:76:0x01c2, B:80:0x01c8, B:82:0x01d2, B:83:0x01e2, B:85:0x01e8, B:88:0x01f8, B:90:0x0202, B:92:0x020c, B:93:0x021c, B:95:0x0222, B:98:0x0232, B:100:0x023e, B:102:0x024d, B:107:0x0266, B:110:0x026b, B:112:0x0282, B:114:0x0286, B:116:0x0293, B:117:0x0296, B:119:0x029c, B:121:0x02a6, B:122:0x02a9, B:124:0x02ad, B:125:0x02b3, B:127:0x02b7, B:129:0x02bb, B:130:0x02be, B:132:0x02c2, B:134:0x02c6, B:135:0x02c9, B:137:0x02cd, B:139:0x02d1, B:140:0x02d4, B:142:0x02d8, B:144:0x02e2, B:145:0x02e5, B:147:0x02e9, B:149:0x02f3, B:150:0x0315, B:151:0x031d, B:153:0x0323, B:156:0x0272, B:157:0x0256, B:159:0x025c, B:163:0x02f7, B:165:0x02fd, B:166:0x0300, B:168:0x0304, B:169:0x0307, B:171:0x030b, B:172:0x030e, B:174:0x0312), top: B:2:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02b7 A[Catch: JSONException -> 0x00d2, TryCatch #0 {JSONException -> 0x00d2, blocks: (B:3:0x0017, B:11:0x00a0, B:13:0x00ad, B:14:0x00ba, B:16:0x00c0, B:18:0x00d5, B:22:0x00db, B:24:0x00e8, B:26:0x00fd, B:38:0x013d, B:40:0x0152, B:42:0x016f, B:45:0x0175, B:47:0x017b, B:49:0x0181, B:63:0x0187, B:65:0x0194, B:67:0x019e, B:71:0x01a4, B:72:0x01ac, B:74:0x01b2, B:76:0x01c2, B:80:0x01c8, B:82:0x01d2, B:83:0x01e2, B:85:0x01e8, B:88:0x01f8, B:90:0x0202, B:92:0x020c, B:93:0x021c, B:95:0x0222, B:98:0x0232, B:100:0x023e, B:102:0x024d, B:107:0x0266, B:110:0x026b, B:112:0x0282, B:114:0x0286, B:116:0x0293, B:117:0x0296, B:119:0x029c, B:121:0x02a6, B:122:0x02a9, B:124:0x02ad, B:125:0x02b3, B:127:0x02b7, B:129:0x02bb, B:130:0x02be, B:132:0x02c2, B:134:0x02c6, B:135:0x02c9, B:137:0x02cd, B:139:0x02d1, B:140:0x02d4, B:142:0x02d8, B:144:0x02e2, B:145:0x02e5, B:147:0x02e9, B:149:0x02f3, B:150:0x0315, B:151:0x031d, B:153:0x0323, B:156:0x0272, B:157:0x0256, B:159:0x025c, B:163:0x02f7, B:165:0x02fd, B:166:0x0300, B:168:0x0304, B:169:0x0307, B:171:0x030b, B:172:0x030e, B:174:0x0312), top: B:2:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02c2 A[Catch: JSONException -> 0x00d2, TryCatch #0 {JSONException -> 0x00d2, blocks: (B:3:0x0017, B:11:0x00a0, B:13:0x00ad, B:14:0x00ba, B:16:0x00c0, B:18:0x00d5, B:22:0x00db, B:24:0x00e8, B:26:0x00fd, B:38:0x013d, B:40:0x0152, B:42:0x016f, B:45:0x0175, B:47:0x017b, B:49:0x0181, B:63:0x0187, B:65:0x0194, B:67:0x019e, B:71:0x01a4, B:72:0x01ac, B:74:0x01b2, B:76:0x01c2, B:80:0x01c8, B:82:0x01d2, B:83:0x01e2, B:85:0x01e8, B:88:0x01f8, B:90:0x0202, B:92:0x020c, B:93:0x021c, B:95:0x0222, B:98:0x0232, B:100:0x023e, B:102:0x024d, B:107:0x0266, B:110:0x026b, B:112:0x0282, B:114:0x0286, B:116:0x0293, B:117:0x0296, B:119:0x029c, B:121:0x02a6, B:122:0x02a9, B:124:0x02ad, B:125:0x02b3, B:127:0x02b7, B:129:0x02bb, B:130:0x02be, B:132:0x02c2, B:134:0x02c6, B:135:0x02c9, B:137:0x02cd, B:139:0x02d1, B:140:0x02d4, B:142:0x02d8, B:144:0x02e2, B:145:0x02e5, B:147:0x02e9, B:149:0x02f3, B:150:0x0315, B:151:0x031d, B:153:0x0323, B:156:0x0272, B:157:0x0256, B:159:0x025c, B:163:0x02f7, B:165:0x02fd, B:166:0x0300, B:168:0x0304, B:169:0x0307, B:171:0x030b, B:172:0x030e, B:174:0x0312), top: B:2:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02cd A[Catch: JSONException -> 0x00d2, TryCatch #0 {JSONException -> 0x00d2, blocks: (B:3:0x0017, B:11:0x00a0, B:13:0x00ad, B:14:0x00ba, B:16:0x00c0, B:18:0x00d5, B:22:0x00db, B:24:0x00e8, B:26:0x00fd, B:38:0x013d, B:40:0x0152, B:42:0x016f, B:45:0x0175, B:47:0x017b, B:49:0x0181, B:63:0x0187, B:65:0x0194, B:67:0x019e, B:71:0x01a4, B:72:0x01ac, B:74:0x01b2, B:76:0x01c2, B:80:0x01c8, B:82:0x01d2, B:83:0x01e2, B:85:0x01e8, B:88:0x01f8, B:90:0x0202, B:92:0x020c, B:93:0x021c, B:95:0x0222, B:98:0x0232, B:100:0x023e, B:102:0x024d, B:107:0x0266, B:110:0x026b, B:112:0x0282, B:114:0x0286, B:116:0x0293, B:117:0x0296, B:119:0x029c, B:121:0x02a6, B:122:0x02a9, B:124:0x02ad, B:125:0x02b3, B:127:0x02b7, B:129:0x02bb, B:130:0x02be, B:132:0x02c2, B:134:0x02c6, B:135:0x02c9, B:137:0x02cd, B:139:0x02d1, B:140:0x02d4, B:142:0x02d8, B:144:0x02e2, B:145:0x02e5, B:147:0x02e9, B:149:0x02f3, B:150:0x0315, B:151:0x031d, B:153:0x0323, B:156:0x0272, B:157:0x0256, B:159:0x025c, B:163:0x02f7, B:165:0x02fd, B:166:0x0300, B:168:0x0304, B:169:0x0307, B:171:0x030b, B:172:0x030e, B:174:0x0312), top: B:2:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02d8 A[Catch: JSONException -> 0x00d2, TryCatch #0 {JSONException -> 0x00d2, blocks: (B:3:0x0017, B:11:0x00a0, B:13:0x00ad, B:14:0x00ba, B:16:0x00c0, B:18:0x00d5, B:22:0x00db, B:24:0x00e8, B:26:0x00fd, B:38:0x013d, B:40:0x0152, B:42:0x016f, B:45:0x0175, B:47:0x017b, B:49:0x0181, B:63:0x0187, B:65:0x0194, B:67:0x019e, B:71:0x01a4, B:72:0x01ac, B:74:0x01b2, B:76:0x01c2, B:80:0x01c8, B:82:0x01d2, B:83:0x01e2, B:85:0x01e8, B:88:0x01f8, B:90:0x0202, B:92:0x020c, B:93:0x021c, B:95:0x0222, B:98:0x0232, B:100:0x023e, B:102:0x024d, B:107:0x0266, B:110:0x026b, B:112:0x0282, B:114:0x0286, B:116:0x0293, B:117:0x0296, B:119:0x029c, B:121:0x02a6, B:122:0x02a9, B:124:0x02ad, B:125:0x02b3, B:127:0x02b7, B:129:0x02bb, B:130:0x02be, B:132:0x02c2, B:134:0x02c6, B:135:0x02c9, B:137:0x02cd, B:139:0x02d1, B:140:0x02d4, B:142:0x02d8, B:144:0x02e2, B:145:0x02e5, B:147:0x02e9, B:149:0x02f3, B:150:0x0315, B:151:0x031d, B:153:0x0323, B:156:0x0272, B:157:0x0256, B:159:0x025c, B:163:0x02f7, B:165:0x02fd, B:166:0x0300, B:168:0x0304, B:169:0x0307, B:171:0x030b, B:172:0x030e, B:174:0x0312), top: B:2:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02e9 A[Catch: JSONException -> 0x00d2, TryCatch #0 {JSONException -> 0x00d2, blocks: (B:3:0x0017, B:11:0x00a0, B:13:0x00ad, B:14:0x00ba, B:16:0x00c0, B:18:0x00d5, B:22:0x00db, B:24:0x00e8, B:26:0x00fd, B:38:0x013d, B:40:0x0152, B:42:0x016f, B:45:0x0175, B:47:0x017b, B:49:0x0181, B:63:0x0187, B:65:0x0194, B:67:0x019e, B:71:0x01a4, B:72:0x01ac, B:74:0x01b2, B:76:0x01c2, B:80:0x01c8, B:82:0x01d2, B:83:0x01e2, B:85:0x01e8, B:88:0x01f8, B:90:0x0202, B:92:0x020c, B:93:0x021c, B:95:0x0222, B:98:0x0232, B:100:0x023e, B:102:0x024d, B:107:0x0266, B:110:0x026b, B:112:0x0282, B:114:0x0286, B:116:0x0293, B:117:0x0296, B:119:0x029c, B:121:0x02a6, B:122:0x02a9, B:124:0x02ad, B:125:0x02b3, B:127:0x02b7, B:129:0x02bb, B:130:0x02be, B:132:0x02c2, B:134:0x02c6, B:135:0x02c9, B:137:0x02cd, B:139:0x02d1, B:140:0x02d4, B:142:0x02d8, B:144:0x02e2, B:145:0x02e5, B:147:0x02e9, B:149:0x02f3, B:150:0x0315, B:151:0x031d, B:153:0x0323, B:156:0x0272, B:157:0x0256, B:159:0x025c, B:163:0x02f7, B:165:0x02fd, B:166:0x0300, B:168:0x0304, B:169:0x0307, B:171:0x030b, B:172:0x030e, B:174:0x0312), top: B:2:0x0017 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzO(java.lang.String r22) {
        /*
            Method dump skipped, instructions count: 914
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.internal.zzaq.zzO(java.lang.String):void");
    }

    public final void zzP(long j7, int i2) {
        Iterator it = zza().iterator();
        while (it.hasNext()) {
            ((zzau) it.next()).zzd(j7, i2, null);
        }
    }

    public final void zzQ(zzan zzanVar) {
        this.f10360h = zzanVar;
    }

    @Override // com.google.android.gms.cast.internal.zzp
    public final void zzf() {
        zzb();
        c();
    }

    public final long zzj() {
        MediaStatus mediaStatus;
        AdBreakStatus adBreakStatus;
        if (this.f10357e == 0 || (mediaStatus = this.f10358f) == null || (adBreakStatus = mediaStatus.getAdBreakStatus()) == null) {
            return 0L;
        }
        double playbackRate = mediaStatus.getPlaybackRate();
        if (playbackRate == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            playbackRate = 1.0d;
        }
        return a(adBreakStatus.getCurrentBreakClipTimeInMs(), mediaStatus.getPlayerState() != 2 ? 0.0d : playbackRate, 0L);
    }

    public final long zzk() {
        MediaLiveSeekableRange liveSeekableRange;
        MediaStatus mediaStatus = this.f10358f;
        if (mediaStatus == null || (liveSeekableRange = mediaStatus.getLiveSeekableRange()) == null) {
            return 0L;
        }
        long endTime = liveSeekableRange.getEndTime();
        return !liveSeekableRange.isLiveDone() ? a(endTime, 1.0d, -1L) : endTime;
    }

    public final long zzl() {
        MediaLiveSeekableRange liveSeekableRange;
        MediaStatus mediaStatus = this.f10358f;
        if (mediaStatus == null || (liveSeekableRange = mediaStatus.getLiveSeekableRange()) == null) {
            return 0L;
        }
        long startTime = liveSeekableRange.getStartTime();
        if (liveSeekableRange.isMovingWindow()) {
            startTime = a(startTime, 1.0d, -1L);
        }
        return liveSeekableRange.isLiveDone() ? Math.min(startTime, liveSeekableRange.getEndTime()) : startTime;
    }

    public final long zzm() {
        MediaStatus mediaStatus;
        MediaInfo zzK = zzK();
        if (zzK == null || (mediaStatus = this.f10358f) == null) {
            return 0L;
        }
        Long l7 = this.f10359g;
        if (l7 == null) {
            if (this.f10357e == 0) {
                return 0L;
            }
            double playbackRate = mediaStatus.getPlaybackRate();
            long streamPosition = mediaStatus.getStreamPosition();
            return (playbackRate == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE || mediaStatus.getPlayerState() != 2) ? streamPosition : a(streamPosition, playbackRate, zzK.getStreamDuration());
        }
        if (l7.equals(4294967296000L)) {
            if (this.f10358f.getLiveSeekableRange() != null) {
                return Math.min(l7.longValue(), zzk());
            }
            if (zzo() >= 0) {
                return Math.min(l7.longValue(), zzo());
            }
        }
        return l7.longValue();
    }

    public final long zzn() throws zzao {
        MediaStatus mediaStatus = this.f10358f;
        if (mediaStatus != null) {
            return mediaStatus.zzb();
        }
        throw new zzao();
    }

    public final long zzo() {
        MediaInfo zzK = zzK();
        if (zzK != null) {
            return zzK.getStreamDuration();
        }
        return 0L;
    }

    public final long zzp(zzas zzasVar, MediaLoadRequestData mediaLoadRequestData) throws IllegalStateException, IllegalArgumentException {
        if (mediaLoadRequestData.getMediaInfo() == null && mediaLoadRequestData.getQueueData() == null) {
            throw new IllegalArgumentException("MediaInfo and MediaQueueData should not be both null");
        }
        JSONObject json = mediaLoadRequestData.toJson();
        if (json == null) {
            throw new IllegalArgumentException("Failed to jsonify the load request due to malformed request");
        }
        long zzd = zzd();
        try {
            json.put("requestId", zzd);
            json.put("type", "LOAD");
        } catch (JSONException unused) {
        }
        zzg(json.toString(), zzd, null);
        this.f10362j.zzb(zzd, zzasVar);
        return zzd;
    }

    public final long zzq(zzas zzasVar, JSONObject jSONObject) throws IllegalStateException, zzao {
        JSONObject jSONObject2 = new JSONObject();
        long zzd = zzd();
        try {
            jSONObject2.put("requestId", zzd);
            jSONObject2.put("type", "PAUSE");
            jSONObject2.put("mediaSessionId", zzn());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zzg(jSONObject2.toString(), zzd, null);
        this.f10363k.zzb(zzd, zzasVar);
        return zzd;
    }

    public final long zzr(zzas zzasVar, JSONObject jSONObject) throws IllegalStateException, zzao {
        JSONObject jSONObject2 = new JSONObject();
        long zzd = zzd();
        try {
            jSONObject2.put("requestId", zzd);
            jSONObject2.put("type", "PLAY");
            jSONObject2.put("mediaSessionId", zzn());
            if (jSONObject != null) {
                jSONObject2.put("customData", jSONObject);
            }
        } catch (JSONException unused) {
        }
        zzg(jSONObject2.toString(), zzd, null);
        this.f10364l.zzb(zzd, zzasVar);
        return zzd;
    }

    public final long zzu(zzas zzasVar) throws zzao, IllegalStateException {
        JSONObject jSONObject = new JSONObject();
        long zzd = zzd();
        try {
            jSONObject.put("requestId", zzd);
            jSONObject.put("type", "QUEUE_GET_ITEM_IDS");
            jSONObject.put("mediaSessionId", zzn());
        } catch (JSONException unused) {
        }
        zzg(jSONObject.toString(), zzd, null);
        this.f10371s.zzb(zzd, zzasVar);
        return zzd;
    }

    public final long zzv(zzas zzasVar, int[] iArr) throws zzao, IllegalArgumentException {
        JSONObject jSONObject = new JSONObject();
        long zzd = zzd();
        try {
            jSONObject.put("requestId", zzd);
            jSONObject.put("type", "QUEUE_GET_ITEMS");
            jSONObject.put("mediaSessionId", zzn());
            JSONArray jSONArray = new JSONArray();
            for (int i2 : iArr) {
                jSONArray.put(i2);
            }
            jSONObject.put("itemIds", jSONArray);
        } catch (JSONException unused) {
        }
        zzg(jSONObject.toString(), zzd, null);
        this.f10372t.zzb(zzd, zzasVar);
        return zzd;
    }
}
