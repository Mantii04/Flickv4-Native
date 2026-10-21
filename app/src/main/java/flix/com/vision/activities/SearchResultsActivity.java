package flix.com.vision.activities;

import C4.P;
import C4.r;
import T4.k;
import U4.j;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import com.google.gson.JsonElement;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.SearchResultsActivity;
import flix.com.vision.helpers.CenterGridLayoutManager;
import flix.com.vision.models.Cast;
import flix.com.vision.models.Movie;
import flix.com.vision.subtitles.OpenSubtitles;
import flix.com.vision.tv.Constant;
import flix.com.vision.utils.JsonUtils;
import h5.C0996j;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import y4.H0;
import y4.N0;

/* loaded from: classes2.dex */
public class SearchResultsActivity extends flix.com.vision.activities.base.a implements j {

    /* renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ int f15007H = 0;

    /* renamed from: A, reason: collision with root package name */
    public SuperRecyclerView f15008A;

    /* renamed from: B, reason: collision with root package name */
    public RecyclerView f15009B;

    /* renamed from: C, reason: collision with root package name */
    public Toolbar f15010C;

    /* renamed from: D, reason: collision with root package name */
    public String f15011D;

    /* renamed from: E, reason: collision with root package name */
    public LinearLayout f15012E;

    /* renamed from: F, reason: collision with root package name */
    public P f15013F;

    /* renamed from: G, reason: collision with root package name */
    public r f15014G;

    /* renamed from: b, reason: collision with root package name */
    public C0996j f15015b;

    /* renamed from: e, reason: collision with root package name */
    public Typeface f15016e;

    /* renamed from: f, reason: collision with root package name */
    public TextView f15017f;

    /* renamed from: j, reason: collision with root package name */
    public TextView f15018j;

    /* renamed from: m, reason: collision with root package name */
    public TextView f15019m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f15020n;

    /* renamed from: p, reason: collision with root package name */
    public RelativeLayout f15021p;

    /* renamed from: q, reason: collision with root package name */
    public RelativeLayout f15022q;

    /* renamed from: r, reason: collision with root package name */
    public RelativeLayout f15023r;

    /* renamed from: s, reason: collision with root package name */
    public int f15024s = 0;

    /* renamed from: t, reason: collision with root package name */
    public final ArrayList f15025t = new ArrayList();

    /* renamed from: u, reason: collision with root package name */
    public final ArrayList f15026u = new ArrayList();

    /* renamed from: v, reason: collision with root package name */
    public final ArrayList f15027v = new ArrayList();

    /* renamed from: w, reason: collision with root package name */
    public final ArrayList f15028w = new ArrayList();

    /* renamed from: x, reason: collision with root package name */
    public Disposable f15029x;

    /* renamed from: y, reason: collision with root package name */
    public Disposable f15030y;

    /* renamed from: z, reason: collision with root package name */
    public Disposable f15031z;

