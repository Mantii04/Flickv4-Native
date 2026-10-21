package flix.com.vision.subtitles;

import U4.m;
import android.app.FragmentManager;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.github.ybq.android.spinkit.SpinKitView;
import com.google.firebase.sessions.settings.RemoteSettings;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.helpers.CursorLayout;
import m4.D;

/* loaded from: classes2.dex */
public class SubtitlesWebViewActivity extends flix.com.vision.activities.base.a implements m {
    static final int BACK = 10;
    CursorLayout cursorLayout;
    View decorView;
    LinearLayout info_layout;
    SpinKitView loader;
    T4.j mDpad;
    ImageView poster_yt;
    TextView title_text_view;
    WebView web;

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDownloadListener$0(String str, String str2, String str3, String str4, long j7) {
        if (str == null || str.length() <= 0) {
            return;
        }
        showDialogSubtitle(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showDialog$1(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDialog$2(View view) {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showDialogHelp$5(View view) {
        A.i.x(App.getInstance().f14440s, "open_sub_help_shown", true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$showDialogSubtitle$3(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDialogSubtitle$4(String str, View view) {
        if (!str.endsWith(".srt") && !str.endsWith(".vtt")) {
            SubDownload.downloadSubtitle(this, str);
            finish();
        }
        SubDownload.downloadSubtitleDirect(this, str);
        finish();
    }

    @Override // U4.m
    public void infoToggle(boolean z6) {
    }

    public void loadImage(String str) {
        try {
            try {
                D.get().load(R.drawable.open_sub_logo).fit().centerCrop().into(this.poster_yt);
            } catch (OutOfMemoryError e3) {
                e3.printStackTrace();
            }
        } catch (Exception unused) {
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        finish();
        super.onBackPressed();
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.subtitle_webview_activity);
        View decorView = getWindow().getDecorView();
        this.decorView = decorView;
        decorView.setSystemUiVisibility(AnalyticsListener.EVENT_PLAYER_RELEASED);
        this.mDpad = new T4.j();
        this.info_layout = (LinearLayout) findViewById(R.id.info_layout);
        this.poster_yt = (ImageView) findViewById(R.id.poster_yt);
        this.loader = (SpinKitView) findViewById(R.id.loader);
        this.title_text_view = (TextView) findViewById(R.id.title_text_view);
        this.web = (WebView) findViewById(R.id.webview);
        CursorLayout cursorLayout = (CursorLayout) findViewById(R.id.cursorLayout);
        this.cursorLayout = cursorLayout;
        if (cursorLayout != null) {
            cursorLayout.setActivity(this);
        }
        this.web.setWebViewClient(new WebViewClient());
        setDownloadListener();
        String stringExtra = getIntent().getStringExtra("url");
        String stringExtra2 = getIntent().getStringExtra("title");
        if (stringExtra2 != null) {
            boolean z6 = !stringExtra2.isEmpty();
            TextView textView = this.title_text_view;
            if (z6 & (textView != null)) {
                textView.setText(stringExtra2);
            }
        }
        loadImage(null);
        WebView webView = this.web;
        if (webView != null && stringExtra != null) {
            webView.loadUrl(stringExtra);
        }
        this.web.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        this.web.getSettings().setSupportMultipleWindows(true);
        this.web.getSettings().setAllowFileAccess(true);
        this.web.setWebViewClient(new WebViewClient() { // from class: flix.com.vision.subtitles.SubtitlesWebViewActivity.1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
                super.onPageFinished(webView2, str);
                LinearLayout linearLayout = SubtitlesWebViewActivity.this.info_layout;
                if (linearLayout != null) {
                    linearLayout.setVisibility(0);
                }
                SubtitlesWebViewActivity.this.loader.setVisibility(8);
                SubtitlesWebViewActivity.this.poster_yt.setVisibility(8);
                SubtitlesWebViewActivity.this.web.setVisibility(0);
                SubtitlesWebViewActivity.this.showDialogHelp();
            }
        });
        this.web.getSettings().setJavaScriptEnabled(true);
        this.web.getSettings().setAllowContentAccess(true);
    }

    @Override // e.AbstractActivityC0842v, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (this.mDpad.getDirectionPressed(keyEvent) != 10) {
            return super.onKeyDown(i2, keyEvent);
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
            this.decorView.setSystemUiVisibility(5894);
        }
    }

    public void setDownloadListener() {
        this.web.setDownloadListener(new DownloadListener() { // from class: flix.com.vision.subtitles.h
            @Override // android.webkit.DownloadListener
            public final void onDownloadStart(String str, String str2, String str3, String str4, long j7) {
                SubtitlesWebViewActivity.this.lambda$setDownloadListener$0(str, str2, str3, str4, j7);
            }
        });
    }

    @Override // U4.m
    public void showDialog() {
        FragmentManager fragmentManager = getFragmentManager();
        Q4.d newInstance = Q4.d.newInstance(this, true);
        newInstance.setTitle("Exit");
        newInstance.setMessage("Do you really want to and exit without downloading Subtitles?");
        newInstance.setButton1("CANCEL", new i(1));
        newInstance.setButton2("YES", new View.OnClickListener() { // from class: flix.com.vision.subtitles.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubtitlesWebViewActivity.this.lambda$showDialog$2(view);
            }
        });
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public void showDialogHelp() {
        if (App.getInstance().f14440s.getBoolean("open_sub_help_shown", false)) {
            return;
        }
        FragmentManager fragmentManager = getFragmentManager();
        Q4.d newInstance = Q4.d.newInstance(this, false);
        newInstance.setTitle("How to Download Subtitles?");
        newInstance.setMessage("Simply scroll down and select a .SRT or .VTT Subtitle file and we'll download it for you");
        newInstance.setButton2("GOT IT", new i(0));
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public void showDialogSubtitle(final String str) {
        String substring = str.length() > 100 ? str.substring(str.lastIndexOf(RemoteSettings.FORWARD_SLASH_STRING) + 1, str.length()) : str;
        FragmentManager fragmentManager = getFragmentManager();
        Q4.d newInstance = Q4.d.newInstance(this, true);
        newInstance.setTitle("Download this Subtitle?");
        newInstance.setMessage(substring);
        newInstance.setButton1("CANCEL", new i(2));
        newInstance.setButton2("YES", new View.OnClickListener() { // from class: flix.com.vision.subtitles.k
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SubtitlesWebViewActivity.this.lambda$showDialogSubtitle$4(str, view);
            }
        });
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
