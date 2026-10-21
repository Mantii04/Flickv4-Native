package flix.com.vision.activities;

import A.i;
import B4.ViewOnClickListenerC0038a;
import C4.G;
import C4.ViewOnFocusChangeListenerC0089m;
import C4.Z;
import U4.k;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.customviews.CustomImageView;
import flix.com.vision.helpers.CenterLayoutManager;
import flix.com.vision.models.Episode;
import flix.com.vision.models.Movie;
import flix.com.vision.models.Season;
import flix.com.vision.subtitles.OpenSubtitles;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import m4.D;
import y4.H0;
import y4.Q0;
import y4.R0;

/* loaded from: classes2.dex */
public class SeriesDetailActivity extends flix.com.vision.activities.base.a implements k {

    /* renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ int f15032G = 0;

    /* renamed from: A, reason: collision with root package name */
    public Typeface f15033A;

    /* renamed from: B, reason: collision with root package name */
    public int f15034B;

    /* renamed from: C, reason: collision with root package name */
    public int f15035C;

    /* renamed from: D, reason: collision with root package name */
    public String f15036D;

    /* renamed from: E, reason: collision with root package name */
    public CustomImageView f15037E;

    /* renamed from: b, reason: collision with root package name */
    public TextView f15039b;

    /* renamed from: e, reason: collision with root package name */
    public TextView f15040e;

    /* renamed from: f, reason: collision with root package name */
    public TextView f15041f;

    /* renamed from: j, reason: collision with root package name */
    public TextView f15042j;

    /* renamed from: m, reason: collision with root package name */
    public TextView f15043m;

    /* renamed from: n, reason: collision with root package name */
    public Z f15044n;

    /* renamed from: p, reason: collision with root package name */
    public G f15045p;

    /* renamed from: r, reason: collision with root package name */
    public RecyclerView f15047r;

    /* renamed from: s, reason: collision with root package name */
    public RecyclerView f15048s;

    /* renamed from: t, reason: collision with root package name */
    public ImageView f15049t;

    /* renamed from: v, reason: collision with root package name */
    public Disposable f15051v;

    /* renamed from: w, reason: collision with root package name */
    public Movie f15052w;

    /* renamed from: x, reason: collision with root package name */
    public RelativeLayout f15053x;

    /* renamed from: y, reason: collision with root package name */
    public C0996j f15054y;

    /* renamed from: z, reason: collision with root package name */
    public Typeface f15055z;

    /* renamed from: q, reason: collision with root package name */
    public ArrayList f15046q = new ArrayList();

    /* renamed from: u, reason: collision with root package name */
    public final ArrayList f15050u = new ArrayList();

    /* renamed from: F, reason: collision with root package name */
    public boolean f15038F = true;

