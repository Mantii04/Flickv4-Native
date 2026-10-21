package flix.com.vision.activities;

import A.i;
import A3.h;
import A3.k;
import A4.m;
import A4.o;
import A4.p;
import A4.q;
import C4.P;
import C4.S;
import C4.ViewOnClickListenerC0088l;
import C4.o0;
import J3.e;
import Q4.d;
import T4.f;
import U4.j;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.app.FragmentManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.media3.common.C;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.mediarouter.app.MediaRouteButton;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.cast.framework.CastButtonFactory;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.material.tabs.TabLayout;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.sessions.settings.RemoteSettings;
import com.google.gson.JsonElement;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import cz.msebera.android.httpclient.HttpStatus;
import d4.InterfaceC0807a;
import e.DialogInterfaceC0839s;
import e.r;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.adult.AdultPINSetupActivity;
import flix.com.vision.activities.adult.AdultZonePINEntryActivity;
import flix.com.vision.api.alldebrid.AllDebridCommon;
import flix.com.vision.api.premiumize.PremiumizeCommon;
import flix.com.vision.api.realdebrid.RealDebridCommon;
import flix.com.vision.helpers.CenterGridLayoutManager;
import flix.com.vision.helpers.CenterLayoutManager;
import flix.com.vision.helpers.Constants$TRAKT_TV_EVENT;
import flix.com.vision.materialsearchview.MaterialSearchView;
import flix.com.vision.models.HistoryTVLink;
import flix.com.vision.models.Movie;
import flix.com.vision.models.tmdb.Network;
import flix.com.vision.subtitles.OpenSubtitles;
import flix.com.vision.tv.Constant;
import flix.com.vision.tv.MyImportActivity;
import flix.com.vision.tv.TVCategoriesActivity;
import flix.com.vision.utils.JsonUtils;
import h5.AbstractC0995i;
import h5.C0996j;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;
import java.util.UUID;
import org.apache.commons.lang3.StringUtils;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import v1.InterfaceC1755n;
import x4.C1851d;
import y4.C1902f0;
import y4.C1904g0;
import y4.C1906h0;
import y4.C1908i0;
import y4.C1913l;
import y4.RunnableC1890a0;
import y4.ViewOnClickListenerC1896c0;
import y4.ViewOnClickListenerC1898d0;
import y4.X;
import y4.Y;
import y4.Z;

/* loaded from: classes2.dex */
public class MainActivity extends flix.com.vision.activities.base.a implements h, j, InterfaceC1755n, InterfaceC0807a {

    /* renamed from: T, reason: collision with root package name */
    public static final /* synthetic */ int f14747T = 0;

    /* renamed from: A, reason: collision with root package name */
    public ArrayList f14748A;

    /* renamed from: B, reason: collision with root package name */
    public P f14749B;

    /* renamed from: C, reason: collision with root package name */
    public SuperRecyclerView f14750C;

    /* renamed from: E, reason: collision with root package name */
    public DrawerLayout f14752E;

    /* renamed from: F, reason: collision with root package name */
    public C1904g0 f14753F;

    /* renamed from: G, reason: collision with root package name */
    public C0996j f14754G;

    /* renamed from: H, reason: collision with root package name */
    public Typeface f14755H;

    /* renamed from: I, reason: collision with root package name */
    public Typeface f14756I;

    /* renamed from: L, reason: collision with root package name */
    public Menu f14759L;

    /* renamed from: N, reason: collision with root package name */
    public T4.j f14761N;

    /* renamed from: O, reason: collision with root package name */
    public Disposable f14762O;

    /* renamed from: P, reason: collision with root package name */
    public int f14763P;

    /* renamed from: f, reason: collision with root package name */
    public o0 f14769f;

    /* renamed from: j, reason: collision with root package name */
    public S f14770j;

    /* renamed from: m, reason: collision with root package name */
    public RecyclerView f14771m;

    /* renamed from: n, reason: collision with root package name */
    public RecyclerView f14772n;

    /* renamed from: p, reason: collision with root package name */
    public MediaRouteButton f14773p;

    /* renamed from: q, reason: collision with root package name */
    public TabLayout f14774q;

    /* renamed from: r, reason: collision with root package name */
    public Disposable f14775r;

    /* renamed from: t, reason: collision with root package name */
    public RelativeLayout f14777t;

    /* renamed from: v, reason: collision with root package name */
    public MenuItem f14779v;

    /* renamed from: w, reason: collision with root package name */
    public k f14780w;

    /* renamed from: y, reason: collision with root package name */
    public Toolbar f14782y;

    /* renamed from: z, reason: collision with root package name */
    public MaterialSearchView f14783z;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f14767b = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f14768e = new ArrayList();

    /* renamed from: s, reason: collision with root package name */
    public final boolean f14776s = true;

    /* renamed from: u, reason: collision with root package name */
    public boolean f14778u = false;

    /* renamed from: x, reason: collision with root package name */
    public final int f14781x = HttpStatus.SC_OK;

    /* renamed from: D, reason: collision with root package name */
    public int f14751D = 1;

    /* renamed from: J, reason: collision with root package name */
    public String f14757J = "IN THEATER";

    /* renamed from: K, reason: collision with root package name */
    public final int f14758K = 1;

    /* renamed from: M, reason: collision with root package name */
    public boolean f14760M = false;

    /* renamed from: Q, reason: collision with root package name */
    public boolean f14764Q = false;

    /* renamed from: R, reason: collision with root package name */
    public int f14765R = 0;

    /* renamed from: S, reason: collision with root package name */
    public boolean f14766S = false;

