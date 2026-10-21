package flix.com.vision.activities;

import A4.g;
import C4.C0091o;
import C4.ViewOnFocusChangeListenerC0089m;
import I3.w;
import T4.k;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.github.ybq.android.spinkit.SpinKitView;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import f1.RunnableC0883a;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.AnimeDetailActivity;
import flix.com.vision.activities.LinksActivity;
import flix.com.vision.models.Anime;
import flix.com.vision.models.Episode;
import flix.com.vision.subtitles.OpenSubtitles;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.ArrayList;
import m4.D;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import y4.C1895c;
import y4.RunnableC1892b;

/* loaded from: classes2.dex */
public class AnimeDetailActivity extends flix.com.vision.activities.base.a {

    /* renamed from: D, reason: collision with root package name */
    public static final /* synthetic */ int f14449D = 0;

    /* renamed from: A, reason: collision with root package name */
    public C0996j f14450A;

    /* renamed from: C, reason: collision with root package name */
    public Menu f14452C;

    /* renamed from: b, reason: collision with root package name */
    public ImageView f14453b;

    /* renamed from: e, reason: collision with root package name */
    public TextView f14454e;

    /* renamed from: f, reason: collision with root package name */
    public TextView f14455f;

    /* renamed from: j, reason: collision with root package name */
    public RelativeLayout f14456j;

    /* renamed from: m, reason: collision with root package name */
    public SpinKitView f14457m;

    /* renamed from: n, reason: collision with root package name */
    public RecyclerView f14458n;

    /* renamed from: p, reason: collision with root package name */
    public ImageView f14459p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f14460q;

    /* renamed from: r, reason: collision with root package name */
    public TextView f14461r;

    /* renamed from: s, reason: collision with root package name */
    public C0091o f14462s;

    /* renamed from: t, reason: collision with root package name */
    public Anime f14463t;

    /* renamed from: x, reason: collision with root package name */
    public ImageButton f14467x;

    /* renamed from: y, reason: collision with root package name */
    public Typeface f14468y;

    /* renamed from: z, reason: collision with root package name */
    public RelativeLayout f14469z;

    /* renamed from: u, reason: collision with root package name */
    public final ArrayList f14464u = new ArrayList();

    /* renamed from: v, reason: collision with root package name */
    public String f14465v = "gogoanime.pe";

    /* renamed from: w, reason: collision with root package name */
    public String f14466w = "www.gogoanimes.so/";

    /* renamed from: B, reason: collision with root package name */
    public int f14451B = -1;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class RESULT_EVENT {

        /* renamed from: b, reason: collision with root package name */
        public static final RESULT_EVENT f14470b;

        /* renamed from: e, reason: collision with root package name */
        public static final RESULT_EVENT f14471e;

        /* renamed from: f, reason: collision with root package name */
        public static final /* synthetic */ RESULT_EVENT[] f14472f;

        static {
            RESULT_EVENT result_event = new RESULT_EVENT("SUCCESS", 0);
            f14470b = result_event;
            RESULT_EVENT result_event2 = new RESULT_EVENT("ERROR", 1);
            RESULT_EVENT result_event3 = new RESULT_EVENT("EPISODE_READY", 2);
            RESULT_EVENT result_event4 = new RESULT_EVENT("EPISODE_FAILED", 3);
            f14471e = result_event4;
            f14472f = new RESULT_EVENT[]{result_event, result_event2, result_event3, result_event4, new RESULT_EVENT("LOAD_FOO_LINK", 4)};
        }

        public static RESULT_EVENT valueOf(String str) {
            return (RESULT_EVENT) Enum.valueOf(RESULT_EVENT.class, str);
        }

        public static RESULT_EVENT[] values() {
            return (RESULT_EVENT[]) f14472f.clone();
        }
    }

