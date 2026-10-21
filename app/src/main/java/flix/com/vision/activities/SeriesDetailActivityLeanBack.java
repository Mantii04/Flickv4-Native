package flix.com.vision.activities;

import A.i;
import B4.ViewOnClickListenerC0038a;
import C4.G;
import C4.ViewOnFocusChangeListenerC0089m;
import C4.Z;
import U4.k;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.leanback.widget.VerticalGridView;
import androidx.media3.exoplayer.upstream.CmcdData;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.customviews.CustomImageView;
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
import y4.S0;

/* loaded from: classes2.dex */
public class SeriesDetailActivityLeanBack extends flix.com.vision.activities.base.a implements k {

    /* renamed from: G, reason: collision with root package name */
    public static final /* synthetic */ int f15056G = 0;

    /* renamed from: A, reason: collision with root package name */
    public Typeface f15057A;

    /* renamed from: B, reason: collision with root package name */
    public int f15058B;

    /* renamed from: C, reason: collision with root package name */
    public int f15059C;

    /* renamed from: D, reason: collision with root package name */
    public String f15060D;

    /* renamed from: E, reason: collision with root package name */
    public CustomImageView f15061E;

    /* renamed from: b, reason: collision with root package name */
    public TextView f15063b;

    /* renamed from: e, reason: collision with root package name */
    public TextView f15064e;

    /* renamed from: f, reason: collision with root package name */
    public TextView f15065f;

    /* renamed from: j, reason: collision with root package name */
    public TextView f15066j;

    /* renamed from: m, reason: collision with root package name */
    public TextView f15067m;

    /* renamed from: n, reason: collision with root package name */
    public Z f15068n;

    /* renamed from: p, reason: collision with root package name */
    public G f15069p;

    /* renamed from: r, reason: collision with root package name */
    public VerticalGridView f15071r;

    /* renamed from: s, reason: collision with root package name */
    public VerticalGridView f15072s;

    /* renamed from: t, reason: collision with root package name */
    public ImageView f15073t;

    /* renamed from: v, reason: collision with root package name */
    public Disposable f15075v;

    /* renamed from: w, reason: collision with root package name */
    public Movie f15076w;

    /* renamed from: x, reason: collision with root package name */
    public RelativeLayout f15077x;

    /* renamed from: y, reason: collision with root package name */
    public C0996j f15078y;

    /* renamed from: z, reason: collision with root package name */
    public Typeface f15079z;

    /* renamed from: q, reason: collision with root package name */
    public ArrayList f15070q = new ArrayList();

    /* renamed from: u, reason: collision with root package name */
    public final ArrayList f15074u = new ArrayList();

    /* renamed from: F, reason: collision with root package name */
    public boolean f15062F = true;

    public final void e() {
        boolean z6 = App.getInstance().f14440s.getBoolean("pref_hide_episodes", false);
        Disposable disposable = this.f15075v;
        if (disposable != null) {
            disposable.dispose();
        }
        this.f15075v = D4.a.getListEpisode(getBaseContext(), String.valueOf(this.f15076w.getMovieId()), String.valueOf(this.f15058B)).subscribeOn(Schedulers.newThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Q0(this, z6, 1), new H0(3));
    }

    public void episodeHighlited(int i2) {
        if (i2 >= 0) {
            this.f15074u.size();
        }
    }