    public final void e(int i2) {
        if (this.f15011D == null) {
            this.f15011D = "";
        }
        Disposable disposable = this.f15029x;
        if (disposable != null) {
            disposable.dispose();
        }
        App.getInstance().f14440s.getBoolean("parental_control", false);
        this.f15029x = D4.a.searchData(this, this.f15011D, i2, "movie", false).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new N0(this, i2, 0), new H0(1));
    }

    public final void f(int i2) {
        if (this.f15011D == null) {
            this.f15011D = "";
        }
        Disposable disposable = this.f15031z;
        if (disposable != null) {
            disposable.dispose();
        }
        final int i7 = 0;
        final int i8 = 1;
        this.f15031z = D4.a.searchPeople(this, this.f15011D, i2).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer(this) { // from class: y4.O0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SearchResultsActivity f21156e;

            {
                this.f21156e = this;
            }

            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                switch (i7) {
                    case 0:
                        SearchResultsActivity searchResultsActivity = this.f21156e;
                        searchResultsActivity.f15012E.setVisibility(8);
                        ArrayList<Cast> parsePeople = JsonUtils.parsePeople((JsonElement) obj);
                        searchResultsActivity.f15027v.addAll(parsePeople);
                        searchResultsActivity.f15014G.notifyDataSetChanged();
                        searchResultsActivity.f15020n.setText("People · " + parsePeople.size());
                        if (parsePeople.size() > 0) {
                            searchResultsActivity.f15008A.setVisibility(8);
                            searchResultsActivity.f15009B.setVisibility(0);
                            break;
                        }
                        break;
                    default:
                        this.f21156e.f15020n.setText("People · 0");
                        break;
                }
            }
        }, new Consumer(this) { // from class: y4.O0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SearchResultsActivity f21156e;

            {
                this.f21156e = this;
            }

            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                switch (i8) {
                    case 0:
                        SearchResultsActivity searchResultsActivity = this.f21156e;
                        searchResultsActivity.f15012E.setVisibility(8);
                        ArrayList<Cast> parsePeople = JsonUtils.parsePeople((JsonElement) obj);
                        searchResultsActivity.f15027v.addAll(parsePeople);
                        searchResultsActivity.f15014G.notifyDataSetChanged();
                        searchResultsActivity.f15020n.setText("People · " + parsePeople.size());
                        if (parsePeople.size() > 0) {
                            searchResultsActivity.f15008A.setVisibility(8);
                            searchResultsActivity.f15009B.setVisibility(0);
                            break;
                        }
                        break;
                    default:
                        this.f21156e.f15020n.setText("People · 0");
                        break;
                }
            }
        });
    }

    @Override // U4.j
    public void favoriteDeleted(int i2) {
    }

    public final void g(int i2) {
        if (this.f15011D == null) {
            this.f15011D = "";
        }
        Disposable disposable = this.f15030y;
        if (disposable != null) {
            disposable.dispose();
        }
        this.f15030y = D4.a.searchData(this, this.f15011D, i2, "tv", !App.getInstance().f14440s.getBoolean("parental_control", true)).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new N0(this, i2, 1), new H0(1));
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        final int i2 = 1;
        super.onCreate(bundle);
        setContentView(R.layout.activity_search_tabbed);
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f15016e = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f15015b = new C0996j();
        this.f15020n = (TextView) findViewById(R.id.label_people_button);
        this.f15017f = (TextView) findViewById(R.id.label_series_button);
        this.f15018j = (TextView) findViewById(R.id.label_movies_button);
        this.f15019m = (TextView) findViewById(R.id.unreleased_movie_text);
        this.f15012E = (LinearLayout) findViewById(R.id.progress_web);
        this.f15015b.applyFontToView(this.f15017f, this.f15016e);
        this.f15015b.applyFontToView(this.f15018j, this.f15016e);
        this.f15021p = (RelativeLayout) findViewById(R.id.movies_button);
        this.f15022q = (RelativeLayout) findViewById(R.id.series_button);
        this.f15023r = (RelativeLayout) findViewById(R.id.people_button);
        this.f15008A = (SuperRecyclerView) findViewById(R.id.recyclerview);
        this.f15009B = (RecyclerView) findViewById(R.id.recyclerview_cast);
        ((ProgressBar) findViewById(R.id.progress_bar)).setVisibility(8);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        this.f15010C = toolbar;
        this.f15015b.applyFontToToolbar(toolbar, this.f15016e);
        this.f15011D = getIntent().getStringExtra(OpenSubtitles.Params.Key.QUERY);
        final int i7 = 0;
        this.f15024s = getIntent().getIntExtra("type", 0);
        if (this.f15011D == null) {
            this.f15011D = "";
        }
        this.f15024s = getIntent().getBooleanExtra("tv_shows_only", false) ? 1 : 0;
        setSupportActionBar(this.f15010C);
        getSupportActionBar().setTitle(("Results for \"" + this.f15011D + "\"").toUpperCase());
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        this.f15013F = new P(getBaseContext(), this.f15026u, this, 0, this, null);
        this.f15014G = new r(getBaseContext(), this.f15027v, this, 0);
        DisplayMetrics d7 = b.c.d(getWindowManager().getDefaultDisplay());
        float f3 = d7.widthPixels / getResources().getDisplayMetrics().density;
        ArrayList arrayList = App.f14430z;
        int round = Math.round(f3 / 140);
        this.f15008A.setLayoutManager(new CenterGridLayoutManager(this, round));
        this.f15008A.addItemDecoration(new k(12));
        this.f15008A.setAdapter(this.f15013F);
        this.f15008A.invalidate();
        this.f15008A.requestFocus();
        this.f15009B.setLayoutManager(new CenterGridLayoutManager(this, round));
        b.c.s(this.f15009B, 12);
        this.f15009B.setAdapter(this.f15014G);
        this.f15009B.invalidate();
        this.f15021p.setOnClickListener(new View.OnClickListener(this) { // from class: y4.P0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SearchResultsActivity f21160e;

            {
                this.f21160e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i7) {
                    case 0:
                        SearchResultsActivity searchResultsActivity = this.f21160e;
                        searchResultsActivity.f15024s = 0;
                        ArrayList arrayList2 = searchResultsActivity.f15025t;
                        if (arrayList2.size() <= 0) {
                            searchResultsActivity.e(0);
                            break;
                        } else {
                            searchResultsActivity.f15009B.setVisibility(8);
                            searchResultsActivity.f15008A.setVisibility(0);
                            ArrayList arrayList3 = searchResultsActivity.f15026u;
                            arrayList3.clear();
                            arrayList3.addAll(arrayList2);
                            searchResultsActivity.f15013F.notifyDataSetChanged();
                            break;
                        }
                    case 1:
                        SearchResultsActivity searchResultsActivity2 = this.f21160e;
                        searchResultsActivity2.f15024s = 1;
                        ArrayList arrayList4 = searchResultsActivity2.f15028w;
                        if (arrayList4.size() <= 0) {
                            searchResultsActivity2.g(0);
                            break;
                        } else {
                            searchResultsActivity2.f15009B.setVisibility(8);
                            searchResultsActivity2.f15008A.setVisibility(0);
                            ArrayList arrayList5 = searchResultsActivity2.f15026u;
                            arrayList5.clear();
                            arrayList5.addAll(arrayList4);
                            searchResultsActivity2.f15013F.notifyDataSetChanged();
                            break;
                        }
                    default:
                        SearchResultsActivity searchResultsActivity3 = this.f21160e;
                        if (searchResultsActivity3.f15027v.size() <= 0) {
                            searchResultsActivity3.f(0);
                            break;
                        } else {
                            searchResultsActivity3.f15008A.setVisibility(8);
                            searchResultsActivity3.f15009B.setVisibility(0);
                            searchResultsActivity3.f15014G.notifyDataSetChanged();
                            break;
                        }
                }
            }
        });
        this.f15022q.setOnClickListener(new View.OnClickListener(this) { // from class: y4.P0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SearchResultsActivity f21160e;

            {
                this.f21160e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                        SearchResultsActivity searchResultsActivity = this.f21160e;
                        searchResultsActivity.f15024s = 0;
                        ArrayList arrayList2 = searchResultsActivity.f15025t;
                        if (arrayList2.size() <= 0) {
                            searchResultsActivity.e(0);
                            break;
                        } else {
                            searchResultsActivity.f15009B.setVisibility(8);
                            searchResultsActivity.f15008A.setVisibility(0);
                            ArrayList arrayList3 = searchResultsActivity.f15026u;
                            arrayList3.clear();
                            arrayList3.addAll(arrayList2);
                            searchResultsActivity.f15013F.notifyDataSetChanged();
                            break;
                        }
                    case 1:
                        SearchResultsActivity searchResultsActivity2 = this.f21160e;
                        searchResultsActivity2.f15024s = 1;
                        ArrayList arrayList4 = searchResultsActivity2.f15028w;
                        if (arrayList4.size() <= 0) {
                            searchResultsActivity2.g(0);
                            break;
                        } else {
                            searchResultsActivity2.f15009B.setVisibility(8);
                            searchResultsActivity2.f15008A.setVisibility(0);
                            ArrayList arrayList5 = searchResultsActivity2.f15026u;
                            arrayList5.clear();
                            arrayList5.addAll(arrayList4);
                            searchResultsActivity2.f15013F.notifyDataSetChanged();
                            break;
                        }
                    default:
                        SearchResultsActivity searchResultsActivity3 = this.f21160e;
                        if (searchResultsActivity3.f15027v.size() <= 0) {
                            searchResultsActivity3.f(0);
                            break;
                        } else {
                            searchResultsActivity3.f15008A.setVisibility(8);
                            searchResultsActivity3.f15009B.setVisibility(0);
                            searchResultsActivity3.f15014G.notifyDataSetChanged();
                            break;
                        }
                }
            }
        });
        final int i8 = 2;
        this.f15023r.setOnClickListener(new View.OnClickListener(this) { // from class: y4.P0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ SearchResultsActivity f21160e;

            {
                this.f21160e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i8) {
                    case 0:
                        SearchResultsActivity searchResultsActivity = this.f21160e;
                        searchResultsActivity.f15024s = 0;
                        ArrayList arrayList2 = searchResultsActivity.f15025t;
                        if (arrayList2.size() <= 0) {
                            searchResultsActivity.e(0);
                            break;
                        } else {
                            searchResultsActivity.f15009B.setVisibility(8);
                            searchResultsActivity.f15008A.setVisibility(0);
                            ArrayList arrayList3 = searchResultsActivity.f15026u;
                            arrayList3.clear();
                            arrayList3.addAll(arrayList2);
                            searchResultsActivity.f15013F.notifyDataSetChanged();
                            break;
                        }
                    case 1:
                        SearchResultsActivity searchResultsActivity2 = this.f21160e;
                        searchResultsActivity2.f15024s = 1;
                        ArrayList arrayList4 = searchResultsActivity2.f15028w;
                        if (arrayList4.size() <= 0) {
                            searchResultsActivity2.g(0);
                            break;
                        } else {
                            searchResultsActivity2.f15009B.setVisibility(8);
                            searchResultsActivity2.f15008A.setVisibility(0);
                            ArrayList arrayList5 = searchResultsActivity2.f15026u;
                            arrayList5.clear();
                            arrayList5.addAll(arrayList4);
                            searchResultsActivity2.f15013F.notifyDataSetChanged();
                            break;
                        }
                    default:
                        SearchResultsActivity searchResultsActivity3 = this.f21160e;
                        if (searchResultsActivity3.f15027v.size() <= 0) {
                            searchResultsActivity3.f(0);
                            break;
                        } else {
                            searchResultsActivity3.f15008A.setVisibility(8);
                            searchResultsActivity3.f15009B.setVisibility(0);
                            searchResultsActivity3.f15014G.notifyDataSetChanged();
                            break;
                        }
                }
            }
        });
        e(1);
        g(1);
        f(1);
        if (App.getInstance().f14440s.getBoolean("pref_hide_unreleased", true)) {
            this.f15019m.setVisibility(0);
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
        if (menuItem.getItemId() == 16908332) {
            finish();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