    public void extractDominantColor() {
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), 0, 2505092);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 7));
        ofObject.addListener(new C1895c());
        ofObject.start();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        final int i2 = 0;
        int i7 = 8;
        super.onCreate(bundle);
        try {
            setContentView(R.layout.activity_anime_detail);
        } catch (Exception e3) {
            e3.printStackTrace();
            finish();
        }
        this.f14469z = (RelativeLayout) findViewById(R.id.activity_anime_detail);
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f14468y = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f14450A = new C0996j();
        this.f14465v = "https://" + App.getInstance().f14440s.getString("anime_domain", this.f14466w);
        this.f14466w = App.getInstance().f14440s.getString("anime_domain", this.f14466w);
        this.f14467x = (ImageButton) findViewById(R.id.play_single_media_button);
        this.f14455f = (TextView) findViewById(R.id.anime_year_label);
        this.f14453b = (ImageView) findViewById(R.id.button_favorite_image);
        EventBus.getDefault().register(this);
        if (bundle == null) {
            App.f14416A.clear();
        }
        this.f14457m = (SpinKitView) findViewById(R.id.loader_view);
        this.f14454e = (TextView) findViewById(R.id.last_watched_label);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.add_favorites);
        this.f14456j = relativeLayout;
        if (relativeLayout != null) {
            relativeLayout.setOnFocusChangeListener(new g(this, i7));
        }
        this.f14458n = (RecyclerView) findViewById(R.id.listview_);
        this.f14459p = (ImageView) findViewById(R.id.poster);
        this.f14460q = (TextView) findViewById(R.id.plot);
        this.f14461r = (TextView) findViewById(R.id.title);
        Anime anime = (Anime) getIntent().getSerializableExtra("anime");
        this.f14463t = anime;
        anime.url = anime.url.replace("gogoanime.pe", "www5.gogoanimes.fi");
        this.f14460q.setText(this.f14463t.plot);
        String str2 = this.f14463t.title;
        if (str2 != null) {
            this.f14461r.setText(str2.toUpperCase());
        }
        String string = App.getInstance().f14440s.getString(this.f14463t.url + OpenSubtitles.Params.Key.EPISODE, null);
        if (string != null) {
            this.f14454e.setText("· last episode: E".concat(string));
        } else {
            this.f14454e.setVisibility(8);
        }
        this.f14467x.setOnClickListener(new View.OnClickListener(this) { // from class: y4.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AnimeDetailActivity f21201e;

            {
                this.f21201e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AnimeDetailActivity animeDetailActivity = this.f21201e;
                switch (i2) {
                    case 0:
                        int i8 = AnimeDetailActivity.f14449D;
                        animeDetailActivity.getClass();
                        try {
                            App.getInstance().f14439r.addMovieHistory_ANIME(animeDetailActivity.f14463t.toMovie());
                        } catch (Exception e7) {
                            e7.printStackTrace();
                        }
                        Intent intent = new Intent(animeDetailActivity, (Class<?>) LinksActivity.class);
                        intent.putExtra("server_index", animeDetailActivity.f14451B);
                        ArrayList arrayList = animeDetailActivity.f14464u;
                        intent.putExtra("url", ((Episode) arrayList.get(0)).url);
                        intent.putExtra("img_url", animeDetailActivity.f14463t.image_url);
                        intent.putExtra("movie", animeDetailActivity.f14463t.toMovie());
                        intent.putExtra("episode_index", 0);
                        intent.putExtra("episode_number", 1);
                        intent.putExtra("title", animeDetailActivity.f14463t.title + " - episode " + ((Episode) arrayList.get(0)).label);
                        intent.putExtra(OpenSubtitles.Params.Key.EPISODE, ((Episode) arrayList.get(0)).label);
                        intent.putExtra("title_simple", animeDetailActivity.f14463t.title);
                        animeDetailActivity.startActivity(intent);
                        String str3 = ((Episode) arrayList.get(0)).label;
                        App.getInstance().f14440s.edit().putString(animeDetailActivity.f14463t.url + OpenSubtitles.Params.Key.EPISODE, str3).apply();
                        break;
                    default:
                        int i9 = AnimeDetailActivity.f14449D;
                        animeDetailActivity.getClass();
                        if (!App.getInstance().f14439r.isMovieFavorited_ANIME(animeDetailActivity.f14463t.toMovie())) {
                            App.getInstance().f14439r.addMovieFavorites_Anime(animeDetailActivity.f14463t.toMovie());
                            try {
                                N4.a.Success(animeDetailActivity, "Added to your Anime List", null, 80, 0);
                            } catch (Exception unused) {
                            }
                            animeDetailActivity.f14453b.setImageResource(R.drawable.ic_delete_bookmark);
                            break;
                        } else {
                            App.getInstance().f14439r.deleteFavoriteMovie_ANIME(animeDetailActivity.f14463t.toMovie());
                            try {
                                N4.a.Success(animeDetailActivity, "Removed from your list", null, 80, 0);
                            } catch (Exception unused2) {
                            }
                            animeDetailActivity.f14453b.setImageResource(R.drawable.ic_bookmark);
                            break;
                        }
                }
            }
        });
        this.f14455f.setText(this.f14463t.year);
        this.f14467x.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0089m(4));
        final int i8 = 1;
        this.f14456j.setOnClickListener(new View.OnClickListener(this) { // from class: y4.a

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AnimeDetailActivity f21201e;

            {
                this.f21201e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AnimeDetailActivity animeDetailActivity = this.f21201e;
                switch (i8) {
                    case 0:
                        int i82 = AnimeDetailActivity.f14449D;
                        animeDetailActivity.getClass();
                        try {
                            App.getInstance().f14439r.addMovieHistory_ANIME(animeDetailActivity.f14463t.toMovie());
                        } catch (Exception e7) {
                            e7.printStackTrace();
                        }
                        Intent intent = new Intent(animeDetailActivity, (Class<?>) LinksActivity.class);
                        intent.putExtra("server_index", animeDetailActivity.f14451B);
                        ArrayList arrayList = animeDetailActivity.f14464u;
                        intent.putExtra("url", ((Episode) arrayList.get(0)).url);
                        intent.putExtra("img_url", animeDetailActivity.f14463t.image_url);
                        intent.putExtra("movie", animeDetailActivity.f14463t.toMovie());
                        intent.putExtra("episode_index", 0);
                        intent.putExtra("episode_number", 1);
                        intent.putExtra("title", animeDetailActivity.f14463t.title + " - episode " + ((Episode) arrayList.get(0)).label);
                        intent.putExtra(OpenSubtitles.Params.Key.EPISODE, ((Episode) arrayList.get(0)).label);
                        intent.putExtra("title_simple", animeDetailActivity.f14463t.title);
                        animeDetailActivity.startActivity(intent);
                        String str3 = ((Episode) arrayList.get(0)).label;
                        App.getInstance().f14440s.edit().putString(animeDetailActivity.f14463t.url + OpenSubtitles.Params.Key.EPISODE, str3).apply();
                        break;
                    default:
                        int i9 = AnimeDetailActivity.f14449D;
                        animeDetailActivity.getClass();
                        if (!App.getInstance().f14439r.isMovieFavorited_ANIME(animeDetailActivity.f14463t.toMovie())) {
                            App.getInstance().f14439r.addMovieFavorites_Anime(animeDetailActivity.f14463t.toMovie());
                            try {
                                N4.a.Success(animeDetailActivity, "Added to your Anime List", null, 80, 0);
                            } catch (Exception unused) {
                            }
                            animeDetailActivity.f14453b.setImageResource(R.drawable.ic_delete_bookmark);
                            break;
                        } else {
                            App.getInstance().f14439r.deleteFavoriteMovie_ANIME(animeDetailActivity.f14463t.toMovie());
                            try {
                                N4.a.Success(animeDetailActivity, "Removed from your list", null, 80, 0);
                            } catch (Exception unused2) {
                            }
                            animeDetailActivity.f14453b.setImageResource(R.drawable.ic_bookmark);
                            break;
                        }
                }
            }
        });
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        if (getSupportActionBar() != null) {
            getSupportActionBar().setTitle("");
        }
        if (getResources().getConfiguration().orientation == 2) {
            try {
                getSupportActionBar().hide();
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        try {
            D.get().load(this.f14463t.image_url).fit().placeholder(R.drawable.ic_anime).centerCrop().into(this.f14459p);
        } catch (OutOfMemoryError e8) {
            e8.printStackTrace();
        }
        float f3 = b.c.d(getWindowManager().getDefaultDisplay()).widthPixels / getResources().getDisplayMetrics().density;
        int i9 = App.f14424I ? 12 : 8;
        int round = Math.round(f3 / ModuleDescriptor.MODULE_VERSION);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.listview_);
        this.f14458n = recyclerView;
        recyclerView.setClipToPadding(false);
        this.f14458n.addItemDecoration(new k(i9));
        ArrayList arrayList = this.f14464u;
        C0091o c0091o = new C0091o(this, arrayList, string);
        this.f14462s = c0091o;
        this.f14458n.setAdapter(c0091o);
        this.f14458n.setLayoutManager(new GridLayoutManager(this, round));
        if (bundle == null) {
            String replace = this.f14463t.url.replace("www9.gogoanime.io", "gogoanime.pe");
            SharedPreferences sharedPreferences = App.getInstance().f14440s;
            String str3 = Constant.f16184b;
            new a(this, replace.replace("www9.gogoanime.io", this.f14466w).replace("gogoanime.io", this.f14466w), sharedPreferences.getString("anime_host_ajax_pref", "https://ajax.gogocdn.net")).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            arrayList.addAll(bundle.getParcelableArrayList("episodes"));
            this.f14462s.notifyDataSetChanged();
            this.f14457m.setVisibility(8);
            this.f14451B = 0;
            EventBus.getDefault().post(RESULT_EVENT.f14470b);
        }
        new Handler().postDelayed(new RunnableC1892b(this), 500L);
        this.f14450A.applyFontToView(this.f14460q, this.f14468y);
        this.f14450A.applyFontToView(this.f14454e, this.f14468y);
        new Handler().postDelayed(new RunnableC0883a(this, 9), 800L);
        this.f14458n.requestFocus();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.anime_detail_menu_2, menu);
        this.f14452C = menu;
        return true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(RESULT_EVENT result_event) {
        if (result_event == RESULT_EVENT.f14470b) {
            this.f14462s.notifyDataSetChanged();
            this.f14457m.setVisibility(8);
        } else if (result_event == RESULT_EVENT.f14471e) {
            this.f14457m.setVisibility(8);
            Toast.makeText(getBaseContext(), getString(R.string.failed_to_load), 1);
        }
        this.f14457m.setVisibility(8);
    }

    @Override // android.app.Activity
    @SuppressLint({"NonConstantResourceId"})
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
            return true;
        }
        if (itemId != R.id.action_fav) {
            return super.onOptionsItemSelected(menuItem);
        }
        if (App.getInstance().f14439r.isMovieFavorited_ANIME(this.f14463t.toMovie())) {
            menuItem.setIcon(R.drawable.love);
            App.getInstance().f14439r.deleteFavoriteMovie_ANIME(this.f14463t.toMovie());
            w.make(findViewById(R.id.main_view), R.string.removed_fav_label, -1).show();
        } else {
            menuItem.setIcon(R.drawable.ic_action_favorite);
            App.getInstance().f14439r.addMovieFavorites_Anime(this.f14463t.toMovie());
            w.make(findViewById(R.id.main_view), R.string.added_fav_label, -1).show();
        }
        return true;
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
        try {
            C0091o c0091o = this.f14462s;
            if (c0091o != null) {
                c0091o.notifyDataSetChanged();
            }
        } catch (Exception unused) {
        }
    }

    @Override // androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelableArrayList("episodes", this.f14464u);
    }

    public void openEpisode(int i2) {
        App.getInstance().f14446y.clear();
        ArrayList arrayList = App.getInstance().f14446y;
        ArrayList arrayList2 = this.f14464u;
        arrayList.addAll(arrayList2);
        try {
            App.getInstance().f14439r.addMovieHistory_ANIME(this.f14463t.toMovie());
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        Intent intent = new Intent(this, (Class<?>) LinksActivity.class);
        intent.putExtra("server_index", this.f14451B);
        intent.putExtra("url", ((Episode) arrayList2.get(i2)).url);
        intent.putExtra("img_url", this.f14463t.image_url);
        intent.putExtra("movie", this.f14463t.toMovie());
        intent.putExtra("episode_number", i2 + 1);
        intent.putExtra("title_episode", "Episode " + i2 + 1);
        intent.putExtra("title", this.f14463t.title + " - episode " + ((Episode) arrayList2.get(i2)).label);
        intent.putExtra(OpenSubtitles.Params.Key.EPISODE, ((Episode) arrayList2.get(i2)).label);
        intent.putExtra("title_simple", this.f14463t.title);
        startActivity(intent);
        String str = ((Episode) arrayList2.get(i2)).label;
        App.getInstance().f14440s.edit().putString(this.f14463t.url + OpenSubtitles.Params.Key.EPISODE, str).apply();
    }
}
