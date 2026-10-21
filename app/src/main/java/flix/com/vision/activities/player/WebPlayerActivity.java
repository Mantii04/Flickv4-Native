package flix.com.vision.activities.player;

import B4.M;
import B4.O;
import B4.P;
import B4.S;
import B4.T;
import Q4.d;
import U4.m;
import android.annotation.SuppressLint;
import android.app.FragmentManager;
import android.content.res.AssetManager;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.upstream.CmcdData;
import e.AbstractActivityC0842v;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.helpers.CursorLayout;
import flix.com.vision.models.Movie;
import flix.com.vision.models.VideoSource;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import m4.D;

/* loaded from: classes2.dex */
public class WebPlayerActivity extends AbstractActivityC0842v implements m {

    /* renamed from: O, reason: collision with root package name */
    public static final /* synthetic */ int f15715O = 0;

    /* renamed from: A, reason: collision with root package name */
    public TextView f15716A;

    /* renamed from: B, reason: collision with root package name */
    public Typeface f15717B;

    /* renamed from: C, reason: collision with root package name */
    public Typeface f15718C;

    /* renamed from: D, reason: collision with root package name */
    public C0996j f15719D;

    /* renamed from: E, reason: collision with root package name */
    public String f15720E;

    /* renamed from: F, reason: collision with root package name */
    public RelativeLayout f15721F;

    /* renamed from: H, reason: collision with root package name */
    public int f15723H;

    /* renamed from: I, reason: collision with root package name */
    public WebView f15724I;

    /* renamed from: J, reason: collision with root package name */
    public String f15725J;

    /* renamed from: M, reason: collision with root package name */
    public View f15728M;

    /* renamed from: N, reason: collision with root package name */
    public WebChromeClient.CustomViewCallback f15729N;

    /* renamed from: b, reason: collision with root package name */
    public Animation f15730b;

    /* renamed from: f, reason: collision with root package name */
    public FrameLayout f15732f;

    /* renamed from: j, reason: collision with root package name */
    public View f15733j;

    /* renamed from: m, reason: collision with root package name */
    public CursorLayout f15734m;

    /* renamed from: p, reason: collision with root package name */
    public LinearLayout f15736p;

    /* renamed from: q, reason: collision with root package name */
    public String f15737q;

    /* renamed from: r, reason: collision with root package name */
    public Movie f15738r;

    /* renamed from: s, reason: collision with root package name */
    public View f15739s;

    /* renamed from: t, reason: collision with root package name */
    public ImageView f15740t;

    /* renamed from: u, reason: collision with root package name */
    public ImageView f15741u;

    /* renamed from: v, reason: collision with root package name */
    public ImageView f15742v;

    /* renamed from: w, reason: collision with root package name */
    public LinearLayout f15743w;

    /* renamed from: x, reason: collision with root package name */
    public TextView f15744x;

    /* renamed from: y, reason: collision with root package name */
    public TextView f15745y;

    /* renamed from: z, reason: collision with root package name */
    public TextView f15746z;

    /* renamed from: e, reason: collision with root package name */
    public boolean f15731e = false;

    /* renamed from: n, reason: collision with root package name */
    public int f15735n = 0;

    /* renamed from: G, reason: collision with root package name */
    public int f15722G = 0;

    /* renamed from: K, reason: collision with root package name */
    public boolean f15726K = false;

    /* renamed from: L, reason: collision with root package name */
    public boolean f15727L = false;

