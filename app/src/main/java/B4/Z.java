package B4;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import flix.com.vision.activities.player.YouTubeWebviewActivity;

/* loaded from: classes2.dex */
public final class Z extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ YouTubeWebviewActivity f253a;

    public Z(YouTubeWebviewActivity youTubeWebviewActivity) {
        this.f253a = youTubeWebviewActivity;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        YouTubeWebviewActivity youTubeWebviewActivity = this.f253a;
        youTubeWebviewActivity.f15783m.setVisibility(8);
        if (youTubeWebviewActivity.f15788s) {
            try {
                youTubeWebviewActivity.f15782j.setVisibility(8);
                youTubeWebviewActivity.f15787r.clearAnimation();
                youTubeWebviewActivity.f15787r.setAlpha(1.0f);
            } catch (Exception unused) {
            }
        }
        youTubeWebviewActivity.f15786q.setVisibility(8);
        youTubeWebviewActivity.f15784n.setVisibility(0);
    }
}
