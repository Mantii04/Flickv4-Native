package flix.com.vision.activities;

import A.h;
import A.i;
import C4.P;
import C4.r;
import I3.w;
import T4.k;
import U4.j;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.SharedPreferences;
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
import androidx.media3.common.C;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.RecyclerView;
import com.google.gson.JsonElement;
import cz.msebera.android.httpclient.HttpStatus;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.helpers.CenterLayoutManager;
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
import y4.C1913l;
import y4.C1916m0;
import y4.C1924q0;
import y4.C1925r0;
import y4.RunnableC1912k0;
import y4.ViewOnClickListenerC1922p0;
import y4.ViewOnFocusChangeListenerC1920o0;
import y4.ViewTreeObserverOnScrollChangedListenerC1918n0;

/* loaded from: classes2.dex */
public class MovieDetailActivity extends flix.com.vision.activities.base.a implements j {

    /* renamed from: S0, reason: collision with root package name */
    public static final /* synthetic */ int f14792S0 = 0;

    /* renamed from: A, reason: collision with root package name */
    public TextView f14793A;

    /* renamed from: A0, reason: collision with root package name */
    public ImageView f14794A0;

    /* renamed from: B, reason: collision with root package name */
    public TextView f14795B;

    /* renamed from: B0, reason: collision with root package name */
    public FrameLayout f14796B0;

    /* renamed from: C, reason: collision with root package name */
    public TextView f14797C;

    /* renamed from: C0, reason: collision with root package name */
    public AutofitTextView f14798C0;

    /* renamed from: D, reason: collision with root package name */
    public TextView f14799D;

    /* renamed from: E, reason: collision with root package name */
    public Typeface f14801E;

    /* renamed from: F, reason: collision with root package name */
    public Typeface f14803F;

    /* renamed from: G, reason: collision with root package name */
    public C0996j f14805G;

    /* renamed from: H, reason: collision with root package name */
    public Animation f14807H;

    /* renamed from: I, reason: collision with root package name */
    public Animation f14809I;

    /* renamed from: J, reason: collision with root package name */
    public ScrollView f14811J;

    /* renamed from: K0, reason: collision with root package name */
    public Menu f14814K0;

    /* renamed from: L, reason: collision with root package name */
    public P f14815L;

    /* renamed from: M, reason: collision with root package name */
    public P f14817M;

    /* renamed from: N, reason: collision with root package name */
    public P f14819N;

    /* renamed from: O, reason: collision with root package name */
    public P f14821O;

    /* renamed from: P, reason: collision with root package name */
    public r f14823P;

    /* renamed from: P0, reason: collision with root package name */
    public Disposable f14824P0;

    /* renamed from: Q, reason: collision with root package name */
    public RecyclerView f14825Q;

    /* renamed from: R, reason: collision with root package name */
    public RecyclerView f14827R;

    /* renamed from: S, reason: collision with root package name */
    public RecyclerView f14829S;

    /* renamed from: T, reason: collision with root package name */
    public RecyclerView f14830T;

    /* renamed from: U, reason: collision with root package name */
    public RecyclerView f14831U;

    /* renamed from: V, reason: collision with root package name */
    public Disposable f14832V;

    /* renamed from: W, reason: collision with root package name */
    public Disposable f14833W;

    /* renamed from: X, reason: collision with root package name */
    public Disposable f14834X;

    /* renamed from: Y, reason: collision with root package name */
    public Disposable f14835Y;

    /* renamed from: Z, reason: collision with root package name */
    public Disposable f14836Z;

    /* renamed from: a0, reason: collision with root package name */
    public Disposable f14837a0;

    /* renamed from: b, reason: collision with root package name */
    public ProgressBar f14838b;

    /* renamed from: b0, reason: collision with root package name */
    public Disposable f14839b0;

    /* renamed from: c0, reason: collision with root package name */
    public Disposable f14840c0;

    /* renamed from: d0, reason: collision with root package name */
    public Disposable f14841d0;

    /* renamed from: e0, reason: collision with root package name */
    public MaterialSearchView f14843e0;

    /* renamed from: f, reason: collision with root package name */
    public ImageView f14844f;

    /* renamed from: f0, reason: collision with root package name */
    public Toolbar f14845f0;

    /* renamed from: g0, reason: collision with root package name */
    public LinearLayout f14846g0;

    /* renamed from: h0, reason: collision with root package name */
    public RelativeLayout f14847h0;

    /* renamed from: i0, reason: collision with root package name */
    public RelativeLayout f14848i0;

    /* renamed from: j, reason: collision with root package name */
    public ImageView f14849j;

    /* renamed from: j0, reason: collision with root package name */
    public RelativeLayout f14850j0;

    /* renamed from: k0, reason: collision with root package name */
    public RelativeLayout f14851k0;

    /* renamed from: l0, reason: collision with root package name */
    public Movie f14852l0;

    /* renamed from: m, reason: collision with root package name */
    public ImageView f14853m;

    /* renamed from: m0, reason: collision with root package name */
    public ExpandableTextView f14854m0;

    /* renamed from: n, reason: collision with root package name */
    public ImageView f14855n;

    /* renamed from: n0, reason: collision with root package name */
    public TextView f14856n0;

    /* renamed from: o0, reason: collision with root package name */
    public TextView f14857o0;

    /* renamed from: p, reason: collision with root package name */
    public LinearLayout f14858p;

    /* renamed from: p0, reason: collision with root package name */
    public TextView f14859p0;

    /* renamed from: q, reason: collision with root package name */
    public LinearLayout f14860q;

    /* renamed from: q0, reason: collision with root package name */
    public TextView f14861q0;

    /* renamed from: r, reason: collision with root package name */
    public LinearLayout f14862r;

    /* renamed from: r0, reason: collision with root package name */
    public TextView f14863r0;

    /* renamed from: s, reason: collision with root package name */
    public LinearLayout f14864s;

    /* renamed from: s0, reason: collision with root package name */
    public TextView f14865s0;

    /* renamed from: t, reason: collision with root package name */
    public LinearLayout f14866t;

    /* renamed from: t0, reason: collision with root package name */
    public TextView f14867t0;

    /* renamed from: u, reason: collision with root package name */
    public LinearLayout f14868u;

    /* renamed from: u0, reason: collision with root package name */
    public TextView f14869u0;

    /* renamed from: v, reason: collision with root package name */
    public TextClock f14870v;

    /* renamed from: v0, reason: collision with root package name */
    public TextView f14871v0;

    /* renamed from: w, reason: collision with root package name */
    public TextView f14872w;

    /* renamed from: w0, reason: collision with root package name */
    public TextView f14873w0;

    /* renamed from: x, reason: collision with root package name */
    public TextView f14874x;

    /* renamed from: x0, reason: collision with root package name */
    public TextView f14875x0;

    /* renamed from: y, reason: collision with root package name */
    public TextView f14876y;

    /* renamed from: y0, reason: collision with root package name */
    public ImageView f14877y0;

    /* renamed from: z, reason: collision with root package name */
    public TextView f14878z;

    /* renamed from: z0, reason: collision with root package name */
    public ImageView f14879z0;

    /* renamed from: e, reason: collision with root package name */
    public boolean f14842e = false;

    /* renamed from: K, reason: collision with root package name */
    public boolean f14813K = false;

    /* renamed from: D0, reason: collision with root package name */
    public boolean f14800D0 = false;

    /* renamed from: E0, reason: collision with root package name */
    public final ArrayList f14802E0 = new ArrayList();

    /* renamed from: F0, reason: collision with root package name */
    public final ArrayList f14804F0 = new ArrayList();

