package B4;

import android.view.View;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import flix.com.vision.activities.player.WebPlayerActivitySuper;
import flix.com.vision.helpers.CursorLayout;

/* loaded from: classes2.dex */
public final class Y extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout.LayoutParams f251a = new FrameLayout.LayoutParams(-1, -1);

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WebPlayerActivitySuper f252b;

    public Y(WebPlayerActivitySuper webPlayerActivitySuper) {
        this.f252b = webPlayerActivitySuper;
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        this.f252b.e();
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        WebPlayerActivitySuper webPlayerActivitySuper = this.f252b;
        if (webPlayerActivitySuper.f15759L != null) {
            customViewCallback.onCustomViewHidden();
            return;
        }
        webPlayerActivitySuper.getClass();
        view.setLayoutParams(this.f251a);
        webPlayerActivitySuper.f15759L = view;
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        RelativeLayout relativeLayout = webPlayerActivitySuper.f15753F;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        CursorLayout cursorLayout = webPlayerActivitySuper.f15765m;
        if (cursorLayout != null) {
            cursorLayout.setTranslationX(-5000.0f);
        }
        LinearLayout linearLayout = webPlayerActivitySuper.f15774w;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        FrameLayout frameLayout = webPlayerActivitySuper.f15763f;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            webPlayerActivitySuper.f15763f.addView(view);
            webPlayerActivitySuper.f15763f.setBackgroundColor(0);
            webPlayerActivitySuper.f15763f.setVisibility(0);
            webPlayerActivitySuper.f15763f.bringToFront();
            webPlayerActivitySuper.f15763f.requestFocus();
        }
        webPlayerActivitySuper.f15760M = customViewCallback;
        webPlayerActivitySuper.f15766n.setVisibility(4);
    }
}
