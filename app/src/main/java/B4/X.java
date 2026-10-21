package B4;

import android.util.Log;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import flix.com.vision.App;
import flix.com.vision.activities.player.WebPlayerActivitySuper;
import io.reactivex.android.schedulers.AndroidSchedulers;

/* loaded from: classes2.dex */
public final class X extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebPlayerActivitySuper f250a;

    public X(WebPlayerActivitySuper webPlayerActivitySuper) {
        this.f250a = webPlayerActivitySuper;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        WebPlayerActivitySuper webPlayerActivitySuper = this.f250a;
        LinearLayout linearLayout = webPlayerActivitySuper.f15767p;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        RelativeLayout relativeLayout = webPlayerActivitySuper.f15753F;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        if (webPlayerActivitySuper.f15762e) {
            try {
                webPlayerActivitySuper.f15773v.clearAnimation();
                webPlayerActivitySuper.f15773v.setAlpha(1.0f);
            } catch (Exception unused) {
            }
        }
        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
            if (webPlayerActivitySuper.f15769r.isSeries()) {
                App.getInstance().f14438q.checkInEpisode(webPlayerActivitySuper.f15769r, webPlayerActivitySuper.f15755H, webPlayerActivitySuper.f15754G).observeOn(AndroidSchedulers.mainThread()).subscribe(new N(webPlayerActivitySuper, 1), new A4.c(10));
            } else {
                App.getInstance().f14438q.checkInMovie(webPlayerActivitySuper.f15769r);
            }
        }
        webPlayerActivitySuper.f15766n.setVisibility(0);
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
