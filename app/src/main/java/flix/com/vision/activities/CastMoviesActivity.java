package flix.com.vision.activities;

import C4.P;
import T4.k;
import U4.j;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.recyclerview.widget.RecyclerView;
import de.hdodenhof.circleimageview.CircleImageView;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.CastMoviesActivity;
import flix.com.vision.helpers.CenterGridLayoutManager;
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
import x4.C1851d;
import y4.C1928t;

/* loaded from: classes2.dex */
public class CastMoviesActivity extends flix.com.vision.activities.base.a implements j {

    /* renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ int f14526G = 0;

    /* renamed from: A, reason: collision with root package name */
    public P f14527A;

    /* renamed from: C, reason: collision with root package name */
    public boolean f14529C;

    /* renamed from: D, reason: collision with root package name */
    public TextView f14530D;

    /* renamed from: F, reason: collision with root package name */
    public int f14532F;

    /* renamed from: b, reason: collision with root package name */
    public C0996j f14533b;

    /* renamed from: e, reason: collision with root package name */
    public Typeface f14534e;

    /* renamed from: n, reason: collision with root package name */
    public String f14538n;

    /* renamed from: p, reason: collision with root package name */
    public TextView f14539p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f14540q;

    /* renamed from: r, reason: collision with root package name */
    public long f14541r;

    /* renamed from: s, reason: collision with root package name */
    public CircleImageView f14542s;

    /* renamed from: t, reason: collision with root package name */
    public Toolbar f14543t;

    /* renamed from: u, reason: collision with root package name */
    public RecyclerView f14544u;

    /* renamed from: v, reason: collision with root package name */
    public RelativeLayout f14545v;

    /* renamed from: w, reason: collision with root package name */
    public RelativeLayout f14546w;

    /* renamed from: x, reason: collision with root package name */
    public RelativeLayout f14547x;

    /* renamed from: y, reason: collision with root package name */
    public Disposable f14548y;

    /* renamed from: z, reason: collision with root package name */
    public LinearLayout f14549z;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f14535f = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f14536j = new ArrayList();

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f14537m = new ArrayList();

    /* renamed from: B, reason: collision with root package name */
    public String f14528B = null;

    /* renamed from: E, reason: collision with root package name */
    public int f14531E = 0;

