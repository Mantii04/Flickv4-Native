package flix.com.vision.activities;

import A.h;
import A.i;
import A4.s;
import C4.P;
import C4.r;
import I3.w;
import U4.j;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.view.Menu;
import android.view.MenuItem;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextClock;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.leanback.widget.HorizontalGridView;
import androidx.media3.common.C;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.github.ybq.android.spinkit.SpinKitView;
import com.google.gson.JsonElement;
import cz.msebera.android.httpclient.HttpStatus;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.MovieDetailActivityLeanBack;
import flix.com.vision.materialsearchview.MaterialSearchView;
import flix.com.vision.models.Movie;
import flix.com.vision.models.Season;
import flix.com.vision.subtitles.OpenSubtitles;
import flix.com.vision.tv.Constant;
import flix.com.vision.utils.JsonUtils;
import h5.AbstractC0995i;
import h5.AbstractC1000n;
import h5.C0996j;
import io.github.giangpham96.expandable_textview.ExpandableTextView;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Locale;
import m4.D;
import me.grantland.widget.AutofitTextView;
import x4.C1851d;
import y4.A0;
import y4.C1913l;
import y4.C1937x0;
import y4.RunnableC1933v0;
import y4.ViewOnClickListenerC1939y0;
import y4.ViewOnFocusChangeListenerC1941z0;
import y4.ViewTreeObserverOnScrollChangedListenerC1918n0;

/* loaded from: classes2.dex */
public class MovieDetailActivityLeanBack extends flix.com.vision.activities.base.a implements j {

    /* renamed from: a1, reason: collision with root package name */
    public static final /* synthetic */ int f14880a1 = 0;

    /* renamed from: A, reason: collision with root package name */
    public LinearLayout f14881A;

    /* renamed from: A0, reason: collision with root package name */
    public TextView f14882A0;

    /* renamed from: B, reason: collision with root package name */
    public LinearLayout f14883B;

    /* renamed from: B0, reason: collision with root package name */
    public TextView f14884B0;

    /* renamed from: C, reason: collision with root package name */
    public TextClock f14885C;

    /* renamed from: C0, reason: collision with root package name */
    public TextView f14886C0;

    /* renamed from: D, reason: collision with root package name */
    public TextView f14887D;

    /* renamed from: D0, reason: collision with root package name */
    public TextView f14888D0;

    /* renamed from: E, reason: collision with root package name */
    public TextView f14889E;

    /* renamed from: E0, reason: collision with root package name */
    public TextView f14890E0;

    /* renamed from: F, reason: collision with root package name */
    public TextView f14891F;

    /* renamed from: F0, reason: collision with root package name */
    public TextView f14892F0;

    /* renamed from: G, reason: collision with root package name */
    public TextView f14893G;

    /* renamed from: G0, reason: collision with root package name */
    public ImageView f14894G0;

    /* renamed from: H, reason: collision with root package name */
    public TextView f14895H;

    /* renamed from: H0, reason: collision with root package name */
    public ImageView f14896H0;

    /* renamed from: I, reason: collision with root package name */
    public TextView f14897I;

    /* renamed from: I0, reason: collision with root package name */
    public ImageView f14898I0;

    /* renamed from: J, reason: collision with root package name */
    public TextView f14899J;

    /* renamed from: J0, reason: collision with root package name */
    public FrameLayout f14900J0;

    /* renamed from: K, reason: collision with root package name */
    public TextView f14901K;

    /* renamed from: K0, reason: collision with root package name */
    public AutofitTextView f14902K0;

    /* renamed from: L, reason: collision with root package name */
    public Typeface f14903L;

    /* renamed from: M, reason: collision with root package name */
    public Typeface f14905M;

    /* renamed from: N, reason: collision with root package name */
    public C0996j f14907N;

    /* renamed from: O, reason: collision with root package name */
    public Animation f14909O;

    /* renamed from: P, reason: collision with root package name */
    public Animation f14911P;

    /* renamed from: Q, reason: collision with root package name */
    public Animation f14913Q;

    /* renamed from: R, reason: collision with root package name */
    public ScrollView f14915R;

    /* renamed from: S0, reason: collision with root package name */
    public Menu f14918S0;

    /* renamed from: T, reason: collision with root package name */
    public P f14919T;

    /* renamed from: U, reason: collision with root package name */
    public P f14921U;

    /* renamed from: V, reason: collision with root package name */
    public P f14923V;

    /* renamed from: W, reason: collision with root package name */
    public P f14925W;

    /* renamed from: X, reason: collision with root package name */
    public r f14927X;

    /* renamed from: X0, reason: collision with root package name */
    public Disposable f14928X0;

    /* renamed from: Y, reason: collision with root package name */
    public HorizontalGridView f14929Y;

    /* renamed from: Z, reason: collision with root package name */
    public HorizontalGridView f14931Z;

    /* renamed from: a0, reason: collision with root package name */
    public HorizontalGridView f14933a0;

    /* renamed from: b, reason: collision with root package name */
    public SpinKitView f14934b;

    /* renamed from: b0, reason: collision with root package name */
    public HorizontalGridView f14935b0;

    /* renamed from: c0, reason: collision with root package name */
    public HorizontalGridView f14936c0;

    /* renamed from: d0, reason: collision with root package name */
    public Disposable f14937d0;

    /* renamed from: e, reason: collision with root package name */
    public RelativeLayout f14938e;

    /* renamed from: e0, reason: collision with root package name */
    public Disposable f14939e0;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f14940f;

    /* renamed from: f0, reason: collision with root package name */
    public Disposable f14941f0;

    /* renamed from: g0, reason: collision with root package name */
    public Disposable f14942g0;

    /* renamed from: h0, reason: collision with root package name */
    public Disposable f14943h0;

    /* renamed from: i0, reason: collision with root package name */
    public Disposable f14944i0;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f14945j;

    /* renamed from: j0, reason: collision with root package name */
    public Disposable f14946j0;

    /* renamed from: k0, reason: collision with root package name */
    public Disposable f14947k0;

    /* renamed from: l0, reason: collision with root package name */
    public Disposable f14948l0;

    /* renamed from: m, reason: collision with root package name */
    public ImageView f14949m;

    /* renamed from: m0, reason: collision with root package name */
    public MaterialSearchView f14950m0;

    /* renamed from: n0, reason: collision with root package name */
    public Toolbar f14952n0;

    /* renamed from: o0, reason: collision with root package name */
    public LinearLayout f14953o0;

    /* renamed from: p0, reason: collision with root package name */
    public RelativeLayout f14955p0;

    /* renamed from: q0, reason: collision with root package name */
    public RelativeLayout f14957q0;

    /* renamed from: r, reason: collision with root package name */
    public ProgressBar f14958r;

    /* renamed from: r0, reason: collision with root package name */
    public RelativeLayout f14959r0;

    /* renamed from: s0, reason: collision with root package name */
    public RelativeLayout f14961s0;

    /* renamed from: t, reason: collision with root package name */
    public ImageView f14962t;

    /* renamed from: t0, reason: collision with root package name */
    public Movie f14963t0;

    /* renamed from: u, reason: collision with root package name */
    public ImageView f14964u;

    /* renamed from: u0, reason: collision with root package name */
    public ExpandableTextView f14965u0;

    /* renamed from: v, reason: collision with root package name */
    public ImageView f14966v;

    /* renamed from: v0, reason: collision with root package name */
    public TextView f14967v0;

    /* renamed from: w, reason: collision with root package name */
    public ImageView f14968w;

    /* renamed from: w0, reason: collision with root package name */
    public TextView f14969w0;

    /* renamed from: x, reason: collision with root package name */
    public LinearLayout f14970x;

    /* renamed from: x0, reason: collision with root package name */
    public TextView f14971x0;

    /* renamed from: y, reason: collision with root package name */
    public LinearLayout f14972y;

    /* renamed from: y0, reason: collision with root package name */
    public TextView f14973y0;

    /* renamed from: z, reason: collision with root package name */
    public LinearLayout f14974z;

    /* renamed from: z0, reason: collision with root package name */
    public TextView f14975z0;

    /* renamed from: n, reason: collision with root package name */
    public String f14951n = "";

    /* renamed from: p, reason: collision with root package name */
    public String f14954p = "";

    /* renamed from: q, reason: collision with root package name */
    public String f14956q = null;

    /* renamed from: s, reason: collision with root package name */
    public boolean f14960s = false;

    /* renamed from: S, reason: collision with root package name */
    public boolean f14917S = false;

    /* renamed from: L0, reason: collision with root package name */
    public boolean f14904L0 = false;

    /* renamed from: M0, reason: collision with root package name */
    public final ArrayList f14906M0 = new ArrayList();

    /* renamed from: N0, reason: collision with root package name */
    public final ArrayList f14908N0 = new ArrayList();

    /* renamed from: O0, reason: collision with root package name */
    public final ArrayList f14910O0 = new ArrayList();

    /* renamed from: P0, reason: collision with root package name */
    public final ArrayList f14912P0 = new ArrayList();

    /* renamed from: Q0, reason: collision with root package name */
    public final ArrayList f14914Q0 = new ArrayList();

    /* renamed from: R0, reason: collision with root package name */
    public final ArrayList f14916R0 = new ArrayList();

    /* renamed from: T0, reason: collision with root package name */
    public String f14920T0 = "";

    /* renamed from: U0, reason: collision with root package name */
    public String f14922U0 = "";

    /* renamed from: V0, reason: collision with root package name */
    public boolean f14924V0 = true;

    /* renamed from: W0, reason: collision with root package name */
    public String f14926W0 = null;

    /* renamed from: Y0, reason: collision with root package name */
    public boolean f14930Y0 = false;

    /* renamed from: Z0, reason: collision with root package name */
    public boolean f14932Z0 = true;

