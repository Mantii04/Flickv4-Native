package B4;

import android.app.FragmentManager;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.view.MotionEvent;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.media3.exoplayer.ExoPlayer;
import flix.com.vision.App;
import flix.com.vision.activities.player.WebPlayerActivity;
import flix.com.vision.models.VideoSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import java.util.Random;

/* loaded from: classes2.dex */
public final class S extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebPlayerActivity f243a;

    public S(WebPlayerActivity webPlayerActivity) {
        this.f243a = webPlayerActivity;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        WebPlayerActivity webPlayerActivity = this.f243a;
        webPlayerActivity.f15736p.setVisibility(8);
        webPlayerActivity.f15721F.setVisibility(8);
        if (webPlayerActivity.f15731e) {
            try {
                webPlayerActivity.f15742v.clearAnimation();
                webPlayerActivity.f15742v.setAlpha(1.0f);
            } catch (Exception unused) {
            }
        }
        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
            if (webPlayerActivity.f15738r.isSeries()) {
                App.getInstance().f14438q.checkInEpisode(webPlayerActivity.f15738r, webPlayerActivity.f15735n, webPlayerActivity.f15722G).observeOn(AndroidSchedulers.mainThread()).subscribe(new N(webPlayerActivity, 0), new A4.c(9));
            } else {
                App.getInstance().f14438q.checkInMovie(webPlayerActivity.f15738r);
            }
        }
        webPlayerActivity.f15724I.setVisibility(0);
        if (App.getInstance().f14440s.getBoolean("pref_hide_watermark_tip", true)) {
            VideoSource videoSource = new VideoSource();
            videoSource.streamUrl = webPlayerActivity.f15737q;
            if (new Random(5L).nextInt(2) == 1 && videoSource.hasMultiSubtitles() && !App.getInstance().f14440s.getBoolean("pref_hide_watermark", false)) {
                new Handler().postDelayed(new A3.d(webPlayerActivity, 5), 20000L);
            }
        }
        VideoSource videoSource2 = new VideoSource();
        videoSource2.streamUrl = str;
        if (videoSource2.hasMultiSubtitles()) {
            if (!App.getInstance().f14440s.getBoolean("pref_multi_subtitle_tuto_shown", false)) {
                App.getInstance().f14440s.edit().putBoolean("pref_multi_subtitle_tuto_shown", true).apply();
                FragmentManager fragmentManager = webPlayerActivity.getFragmentManager();
                Q4.d newInstance = Q4.d.newInstance(webPlayerActivity, false);
                newInstance.setTitle("Multi-language Subtitles Available");
                newInstance.setCancelable(false);
                newInstance.setMessage("Multi-language Subtitles are Available on this player. Press the CC button to choose your language subtitle");
                newInstance.setButton1("GOT IT", new M(webPlayerActivity, 3));
                try {
                    newInstance.show(fragmentManager, "");
                } catch (Exception e3) {
                    webPlayerActivity.f15726K = false;
                    e3.printStackTrace();
                }
            }
        } else if (videoSource2.hasSubtitles() && !App.getInstance().f14440s.getBoolean("pref_subtiel_tuto_shown", false)) {
            App.getInstance().f14440s.edit().putBoolean("pref_subtiel_tuto_shown", true).apply();
            FragmentManager fragmentManager2 = webPlayerActivity.getFragmentManager();
            Q4.d newInstance2 = Q4.d.newInstance(webPlayerActivity, false);
            newInstance2.setTitle("Subtitles Available");
            newInstance2.setCancelable(false);
            newInstance2.setMessage("Subtitles are Available on this player. Press the CC button to choose your language subtitle");
            newInstance2.setButton1("GOT IT", new M(webPlayerActivity, 2));
            try {
                newInstance2.show(fragmentManager2, "");
            } catch (Exception e7) {
                webPlayerActivity.f15726K = false;
                e7.printStackTrace();
            }
        }
        if (App.getInstance().f14440s.getBoolean("pref_hide_watermark", false) && videoSource2.hasMultiSubtitles()) {
            final int i2 = 0;
            new Handler().postDelayed(new Runnable(this) { // from class: B4.Q

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ S f242e;

                {
                    this.f242e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (i2) {
                        case 0:
                            this.f242e.f243a.f15733j.setVisibility(0);
                            break;
                        default:
                            WebPlayerActivity webPlayerActivity2 = this.f242e.f243a;
                            webPlayerActivity2.getClass();
                            long uptimeMillis = SystemClock.uptimeMillis();
                            long uptimeMillis2 = SystemClock.uptimeMillis();
                            float f3 = webPlayerActivity2.getResources().getDisplayMetrics().widthPixels / 3;
                            float f7 = webPlayerActivity2.getResources().getDisplayMetrics().heightPixels / 3;
                            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, 300 + uptimeMillis2, 0, f3, f7, 0);
                            MotionEvent obtain2 = MotionEvent.obtain(uptimeMillis, 500 + uptimeMillis2, 1, f3, f7, 0);
                            webPlayerActivity2.f15724I.dispatchTouchEvent(obtain);
                            webPlayerActivity2.f15724I.dispatchTouchEvent(obtain2);
                            break;
                    }
                }
            }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }
        final int i7 = 1;
        new Handler().postDelayed(new Runnable(this) { // from class: B4.Q

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ S f242e;

            {
                this.f242e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i7) {
                    case 0:
                        this.f242e.f243a.f15733j.setVisibility(0);
                        break;
                    default:
                        WebPlayerActivity webPlayerActivity2 = this.f242e.f243a;
                        webPlayerActivity2.getClass();
                        long uptimeMillis = SystemClock.uptimeMillis();
                        long uptimeMillis2 = SystemClock.uptimeMillis();
                        float f3 = webPlayerActivity2.getResources().getDisplayMetrics().widthPixels / 3;
                        float f7 = webPlayerActivity2.getResources().getDisplayMetrics().heightPixels / 3;
                        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, 300 + uptimeMillis2, 0, f3, f7, 0);
                        MotionEvent obtain2 = MotionEvent.obtain(uptimeMillis, 500 + uptimeMillis2, 1, f3, f7, 0);
                        webPlayerActivity2.f15724I.dispatchTouchEvent(obtain);
                        webPlayerActivity2.f15724I.dispatchTouchEvent(obtain2);
                        break;
                }
            }
        }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        String uri = webResourceRequest.getUrl().toString();
        if (!T4.a.getInstance().isAd(uri)) {
            return super.shouldInterceptRequest(webView, webResourceRequest);
        }
        Log.d("AdBlocker", "Blocking ad request: " + uri);
        return T4.a.getInstance().createEmptyResource();
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return false;
    }
}