    public final void e() {
        try {
            FrameLayout frameLayout = this.f15732f;
            if (frameLayout != null) {
                frameLayout.removeAllViews();
                this.f15732f.setVisibility(8);
            }
            this.f15728M = null;
            WebChromeClient.CustomViewCallback customViewCallback = this.f15729N;
            if (customViewCallback != null) {
                customViewCallback.onCustomViewHidden();
            }
            WebView webView = this.f15724I;
            if (webView != null) {
                webView.setVisibility(0);
                this.f15724I.requestFocus();
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // U4.m
    public void infoToggle(boolean z6) {
        if (z6) {
            this.f15743w.setVisibility(z6 ? 0 : 8);
        } else {
            this.f15743w.animate().alpha(0.0f).setDuration(400L).setListener(new O(this));
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @SuppressLint({"MissingSuperCall"})
    public void onBackPressed() {
        showDialog();
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        AssetManager assets = getAssets();
        String str2 = Constant.f16184b;
        this.f15717B = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f15718C = Typeface.createFromAsset(getAssets(), "fonts/product_sans_bold.ttf");
        this.f15719D = new C0996j();
        this.f15722G = getIntent().getIntExtra("episode_number", 0);
        this.f15735n = getIntent().getIntExtra("season_number", 0);
        this.f15738r = (Movie) getIntent().getSerializableExtra("movie");
        this.f15723H = getIntent().getIntExtra("runtime", 0);
        getIntent().getBooleanExtra("move_clock", false);
        setContentView(App.f14424I ? R.layout.activity_web_player : R.layout.activity_web_player_light);
        this.f15716A = (TextView) findViewById(R.id.text_view_rating);
        this.f15732f = (FrameLayout) findViewById(R.id.fullscreen_frame);
        String stringExtra = getIntent().getStringExtra("movie_rating");
        if (stringExtra != null) {
            this.f15716A.setText(stringExtra);
            this.f15716A.setVisibility(0);
        }
        this.f15742v = (ImageView) findViewById(R.id.title_poster_img);
        this.f15734m = (CursorLayout) findViewById(R.id.cursorLayout);
        this.f15741u = (ImageView) findViewById(R.id.poster_image);
        this.f15733j = findViewById(R.id.water_mark_view);
        this.f15745y = (TextView) findViewById(R.id.undertitle);
        this.f15746z = (TextView) findViewById(R.id.undertitle_episode);
        this.f15721F = (RelativeLayout) findViewById(R.id.background_relative_layout);
        CursorLayout cursorLayout = this.f15734m;
        if (cursorLayout != null) {
            cursorLayout.setActivity(this);
            try {
                try {
                    int color = getResources().getColor(App.getInstance().f14440s.getInt("mouse_toggle_color", R.color.accent));
                    this.f15734m.setCursorColor(Color.red(color), Color.green(color), Color.blue(color));
                } catch (Exception unused) {
                    int color2 = getResources().getColor(R.color.md_deep_orange_500);
                    this.f15734m.setCursorColor(Color.red(color2), Color.green(color2), Color.blue(color2));
                }
            } catch (Exception unused2) {
            }
        }
        App.getInstance().f14440s.getBoolean("pref_show_time", true);
        this.f15743w = (LinearLayout) findViewById(R.id.movie_title_container);
        this.f15744x = (TextView) findViewById(R.id.movie_title_web_text);
        getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        this.f15719D.applyFontToView(this.f15744x, this.f15718C);
        this.f15719D.applyFontToView(this.f15746z, this.f15717B);
        this.f15719D.applyFontToView(this.f15745y, this.f15717B);
        new Handler();
        this.f15724I = (WebView) findViewById(R.id.webview);
        try {
            int i2 = this.f15723H;
            if (i2 > 0) {
                if (i2 > 60) {
                    str = (this.f15723H / 60) + "h " + (this.f15723H % 60) + CmcdData.OBJECT_TYPE_MANIFEST;
                } else {
                    str = this.f15723H + CmcdData.OBJECT_TYPE_MANIFEST;
                }
                this.f15745y.setText(this.f15738r.getYear() + "  ·  " + str);
            } else {
                this.f15745y.setText(this.f15738r.getYear());
            }
        } catch (Exception unused3) {
        }
        this.f15740t = (ImageView) findViewById(R.id.background_image_web);
        this.f15736p = (LinearLayout) findViewById(R.id.progress_web);
        View decorView = getWindow().getDecorView();
        this.f15739s = decorView;
        decorView.setSystemUiVisibility(AnalyticsListener.EVENT_PLAYER_RELEASED);
        try {
            D.get().load(this.f15738r.getImage_url()).into(this.f15741u, new P(this));
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        String stringExtra2 = getIntent().getStringExtra("poster");
        String stringExtra3 = getIntent().getStringExtra("title");
        this.f15720E = getIntent().getStringExtra("title_episode");
        if (this.f15738r.isSeries() || this.f15738r.anime) {
            String str3 = this.f15720E;
            if (str3 == null || str3.isEmpty()) {
                this.f15746z.setText("Episode " + this.f15722G);
            } else {
                this.f15746z.setText(this.f15720E);
            }
            this.f15746z.setVisibility(0);
        }
        if (stringExtra3 != null) {
            this.f15744x.setText(stringExtra3);
        }
        if (stringExtra2 != null && !stringExtra2.isEmpty()) {
            try {
                D.get().load(stringExtra2).fit().centerCrop().into(this.f15740t);
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        this.f15737q = getIntent().getStringExtra("url");
        String str4 = this.f15738r.logoUrl;
        this.f15725J = str4;
        if (str4 == null || str4.isEmpty()) {
            this.f15736p.setVisibility(0);
        } else {
            this.f15736p.setVisibility(8);
            this.f15731e = true;
            try {
                D.get().load(this.f15725J).into(this.f15742v);
            } catch (Exception e8) {
                e8.printStackTrace();
            }
            this.f15730b = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.fade_in_infinite);
            try {
                this.f15742v.setAlpha(1.0f);
                this.f15742v.startAnimation(this.f15730b);
            } catch (Exception unused4) {
            }
        }
        this.f15724I.setBackgroundColor(-16777216);
        this.f15724I.getSettings().setAllowFileAccessFromFileURLs(true);
        this.f15724I.getSettings().setAllowUniversalAccessFromFileURLs(true);
        this.f15724I.getSettings().setJavaScriptEnabled(true);
        this.f15724I.getSettings().setDomStorageEnabled(true);
        this.f15724I.getSettings().setDatabaseEnabled(true);
        this.f15724I.getSettings().setJavaScriptCanOpenWindowsAutomatically(false);
        this.f15724I.getSettings().setSupportMultipleWindows(true);
        this.f15724I.getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);
        this.f15724I.setWebChromeClient(new T(this));
        this.f15724I.setWebViewClient(new S(this));
        this.f15724I.loadUrl(this.f15737q);
    }

    @Override // e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f15727L && App.getInstance().f14440s.getBoolean("pref_hide_watermark", false)) {
            VideoSource videoSource = new VideoSource();
            videoSource.streamUrl = this.f15737q;
            if (videoSource.hasMultiSubtitles()) {
                this.f15733j.setVisibility(0);
            }
        }
    }

    @Override // e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z6) {
        super.onWindowFocusChanged(z6);
        if (z6) {
            this.f15739s.setSystemUiVisibility(5894);
        }
    }

    @Override // U4.m
    public void showDialog() {
        if (this.f15726K) {
            return;
        }
        FrameLayout frameLayout = this.f15732f;
        if (frameLayout != null && frameLayout.getVisibility() == 0) {
            e();
            return;
        }
        this.f15726K = true;
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, false);
        newInstance.setTitle("Exit");
        newInstance.setCancelable(false);
        newInstance.setMessage("Do you really want to stop playback and exit ?");
        newInstance.setButton1("CANCEL", new M(this, 0));
        newInstance.setButton2("YES", new M(this, 1));
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            this.f15726K = false;
            e3.printStackTrace();
        }
    }
}
