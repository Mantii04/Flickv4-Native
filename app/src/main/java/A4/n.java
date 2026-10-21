package A4;

import B1.AbstractC0037q;
import B4.C0058v;
import B4.C0059w;
import B4.RunnableC0055s;
import C1.N;
import V3.F;
import a5.AsyncTaskC0399e;
import a5.C0402h;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.graphics.SurfaceTexture;
import android.graphics.Typeface;
import android.media.metrics.NetworkEvent;
import android.media.metrics.PlaybackErrorEvent;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackStateEvent;
import android.media.metrics.TrackChangeEvent;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.widget.LinearLayout;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.exoplayer.analytics.MediaMetricsListener;
import androidx.media3.exoplayer.video.spherical.SphericalGLSurfaceView;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import b4.AbstractC0653c;
import b4.AbstractC0664n;
import b4.C0654d;
import b4.C0660j;
import c4.C0732b;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.google.common.collect.ImmutableCollection;
import cz.msebera.android.httpclient.HttpHeaders;
import e.h0;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.leanback.MainActivityLeanback;
import flix.com.vision.activities.player.AdultVideoPlayerActivity;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import flix.com.vision.bvp.BetterVideoPlayer;
import flix.com.vision.models.CastAction;
import flix.com.vision.models.PlayerEvent;
import flix.com.vision.models.VideoSource;
import flix.com.vision.subtitles.OpenSubtitles;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public final /* synthetic */ class n implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81f;

    public /* synthetic */ n(int i2, Object obj, Object obj2) {
        this.f79b = i2;
        this.f80e = obj;
        this.f81f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0732b c0732b;
        HttpURLConnection httpURLConnection;
        int i2 = 4;
        int i7 = 7;
        HttpURLConnection httpURLConnection2 = null;
        int i8 = 0;
        int i9 = 1;
        switch (this.f79b) {
            case 0:
                int i10 = MainActivityLeanback.f15476I;
                ((MainActivityLeanback) this.f80e).askToUpdateIfAny(true, null);
                Q4.d dVar = (Q4.d) this.f81f;
                if (dVar != null) {
                    dVar.dismiss();
                    return;
                }
                return;
            case 1:
                int i11 = AdultVideoPlayerActivity.f15591z;
                AdultVideoPlayerActivity adultVideoPlayerActivity = (AdultVideoPlayerActivity) this.f80e;
                adultVideoPlayerActivity.getClass();
                if (((BetterVideoPlayer) this.f81f).isPlaying()) {
                    return;
                }
                adultVideoPlayerActivity.Show();
                return;
            case 2:
                boolean z6 = SimpleVideoPlayer.f15629Q0;
                SimpleVideoPlayer simpleVideoPlayer = (SimpleVideoPlayer) this.f80e;
                VideoSource videoSource = (VideoSource) this.f81f;
                if (videoSource.isPremiumSupported) {
                    if (videoSource.rd_checked || App.isRdSupported(videoSource.streamUrl)) {
                        D4.a.getLinkRealDebrid(videoSource.streamUrl, RealDebridCommon.f15826f, RealDebridCommon.f15824b).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new C0058v(simpleVideoPlayer, i9), new C0059w(i8, videoSource));
                        return;
                    }
                    return;
                }
                simpleVideoPlayer.f15697r.add(videoSource);
                if (App.f14417B == null) {
                    App.f14417B = new ArrayList();
                }
                App.f14417B.add(videoSource);
                if (simpleVideoPlayer.f15663R && !simpleVideoPlayer.f15706v0 && ((videoSource.isFvDirectStream || videoSource.quality >= 720 || videoSource.isRealDebrid) && !videoSource.label.toLowerCase().contains("moflix"))) {
                    simpleVideoPlayer.f15706v0 = true;
                    simpleVideoPlayer.p();
                    simpleVideoPlayer.y(videoSource, true);
                    try {
                        N4.a.Success(simpleVideoPlayer, "Episode " + simpleVideoPlayer.f15682h0 + " Loaded", null, 48, 0);
                    } catch (Exception unused) {
                    }
                }
                if (simpleVideoPlayer.f15706v0) {
                    return;
                }
                try {
                    if (videoSource.isDebrid()) {
                        simpleVideoPlayer.p();
                        if (simpleVideoPlayer.f15704u0) {
                            return;
                        }
                        simpleVideoPlayer.f15704u0 = true;
                        PlayerEvent playerEvent = new PlayerEvent();
                        playerEvent.vs = videoSource;
                        EventBus.getDefault().post(playerEvent);
                        N4.a.Success(simpleVideoPlayer, "Episode " + simpleVideoPlayer.f15682h0 + " Loaded", null, 48, 0);
                    } else {
                        simpleVideoPlayer.p();
                        simpleVideoPlayer.f15706v0 = true;
                        N4.a.Success(simpleVideoPlayer, "Episode " + simpleVideoPlayer.f15682h0 + " Loaded", null, 48, 0);
                    }
                    return;
                } catch (Exception unused2) {
                    return;
                }
            case 3:
                OpenSubtitles.Subtitle subtitle = (OpenSubtitles.Subtitle) this.f81f;
                boolean z7 = SimpleVideoPlayer.f15629Q0;
                SimpleVideoPlayer simpleVideoPlayer2 = (SimpleVideoPlayer) this.f80e;
                simpleVideoPlayer2.getClass();
                try {
                    simpleVideoPlayer2.runOnUiThread(new n(i2, simpleVideoPlayer2, OpenSubtitles.download(subtitle)));
                    return;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    simpleVideoPlayer2.runOnUiThread(new RunnableC0055s(simpleVideoPlayer2, i7));
                    return;
                }
            case 4:
                boolean z8 = SimpleVideoPlayer.f15629Q0;
                ((SimpleVideoPlayer) this.f80e).p();
                CastAction castAction = new CastAction();
                castAction.file = ((Uri) this.f81f).getPath();
                EventBus.getDefault().post(castAction);
                return;
            case 5:
                boolean z9 = SimpleVideoPlayer.f15629Q0;
                ((View) this.f80e).animate().scaleY(0.0f).setDuration(600L).withEndAction(new A3.d((LinearLayout) this.f81f, i2)).start();
                return;
            case 6:
                ((C.r) this.f80e).onFontRetrieved((Typeface) this.f81f);
                return;
            case 7:
                ((C1.r) this.f80e).onExecuted((K1.r) this.f81f, false);
                return;
            case 8:
                if (((N) this.f80e).f423z.isCancelled()) {
                    ((F) this.f81f).cancel(true);
                    return;
                }
                return;
            case 9:
                List listenersList = (List) this.f80e;
                kotlin.jvm.internal.j.checkNotNullParameter(listenersList, "$listenersList");
                I1.h this$0 = (I1.h) this.f81f;
                kotlin.jvm.internal.j.checkNotNullParameter(this$0, "this$0");
                Iterator it = listenersList.iterator();
                while (it.hasNext()) {
                    ((H1.d) ((G1.a) it.next())).onConstraintChanged(this$0.f1251e);
                }
                return;
            case 10:
                L1.A a7 = (L1.A) this.f80e;
                boolean isCancelled = a7.f1838b.isCancelled();
                M1.g gVar = (M1.g) this.f81f;
                if (isCancelled) {
                    gVar.cancel(true);
                    return;
                } else {
                    gVar.setFuture(a7.f1841j.getForegroundInfoAsync());
                    return;
                }
            case 11:
                ConstraintTrackingWorker this$02 = (ConstraintTrackingWorker) this.f80e;
                F innerFuture = (F) this.f81f;
                kotlin.jvm.internal.j.checkNotNullParameter(this$02, "this$0");
                kotlin.jvm.internal.j.checkNotNullParameter(innerFuture, "$innerFuture");
                synchronized (this$02.f8324n) {
                    try {
                        if (this$02.f8325p) {
                            M1.g future = this$02.f8326q;
                            kotlin.jvm.internal.j.checkNotNullExpressionValue(future, "future");
                            future.set(AbstractC0037q.retry());
                        } else {
                            this$02.f8326q.setFuture(innerFuture);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 12:
                T4.a aVar = (T4.a) this.f80e;
                Context context = (Context) this.f81f;
                aVar.getClass();
                Log.d("AdBlocker", "Loading ad hosts file...");
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(context.getResources().openRawResource(R.raw.adblockserverlist)));
                    while (true) {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                aVar.f3686b = true;
                                Log.d("AdBlocker", "Ad hosts loaded successfully. " + aVar.f3685a.size() + " entries.");
                                bufferedReader.close();
                                return;
                            }
                            String trim = readLine.replace("0.0.0.0", "").trim();
                            if (!trim.isEmpty()) {
                                aVar.f3685a.add(trim);
                            }
                        } finally {
                        }
                    }
                } catch (Exception e7) {
                    Log.e("AdBlocker", "Error loading ad hosts file", e7);
                    return;
                }
            case 13:
                ((com.google.common.util.concurrent.e) this.f80e).i((ImmutableCollection) this.f81f);
                return;
            case 14:
                int i12 = JobInfoSchedulerService.f9510b;
                ((JobInfoSchedulerService) this.f80e).jobFinished((JobParameters) this.f81f, false);
                return;
            case 15:
                Z4.o oVar = (Z4.o) this.f80e;
                oVar.getClass();
                WebView webView = new WebView(oVar.f4576b);
                oVar.f4580f = webView;
                webView.getSettings().setJavaScriptEnabled(true);
                oVar.f4580f.getSettings().setDomStorageEnabled(true);
                oVar.f4580f.setWebViewClient(new Z4.n(oVar));
                oVar.f4580f.loadUrl((String) this.f81f);
                return;
            case 16:
                C0402h c0402h = ((AsyncTaskC0399e) this.f80e).f4774c;
                if (c0402h.f4783f) {
                    return;
                }
                D4.a.getTorrent((String) this.f81f, RealDebridCommon.f15826f, RealDebridCommon.f15824b).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new E4.c(c0402h, 6), new c(17));
                return;
            case 17:
                a5.l lVar = ((a5.i) this.f80e).f4786c;
                if (lVar.f4792c) {
                    return;
                }
                D4.a.getTorrent((String) this.f81f, RealDebridCommon.f15826f, RealDebridCommon.f15824b).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new E4.c(lVar, i7), new c(18));
                return;
            case 18:
                ((SimpleBasePlayer) this.f80e).lambda$updateStateForPendingOperation$64((F) this.f81f);
                return;
            case 19:
                AudioManagerCompat.lambda$getAudioManager$0((Context) this.f80e, (ConditionVariable) this.f81f);
                return;
            case 20:
                ((MediaMetricsListener) this.f80e).lambda$reportTrackChangeEvent$3((TrackChangeEvent) this.f81f);
                return;
            case 21:
                ((MediaMetricsListener) this.f80e).lambda$maybeReportNetworkChange$1((NetworkEvent) this.f81f);
                return;
            case 22:
                ((MediaMetricsListener) this.f80e).lambda$maybeReportPlaybackError$0((PlaybackErrorEvent) this.f81f);
                return;
            case 23:
                ((MediaMetricsListener) this.f80e).lambda$finishCurrentSession$4((PlaybackMetrics) this.f81f);
                return;
            case 24:
                ((MediaMetricsListener) this.f80e).lambda$maybeReportPlaybackStateChange$2((PlaybackStateEvent) this.f81f);
                return;
            case 25:
                ((SphericalGLSurfaceView) this.f80e).lambda$onSurfaceTextureAvailable$1((SurfaceTexture) this.f81f);
                return;
            case 26:
                C0654d c0654d = (C0654d) this.f81f;
                try {
                    ((C0660j) this.f80e).f(c0654d);
                    return;
                } catch (Throwable th2) {
                    AbstractC0664n.a("Failed to load/run " + c0654d.f8475a, th2);
                    return;
                }
            case 27:
                String str = (String) this.f80e;
                try {
                    HashMap hashMap = new HashMap();
                    hashMap.put("deviceId", AbstractC0653c.a(null));
                    hashMap.put("message", str);
                    Throwable th3 = (Throwable) this.f81f;
                    if (th3 != null) {
                        StringWriter stringWriter = new StringWriter();
                        PrintWriter printWriter = new PrintWriter(stringWriter);
                        th3.printStackTrace(printWriter);
                        printWriter.flush();
                        hashMap.put("error", stringWriter.toString());
                    }
                    c0732b = new C0732b((Map) hashMap);
                    httpURLConnection = (HttpURLConnection) new URL("https://imsdk.tv/sdk/log/error").openConnection();
                } catch (Exception unused3) {
                } catch (Throwable th4) {
                    th = th4;
                }
                try {
                    httpURLConnection.setConnectTimeout(15000);
                    httpURLConnection.setReadTimeout(30000);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.setRequestProperty("Content-Type", "application/json; charset=UTF-8");
                    httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT, "application/json");
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setDoInput(false);
                    OutputStream outputStream = httpURLConnection.getOutputStream();
                    try {
                        byte[] bytes = c0732b.toString().getBytes("UTF-8");
                        outputStream.write(bytes, 0, bytes.length);
                        outputStream.close();
                        httpURLConnection.getResponseCode();
                        httpURLConnection.disconnect();
                        return;
                    } catch (Throwable th5) {
                        if (outputStream != null) {
                            try {
                                outputStream.close();
                            } catch (Throwable th6) {
                                th5.addSuppressed(th6);
                            }
                        }
                        throw th5;
                    }
                } catch (Exception unused4) {
                    httpURLConnection2 = httpURLConnection;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                        return;
                    }
                    return;
                } catch (Throwable th7) {
                    th = th7;
                    httpURLConnection2 = httpURLConnection;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    throw th;
                }
            case 28:
                com.ax.altpop.fg.a.a((Context) this.f80e, (Intent) this.f81f);
                return;
            default:
                Runnable runnable = (Runnable) this.f81f;
                h0 h0Var = (h0) this.f80e;
                h0Var.getClass();
                try {
                    runnable.run();
                    return;
                } finally {
                    h0Var.scheduleNext();
                }
        }
    }
}
