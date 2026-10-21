package flix.com.vision.activities.player;

import A4.q;
import B4.ViewOnClickListenerC0038a;
import B4.Z;
import Q4.d;
import T4.j;
import U4.m;
import android.app.FragmentManager;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.github.ybq.android.spinkit.SpinKitView;
import flix.com.vision.R;
import flix.com.vision.activities.base.a;
import flix.com.vision.helpers.CursorLayout;
import java.io.InputStream;
import m4.D;

/* loaded from: classes2.dex */
public class YouTubeWebviewActivity extends a implements m {

    /* renamed from: t, reason: collision with root package name */
    public static final /* synthetic */ int f15778t = 0;

    /* renamed from: b, reason: collision with root package name */
    public String f15779b;

    /* renamed from: e, reason: collision with root package name */
    public j f15780e;

    /* renamed from: f, reason: collision with root package name */
    public Animation f15781f;

    /* renamed from: j, reason: collision with root package name */
    public RelativeLayout f15782j;

    /* renamed from: m, reason: collision with root package name */
    public SpinKitView f15783m;

    /* renamed from: n, reason: collision with root package name */
    public WebView f15784n;

    /* renamed from: p, reason: collision with root package name */
    public View f15785p;

    /* renamed from: q, reason: collision with root package name */
    public ImageView f15786q;

    /* renamed from: r, reason: collision with root package name */
    public ImageView f15787r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f15788s = false;

    @Override // U4.m
    public void infoToggle(boolean z6) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        finish();
        super.onBackPressed();
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_you_tube_webview);
        View decorView = getWindow().getDecorView();
        this.f15785p = decorView;
        if (decorView != null) {
            decorView.setSystemUiVisibility(AnalyticsListener.EVENT_PLAYER_RELEASED);
        }
        this.f15780e = new j();
        this.f15787r = (ImageView) findViewById(R.id.title_poster_img);
        this.f15782j = (RelativeLayout) findViewById(R.id.buffering_layout);
        this.f15786q = (ImageView) findViewById(R.id.poster_yt);
        this.f15783m = (SpinKitView) findViewById(R.id.loader);
        this.f15784n = (WebView) findViewById(R.id.webview);
        CursorLayout cursorLayout = (CursorLayout) findViewById(R.id.cursorLayout);
        if (cursorLayout != null) {
            cursorLayout.setActivity(this);
        }
        this.f15784n.setWebViewClient(new WebViewClient());
        this.f15784n.getSettings().setAllowFileAccessFromFileURLs(true);
        this.f15784n.getSettings().setAllowUniversalAccessFromFileURLs(true);
        String stringExtra = getIntent().getStringExtra("video_id");
        String stringExtra2 = getIntent().getStringExtra("poster");
        if (stringExtra2 != null && !stringExtra2.isEmpty()) {
            try {
                try {
                    D.get().load(stringExtra2).fit().centerCrop().into(this.f15786q);
                } catch (OutOfMemoryError e3) {
                    e3.printStackTrace();
                }
            } catch (Exception unused) {
            }
        }
        String stringExtra3 = getIntent().getStringExtra("title_logo");
        this.f15779b = stringExtra3;
        if (stringExtra3 != null && !stringExtra3.isEmpty() && this.f15782j != null) {
            this.f15788s = true;
            try {
                D.get().load(this.f15779b).into(this.f15787r);
            } catch (Exception e7) {
                e7.printStackTrace();
            }
            this.f15781f = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.fade_in_infinite);
            this.f15783m.setVisibility(8);
            try {
                this.f15787r.setAlpha(1.0f);
                this.f15782j.setVisibility(0);
                this.f15787r.startAnimation(this.f15781f);
            } catch (Exception unused2) {
            }
        }
        this.f15784n.setWebViewClient(new Z(this));
        this.f15784n.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        this.f15784n.getSettings().setSupportMultipleWindows(true);
        this.f15784n.getSettings().setAllowFileAccess(true);
        this.f15784n.getSettings().setJavaScriptEnabled(true);
        this.f15784n.getSettings().setAllowContentAccess(true);
        this.f15784n.getSettings().setMediaPlaybackRequiresUserGesture(false);
        this.f15784n.getSettings().setDomStorageEnabled(true);
        this.f15784n.setWebChromeClient(new WebChromeClient());
        this.f15784n.getSettings().setMixedContentMode(0);
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        cookieManager.setAcceptThirdPartyCookies(this.f15784n, true);
        try {
            InputStream open = getAssets().open("goyt2.html");
            byte[] bArr = new byte[open.available()];
            open.read(bArr);
            open.close();
            String replace = new String(bArr, "UTF-8").replace("INJECT_VIDEO_ID_HERE", stringExtra);
            WebView webView = this.f15784n;
            if (webView != null) {
                webView.loadDataWithBaseURL("https://localhost", replace, "text/html", "UTF-8", null);
            }
        } catch (Exception e8) {
            e8.printStackTrace();
        }
    }

    @Override // e.AbstractActivityC0842v, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (this.f15780e.getDirectionPressed(keyEvent) != 10) {
            return super.onKeyDown(i2, keyEvent);
        }
        if (keyEvent.getRepeatCount() != 0) {
            return true;
        }
        showDialog();
        return true;
    }

    @Override // e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z6) {
        super.onWindowFocusChanged(z6);
        if (z6) {
            this.f15785p.setSystemUiVisibility(5894);
        }
    }

    @Override // U4.m
    public void showDialog() {
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager.findFragmentByTag("EXIT_DIALOG") != null) {
            return;
        }
        d newInstance = d.newInstance(this, true);
        newInstance.setTitle("Exit");
        newInstance.setMessage("Do you really want to and exit trailer?");
        newInstance.setButton1("CANCEL", new q(3));
        newInstance.setButton2("YES", new ViewOnClickListenerC0038a(this, 1));
        try {
            newInstance.show(fragmentManager, "EXIT_DIALOG");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