    public static void e(MainActivity mainActivity, J3.h hVar) {
        if (mainActivity.f14758K > 1) {
            mainActivity.recreate();
            return;
        }
        App.getInstance().f14440s.edit().putString("genre", "").apply();
        App.getInstance().f14440s.edit().putString("year", "").apply();
        mainActivity.f14748A.clear();
        mainActivity.f14749B.notifyDataSetChanged();
        mainActivity.f14765R = hVar.getPosition();
        mainActivity.f14751D = 1;
        mainActivity.m();
        mainActivity.g(mainActivity.f14751D);
    }

    public static void resetFilter() {
        SharedPreferences.Editor edit = App.getInstance().f14440s.edit();
        edit.remove("year");
        edit.remove("year_index");
        edit.remove("genre_index_genre");
        edit.remove("network_index");
        edit.remove(FirebaseAnalytics.Param.CONTENT_TYPE);
        edit.remove("sort_by_index");
        edit.apply();
    }

    public final void askToUpdateIfAny(boolean z6, Movie movie) {
        int i2 = 0;
        try {
            SharedPreferences sharedPreferences = App.getInstance().f14440s;
            String str = Constant.f16184b;
            if (!sharedPreferences.getBoolean("update_available", false) || App.getInstance().f14440s.getString("update_url", "").length() <= 5) {
                if (z6) {
                    Toast.makeText(getBaseContext(), "You're running the latest version", 1).show();
                    return;
                }
                return;
            }
            d newInstance = d.newInstance(this, false);
            newInstance.setButton1(getString(R.string.later_label).toUpperCase(), new X(this, newInstance, movie, 2));
            newInstance.setButton2(getString(R.string.download_update_label), new X(this, newInstance, movie, i2));
            newInstance.setMessage(getString(R.string.new_update_message) + App.getInstance().f14440s.getString("update_message", "") + getString(R.string.make_sure_you_get_it_mess));
            newInstance.setTitle(getString(R.string.update_available_label) + StringUtils.SPACE + App.getInstance().f14440s.getString("update_version_name", ""));
            newInstance.show(getFragmentManager(), "");
        } catch (Exception unused) {
        }
    }