    public final void e(Movie movie) {
        Disposable disposable = this.f14939e0;
        if (disposable != null) {
            disposable.dispose();
        }
        this.f14939e0 = D4.a.getStreamingServices(this, movie.getType() == 0 ? "movie" : "tv", movie.getMovieId()).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1937x0(this, 6), new C1851d(28));
    }

    public final void f() {
        int i2 = 2;
        int i7 = 0;
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f14903L = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f14905M = Typeface.createFromAsset(getAssets(), "fonts/product_sans_bold.ttf");
        this.f14907N = new C0996j();
        this.f14889E = (TextView) findViewById(R.id.imdb_text);
        this.f14883B = (LinearLayout) findViewById(R.id.crew_container);
        this.f14968w = (ImageView) findViewById(R.id.mark_as_watched_imageview);
        this.f14966v = (ImageView) findViewById(R.id.title_logo);
        this.f14961s0 = (RelativeLayout) findViewById(R.id.mark_as_watched);
        this.f14962t = (ImageView) findViewById(R.id.settings_image_view);
        this.f14901K = (TextView) findViewById(R.id.type_text_providers);
        this.f14964u = (ImageView) findViewById(R.id.search_image_view);
        this.f14972y = (LinearLayout) findViewById(R.id.settings_button_movies_page);
        this.f14881A = (LinearLayout) findViewById(R.id.search_button_movies_page);
        this.f14974z = (LinearLayout) findViewById(R.id.clock_container_view);
        this.f14895H = (TextView) findViewById(R.id.writers_label);
        this.f14885C = (TextClock) findViewById(R.id.clock);
        this.f14940f = (RelativeLayout) findViewById(R.id.loader);
        this.f14970x = (LinearLayout) findViewById(R.id.progress_layout);
        this.f14887D = (TextView) findViewById(R.id.progress_title);
        this.f14958r = (ProgressBar) findViewById(R.id.progress_bar);
        this.f14955p0 = (RelativeLayout) findViewById(R.id.poster_container);
        this.f14890E0 = (TextView) findViewById(R.id.play_button_label);
        this.f14892F0 = (TextView) findViewById(R.id.trailer_button_label);
        this.f14888D0 = (TextView) findViewById(R.id.from_director_textview);
        this.f14900J0 = (FrameLayout) findViewById(R.id.frame_layout_background);
        this.f14898I0 = (ImageView) findViewById(R.id.button_favorite_image);
        this.f14896H0 = (ImageView) findViewById(R.id.button_play_image);
        this.f14933a0 = (HorizontalGridView) findViewById(R.id.recyclerview_from_cast);
        this.f14935b0 = (HorizontalGridView) findViewById(R.id.recyclerview_from_director);
        this.f14936c0 = (HorizontalGridView) findViewById(R.id.recyclerview_collection);
        this.f14886C0 = (TextView) findViewById(R.id.type_text_view);
        this.f14884B0 = (TextView) findViewById(R.id.more_from_textview);
        AutofitTextView autofitTextView = (AutofitTextView) findViewById(R.id.movie_title);
        this.f14902K0 = autofitTextView;
        int i8 = 1;
        autofitTextView.setMaxLines(1);
        this.f14897I = (TextView) findViewById(R.id.collection_label);
        this.f14899J = (TextView) findViewById(R.id.text_view_rating);
        this.f14952n0 = (Toolbar) findViewById(R.id.toolbar);
        this.f14957q0 = (RelativeLayout) findViewById(R.id.add_favorites);
        this.f14967v0 = (TextView) findViewById(R.id.total_seasons);
        this.f14894G0 = (ImageView) findViewById(R.id.big_poster);
        this.f14959r0 = (RelativeLayout) findViewById(R.id.trailer_lin);
        this.f14953o0 = (LinearLayout) findViewById(R.id.movie_lin);
        this.f14969w0 = (TextView) findViewById(R.id.info);
        ExpandableTextView expandableTextView = (ExpandableTextView) findViewById(R.id.plot);
        this.f14965u0 = expandableTextView;
        if (expandableTextView != null) {
            expandableTextView.setOnClickListener(new ViewOnClickListenerC1939y0(this, i7));
        }
        this.f14971x0 = (TextView) findViewById(R.id.director_textview);
        this.f14973y0 = (TextView) findViewById(R.id.cast_textview);
        this.f14975z0 = (TextView) findViewById(R.id.season_label_textview);
        this.f14882A0 = (TextView) findViewById(R.id.director_label_textview);
        this.f14929Y = (HorizontalGridView) findViewById(R.id.recyclerview_similar);
        this.f14931Z = (HorizontalGridView) findViewById(R.id.recyclerview_cast);
        this.f14891F = (TextView) findViewById(R.id.cast_label);
        this.f14893G = (TextView) findViewById(R.id.similar_label);
        if (this.f14962t != null) {
            this.f14972y.setOnFocusChangeListener(new ViewOnFocusChangeListenerC1941z0(this, i7));
            this.f14881A.setOnFocusChangeListener(new ViewOnFocusChangeListenerC1941z0(this, i8));
        }
        MaterialSearchView materialSearchView = (MaterialSearchView) findViewById(R.id.search_view);
        this.f14950m0 = materialSearchView;
        materialSearchView.adjustTintAlpha(0.0f);
        this.f14950m0.setCloseOnTintClick(true);
        this.f14950m0.setOnQueryTextListener(new A0(this));
        this.f14950m0.setHint("Movies, TV Shows, People...");
        this.f14950m0.setOnItemClickListener(new C1913l(this, 4));
        LinearLayout linearLayout = this.f14972y;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new ViewOnClickListenerC1939y0(this, i8));
        }
        RelativeLayout relativeLayout = this.f14957q0;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new ViewOnClickListenerC1939y0(this, i2));
        }
        RelativeLayout relativeLayout2 = this.f14961s0;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new ViewOnClickListenerC1939y0(this, 3));
        }
        LinearLayout linearLayout2 = this.f14881A;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new ViewOnClickListenerC1939y0(this, 5));
        }
        this.f14934b = (SpinKitView) findViewById(R.id.loader_spinner);
        this.f14938e = (RelativeLayout) findViewById(R.id.info_button);
        this.f14945j = (ImageView) findViewById(R.id.info_button_image);
        this.f14949m = (ImageView) findViewById(R.id.title_poster_img_logo);
        RelativeLayout relativeLayout3 = this.f14938e;
        if (relativeLayout3 != null) {
            relativeLayout3.setOnFocusChangeListener(new ViewOnFocusChangeListenerC1941z0(this, i2));
            this.f14938e.setOnClickListener(new ViewOnClickListenerC1939y0(this, 6));
        }
    }

    @Override // U4.j
    public void favoriteDeleted(int i2) {
    }

    public final void g() {
        String str;
        LinearLayout linearLayout = this.f14970x;
        if (linearLayout == null) {
            return;
        }
        if (this.f14963t0 == null) {
            linearLayout.setVisibility(8);
            return;
        }
        int i2 = App.getInstance().f14440s.getInt(this.f14963t0.getMovieId() + "", -1);
        if (i2 <= 0) {
            this.f14970x.setVisibility(8);
            return;
        }
        try {
            int duration = this.f14963t0.getDuration() - (i2 / ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS);
            if (duration < 0) {
                this.f14970x.setVisibility(8);
                return;
            }
            if (duration > 60) {
                str = (duration / 60) + "h " + (duration % 60) + CmcdData.OBJECT_TYPE_MANIFEST;
            } else {
                str = duration + CmcdData.OBJECT_TYPE_MANIFEST;
            }
            this.f14887D.setText(str + " remaining");
            this.f14958r.setProgress((int) ((double) (((float) (i2 * 100)) / ((float) (this.f14963t0.getDuration() * ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS)))));
            this.f14970x.setVisibility(0);
        } catch (Exception unused) {
        }
    }

    public final void h() {
        int i2;
        if (this.f14963t0.isSeries()) {
            int i7 = App.getInstance().f14440s.getInt(this.f14963t0.getMovieId() + "watched_season_episode_count", -1);
            if (i7 > 0) {
                int i8 = App.getInstance().f14440s.getInt(this.f14963t0.getMovieId() + "watched_season_index", 0) + 1;
                int i9 = App.getInstance().f14440s.getInt(this.f14963t0.getMovieId() + OpenSubtitles.Params.Key.SEASON + i8 + OpenSubtitles.Params.Key.EPISODE + i8, 0) + 1;
                if (i9 <= 0 || (i2 = i7 - i9) <= 0) {
                    return;
                }
                this.f14958r.setProgress((int) ((i9 * 100) / i7));
                this.f14970x.setVisibility(0);
                this.f14887D.setText(i2 + " episodes remaining on season " + i8);
            }
        }
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i7, Intent intent) {
        super.onActivityResult(i2, i7, intent);
        if (i2 == 1100 && App.getInstance().f14440s.getBoolean("clear_history_pending", false)) {
            try {
                MaterialSearchView materialSearchView = this.f14950m0;
                if (materialSearchView != null) {
                    materialSearchView.clearHistory();
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            i.x(App.getInstance().f14440s, "clear_history_pending", false);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        MaterialSearchView materialSearchView = this.f14950m0;
        if (materialSearchView != null && materialSearchView.isOpen()) {
            this.f14950m0.closeSearch();
        } else if (this.f14915R.getScrollY() > 300) {
            this.f14915R.fullScroll(33);
        } else {
            super.onBackPressed();
        }
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    @SuppressLint({"SetTextI18n", "SuspiciousIndentation"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            setContentView(R.layout.activity_movie_detail_leanback);
            try {
                f();
            } catch (Exception unused) {
            }
            this.f14904L0 = getResources().getConfiguration().orientation != 1;
            ScrollView scrollView = (ScrollView) findViewById(R.id.scrolview_main);
            this.f14915R = scrollView;
            if (App.f14424I || this.f14904L0) {
                scrollView.setVisibility(4);
                this.f14940f.setVisibility(0);
            }
            int i2 = App.f14424I ? HttpStatus.SC_MULTIPLE_CHOICES : 250;
            this.f14909O = AnimationUtils.loadAnimation(this, R.anim.fade_in);
            this.f14913Q = AnimationUtils.loadAnimation(getApplicationContext(), R.anim.fade_in_infinite);
            this.f14911P = AnimationUtils.loadAnimation(this, R.anim.fade_out_cast);
            this.f14915R.getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserverOnScrollChangedListenerC1918n0(this, i2, 1));
            App.f14416A.clear();
            if (this.f14898I0 != null) {
                if (App.f14424I) {
                    this.f14953o0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC1941z0(this, 3));
                }
                if (App.f14424I) {
                    this.f14959r0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC1941z0(this, 4));
                }
                this.f14957q0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC1941z0(this, 5));
                RelativeLayout relativeLayout = this.f14961s0;
                if (relativeLayout != null) {
                    relativeLayout.setOnFocusChangeListener(new ViewOnFocusChangeListenerC1941z0(this, 6));
                }
            }
            Movie movie = (Movie) getIntent().getSerializableExtra("movie");
            this.f14963t0 = movie;
            if (movie != null) {
                this.f14956q = movie.logoUrl;
            }
            if (this.f14956q == null) {
                SpinKitView spinKitView = this.f14934b;
                if (spinKitView != null) {
                    spinKitView.setVisibility(0);
                }
            } else {
                try {
                    D.get().load(this.f14956q).into(this.f14949m);
                    try {
                        this.f14949m.setAlpha(1.0f);
                        this.f14949m.startAnimation(this.f14913Q);
                    } catch (Exception unused2) {
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            if (this.f14963t0 == null) {
                this.f14963t0 = new Movie();
                AbstractC0995i.makeToast(this, "An Error Occurred while loading details. Please go back and try again", true);
            }
            boolean isMovieWatching = App.getInstance().f14439r.isMovieWatching(this.f14963t0);
            this.f14960s = isMovieWatching;
            if (isMovieWatching && this.f14961s0 != null) {
                this.f14890E0.setText("CONTINUE");
                if (this.f14963t0.isSeries()) {
                    int i7 = App.getInstance().f14440s.getInt(this.f14963t0.getMovieId() + "watched_season_index", 0) + 1;
                    String e7 = i.e(i7, App.getInstance().f14440s.getInt(this.f14963t0.getMovieId() + OpenSubtitles.Params.Key.SEASON + i7 + OpenSubtitles.Params.Key.EPISODE + i7, 0) + 1, "S", "E");
                    TextView textView = this.f14890E0;
                    StringBuilder sb = new StringBuilder("CONTINUE  ");
                    sb.append(e7);
                    textView.setText(sb.toString());
                    h();
                } else {
                    g();
                }
                this.f14896H0.setImageResource(R.drawable.is_resume);
                this.f14961s0.setVisibility(0);
            }
            if (App.f14424I) {
                this.f14883B.setVisibility(8);
            }
            if (this.f14963t0 != null) {
                this.f14917S = App.getInstance().f14439r.isMovieFavorited(this.f14963t0);
                if (this.f14963t0.getType() == 1) {
                    this.f14882A0.setVisibility(8);
                    this.f14971x0.setVisibility(8);
                    this.f14935b0.setVisibility(8);
                    this.f14888D0.setVisibility(8);
                }
                this.f14886C0.setText(this.f14963t0.isSeries() ? "  ·  Series" : "  ·  Film");
                this.f14963t0.getCover();
                final Movie movie2 = this.f14963t0;
                if (movie2.getMovieId() != 0) {
                    Disposable disposable = this.f14943h0;
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    final int i8 = 1;
                    this.f14943h0 = D4.a.getDetails(this, movie2.getType() == 0 ? "movie" : "tv", movie2.getMovieId()).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer(this) { // from class: y4.w0

                        /* renamed from: e, reason: collision with root package name */
                        public final /* synthetic */ MovieDetailActivityLeanBack f21302e;

                        {
                            this.f21302e = this;
                        }

                        @Override // io.reactivex.functions.Consumer
                        public final void accept(Object obj) {
                            String str;
                            TextView textView2;
                            String str2 = "US";
                            Movie movie3 = movie2;
                            MovieDetailActivityLeanBack movieDetailActivityLeanBack = this.f21302e;
                            switch (i8) {
                                case 0:
                                    JsonElement jsonElement = (JsonElement) obj;
                                    int i9 = MovieDetailActivityLeanBack.f14880a1;
                                    movieDetailActivityLeanBack.getClass();
                                    try {
                                        str2 = movieDetailActivityLeanBack.getResources().getConfiguration().locale.getCountry();
                                    } catch (Exception unused3) {
                                    }
                                    String parseRating = JsonUtils.parseRating(jsonElement, movie3.getType(), str2);
                                    if (parseRating != null && !parseRating.isEmpty()) {
                                        TextView textView3 = movieDetailActivityLeanBack.f14899J;
                                        if (textView3 != null) {
                                            textView3.setText(parseRating);
                                            movieDetailActivityLeanBack.f14899J.setVisibility(0);
                                        }
                                        movieDetailActivityLeanBack.f14963t0.certification = parseRating;
                                        break;
                                    }
                                    break;
                                case 1:
                                    int i10 = MovieDetailActivityLeanBack.f14880a1;
                                    Movie parseMovieInfo = JsonUtils.parseMovieInfo((JsonElement) obj, movie3.getType());
                                    try {
                                        movieDetailActivityLeanBack.f14963t0.setGenres(parseMovieInfo.getGenres());
                                        movieDetailActivityLeanBack.f14963t0.setProduction(parseMovieInfo.getProduction());
                                        movieDetailActivityLeanBack.f14963t0.rawReleaseDate = parseMovieInfo.rawReleaseDate;
                                        boolean released = parseMovieInfo.released();
                                        movieDetailActivityLeanBack.f14924V0 = released;
                                        movieDetailActivityLeanBack.f14926W0 = parseMovieInfo.rawReleaseDate;
                                        if (!released && (textView2 = movieDetailActivityLeanBack.f14901K) != null) {
                                            textView2.setVisibility(0);
                                            movieDetailActivityLeanBack.f14901K.setText("  SOON");
                                            movieDetailActivityLeanBack.f14901K.setTextColor(movieDetailActivityLeanBack.getResources().getColor(R.color.accent));
                                        }
                                        if (movieDetailActivityLeanBack.f14924V0 && !movieDetailActivityLeanBack.f14963t0.isSeries()) {
                                            movieDetailActivityLeanBack.e(movieDetailActivityLeanBack.f14963t0);
                                        }
                                        if (parseMovieInfo.belongsToCollection()) {
                                            long j7 = parseMovieInfo.collectionId;
                                            Disposable disposable2 = movieDetailActivityLeanBack.f14947k0;
                                            if (disposable2 != null) {
                                                disposable2.dispose();
                                            }
                                            movieDetailActivityLeanBack.f14947k0 = D4.a.getCollection(j7).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1937x0(movieDetailActivityLeanBack, 3), new C1851d(27));
                                            movieDetailActivityLeanBack.f14936c0.setVisibility(0);
                                            if (parseMovieInfo.collectionName == null) {
                                                parseMovieInfo.collectionName = "COLLECTION";
                                            }
                                            movieDetailActivityLeanBack.f14897I.setText(parseMovieInfo.collectionName.toUpperCase(Locale.ROOT));
                                            movieDetailActivityLeanBack.f14897I.setVisibility(0);
                                        }
                                        ExpandableTextView expandableTextView = movieDetailActivityLeanBack.f14965u0;
                                        if (expandableTextView != null) {
                                            expandableTextView.setOriginalText(parseMovieInfo.getOverview());
                                        }
                                        movieDetailActivityLeanBack.f14963t0.setOverview(parseMovieInfo.getOverview());
                                        if (parseMovieInfo.getType() == 1) {
                                            movieDetailActivityLeanBack.f14975z0.setVisibility(0);
                                            movieDetailActivityLeanBack.f14967v0.setVisibility(0);
                                            movieDetailActivityLeanBack.f14967v0.setText(parseMovieInfo.created_by);
                                        }
                                        try {
                                            movieDetailActivityLeanBack.f14889E.setText(new DecimalFormat("#.#").format(Double.parseDouble(parseMovieInfo.getRating())));
                                            Movie movie4 = movieDetailActivityLeanBack.f14963t0;
                                            if (movie4 != null) {
                                                movie4.setRating(parseMovieInfo.getRating());
                                            }
                                        } catch (Exception unused4) {
                                        }
                                        String imdbID = parseMovieInfo.getImdbID();
                                        movieDetailActivityLeanBack.f14920T0 = imdbID;
                                        if (imdbID != null && imdbID.length() > 0) {
                                            movieDetailActivityLeanBack.f14963t0.setImdbID(movieDetailActivityLeanBack.f14920T0);
                                        }
                                        movieDetailActivityLeanBack.f14963t0.setSeason_count(parseMovieInfo.getSeason_count());
                                        ArrayList<Season> arrayList = parseMovieInfo.seasons;
                                        if (arrayList != null) {
                                            movieDetailActivityLeanBack.f14916R0.addAll(arrayList);
                                        }
                                        movieDetailActivityLeanBack.f14963t0.setCover(parseMovieInfo.getCover());
                                        movieDetailActivityLeanBack.f14963t0.backdrop = parseMovieInfo.backdrop;
                                        try {
                                            try {
                                                m4.D.get().load(movieDetailActivityLeanBack.f14963t0.getCover()).fit().centerCrop().into(movieDetailActivityLeanBack.f14894G0, new B0(movieDetailActivityLeanBack));
                                            } catch (Exception unused5) {
                                            }
                                        } catch (OutOfMemoryError e8) {
                                            e8.printStackTrace();
                                        }
                                        String genres = parseMovieInfo.getGenres();
                                        Movie movie5 = movieDetailActivityLeanBack.f14963t0;
                                        String str3 = movie5.year;
                                        if (movie5.isSeries() || parseMovieInfo.getDuration() <= 0) {
                                            str = null;
                                        } else {
                                            str = (parseMovieInfo.getDuration() / 60) + "h " + (parseMovieInfo.getDuration() % 60) + CmcdData.OBJECT_TYPE_MANIFEST;
                                        }
                                        String str4 = parseMovieInfo.getSeason_count() > 1 ? " seasons" : " season";
                                        String removeTrailingColon = AbstractC1000n.removeTrailingColon(genres);
                                        if (str != null) {
                                            str3 = str3 + "  ·  " + str;
                                        }
                                        if (movieDetailActivityLeanBack.f14963t0.isSeries() && parseMovieInfo.getSeason_count() > 0) {
                                            str3 = str3 + "  ·  " + parseMovieInfo.getSeason_count() + str4;
                                        }
                                        movieDetailActivityLeanBack.f14969w0.setText(str3 + "  ·  " + removeTrailingColon);
                                        movieDetailActivityLeanBack.f14963t0.setDuration(parseMovieInfo.getDuration());
                                        break;
                                    } catch (Exception unused6) {
                                        return;
                                    }
                                    break;
                                case 2:
                                    String str5 = (String) obj;
                                    if (str5 != null) {
                                        int i11 = MovieDetailActivityLeanBack.f14880a1;
                                        if (!str5.isEmpty()) {
                                            movieDetailActivityLeanBack.f14930Y0 = true;
                                            String concat = "https://image.tmdb.org/t/p/w500".concat(str5);
                                            movie3.is_title_logo_available = true;
                                            movie3.logoUrl = concat;
                                            movieDetailActivityLeanBack.f14902K0.setVisibility(8);
                                            try {
                                                m4.D.get().load(concat).into(movieDetailActivityLeanBack.f14966v, new C0(movieDetailActivityLeanBack, movie3));
                                                break;
                                            } catch (Exception e9) {
                                                e9.printStackTrace();
                                                return;
                                            }
                                        }
                                    }
                                    movieDetailActivityLeanBack.f14966v.setVisibility(8);
                                    movieDetailActivityLeanBack.f14902K0.setVisibility(0);
                                    break;
                                case 3:
                                    int i12 = MovieDetailActivityLeanBack.f14880a1;
                                    movieDetailActivityLeanBack.getClass();
                                    ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie((JsonElement) obj, movie3.getType());
                                    if (parseListMovie.size() > 0) {
                                        movieDetailActivityLeanBack.f14906M0.addAll(App.getInstance().filterList(parseListMovie));
                                        movieDetailActivityLeanBack.f14919T.notifyDataSetChanged();
                                        movieDetailActivityLeanBack.f14933a0.smoothScrollToPosition(0);
                                        break;
                                    }
                                    break;
                                default:
                                    JsonElement jsonElement2 = (JsonElement) obj;
                                    int i13 = MovieDetailActivityLeanBack.f14880a1;
                                    movieDetailActivityLeanBack.getClass();
                                    try {
                                        str2 = movieDetailActivityLeanBack.getResources().getConfiguration().locale.getCountry();
                                    } catch (Exception unused7) {
                                    }
                                    String parseRatingSeries = JsonUtils.parseRatingSeries(jsonElement2, movie3.getType(), str2);
                                    if (parseRatingSeries != null && !parseRatingSeries.isEmpty()) {
                                        TextView textView4 = movieDetailActivityLeanBack.f14899J;
                                        if (textView4 != null) {
                                            textView4.setText(parseRatingSeries);
                                            movieDetailActivityLeanBack.f14899J.setVisibility(0);
                                        }
                                        movieDetailActivityLeanBack.f14963t0.certification = parseRatingSeries;
                                        break;
                                    }
                                    break;
                            }
                        }
                    }, new C1851d(22));
                }
                final Movie movie3 = this.f14963t0;
                Disposable disposable2 = this.f14937d0;
                if (disposable2 != null) {
                    disposable2.dispose();
                }
                final int i9 = 3;
                this.f14937d0 = D4.a.getSeeAlso(this, movie3.getType(), movie3.getMovieId()).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer(this) { // from class: y4.w0

                    /* renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ MovieDetailActivityLeanBack f21302e;

                    {
                        this.f21302e = this;
                    }

                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        String str;
                        TextView textView2;
                        String str2 = "US";
                        Movie movie32 = movie3;
                        MovieDetailActivityLeanBack movieDetailActivityLeanBack = this.f21302e;
                        switch (i9) {
                            case 0:
                                JsonElement jsonElement = (JsonElement) obj;
                                int i92 = MovieDetailActivityLeanBack.f14880a1;
                                movieDetailActivityLeanBack.getClass();
                                try {
                                    str2 = movieDetailActivityLeanBack.getResources().getConfiguration().locale.getCountry();
                                } catch (Exception unused3) {
                                }
                                String parseRating = JsonUtils.parseRating(jsonElement, movie32.getType(), str2);
                                if (parseRating != null && !parseRating.isEmpty()) {
                                    TextView textView3 = movieDetailActivityLeanBack.f14899J;
                                    if (textView3 != null) {
                                        textView3.setText(parseRating);
                                        movieDetailActivityLeanBack.f14899J.setVisibility(0);
                                    }
                                    movieDetailActivityLeanBack.f14963t0.certification = parseRating;
                                    break;
                                }
                                break;
                            case 1:
                                int i10 = MovieDetailActivityLeanBack.f14880a1;
                                Movie parseMovieInfo = JsonUtils.parseMovieInfo((JsonElement) obj, movie32.getType());
                                try {
                                    movieDetailActivityLeanBack.f14963t0.setGenres(parseMovieInfo.getGenres());
                                    movieDetailActivityLeanBack.f14963t0.setProduction(parseMovieInfo.getProduction());
                                    movieDetailActivityLeanBack.f14963t0.rawReleaseDate = parseMovieInfo.rawReleaseDate;
                                    boolean released = parseMovieInfo.released();
                                    movieDetailActivityLeanBack.f14924V0 = released;
                                    movieDetailActivityLeanBack.f14926W0 = parseMovieInfo.rawReleaseDate;
                                    if (!released && (textView2 = movieDetailActivityLeanBack.f14901K) != null) {
                                        textView2.setVisibility(0);
                                        movieDetailActivityLeanBack.f14901K.setText("  SOON");
                                        movieDetailActivityLeanBack.f14901K.setTextColor(movieDetailActivityLeanBack.getResources().getColor(R.color.accent));
                                    }
                                    if (movieDetailActivityLeanBack.f14924V0 && !movieDetailActivityLeanBack.f14963t0.isSeries()) {
                                        movieDetailActivityLeanBack.e(movieDetailActivityLeanBack.f14963t0);
                                    }
                                    if (parseMovieInfo.belongsToCollection()) {
                                        long j7 = parseMovieInfo.collectionId;
                                        Disposable disposable22 = movieDetailActivityLeanBack.f14947k0;
                                        if (disposable22 != null) {
                                            disposable22.dispose();
                                        }
                                        movieDetailActivityLeanBack.f14947k0 = D4.a.getCollection(j7).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1937x0(movieDetailActivityLeanBack, 3), new C1851d(27));
                                        movieDetailActivityLeanBack.f14936c0.setVisibility(0);
                                        if (parseMovieInfo.collectionName == null) {
                                            parseMovieInfo.collectionName = "COLLECTION";
                                        }
                                        movieDetailActivityLeanBack.f14897I.setText(parseMovieInfo.collectionName.toUpperCase(Locale.ROOT));
                                        movieDetailActivityLeanBack.f14897I.setVisibility(0);
                                    }
                                    ExpandableTextView expandableTextView = movieDetailActivityLeanBack.f14965u0;
                                    if (expandableTextView != null) {
                                        expandableTextView.setOriginalText(parseMovieInfo.getOverview());
                                    }
                                    movieDetailActivityLeanBack.f14963t0.setOverview(parseMovieInfo.getOverview());
                                    if (parseMovieInfo.getType() == 1) {
                                        movieDetailActivityLeanBack.f14975z0.setVisibility(0);
                                        movieDetailActivityLeanBack.f14967v0.setVisibility(0);
                                        movieDetailActivityLeanBack.f14967v0.setText(parseMovieInfo.created_by);
                                    }
                                    try {
                                        movieDetailActivityLeanBack.f14889E.setText(new DecimalFormat("#.#").format(Double.parseDouble(parseMovieInfo.getRating())));
                                        Movie movie4 = movieDetailActivityLeanBack.f14963t0;
                                        if (movie4 != null) {
                                            movie4.setRating(parseMovieInfo.getRating());
                                        }
                                    } catch (Exception unused4) {
                                    }
                                    String imdbID = parseMovieInfo.getImdbID();
                                    movieDetailActivityLeanBack.f14920T0 = imdbID;
                                    if (imdbID != null && imdbID.length() > 0) {
                                        movieDetailActivityLeanBack.f14963t0.setImdbID(movieDetailActivityLeanBack.f14920T0);
                                    }
                                    movieDetailActivityLeanBack.f14963t0.setSeason_count(parseMovieInfo.getSeason_count());
                                    ArrayList<Season> arrayList = parseMovieInfo.seasons;
                                    if (arrayList != null) {
                                        movieDetailActivityLeanBack.f14916R0.addAll(arrayList);
                                    }
                                    movieDetailActivityLeanBack.f14963t0.setCover(parseMovieInfo.getCover());
                                    movieDetailActivityLeanBack.f14963t0.backdrop = parseMovieInfo.backdrop;
                                    try {
                                        try {
                                            m4.D.get().load(movieDetailActivityLeanBack.f14963t0.getCover()).fit().centerCrop().into(movieDetailActivityLeanBack.f14894G0, new B0(movieDetailActivityLeanBack));
                                        } catch (Exception unused5) {
                                        }
                                    } catch (OutOfMemoryError e8) {
                                        e8.printStackTrace();
                                    }
                                    String genres = parseMovieInfo.getGenres();
                                    Movie movie5 = movieDetailActivityLeanBack.f14963t0;
                                    String str3 = movie5.year;
                                    if (movie5.isSeries() || parseMovieInfo.getDuration() <= 0) {
                                        str = null;
                                    } else {
                                        str = (parseMovieInfo.getDuration() / 60) + "h " + (parseMovieInfo.getDuration() % 60) + CmcdData.OBJECT_TYPE_MANIFEST;
                                    }
                                    String str4 = parseMovieInfo.getSeason_count() > 1 ? " seasons" : " season";
                                    String removeTrailingColon = AbstractC1000n.removeTrailingColon(genres);
                                    if (str != null) {
                                        str3 = str3 + "  ·  " + str;
                                    }
                                    if (movieDetailActivityLeanBack.f14963t0.isSeries() && parseMovieInfo.getSeason_count() > 0) {
                                        str3 = str3 + "  ·  " + parseMovieInfo.getSeason_count() + str4;
                                    }
                                    movieDetailActivityLeanBack.f14969w0.setText(str3 + "  ·  " + removeTrailingColon);
                                    movieDetailActivityLeanBack.f14963t0.setDuration(parseMovieInfo.getDuration());
                                    break;
                                } catch (Exception unused6) {
                                    return;
                                }
                                break;
                            case 2:
                                String str5 = (String) obj;
                                if (str5 != null) {
                                    int i11 = MovieDetailActivityLeanBack.f14880a1;
                                    if (!str5.isEmpty()) {
                                        movieDetailActivityLeanBack.f14930Y0 = true;
                                        String concat = "https://image.tmdb.org/t/p/w500".concat(str5);
                                        movie32.is_title_logo_available = true;
                                        movie32.logoUrl = concat;
                                        movieDetailActivityLeanBack.f14902K0.setVisibility(8);
                                        try {
                                            m4.D.get().load(concat).into(movieDetailActivityLeanBack.f14966v, new C0(movieDetailActivityLeanBack, movie32));
                                            break;
                                        } catch (Exception e9) {
                                            e9.printStackTrace();
                                            return;
                                        }
                                    }
                                }
                                movieDetailActivityLeanBack.f14966v.setVisibility(8);
                                movieDetailActivityLeanBack.f14902K0.setVisibility(0);
                                break;
                            case 3:
                                int i12 = MovieDetailActivityLeanBack.f14880a1;
                                movieDetailActivityLeanBack.getClass();
                                ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie((JsonElement) obj, movie32.getType());
                                if (parseListMovie.size() > 0) {
                                    movieDetailActivityLeanBack.f14906M0.addAll(App.getInstance().filterList(parseListMovie));
                                    movieDetailActivityLeanBack.f14919T.notifyDataSetChanged();
                                    movieDetailActivityLeanBack.f14933a0.smoothScrollToPosition(0);
                                    break;
                                }
                                break;
                            default:
                                JsonElement jsonElement2 = (JsonElement) obj;
                                int i13 = MovieDetailActivityLeanBack.f14880a1;
                                movieDetailActivityLeanBack.getClass();
                                try {
                                    str2 = movieDetailActivityLeanBack.getResources().getConfiguration().locale.getCountry();
                                } catch (Exception unused7) {
                                }
                                String parseRatingSeries = JsonUtils.parseRatingSeries(jsonElement2, movie32.getType(), str2);
                                if (parseRatingSeries != null && !parseRatingSeries.isEmpty()) {
                                    TextView textView4 = movieDetailActivityLeanBack.f14899J;
                                    if (textView4 != null) {
                                        textView4.setText(parseRatingSeries);
                                        movieDetailActivityLeanBack.f14899J.setVisibility(0);
                                    }
                                    movieDetailActivityLeanBack.f14963t0.certification = parseRatingSeries;
                                    break;
                                }
                                break;
                        }
                    }
                }, new C1851d(24));
                Movie movie4 = this.f14963t0;
                Disposable disposable3 = this.f14941f0;
                if (disposable3 != null) {
                    disposable3.dispose();
                }
                this.f14941f0 = D4.a.getCast(this, movie4.getType() == 0 ? "movie" : "tv", movie4.getMovieId()).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1937x0(this, 7), new C1851d(29));
                Movie movie5 = this.f14963t0;
                Disposable disposable4 = this.f14942g0;
                if (disposable4 != null) {
                    disposable4.dispose();
                }
                this.f14942g0 = D4.a.getTrailer(this, movie5.getType() == 0 ? "movie" : "tv", movie5.getMovieId()).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1937x0(this, 0), new C1851d(23));
                if (this.f14963t0.isSeries()) {
                    final Movie movie6 = this.f14963t0;
                    if (movie6.getMovieId() != 0) {
                        Disposable disposable5 = this.f14948l0;
                        if (disposable5 != null) {
                            disposable5.dispose();
                        }
                        final int i10 = 4;
                        this.f14948l0 = D4.a.getRatingSeries(this, movie6.getType() == 0 ? "movie" : "tv", movie6.getMovieId()).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer(this) { // from class: y4.w0

                            /* renamed from: e, reason: collision with root package name */
                            public final /* synthetic */ MovieDetailActivityLeanBack f21302e;

                            {
                                this.f21302e = this;
                            }

                            @Override // io.reactivex.functions.Consumer
                            public final void accept(Object obj) {
                                String str;
                                TextView textView2;
                                String str2 = "US";
                                Movie movie32 = movie6;
                                MovieDetailActivityLeanBack movieDetailActivityLeanBack = this.f21302e;
                                switch (i10) {
                                    case 0:
                                        JsonElement jsonElement = (JsonElement) obj;
                                        int i92 = MovieDetailActivityLeanBack.f14880a1;
                                        movieDetailActivityLeanBack.getClass();
                                        try {
                                            str2 = movieDetailActivityLeanBack.getResources().getConfiguration().locale.getCountry();
                                        } catch (Exception unused3) {
                                        }
                                        String parseRating = JsonUtils.parseRating(jsonElement, movie32.getType(), str2);
                                        if (parseRating != null && !parseRating.isEmpty()) {
                                            TextView textView3 = movieDetailActivityLeanBack.f14899J;
                                            if (textView3 != null) {
                                                textView3.setText(parseRating);
                                                movieDetailActivityLeanBack.f14899J.setVisibility(0);
                                            }
                                            movieDetailActivityLeanBack.f14963t0.certification = parseRating;
                                            break;
                                        }
                                        break;
                                    case 1:
                                        int i102 = MovieDetailActivityLeanBack.f14880a1;
                                        Movie parseMovieInfo = JsonUtils.parseMovieInfo((JsonElement) obj, movie32.getType());
                                        try {
                                            movieDetailActivityLeanBack.f14963t0.setGenres(parseMovieInfo.getGenres());
                                            movieDetailActivityLeanBack.f14963t0.setProduction(parseMovieInfo.getProduction());
                                            movieDetailActivityLeanBack.f14963t0.rawReleaseDate = parseMovieInfo.rawReleaseDate;
                                            boolean released = parseMovieInfo.released();
                                            movieDetailActivityLeanBack.f14924V0 = released;
                                            movieDetailActivityLeanBack.f14926W0 = parseMovieInfo.rawReleaseDate;
                                            if (!released && (textView2 = movieDetailActivityLeanBack.f14901K) != null) {
                                                textView2.setVisibility(0);
                                                movieDetailActivityLeanBack.f14901K.setText("  SOON");
                                                movieDetailActivityLeanBack.f14901K.setTextColor(movieDetailActivityLeanBack.getResources().getColor(R.color.accent));
                                            }
                                            if (movieDetailActivityLeanBack.f14924V0 && !movieDetailActivityLeanBack.f14963t0.isSeries()) {
                                                movieDetailActivityLeanBack.e(movieDetailActivityLeanBack.f14963t0);
                                            }
                                            if (parseMovieInfo.belongsToCollection()) {
                                                long j7 = parseMovieInfo.collectionId;
                                                Disposable disposable22 = movieDetailActivityLeanBack.f14947k0;
                                                if (disposable22 != null) {
                                                    disposable22.dispose();
                                                }
                                                movieDetailActivityLeanBack.f14947k0 = D4.a.getCollection(j7).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1937x0(movieDetailActivityLeanBack, 3), new C1851d(27));
                                                movieDetailActivityLeanBack.f14936c0.setVisibility(0);
                                                if (parseMovieInfo.collectionName == null) {
                                                    parseMovieInfo.collectionName = "COLLECTION";
                                                }
                                                movieDetailActivityLeanBack.f14897I.setText(parseMovieInfo.collectionName.toUpperCase(Locale.ROOT));
                                                movieDetailActivityLeanBack.f14897I.setVisibility(0);
                                            }
                                            ExpandableTextView expandableTextView = movieDetailActivityLeanBack.f14965u0;
                                            if (expandableTextView != null) {
                                                expandableTextView.setOriginalText(parseMovieInfo.getOverview());
                                            }
                                            movieDetailActivityLeanBack.f14963t0.setOverview(parseMovieInfo.getOverview());
                                            if (parseMovieInfo.getType() == 1) {
                                                movieDetailActivityLeanBack.f14975z0.setVisibility(0);
                                                movieDetailActivityLeanBack.f14967v0.setVisibility(0);
                                                movieDetailActivityLeanBack.f14967v0.setText(parseMovieInfo.created_by);
                                            }
                                            try {
                                                movieDetailActivityLeanBack.f14889E.setText(new DecimalFormat("#.#").format(Double.parseDouble(parseMovieInfo.getRating())));
                                                Movie movie42 = movieDetailActivityLeanBack.f14963t0;
                                                if (movie42 != null) {
                                                    movie42.setRating(parseMovieInfo.getRating());
                                                }
                                            } catch (Exception unused4) {
                                            }
                                            String imdbID = parseMovieInfo.getImdbID();
                                            movieDetailActivityLeanBack.f14920T0 = imdbID;
                                            if (imdbID != null && imdbID.length() > 0) {
                                                movieDetailActivityLeanBack.f14963t0.setImdbID(movieDetailActivityLeanBack.f14920T0);
                                            }
                                            movieDetailActivityLeanBack.f14963t0.setSeason_count(parseMovieInfo.getSeason_count());
                                            ArrayList<Season> arrayList = parseMovieInfo.seasons;
                                            if (arrayList != null) {
                                                movieDetailActivityLeanBack.f14916R0.addAll(arrayList);
                                            }
                                            movieDetailActivityLeanBack.f14963t0.setCover(parseMovieInfo.getCover());
                                            movieDetailActivityLeanBack.f14963t0.backdrop = parseMovieInfo.backdrop;
                                            try {
                                                try {
                                                    m4.D.get().load(movieDetailActivityLeanBack.f14963t0.getCover()).fit().centerCrop().into(movieDetailActivityLeanBack.f14894G0, new B0(movieDetailActivityLeanBack));
                                                } catch (Exception unused5) {
                                                }
                                            } catch (OutOfMemoryError e8) {
                                                e8.printStackTrace();
                                            }
                                            String genres = parseMovieInfo.getGenres();
                                            Movie movie52 = movieDetailActivityLeanBack.f14963t0;
                                            String str3 = movie52.year;
                                            if (movie52.isSeries() || parseMovieInfo.getDuration() <= 0) {
                                                str = null;
                                            } else {
                                                str = (parseMovieInfo.getDuration() / 60) + "h " + (parseMovieInfo.getDuration() % 60) + CmcdData.OBJECT_TYPE_MANIFEST;
                                            }
                                            String str4 = parseMovieInfo.getSeason_count() > 1 ? " seasons" : " season";
                                            String removeTrailingColon = AbstractC1000n.removeTrailingColon(genres);
                                            if (str != null) {
                                                str3 = str3 + "  ·  " + str;
                                            }
                                            if (movieDetailActivityLeanBack.f14963t0.isSeries() && parseMovieInfo.getSeason_count() > 0) {
                                                str3 = str3 + "  ·  " + parseMovieInfo.getSeason_count() + str4;
                                            }
                                            movieDetailActivityLeanBack.f14969w0.setText(str3 + "  ·  " + removeTrailingColon);
                                            movieDetailActivityLeanBack.f14963t0.setDuration(parseMovieInfo.getDuration());
                                            break;
                                        } catch (Exception unused6) {
                                            return;
                                        }
                                        break;
                                    case 2:
                                        String str5 = (String) obj;
                                        if (str5 != null) {
                                            int i11 = MovieDetailActivityLeanBack.f14880a1;
                                            if (!str5.isEmpty()) {
                                                movieDetailActivityLeanBack.f14930Y0 = true;
                                                String concat = "https://image.tmdb.org/t/p/w500".concat(str5);
                                                movie32.is_title_logo_available = true;
                                                movie32.logoUrl = concat;
                                                movieDetailActivityLeanBack.f14902K0.setVisibility(8);
                                                try {
                                                    m4.D.get().load(concat).into(movieDetailActivityLeanBack.f14966v, new C0(movieDetailActivityLeanBack, movie32));
                                                    break;
                                                } catch (Exception e9) {
                                                    e9.printStackTrace();
                                                    return;
                                                }
                                            }
                                        }
                                        movieDetailActivityLeanBack.f14966v.setVisibility(8);
                                        movieDetailActivityLeanBack.f14902K0.setVisibility(0);
                                        break;
                                    case 3:
                                        int i12 = MovieDetailActivityLeanBack.f14880a1;
                                        movieDetailActivityLeanBack.getClass();
                                        ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie((JsonElement) obj, movie32.getType());
                                        if (parseListMovie.size() > 0) {
                                            movieDetailActivityLeanBack.f14906M0.addAll(App.getInstance().filterList(parseListMovie));
                                            movieDetailActivityLeanBack.f14919T.notifyDataSetChanged();
                                            movieDetailActivityLeanBack.f14933a0.smoothScrollToPosition(0);
                                            break;
                                        }
                                        break;
                                    default:
                                        JsonElement jsonElement2 = (JsonElement) obj;
                                        int i13 = MovieDetailActivityLeanBack.f14880a1;
                                        movieDetailActivityLeanBack.getClass();
                                        try {
                                            str2 = movieDetailActivityLeanBack.getResources().getConfiguration().locale.getCountry();
                                        } catch (Exception unused7) {
                                        }
                                        String parseRatingSeries = JsonUtils.parseRatingSeries(jsonElement2, movie32.getType(), str2);
                                        if (parseRatingSeries != null && !parseRatingSeries.isEmpty()) {
                                            TextView textView4 = movieDetailActivityLeanBack.f14899J;
                                            if (textView4 != null) {
                                                textView4.setText(parseRatingSeries);
                                                movieDetailActivityLeanBack.f14899J.setVisibility(0);
                                            }
                                            movieDetailActivityLeanBack.f14963t0.certification = parseRatingSeries;
                                            break;
                                        }
                                        break;
                                }
                            }
                        }, new C1851d(25));
                    }
                } else {
                    final Movie movie7 = this.f14963t0;
                    if (movie7.getMovieId() != 0) {
                        Disposable disposable6 = this.f14948l0;
                        if (disposable6 != null) {
                            disposable6.dispose();
                        }
                        final int i11 = 0;
                        this.f14948l0 = D4.a.getRating(this, movie7.getType() == 0 ? "movie" : "tv", movie7.getMovieId()).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer(this) { // from class: y4.w0

                            /* renamed from: e, reason: collision with root package name */
                            public final /* synthetic */ MovieDetailActivityLeanBack f21302e;

                            {
                                this.f21302e = this;
                            }

                            @Override // io.reactivex.functions.Consumer
                            public final void accept(Object obj) {
                                String str;
                                TextView textView2;
                                String str2 = "US";
                                Movie movie32 = movie7;
                                MovieDetailActivityLeanBack movieDetailActivityLeanBack = this.f21302e;
                                switch (i11) {
                                    case 0:
                                        JsonElement jsonElement = (JsonElement) obj;
                                        int i92 = MovieDetailActivityLeanBack.f14880a1;
                                        movieDetailActivityLeanBack.getClass();
                                        try {
                                            str2 = movieDetailActivityLeanBack.getResources().getConfiguration().locale.getCountry();
                                        } catch (Exception unused3) {
                                        }
                                        String parseRating = JsonUtils.parseRating(jsonElement, movie32.getType(), str2);
                                        if (parseRating != null && !parseRating.isEmpty()) {
                                            TextView textView3 = movieDetailActivityLeanBack.f14899J;
                                            if (textView3 != null) {
                                                textView3.setText(parseRating);
                                                movieDetailActivityLeanBack.f14899J.setVisibility(0);
                                            }
                                            movieDetailActivityLeanBack.f14963t0.certification = parseRating;
                                            break;
                                        }
                                        break;
                                    case 1:
                                        int i102 = MovieDetailActivityLeanBack.f14880a1;
                                        Movie parseMovieInfo = JsonUtils.parseMovieInfo((JsonElement) obj, movie32.getType());
                                        try {
                                            movieDetailActivityLeanBack.f14963t0.setGenres(parseMovieInfo.getGenres());
                                            movieDetailActivityLeanBack.f14963t0.setProduction(parseMovieInfo.getProduction());
                                            movieDetailActivityLeanBack.f14963t0.rawReleaseDate = parseMovieInfo.rawReleaseDate;
                                            boolean released = parseMovieInfo.released();
                                            movieDetailActivityLeanBack.f14924V0 = released;
                                            movieDetailActivityLeanBack.f14926W0 = parseMovieInfo.rawReleaseDate;
                                            if (!released && (textView2 = movieDetailActivityLeanBack.f14901K) != null) {
                                                textView2.setVisibility(0);
                                                movieDetailActivityLeanBack.f14901K.setText("  SOON");
                                                movieDetailActivityLeanBack.f14901K.setTextColor(movieDetailActivityLeanBack.getResources().getColor(R.color.accent));
                                            }
                                            if (movieDetailActivityLeanBack.f14924V0 && !movieDetailActivityLeanBack.f14963t0.isSeries()) {
                                                movieDetailActivityLeanBack.e(movieDetailActivityLeanBack.f14963t0);
                                            }
                                            if (parseMovieInfo.belongsToCollection()) {
                                                long j7 = parseMovieInfo.collectionId;
                                                Disposable disposable22 = movieDetailActivityLeanBack.f14947k0;
                                                if (disposable22 != null) {
                                                    disposable22.dispose();
                                                }
                                                movieDetailActivityLeanBack.f14947k0 = D4.a.getCollection(j7).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1937x0(movieDetailActivityLeanBack, 3), new C1851d(27));
                                                movieDetailActivityLeanBack.f14936c0.setVisibility(0);
                                                if (parseMovieInfo.collectionName == null) {
                                                    parseMovieInfo.collectionName = "COLLECTION";
                                                }
                                                movieDetailActivityLeanBack.f14897I.setText(parseMovieInfo.collectionName.toUpperCase(Locale.ROOT));
                                                movieDetailActivityLeanBack.f14897I.setVisibility(0);
                                            }
                                            ExpandableTextView expandableTextView = movieDetailActivityLeanBack.f14965u0;
                                            if (expandableTextView != null) {
                                                expandableTextView.setOriginalText(parseMovieInfo.getOverview());
                                            }
                                            movieDetailActivityLeanBack.f14963t0.setOverview(parseMovieInfo.getOverview());
                                            if (parseMovieInfo.getType() == 1) {
                                                movieDetailActivityLeanBack.f14975z0.setVisibility(0);
                                                movieDetailActivityLeanBack.f14967v0.setVisibility(0);
                                                movieDetailActivityLeanBack.f14967v0.setText(parseMovieInfo.created_by);
                                            }
                                            try {
                                                movieDetailActivityLeanBack.f14889E.setText(new DecimalFormat("#.#").format(Double.parseDouble(parseMovieInfo.getRating())));
                                                Movie movie42 = movieDetailActivityLeanBack.f14963t0;
                                                if (movie42 != null) {
                                                    movie42.setRating(parseMovieInfo.getRating());
                                                }
                                            } catch (Exception unused4) {
                                            }
                                            String imdbID = parseMovieInfo.getImdbID();
                                            movieDetailActivityLeanBack.f14920T0 = imdbID;
                                            if (imdbID != null && imdbID.length() > 0) {
                                                movieDetailActivityLeanBack.f14963t0.setImdbID(movieDetailActivityLeanBack.f14920T0);
                                            }
                                            movieDetailActivityLeanBack.f14963t0.setSeason_count(parseMovieInfo.getSeason_count());
                                            ArrayList<Season> arrayList = parseMovieInfo.seasons;
                                            if (arrayList != null) {
                                                movieDetailActivityLeanBack.f14916R0.addAll(arrayList);
                                            }
                                            movieDetailActivityLeanBack.f14963t0.setCover(parseMovieInfo.getCover());
                                            movieDetailActivityLeanBack.f14963t0.backdrop = parseMovieInfo.backdrop;
                                            try {
                                                try {
                                                    m4.D.get().load(movieDetailActivityLeanBack.f14963t0.getCover()).fit().centerCrop().into(movieDetailActivityLeanBack.f14894G0, new B0(movieDetailActivityLeanBack));
                                                } catch (Exception unused5) {
                                                }
                                            } catch (OutOfMemoryError e8) {
                                                e8.printStackTrace();
                                            }
                                            String genres = parseMovieInfo.getGenres();
                                            Movie movie52 = movieDetailActivityLeanBack.f14963t0;
                                            String str3 = movie52.year;
                                            if (movie52.isSeries() || parseMovieInfo.getDuration() <= 0) {
                                                str = null;
                                            } else {
                                                str = (parseMovieInfo.getDuration() / 60) + "h " + (parseMovieInfo.getDuration() % 60) + CmcdData.OBJECT_TYPE_MANIFEST;
                                            }
                                            String str4 = parseMovieInfo.getSeason_count() > 1 ? " seasons" : " season";
                                            String removeTrailingColon = AbstractC1000n.removeTrailingColon(genres);
                                            if (str != null) {
                                                str3 = str3 + "  ·  " + str;
                                            }
                                            if (movieDetailActivityLeanBack.f14963t0.isSeries() && parseMovieInfo.getSeason_count() > 0) {
                                                str3 = str3 + "  ·  " + parseMovieInfo.getSeason_count() + str4;
                                            }
                                            movieDetailActivityLeanBack.f14969w0.setText(str3 + "  ·  " + removeTrailingColon);
                                            movieDetailActivityLeanBack.f14963t0.setDuration(parseMovieInfo.getDuration());
                                            break;
                                        } catch (Exception unused6) {
                                            return;
                                        }
                                        break;
                                    case 2:
                                        String str5 = (String) obj;
                                        if (str5 != null) {
                                            int i112 = MovieDetailActivityLeanBack.f14880a1;
                                            if (!str5.isEmpty()) {
                                                movieDetailActivityLeanBack.f14930Y0 = true;
                                                String concat = "https://image.tmdb.org/t/p/w500".concat(str5);
                                                movie32.is_title_logo_available = true;
                                                movie32.logoUrl = concat;
                                                movieDetailActivityLeanBack.f14902K0.setVisibility(8);
                                                try {
                                                    m4.D.get().load(concat).into(movieDetailActivityLeanBack.f14966v, new C0(movieDetailActivityLeanBack, movie32));
                                                    break;
                                                } catch (Exception e9) {
                                                    e9.printStackTrace();
                                                    return;
                                                }
                                            }
                                        }
                                        movieDetailActivityLeanBack.f14966v.setVisibility(8);
                                        movieDetailActivityLeanBack.f14902K0.setVisibility(0);
                                        break;
                                    case 3:
                                        int i12 = MovieDetailActivityLeanBack.f14880a1;
                                        movieDetailActivityLeanBack.getClass();
                                        ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie((JsonElement) obj, movie32.getType());
                                        if (parseListMovie.size() > 0) {
                                            movieDetailActivityLeanBack.f14906M0.addAll(App.getInstance().filterList(parseListMovie));
                                            movieDetailActivityLeanBack.f14919T.notifyDataSetChanged();
                                            movieDetailActivityLeanBack.f14933a0.smoothScrollToPosition(0);
                                            break;
                                        }
                                        break;
                                    default:
                                        JsonElement jsonElement2 = (JsonElement) obj;
                                        int i13 = MovieDetailActivityLeanBack.f14880a1;
                                        movieDetailActivityLeanBack.getClass();
                                        try {
                                            str2 = movieDetailActivityLeanBack.getResources().getConfiguration().locale.getCountry();
                                        } catch (Exception unused7) {
                                        }
                                        String parseRatingSeries = JsonUtils.parseRatingSeries(jsonElement2, movie32.getType(), str2);
                                        if (parseRatingSeries != null && !parseRatingSeries.isEmpty()) {
                                            TextView textView4 = movieDetailActivityLeanBack.f14899J;
                                            if (textView4 != null) {
                                                textView4.setText(parseRatingSeries);
                                                movieDetailActivityLeanBack.f14899J.setVisibility(0);
                                            }
                                            movieDetailActivityLeanBack.f14963t0.certification = parseRatingSeries;
                                            break;
                                        }
                                        break;
                                }
                            }
                        }, new C1851d(21));
                    }
                }
                new Handler().postDelayed(new RunnableC1933v0(this, 0), C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                new Handler().postDelayed(new RunnableC1933v0(this, 1), 3100L);
                AutofitTextView autofitTextView = this.f14902K0;
                if (autofitTextView != null) {
                    autofitTextView.setText(this.f14963t0.getTitle());
                }
            }
            setSupportActionBar(this.f14952n0);
            if (getSupportActionBar() != null && !App.f14424I) {
                getSupportActionBar().setTitle("");
            }
            if (App.f14424I) {
                this.f14952n0.setVisibility(4);
                this.f14950m0.setVisibility(4);
            }
            this.f14919T = new P(getBaseContext(), this.f14906M0, this, 9, this, null);
            this.f14927X = new r(getBaseContext(), this.f14910O0, this, this.f14963t0.getType());
            this.f14929Y.setAdapter(this.f14919T);
            this.f14929Y.setNumRows(1);
            this.f14929Y.setItemSpacing(30);
            this.f14921U = new P(getBaseContext(), this.f14912P0, this, 9, this, null);
            this.f14923V = new P(getBaseContext(), this.f14914Q0, this, 9, this, null);
            this.f14925W = new P(getBaseContext(), this.f14908N0, this, 9, this, null);
            this.f14933a0.setAdapter(this.f14921U);
            this.f14933a0.setNumRows(1);
            this.f14933a0.setItemSpacing(30);
            this.f14931Z.setAdapter(this.f14927X);
            this.f14931Z.setNumRows(1);
            this.f14929Y.setItemSpacing(30);
            this.f14936c0.setAdapter(this.f14925W);
            this.f14936c0.setNumRows(1);
            this.f14936c0.setItemSpacing(30);
            this.f14935b0.setAdapter(this.f14923V);
            this.f14935b0.setNumRows(1);
            this.f14935b0.setItemSpacing(30);
            this.f14959r0.setOnClickListener(new ViewOnClickListenerC1939y0(this, 4));
            this.f14953o0.setOnClickListener(new ViewOnClickListenerC1939y0(this, 7));
            new Handler().postDelayed(new RunnableC1933v0(this, 5), 300L);
            TextView textView2 = this.f14882A0;
            if (textView2 != null) {
                this.f14907N.applyFontToView(textView2, this.f14903L);
            }
            TextView textView3 = this.f14895H;
            if (textView3 != null) {
                this.f14907N.applyFontToView(textView3, this.f14903L);
            }
            TextView textView4 = this.f14897I;
            if (textView4 != null) {
                this.f14907N.applyFontToView(textView4, this.f14905M);
            }
            TextView textView5 = this.f14967v0;
            if (textView5 != null) {
                this.f14907N.applyFontToView(textView5, this.f14903L);
            }
            this.f14907N.applyFontToView(this.f14957q0, this.f14903L);
            TextClock textClock = this.f14885C;
            if (textClock != null) {
                this.f14907N.applyFontToView(textClock, this.f14903L);
            }
            this.f14907N.applyFontToView(this.f14892F0, this.f14905M);
            this.f14907N.applyFontToView(this.f14890E0, this.f14905M);
            this.f14907N.applyFontToView(this.f14959r0, this.f14903L);
            this.f14907N.applyFontToView(this.f14953o0, this.f14903L);
            this.f14907N.applyFontToView(this.f14902K0, this.f14905M);
            this.f14907N.applyFontToView(this.f14965u0, this.f14903L);
            this.f14907N.applyFontToView(this.f14896H0, this.f14903L);
            this.f14907N.applyFontToView(this.f14888D0, this.f14905M);
            this.f14907N.applyFontToView(this.f14886C0, this.f14903L);
            this.f14907N.applyFontToView(this.f14973y0, this.f14903L);
            this.f14907N.applyFontToView(this.f14971x0, this.f14903L);
            this.f14907N.applyFontToView(this.f14969w0, this.f14903L);
            this.f14907N.applyFontToView(this.f14884B0, this.f14905M);
            this.f14907N.applyFontToView(this.f14891F, this.f14905M);
            this.f14907N.applyFontToView(this.f14893G, this.f14905M);
            TextView textView6 = this.f14975z0;
            if (textView6 != null) {
                this.f14907N.applyFontToView(textView6, this.f14903L);
            }
            final Movie movie8 = this.f14963t0;
            if (movie8.getMovieId() > 0) {
                final int i12 = 2;
                D4.a.getMediaImages(movie8.getType() != 0 ? "tv" : "movie", movie8.getMovieId()).subscribeOn(Schedulers.io()).map(new s(3)).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer(this) { // from class: y4.w0

                    /* renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ MovieDetailActivityLeanBack f21302e;

                    {
                        this.f21302e = this;
                    }

                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        String str;
                        TextView textView22;
                        String str2 = "US";
                        Movie movie32 = movie8;
                        MovieDetailActivityLeanBack movieDetailActivityLeanBack = this.f21302e;
                        switch (i12) {
                            case 0:
                                JsonElement jsonElement = (JsonElement) obj;
                                int i92 = MovieDetailActivityLeanBack.f14880a1;
                                movieDetailActivityLeanBack.getClass();
                                try {
                                    str2 = movieDetailActivityLeanBack.getResources().getConfiguration().locale.getCountry();
                                } catch (Exception unused3) {
                                }
                                String parseRating = JsonUtils.parseRating(jsonElement, movie32.getType(), str2);
                                if (parseRating != null && !parseRating.isEmpty()) {
                                    TextView textView32 = movieDetailActivityLeanBack.f14899J;
                                    if (textView32 != null) {
                                        textView32.setText(parseRating);
                                        movieDetailActivityLeanBack.f14899J.setVisibility(0);
                                    }
                                    movieDetailActivityLeanBack.f14963t0.certification = parseRating;
                                    break;
                                }
                                break;
                            case 1:
                                int i102 = MovieDetailActivityLeanBack.f14880a1;
                                Movie parseMovieInfo = JsonUtils.parseMovieInfo((JsonElement) obj, movie32.getType());
                                try {
                                    movieDetailActivityLeanBack.f14963t0.setGenres(parseMovieInfo.getGenres());
                                    movieDetailActivityLeanBack.f14963t0.setProduction(parseMovieInfo.getProduction());
                                    movieDetailActivityLeanBack.f14963t0.rawReleaseDate = parseMovieInfo.rawReleaseDate;
                                    boolean released = parseMovieInfo.released();
                                    movieDetailActivityLeanBack.f14924V0 = released;
                                    movieDetailActivityLeanBack.f14926W0 = parseMovieInfo.rawReleaseDate;
                                    if (!released && (textView22 = movieDetailActivityLeanBack.f14901K) != null) {
                                        textView22.setVisibility(0);
                                        movieDetailActivityLeanBack.f14901K.setText("  SOON");
                                        movieDetailActivityLeanBack.f14901K.setTextColor(movieDetailActivityLeanBack.getResources().getColor(R.color.accent));
                                    }
                                    if (movieDetailActivityLeanBack.f14924V0 && !movieDetailActivityLeanBack.f14963t0.isSeries()) {
                                        movieDetailActivityLeanBack.e(movieDetailActivityLeanBack.f14963t0);
                                    }
                                    if (parseMovieInfo.belongsToCollection()) {
                                        long j7 = parseMovieInfo.collectionId;
                                        Disposable disposable22 = movieDetailActivityLeanBack.f14947k0;
                                        if (disposable22 != null) {
                                            disposable22.dispose();
                                        }
                                        movieDetailActivityLeanBack.f14947k0 = D4.a.getCollection(j7).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1937x0(movieDetailActivityLeanBack, 3), new C1851d(27));
                                        movieDetailActivityLeanBack.f14936c0.setVisibility(0);
                                        if (parseMovieInfo.collectionName == null) {
                                            parseMovieInfo.collectionName = "COLLECTION";
                                        }
                                        movieDetailActivityLeanBack.f14897I.setText(parseMovieInfo.collectionName.toUpperCase(Locale.ROOT));
                                        movieDetailActivityLeanBack.f14897I.setVisibility(0);
                                    }
                                    ExpandableTextView expandableTextView = movieDetailActivityLeanBack.f14965u0;
                                    if (expandableTextView != null) {
                                        expandableTextView.setOriginalText(parseMovieInfo.getOverview());
                                    }
                                    movieDetailActivityLeanBack.f14963t0.setOverview(parseMovieInfo.getOverview());
                                    if (parseMovieInfo.getType() == 1) {
                                        movieDetailActivityLeanBack.f14975z0.setVisibility(0);
                                        movieDetailActivityLeanBack.f14967v0.setVisibility(0);
                                        movieDetailActivityLeanBack.f14967v0.setText(parseMovieInfo.created_by);
                                    }
                                    try {
                                        movieDetailActivityLeanBack.f14889E.setText(new DecimalFormat("#.#").format(Double.parseDouble(parseMovieInfo.getRating())));
                                        Movie movie42 = movieDetailActivityLeanBack.f14963t0;
                                        if (movie42 != null) {
                                            movie42.setRating(parseMovieInfo.getRating());
                                        }
                                    } catch (Exception unused4) {
                                    }
                                    String imdbID = parseMovieInfo.getImdbID();
                                    movieDetailActivityLeanBack.f14920T0 = imdbID;
                                    if (imdbID != null && imdbID.length() > 0) {
                                        movieDetailActivityLeanBack.f14963t0.setImdbID(movieDetailActivityLeanBack.f14920T0);
                                    }
                                    movieDetailActivityLeanBack.f14963t0.setSeason_count(parseMovieInfo.getSeason_count());
                                    ArrayList<Season> arrayList = parseMovieInfo.seasons;
                                    if (arrayList != null) {
                                        movieDetailActivityLeanBack.f14916R0.addAll(arrayList);
                                    }
                                    movieDetailActivityLeanBack.f14963t0.setCover(parseMovieInfo.getCover());
                                    movieDetailActivityLeanBack.f14963t0.backdrop = parseMovieInfo.backdrop;
                                    try {
                                        try {
                                            m4.D.get().load(movieDetailActivityLeanBack.f14963t0.getCover()).fit().centerCrop().into(movieDetailActivityLeanBack.f14894G0, new B0(movieDetailActivityLeanBack));
                                        } catch (Exception unused5) {
                                        }
                                    } catch (OutOfMemoryError e8) {
                                        e8.printStackTrace();
                                    }
                                    String genres = parseMovieInfo.getGenres();
                                    Movie movie52 = movieDetailActivityLeanBack.f14963t0;
                                    String str3 = movie52.year;
                                    if (movie52.isSeries() || parseMovieInfo.getDuration() <= 0) {
                                        str = null;
                                    } else {
                                        str = (parseMovieInfo.getDuration() / 60) + "h " + (parseMovieInfo.getDuration() % 60) + CmcdData.OBJECT_TYPE_MANIFEST;
                                    }
                                    String str4 = parseMovieInfo.getSeason_count() > 1 ? " seasons" : " season";
                                    String removeTrailingColon = AbstractC1000n.removeTrailingColon(genres);
                                    if (str != null) {
                                        str3 = str3 + "  ·  " + str;
                                    }
                                    if (movieDetailActivityLeanBack.f14963t0.isSeries() && parseMovieInfo.getSeason_count() > 0) {
                                        str3 = str3 + "  ·  " + parseMovieInfo.getSeason_count() + str4;
                                    }
                                    movieDetailActivityLeanBack.f14969w0.setText(str3 + "  ·  " + removeTrailingColon);
                                    movieDetailActivityLeanBack.f14963t0.setDuration(parseMovieInfo.getDuration());
                                    break;
                                } catch (Exception unused6) {
                                    return;
                                }
                                break;
                            case 2:
                                String str5 = (String) obj;
                                if (str5 != null) {
                                    int i112 = MovieDetailActivityLeanBack.f14880a1;
                                    if (!str5.isEmpty()) {
                                        movieDetailActivityLeanBack.f14930Y0 = true;
                                        String concat = "https://image.tmdb.org/t/p/w500".concat(str5);
                                        movie32.is_title_logo_available = true;
                                        movie32.logoUrl = concat;
                                        movieDetailActivityLeanBack.f14902K0.setVisibility(8);
                                        try {
                                            m4.D.get().load(concat).into(movieDetailActivityLeanBack.f14966v, new C0(movieDetailActivityLeanBack, movie32));
                                            break;
                                        } catch (Exception e9) {
                                            e9.printStackTrace();
                                            return;
                                        }
                                    }
                                }
                                movieDetailActivityLeanBack.f14966v.setVisibility(8);
                                movieDetailActivityLeanBack.f14902K0.setVisibility(0);
                                break;
                            case 3:
                                int i122 = MovieDetailActivityLeanBack.f14880a1;
                                movieDetailActivityLeanBack.getClass();
                                ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie((JsonElement) obj, movie32.getType());
                                if (parseListMovie.size() > 0) {
                                    movieDetailActivityLeanBack.f14906M0.addAll(App.getInstance().filterList(parseListMovie));
                                    movieDetailActivityLeanBack.f14919T.notifyDataSetChanged();
                                    movieDetailActivityLeanBack.f14933a0.smoothScrollToPosition(0);
                                    break;
                                }
                                break;
                            default:
                                JsonElement jsonElement2 = (JsonElement) obj;
                                int i13 = MovieDetailActivityLeanBack.f14880a1;
                                movieDetailActivityLeanBack.getClass();
                                try {
                                    str2 = movieDetailActivityLeanBack.getResources().getConfiguration().locale.getCountry();
                                } catch (Exception unused7) {
                                }
                                String parseRatingSeries = JsonUtils.parseRatingSeries(jsonElement2, movie32.getType(), str2);
                                if (parseRatingSeries != null && !parseRatingSeries.isEmpty()) {
                                    TextView textView42 = movieDetailActivityLeanBack.f14899J;
                                    if (textView42 != null) {
                                        textView42.setText(parseRatingSeries);
                                        movieDetailActivityLeanBack.f14899J.setVisibility(0);
                                    }
                                    movieDetailActivityLeanBack.f14963t0.certification = parseRatingSeries;
                                    break;
                                }
                                break;
                        }
                    }
                }, new C1937x0(this, 1));
            }
            new Handler().postDelayed(new RunnableC1933v0(this, 6), C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        } catch (Exception e8) {
            e8.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        if (getResources().getConfiguration().orientation == 2) {
            getMenuInflater().inflate(R.menu.movie_detail_menu_land, menu);
        } else {
            getMenuInflater().inflate(R.menu.movie_detail_menu, menu);
        }
        this.f14918S0 = menu;
        menu.findItem(R.id.action_search);
        return true;
    }

    @Override // U4.j
    public void onMediaSelected(Movie movie) {
        Intent intent = App.f14424I ? new Intent(this, (Class<?>) MovieDetailActivityLeanBack.class) : new Intent(this, (Class<?>) MovieDetailActivity.class);
        intent.putExtra(OpenSubtitles.Params.Key.QUERY, movie.getTitle());
        intent.putExtra("server", "");
        intent.putExtra("movie", movie);
        intent.putExtra("year", movie.year);
        startActivity(intent);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
            return true;
        }
        if (itemId == R.id.action_search) {
            this.f14950m0.openSearch();
            return true;
        }
        if (itemId == R.id.action_settings) {
            startActivityForResult(new Intent(this, (Class<?>) SettingsActivity.class), 1100);
            return true;
        }
        if (itemId == R.id.action_watch) {
            if (this.f14960s) {
                try {
                    menuItem.getIcon().setVisible(false, true);
                    App.getInstance().f14439r.markAsWatched(this.f14963t0);
                    Toast.makeText(getApplicationContext(), "Marked as Watched", 1).show();
                } catch (Exception e3) {
                    throw new RuntimeException(e3);
                }
            }
            return true;
        }
        if (itemId != R.id.action_fav) {
            return super.onOptionsItemSelected(menuItem);
        }
        if (App.getInstance().f14439r.isMovieFavorited(this.f14963t0)) {
            menuItem.setIcon(R.drawable.love);
            App.getInstance().f14439r.deleteFavoriteMovie(this.f14963t0);
            w.make(findViewById(R.id.main_view), getString(R.string.removed_fav_label), -1).show();
        } else {
            menuItem.setIcon(R.drawable.ic_action_favorite);
            App.getInstance().f14439r.addMovieFavorites(this.f14963t0);
            w.make(findViewById(R.id.main_view), getString(R.string.added_fav_label), -1).show();
        }
        return true;
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    @SuppressLint({"SetTextI18n"})
    public void onResume() {
        super.onResume();
        boolean isMovieWatching = App.getInstance().f14439r.isMovieWatching(this.f14963t0);
        this.f14960s = isMovieWatching;
        if (isMovieWatching) {
            TextView textView = this.f14890E0;
            if (textView != null) {
                textView.setText("CONTINUE");
            }
            if (this.f14963t0.isSeries()) {
                int i2 = App.getInstance().f14440s.getInt(this.f14963t0.getMovieId() + "watched_season_index", 0) + 1;
                String e3 = i.e(i2, App.getInstance().f14440s.getInt(this.f14963t0.getMovieId() + OpenSubtitles.Params.Key.SEASON + i2 + OpenSubtitles.Params.Key.EPISODE + i2, 0) + 1, "S", "E");
                TextView textView2 = this.f14890E0;
                if (textView2 != null) {
                    textView2.setText("CONTINUE  " + e3);
                }
                h();
            } else {
                g();
            }
            this.f14896H0.setImageResource(R.drawable.is_resume);
            if (!App.f14424I) {
                this.f14896H0.setColorFilter(new PorterDuffColorFilter(h.getColor(this, R.color.black), PorterDuff.Mode.SRC_IN));
            }
            RelativeLayout relativeLayout = this.f14961s0;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(0);
            }
        } else {
            LinearLayout linearLayout = this.f14970x;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            TextView textView3 = this.f14890E0;
            if (textView3 != null) {
                textView3.setText("PLAY");
            }
            this.f14896H0.setImageResource(R.drawable.ic_play);
            this.f14961s0.setVisibility(8);
            if (!App.f14424I) {
                this.f14896H0.setColorFilter(new PorterDuffColorFilter(h.getColor(this, R.color.black), PorterDuff.Mode.SRC_IN));
            }
        }
        new Handler().postDelayed(new RunnableC1933v0(this, 7), 200L);
    }
}
