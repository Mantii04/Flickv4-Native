package flix.com.vision.activities;

import A.i;
import A4.g;
import C4.D;
import C4.ViewOnFocusChangeListenerC0089m;
import I3.w;
import T4.k;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Intent;
import android.content.SharedPreferences;
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
import flix.com.vision.activities.DramaDetailActivity;
import flix.com.vision.models.Drama;
import flix.com.vision.models.Episode;
import flix.com.vision.subtitles.OpenSubtitles;
import flix.com.vision.tv.Constant;
import java.util.ArrayList;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import y4.C1934w;
import y4.RunnableC1932v;

/* loaded from: classes2.dex */
public class DramaDetailActivity extends flix.com.vision.activities.base.a {

    /* renamed from: A, reason: collision with root package name */
    public static final /* synthetic */ int f14551A = 0;

    /* renamed from: b, reason: collision with root package name */
    public ImageView f14552b;

    /* renamed from: e, reason: collision with root package name */
    public TextView f14553e;

    /* renamed from: f, reason: collision with root package name */
    public TextView f14554f;

    /* renamed from: j, reason: collision with root package name */
    public RelativeLayout f14555j;

    /* renamed from: m, reason: collision with root package name */
    public SpinKitView f14556m;

    /* renamed from: n, reason: collision with root package name */
    public RecyclerView f14557n;

    /* renamed from: p, reason: collision with root package name */
    public ImageView f14558p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f14559q;

    /* renamed from: r, reason: collision with root package name */
    public TextView f14560r;

    /* renamed from: s, reason: collision with root package name */
    public D f14561s;

    /* renamed from: t, reason: collision with root package name */
    public Drama f14562t;

    /* renamed from: w, reason: collision with root package name */
    public ImageButton f14565w;

    /* renamed from: x, reason: collision with root package name */
    public RelativeLayout f14566x;

    /* renamed from: z, reason: collision with root package name */
    public Menu f14568z;

    /* renamed from: u, reason: collision with root package name */
    public final ArrayList f14563u = new ArrayList();

    /* renamed from: v, reason: collision with root package name */
    public String f14564v = "https://kissasiantv.to";

    /* renamed from: y, reason: collision with root package name */
    public int f14567y = -1;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class RESULT_EVENT {

        /* renamed from: b, reason: collision with root package name */
        public static final RESULT_EVENT f14569b;

        /* renamed from: e, reason: collision with root package name */
        public static final RESULT_EVENT f14570e;

        /* renamed from: f, reason: collision with root package name */
        public static final /* synthetic */ RESULT_EVENT[] f14571f;

        static {
            RESULT_EVENT result_event = new RESULT_EVENT("SUCCESS", 0);
            f14569b = result_event;
            RESULT_EVENT result_event2 = new RESULT_EVENT("ERROR", 1);
            RESULT_EVENT result_event3 = new RESULT_EVENT("EPISODE_READY", 2);
            RESULT_EVENT result_event4 = new RESULT_EVENT("EPISODE_FAILED", 3);
            f14570e = result_event4;
            f14571f = new RESULT_EVENT[]{result_event, result_event2, result_event3, result_event4, new RESULT_EVENT("LOAD_FOO_LINK", 4)};
        }

        public static RESULT_EVENT valueOf(String str) {
            return (RESULT_EVENT) Enum.valueOf(RESULT_EVENT.class, str);
        }

        public static RESULT_EVENT[] values() {
            return (RESULT_EVENT[]) f14571f.clone();
        }
    }