    /* renamed from: G0, reason: collision with root package name */
    public final ArrayList f14806G0 = new ArrayList();

    /* renamed from: H0, reason: collision with root package name */
    public final ArrayList f14808H0 = new ArrayList();

    /* renamed from: I0, reason: collision with root package name */
    public final ArrayList f14810I0 = new ArrayList();

    /* renamed from: J0, reason: collision with root package name */
    public final ArrayList f14812J0 = new ArrayList();

    /* renamed from: L0, reason: collision with root package name */
    public String f14816L0 = "";

    /* renamed from: M0, reason: collision with root package name */
    public String f14818M0 = "";

    /* renamed from: N0, reason: collision with root package name */
    public boolean f14820N0 = true;

    /* renamed from: O0, reason: collision with root package name */
    public String f14822O0 = null;

    /* renamed from: Q0, reason: collision with root package name */
    public boolean f14826Q0 = false;

    /* renamed from: R0, reason: collision with root package name */
    public boolean f14828R0 = true;

    public final void e(Movie movie) {
        Disposable disposable = this.f14833W;
        if (disposable != null) {
            disposable.dispose();
        }
        this.f14833W = D4.a.getStreamingServices(this, movie.getType() == 0 ? "movie" : "tv", movie.getMovieId()).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1916m0(this, 5), new C1851d(20));
    }

    public final void f() {
        int i2 = 3;
        int i7 = 4;
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f14801E = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f14803F = Typeface.createFromAsset(getAssets(), "fonts/product_sans_bold.ttf");
        this.f14805G = new C0996j();
        this.f14874x = (TextView) findViewById(R.id.imdb_text);
        this.f14868u = (LinearLayout) findViewById(R.id.crew_container);
        this.f14855n = (ImageView) findViewById(R.id.mark_as_watched_imageview);
        this.f14853m = (ImageView) findViewById(R.id.title_logo);
        this.f14851k0 = (RelativeLayout) findViewById(R.id.mark_as_watched);
        this.f14844f = (ImageView) findViewById(R.id.settings_image_view);
        this.f14799D = (TextView) findViewById(R.id.type_text_providers);
        this.f14849j = (ImageView) findViewById(R.id.search_image_view);
        this.f14862r = (LinearLayout) findViewById(R.id.settings_button_movies_page);
        this.f14866t = (LinearLayout) findViewById(R.id.search_button_movies_page);
        this.f14864s = (LinearLayout) findViewById(R.id.clock_container_view);
        this.f14793A = (TextView) findViewById(R.id.writers_label);
        this.f14870v = (TextClock) findViewById(R.id.clock);
        this.f14860q = (LinearLayout) findViewById(R.id.loader);
        this.f14858p = (LinearLayout) findViewById(R.id.progress_layout);
        this.f14872w = (TextView) findViewById(R.id.progress_title);
        this.f14838b = (ProgressBar) findViewById(R.id.progress_bar);
        this.f14847h0 = (RelativeLayout) findViewById(R.id.poster_container);
        this.f14873w0 = (TextView) findViewById(R.id.play_button_label);
        this.f14875x0 = (TextView) findViewById(R.id.trailer_button_label);
        this.f14871v0 = (TextView) findViewById(R.id.from_director_textview);
        this.f14796B0 = (FrameLayout) findViewById(R.id.frame_layout_background);
        this.f14794A0 = (ImageView) findViewById(R.id.button_favorite_image);
        this.f14879z0 = (ImageView) findViewById(R.id.button_play_image);
        this.f14829S = (RecyclerView) findViewById(R.id.recyclerview_from_cast);
        this.f14830T = (RecyclerView) findViewById(R.id.recyclerview_from_director);
        this.f14831U = (RecyclerView) findViewById(R.id.recyclerview_collection);
        this.f14869u0 = (TextView) findViewById(R.id.type_text_view);
        this.f14867t0 = (TextView) findViewById(R.id.more_from_textview);
        AutofitTextView autofitTextView = (AutofitTextView) findViewById(R.id.movie_title);
        this.f14798C0 = autofitTextView;
        int i8 = 1;
        autofitTextView.setMaxLines(1);
        this.f14795B = (TextView) findViewById(R.id.collection_label);
        this.f14797C = (TextView) findViewById(R.id.text_view_rating);
        this.f14845f0 = (Toolbar) findViewById(R.id.toolbar);
        this.f14848i0 = (RelativeLayout) findViewById(R.id.add_favorites);
        this.f14856n0 = (TextView) findViewById(R.id.total_seasons);
        this.f14877y0 = (ImageView) findViewById(R.id.big_poster);
        this.f14850j0 = (RelativeLayout) findViewById(R.id.trailer_lin);
        this.f14846g0 = (LinearLayout) findViewById(R.id.movie_lin);
        this.f14857o0 = (TextView) findViewById(R.id.info);
        ExpandableTextView expandableTextView = (ExpandableTextView) findViewById(R.id.plot);
        this.f14854m0 = expandableTextView;
        if (expandableTextView != null) {
            expandableTextView.setOnClickListener(new ViewOnClickListenerC1922p0(this, 0));
        }
        this.f14859p0 = (TextView) findViewById(R.id.director_textview);
        this.f14861q0 = (TextView) findViewById(R.id.cast_textview);
        this.f14863r0 = (TextView) findViewById(R.id.season_label_textview);
        this.f14865s0 = (TextView) findViewById(R.id.director_label_textview);
        this.f14825Q = (RecyclerView) findViewById(R.id.recyclerview_similar);
        this.f14827R = (RecyclerView) findViewById(R.id.recyclerview_cast);
        this.f14876y = (TextView) findViewById(R.id.cast_label);
        this.f14878z = (TextView) findViewById(R.id.similar_label);
        if (this.f14844f != null) {
            this.f14862r.setOnFocusChangeListener(new ViewOnFocusChangeListenerC1920o0(this, i7));
            this.f14866t.setOnFocusChangeListener(new ViewOnFocusChangeListenerC1920o0(this, 5));
        }
        MaterialSearchView materialSearchView = (MaterialSearchView) findViewById(R.id.search_view);
        this.f14843e0 = materialSearchView;
        materialSearchView.adjustTintAlpha(0.0f);
        this.f14843e0.setCloseOnTintClick(true);
        this.f14843e0.setOnQueryTextListener(new C1924q0(this));
        this.f14843e0.setHint("Movies, TV Shows, People...");
        this.f14843e0.setOnItemClickListener(new C1913l(this, i2));
        LinearLayout linearLayout = this.f14862r;
        if (linearLayout != null) {
            linearLayout.setOnClickListener(new ViewOnClickListenerC1922p0(this, i8));
        }
        RelativeLayout relativeLayout = this.f14848i0;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new ViewOnClickListenerC1922p0(this, 2));
        }
        RelativeLayout relativeLayout2 = this.f14851k0;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnClickListener(new ViewOnClickListenerC1922p0(this, i2));
        }
        LinearLayout linearLayout2 = this.f14866t;
        if (linearLayout2 != null) {
            linearLayout2.setOnClickListener(new ViewOnClickListenerC1922p0(this, i7));
        }
    }

    @Override // U4.j
    public void favoriteDeleted(int i2) {
    }

    public final void g() {
        String str;
        LinearLayout linearLayout = this.f14858p;
        if (linearLayout == null) {
            return;
        }
        if (this.f14852l0 == null) {
            linearLayout.setVisibility(8);
            return;
        }
        int i2 = App.getInstance().f14440s.getInt(this.f14852l0.getMovieId() + "", -1);
        if (i2 <= 0) {
            this.f14858p.setVisibility(8);
            return;
        }
        try {
            int duration = this.f14852l0.getDuration() - (i2 / ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS);
            if (duration < 0) {
                this.f14858p.setVisibility(8);
                return;
            }
            if (duration > 60) {
                str = (duration / 60) + "h " + (duration % 60) + CmcdData.OBJECT_TYPE_MANIFEST;
            } else {
                str = duration + CmcdData.OBJECT_TYPE_MANIFEST;
            }
            this.f14872w.setText(str + " remaining");
            this.f14838b.setProgress((int) ((double) (((float) (i2 * 100)) / ((float) (this.f14852l0.getDuration() * ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS)))));
            this.f14858p.setVisibility(0);
        } catch (Exception unused) {
        }
    }

    public final void h() {
        int i2;
        if (this.f14852l0.isSeries()) {
            int i7 = App.getInstance().f14440s.getInt(this.f14852l0.getMovieId() + "watched_season_episode_count", -1);
            if (i7 > 0) {
                int i8 = App.getInstance().f14440s.getInt(this.f14852l0.getMovieId() + "watched_season_index", 0) + 1;
                int i9 = App.getInstance().f14440s.getInt(this.f14852l0.getMovieId() + OpenSubtitles.Params.Key.SEASON + i8 + OpenSubtitles.Params.Key.EPISODE + i8, 0) + 1;
                if (i9 <= 0 || (i2 = i7 - i9) <= 0) {
                    return;
                }
                this.f14838b.setProgress((int) ((i9 * 100) / i7));
                this.f14858p.setVisibility(0);
                this.f14872w.setText(i2 + " episodes remaining on season " + i8);
            }
        }
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i7, Intent intent) {
        super.onActivityResult(i2, i7, intent);
        if (i2 == 1100 && App.getInstance().f14440s.getBoolean("clear_history_pending", false)) {
            try {
                MaterialSearchView materialSearchView = this.f14843e0;
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
        MaterialSearchView materialSearchView = this.f14843e0;
        if (materialSearchView != null && materialSearchView.isOpen()) {
            this.f14843e0.closeSearch();
        } else if (this.f14811J.getScrollY() > 300) {
            this.f14811J.fullScroll(33);
        } else {
            super.onBackPressed();
        }
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    @SuppressLint({"SetTextI18n"})
    public void onCreate(Bundle bundle) {
        int i2 = 6;
        int i7 = 8;
        final int i8 = 3;
        final int i9 = 2;
        final int i10 = 1;
        final int i11 = 0;
        super.onCreate(bundle);
        try {
            setContentView(App.f14424I ? R.layout.activity_movie_detail : R.layout.activity_movie_detail_phones);
            try {
                f();
            } catch (Exception unused) {
            }
            this.f14800D0 = getResources().getConfiguration().orientation != 1;
            ScrollView scrollView = (ScrollView) findViewById(R.id.scrolview_main);
            this.f14811J = scrollView;
            if (App.f14424I || this.f14800D0) {
                scrollView.setVisibility(4);
                this.f14860q.setVisibility(0);
            }
            int i12 = App.f14424I ? HttpStatus.SC_MULTIPLE_CHOICES : 250;
            this.f14807H = AnimationUtils.loadAnimation(this, R.anim.fade_in);
            this.f14809I = AnimationUtils.loadAnimation(this, R.anim.fade_out_cast);
            this.f14811J.getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserverOnScrollChangedListenerC1918n0(this, i12, i11));
            App.f14416A.clear();
            App.f14417B.clear();
            if (this.f14794A0 != null) {
                if (App.f14424I) {
                    this.f14846g0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC1920o0(this, i11));
                }
                if (App.f14424I) {
                    this.f14850j0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC1920o0(this, i10));
                }
                this.f14848i0.setOnFocusChangeListener(new ViewOnFocusChangeListenerC1920o0(this, i9));
                RelativeLayout relativeLayout = this.f14851k0;
                if (relativeLayout != null) {
                    relativeLayout.setOnFocusChangeListener(new ViewOnFocusChangeListenerC1920o0(this, i8));
                }
            }
            Movie movie = (Movie) getIntent().getSerializableExtra("movie");
            this.f14852l0 = movie;
            if (movie == null) {
                this.f14852l0 = new Movie();
                AbstractC0995i.makeToast(this, "An Error Occurred while loading details. Please go back and try again", true);
            }
            boolean isMovieWatching = App.getInstance().f14439r.isMovieWatching(this.f14852l0);
            this.f14842e = isMovieWatching;
            if (isMovieWatching && this.f14851k0 != null) {
                this.f14873w0.setText("CONTINUE");
                if (this.f14852l0.isSeries()) {
                    int i13 = App.getInstance().f14440s.getInt(this.f14852l0.getMovieId() + "watched_season_index", 0) + 1;
                    String e3 = i.e(i13, App.getInstance().f14440s.getInt(this.f14852l0.getMovieId() + OpenSubtitles.Params.Key.SEASON + i13 + OpenSubtitles.Params.Key.EPISODE + i13, 0) + 1, "S", "E");
                    TextView textView = this.f14873w0;
                    StringBuilder sb = new StringBuilder("CONTINUE  ");
                    sb.append(e3);
                    textView.setText(sb.toString());
                    h();
                } else {
                    g();
                }
                this.f14879z0.setImageResource(R.drawable.is_resume);
                this.f14851k0.setVisibility(0);
            }
            if (App.f14424I) {
                this.f14868u.setVisibility(8);
            }
            if (this.f14852l0 != null) {
                this.f14813K = App.getInstance().f14439r.isMovieFavorited(this.f14852l0);
                if (this.f14852l0.getType() == 1) {
                    this.f14865s0.setVisibility(8);
                    this.f14859p0.setVisibility(8);
                    this.f14830T.setVisibility(8);
                    this.f14871v0.setVisibility(8);
                }
                this.f14869u0.setText(this.f14852l0.isSeries() ? "  ·  Series" : "  ·  Film");
                this.f14852l0.getCover();
                final Movie movie2 = this.f14852l0;
                if (movie2.getMovieId() != 0) {
                    Disposable disposable = this.f14836Z;
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    this.f14836Z = D4.a.getDetails(this, movie2.getType() == 0 ? "movie" : "tv", movie2.getMovieId()).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer(this) { // from class: y4.l0

                        /* renamed from: e, reason: collision with root package name */
                        public final /* synthetic */ MovieDetailActivity f21253e;

                        {
                            this.f21253e = this;
                        }

                        @Override // io.reactivex.functions.Consumer
                        public final void accept(Object obj) {
                            String str;
                            TextView textView2;
                            String str2 = "US";
                            Movie movie3 = movie2;
                            MovieDetailActivity movieDetailActivity = this.f21253e;
                            JsonElement jsonElement = (JsonElement) obj;
                            switch (i11) {
                                case 0:
                                    int i14 = MovieDetailActivity.f14792S0;
                                    Movie parseMovieInfo = JsonUtils.parseMovieInfo(jsonElement, movie3.getType());
                                    try {
                                        boolean released = parseMovieInfo.released();
                                        movieDetailActivity.f14820N0 = released;
                                        movieDetailActivity.f14822O0 = parseMovieInfo.raw_release_date;
                                        if (!released && (textView2 = movieDetailActivity.f14799D) != null) {
                                            textView2.setVisibility(0);
                                            movieDetailActivity.f14799D.setText("  SOON");
                                            movieDetailActivity.f14799D.setTextColor(movieDetailActivity.getResources().getColor(R.color.accent));
                                        }
                                        if (movieDetailActivity.f14820N0 && !movieDetailActivity.f14852l0.isSeries()) {
                                            movieDetailActivity.e(movieDetailActivity.f14852l0);
                                        }
                                        if (parseMovieInfo.belongsToCollection()) {
                                            long j7 = parseMovieInfo.collectionId;
                                            Disposable disposable2 = movieDetailActivity.f14840c0;
                                            if (disposable2 != null) {
                                                disposable2.dispose();
                                            }
                                            movieDetailActivity.f14840c0 = D4.a.getCollection(j7).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1916m0(movieDetailActivity, 4), new C1851d(19));
                                            movieDetailActivity.f14831U.setVisibility(0);
                                            if (parseMovieInfo.collectionName == null) {
                                                parseMovieInfo.collectionName = "COLLECTION";
                                            }
                                            movieDetailActivity.f14795B.setText(parseMovieInfo.collectionName.toUpperCase(Locale.ROOT));
                                            movieDetailActivity.f14795B.setVisibility(0);
                                        }
                                        ExpandableTextView expandableTextView = movieDetailActivity.f14854m0;
                                        if (expandableTextView != null) {
                                            expandableTextView.setOriginalText(parseMovieInfo.getOverview());
                                        }
                                        movieDetailActivity.f14852l0.setOverview(parseMovieInfo.getOverview());
                                        movieDetailActivity.f14852l0.last_air_date = parseMovieInfo.last_air_date;
                                        if (parseMovieInfo.getType() == 1) {
                                            movieDetailActivity.f14863r0.setVisibility(0);
                                            movieDetailActivity.f14856n0.setVisibility(0);
                                            movieDetailActivity.f14856n0.setText(parseMovieInfo.created_by);
                                        }
                                        try {
                                            movieDetailActivity.f14874x.setText(new DecimalFormat("#.#").format(Double.parseDouble(parseMovieInfo.getRating())));
                                            Movie movie4 = movieDetailActivity.f14852l0;
                                            if (movie4 != null) {
                                                movie4.setRating(parseMovieInfo.getRating());
                                            }
                                        } catch (Exception unused2) {
                                        }
                                        String imdbID = parseMovieInfo.getImdbID();
                                        movieDetailActivity.f14816L0 = imdbID;
                                        if (imdbID != null && imdbID.length() > 0) {
                                            movieDetailActivity.f14852l0.setImdbID(movieDetailActivity.f14816L0);
                                        }
                                        movieDetailActivity.f14852l0.setSeason_count(parseMovieInfo.getSeason_count());
                                        ArrayList<Season> arrayList = parseMovieInfo.seasons;
                                        if (arrayList != null) {
                                            movieDetailActivity.f14812J0.addAll(arrayList);
                                        }
                                        movieDetailActivity.f14852l0.setCover(parseMovieInfo.getCover());
                                        movieDetailActivity.f14852l0.backdrop = parseMovieInfo.backdrop;
                                        try {
                                            try {
                                                m4.D.get().load(movieDetailActivity.f14852l0.getCover()).fit().centerCrop().into(movieDetailActivity.f14877y0, new C1927s0(movieDetailActivity));
                                            } catch (OutOfMemoryError e7) {
                                                e7.printStackTrace();
                                            }
                                        } catch (Exception unused3) {
                                        }
                                        String genres = parseMovieInfo.getGenres();
                                        Movie movie5 = movieDetailActivity.f14852l0;
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
                                        if (movieDetailActivity.f14852l0.isSeries() && parseMovieInfo.getSeason_count() > 0) {
                                            str3 = str3 + "  ·  " + parseMovieInfo.getSeason_count() + str4;
                                        }
                                        movieDetailActivity.f14857o0.setText(str3 + "  ·  " + removeTrailingColon);
                                        movieDetailActivity.f14852l0.setDuration(parseMovieInfo.getDuration());
                                        break;
                                    } catch (Exception unused4) {
                                        return;
                                    }
                                    break;
                                case 1:
                                    int i15 = MovieDetailActivity.f14792S0;
                                    movieDetailActivity.getClass();
                                    try {
                                        str2 = movieDetailActivity.getResources().getConfiguration().locale.getCountry();
                                    } catch (Exception unused5) {
                                    }
                                    String parseRating = JsonUtils.parseRating(jsonElement, movie3.getType(), str2);
                                    if (parseRating != null && !parseRating.isEmpty()) {
                                        TextView textView3 = movieDetailActivity.f14797C;
                                        if (textView3 != null) {
                                            textView3.setText(parseRating);
                                            movieDetailActivity.f14797C.setVisibility(0);
                                        }
                                        movieDetailActivity.f14852l0.certification = parseRating;
                                        break;
                                    }
                                    break;
                                case 2:
                                    int i16 = MovieDetailActivity.f14792S0;
                                    movieDetailActivity.getClass();
                                    ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie(jsonElement, movie3.getType());
                                    if (parseListMovie.size() > 0) {
                                        movieDetailActivity.f14802E0.addAll(App.getInstance().filterList(parseListMovie));
                                        movieDetailActivity.f14815L.notifyDataSetChanged();
                                        movieDetailActivity.f14829S.smoothScrollToPosition(0);
                                        break;
                                    }
                                    break;
                                default:
                                    int i17 = MovieDetailActivity.f14792S0;
                                    movieDetailActivity.getClass();
                                    try {
                                        str2 = movieDetailActivity.getResources().getConfiguration().locale.getCountry();
                                    } catch (Exception unused6) {
                                    }
                                    String parseRatingSeries = JsonUtils.parseRatingSeries(jsonElement, movie3.getType(), str2);
                                    if (parseRatingSeries != null && !parseRatingSeries.isEmpty()) {
                                        TextView textView4 = movieDetailActivity.f14797C;
                                        if (textView4 != null) {
                                            textView4.setText(parseRatingSeries);
                                            movieDetailActivity.f14797C.setVisibility(0);
                                        }
                                        movieDetailActivity.f14852l0.certification = parseRatingSeries;
                                        break;
                                    }
                                    break;
                            }
                        }
                    }, new C1851d(12));
                }
                final Movie movie3 = this.f14852l0;
                Disposable disposable2 = this.f14832V;
                if (disposable2 != null) {
                    disposable2.dispose();
                }
                this.f14832V = D4.a.getSeeAlso(this, movie3.getType(), movie3.getMovieId()).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer(this) { // from class: y4.l0

                    /* renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ MovieDetailActivity f21253e;

                    {
                        this.f21253e = this;
                    }

                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        String str;
                        TextView textView2;
                        String str2 = "US";
                        Movie movie32 = movie3;
                        MovieDetailActivity movieDetailActivity = this.f21253e;
                        JsonElement jsonElement = (JsonElement) obj;
                        switch (i9) {
                            case 0:
                                int i14 = MovieDetailActivity.f14792S0;
                                Movie parseMovieInfo = JsonUtils.parseMovieInfo(jsonElement, movie32.getType());
                                try {
                                    boolean released = parseMovieInfo.released();
                                    movieDetailActivity.f14820N0 = released;
                                    movieDetailActivity.f14822O0 = parseMovieInfo.raw_release_date;
                                    if (!released && (textView2 = movieDetailActivity.f14799D) != null) {
                                        textView2.setVisibility(0);
                                        movieDetailActivity.f14799D.setText("  SOON");
                                        movieDetailActivity.f14799D.setTextColor(movieDetailActivity.getResources().getColor(R.color.accent));
                                    }
                                    if (movieDetailActivity.f14820N0 && !movieDetailActivity.f14852l0.isSeries()) {
                                        movieDetailActivity.e(movieDetailActivity.f14852l0);
                                    }
                                    if (parseMovieInfo.belongsToCollection()) {
                                        long j7 = parseMovieInfo.collectionId;
                                        Disposable disposable22 = movieDetailActivity.f14840c0;
                                        if (disposable22 != null) {
                                            disposable22.dispose();
                                        }
                                        movieDetailActivity.f14840c0 = D4.a.getCollection(j7).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1916m0(movieDetailActivity, 4), new C1851d(19));
                                        movieDetailActivity.f14831U.setVisibility(0);
                                        if (parseMovieInfo.collectionName == null) {
                                            parseMovieInfo.collectionName = "COLLECTION";
                                        }
                                        movieDetailActivity.f14795B.setText(parseMovieInfo.collectionName.toUpperCase(Locale.ROOT));
                                        movieDetailActivity.f14795B.setVisibility(0);
                                    }
                                    ExpandableTextView expandableTextView = movieDetailActivity.f14854m0;
                                    if (expandableTextView != null) {
                                        expandableTextView.setOriginalText(parseMovieInfo.getOverview());
                                    }
                                    movieDetailActivity.f14852l0.setOverview(parseMovieInfo.getOverview());
                                    movieDetailActivity.f14852l0.last_air_date = parseMovieInfo.last_air_date;
                                    if (parseMovieInfo.getType() == 1) {
                                        movieDetailActivity.f14863r0.setVisibility(0);
                                        movieDetailActivity.f14856n0.setVisibility(0);
                                        movieDetailActivity.f14856n0.setText(parseMovieInfo.created_by);
                                    }
                                    try {
                                        movieDetailActivity.f14874x.setText(new DecimalFormat("#.#").format(Double.parseDouble(parseMovieInfo.getRating())));
                                        Movie movie4 = movieDetailActivity.f14852l0;
                                        if (movie4 != null) {
                                            movie4.setRating(parseMovieInfo.getRating());
                                        }
                                    } catch (Exception unused2) {
                                    }
                                    String imdbID = parseMovieInfo.getImdbID();
                                    movieDetailActivity.f14816L0 = imdbID;
                                    if (imdbID != null && imdbID.length() > 0) {
                                        movieDetailActivity.f14852l0.setImdbID(movieDetailActivity.f14816L0);
                                    }
                                    movieDetailActivity.f14852l0.setSeason_count(parseMovieInfo.getSeason_count());
                                    ArrayList<Season> arrayList = parseMovieInfo.seasons;
                                    if (arrayList != null) {
                                        movieDetailActivity.f14812J0.addAll(arrayList);
                                    }
                                    movieDetailActivity.f14852l0.setCover(parseMovieInfo.getCover());
                                    movieDetailActivity.f14852l0.backdrop = parseMovieInfo.backdrop;
                                    try {
                                        try {
                                            m4.D.get().load(movieDetailActivity.f14852l0.getCover()).fit().centerCrop().into(movieDetailActivity.f14877y0, new C1927s0(movieDetailActivity));
                                        } catch (OutOfMemoryError e7) {
                                            e7.printStackTrace();
                                        }
                                    } catch (Exception unused3) {
                                    }
                                    String genres = parseMovieInfo.getGenres();
                                    Movie movie5 = movieDetailActivity.f14852l0;
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
                                    if (movieDetailActivity.f14852l0.isSeries() && parseMovieInfo.getSeason_count() > 0) {
                                        str3 = str3 + "  ·  " + parseMovieInfo.getSeason_count() + str4;
                                    }
                                    movieDetailActivity.f14857o0.setText(str3 + "  ·  " + removeTrailingColon);
                                    movieDetailActivity.f14852l0.setDuration(parseMovieInfo.getDuration());
                                    break;
                                } catch (Exception unused4) {
                                    return;
                                }
                                break;
                            case 1:
                                int i15 = MovieDetailActivity.f14792S0;
                                movieDetailActivity.getClass();
                                try {
                                    str2 = movieDetailActivity.getResources().getConfiguration().locale.getCountry();
                                } catch (Exception unused5) {
                                }
                                String parseRating = JsonUtils.parseRating(jsonElement, movie32.getType(), str2);
                                if (parseRating != null && !parseRating.isEmpty()) {
                                    TextView textView3 = movieDetailActivity.f14797C;
                                    if (textView3 != null) {
                                        textView3.setText(parseRating);
                                        movieDetailActivity.f14797C.setVisibility(0);
                                    }
                                    movieDetailActivity.f14852l0.certification = parseRating;
                                    break;
                                }
                                break;
                            case 2:
                                int i16 = MovieDetailActivity.f14792S0;
                                movieDetailActivity.getClass();
                                ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie(jsonElement, movie32.getType());
                                if (parseListMovie.size() > 0) {
                                    movieDetailActivity.f14802E0.addAll(App.getInstance().filterList(parseListMovie));
                                    movieDetailActivity.f14815L.notifyDataSetChanged();
                                    movieDetailActivity.f14829S.smoothScrollToPosition(0);
                                    break;
                                }
                                break;
                            default:
                                int i17 = MovieDetailActivity.f14792S0;
                                movieDetailActivity.getClass();
                                try {
                                    str2 = movieDetailActivity.getResources().getConfiguration().locale.getCountry();
                                } catch (Exception unused6) {
                                }
                                String parseRatingSeries = JsonUtils.parseRatingSeries(jsonElement, movie32.getType(), str2);
                                if (parseRatingSeries != null && !parseRatingSeries.isEmpty()) {
                                    TextView textView4 = movieDetailActivity.f14797C;
                                    if (textView4 != null) {
                                        textView4.setText(parseRatingSeries);
                                        movieDetailActivity.f14797C.setVisibility(0);
                                    }
                                    movieDetailActivity.f14852l0.certification = parseRatingSeries;
                                    break;
                                }
                                break;
                        }
                    }
                }, new C1851d(16));
                Movie movie4 = this.f14852l0;
                Disposable disposable3 = this.f14834X;
                if (disposable3 != null) {
                    disposable3.dispose();
                }
                this.f14834X = D4.a.getCast(this, movie4.getType() == 0 ? "movie" : "tv", movie4.getMovieId()).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1916m0(this, i10), new C1851d(15));
                Movie movie5 = this.f14852l0;
                Disposable disposable4 = this.f14835Y;
                if (disposable4 != null) {
                    disposable4.dispose();
                }
                this.f14835Y = D4.a.getTrailer(this, movie5.getType() == 0 ? "movie" : "tv", movie5.getMovieId()).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1916m0(this, i11), new C1851d(13));
                if (this.f14852l0.isSeries()) {
                    final Movie movie6 = this.f14852l0;
                    if (movie6.getMovieId() != 0) {
                        Disposable disposable5 = this.f14841d0;
                        if (disposable5 != null) {
                            disposable5.dispose();
                        }
                        this.f14841d0 = D4.a.getRatingSeries(this, movie6.getType() != 0 ? "tv" : "movie", movie6.getMovieId()).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer(this) { // from class: y4.l0

                            /* renamed from: e, reason: collision with root package name */
                            public final /* synthetic */ MovieDetailActivity f21253e;

                            {
                                this.f21253e = this;
                            }

                            @Override // io.reactivex.functions.Consumer
                            public final void accept(Object obj) {
                                String str;
                                TextView textView2;
                                String str2 = "US";
                                Movie movie32 = movie6;
                                MovieDetailActivity movieDetailActivity = this.f21253e;
                                JsonElement jsonElement = (JsonElement) obj;
                                switch (i8) {
                                    case 0:
                                        int i14 = MovieDetailActivity.f14792S0;
                                        Movie parseMovieInfo = JsonUtils.parseMovieInfo(jsonElement, movie32.getType());
                                        try {
                                            boolean released = parseMovieInfo.released();
                                            movieDetailActivity.f14820N0 = released;
                                            movieDetailActivity.f14822O0 = parseMovieInfo.raw_release_date;
                                            if (!released && (textView2 = movieDetailActivity.f14799D) != null) {
                                                textView2.setVisibility(0);
                                                movieDetailActivity.f14799D.setText("  SOON");
                                                movieDetailActivity.f14799D.setTextColor(movieDetailActivity.getResources().getColor(R.color.accent));
                                            }
                                            if (movieDetailActivity.f14820N0 && !movieDetailActivity.f14852l0.isSeries()) {
                                                movieDetailActivity.e(movieDetailActivity.f14852l0);
                                            }
                                            if (parseMovieInfo.belongsToCollection()) {
                                                long j7 = parseMovieInfo.collectionId;
                                                Disposable disposable22 = movieDetailActivity.f14840c0;
                                                if (disposable22 != null) {
                                                    disposable22.dispose();
                                                }
                                                movieDetailActivity.f14840c0 = D4.a.getCollection(j7).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1916m0(movieDetailActivity, 4), new C1851d(19));
                                                movieDetailActivity.f14831U.setVisibility(0);
                                                if (parseMovieInfo.collectionName == null) {
                                                    parseMovieInfo.collectionName = "COLLECTION";
                                                }
                                                movieDetailActivity.f14795B.setText(parseMovieInfo.collectionName.toUpperCase(Locale.ROOT));
                                                movieDetailActivity.f14795B.setVisibility(0);
                                            }
                                            ExpandableTextView expandableTextView = movieDetailActivity.f14854m0;
                                            if (expandableTextView != null) {
                                                expandableTextView.setOriginalText(parseMovieInfo.getOverview());
                                            }
                                            movieDetailActivity.f14852l0.setOverview(parseMovieInfo.getOverview());
                                            movieDetailActivity.f14852l0.last_air_date = parseMovieInfo.last_air_date;
                                            if (parseMovieInfo.getType() == 1) {
                                                movieDetailActivity.f14863r0.setVisibility(0);
                                                movieDetailActivity.f14856n0.setVisibility(0);
                                                movieDetailActivity.f14856n0.setText(parseMovieInfo.created_by);
                                            }
                                            try {
                                                movieDetailActivity.f14874x.setText(new DecimalFormat("#.#").format(Double.parseDouble(parseMovieInfo.getRating())));
                                                Movie movie42 = movieDetailActivity.f14852l0;
                                                if (movie42 != null) {
                                                    movie42.setRating(parseMovieInfo.getRating());
                                                }
                                            } catch (Exception unused2) {
                                            }
                                            String imdbID = parseMovieInfo.getImdbID();
                                            movieDetailActivity.f14816L0 = imdbID;
                                            if (imdbID != null && imdbID.length() > 0) {
                                                movieDetailActivity.f14852l0.setImdbID(movieDetailActivity.f14816L0);
                                            }
                                            movieDetailActivity.f14852l0.setSeason_count(parseMovieInfo.getSeason_count());
                                            ArrayList<Season> arrayList = parseMovieInfo.seasons;
                                            if (arrayList != null) {
                                                movieDetailActivity.f14812J0.addAll(arrayList);
                                            }
                                            movieDetailActivity.f14852l0.setCover(parseMovieInfo.getCover());
                                            movieDetailActivity.f14852l0.backdrop = parseMovieInfo.backdrop;
                                            try {
                                                try {
                                                    m4.D.get().load(movieDetailActivity.f14852l0.getCover()).fit().centerCrop().into(movieDetailActivity.f14877y0, new C1927s0(movieDetailActivity));
                                                } catch (OutOfMemoryError e7) {
                                                    e7.printStackTrace();
                                                }
                                            } catch (Exception unused3) {
                                            }
                                            String genres = parseMovieInfo.getGenres();
                                            Movie movie52 = movieDetailActivity.f14852l0;
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
                                            if (movieDetailActivity.f14852l0.isSeries() && parseMovieInfo.getSeason_count() > 0) {
                                                str3 = str3 + "  ·  " + parseMovieInfo.getSeason_count() + str4;
                                            }
                                            movieDetailActivity.f14857o0.setText(str3 + "  ·  " + removeTrailingColon);
                                            movieDetailActivity.f14852l0.setDuration(parseMovieInfo.getDuration());
                                            break;
                                        } catch (Exception unused4) {
                                            return;
                                        }
                                        break;
                                    case 1:
                                        int i15 = MovieDetailActivity.f14792S0;
                                        movieDetailActivity.getClass();
                                        try {
                                            str2 = movieDetailActivity.getResources().getConfiguration().locale.getCountry();
                                        } catch (Exception unused5) {
                                        }
                                        String parseRating = JsonUtils.parseRating(jsonElement, movie32.getType(), str2);
                                        if (parseRating != null && !parseRating.isEmpty()) {
                                            TextView textView3 = movieDetailActivity.f14797C;
                                            if (textView3 != null) {
                                                textView3.setText(parseRating);
                                                movieDetailActivity.f14797C.setVisibility(0);
                                            }
                                            movieDetailActivity.f14852l0.certification = parseRating;
                                            break;
                                        }
                                        break;
                                    case 2:
                                        int i16 = MovieDetailActivity.f14792S0;
                                        movieDetailActivity.getClass();
                                        ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie(jsonElement, movie32.getType());
                                        if (parseListMovie.size() > 0) {
                                            movieDetailActivity.f14802E0.addAll(App.getInstance().filterList(parseListMovie));
                                            movieDetailActivity.f14815L.notifyDataSetChanged();
                                            movieDetailActivity.f14829S.smoothScrollToPosition(0);
                                            break;
                                        }
                                        break;
                                    default:
                                        int i17 = MovieDetailActivity.f14792S0;
                                        movieDetailActivity.getClass();
                                        try {
                                            str2 = movieDetailActivity.getResources().getConfiguration().locale.getCountry();
                                        } catch (Exception unused6) {
                                        }
                                        String parseRatingSeries = JsonUtils.parseRatingSeries(jsonElement, movie32.getType(), str2);
                                        if (parseRatingSeries != null && !parseRatingSeries.isEmpty()) {
                                            TextView textView4 = movieDetailActivity.f14797C;
                                            if (textView4 != null) {
                                                textView4.setText(parseRatingSeries);
                                                movieDetailActivity.f14797C.setVisibility(0);
                                            }
                                            movieDetailActivity.f14852l0.certification = parseRatingSeries;
                                            break;
                                        }
                                        break;
                                }
                            }
                        }, new C1851d(17));
                    }
                } else {
                    final Movie movie7 = this.f14852l0;
                    if (movie7.getMovieId() != 0) {
                        Disposable disposable6 = this.f14841d0;
                        if (disposable6 != null) {
                            disposable6.dispose();
                        }
                        this.f14841d0 = D4.a.getRating(this, movie7.getType() != 0 ? "tv" : "movie", movie7.getMovieId()).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer(this) { // from class: y4.l0

                            /* renamed from: e, reason: collision with root package name */
                            public final /* synthetic */ MovieDetailActivity f21253e;

                            {
                                this.f21253e = this;
                            }

                            @Override // io.reactivex.functions.Consumer
                            public final void accept(Object obj) {
                                String str;
                                TextView textView2;
                                String str2 = "US";
                                Movie movie32 = movie7;
                                MovieDetailActivity movieDetailActivity = this.f21253e;
                                JsonElement jsonElement = (JsonElement) obj;
                                switch (i10) {
                                    case 0:
                                        int i14 = MovieDetailActivity.f14792S0;
                                        Movie parseMovieInfo = JsonUtils.parseMovieInfo(jsonElement, movie32.getType());
                                        try {
                                            boolean released = parseMovieInfo.released();
                                            movieDetailActivity.f14820N0 = released;
                                            movieDetailActivity.f14822O0 = parseMovieInfo.raw_release_date;
                                            if (!released && (textView2 = movieDetailActivity.f14799D) != null) {
                                                textView2.setVisibility(0);
                                                movieDetailActivity.f14799D.setText("  SOON");
                                                movieDetailActivity.f14799D.setTextColor(movieDetailActivity.getResources().getColor(R.color.accent));
                                            }
                                            if (movieDetailActivity.f14820N0 && !movieDetailActivity.f14852l0.isSeries()) {
                                                movieDetailActivity.e(movieDetailActivity.f14852l0);
                                            }
                                            if (parseMovieInfo.belongsToCollection()) {
                                                long j7 = parseMovieInfo.collectionId;
                                                Disposable disposable22 = movieDetailActivity.f14840c0;
                                                if (disposable22 != null) {
                                                    disposable22.dispose();
                                                }
                                                movieDetailActivity.f14840c0 = D4.a.getCollection(j7).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1916m0(movieDetailActivity, 4), new C1851d(19));
                                                movieDetailActivity.f14831U.setVisibility(0);
                                                if (parseMovieInfo.collectionName == null) {
                                                    parseMovieInfo.collectionName = "COLLECTION";
                                                }
                                                movieDetailActivity.f14795B.setText(parseMovieInfo.collectionName.toUpperCase(Locale.ROOT));
                                                movieDetailActivity.f14795B.setVisibility(0);
                                            }
                                            ExpandableTextView expandableTextView = movieDetailActivity.f14854m0;
                                            if (expandableTextView != null) {
                                                expandableTextView.setOriginalText(parseMovieInfo.getOverview());
                                            }
                                            movieDetailActivity.f14852l0.setOverview(parseMovieInfo.getOverview());
                                            movieDetailActivity.f14852l0.last_air_date = parseMovieInfo.last_air_date;
                                            if (parseMovieInfo.getType() == 1) {
                                                movieDetailActivity.f14863r0.setVisibility(0);
                                                movieDetailActivity.f14856n0.setVisibility(0);
                                                movieDetailActivity.f14856n0.setText(parseMovieInfo.created_by);
                                            }
                                            try {
                                                movieDetailActivity.f14874x.setText(new DecimalFormat("#.#").format(Double.parseDouble(parseMovieInfo.getRating())));
                                                Movie movie42 = movieDetailActivity.f14852l0;
                                                if (movie42 != null) {
                                                    movie42.setRating(parseMovieInfo.getRating());
                                                }
                                            } catch (Exception unused2) {
                                            }
                                            String imdbID = parseMovieInfo.getImdbID();
                                            movieDetailActivity.f14816L0 = imdbID;
                                            if (imdbID != null && imdbID.length() > 0) {
                                                movieDetailActivity.f14852l0.setImdbID(movieDetailActivity.f14816L0);
                                            }
                                            movieDetailActivity.f14852l0.setSeason_count(parseMovieInfo.getSeason_count());
                                            ArrayList<Season> arrayList = parseMovieInfo.seasons;
                                            if (arrayList != null) {
                                                movieDetailActivity.f14812J0.addAll(arrayList);
                                            }
                                            movieDetailActivity.f14852l0.setCover(parseMovieInfo.getCover());
                                            movieDetailActivity.f14852l0.backdrop = parseMovieInfo.backdrop;
                                            try {
                                                try {
                                                    m4.D.get().load(movieDetailActivity.f14852l0.getCover()).fit().centerCrop().into(movieDetailActivity.f14877y0, new C1927s0(movieDetailActivity));
                                                } catch (OutOfMemoryError e7) {
                                                    e7.printStackTrace();
                                                }
                                            } catch (Exception unused3) {
                                            }
                                            String genres = parseMovieInfo.getGenres();
                                            Movie movie52 = movieDetailActivity.f14852l0;
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
                                            if (movieDetailActivity.f14852l0.isSeries() && parseMovieInfo.getSeason_count() > 0) {
                                                str3 = str3 + "  ·  " + parseMovieInfo.getSeason_count() + str4;
                                            }
                                            movieDetailActivity.f14857o0.setText(str3 + "  ·  " + removeTrailingColon);
                                            movieDetailActivity.f14852l0.setDuration(parseMovieInfo.getDuration());
                                            break;
                                        } catch (Exception unused4) {
                                            return;
                                        }
                                        break;
                                    case 1:
                                        int i15 = MovieDetailActivity.f14792S0;
                                        movieDetailActivity.getClass();
                                        try {
                                            str2 = movieDetailActivity.getResources().getConfiguration().locale.getCountry();
                                        } catch (Exception unused5) {
                                        }
                                        String parseRating = JsonUtils.parseRating(jsonElement, movie32.getType(), str2);
                                        if (parseRating != null && !parseRating.isEmpty()) {
                                            TextView textView3 = movieDetailActivity.f14797C;
                                            if (textView3 != null) {
                                                textView3.setText(parseRating);
                                                movieDetailActivity.f14797C.setVisibility(0);
                                            }
                                            movieDetailActivity.f14852l0.certification = parseRating;
                                            break;
                                        }
                                        break;
                                    case 2:
                                        int i16 = MovieDetailActivity.f14792S0;
                                        movieDetailActivity.getClass();
                                        ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie(jsonElement, movie32.getType());
                                        if (parseListMovie.size() > 0) {
                                            movieDetailActivity.f14802E0.addAll(App.getInstance().filterList(parseListMovie));
                                            movieDetailActivity.f14815L.notifyDataSetChanged();
                                            movieDetailActivity.f14829S.smoothScrollToPosition(0);
                                            break;
                                        }
                                        break;
                                    default:
                                        int i17 = MovieDetailActivity.f14792S0;
                                        movieDetailActivity.getClass();
                                        try {
                                            str2 = movieDetailActivity.getResources().getConfiguration().locale.getCountry();
                                        } catch (Exception unused6) {
                                        }
                                        String parseRatingSeries = JsonUtils.parseRatingSeries(jsonElement, movie32.getType(), str2);
                                        if (parseRatingSeries != null && !parseRatingSeries.isEmpty()) {
                                            TextView textView4 = movieDetailActivity.f14797C;
                                            if (textView4 != null) {
                                                textView4.setText(parseRatingSeries);
                                                movieDetailActivity.f14797C.setVisibility(0);
                                            }
                                            movieDetailActivity.f14852l0.certification = parseRatingSeries;
                                            break;
                                        }
                                        break;
                                }
                            }
                        }, new C1851d(14));
                    }
                }
                if (getResources().getConfiguration().orientation == 2) {
                    new Handler().postDelayed(new RunnableC1912k0(this, i2), C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                    new Handler().postDelayed(new RunnableC1912k0(this, 7), 3100L);
                }
                AutofitTextView autofitTextView = this.f14798C0;
                if (autofitTextView != null) {
                    autofitTextView.setText(this.f14852l0.getTitle());
                }
            }
            setSupportActionBar(this.f14845f0);
            if (getSupportActionBar() != null && !App.f14424I) {
                getSupportActionBar().setTitle("");
            }
            if (App.f14424I) {
                this.f14845f0.setVisibility(4);
                this.f14843e0.setVisibility(4);
            }
            this.f14815L = new P(getBaseContext(), this.f14802E0, this, 9, this, null);
            this.f14823P = new r(getBaseContext(), this.f14806G0, this, this.f14852l0.getType());
            this.f14825Q.setLayoutManager(new CenterLayoutManager(this, 0, false));
            this.f14825Q.setAdapter(this.f14815L);
            this.f14825Q.addItemDecoration(new k(15));
            this.f14817M = new P(getBaseContext(), this.f14808H0, this, 9, this, null);
            this.f14819N = new P(getBaseContext(), this.f14810I0, this, 9, this, null);
            this.f14821O = new P(getBaseContext(), this.f14804F0, this, 9, this, null);
            this.f14829S.setLayoutManager(new CenterLayoutManager(this, 0, false));
            this.f14829S.setAdapter(this.f14817M);
            b.c.s(this.f14829S, 15);
            this.f14827R.setLayoutManager(new CenterLayoutManager(this, 0, false));
            b.c.s(this.f14827R, 26);
            this.f14827R.setAdapter(this.f14823P);
            this.f14831U.setLayoutManager(new CenterLayoutManager(this, 0, false));
            b.c.s(this.f14831U, 15);
            this.f14831U.setAdapter(this.f14821O);
            this.f14830T.setLayoutManager(new CenterLayoutManager(this, 0, false));
            this.f14830T.setAdapter(this.f14819N);
            b.c.s(this.f14830T, 15);
            this.f14850j0.setOnClickListener(new ViewOnClickListenerC1922p0(this, 5));
            this.f14846g0.setOnClickListener(new ViewOnClickListenerC1922p0(this, i2));
            new Handler().postDelayed(new RunnableC1912k0(this, i7), 300L);
            TextView textView2 = this.f14865s0;
            if (textView2 != null) {
                this.f14805G.applyFontToView(textView2, this.f14801E);
            }
            TextView textView3 = this.f14793A;
            if (textView3 != null) {
                this.f14805G.applyFontToView(textView3, this.f14801E);
            }
            TextView textView4 = this.f14795B;
            if (textView4 != null) {
                this.f14805G.applyFontToView(textView4, this.f14803F);
            }
            TextView textView5 = this.f14856n0;
            if (textView5 != null) {
                this.f14805G.applyFontToView(textView5, this.f14801E);
            }
            this.f14805G.applyFontToView(this.f14848i0, this.f14801E);
            TextClock textClock = this.f14870v;
            if (textClock != null) {
                this.f14805G.applyFontToView(textClock, this.f14801E);
            }
            this.f14805G.applyFontToView(this.f14875x0, this.f14803F);
            this.f14805G.applyFontToView(this.f14873w0, this.f14803F);
            this.f14805G.applyFontToView(this.f14850j0, this.f14801E);
            this.f14805G.applyFontToView(this.f14846g0, this.f14801E);
            this.f14805G.applyFontToView(this.f14798C0, this.f14803F);
            this.f14805G.applyFontToView(this.f14854m0, this.f14801E);
            this.f14805G.applyFontToView(this.f14879z0, this.f14801E);
            this.f14805G.applyFontToView(this.f14871v0, this.f14803F);
            this.f14805G.applyFontToView(this.f14869u0, this.f14801E);
            this.f14805G.applyFontToView(this.f14861q0, this.f14801E);
            this.f14805G.applyFontToView(this.f14859p0, this.f14801E);
            this.f14805G.applyFontToView(this.f14857o0, this.f14801E);
            this.f14805G.applyFontToView(this.f14867t0, this.f14803F);
            this.f14805G.applyFontToView(this.f14876y, this.f14803F);
            this.f14805G.applyFontToView(this.f14878z, this.f14803F);
            TextView textView6 = this.f14863r0;
            if (textView6 != null) {
                this.f14805G.applyFontToView(textView6, this.f14801E);
            }
            if (this.f14853m != null) {
                SharedPreferences sharedPreferences = App.getInstance().f14440s;
                String str = Constant.f16184b;
                if (sharedPreferences.getBoolean("pref_load_logos", false) && this.f14852l0 != null) {
                    String str2 = App.getInstance().f14444w + getString(R.string.api_path_movie) + this.f14852l0.getMovieId() + ".png";
                    if (this.f14852l0.isSeries()) {
                        str2 = App.getInstance().f14444w + getString(R.string.api_path_tv) + this.f14852l0.getMovieId() + ".png";
                    }
                    try {
                        D.get().load(str2).into(this.f14853m, new C1925r0(this));
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                }
            }
            new Handler().postDelayed(new RunnableC1912k0(this, i11), C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
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
        this.f14814K0 = menu;
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
            this.f14843e0.openSearch();
            return true;
        }
        if (itemId == R.id.action_settings) {
            startActivityForResult(new Intent(this, (Class<?>) SettingsActivity.class), 1100);
            return true;
        }
        if (itemId == R.id.action_watch) {
            if (this.f14842e) {
                try {
                    menuItem.getIcon().setVisible(false, true);
                    App.getInstance().f14439r.markAsWatched(this.f14852l0);
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
        if (App.getInstance().f14439r.isMovieFavorited(this.f14852l0)) {
            menuItem.setIcon(R.drawable.love);
            App.getInstance().f14439r.deleteFavoriteMovie(this.f14852l0);
            w.make(findViewById(R.id.main_view), getString(R.string.removed_fav_label), -1).show();
        } else {
            menuItem.setIcon(R.drawable.ic_action_favorite);
            App.getInstance().f14439r.addMovieFavorites(this.f14852l0);
            w.make(findViewById(R.id.main_view), getString(R.string.added_fav_label), -1).show();
        }
        return true;
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    @SuppressLint({"SetTextI18n"})
    public void onResume() {
        super.onResume();
        boolean isMovieWatching = App.getInstance().f14439r.isMovieWatching(this.f14852l0);
        this.f14842e = isMovieWatching;
        if (isMovieWatching) {
            this.f14873w0.setText("CONTINUE");
            if (this.f14852l0.isSeries()) {
                int i2 = App.getInstance().f14440s.getInt(this.f14852l0.getMovieId() + "watched_season_index", 0) + 1;
                String e3 = i.e(i2, App.getInstance().f14440s.getInt(this.f14852l0.getMovieId() + OpenSubtitles.Params.Key.SEASON + i2 + OpenSubtitles.Params.Key.EPISODE + i2, 0) + 1, "S", "E");
                TextView textView = this.f14873w0;
                StringBuilder sb = new StringBuilder("CONTINUE  ");
                sb.append(e3);
                textView.setText(sb.toString());
                h();
            } else {
                g();
            }
            this.f14879z0.setImageResource(R.drawable.is_resume);
            if (!App.f14424I) {
                this.f14879z0.setColorFilter(new PorterDuffColorFilter(h.getColor(this, R.color.black), PorterDuff.Mode.SRC_IN));
            }
            RelativeLayout relativeLayout = this.f14851k0;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(0);
            }
        } else {
            LinearLayout linearLayout = this.f14858p;
            if (linearLayout != null) {
                linearLayout.setVisibility(8);
            }
            this.f14873w0.setText("PLAY");
            this.f14879z0.setImageResource(R.drawable.ic_play);
            this.f14851k0.setVisibility(8);
            if (!App.f14424I) {
                this.f14879z0.setColorFilter(new PorterDuffColorFilter(h.getColor(this, R.color.black), PorterDuff.Mode.SRC_IN));
            }
        }
        new Handler().postDelayed(new RunnableC1912k0(this, 1), 200L);
    }
}
