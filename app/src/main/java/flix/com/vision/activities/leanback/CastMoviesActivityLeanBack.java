package flix.com.vision.activities.leanback;

import A3.d;
import A4.C0020b;
import A4.c;
import C4.P;
import T4.k;
import U4.j;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.leanback.widget.VerticalGridView;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.ExoPlayer;
import de.hdodenhof.circleimageview.CircleImageView;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.activities.MovieDetailActivityLeanBack;
import flix.com.vision.activities.base.a;
import flix.com.vision.activities.leanback.CastMoviesActivityLeanBack;
import flix.com.vision.models.Movie;
import flix.com.vision.subtitles.OpenSubtitles;
import flix.com.vision.tv.Constant;
import h5.AbstractC0995i;
import h5.C0996j;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Collections;
import m4.D;

/* loaded from: classes2.dex */
public class CastMoviesActivityLeanBack extends a implements j {

    /* renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ int f15414H = 0;

    /* renamed from: A, reason: collision with root package name */
    public P f15415A;

    /* renamed from: C, reason: collision with root package name */
    public boolean f15417C;

    /* renamed from: D, reason: collision with root package name */
    public TextView f15418D;

    /* renamed from: F, reason: collision with root package name */
    public boolean f15420F;

    /* renamed from: G, reason: collision with root package name */
    public int f15421G;

    /* renamed from: b, reason: collision with root package name */
    public C0996j f15422b;

    /* renamed from: e, reason: collision with root package name */
    public Typeface f15423e;

    /* renamed from: n, reason: collision with root package name */
    public String f15427n;

    /* renamed from: p, reason: collision with root package name */
    public TextView f15428p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f15429q;

    /* renamed from: r, reason: collision with root package name */
    public long f15430r;

    /* renamed from: s, reason: collision with root package name */
    public CircleImageView f15431s;

    /* renamed from: t, reason: collision with root package name */
    public Toolbar f15432t;

    /* renamed from: u, reason: collision with root package name */
    public LinearLayout f15433u;

    /* renamed from: v, reason: collision with root package name */
    public VerticalGridView f15434v;

    /* renamed from: w, reason: collision with root package name */
    public RelativeLayout f15435w;

    /* renamed from: x, reason: collision with root package name */
    public RelativeLayout f15436x;

    /* renamed from: y, reason: collision with root package name */
    public RelativeLayout f15437y;

    /* renamed from: z, reason: collision with root package name */
    public Disposable f15438z;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f15424f = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f15425j = new ArrayList();

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f15426m = new ArrayList();

    /* renamed from: B, reason: collision with root package name */
    public String f15416B = null;

    /* renamed from: E, reason: collision with root package name */
    public int f15419E = 0;