    public void extractDominantColor() {
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), 0, 2505092);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 11));
        ofObject.addListener(new C1934w());
        ofObject.start();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        final int i2 = 0;
        super.onCreate(bundle);
        try {
            setContentView(R.layout.activity_drama_detail);
        } catch (Exception e3) {
            e3.printStackTrace();
            finish();
        }
        this.f14566x = (RelativeLayout) findViewById(R.id.activity_anime_detail);
        SharedPreferences sharedPreferences = App.getInstance().f14440s;
        String str = Constant.f16184b;
        this.f14564v = sharedPreferences.getString("pref_drama_host", "https://kissasiantv.to");
        this.f14565w = (ImageButton) findViewById(R.id.play_single_media_button);
        this.f14554f = (TextView) findViewById(R.id.anime_year_label);
        this.f14552b = (ImageView) findViewById(R.id.button_favorite_image);
        EventBus.getDefault().register(this);
        if (bundle == null) {
            App.f14416A.clear();
        }
        this.f14556m = (SpinKitView) findViewById(R.id.loader_view);
        this.f14553e = (TextView) findViewById(R.id.last_watched_label);
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(R.id.add_favorites);
        this.f14555j = relativeLayout;
        if (relativeLayout != null) {
            relativeLayout.setOnFocusChangeListener(new g(this, 9));
        }
        this.f14557n = (RecyclerView) findViewById(R.id.listview_);
        this.f14558p = (ImageView) findViewById(R.id.poster);
        this.f14559q = (TextView) findViewById(R.id.plot);
        this.f14560r = (TextView) findViewById(R.id.title);
        Drama drama = (Drama) getIntent().getSerializableExtra("drama");
        this.f14562t = drama;
        this.f14560r.setText(drama.title);
        String string = App.getInstance().f14440s.getString(this.f14562t.url + OpenSubtitles.Params.Key.EPISODE, null);
        if (string != null) {
            this.f14553e.setText("· last episode: E".concat(string));
        } else {
            this.f14553e.setVisibility(8);
        }
        this.f14565w.setOnClickListener(new View.OnClickListener(this) { // from class: y4.u

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ DramaDetailActivity f21292e;

            {
                this.f21292e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DramaDetailActivity dramaDetailActivity = this.f21292e;
                switch (i2) {
                    case 0:
                        int i7 = DramaDetailActivity.f14551A;
                        dramaDetailActivity.openEpisode(0);
                        break;
                    default:
                        int i8 = DramaDetailActivity.f14551A;
                        dramaDetailActivity.getClass();
                        if (!App.getInstance().f14439r.isDramaFavorited(dramaDetailActivity.f14562t)) {
                            App.getInstance().f14439r.addDramaToFavorites(dramaDetailActivity.f14562t);
                            try {
                                N4.a.Success(dramaDetailActivity.getApplicationContext(), "Added to your Drama List", null, 80, 0);
                            } catch (Exception unused) {
                            }
                            dramaDetailActivity.f14552b.setImageResource(R.drawable.ic_delete_bookmark);
                            break;
                        } else {
                            App.getInstance().f14439r.deletDramaFromFavorites(dramaDetailActivity.f14562t);
                            try {
                                N4.a.Success(dramaDetailActivity.getApplicationContext(), "Removed from your list", null, 80, 0);
                            } catch (Exception unused2) {
                            }
                            dramaDetailActivity.f14552b.setImageResource(R.drawable.ic_bookmark);
                            break;
                        }
                }
            }
        });
        this.f14554f.setText(this.f14562t.year);
        this.f14565w.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0089m(5));
        final int i7 = 1;
        this.f14555j.setOnClickListener(new View.OnClickListener(this) { // from class: y4.u

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ DramaDetailActivity f21292e;

            {
                this.f21292e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DramaDetailActivity dramaDetailActivity = this.f21292e;
                switch (i7) {
                    case 0:
                        int i72 = DramaDetailActivity.f14551A;
                        dramaDetailActivity.openEpisode(0);
                        break;
                    default:
                        int i8 = DramaDetailActivity.f14551A;
                        dramaDetailActivity.getClass();
                        if (!App.getInstance().f14439r.isDramaFavorited(dramaDetailActivity.f14562t)) {
                            App.getInstance().f14439r.addDramaToFavorites(dramaDetailActivity.f14562t);
                            try {
                                N4.a.Success(dramaDetailActivity.getApplicationContext(), "Added to your Drama List", null, 80, 0);
                            } catch (Exception unused) {
                            }
                            dramaDetailActivity.f14552b.setImageResource(R.drawable.ic_delete_bookmark);
                            break;
                        } else {
                            App.getInstance().f14439r.deletDramaFromFavorites(dramaDetailActivity.f14562t);
                            try {
                                N4.a.Success(dramaDetailActivity.getApplicationContext(), "Removed from your list", null, 80, 0);
                            } catch (Exception unused2) {
                            }
                            dramaDetailActivity.f14552b.setImageResource(R.drawable.ic_bookmark);
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
            m4.D.get().load(this.f14562t.image_url).fit().placeholder(R.drawable.ic_anime).centerCrop().into(this.f14558p);
        } catch (OutOfMemoryError e8) {
            e8.printStackTrace();
        }
        float f3 = b.c.d(getWindowManager().getDefaultDisplay()).widthPixels / getResources().getDisplayMetrics().density;
        int i8 = App.f14424I ? 12 : 8;
        int round = Math.round(f3 / ModuleDescriptor.MODULE_VERSION);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.listview_);
        this.f14557n = recyclerView;
        recyclerView.setClipToPadding(false);
        this.f14557n.addItemDecoration(new k(i8));
        ArrayList arrayList = this.f14563u;
        D d7 = new D(this, arrayList, string);
        this.f14561s = d7;
        this.f14557n.setAdapter(d7);
        this.f14557n.setLayoutManager(new GridLayoutManager(this, round));
        if (bundle == null) {
            new b(this, this.f14562t.url.replace("www9.gogoanime.io", "gogoanime.pe")).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            arrayList.addAll(bundle.getParcelableArrayList("episodes"));
            this.f14561s.notifyDataSetChanged();
            this.f14556m.setVisibility(8);
            this.f14567y = 0;
            EventBus.getDefault().post(RESULT_EVENT.f14569b);
        }
        new Handler().postDelayed(new RunnableC1932v(this), 500L);
        new Handler().postDelayed(new RunnableC0883a(this, 10), 800L);
        this.f14557n.requestFocus();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.anime_detail_menu_2, menu);
        this.f14568z = menu;
        return true;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(RESULT_EVENT result_event) {
        if (result_event == RESULT_EVENT.f14569b) {
            this.f14561s.notifyDataSetChanged();
            this.f14556m.setVisibility(8);
        } else if (result_event == RESULT_EVENT.f14570e) {
            this.f14556m.setVisibility(8);
            Toast.makeText(getBaseContext(), getString(R.string.failed_to_load), 1);
        }
        this.f14556m.setVisibility(8);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            finish();
            return true;
        }
        if (itemId != R.id.action_fav) {
            return super.onOptionsItemSelected(menuItem);
        }
        if (App.getInstance().f14439r.isMovieFavorited_ANIME(this.f14562t.toMovie())) {
            menuItem.setIcon(R.drawable.love);
            App.getInstance().f14439r.deleteFavoriteMovie_ANIME(this.f14562t.toMovie());
            w.make(findViewById(R.id.main_view), R.string.removed_fav_label, -1).show();
        } else {
            menuItem.setIcon(R.drawable.ic_action_favorite);
            App.getInstance().f14439r.addMovieFavorites_Anime(this.f14562t.toMovie());
            w.make(findViewById(R.id.main_view), R.string.added_fav_label, -1).show();
        }
        return true;
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
        try {
            D d7 = this.f14561s;
            if (d7 != null) {
                d7.notifyDataSetChanged();
            }
        } catch (Exception unused) {
        }
    }

    @Override // androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelableArrayList("episodes", this.f14563u);
    }

    public void openEpisode(int i2) {
        App.getInstance().f14446y.clear();
        ArrayList arrayList = App.getInstance().f14446y;
        ArrayList arrayList2 = this.f14563u;
        arrayList.addAll(arrayList2);
        Intent intent = new Intent(this, (Class<?>) LinksActivity.class);
        intent.putExtra("server_index", this.f14567y);
        intent.putExtra("url", ((Episode) arrayList2.get(i2)).url);
        intent.putExtra("img_url", this.f14562t.image_url);
        intent.putExtra("movie", this.f14562t.toMovie());
        int i7 = i2 + 1;
        intent.putExtra("episode_number", i7);
        intent.putExtra("title_episode", "Episode " + i2 + 1);
        intent.putExtra("title", this.f14562t.title + " - episode " + ((Episode) arrayList2.get(i2)).label);
        intent.putExtra(OpenSubtitles.Params.Key.EPISODE, ((Episode) arrayList2.get(i2)).label);
        intent.putExtra("title_simple", this.f14562t.title);
        startActivity(intent);
        String f3 = i.f(i7, "");
        App.getInstance().f14440s.edit().putString(this.f14562t.url + OpenSubtitles.Params.Key.EPISODE, f3).apply();
        App.getInstance().f14439r.addDramaToContinue(this.f14562t);
    }
}
