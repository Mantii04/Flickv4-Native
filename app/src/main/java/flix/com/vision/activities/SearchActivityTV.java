package flix.com.vision.activities;

import A4.m;
import A4.p;
import C4.I;
import C4.P;
import Q4.d;
import U4.i;
import U4.j;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.github.ybq.android.spinkit.SpinKitView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.uwetrottmann.trakt5.TraktV2;
import f1.RunnableC0883a;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.SearchActivityTV;
import flix.com.vision.helpers.CenterGridLayoutManager;
import flix.com.vision.models.Movie;
import flix.com.vision.subtitles.OpenSubtitles;
import flix.com.vision.tv.Constant;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import org.apache.commons.lang3.StringUtils;
import y4.F0;
import y4.H0;
import y4.I0;
import y4.J0;

/* loaded from: classes2.dex */
public class SearchActivityTV extends flix.com.vision.activities.base.a implements j, i {

    /* renamed from: I, reason: collision with root package name */
    public static final /* synthetic */ int f14981I = 0;

    /* renamed from: A, reason: collision with root package name */
    public ImageView f14982A;

    /* renamed from: B, reason: collision with root package name */
    public ImageView f14983B;

    /* renamed from: C, reason: collision with root package name */
    public ImageView f14984C;

    /* renamed from: D, reason: collision with root package name */
    public LinearLayout f14985D;

    /* renamed from: E, reason: collision with root package name */
    public Disposable f14986E;

    /* renamed from: H, reason: collision with root package name */
    public ProgressDialog f14989H;

    /* renamed from: b, reason: collision with root package name */
    public SpinKitView f14990b;

    /* renamed from: j, reason: collision with root package name */
    public P f14993j;

    /* renamed from: q, reason: collision with root package name */
    public TextView f14997q;

    /* renamed from: r, reason: collision with root package name */
    public TextView f14998r;

    /* renamed from: s, reason: collision with root package name */
    public TextView f14999s;

    /* renamed from: t, reason: collision with root package name */
    public RecyclerView f15000t;

    /* renamed from: u, reason: collision with root package name */
    public RecyclerView f15001u;

    /* renamed from: v, reason: collision with root package name */
    public RecyclerView f15002v;

    /* renamed from: w, reason: collision with root package name */
    public RelativeLayout f15003w;

    /* renamed from: x, reason: collision with root package name */
    public RelativeLayout f15004x;

    /* renamed from: y, reason: collision with root package name */
    public RelativeLayout f15005y;

    /* renamed from: z, reason: collision with root package name */
    public RelativeLayout f15006z;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f14991e = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f14992f = new ArrayList();

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f14994m = new ArrayList();

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f14995n = new ArrayList();

    /* renamed from: p, reason: collision with root package name */
    public String f14996p = "";

    /* renamed from: F, reason: collision with root package name */
    public int f14987F = App.getInstance().f14440s.getInt(FirebaseAnalytics.Param.CONTENT_TYPE, 0);

    /* renamed from: G, reason: collision with root package name */
    public boolean f14988G = true;

    public static String removeLastChar(String str) {
        return (str == null || str.length() == 0) ? "" : A.i.d(1, 0, str);
    }

    public final void askToUpdateIfAny(boolean z6, Movie movie) {
        try {
            SharedPreferences sharedPreferences = App.getInstance().f14440s;
            String str = Constant.f16184b;
            if (!sharedPreferences.getBoolean("update_available", false) || App.getInstance().f14440s.getString("update_url", "").length() <= 5) {
                return;
            }
            d newInstance = d.newInstance(this, true);
            newInstance.setButton1(getString(R.string.later_label).toUpperCase(), new p(this, newInstance, movie, 3));
            newInstance.setButton2(getString(R.string.download_update_label), new m(20, this, newInstance));
            newInstance.setMessage(getString(R.string.new_update_message) + App.getInstance().f14440s.getString("update_message", "") + getString(R.string.make_sure_you_get_it_mess));
            newInstance.setTitle(getString(R.string.update_available_label) + StringUtils.SPACE + App.getInstance().f14440s.getString("update_version_name", ""));
            newInstance.show(getFragmentManager(), "");
        } catch (Exception unused) {
        }
    }

