package flix.com.vision.activities.player;

import B4.V;
import B4.W;
import B4.X;
import B4.Y;
import Q4.d;
import U4.m;
import android.annotation.SuppressLint;
import android.app.FragmentManager;
import android.content.res.AssetManager;
import android.graphics.Color;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.webkit.CookieManager;
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
import flix.com.vision.activities.player.WebPlayerActivitySuper;
import flix.com.vision.helpers.CursorLayout;
import flix.com.vision.models.Movie;
import flix.com.vision.tv.Constant;
import h5.AbstractC0995i;
import h5.C0996j;
import m4.D;

/* loaded from: classes2.dex */
public class WebPlayerActivitySuper extends AbstractActivityC0842v implements m {

    /* renamed from: N, reason: collision with root package name */
    public static final /* synthetic */ int f15747N = 0;

    /* renamed from: A, reason: collision with root package name */
    public TextView f15748A;

    /* renamed from: B, reason: collision with root package name */
    public Typeface f15749B;

    /* renamed from: C, reason: collision with root package name */
    public Typeface f15750C;

    /* renamed from: D, reason: collision with root package name */
    public C0996j f15751D;

    /* renamed from: E, reason: collision with root package name */
    public String f15752E;

    /* renamed from: F, reason: collision with root package name */
    public RelativeLayout f15753F;

    /* renamed from: I, reason: collision with root package name */
    public int f15756I;

    /* renamed from: J, reason: collision with root package name */
    public String f15757J;

    /* renamed from: L, reason: collision with root package name */
    public View f15759L;

    /* renamed from: M, reason: collision with root package name */
    public WebChromeClient.CustomViewCallback f15760M;

    /* renamed from: b, reason: collision with root package name */
    public Animation f15761b;

    /* renamed from: f, reason: collision with root package name */
    public FrameLayout f15763f;

    /* renamed from: j, reason: collision with root package name */
    public View f15764j;

    /* renamed from: m, reason: collision with root package name */
    public CursorLayout f15765m;

    /* renamed from: n, reason: collision with root package name */
    public WebView f15766n;

    /* renamed from: p, reason: collision with root package name */
    public LinearLayout f15767p;

    /* renamed from: q, reason: collision with root package name */
    public String f15768q;

    /* renamed from: r, reason: collision with root package name */
    public Movie f15769r;

    /* renamed from: s, reason: collision with root package name */
    public View f15770s;

    /* renamed from: t, reason: collision with root package name */
    public ImageView f15771t;

    /* renamed from: u, reason: collision with root package name */
    public ImageView f15772u;

    /* renamed from: v, reason: collision with root package name */
    public ImageView f15773v;

    /* renamed from: w, reason: collision with root package name */
    public LinearLayout f15774w;

    /* renamed from: x, reason: collision with root package name */
    public TextView f15775x;

    /* renamed from: y, reason: collision with root package name */
    public TextView f15776y;

    /* renamed from: z, reason: collision with root package name */
    public TextView f15777z;

    /* renamed from: e, reason: collision with root package name */
    public boolean f15762e = false;

    /* renamed from: G, reason: collision with root package name */
    public int f15754G = 0;

    /* renamed from: H, reason: collision with root package name */
    public int f15755H = 0;

    /* renamed from: K, reason: collision with root package name */
    public boolean f15758K = false;