    public final void e() {
        Disposable disposable = this.f14548y;
        if (disposable != null) {
            disposable.dispose();
        }
        this.f14548y = D4.a.getDetailCast(this, "movie_credits", this.f14541r, false).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C1928t(this, 0), new C1851d(3));
    }

    @Override // U4.j
    public void favoriteDeleted(int i2) {
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_cast_movies);
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f14534e = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f14533b = new C0996j();
        final int i2 = 0;
        this.f14531E = getIntent().getIntExtra("gender", 0);
        this.f14538n = getIntent().getStringExtra("name");
        this.f14541r = getIntent().getLongExtra("id", 0L);
        getIntent().getIntExtra("type", 0);
        this.f14528B = getIntent().getStringExtra(MimeTypes.BASE_TYPE_IMAGE);
        this.f14530D = (TextView) findViewById(R.id.cast_name_text);
        this.f14549z = (LinearLayout) findViewById(R.id.activity_player);
        this.f14546w = (RelativeLayout) findViewById(R.id.series_button);
        this.f14545v = (RelativeLayout) findViewById(R.id.movies_button);
        this.f14542s = (CircleImageView) findViewById(R.id.image_cast);
        this.f14540q = (TextView) findViewById(R.id.label_series_button);
        this.f14539p = (TextView) findViewById(R.id.label_movies_button);
        this.f14533b.applyFontToView(this.f14540q, this.f14534e);
        this.f14533b.applyFontToView(this.f14539p, this.f14534e);
        this.f14546w.setOnClickListener(new View.OnClickListener(this) { // from class: y4.s

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ CastMoviesActivity f21282e;

            {
                this.f21282e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                        CastMoviesActivity castMoviesActivity = this.f21282e;
                        ArrayList arrayList = castMoviesActivity.f14537m;
                        if (arrayList.size() <= 0) {
                            castMoviesActivity.e();
                            break;
                        } else {
                            ArrayList arrayList2 = castMoviesActivity.f14536j;
                            arrayList2.clear();
                            arrayList2.addAll(arrayList);
                            castMoviesActivity.f14527A.notifyDataSetChanged();
                            castMoviesActivity.f14544u.getLayoutManager().scrollToPosition(0);
                            break;
                        }
                    case 1:
                        CastMoviesActivity castMoviesActivity2 = this.f21282e;
                        ArrayList arrayList3 = castMoviesActivity2.f14535f;
                        if (arrayList3.size() <= 0) {
                            castMoviesActivity2.e();
                            break;
                        } else {
                            ArrayList arrayList4 = castMoviesActivity2.f14536j;
                            arrayList4.clear();
                            arrayList4.addAll(arrayList3);
                            castMoviesActivity2.f14527A.notifyDataSetChanged();
                            castMoviesActivity2.f14544u.getLayoutManager().scrollToPosition(0);
                            break;
                        }
                    default:
                        CastMoviesActivity castMoviesActivity3 = this.f21282e;
                        boolean z6 = castMoviesActivity3.f14529C;
                        ArrayList arrayList5 = castMoviesActivity3.f14536j;
                        if (!z6) {
                            Collections.sort(arrayList5);
                            castMoviesActivity3.f14529C = true;
                            AbstractC0995i.makeToast(castMoviesActivity3.getBaseContext(), "Sorted by Year: DESC", true);
                        }
                        Collections.reverse(arrayList5);
                        castMoviesActivity3.f14527A.notifyDataSetChanged();
                        break;
                }
            }
        });
        final int i7 = 1;
        this.f14545v.setOnClickListener(new View.OnClickListener(this) { // from class: y4.s

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ CastMoviesActivity f21282e;

            {
                this.f21282e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i7) {
                    case 0:
                        CastMoviesActivity castMoviesActivity = this.f21282e;
                        ArrayList arrayList = castMoviesActivity.f14537m;
                        if (arrayList.size() <= 0) {
                            castMoviesActivity.e();
                            break;
                        } else {
                            ArrayList arrayList2 = castMoviesActivity.f14536j;
                            arrayList2.clear();
                            arrayList2.addAll(arrayList);
                            castMoviesActivity.f14527A.notifyDataSetChanged();
                            castMoviesActivity.f14544u.getLayoutManager().scrollToPosition(0);
                            break;
                        }
                    case 1:
                        CastMoviesActivity castMoviesActivity2 = this.f21282e;
                        ArrayList arrayList3 = castMoviesActivity2.f14535f;
                        if (arrayList3.size() <= 0) {
                            castMoviesActivity2.e();
                            break;
                        } else {
                            ArrayList arrayList4 = castMoviesActivity2.f14536j;
                            arrayList4.clear();
                            arrayList4.addAll(arrayList3);
                            castMoviesActivity2.f14527A.notifyDataSetChanged();
                            castMoviesActivity2.f14544u.getLayoutManager().scrollToPosition(0);
                            break;
                        }
                    default:
                        CastMoviesActivity castMoviesActivity3 = this.f21282e;
                        boolean z6 = castMoviesActivity3.f14529C;
                        ArrayList arrayList5 = castMoviesActivity3.f14536j;
                        if (!z6) {
                            Collections.sort(arrayList5);
                            castMoviesActivity3.f14529C = true;
                            AbstractC0995i.makeToast(castMoviesActivity3.getBaseContext(), "Sorted by Year: DESC", true);
                        }
                        Collections.reverse(arrayList5);
                        castMoviesActivity3.f14527A.notifyDataSetChanged();
                        break;
                }
            }
        });
        float f3 = b.c.d(getWindowManager().getDefaultDisplay()).widthPixels / getResources().getDisplayMetrics().density;
        int round = Math.round(f3 / (App.f14424I ? 140 : 120));
        if (App.getInstance().f14440s.getBoolean("prefs_show_big_cobers", false)) {
            round = Math.round(f3 / 180.0f);
        }
        this.f14544u = (RecyclerView) findViewById(R.id.recyclerview_cast);
        this.f14547x = (RelativeLayout) findViewById(R.id.sort_button);
        this.f14544u.addItemDecoration(new k(App.f14424I ? 12 : 8));
        this.f14527A = new P(getBaseContext(), this.f14536j, this, 0, this, null);
        this.f14544u.setLayoutManager(new CenterGridLayoutManager(this, round));
        b.c.s(this.f14544u, 8);
        this.f14544u.setAdapter(this.f14527A);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        this.f14543t = toolbar;
        setSupportActionBar(toolbar);
        if (this.f14538n != null) {
            getSupportActionBar().setTitle("WITH " + this.f14538n.toUpperCase());
            TextView textView = this.f14530D;
            if (textView != null) {
                textView.setText(this.f14538n);
            }
        }
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        final int i8 = 2;
        this.f14547x.setOnClickListener(new View.OnClickListener(this) { // from class: y4.s

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ CastMoviesActivity f21282e;

            {
                this.f21282e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i8) {
                    case 0:
                        CastMoviesActivity castMoviesActivity = this.f21282e;
                        ArrayList arrayList = castMoviesActivity.f14537m;
                        if (arrayList.size() <= 0) {
                            castMoviesActivity.e();
                            break;
                        } else {
                            ArrayList arrayList2 = castMoviesActivity.f14536j;
                            arrayList2.clear();
                            arrayList2.addAll(arrayList);
                            castMoviesActivity.f14527A.notifyDataSetChanged();
                            castMoviesActivity.f14544u.getLayoutManager().scrollToPosition(0);
                            break;
                        }
                    case 1:
                        CastMoviesActivity castMoviesActivity2 = this.f21282e;
                        ArrayList arrayList3 = castMoviesActivity2.f14535f;
                        if (arrayList3.size() <= 0) {
                            castMoviesActivity2.e();
                            break;
                        } else {
                            ArrayList arrayList4 = castMoviesActivity2.f14536j;
                            arrayList4.clear();
                            arrayList4.addAll(arrayList3);
                            castMoviesActivity2.f14527A.notifyDataSetChanged();
                            castMoviesActivity2.f14544u.getLayoutManager().scrollToPosition(0);
                            break;
                        }
                    default:
                        CastMoviesActivity castMoviesActivity3 = this.f21282e;
                        boolean z6 = castMoviesActivity3.f14529C;
                        ArrayList arrayList5 = castMoviesActivity3.f14536j;
                        if (!z6) {
                            Collections.sort(arrayList5);
                            castMoviesActivity3.f14529C = true;
                            AbstractC0995i.makeToast(castMoviesActivity3.getBaseContext(), "Sorted by Year: DESC", true);
                        }
                        Collections.reverse(arrayList5);
                        castMoviesActivity3.f14527A.notifyDataSetChanged();
                        break;
                }
            }
        });
        this.f14533b.applyFontToToolbar(this.f14543t, this.f14534e);
        this.f14545v.requestFocus();
        setBackgroundColor();
        e();
        try {
            if (this.f14528B != null) {
                D.get().load(this.f14528B).fit().centerCrop().into(this.f14542s);
                this.f14542s.setBorderColor(getResources().getColor(R.color.white));
            } else {
                D.get().load(this.f14531E == 0 ? R.drawable.cast_ : R.drawable.cast_2).fit().centerCrop().into(this.f14542s);
                this.f14542s.setBorderColor(getResources().getColor(R.color.white));
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
        this.f14532F = 2505092;
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.f14532F), 0);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 10));
        ofObject.start();
        this.f14532F = 0;
    }
}