    public final void e() {
        D4.a.gettabbedList(this, 1, this.f14987F == 0 ? "movie" : "tv", 0).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new F0(this, 1), new H0(0));
    }

    public void extractDominantColor() {
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), 0, 2505092);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 19));
        ofObject.addListener(new J0());
        ofObject.start();
    }

    public final void f() {
        this.f14998r.setText(this.f14996p);
        if (this.f14996p.trim().length() > 0) {
            if (this.f14996p.trim().length() > 1) {
                this.f14990b.setVisibility(0);
                Disposable disposable = this.f14986E;
                if (disposable != null) {
                    disposable.dispose();
                }
                this.f14986E = D4.a.searchDataMulti(this, this.f14996p, 1, false).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new F0(this, 0), new F0(this, 2));
                return;
            }
            return;
        }
        if (this.f14996p.isEmpty()) {
            this.f14998r.setText("Search by title or people");
            this.f14999s.setVisibility(0);
            ArrayList arrayList = this.f14992f;
            arrayList.clear();
            arrayList.addAll(this.f14991e);
            this.f14993j.notifyDataSetChanged();
            this.f15001u.scrollToPosition(0);
        }
    }

    @Override // U4.j
    public void favoriteDeleted(int i2) {
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i7, Intent intent) {
        String str;
        if (i2 == 1210 && i7 == -1 && (str = intent.getStringArrayListExtra("android.speech.extra.RESULTS").get(0)) != null && !str.isEmpty()) {
            this.f14996p = str;
            f();
        }
        super.onActivityResult(i2, i7, intent);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        final int i2 = 3;
        final int i7 = 2;
        final int i8 = 1;
        super.onCreate(bundle);
        setContentView(R.layout.activity_search_tv);
        this.f14984C = (ImageView) findViewById(R.id.mic_icon);
        this.f14983B = (ImageView) findViewById(R.id.back_icon);
        this.f14982A = (ImageView) findViewById(R.id.space_icon);
        this.f14997q = (TextView) findViewById(R.id.clear_text_label);
        this.f14990b = (SpinKitView) findViewById(R.id.loader);
        this.f14985D = (LinearLayout) findViewById(R.id.main_relative_view);
        this.f15006z = (RelativeLayout) findViewById(R.id.clear_button);
        this.f14999s = (TextView) findViewById(R.id.discover_text_view);
        this.f15004x = (RelativeLayout) findViewById(R.id.button_blank_space);
        this.f15005y = (RelativeLayout) findViewById(R.id.button_back_space);
        this.f14998r = (TextView) findViewById(R.id.query_text_view);
        this.f15003w = (RelativeLayout) findViewById(R.id.button_search_mic);
        this.f15000t = (RecyclerView) findViewById(R.id.recycler_view_letters);
        this.f15001u = (RecyclerView) findViewById(R.id.recycler_view_results);
        this.f15002v = (RecyclerView) findViewById(R.id.recycler_view_letters_numeric);
        extractDominantColor();
        this.f15004x.setOnClickListener(new I0(this, i8));
        this.f15005y.setOnClickListener(new I0(this, i7));
        this.f15006z.setOnClickListener(new I0(this, i2));
        this.f15003w.setOnClickListener(new I0(this, 4));
        this.f15006z.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: y4.G0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SearchActivityTV f21129e;

            {
                this.f21129e = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z6) {
                switch (i7) {
                    case 0:
                        SearchActivityTV searchActivityTV = this.f21129e;
                        if (!z6) {
                            searchActivityTV.f14983B.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV, R.color.white), PorterDuff.Mode.SRC_IN));
                            break;
                        } else {
                            searchActivityTV.f14983B.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV, R.color.black), PorterDuff.Mode.SRC_IN));
                            break;
                        }
                    case 1:
                        SearchActivityTV searchActivityTV2 = this.f21129e;
                        if (!z6) {
                            searchActivityTV2.f14984C.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV2, R.color.white), PorterDuff.Mode.SRC_IN));
                            break;
                        } else {
                            searchActivityTV2.f14984C.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV2, R.color.black), PorterDuff.Mode.SRC_IN));
                            break;
                        }
                    case 2:
                        SearchActivityTV searchActivityTV3 = this.f21129e;
                        if (!z6) {
                            searchActivityTV3.f14997q.setTextColor(searchActivityTV3.getResources().getColor(R.color.white));
                            break;
                        } else {
                            searchActivityTV3.f14997q.setTextColor(searchActivityTV3.getResources().getColor(R.color.black));
                            break;
                        }
                    default:
                        SearchActivityTV searchActivityTV4 = this.f21129e;
                        if (!z6) {
                            searchActivityTV4.f14982A.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV4, R.color.white), PorterDuff.Mode.SRC_IN));
                            break;
                        } else {
                            searchActivityTV4.f14982A.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV4, R.color.black), PorterDuff.Mode.SRC_IN));
                            break;
                        }
                }
            }
        });
        this.f15004x.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: y4.G0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SearchActivityTV f21129e;

            {
                this.f21129e = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z6) {
                switch (i2) {
                    case 0:
                        SearchActivityTV searchActivityTV = this.f21129e;
                        if (!z6) {
                            searchActivityTV.f14983B.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV, R.color.white), PorterDuff.Mode.SRC_IN));
                            break;
                        } else {
                            searchActivityTV.f14983B.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV, R.color.black), PorterDuff.Mode.SRC_IN));
                            break;
                        }
                    case 1:
                        SearchActivityTV searchActivityTV2 = this.f21129e;
                        if (!z6) {
                            searchActivityTV2.f14984C.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV2, R.color.white), PorterDuff.Mode.SRC_IN));
                            break;
                        } else {
                            searchActivityTV2.f14984C.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV2, R.color.black), PorterDuff.Mode.SRC_IN));
                            break;
                        }
                    case 2:
                        SearchActivityTV searchActivityTV3 = this.f21129e;
                        if (!z6) {
                            searchActivityTV3.f14997q.setTextColor(searchActivityTV3.getResources().getColor(R.color.white));
                            break;
                        } else {
                            searchActivityTV3.f14997q.setTextColor(searchActivityTV3.getResources().getColor(R.color.black));
                            break;
                        }
                    default:
                        SearchActivityTV searchActivityTV4 = this.f21129e;
                        if (!z6) {
                            searchActivityTV4.f14982A.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV4, R.color.white), PorterDuff.Mode.SRC_IN));
                            break;
                        } else {
                            searchActivityTV4.f14982A.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV4, R.color.black), PorterDuff.Mode.SRC_IN));
                            break;
                        }
                }
            }
        });
        final int i9 = 0;
        this.f15005y.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: y4.G0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SearchActivityTV f21129e;

            {
                this.f21129e = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z6) {
                switch (i9) {
                    case 0:
                        SearchActivityTV searchActivityTV = this.f21129e;
                        if (!z6) {
                            searchActivityTV.f14983B.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV, R.color.white), PorterDuff.Mode.SRC_IN));
                            break;
                        } else {
                            searchActivityTV.f14983B.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV, R.color.black), PorterDuff.Mode.SRC_IN));
                            break;
                        }
                    case 1:
                        SearchActivityTV searchActivityTV2 = this.f21129e;
                        if (!z6) {
                            searchActivityTV2.f14984C.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV2, R.color.white), PorterDuff.Mode.SRC_IN));
                            break;
                        } else {
                            searchActivityTV2.f14984C.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV2, R.color.black), PorterDuff.Mode.SRC_IN));
                            break;
                        }
                    case 2:
                        SearchActivityTV searchActivityTV3 = this.f21129e;
                        if (!z6) {
                            searchActivityTV3.f14997q.setTextColor(searchActivityTV3.getResources().getColor(R.color.white));
                            break;
                        } else {
                            searchActivityTV3.f14997q.setTextColor(searchActivityTV3.getResources().getColor(R.color.black));
                            break;
                        }
                    default:
                        SearchActivityTV searchActivityTV4 = this.f21129e;
                        if (!z6) {
                            searchActivityTV4.f14982A.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV4, R.color.white), PorterDuff.Mode.SRC_IN));
                            break;
                        } else {
                            searchActivityTV4.f14982A.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV4, R.color.black), PorterDuff.Mode.SRC_IN));
                            break;
                        }
                }
            }
        });
        this.f15003w.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: y4.G0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SearchActivityTV f21129e;

            {
                this.f21129e = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z6) {
                switch (i8) {
                    case 0:
                        SearchActivityTV searchActivityTV = this.f21129e;
                        if (!z6) {
                            searchActivityTV.f14983B.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV, R.color.white), PorterDuff.Mode.SRC_IN));
                            break;
                        } else {
                            searchActivityTV.f14983B.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV, R.color.black), PorterDuff.Mode.SRC_IN));
                            break;
                        }
                    case 1:
                        SearchActivityTV searchActivityTV2 = this.f21129e;
                        if (!z6) {
                            searchActivityTV2.f14984C.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV2, R.color.white), PorterDuff.Mode.SRC_IN));
                            break;
                        } else {
                            searchActivityTV2.f14984C.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV2, R.color.black), PorterDuff.Mode.SRC_IN));
                            break;
                        }
                    case 2:
                        SearchActivityTV searchActivityTV3 = this.f21129e;
                        if (!z6) {
                            searchActivityTV3.f14997q.setTextColor(searchActivityTV3.getResources().getColor(R.color.white));
                            break;
                        } else {
                            searchActivityTV3.f14997q.setTextColor(searchActivityTV3.getResources().getColor(R.color.black));
                            break;
                        }
                    default:
                        SearchActivityTV searchActivityTV4 = this.f21129e;
                        if (!z6) {
                            searchActivityTV4.f14982A.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV4, R.color.white), PorterDuff.Mode.SRC_IN));
                            break;
                        } else {
                            searchActivityTV4.f14982A.setColorFilter(new PorterDuffColorFilter(A.h.getColor(searchActivityTV4, R.color.black), PorterDuff.Mode.SRC_IN));
                            break;
                        }
                }
            }
        });
        ArrayList arrayList = this.f14994m;
        b.c.u(arrayList, CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "c", "d");
        b.c.u(arrayList, "e", "f", "g", CmcdData.STREAMING_FORMAT_HLS);
        b.c.u(arrayList, CmcdData.OBJECT_TYPE_INIT_SEGMENT, "j", "k", CmcdData.STREAM_TYPE_LIVE);
        b.c.u(arrayList, CmcdData.OBJECT_TYPE_MANIFEST, "n", "o", "p");
        b.c.u(arrayList, "q", "r", CmcdData.STREAMING_FORMAT_SS, "t");
        b.c.u(arrayList, "u", "v", "w", "x");
        arrayList.add("y");
        arrayList.add("z");
        ArrayList arrayList2 = this.f14995n;
        b.c.u(arrayList2, "1", TraktV2.API_VERSION, "3", "4");
        b.c.u(arrayList2, "5", "6", "7", "8");
        arrayList2.add("9");
        arrayList2.add("0");
        this.f15000t.setAdapter(new I(this, this, arrayList));
        this.f15000t.setLayoutManager(new GridLayoutManager(this, 7));
        this.f15002v.setAdapter(new I(this, this, arrayList2));
        this.f15002v.setLayoutManager(new GridLayoutManager(this, 7));
        P p6 = new P(this, this.f14992f, this, 1111, this, null);
        this.f14993j = p6;
        this.f15001u.setAdapter(p6);
        RecyclerView recyclerView = this.f15001u;
        DisplayMetrics d7 = b.c.d(getWindowManager().getDefaultDisplay());
        float f3 = d7.widthPixels / getResources().getDisplayMetrics().density;
        ArrayList arrayList3 = App.f14430z;
        recyclerView.setLayoutManager(new CenterGridLayoutManager(this, Math.round((f3 / 140) * 0.7f)));
        e();
        new Handler().postDelayed(new RunnableC0883a(this, 11), 200L);
    }

    @Override // U4.i
    public void onLetterClicked(String str) {
        this.f14996p = A.i.o(new StringBuilder(), this.f14996p, str);
        f();
    }

    @Override // U4.j
    public void onMediaSelected(Movie movie) {
        SharedPreferences sharedPreferences = App.getInstance().f14440s;
        String str = Constant.f16184b;
        if (sharedPreferences.getBoolean("update_available", false)) {
            if (!App.getInstance().f14440s.getBoolean("mandatory_update", false)) {
                askToUpdateIfAny(false, movie);
                return;
            }
            askToUpdateIfAny(false, null);
        }
        openMovieintent(movie);
    }

    public void openMovieintent(Movie movie) {
        Intent intent = App.f14424I ? new Intent(this, (Class<?>) MovieDetailActivityLeanBack.class) : new Intent(this, (Class<?>) MovieDetailActivity.class);
        intent.putExtra(OpenSubtitles.Params.Key.QUERY, movie.getTitle());
        intent.putExtra("server", "");
        intent.putExtra("movie", movie);
        intent.putExtra("year", movie.year);
        startActivity(intent);
    }
}