    public final void f(String str) {
        try {
            D.get().load(str).fit().centerCrop().into(this.f15073t);
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
        setContentView(R.layout.activity_series_details_leanback);
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f15079z = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f15057A = Typeface.createFromAsset(getAssets(), "fonts/product_sans_bold.ttf");
        this.f15078y = new C0996j();
        this.f15061E = (CustomImageView) findViewById(R.id.title_logo);
        this.f15067m = (TextView) findViewById(R.id.last_episode_text_view);
        this.f15063b = (TextView) findViewById(R.id.movie_title);
        this.f15064e = (TextView) findViewById(R.id.info_text_view);
        this.f15072s = (VerticalGridView) findViewById(R.id.recyclerview_episodes);
        this.f15071r = (VerticalGridView) findViewById(R.id.recyclerview_seasons);
        this.f15066j = (TextView) findViewById(R.id.season_info_text_view);
        this.f15065f = (TextView) findViewById(R.id.season_label_view);
        this.f15077x = (RelativeLayout) findViewById(R.id.season_button);
        this.f15073t = (ImageView) findViewById(R.id.poster);
        RelativeLayout relativeLayout = this.f15077x;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new ViewOnClickListenerC0038a(this, 14));
        }
        this.f15072s.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0089m(7));
        this.f15076w = (Movie) getIntent().getSerializableExtra("movie");
        this.f15070q = getIntent().getParcelableArrayListExtra("seasons");
        getWindowManager().getDefaultDisplay().getMetrics(new DisplayMetrics());
        ArrayList arrayList = App.f14430z;
        float f3 = getResources().getDisplayMetrics().density;
        int i2 = App.getInstance().f14440s.getInt(this.f15076w.getMovieId() + "watched_season_index", 0);
        this.f15058B = i2 + 1;
        try {
            this.f15060D = ((Season) this.f15070q.get(i2)).year;
        } catch (Exception unused) {
        }
        TextView textView = this.f15065f;
        if (textView != null) {
            textView.setText("Season " + this.f15058B);
        }
        try {
            this.f15066j.setText(((Season) this.f15070q.get(this.f15058B - 1)).plot);
            if (((Season) this.f15070q.get(this.f15058B - 1)).poster != null && !((Season) this.f15070q.get(this.f15058B - 1)).poster.isEmpty()) {
                f(((Season) this.f15070q.get(this.f15058B - 1)).poster);
            }
        } catch (Exception e3) {
            try {
                D.get().load(this.f15076w.getCover()).fit().centerCrop().into(this.f15073t);
            } catch (OutOfMemoryError unused2) {
                e3.printStackTrace();
            }
        }
        this.f15059C = App.getInstance().f14440s.getInt(this.f15076w.getMovieId() + OpenSubtitles.Params.Key.SEASON + this.f15058B + OpenSubtitles.Params.Key.EPISODE + this.f15058B, 0) + 1;
        this.f15063b.setText(this.f15076w.getTitle());
        if (bundle == null) {
            e();
        }
        this.f15064e.setText(this.f15076w.getYear() + " · " + this.f15076w.getSeason_count() + " Seasons");
        if (App.getInstance().f14440s.getInt(this.f15076w.getMovieId() + "watched_season_index", -1) >= 0) {
            this.f15067m.setText(" · last episode: S" + this.f15058B + "E" + this.f15059C);
            this.f15067m.setVisibility(0);
        }
        ArrayList arrayList2 = this.f15074u;
        if (bundle != null) {
            try {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList("episodes");
                arrayList2.clear();
                arrayList2.addAll(parcelableArrayList);
            } catch (Exception unused3) {
            }
        }
        Z z6 = new Z(this, this, this.f15070q, this.f15058B);
        this.f15068n = z6;
        VerticalGridView verticalGridView = this.f15071r;
        if (verticalGridView != null) {
            verticalGridView.setAdapter(z6);
            this.f15068n.notifyDataSetChanged();
        }
        G g7 = new G(this, arrayList2, this.f15059C, this.f15058B);
        this.f15069p = g7;
        g7.setSeason(this.f15058B);
        this.f15072s.setAdapter(this.f15069p);
        this.f15072s.setItemSpacing(30);
        this.f15069p.notifyDataSetChanged();
        this.f15078y.applyFontToView(this.f15063b, this.f15057A);
        this.f15078y.applyFontToView(this.f15064e, this.f15079z);
        this.f15078y.applyFontToView(this.f15065f, this.f15079z);
        this.f15078y.applyFontToView(this.f15066j, this.f15079z);
        if (this.f15061E == null || !this.f15076w.is_title_logo_available) {
            return;
        }
        try {
            D.get().load(this.f15076w.logoUrl).into(this.f15061E, new S0(this));
        } catch (Exception e7) {
            e7.printStackTrace();
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
        super.onResume();
    }

    @Override // androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelableArrayList("episodes", this.f15074u);
    }

    public void openEpisode(int i2) {
        App.getInstance().f14446y.clear();
        ArrayList arrayList = App.getInstance().f14446y;
        ArrayList arrayList2 = this.f15074u;
        arrayList.addAll(arrayList2);
        this.f15069p.notifyDataSetChanged();
        if (this.f15058B == 1) {
            App.getInstance().f14440s.edit().putInt(this.f15076w.getMovieId() + "watched_season_index", 0).apply();
        }
        this.f15064e.setText(this.f15076w.getYear() + " · " + this.f15076w.getSeason_count() + " Seasons");
        if (App.getInstance().f14440s.getInt(this.f15076w.getMovieId() + "watched_season_index", -1) >= 0) {
            this.f15067m.setText(" · last episode: S" + this.f15058B + "E" + ((Episode) arrayList2.get(i2)).number);
            this.f15067m.setVisibility(0);
        }
        try {
            App.getInstance().f14440s.edit().putInt(this.f15076w.getMovieId() + "watched_season_episode_count", ((Season) this.f15070q.get(this.f15058B - 1)).episode_count).apply();
        } catch (Exception unused) {
        }
        App.getInstance().getClass();
        int i7 = i2 + 1;
        this.f15059C = i7;
        Intent intent = new Intent(this, (Class<?>) LinksActivity.class);
        intent.putExtra("movie", this.f15076w);
        intent.putExtra("season_year", this.f15060D);
        intent.putExtra("episode_number", i7);
        intent.putExtra(OpenSubtitles.Params.Key.SEASON, this.f15058B);
        intent.putExtra("episode_count", arrayList2.size());
        intent.putExtra("episode_id", ((Episode) arrayList2.get(i2)).number);
        startActivity(intent);
        App.getInstance().f14440s.edit().putInt(this.f15076w.getMovieId() + OpenSubtitles.Params.Key.SEASON + this.f15058B + OpenSubtitles.Params.Key.EPISODE + this.f15058B, i2).apply();
        StringBuilder sb = new StringBuilder();
        sb.append(this.f15076w.getMovieId());
        sb.append(CmcdData.STREAMING_FORMAT_SS);
        sb.append(this.f15058B);
        sb.append("e");
        App.getInstance().f14440s.edit().putString(i.m(sb, this.f15058B, "title"), ((Episode) arrayList2.get(i2)).title).apply();
    }

    @Override // U4.k
    public void openSeason(int i2) {
        this.f15058B = i2 + 1;
        this.f15060D = ((Season) this.f15070q.get(i2)).year;
        e();
        this.f15069p.setSeason(this.f15058B);
        TextView textView = this.f15065f;
        if (textView != null) {
            textView.setText("Season " + this.f15058B);
        }
        if (this.f15066j != null && ((Season) this.f15070q.get(i2)).poster != null && !((Season) this.f15070q.get(i2)).poster.isEmpty()) {
            f(((Season) this.f15070q.get(i2)).poster);
        }
        App.getInstance().f14440s.edit().putInt(this.f15076w.getMovieId() + "watched_season_index", i2).apply();
    }
}
