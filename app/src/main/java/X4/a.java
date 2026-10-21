package X4;

import Z2.m;
import a3.p;
import a3.r;
import a5.AsyncTaskC0397c;
import a5.AsyncTaskC0401g;
import a5.C0398d;
import a5.C0402h;
import a5.k;
import a5.l;
import a5.o;
import a5.s;
import a5.t;
import a5.w;
import a5.x;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.AsyncTask;
import android.util.Log;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.Metadata;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.TrackSelectionParameters;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.CueGroup;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;
import androidx.media3.exoplayer.drm.KeyRequestInfo;
import b3.InterfaceC0650a;
import com.android.volley.Response;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped$Reason;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.internal.ConfigFetchHandler;
import com.google.firebase.remoteconfig.internal.ConfigRealtimeHttpClient;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import cz.msebera.android.httpclient.HttpStatus;
import f1.q0;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.models.VideoSource;
import flix.com.vision.models.adult.AdultLink;
import flix.com.vision.models.hindi.PlaylistItem;
import h5.AbstractC1000n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Response.Listener, InterfaceC0650a, p, ListenerSet.Event, Continuation, q0 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4235b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f4236e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f4237f;

    public /* synthetic */ a(int i2, Object obj, Object obj2) {
        this.f4235b = i2;
        this.f4237f = obj;
        this.f4236e = obj2;
    }

    @Override // a3.p
    public Object apply(Object obj) {
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        r rVar = (r) this.f4237f;
        rVar.getClass();
        sQLiteDatabase.compileStatement((String) this.f4236e).execute();
        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", null);
        while (rawQuery.moveToNext()) {
            try {
                rVar.recordLogEventDropped(rawQuery.getInt(0), LogEventDropped$Reason.MAX_RETRIES_REACHED, rawQuery.getString(1));
            } catch (Throwable th) {
                rawQuery.close();
                throw th;
            }
        }
        rawQuery.close();
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    @Override // b3.InterfaceC0650a
    public Object execute() {
        switch (this.f4235b) {
            case 2:
                ((r) ((m) this.f4237f).f4495c).recordSuccess((Iterable) this.f4236e);
                break;
            default:
                m mVar = (m) this.f4237f;
                Iterator it = ((HashMap) this.f4236e).entrySet().iterator();
                while (it.hasNext()) {
                    ((r) mVar.f4501i).recordLogEventDropped(((Integer) r2.getValue()).intValue(), LogEventDropped$Reason.INVALID_PAYLOD, (String) ((Map.Entry) it.next()).getKey());
                }
                break;
        }
        return null;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        AnalyticsListener analyticsListener = (AnalyticsListener) obj;
        switch (this.f4235b) {
            case 11:
                analyticsListener.onPlaybackParametersChanged((AnalyticsListener.EventTime) this.f4237f, (PlaybackParameters) this.f4236e);
                break;
            case 12:
                analyticsListener.onTrackSelectionParametersChanged((AnalyticsListener.EventTime) this.f4237f, (TrackSelectionParameters) this.f4236e);
                break;
            case 13:
                analyticsListener.onAvailableCommandsChanged((AnalyticsListener.EventTime) this.f4237f, (Player.Commands) this.f4236e);
                break;
            case 14:
                analyticsListener.onAudioAttributesChanged((AnalyticsListener.EventTime) this.f4237f, (AudioAttributes) this.f4236e);
                break;
            case 15:
                analyticsListener.onMetadata((AnalyticsListener.EventTime) this.f4237f, (Metadata) this.f4236e);
                break;
            case 16:
                analyticsListener.onTracksChanged((AnalyticsListener.EventTime) this.f4237f, (Tracks) this.f4236e);
                break;
            case 17:
                DefaultAnalyticsCollector.lambda$onDrmKeysLoaded$65((AnalyticsListener.EventTime) this.f4237f, (KeyRequestInfo) this.f4236e, analyticsListener);
                break;
            case 18:
                analyticsListener.onCues((AnalyticsListener.EventTime) this.f4237f, (List<Cue>) this.f4236e);
                break;
            case 19:
                analyticsListener.onDeviceInfoChanged((AnalyticsListener.EventTime) this.f4237f, (DeviceInfo) this.f4236e);
                break;
            case 20:
                DefaultAnalyticsCollector.lambda$onVideoSizeChanged$59((AnalyticsListener.EventTime) this.f4237f, (VideoSize) this.f4236e, analyticsListener);
                break;
            default:
                analyticsListener.onCues((AnalyticsListener.EventTime) this.f4237f, (CueGroup) this.f4236e);
                break;
        }
    }

    @Override // com.android.volley.Response.Listener
    public void onResponse(Object obj) {
        switch (this.f4235b) {
            case 0:
                b bVar = (b) this.f4237f;
                bVar.getClass();
                String[] split = ((String) this.f4236e).split("\\?");
                String[] split2 = ((String) obj).split("#EXT-X-STREAM-INF:");
                int length = split2.length;
                int i2 = 0;
                while (true) {
                    c cVar = bVar.f4239b;
                    if (i2 < length) {
                        String[] split3 = split2[i2].split("NAME=");
                        int length2 = split3.length;
                        int i7 = 0;
                        while (i7 < length2) {
                            String str = split3[i7];
                            String[] strArr = split2;
                            if (str.contains("1080p")) {
                                cVar.addLink(split[0].replace("hls.m3u8", str.replace("\"1080p\"", "")).replaceAll(StringUtils.LF, "").replaceAll(StringUtils.SPACE, ""), "1080p");
                            } else if (str.contains("720p")) {
                                cVar.addLink(split[0].replace("hls.m3u8", str.replace("\"720p\"", "")).replaceAll(StringUtils.LF, "").replaceAll(StringUtils.SPACE, ""), "720p");
                            } else if (str.contains("480p")) {
                                cVar.addLink(split[0].replace("hls.m3u8", str.replace("\"480p\"", "")).replaceAll(StringUtils.LF, "").replaceAll(StringUtils.SPACE, ""), "480p");
                            } else if (str.contains("360p")) {
                                cVar.addLink(split[0].replace("hls.m3u8", str.replace("\"360p\"", "")).replaceAll(StringUtils.LF, "").replaceAll(StringUtils.SPACE, ""), "360p");
                            } else if (str.contains("250p")) {
                                cVar.addLink(split[0].replace("hls.m3u8", str.replace("\"250p\"", "")).replaceAll(StringUtils.LF, "").replaceAll(StringUtils.SPACE, ""), "250p");
                            }
                            i7++;
                            split2 = strArr;
                        }
                        i2++;
                    } else if (cVar.f4240a.size() > 0) {
                        ArrayList<AdultLink> arrayList = cVar.f4240a;
                        Collections.sort(arrayList);
                        AdultLink adultLink = cVar.f4242c;
                        if (adultLink != null) {
                            arrayList.add(0, adultLink);
                        }
                        cVar.f4241b.OnStreamResolvedSuccess(arrayList);
                        break;
                    }
                }
                break;
            case 1:
                Y4.b bVar2 = (Y4.b) this.f4237f;
                String[] split4 = ((String) obj).split("#EXT-X-STREAM-INF:");
                int length3 = split4.length;
                int i8 = 0;
                while (true) {
                    Y4.c cVar2 = bVar2.f4391b;
                    if (i8 < length3) {
                        for (String str2 : split4[i8].split("RESOLUTION=")) {
                            boolean contains = str2.contains("1080");
                            String str3 = (String) this.f4236e;
                            if (contains) {
                                cVar2.addLink(!cVar2.f4392a ? str3.replace("/index.m3u8", "/1080/index.m3u8") : str3.replace(".m3u8", ".1080.m3u8"), "1080p", cVar2.f4397f);
                            } else if (str2.contains("720")) {
                                cVar2.addLink(!cVar2.f4392a ? str3.replace("/index.m3u8", "/720/index.m3u8") : str3.replace(".m3u8", ".720.m3u8"), "720p", cVar2.f4397f);
                            } else if (str2.contains("480")) {
                                cVar2.addLink(!cVar2.f4392a ? str3.replace("/index.m3u8", "/480/index.m3u8") : str3.replace(".m3u8", ".480.m3u8"), "480p", cVar2.f4397f);
                            }
                            if (cVar2.f4395d != null) {
                                if (str2.contains("360")) {
                                    cVar2.addLink(str3.replace("/index.m3u8", "/360/index.m3u8"), "360p", cVar2.f4397f);
                                } else if (str2.contains("250")) {
                                    cVar2.addLink(str3.replace("/index.m3u8", "/250/index.m3u8"), "250p", cVar2.f4397f);
                                }
                            }
                        }
                        i8++;
                    } else if (cVar2.f4393b.size() > 0) {
                        ArrayList<VideoSource> arrayList2 = cVar2.f4393b;
                        Collections.sort(arrayList2);
                        if (cVar2.f4395d != null) {
                            VideoSource videoSource = cVar2.f4396e;
                            if (videoSource != null) {
                                arrayList2.add(0, videoSource);
                            }
                            Collections.sort(arrayList2);
                            cVar2.f4395d.OnM3USuccess(arrayList2);
                            break;
                        } else {
                            cVar2.f4394c.OnSuccess(arrayList2);
                            break;
                        }
                    }
                }
                break;
            case 5:
                C0398d c0398d = (C0398d) this.f4237f;
                c0398d.getClass();
                new AsyncTaskC0397c(c0398d, String.valueOf((String) obj), (String) this.f4236e).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                break;
            case 6:
                C0402h c0402h = (C0402h) this.f4237f;
                c0402h.getClass();
                new AsyncTaskC0401g(c0402h, String.valueOf((String) obj), (String) this.f4236e).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                break;
            case 7:
                l lVar = (l) this.f4237f;
                lVar.getClass();
                new k(lVar, String.valueOf((String) obj), (String) this.f4236e).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                break;
            case 8:
                a5.p pVar = (a5.p) this.f4237f;
                pVar.getClass();
                new o(pVar, String.valueOf((String) obj), (String) this.f4236e).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                break;
            case 9:
                t tVar = (t) this.f4237f;
                tVar.getClass();
                new s(tVar, String.valueOf((String) obj), (String) this.f4236e).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                break;
            case 10:
                x xVar = (x) this.f4237f;
                xVar.getClass();
                new w(xVar, String.valueOf((String) obj), (String) this.f4236e).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                break;
            case 25:
                PlaylistItem playlistItem = (PlaylistItem) this.f4236e;
                d5.f fVar = (d5.f) this.f4237f;
                fVar.getClass();
                String valueOf = String.valueOf((String) obj);
                try {
                    VideoSource videoSource2 = new VideoSource();
                    videoSource2.streamUrl = valueOf;
                    videoSource2.streamable = true;
                    videoSource2.quality = 1080;
                    videoSource2.referer = AbstractC1000n.getBaseUrl(fVar.f13593b);
                    if (playlistItem.language.contains("English")) {
                        videoSource2.isFvDirectStream = true;
                    } else {
                        videoSource2.isHindiDirect = true;
                    }
                    videoSource2.label = "1080p - [FVSTREAM] - [DIRECT] - " + playlistItem.language;
                    fVar.callBack.OnSuccess(videoSource2);
                    if (playlistItem.language.contains("English")) {
                        new Y4.c(fVar.f13592a, fVar.callBack).process(videoSource2, videoSource2.referer);
                        break;
                    }
                } catch (Exception e3) {
                    try {
                        Log.d(MovieDetailActivity.class.toString(), "", e3);
                        return;
                    } catch (Exception e7) {
                        Log.d(MovieDetailActivity.class.toString(), "", e7);
                        return;
                    }
                }
                break;
            case 26:
                PlaylistItem playlistItem2 = (PlaylistItem) this.f4236e;
                d5.l lVar2 = (d5.l) this.f4237f;
                lVar2.getClass();
                String valueOf2 = String.valueOf((String) obj);
                try {
                    VideoSource videoSource3 = new VideoSource();
                    videoSource3.streamUrl = valueOf2;
                    videoSource3.streamable = true;
                    videoSource3.quality = 1080;
                    videoSource3.referer = AbstractC1000n.getBaseUrl(lVar2.f13605b);
                    if (playlistItem2.language.contains("English")) {
                        videoSource3.isFvDirectStream = true;
                    } else {
                        videoSource3.isHindiDirect = true;
                    }
                    videoSource3.label = "1080p - [FVSTREAM] - [DIRECT] - " + playlistItem2.language;
                    videoSource3.language = playlistItem2.language;
                    lVar2.callBack.OnSuccess(videoSource3);
                    if (playlistItem2.language.contains("English")) {
                        new Y4.c(lVar2.f13604a, lVar2.callBack).process(videoSource3, videoSource3.referer);
                        break;
                    }
                } catch (Exception e8) {
                    try {
                        Log.d(MovieDetailActivity.class.toString(), "", e8);
                        return;
                    } catch (Exception e9) {
                        Log.d(MovieDetailActivity.class.toString(), "", e9);
                        return;
                    }
                }
                break;
            default:
                String str4 = (String) this.f4236e;
                flix.com.vision.processors.english.m mVar = (flix.com.vision.processors.english.m) this.f4237f;
                mVar.getClass();
                try {
                    JsonObject asJsonObject = JsonParser.parseString(String.valueOf((String) obj)).getAsJsonObject();
                    if (asJsonObject.get("status").getAsString().equals(FirebaseAnalytics.Param.SUCCESS)) {
                        JsonArray asJsonArray = asJsonObject.get(FirebaseAnalytics.Param.CONTENT).getAsJsonArray();
                        for (int i9 = 0; i9 < asJsonArray.size(); i9++) {
                            JsonObject asJsonObject2 = asJsonArray.get(i9).getAsJsonObject();
                            try {
                                String asString = asJsonObject2.get("stream_link").getAsString();
                                if (asString != null && asString.length() > 10) {
                                    int asInt = asJsonObject2.get("size").getAsInt();
                                    String readableFileSize = (asInt == 0 || asInt == -1) ? "" : T4.m.readableFileSize(asInt);
                                    VideoSource videoSource4 = new VideoSource();
                                    videoSource4.streamable = true;
                                    videoSource4.label = "[PREMIUMIZE.ME] [FAST] [" + readableFileSize + "]";
                                    videoSource4.streamUrl = asString;
                                    videoSource4.originalFileName = mVar.getOriginalName(str4);
                                    videoSource4.isPremiumize = true;
                                    videoSource4.isTorrentMagnet = true;
                                    LinksActivity.setRDQtyLabel(videoSource4);
                                    if (videoSource4.quality == 0) {
                                        videoSource4.quality = HttpStatus.SC_MULTIPLE_CHOICES;
                                    }
                                    mVar.addLink(videoSource4);
                                }
                            } catch (Exception unused) {
                            }
                        }
                        break;
                    } else {
                        break;
                    }
                } catch (Exception e10) {
                    try {
                        Log.d(MovieDetailActivity.class.toString(), "", e10);
                        return;
                    } catch (Exception e11) {
                        Log.d(MovieDetailActivity.class.toString(), "", e11);
                    }
                }
                break;
        }
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        Task lambda$fetchIfCacheExpiredAndNotThrottled$3;
        Task lambda$fetchNowWithTypeAndAttemptNumber$1;
        Task lambda$beginRealtimeHttpStream$1;
        switch (this.f4235b) {
            case 22:
                lambda$fetchIfCacheExpiredAndNotThrottled$3 = ((ConfigFetchHandler) this.f4237f).lambda$fetchIfCacheExpiredAndNotThrottled$3((Date) this.f4236e, task);
                return lambda$fetchIfCacheExpiredAndNotThrottled$3;
            case 23:
                lambda$fetchNowWithTypeAndAttemptNumber$1 = ((ConfigFetchHandler) this.f4237f).lambda$fetchNowWithTypeAndAttemptNumber$1((HashMap) this.f4236e, task);
                return lambda$fetchNowWithTypeAndAttemptNumber$1;
            default:
                lambda$beginRealtimeHttpStream$1 = ((ConfigRealtimeHttpClient) this.f4237f).lambda$beginRealtimeHttpStream$1((Task) this.f4236e, task);
                return lambda$beginRealtimeHttpStream$1;
        }
    }
}