    public final void e() {
        boolean z6 = App.getInstance().f14440s.getBoolean("pref_hide_episodes", false);
        Disposable disposable = this.f15051v;
        if (disposable != null) {
            disposable.dispose();
        }
        this.f15051v = D4.a.getListEpisode(getBaseContext(), String.valueOf(this.f15052w.getMovieId()), String.valueOf(this.f15034B)).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Q0(this, z6, 0), new H0(2));
    }

    public void episodeHighlited(int i2) {
        if (i2 >= 0) {
            this.f15050u.size();
        }
    }

    public final void f(String str) {
        try {
            D.get().load(str).fit().centerCrop().into(this.f15049t);
        } catch (OutOfMemoryError e3) {
            e3.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i7, Intent intent) {
        super.onActivityResult(i2, i7, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_series_details);
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f15055z = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f15033A = Typeface.createFromAsset(getAssets(), "fonts/product_sans_bold.ttf");
        this.f15054y = new C0996j();
        this.f15037E = (CustomImageView) findViewById(R.id.title_logo);
        this.f15043m = (TextView) findViewById(R.id.last_episode_text_view);
        this.f15039b = (TextView) findViewById(R.id.movie_title);
        this.f15040e = (TextView) findViewById(R.id.info_text_view);
        this.f15048s = (RecyclerView) findViewById(R.id.recyclerview_episodes);
        this.f15047r = (RecyclerView) findViewById(R.id.recyclerview_seasons);
        this.f15042j = (TextView) findViewById(R.id.season_info_text_view);
        this.f15041f = (TextView) findViewById(R.id.season_label_view);
        this.f15053x = (RelativeLayout) findViewById(R.id.season_button);
        this.f15049t = (ImageView) findViewById(R.id.poster);
        RelativeLayout relativeLayout = this.f15053x;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new ViewOnClickListenerC0038a(this, 13));
        }
        this.f15048s.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0089m(6));
        this.f15052w = (Movie) getIntent().getSerializableExtra("movie");
        this.f15046q = getIntent().getParcelableArrayListExtra("seasons");
        getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        ArrayList arrayList = App.f14430z;
        float f3 = getResources().getDisplayMetrics().density;
        int i2 = App.getInstance().f14440s.getInt(this.f15052w.getMovieId() + "watched_season_index", 0);
        this.f15034B = i2 + 1;
        try {
            this.f15036D = ((Season) this.f15046q.get(i2)).year;
        } catch (Exception unused) {
        }
        TextView textView = this.f15041f;
        if (textView != null) {
            textView.setText("Season " + this.f15034B);
        }
        try {
            this.f15042j.setText(((Season) this.f15046q.get(this.f15034B - 1)).plot);
            if (((Season) this.f15046q.get(this.f15034B - 1)).poster != null && !((Season) this.f15046q.get(this.f15034B - 1)).poster.isEmpty()) {
                f(((Season) this.f15046q.get(this.f15034B - 1)).poster);
            }
        } catch (Exception e3) {
            try {
                D.get().load(this.f15052w.getCover()).fit().centerCrop().into(this.f15049t);
            } catch (OutOfMemoryError unused2) {
                e3.printStackTrace();
            }
        }
        this.f15035C = App.getInstance().f14440s.getInt(this.f15052w.getMovieId() + OpenSubtitles.Params.Key.SEASON + this.f15034B + OpenSubtitles.Params.Key.EPISODE + this.f15034B, 0) + 1;
        this.f15039b.setText(this.f15052w.getTitle());
        if (bundle == null) {
            e();
        }
        this.f15040e.setText(this.f15052w.getYear() + " · " + this.f15052w.getSeason_count() + " Seasons");
        if (App.getInstance().f14440s.getInt(this.f15052w.getMovieId() + "watched_season_index", -1) >= 0) {
            this.f15043m.setText(" · last episode: S" + this.f15034B + "E" + this.f15035C);
            this.f15043m.setVisibility(0);
        }
        ArrayList arrayList2 = this.f15050u;
        if (bundle != null) {
            try {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList("episodes");
                arrayList2.clear();
                arrayList2.addAll(parcelableArrayList);
            } catch (Exception unused3) {
            }
        }
        Z z6 = new Z(this, this, this.f15046q, this.f15034B);
        this.f15044n = z6;
        RecyclerView recyclerView = this.f15047r;
        if (recyclerView != null) {
            recyclerView.setAdapter(z6);
            b.c.s(this.f15047r, 18);
            this.f15047r.setLayoutManager(new LinearLayoutManager(this, 1, false));
            this.f15044n.notifyDataSetChanged();
        }
        G g7 = new G(this, arrayList2, this.f15035C, this.f15034B);
        this.f15045p = g7;
        g7.setSeason(this.f15034B);
        this.f15048s.setAdapter(this.f15045p);
        b.c.s(this.f15048s, 22);
        this.f15048s.setLayoutManager(new CenterLayoutManager(this, 1, false));
        this.f15045p.notifyDataSetChanged();
        this.f15054y.applyFontToView(this.f15039b, this.f15033A);
        this.f15054y.applyFontToView(this.f15040e, this.f15055z);
        this.f15054y.applyFontToView(this.f15041f, this.f15055z);
        this.f15054y.applyFontToView(this.f15042j, this.f15055z);
        if (this.f15037E != null) {
            SharedPreferences sharedPreferences = App.getInstance().f14440s;
            String str2 = Constant.f16184b;
            if (sharedPreferences.getBoolean("pref_load_logos", false)) {
                try {
                    D.get().load(App.getInstance().f14444w + getString(R.string.api_path_tv) + this.f15052w.getMovieId() + ".png").into(this.f15037E, new R0(this));
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_series, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return true;
        }
        finish();
        return true;
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        try {
            if (App.getInstance().f14440s.getInt(this.f15052w.getMovieId() + "watched_season_index", -1) >= 0) {
                int i2 = App.getInstance().f14440s.getInt(this.f15052w.getMovieId() + OpenSubtitles.Params.Key.SEASON + this.f15034B + OpenSubtitles.Params.Key.EPISODE + this.f15034B, this.f15035C - 1);
                StringBuilder sb = new StringBuilder(" · last episode: S");
                sb.append(this.f15034B);
                sb.append("E");
                sb.append(((Episode) this.f15050u.get(i2)).number);
                this.f15043m.setText(sb.toString());
                this.f15043m.setVisibility(0);
            }
        } catch (Exception unused) {
        }
        super.onResume();
    }

    @Override // androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelableArrayList("episodes", this.f15050u);
    }

    public void openEpisode(int i2) {
        if (App.getInstance().f14446y == null) {
            App.getInstance().f14446y = new ArrayList();
        }
        App.getInstance().f14446y.clear();
        ArrayList arrayList = App.getInstance().f14446y;
        ArrayList arrayList2 = this.f15050u;
        arrayList.addAll(arrayList2);
        this.f15045p.notifyDataSetChanged();
        if (this.f15034B == 1) {
            App.getInstance().f14440s.edit().putInt(this.f15052w.getMovieId() + "watched_season_index", 0).apply();
        }
        this.f15040e.setText(this.f15052w.getYear() + " · " + this.f15052w.getSeason_count() + " Seasons");
        if (App.getInstance().f14440s.getInt(this.f15052w.getMovieId() + "watched_season_index", -1) >= 0) {
            this.f15043m.setText(" · last episode: S" + this.f15034B + "E" + ((Episode) arrayList2.get(i2)).number);
            this.f15043m.setVisibility(0);
        }
        try {
            App.getInstance().f14440s.edit().putInt(this.f15052w.getMovieId() + "watched_season_episode_count", ((Season) this.f15046q.get(this.f15034B - 1)).episode_count).apply();
        } catch (Exception unused) {
        }
        int i7 = i2 + 1;
        this.f15035C = i7;
        Intent intent = new Intent(this, (Class<?>) LinksActivity.class);
        intent.putExtra("movie", this.f15052w);
        intent.putExtra("season_year", this.f15036D);
        intent.putExtra("episode_number", i7);
        intent.putExtra(OpenSubtitles.Params.Key.SEASON, this.f15034B);
        intent.putExtra("episode_count", arrayList2.size());
        intent.putExtra("episode_id", ((Episode) arrayList2.get(i2)).number);
        startActivity(intent);
        App.getInstance().f14440s.edit().putInt(this.f15052w.getMovieId() + OpenSubtitles.Params.Key.SEASON + this.f15034B + OpenSubtitles.Params.Key.EPISODE + this.f15034B, i2).apply();
        StringBuilder sb = new StringBuilder();
        sb.append(this.f15052w.getMovieId());
        sb.append(CmcdData.STREAMING_FORMAT_SS);
        sb.append(this.f15034B);
        sb.append("e");
        App.getInstance().f14440s.edit().putString(i.m(sb, this.f15034B, "title"), ((Episode) arrayList2.get(i2)).title).apply();
    }

    @Override // U4.k
    public void openSeason(int i2) {
        this.f15034B = i2 + 1;
        this.f15036D = ((Season) this.f15046q.get(i2)).year;
        e();
        this.f15045p.setSeason(this.f15034B);
        TextView textView = this.f15041f;
        if (textView != null) {
            textView.setText("Season " + this.f15034B);
        }
        if (this.f15042j != null && ((Season) this.f15046q.get(i2)).poster != null && !((Season) this.f15046q.get(i2)).poster.isEmpty()) {
            f(((Season) this.f15046q.get(i2)).poster);
        }
        App.getInstance().f14440s.edit().putInt(this.f15052w.getMovieId() + "watched_season_index", i2).apply();
    }
}
