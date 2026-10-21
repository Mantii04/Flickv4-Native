package B4;

import android.view.View;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import flix.com.vision.activities.player.WebPlayerActivity;

/* loaded from: classes2.dex */
public final class T extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout.LayoutParams f244a = new FrameLayout.LayoutParams(-1, -1);

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WebPlayerActivity f245b;

    public T(WebPlayerActivity webPlayerActivity) {
        this.f245b = webPlayerActivity;
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        this.f245b.e();
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        WebPlayerActivity webPlayerActivity = this.f245b;
        if (webPlayerActivity.f15728M != null) {
            customViewCallback.onCustomViewHidden();
            return;
        }
        webPlayerActivity.getClass();
        view.setLayoutParams(this.f244a);
        webPlayerActivity.f15728M = view;
        FrameLayout frameLayout = webPlayerActivity.f15732f;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            webPlayerActivity.f15732f.addView(view);
            webPlayerActivity.f15732f.setVisibility(0);
            webPlayerActivity.f15732f.requestFocus();
        }
        webPlayerActivity.f15729N = customViewCallback;
        webPlayerActivity.f15724I.setVisibility(4);
    }
}