    public void extractDominantColor(int i2) {
        if (this.f14764Q) {
            return;
        }
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.f14763P), Integer.valueOf(i2));
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 15));
        ofObject.addListener(new C1902f0(this));
        ofObject.start();
        this.f14763P = i2;
        this.f14764Q = true;
    }

    public final void f() {
        if (this.f14752E.isDrawerOpen(8388611)) {
            this.f14752E.closeDrawer(8388611, true);
            return;
        }
        if (this.f14783z.isOpen()) {
            this.f14783z.closeSearch();
            return;
        }
        if (!this.f14760M) {
            if (this.f14748A.size() < 200) {
                this.f14750C.getRecyclerView().smoothScrollToPosition(0);
            } else {
                this.f14750C.getRecyclerView().scrollToPosition(0);
            }
            this.f14760M = true;
            this.f14782y.requestFocus();
            this.f14750C.clearFocus();
            new Handler().postDelayed(new RunnableC1890a0(this, 7), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            return;
        }
        this.f14760M = false;
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, true);
        newInstance.setTitle("Exit");
        newInstance.setMessage("Do you really want to close the App ?");
        newInstance.setButton1("CANCEL", new q(7));
        newInstance.setButton2("YES", new ViewOnClickListenerC1898d0(this, 0));
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // U4.j
    public void favoriteDeleted(int i2) {
        try {
            this.f14748A.remove(i2);
        } catch (Exception unused) {
        }
        if (this.f14748A.isEmpty()) {
            recreate();
        } else {
            this.f14749B.notifyItemRemoved(i2);
        }
    }

    public final void g(int i2) {
        this.f14750C.setupMoreListener(this, 20);
        Disposable disposable = this.f14775r;
        if (disposable != null) {
            disposable.dispose();
        }
        final int i7 = App.getInstance().f14440s.getInt(FirebaseAnalytics.Param.CONTENT_TYPE, 0);
        if ((App.getInstance().f14440s.getInt("year_index", 0) == 0 || !App.getInstance().f14440s.contains("year_index")) && ((App.getInstance().f14440s.getInt("genre_index_genre", 0) == 0 || !App.getInstance().f14440s.contains("genre_index_genre")) && ((App.getInstance().f14440s.getInt("network_index", 0) == 0 || !App.getInstance().f14440s.contains("network_index")) && ((App.getInstance().f14440s.getInt(FirebaseAnalytics.Param.CONTENT_TYPE, 0) == 0 || !App.getInstance().f14440s.contains(FirebaseAnalytics.Param.CONTENT_TYPE)) && (App.getInstance().f14440s.getInt("sort_by_index", 0) == 0 || !App.getInstance().f14440s.contains("sort_by_index")))))) {
            final int i8 = 0;
            this.f14775r = D4.a.gettabbedList(this, i2, i7 == 0 ? "movie" : "tv", this.f14765R).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new Consumer(this) { // from class: y4.W

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ MainActivity f21184e;

                {
                    this.f21184e = this;
                }

                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    int i9 = i7;
                    MainActivity mainActivity = this.f21184e;
                    JsonElement jsonElement = (JsonElement) obj;
                    switch (i8) {
                        case 0:
                            int i10 = MainActivity.f14747T;
                            mainActivity.getClass();
                            ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie(jsonElement, i9);
                            mainActivity.f14748A.addAll(App.getInstance().filterList(parseListMovie));
                            mainActivity.f14749B.notifyItemRangeChanged(mainActivity.f14748A.size() - 1, parseListMovie.size());
                            if (parseListMovie.size() > 0 && mainActivity.f14748A.size() == 0) {
                                int i11 = mainActivity.f14751D + 1;
                                mainActivity.f14751D = i11;
                                mainActivity.g(i11);
                                break;
                            }
                            break;
                        default:
                            int i12 = MainActivity.f14747T;
                            mainActivity.getClass();
                            ArrayList<Movie> parseListMovie2 = JsonUtils.parseListMovie(jsonElement, i9);
                            mainActivity.f14748A.addAll(App.getInstance().filterList(parseListMovie2));
                            mainActivity.f14749B.notifyItemRangeChanged(mainActivity.f14748A.size() - 1, parseListMovie2.size());
                            if (parseListMovie2.size() > 0 && mainActivity.f14748A.size() == 0) {
                                int i13 = mainActivity.f14751D + 1;
                                mainActivity.f14751D = i13;
                                mainActivity.g(i13);
                                break;
                            }
                            break;
                    }
                }
            }, new C1851d(9));
            return;
        }
        String string = App.getInstance().f14440s.getString("year", "");
        int i9 = App.getInstance().f14440s.getInt("genre_id", 0);
        final int i10 = 1;
        this.f14775r = D4.a.getItemsByGenres(this, String.valueOf(i9), i2, i7, string, App.getInstance().f14440s.getInt("sort_by_index", 0) != 0 ? "primary_release_date.desc" : "popularity.desc", App.getInstance().f14440s.getInt("pref_network_id", -1), null).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new Consumer(this) { // from class: y4.W

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ MainActivity f21184e;

            {
                this.f21184e = this;
            }

            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                int i92 = i7;
                MainActivity mainActivity = this.f21184e;
                JsonElement jsonElement = (JsonElement) obj;
                switch (i10) {
                    case 0:
                        int i102 = MainActivity.f14747T;
                        mainActivity.getClass();
                        ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie(jsonElement, i92);
                        mainActivity.f14748A.addAll(App.getInstance().filterList(parseListMovie));
                        mainActivity.f14749B.notifyItemRangeChanged(mainActivity.f14748A.size() - 1, parseListMovie.size());
                        if (parseListMovie.size() > 0 && mainActivity.f14748A.size() == 0) {
                            int i11 = mainActivity.f14751D + 1;
                            mainActivity.f14751D = i11;
                            mainActivity.g(i11);
                            break;
                        }
                        break;
                    default:
                        int i12 = MainActivity.f14747T;
                        mainActivity.getClass();
                        ArrayList<Movie> parseListMovie2 = JsonUtils.parseListMovie(jsonElement, i92);
                        mainActivity.f14748A.addAll(App.getInstance().filterList(parseListMovie2));
                        mainActivity.f14749B.notifyItemRangeChanged(mainActivity.f14748A.size() - 1, parseListMovie2.size());
                        if (parseListMovie2.size() > 0 && mainActivity.f14748A.size() == 0) {
                            int i13 = mainActivity.f14751D + 1;
                            mainActivity.f14751D = i13;
                            mainActivity.g(i13);
                            break;
                        }
                        break;
                }
            }
        }, new C1851d(10));
    }

    public final void h(String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            startActivity(intent);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public final void i() {
        if (App.getInstance().f14440s.getBoolean("pref_hide_continue", false)) {
            this.f14771m.setVisibility(8);
            return;
        }
        ArrayList<Movie> watchingMoviesFromDb = App.getInstance().f14439r.getWatchingMoviesFromDb();
        if (watchingMoviesFromDb.size() <= 0) {
            this.f14771m.setVisibility(8);
            return;
        }
        ArrayList arrayList = this.f14767b;
        arrayList.clear();
        arrayList.addAll(watchingMoviesFromDb);
        watchingMoviesFromDb.clear();
        this.f14769f.notifyDataSetChanged();
        this.f14771m.setVisibility(0);
        this.f14771m.scrollToPosition(0);
    }

    public final void j() {
        int i2 = 0;
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, true);
        newInstance.setTitle("Discord");
        newInstance.setMessage("Join the Flix Vision community at https://discord.gg/tKjc4PTvxu");
        newInstance.setButton1("OK", new o(newInstance, 6));
        try {
            getPackageManager().getPackageInfo("com.discord", 0);
            newInstance.setButton2("OPEN APP", new ViewOnClickListenerC1896c0(this, newInstance, i2));
        } catch (PackageManager.NameNotFoundException unused) {
        }
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        SharedPreferences.Editor edit = App.getInstance().f14440s.edit();
        String str = Constant.f16184b;
        edit.putBoolean("discord_check", true).apply();
    }

    public final void k() {
        DialogInterfaceC0839s create = new r(this).create();
        create.setTitle(getString(R.string.out_of_mem));
        create.setIcon(R.drawable.ic_action_live_help);
        create.setMessage(getString(R.string.out_of_memory_mess));
        create.setButton(-1, getString(R.string.got_it), new Z(1));
        create.setButton(-2, getString(R.string.reload_label), new Y(this, 2));
        try {
            create.show();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public final void l() {
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, true);
        newInstance.setTitle("Twitter");
        newInstance.setMessage("Find us on twitter at @FlixVisionApp");
        newInstance.setButton1("OK", new o(newInstance, 9));
        try {
            getPackageManager().getPackageInfo("com.twitter.android", 0);
            newInstance.setButton2("OPEN APP", new ViewOnClickListenerC1896c0(this, newInstance, 2));
        } catch (PackageManager.NameNotFoundException unused) {
        }
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        SharedPreferences.Editor edit = App.getInstance().f14440s.edit();
        String str = Constant.f16184b;
        edit.putBoolean("twitter_check", true).apply();
    }

    public void longClickMovie(int i2) {
        try {
            Movie movie = (Movie) this.f14767b.get(i2);
            FragmentManager fragmentManager = getFragmentManager();
            d newInstance = d.newInstance(this, true);
            newInstance.setTitle(movie.getTitle());
            newInstance.setMessage("What would you like to Do?");
            newInstance.setButton1("MARK AS WATCHED", new ViewOnClickListenerC0088l(this, movie, i2, 3));
            newInstance.setButton2("ADD TO FAVORITES", new m(19, this, movie));
            try {
                newInstance.show(fragmentManager, "");
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        } catch (Exception e7) {
            AbstractC0995i.makeToast(this, "ERROR OCCURRED: " + e7.getMessage(), true);
        }
    }

    public final void m() {
        boolean z6 = false;
        int i2 = App.getInstance().f14440s.getInt(FirebaseAnalytics.Param.CONTENT_TYPE, 0);
        String string = App.getInstance().f14440s.getString("genre", "");
        String string2 = App.getInstance().f14440s.getString("year", "");
        if (string.length() > 0 || (!string.equalsIgnoreCase("all") && !string2.isEmpty())) {
            z6 = true;
        }
        String str = "MOVIES";
        if (i2 == 0) {
            if (z6) {
                String concat = ": ".concat(string);
                if (string2.length() > 0) {
                    concat = i.C(concat, ": ", string2);
                }
                getSupportActionBar().setTitle((getString(R.string.movies_label) + concat).toUpperCase(Locale.ROOT));
                return;
            }
            int i7 = this.f14765R;
            if (i7 == 0) {
                str = getString(R.string.movies_label).toUpperCase() + ": TRENDING";
            } else if (i7 == 1) {
                str = getString(R.string.movies_label).toUpperCase() + ": IN THEATER";
            } else if (i7 == 2) {
                str = getString(R.string.movies_label).toUpperCase() + ": POPULAR";
            }
            getSupportActionBar().setTitle(str.toUpperCase(Locale.ROOT));
            return;
        }
        if (z6) {
            String concat2 = ": ".concat(string);
            if (string2.length() > 0) {
                concat2 = i.C(concat2, ": ", string2);
            }
            getSupportActionBar().setTitle((getString(R.string.tv_series_label) + concat2).toUpperCase(Locale.ROOT));
            return;
        }
        int i8 = this.f14765R;
        if (i8 == 0) {
            str = getString(R.string.tv_series_label).toUpperCase() + ": TRENDING";
        } else if (i8 == 1) {
            str = getString(R.string.tv_series_label).toUpperCase() + ": NOW STREAMING";
        } else if (i8 == 2) {
            str = getString(R.string.tv_series_label).toUpperCase() + ": POPULAR";
        }
        getSupportActionBar().setTitle(str.toUpperCase(Locale.ROOT));
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i7, Intent intent) {
        if (i2 == 42 && i7 == -1) {
            ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
            if (stringArrayListExtra == null || stringArrayListExtra.size() <= 0) {
                Toast.makeText(getBaseContext(), getString(R.string.did_not_catch_any_mic_voice_mess), 0).show();
                return;
            }
            String str = stringArrayListExtra.get(0);
            if (TextUtils.isEmpty(str)) {
                Toast.makeText(getBaseContext(), getString(R.string.did_not_catch_any_mic_voice_mess), 0).show();
                return;
            }
            if (str == null || str.length() < 3) {
                return;
            }
            Intent intent2 = new Intent(this, (Class<?>) SearchResultsActivity.class);
            intent2.putExtra(OpenSubtitles.Params.Key.QUERY, str);
            intent2.putExtra("tv_shows_only", App.getInstance().f14440s.getInt(FirebaseAnalytics.Param.CONTENT_TYPE, 0) == 1);
            startActivity(intent2);
            return;
        }
        if (intent != null && intent.getIntExtra("result", -1) == 8888) {
            recreate();
        } else if (i2 == 1000) {
            recreate();
        } else if (i2 == 10001) {
            App.getInstance().fetch_anime();
        } else if (i2 == 2000) {
            askToUpdateIfAny(false, null);
        } else if (i2 == 12345 && i7 == -1) {
            String stringExtra = intent.getStringExtra("file_extra_data");
            HistoryTVLink historyTVLink = new HistoryTVLink();
            try {
                String[] split = stringExtra.split(RemoteSettings.FORWARD_SLASH_STRING);
                historyTVLink.name = split[split.length - 1];
            } catch (Exception unused) {
                historyTVLink.name = stringExtra;
            }
            historyTVLink.url = stringExtra;
            historyTVLink.type = "3";
            App.getInstance().f14439r.addHistoryIPTV(historyTVLink);
            Intent intent3 = new Intent(this, (Class<?>) TVCategoriesActivity.class);
            intent3.putExtra("is_file", true);
            intent3.putExtra("url", stringExtra);
            startActivity(intent3);
        } else if (i2 == 1100 && App.getInstance().f14440s.getBoolean("clear_history_pending", false)) {
            try {
                MaterialSearchView materialSearchView = this.f14783z;
                if (materialSearchView != null) {
                    materialSearchView.clearHistory();
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            i.x(App.getInstance().f14440s, "clear_history_pending", false);
        }
        super.onActivityResult(i2, i7, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @SuppressLint({"MissingSuperCall"})
    public void onBackPressed() {
        f();
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        int i2 = 12;
        int i7 = 5;
        int i8 = 3;
        int i9 = 4;
        int i10 = 2;
        super.onCreate(bundle);
        final int i11 = 1;
        App.getInstance().f14440s.getBoolean("pref_hide_unreleased", true);
        final int i12 = 0;
        if (bundle == null) {
            App.getInstance().initTech(this);
            this.f14778u = false;
            if (App.getInstance().f14440s.getBoolean("IS_RD_LOGGED_IN", false)) {
                App.getInstance().refreshTokenRD();
                RealDebridCommon.f15828m = true;
            }
            if (App.getInstance().f14440s.getBoolean("PREM_LOGGED_IN", false)) {
                PremiumizeCommon.f15822b = true;
                SharedPreferences sharedPreferences = App.getInstance().f14440s;
                String str = f.f3687a;
                PremiumizeCommon.f15823e = sharedPreferences.getString("prem_apikey", null);
            }
            if (App.getInstance().f14440s.getBoolean("ALL_DEBRID_LOGGED_IN", false)) {
                AllDebridCommon.f15806f = true;
                SharedPreferences sharedPreferences2 = App.getInstance().f14440s;
                String str2 = f.f3687a;
                AllDebridCommon.f15807j = sharedPreferences2.getString("all_debrid_apikey", null);
            }
            if (App.getInstance().f14440s.getBoolean("torbox_logged_in", false)) {
                J4.b.f1541a = true;
                J4.b.f1542b = App.getInstance().f14440s.getString("torbox_apikey", null);
            }
            if (App.getInstance().f14440s.getBoolean("offcloud_logged_in", false)) {
                G4.b.f1174a = true;
                G4.b.f1175b = App.getInstance().f14440s.getString("offcloud_apikey", null);
            }
        }
        try {
            setContentView(R.layout.activity_main);
        } catch (Exception e3) {
            e3.printStackTrace();
            k();
        } catch (OutOfMemoryError unused) {
            k();
            return;
        }
        int round = Math.round((b.c.d(getWindowManager().getDefaultDisplay()).widthPixels / getResources().getDisplayMetrics().density) / 140);
        try {
            EventBus.getDefault().register(this);
        } catch (Exception unused2) {
        }
        this.f14761N = new T4.j();
        this.f14748A = new ArrayList();
        this.f14771m = (RecyclerView) findViewById(R.id.recyclerview_continue);
        this.f14772n = (RecyclerView) findViewById(R.id.recyclerview_network);
        this.f14777t = (RelativeLayout) findViewById(R.id.activity_main);
        this.f14774q = (TabLayout) findViewById(R.id.tabs);
        this.f14782y = (Toolbar) findViewById(R.id.toolbar);
        this.f14752E = (DrawerLayout) findViewById(R.id.drawer_layout);
        this.f14780w = (k) findViewById(R.id.nav_view);
        if (App.getInstance().f14440s.getBoolean("pref_show_adult_zone", true)) {
            this.f14780w.inflateMenu(R.menu.nav_drawer_menu);
        } else {
            this.f14780w.inflateMenu(R.menu.nav_drawer_menu_no_adult);
        }
        new ColorStateList(new int[][]{new int[]{android.R.attr.state_focused}, new int[]{-16842908}, new int[]{-16842913}, new int[]{android.R.attr.state_selected}}, new int[]{-16777216, -1, -1, -16777216});
        this.f14750C = (SuperRecyclerView) findViewById(R.id.recyclerview);
        this.f14783z = (MaterialSearchView) findViewById(R.id.search_view);
        this.f14763P = getResources().getColor(R.color.colorPrimary);
        AssetManager assets = getAssets();
        String str3 = Constant.f16184b;
        this.f14755H = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f14756I = Typeface.createFromAsset(getAssets(), "fonts/product_sans_bold.ttf");
        this.f14754G = new C0996j();
        try {
            EventBus.getDefault().register(this);
        } catch (Exception unused3) {
        }
        this.f14754G.applyFontToNavigationView(this.f14780w, this.f14756I);
        setSupportActionBar(this.f14782y);
        this.f14780w.setNavigationItemSelectedListener(this);
        C1904g0 c1904g0 = new C1904g0(this, this, this.f14752E, this.f14782y, R.string.dr_closed, R.string.dr_opened);
        this.f14753F = c1904g0;
        this.f14752E.setDrawerListener(c1904g0);
        this.f14753F.syncState();
        getSupportActionBar().setHomeButtonEnabled(true);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getSupportActionBar().setHomeAsUpIndicator(R.drawable.ic_baseline_subject_24);
        this.f14749B = new P(getBaseContext(), this.f14748A, this, this.f14781x, this, this);
        this.f14769f = new o0(getBaseContext(), this.f14767b, this, this);
        this.f14771m.setLayoutManager(new CenterLayoutManager(this, 0, false));
        this.f14771m.setAdapter(this.f14769f);
        this.f14771m.addItemDecoration(new T4.k(5));
        Context baseContext = getBaseContext();
        ArrayList arrayList = this.f14768e;
        this.f14770j = new S(baseContext, arrayList, this);
        this.f14772n.setLayoutManager(new CenterLayoutManager(this, 0, false));
        this.f14772n.setAdapter(this.f14770j);
        b.c.s(this.f14772n, 10);
        this.f14750C.setRefreshListener(this);
        this.f14750C.setLayoutManager(new CenterGridLayoutManager(this, round));
        this.f14750C.addItemDecoration(new T4.k(12));
        this.f14750C.setAdapter(this.f14749B);
        this.f14750C.setupMoreListener(this, 20);
        this.f14782y.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: y4.b0

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ MainActivity f21208e;

            {
                this.f21208e = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z6) {
                MainActivity mainActivity = this.f21208e;
                switch (i12) {
                    case 0:
                        int i13 = MainActivity.f14747T;
                        mainActivity.getClass();
                        if (z6) {
                            try {
                                View actionView = mainActivity.f14779v.getActionView();
                                if (actionView != null) {
                                    mainActivity.f14782y.clearFocus();
                                    actionView.requestFocus();
                                    break;
                                }
                            } catch (Exception unused4) {
                                return;
                            }
                        }
                        break;
                    default:
                        if (!z6) {
                            int i14 = MainActivity.f14747T;
                            mainActivity.getClass();
                            break;
                        } else {
                            mainActivity.f14777t.clearFocus();
                            mainActivity.f14750C.requestFocus();
                            break;
                        }
                }
            }
        });
        this.f14783z.setHint("Movies, TV Shows, People...");
        this.f14783z.adjustTintAlpha(0.0f);
        this.f14783z.setCloseOnTintClick(true);
        this.f14783z.setOnQueryTextListener(new C1906h0(this));
        this.f14783z.setOnItemClickListener(new C1913l(this, i10));
        RelativeLayout relativeLayout = this.f14777t;
        if (relativeLayout != null) {
            relativeLayout.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: y4.b0

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ MainActivity f21208e;

                {
                    this.f21208e = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z6) {
                    MainActivity mainActivity = this.f21208e;
                    switch (i11) {
                        case 0:
                            int i13 = MainActivity.f14747T;
                            mainActivity.getClass();
                            if (z6) {
                                try {
                                    View actionView = mainActivity.f14779v.getActionView();
                                    if (actionView != null) {
                                        mainActivity.f14782y.clearFocus();
                                        actionView.requestFocus();
                                        break;
                                    }
                                } catch (Exception unused4) {
                                    return;
                                }
                            }
                            break;
                        default:
                            if (!z6) {
                                int i14 = MainActivity.f14747T;
                                mainActivity.getClass();
                                break;
                            } else {
                                mainActivity.f14777t.clearFocus();
                                mainActivity.f14750C.requestFocus();
                                break;
                            }
                    }
                }
            });
        }
        this.f14774q.setOnTabSelectedListener((e) new C1908i0(this));
        if (bundle == null) {
            try {
                new Handler().postDelayed(new RunnableC1890a0(this, i8), 5000L);
            } catch (Exception unused4) {
            }
        }
        if (App.getInstance().f14440s.getString("guid", "null").equals("null")) {
            App.getInstance().f14440s.edit().putString("guid", UUID.randomUUID().toString()).apply();
        }
        m();
        new Handler().postDelayed(new RunnableC1890a0(this, i9), 1000L);
        new Handler().postDelayed(new RunnableC1890a0(this, i7), 1000L);
        new Handler().postDelayed(new RunnableC1890a0(this, 6), 500L);
        this.f14754G.applyFontToToolbar(this.f14782y, this.f14756I);
        g(this.f14751D);
        if (App.getInstance().f14440s.getInt(FirebaseAnalytics.Param.CONTENT_TYPE, 0) == 0) {
            this.f14757J = "IN THEATER";
        } else {
            this.f14757J = "NOW STREAMING";
        }
        try {
            this.f14774q.getTabAt(1).setText(this.f14757J);
        } catch (Exception unused5) {
        }
        new Handler().postDelayed(new RunnableC1890a0(this, i10), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        new Handler().postDelayed(new RunnableC1890a0(this, i2), C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        App.getInstance().loadRemoteConfig();
        try {
            File externalFilesDir = getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
            if (externalFilesDir != null) {
                File file = new File(externalFilesDir.getAbsolutePath() + "/FlixVision.Update" + "".replace(StringUtils.SPACE, "").replace(".", "") + ".apk");
                if (file.exists()) {
                    file.delete();
                }
            }
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        if (!App.f14424I) {
            try {
                this.f14773p = (MediaRouteButton) findViewById(R.id.media_route_button);
                CastButtonFactory.setUpMediaRouteButton(getApplicationContext(), this.f14773p);
                CastContext.getSharedInstance(this);
            } catch (Exception unused6) {
            }
        }
        ArrayList<Network> networks = f.getNetworks();
        if (networks.size() > 0) {
            arrayList.clear();
            arrayList.addAll(networks);
            networks.clear();
            this.f14770j.notifyDataSetChanged();
            this.f14772n.setVisibility(0);
        } else {
            this.f14772n.setVisibility(8);
        }
        i();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        if (App.f14424I) {
            getMenuInflater().inflate(R.menu.main_menu, menu);
        } else {
            getMenuInflater().inflate(R.menu.main_menu_smartphones, menu);
            CastButtonFactory.setUpMediaRouteButton(getApplicationContext(), menu, R.id.media_route_menu_item);
        }
        this.f14759L = menu;
        this.f14779v = menu.findItem(R.id.action_filter);
        this.f14754G.applyFontToMenu(this.f14759L, this.f14755H);
        if (App.getInstance().f14440s.getInt(FirebaseAnalytics.Param.CONTENT_TYPE, 0) == 0) {
            App.getInstance().f14440s.edit().putInt("actual_menu_index", 0).apply();
        } else {
            App.getInstance().f14440s.edit().putInt("actual_menu_index", 1).apply();
        }
        return true;
    }

    @Override // flix.com.vision.activities.base.a, e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // e.AbstractActivityC0842v, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        int directionPressed = this.f14761N.getDirectionPressed(keyEvent);
        if (directionPressed != 0 && directionPressed != 1 && directionPressed != 2 && directionPressed != 3 && directionPressed != 4) {
            switch (directionPressed) {
                case 10:
                    f();
                    break;
                case 11:
                    if (this.f14752E.isDrawerOpen(8388611)) {
                        this.f14752E.closeDrawer(8388611);
                    } else {
                        this.f14752E.openDrawer(8388611);
                    }
                    return true;
                case 12:
                    this.f14783z.openSearch();
                    return true;
                default:
                    return super.onKeyDown(i2, keyEvent);
            }
        }
        return false;
    }

    @Override // U4.j
    public void onMediaSelected(Movie movie) {
        SharedPreferences sharedPreferences = App.getInstance().f14440s;
        String str = Constant.f16184b;
        if (!sharedPreferences.getBoolean("update_available", false)) {
            openMovieintent(movie);
        } else if (App.getInstance().f14440s.getBoolean("mandatory_update", false)) {
            askToUpdateIfAny(true, null);
        } else {
            askToUpdateIfAny(true, movie);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(Constants$TRAKT_TV_EVENT constants$TRAKT_TV_EVENT) {
        if (constants$TRAKT_TV_EVENT != Constants$TRAKT_TV_EVENT.f16001b || this.f14766S) {
            return;
        }
        this.f14766S = true;
        DialogInterfaceC0839s create = new r(this).create();
        create.setTitle("Trakt TV");
        create.setIcon(R.drawable.trakt_logo_3);
        create.setMessage("Hello " + App.getInstance().f14440s.getString("trakt_user_name", "") + getString(R.string.trakt_welcome_mess));
        create.setButton(-1, getString(R.string.yes_sync_now), new Y(this, 0));
        create.setButton(-2, getString(R.string.no_thanks_label), new Z(0));
        create.setButton(-3, getString(R.string.go_to_trk_settings), new Y(this, 1));
        try {
            create.show();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // d4.InterfaceC0807a
    public void onMoreAsked(int i2, int i7, int i8) {
        if (this.f14776s) {
            this.f14751D++;
            new Handler().postDelayed(new RunnableC1890a0(this, 9), 200L);
        }
    }

    @Override // A3.h
    public boolean onNavigationItemSelected(MenuItem menuItem) {
        onNavigationItemSelected1(menuItem.getItemId());
        return false;
    }

    public boolean onNavigationItemSelected1(int i2) {
        this.f14752E.closeDrawer(8388611);
        if (i2 == R.id.setting_follow_discord) {
            j();
        } else if (i2 == R.id.setting_contact) {
            FragmentManager fragmentManager = getFragmentManager();
            d newInstance = d.newInstance(this, true);
            newInstance.setTitle("Get in touch");
            newInstance.setMessage("Report issue and suggestions at info@flixvision.tv");
            newInstance.setButton1("OK", new o(newInstance, 7));
            newInstance.setButton2("OPEN MAIL APP", new p(this, newInstance, fragmentManager, 1));
            try {
                newInstance.show(fragmentManager, "");
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        } else if (i2 == R.id.action_user_torrent) {
            if (AllDebridCommon.f15806f || RealDebridCommon.f15828m || PremiumizeCommon.f15822b || J4.b.f1541a || G4.b.f1174a) {
                startActivity(new Intent(this, (Class<?>) UserTorrentsActivity.class));
            } else {
                Toast.makeText(this, "Please connect a Premium account first to see your Torrents (RealDebrid, Premiumize or AllDebrid", 1).show();
            }
        }
        if (i2 != R.id.action_donation) {
            if (i2 == R.id.action_adult) {
                if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                    startActivity(new Intent(this, (Class<?>) AdultZonePINEntryActivity.class));
                } else {
                    startActivity(new Intent(this, (Class<?>) AdultPINSetupActivity.class));
                }
            } else if (i2 == R.id.setting_follow_twitter) {
                l();
            } else if (i2 == R.id.action_exit) {
                finish();
            } else if (i2 == R.id.action_tvseries) {
                App.getInstance().f14440s.edit().putInt("actual_menu_index", 1).apply();
                App.getInstance().f14440s.edit().putInt(FirebaseAnalytics.Param.CONTENT_TYPE, 1).apply();
                try {
                    new Handler().postDelayed(new RunnableC1890a0(this, 0), 200L);
                } catch (Exception e7) {
                    e7.printStackTrace();
                    recreate();
                }
            } else if (i2 == R.id.action_movies) {
                App.getInstance().f14440s.edit().putInt("actual_menu_index", 0).apply();
                App.getInstance().f14440s.edit().putInt(FirebaseAnalytics.Param.CONTENT_TYPE, 0).apply();
                try {
                    new Handler().postDelayed(new RunnableC1890a0(this, 1), 200L);
                } catch (Exception e8) {
                    e8.printStackTrace();
                    recreate();
                }
            } else if (i2 == R.id.action_settings) {
                startActivityForResult(new Intent(this, (Class<?>) SettingsActivity.class), 1100);
            } else if (i2 == R.id.action_my_tv_imports) {
                startActivity(new Intent(this, (Class<?>) MyImportActivity.class));
            } else {
                int i7 = R.id.action_my_favorites;
                if (i2 == i7) {
                    if (App.getInstance().f14439r.getFavoritesMoviesFromDb().size() > 0) {
                        startActivity(new Intent(this, (Class<?>) FavoritesAcvivity.class));
                    } else {
                        AbstractC0995i.makeToast(this, "No Item in your Favorites", false);
                    }
                } else if (i2 == R.id.action_import_tv) {
                    FragmentManager fragmentManager2 = getFragmentManager();
                    d newInstance2 = d.newInstance(this, true);
                    newInstance2.setTitle("M3U Import");
                    newInstance2.setMessage("How do you want to import your M3U Playlist?");
                    newInstance2.setButton2("From File", new ViewOnClickListenerC1898d0(this, 1));
                    newInstance2.setButton1("From URL", new ViewOnClickListenerC1898d0(this, 2));
                    try {
                        newInstance2.show(fragmentManager2, "");
                    } catch (Exception e9) {
                        e9.printStackTrace();
                    }
                } else if (i2 == R.id.action_live_tv_extra) {
                    startActivity(new Intent(this, (Class<?>) TVCategoriesActivity.class));
                } else if (i2 == R.id.action_trakt) {
                    if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
                        startActivity(new Intent(this, (Class<?>) TraktActivity.class));
                    } else {
                        FragmentManager fragmentManager3 = getFragmentManager();
                        d newInstance3 = d.newInstance(this, false);
                        newInstance3.setTitle(getString(R.string.trakt_tv_label));
                        newInstance3.setCancelable(false);
                        newInstance3.setMessage(getString(R.string.connect_with_trakt_tv_enjoy_benefits_mess));
                        newInstance3.setButton1("CANCEL", new q(7));
                        newInstance3.setButton2(getString(R.string.action_sign_in), new ViewOnClickListenerC1898d0(this, 3));
                        try {
                            newInstance3.show(fragmentManager3, "");
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                } else if (i2 == R.id.action_login) {
                    AbstractC0995i.makeToast(this, "COMING SOON", true);
                } else {
                    int i8 = R.id.action_watched_history;
                    if (i2 == i8) {
                        if (App.getInstance().f14439r.getWatchedMoviesFromDb().size() == 0) {
                            AbstractC0995i.makeToast(this, "No Item Marked As Watched Yet", false);
                        } else {
                            startActivity(new Intent(this, (Class<?>) WatchedAcvivity.class));
                        }
                    } else if (i2 != i8 && i2 != i7) {
                        this.f14759L.findItem(R.id.action_sort_fav).setVisible(false);
                    }
                }
            }
        }
        return false;
    }

    public void onNetworkClicked(Network network) {
        if (network.id == 9991) {
            Intent intent = new Intent(this, (Class<?>) DramaHomeActivity.class);
            intent.setFlags(268435456);
            startActivity(intent);
        } else {
            Intent intent2 = new Intent(this, (Class<?>) FilterActivity.class);
            intent2.putExtra("network", network.id);
            intent2.setFlags(268435456);
            startActivity(intent2);
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.action_filter) {
            startActivity(new Intent(this, (Class<?>) FilterActivity.class));
        } else if (itemId == R.id.action_refresh) {
            try {
                resetFilter();
                finish();
                App.getInstance().restartApp();
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        } else if (itemId == R.id.action_exit_app) {
            try {
                finish();
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        } else if (itemId == R.id.action_sort_fav) {
            if (!this.f14778u) {
                Collections.sort(this.f14748A);
                this.f14778u = true;
            }
            Collections.reverse(this.f14748A);
            this.f14749B.notifyDataSetChanged();
        } else if (itemId == R.id.action_search) {
            if (!App.f14424I) {
                this.f14783z.openSearch();
            } else if (App.getInstance().f14440s.getBoolean("pref_classic_search", false)) {
                this.f14783z.openSearch();
            } else {
                startActivity(new Intent(this, (Class<?>) SearchActivityTV.class));
            }
        } else if (itemId == R.id.action_tvseries) {
            App.getInstance().f14440s.edit().putInt(FirebaseAnalytics.Param.CONTENT_TYPE, 1).apply();
            try {
                new Handler().postDelayed(new RunnableC1890a0(this, 10), 300L);
            } catch (Exception e8) {
                e8.printStackTrace();
                recreate();
            }
        } else if (itemId == R.id.action_movies) {
            App.getInstance().f14440s.edit().putInt(FirebaseAnalytics.Param.CONTENT_TYPE, 0).apply();
            try {
                new Handler().postDelayed(new RunnableC1890a0(this, 11), 300L);
            } catch (Exception e9) {
                e9.printStackTrace();
                recreate();
            }
        } else if (itemId == R.id.action_settings) {
            startActivityForResult(new Intent(this, (Class<?>) SettingsActivity.class), 1100);
        } else if (itemId == R.id.action_check_update) {
            FragmentManager fragmentManager = getFragmentManager();
            d newInstance = d.newInstance(this, false);
            newInstance.setloading();
            try {
                newInstance.show(fragmentManager, "");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            App.getInstance().loadRemoteConfig();
            new Handler().postDelayed(new flix.com.vision.activities.leanback.fragment.a(16, this, newInstance), 5000L);
        } else if (itemId == R.id.action_favorites) {
            if (App.getInstance().f14439r.getFavoritesMoviesFromDb().size() > 0) {
                startActivity(new Intent(this, (Class<?>) FavoritesAcvivity.class));
            } else {
                AbstractC0995i.makeToast(this, "No Item in your Favorites", false);
            }
        } else if (itemId == R.id.action_clear) {
            int i2 = this.f14758K;
            if (i2 == 2) {
                d newInstance2 = d.newInstance(this, true);
                newInstance2.setButton1("YES CLEAR", new ViewOnClickListenerC1896c0(this, newInstance2, 1));
                newInstance2.setButton2(getString(R.string.cancel_label), new o(newInstance2, 8));
                newInstance2.setMessage("This will clear all your Favorites\nDo You really want to clear them?");
                newInstance2.setTitle("Clear Favorites");
                newInstance2.show(getFragmentManager(), "");
            }
            if (i2 == 3) {
                d newInstance3 = d.newInstance(this, true);
                newInstance3.setButton1("YES CLEAR", new ViewOnClickListenerC1896c0(this, newInstance3, 3));
                newInstance3.setButton2(getString(R.string.cancel_label), new o(newInstance3, 10));
                newInstance3.setMessage("This will clear all your Watched Movies and Shows and You will loose their Progress. \nDo You really want to clear your History?");
                newInstance3.setTitle("Clear Watch List");
                newInstance3.show(getFragmentManager(), "");
            }
            if (i2 == 4) {
                AbstractC0995i.makeToast(this, "Cannot clear Watching list", false);
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onPause() {
        try {
            MaterialSearchView materialSearchView = this.f14783z;
            if (materialSearchView != null) {
                materialSearchView.clearSuggestions();
            }
        } catch (IllegalArgumentException e3) {
            Log.e("MainActivity", "Failed to clear search suggestions: " + e3.getMessage());
        }
        super.onPause();
    }

    @Override // v1.InterfaceC1755n
    public void onRefresh() {
        m();
        this.f14751D = 1;
        this.f14748A.clear();
        g(this.f14751D);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
        MaterialSearchView materialSearchView = this.f14783z;
        if (materialSearchView != null) {
            materialSearchView.activityResumed();
            this.f14783z.closeSearch();
        }
        if (App.getInstance().f14432e) {
            i();
            App.getInstance().f14432e = false;
        }
    }

    public void openMovieintent(Movie movie) {
        App.getInstance().f14432e = false;
        Intent intent = App.f14424I ? new Intent(this, (Class<?>) MovieDetailActivityLeanBack.class) : new Intent(this, (Class<?>) MovieDetailActivity.class);
        intent.putExtra("movie", movie);
        intent.setFlags(268435456);
        startActivity(intent);
    }
}