    public final void e() {
        Disposable disposable = this.f15438z;
        if (disposable != null) {
            disposable.dispose();
        }
        this.f15438z = D4.a.getDetailCast(this, "movie_credits", this.f15430r, false).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C0020b(this, 0), new c(0));
    }

    @Override // U4.j
    public void favoriteDeleted(int i2) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (!this.f15436x.hasFocus() && !this.f15437y.hasFocus() && !this.f15435w.hasFocus()) {
            if (this.f15424f.size() < 200) {
                this.f15434v.smoothScrollToPosition(0);
            } else {
                this.f15434v.scrollToPosition(0);
            }
            this.f15434v.clearFocus();
            this.f15435w.requestFocus();
            return;
        }
        if (this.f15420F) {
            this.f15420F = false;
            super.onBackPressed();
            return;
        }
        Toast.makeText(getBaseContext(), "Press again to go back...", 0).show();
        this.f15420F = true;
        this.f15434v.clearFocus();
        this.f15435w.requestFocus();
        new Handler().postDelayed(new d(this, 1), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_cast_movies_leanback);
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f15423e = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f15422b = new C0996j();
        final int i2 = 0;
        this.f15419E = getIntent().getIntExtra("gender", 0);
        this.f15427n = getIntent().getStringExtra("name");
        this.f15430r = getIntent().getLongExtra("id", 0L);
        getIntent().getIntExtra("type", 0);
        this.f15416B = getIntent().getStringExtra(MimeTypes.BASE_TYPE_IMAGE);
        this.f15433u = (LinearLayout) findViewById(R.id.activity_player);
        this.f15418D = (TextView) findViewById(R.id.cast_name_text);
        this.f15436x = (RelativeLayout) findViewById(R.id.series_button);
        this.f15435w = (RelativeLayout) findViewById(R.id.movies_button);
        this.f15431s = (CircleImageView) findViewById(R.id.image_cast);
        this.f15429q = (TextView) findViewById(R.id.label_series_button);
        this.f15428p = (TextView) findViewById(R.id.label_movies_button);
        this.f15422b.applyFontToView(this.f15429q, this.f15423e);
        this.f15422b.applyFontToView(this.f15428p, this.f15423e);
        this.f15436x.setOnClickListener(new View.OnClickListener(this) { // from class: A4.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ CastMoviesActivityLeanBack f55e;

            {
                this.f55e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                        CastMoviesActivityLeanBack castMoviesActivityLeanBack = this.f55e;
                        ArrayList arrayList = castMoviesActivityLeanBack.f15426m;
                        if (arrayList.size() <= 0) {
                            castMoviesActivityLeanBack.e();
                            break;
                        } else {
                            ArrayList arrayList2 = castMoviesActivityLeanBack.f15425j;
                            arrayList2.clear();
                            arrayList2.addAll(arrayList);
                            castMoviesActivityLeanBack.f15415A.notifyDataSetChanged();
                            castMoviesActivityLeanBack.f15434v.setSelectedPosition(0);
                            break;
                        }
                    case 1:
                        CastMoviesActivityLeanBack castMoviesActivityLeanBack2 = this.f55e;
                        ArrayList arrayList3 = castMoviesActivityLeanBack2.f15424f;
                        if (arrayList3.size() <= 0) {
                            castMoviesActivityLeanBack2.e();
                            break;
                        } else {
                            ArrayList arrayList4 = castMoviesActivityLeanBack2.f15425j;
                            arrayList4.clear();
                            arrayList4.addAll(arrayList3);
                            castMoviesActivityLeanBack2.f15415A.notifyDataSetChanged();
                            castMoviesActivityLeanBack2.f15434v.setSelectedPosition(0);
                            break;
                        }
                    default:
                        CastMoviesActivityLeanBack castMoviesActivityLeanBack3 = this.f55e;
                        boolean z6 = castMoviesActivityLeanBack3.f15417C;
                        ArrayList arrayList5 = castMoviesActivityLeanBack3.f15425j;
                        if (!z6) {
                            Collections.sort(arrayList5);
                            castMoviesActivityLeanBack3.f15417C = true;
                            AbstractC0995i.makeToast(castMoviesActivityLeanBack3.getBaseContext(), "Sorted by Year: DESC", true);
                        }
                        Collections.reverse(arrayList5);
                        castMoviesActivityLeanBack3.f15415A.notifyDataSetChanged();
                        castMoviesActivityLeanBack3.f15434v.setSelectedPosition(0);
                        break;
                }
            }
        });
        final int i7 = 1;
        this.f15435w.setOnClickListener(new View.OnClickListener(this) { // from class: A4.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ CastMoviesActivityLeanBack f55e;

            {
                this.f55e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i7) {
                    case 0:
                        CastMoviesActivityLeanBack castMoviesActivityLeanBack = this.f55e;
                        ArrayList arrayList = castMoviesActivityLeanBack.f15426m;
                        if (arrayList.size() <= 0) {
                            castMoviesActivityLeanBack.e();
                            break;
                        } else {
                            ArrayList arrayList2 = castMoviesActivityLeanBack.f15425j;
                            arrayList2.clear();
                            arrayList2.addAll(arrayList);
                            castMoviesActivityLeanBack.f15415A.notifyDataSetChanged();
                            castMoviesActivityLeanBack.f15434v.setSelectedPosition(0);
                            break;
                        }
                    case 1:
                        CastMoviesActivityLeanBack castMoviesActivityLeanBack2 = this.f55e;
                        ArrayList arrayList3 = castMoviesActivityLeanBack2.f15424f;
                        if (arrayList3.size() <= 0) {
                            castMoviesActivityLeanBack2.e();
                            break;
                        } else {
                            ArrayList arrayList4 = castMoviesActivityLeanBack2.f15425j;
                            arrayList4.clear();
                            arrayList4.addAll(arrayList3);
                            castMoviesActivityLeanBack2.f15415A.notifyDataSetChanged();
                            castMoviesActivityLeanBack2.f15434v.setSelectedPosition(0);
                            break;
                        }
                    default:
                        CastMoviesActivityLeanBack castMoviesActivityLeanBack3 = this.f55e;
                        boolean z6 = castMoviesActivityLeanBack3.f15417C;
                        ArrayList arrayList5 = castMoviesActivityLeanBack3.f15425j;
                        if (!z6) {
                            Collections.sort(arrayList5);
                            castMoviesActivityLeanBack3.f15417C = true;
                            AbstractC0995i.makeToast(castMoviesActivityLeanBack3.getBaseContext(), "Sorted by Year: DESC", true);
                        }
                        Collections.reverse(arrayList5);
                        castMoviesActivityLeanBack3.f15415A.notifyDataSetChanged();
                        castMoviesActivityLeanBack3.f15434v.setSelectedPosition(0);
                        break;
                }
            }
        });
        float f3 = b.c.d(getWindowManager().getDefaultDisplay()).widthPixels / getResources().getDisplayMetrics().density;
        int round = Math.round(f3 / (App.f14424I ? 140 : 120));
        if (App.getInstance().f14440s.getBoolean("prefs_show_big_cobers", false)) {
            round = Math.round(f3 / 180.0f);
        }
        this.f15434v = (VerticalGridView) findViewById(R.id.recyclerview_cast);
        this.f15437y = (RelativeLayout) findViewById(R.id.sort_button);
        int i8 = App.f14424I ? 12 : 8;
        this.f15434v.setNumColumns(round);
        this.f15434v.addItemDecoration(new k(i8));
        P p6 = new P(getBaseContext(), this.f15425j, this, 0, this, null);
        this.f15415A = p6;
        this.f15434v.setAdapter(p6);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        this.f15432t = toolbar;
        setSupportActionBar(toolbar);
        if (this.f15427n != null) {
            getSupportActionBar().setTitle("WITH " + this.f15427n.toUpperCase());
            TextView textView = this.f15418D;
            if (textView != null) {
                textView.setText(this.f15427n);
            }
        }
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        final int i9 = 2;
        this.f15437y.setOnClickListener(new View.OnClickListener(this) { // from class: A4.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ CastMoviesActivityLeanBack f55e;

            {
                this.f55e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i9) {
                    case 0:
                        CastMoviesActivityLeanBack castMoviesActivityLeanBack = this.f55e;
                        ArrayList arrayList = castMoviesActivityLeanBack.f15426m;
                        if (arrayList.size() <= 0) {
                            castMoviesActivityLeanBack.e();
                            break;
                        } else {
                            ArrayList arrayList2 = castMoviesActivityLeanBack.f15425j;
                            arrayList2.clear();
                            arrayList2.addAll(arrayList);
                            castMoviesActivityLeanBack.f15415A.notifyDataSetChanged();
                            castMoviesActivityLeanBack.f15434v.setSelectedPosition(0);
                            break;
                        }
                    case 1:
                        CastMoviesActivityLeanBack castMoviesActivityLeanBack2 = this.f55e;
                        ArrayList arrayList3 = castMoviesActivityLeanBack2.f15424f;
                        if (arrayList3.size() <= 0) {
                            castMoviesActivityLeanBack2.e();
                            break;
                        } else {
                            ArrayList arrayList4 = castMoviesActivityLeanBack2.f15425j;
                            arrayList4.clear();
                            arrayList4.addAll(arrayList3);
                            castMoviesActivityLeanBack2.f15415A.notifyDataSetChanged();
                            castMoviesActivityLeanBack2.f15434v.setSelectedPosition(0);
                            break;
                        }
                    default:
                        CastMoviesActivityLeanBack castMoviesActivityLeanBack3 = this.f55e;
                        boolean z6 = castMoviesActivityLeanBack3.f15417C;
                        ArrayList arrayList5 = castMoviesActivityLeanBack3.f15425j;
                        if (!z6) {
                            Collections.sort(arrayList5);
                            castMoviesActivityLeanBack3.f15417C = true;
                            AbstractC0995i.makeToast(castMoviesActivityLeanBack3.getBaseContext(), "Sorted by Year: DESC", true);
                        }
                        Collections.reverse(arrayList5);
                        castMoviesActivityLeanBack3.f15415A.notifyDataSetChanged();
                        castMoviesActivityLeanBack3.f15434v.setSelectedPosition(0);
                        break;
                }
            }
        });
        this.f15422b.applyFontToToolbar(this.f15432t, this.f15423e);
        this.f15435w.requestFocus();
        setBackgroundColor();
        e();
        try {
            if (this.f15416B != null) {
                D.get().load(this.f15416B).fit().centerCrop().into(this.f15431s);
                this.f15431s.setBorderColor(getResources().getColor(R.color.white));
            } else {
                D.get().load(this.f15419E == 0 ? R.drawable.cast_ : R.drawable.cast_2).fit().centerCrop().into(this.f15431s);
                this.f15431s.setBorderColor(getResources().getColor(R.color.white));
            }
        } catch (Exception unused) {
        }
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
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        finish();
        return true;
    }

    public void setBackgroundColor() {
        this.f15421G = 2505092;
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.f15421G), 0);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 1));
        ofObject.start();
        this.f15421G = 0;
    }
}