    public final void e() {
        try {
            FrameLayout frameLayout = this.f15763f;
            if (frameLayout != null) {
                frameLayout.removeAllViews();
                this.f15763f.setVisibility(8);
            }
            this.f15759L = null;
            WebChromeClient.CustomViewCallback customViewCallback = this.f15760M;
            if (customViewCallback != null) {
                customViewCallback.onCustomViewHidden();
                this.f15760M = null;
            }
            CursorLayout cursorLayout = this.f15765m;
            if (cursorLayout != null) {
                cursorLayout.setTranslationX(0.0f);
            }
            WebView webView = this.f15766n;
            if (webView != null) {
                webView.setVisibility(0);
                this.f15766n.requestFocus();
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // U4.m
    public void infoToggle(boolean z6) {
        if (z6) {
            this.f15774w.setVisibility(z6 ? 0 : 8);
        } else {
            this.f15774w.animate().alpha(0.0f).setDuration(400L).setListener(new V(this));
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @SuppressLint({"MissingSuperCall"})
    public void onBackPressed() {
        if (this.f15759L != null) {
            e();
        } else {
            showDialog();
        }
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        Uri.Builder buildUpon;
        String str;
        super.onCreate(bundle);
        AssetManager assets = getAssets();
        String str2 = Constant.f16184b;
        this.f15749B = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f15750C = Typeface.createFromAsset(getAssets(), "fonts/product_sans_bold.ttf");
        this.f15751D = new C0996j();
        this.f15769r = (Movie) getIntent().getSerializableExtra("movie");
        this.f15756I = getIntent().getIntExtra("runtime", 0);
        getIntent().getBooleanExtra("move_clock", false);
        setContentView(App.f14424I ? R.layout.activity_web_player : R.layout.activity_web_player_light);
        this.f15748A = (TextView) findViewById(R.id.text_view_rating);
        this.f15763f = (FrameLayout) findViewById(R.id.fullscreen_frame);
        String stringExtra = getIntent().getStringExtra("movie_rating");
        if (stringExtra != null) {
            this.f15748A.setText(stringExtra);
            this.f15748A.setVisibility(0);
        }
        this.f15773v = (ImageView) findViewById(R.id.title_poster_img);
        this.f15765m = (CursorLayout) findViewById(R.id.cursorLayout);
        this.f15772u = (ImageView) findViewById(R.id.poster_image);
        this.f15764j = findViewById(R.id.water_mark_view);
        this.f15776y = (TextView) findViewById(R.id.undertitle);
        this.f15777z = (TextView) findViewById(R.id.undertitle_episode);
        this.f15753F = (RelativeLayout) findViewById(R.id.background_relative_layout);
        CursorLayout cursorLayout = this.f15765m;
        if (cursorLayout != null) {
            cursorLayout.setActivity(this);
            try {
                try {
                    int color = getResources().getColor(App.getInstance().f14440s.getInt("mouse_toggle_color", R.color.accent));
                    this.f15765m.setCursorColor(Color.red(color), Color.green(color), Color.blue(color));
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                int color2 = getResources().getColor(R.color.md_deep_orange_500);
                this.f15765m.setCursorColor(Color.red(color2), Color.green(color2), Color.blue(color2));
            }
        }
        App.getInstance().f14440s.getBoolean("pref_show_time", true);
        this.f15774w = (LinearLayout) findViewById(R.id.movie_title_container);
        this.f15775x = (TextView) findViewById(R.id.movie_title_web_text);
        this.f15751D.applyFontToView(this.f15775x, this.f15750C);
        this.f15751D.applyFontToView(this.f15777z, this.f15749B);
        this.f15751D.applyFontToView(this.f15776y, this.f15749B);
        this.f15766n = (WebView) findViewById(R.id.webview);
        try {
            int i2 = this.f15756I;
            if (i2 > 0) {
                if (i2 > 60) {
                    str = (this.f15756I / 60) + "h " + (this.f15756I % 60) + CmcdData.OBJECT_TYPE_MANIFEST;
                } else {
                    str = this.f15756I + CmcdData.OBJECT_TYPE_MANIFEST;
                }
                this.f15776y.setText(this.f15769r.getYear() + "  ·  " + str);
            } else {
                this.f15776y.setText(this.f15769r.getYear());
            }
        } catch (Exception unused3) {
        }
        this.f15771t = (ImageView) findViewById(R.id.background_image_web);
        this.f15767p = (LinearLayout) findViewById(R.id.progress_web);
        View decorView = getWindow().getDecorView();
        this.f15770s = decorView;
        decorView.setSystemUiVisibility(AnalyticsListener.EVENT_PLAYER_RELEASED);
        try {
            D.get().load(this.f15769r.getImage_url()).into(this.f15772u, new W(this));
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        String stringExtra2 = getIntent().getStringExtra("poster");
        String stringExtra3 = getIntent().getStringExtra("title");
        this.f15752E = getIntent().getStringExtra("title_episode");
        this.f15754G = getIntent().getIntExtra("episode_number", 0);
        this.f15755H = getIntent().getIntExtra("season_number", 0);
        if (this.f15769r.isSeries() || this.f15769r.anime) {
            String str3 = this.f15752E;
            if (str3 == null || str3.isEmpty()) {
                this.f15777z.setText("Episode " + this.f15754G);
            } else {
                this.f15777z.setText(this.f15752E);
            }
            this.f15777z.setVisibility(0);
        }
        if (stringExtra3 != null) {
            this.f15775x.setText(stringExtra3);
        }
        if (stringExtra2 != null && !stringExtra2.isEmpty()) {
            try {
                D.get().load(stringExtra2).fit().centerCrop().into(this.f15771t);
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        String stringExtra4 = getIntent().getStringExtra("title_logo");
        this.f15757J = stringExtra4;
        if (stringExtra4 == null || stringExtra4.isEmpty()) {
            this.f15767p.setVisibility(0);
        } else {
            this.f15767p.setVisibility(8);
            this.f15762e = true;
            try {
                D.get().load(this.f15757J).into(this.f15773v);
            } catch (Exception e8) {
                e8.printStackTrace();
            }
            this.f15761b = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.fade_in_infinite);
            try {
                this.f15773v.setAlpha(1.0f);
                this.f15773v.startAnimation(this.f15761b);
            } catch (Exception unused4) {
            }
        }
        Movie movie = this.f15769r;
        if (movie == null) {
            AbstractC0995i.makeToastLong(this, "Error: Movie data missing.", true);
            finish();
            return;
        }
        int i7 = this.f15755H;
        int i8 = this.f15754G;
        if (movie.isSeries()) {
            buildUpon = Uri.parse("https://multiembed.mov/").buildUpon();
            if (movie.getMovieId() != 0) {
                buildUpon.appendQueryParameter("video_id", String.valueOf(movie.getMovieId()));
                buildUpon.appendQueryParameter("tmdb", "1");
            } else if (movie.getImdbID() != null && !movie.getImdbID().isEmpty()) {
                buildUpon.appendQueryParameter("video_id", movie.getImdbID());
            }
            buildUpon.appendQueryParameter(CmcdData.STREAMING_FORMAT_SS, String.valueOf(i7));
            buildUpon.appendQueryParameter("e", String.valueOf(i8));
        } else {
            buildUpon = Uri.parse("https://multiembed.mov/").buildUpon();
            if (movie.getImdbID() != null && !movie.getImdbID().isEmpty()) {
                buildUpon.appendQueryParameter("video_id", movie.getImdbID());
            } else if (movie.getMovieId() != 0) {
                buildUpon.appendQueryParameter("video_id", String.valueOf(movie.getMovieId()));
                buildUpon.appendQueryParameter("tmdb", "1");
            }
        }
        String uri = buildUpon.build().toString();
        this.f15768q = uri;
        WebView webView = this.f15766n;
        if (webView == null || uri == null) {
            AbstractC0995i.makeToastLong(this, "Error: Could not load player.", true);
            finish();
            return;
        }
        webView.setBackgroundColor(-16777216);
        this.f15766n.getSettings().setAllowFileAccessFromFileURLs(true);
        this.f15766n.getSettings().setAllowUniversalAccessFromFileURLs(true);
        this.f15766n.getSettings().setJavaScriptEnabled(true);
        this.f15766n.getSettings().setDomStorageEnabled(true);
        this.f15766n.getSettings().setDatabaseEnabled(true);
        this.f15766n.getSettings().setJavaScriptCanOpenWindowsAutomatically(false);
        this.f15766n.getSettings().setSupportMultipleWindows(true);
        this.f15766n.getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);
        this.f15766n.getSettings().setMediaPlaybackRequiresUserGesture(false);
        this.f15766n.getSettings().setMixedContentMode(0);
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        cookieManager.setAcceptThirdPartyCookies(this.f15766n, true);
        this.f15766n.setWebChromeClient(new Y(this));
        this.f15766n.setWebViewClient(new X(this));
        this.f15766n.loadUrl(this.f15768q);
        this.f15767p.setVisibility(0);
    }

    @Override // e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        WebView webView = this.f15766n;
        if (webView != null) {
            webView.loadUrl("about:blank");
            this.f15766n.clearHistory();
            this.f15766n.onPause();
            this.f15766n.destroy();
            this.f15766n = null;
        }
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z6) {
        super.onWindowFocusChanged(z6);
        if (z6) {
            this.f15770s.setSystemUiVisibility(5894);
        }
    }

    @Override // U4.m
    public void showDialog() {
        if (this.f15758K) {
            return;
        }
        FrameLayout frameLayout = this.f15763f;
        if (frameLayout != null && this.f15759L != null && frameLayout.getVisibility() == 0) {
            e();
            return;
        }
        this.f15758K = true;
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, false);
        newInstance.setTitle("Exit");
        newInstance.setCancelable(false);
        newInstance.setMessage("Do you really want to stop playback and exit ?");
        final int i2 = 0;
        newInstance.setButton1("CANCEL", new View.OnClickListener(this) { // from class: B4.U

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ WebPlayerActivitySuper f247e;

            {
                this.f247e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebPlayerActivitySuper webPlayerActivitySuper = this.f247e;
                switch (i2) {
                    case 0:
                        webPlayerActivitySuper.f15758K = false;
                        break;
                    default:
                        int i7 = WebPlayerActivitySuper.f15747N;
                        webPlayerActivitySuper.getClass();
                        try {
                            if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                                App.getInstance().f14438q.removeActiveCheckin().subscribe();
                            }
                            WebView webView = webPlayerActivitySuper.f15766n;
                            if (webView != null) {
                                webView.loadUrl("about:blank");
                                webPlayerActivitySuper.f15766n.clearHistory();
                                webPlayerActivitySuper.f15766n.onPause();
                                webPlayerActivitySuper.f15766n.destroy();
                                webPlayerActivitySuper.f15766n = null;
                            }
                            webPlayerActivitySuper.finish();
                            webPlayerActivitySuper.f15758K = false;
                            break;
                        } catch (Exception e3) {
                            Log.e("WebPlayerActivity", "Error during WebView cleanup on exit", e3);
                            webPlayerActivitySuper.finish();
                        }
                }
            }
        });
        final int i7 = 1;
        newInstance.setButton2("YES", new View.OnClickListener(this) { // from class: B4.U

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ WebPlayerActivitySuper f247e;

            {
                this.f247e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebPlayerActivitySuper webPlayerActivitySuper = this.f247e;
                switch (i7) {
                    case 0:
                        webPlayerActivitySuper.f15758K = false;
                        break;
                    default:
                        int i72 = WebPlayerActivitySuper.f15747N;
                        webPlayerActivitySuper.getClass();
                        try {
                            if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                                App.getInstance().f14438q.removeActiveCheckin().subscribe();
                            }
                            WebView webView = webPlayerActivitySuper.f15766n;
                            if (webView != null) {
                                webView.loadUrl("about:blank");
                                webPlayerActivitySuper.f15766n.clearHistory();
                                webPlayerActivitySuper.f15766n.onPause();
                                webPlayerActivitySuper.f15766n.destroy();
                                webPlayerActivitySuper.f15766n = null;
                            }
                            webPlayerActivitySuper.finish();
                            webPlayerActivitySuper.f15758K = false;
                            break;
                        } catch (Exception e3) {
                            Log.e("WebPlayerActivity", "Error during WebView cleanup on exit", e3);
                            webPlayerActivitySuper.finish();
                        }
                }
            }
        });
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            this.f15758K = false;
            e3.printStackTrace();
        }
    }
}
