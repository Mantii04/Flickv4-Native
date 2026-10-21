package flix.com.vision.activities.leanback;

import A.h;
import A4.g;
import A4.j;
import A4.k;
import A4.l;
import A4.q;
import J4.b;
import T4.f;
import android.annotation.SuppressLint;
import android.app.FragmentManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.C;
import androidx.fragment.app.H;
import androidx.fragment.app.v0;
import androidx.leanback.widget.BrowseFrameLayout;
import androidx.media3.exoplayer.ExoPlayer;
import com.github.ybq.android.spinkit.SpinKitView;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.sessions.settings.RemoteSettings;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.FavoritesAcvivity;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.activities.MovieDetailActivityLeanBack;
import flix.com.vision.activities.SearchActivityClassic;
import flix.com.vision.activities.SearchActivityTV;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.adult.AdultPINSetupActivity;
import flix.com.vision.activities.adult.AdultZonePINEntryActivity;
import flix.com.vision.activities.leanback.fragment.TVListFragmentMain;
import flix.com.vision.activities.leanback.fragment.d;
import flix.com.vision.api.alldebrid.AllDebridCommon;
import flix.com.vision.api.premiumize.PremiumizeCommon;
import flix.com.vision.models.HistoryTVLink;
import flix.com.vision.models.Movie;
import flix.com.vision.tv.Constant;
import flix.com.vision.tv.TVCategoriesActivity;
import h5.AbstractC0990d;
import h5.AbstractC0995i;
import h5.C0996j;
import java.io.File;
import java.util.Objects;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public class MainActivityLeanback extends H implements View.OnKeyListener, View.OnFocusChangeListener {

    /* renamed from: I, reason: collision with root package name */
    public static final /* synthetic */ int f15476I = 0;

    /* renamed from: A, reason: collision with root package name */
    public TextView f15477A;

    /* renamed from: B, reason: collision with root package name */
    public TextView f15478B;

    /* renamed from: C, reason: collision with root package name */
    public TextView f15479C;

    /* renamed from: D, reason: collision with root package name */
    public TextView f15480D;

    /* renamed from: b, reason: collision with root package name */
    public View f15485b;

    /* renamed from: f, reason: collision with root package name */
    public SpinKitView f15487f;

    /* renamed from: j, reason: collision with root package name */
    public FrameLayout f15488j;

    /* renamed from: m, reason: collision with root package name */
    public C0996j f15489m;

    /* renamed from: n, reason: collision with root package name */
    public Typeface f15490n;

    /* renamed from: q, reason: collision with root package name */
    public View f15492q;

    /* renamed from: r, reason: collision with root package name */
    public BrowseFrameLayout f15493r;

    /* renamed from: s, reason: collision with root package name */
    public d f15494s;

    /* renamed from: t, reason: collision with root package name */
    public TextView f15495t;

    /* renamed from: u, reason: collision with root package name */
    public TextView f15496u;

    /* renamed from: v, reason: collision with root package name */
    public TextView f15497v;

    /* renamed from: w, reason: collision with root package name */
    public TextView f15498w;

    /* renamed from: x, reason: collision with root package name */
    public TextView f15499x;

    /* renamed from: y, reason: collision with root package name */
    public TextView f15500y;

    /* renamed from: z, reason: collision with root package name */
    public TextView f15501z;

    /* renamed from: e, reason: collision with root package name */
    public boolean f15486e = true;

    /* renamed from: p, reason: collision with root package name */
    public String f15491p = "home";

    /* renamed from: E, reason: collision with root package name */
    public final Handler f15481E = new Handler(Looper.getMainLooper());

    /* renamed from: F, reason: collision with root package name */
    public final k f15482F = new k(this, 0);

    /* renamed from: G, reason: collision with root package name */
    public Animation f15483G = null;

    /* renamed from: H, reason: collision with root package name */
    public Animation f15484H = null;

    public static void j(TextView textView, int i2) {
        for (Drawable drawable : textView.getCompoundDrawables()) {
            if (drawable != null) {
                drawable.setColorFilter(new PorterDuffColorFilter(h.getColor(textView.getContext(), i2), PorterDuff.Mode.SRC_IN));
            }
        }
    }

    public void askToUpdateIfAny(boolean z6, Movie movie) {
        int i2 = 1;
        int i7 = 0;
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
            Q4.d newInstance = Q4.d.newInstance(this, false);
            newInstance.setButton1(getString(R.string.later_label).toUpperCase(), new l(this, newInstance, movie, i7));
            newInstance.setButton2(getString(R.string.download_update_label), new l(this, newInstance, movie, i2));
            newInstance.setMessage(getString(R.string.new_update_message) + App.getInstance().f14440s.getString("update_message", "") + getString(R.string.make_sure_you_get_it_mess));
            newInstance.setTitle(getString(R.string.update_available_label) + StringUtils.SPACE + App.getInstance().f14440s.getString("update_version_name", ""));
            newInstance.show(getFragmentManager(), "");
        } catch (Exception unused) {
        }
    }

    public final void d(C c7) {
        this.f15487f.setVisibility(0);
        v0 beginTransaction = getSupportFragmentManager().beginTransaction();
        beginTransaction.replace(R.id.container, c7);
        beginTransaction.commit();
    }

    @Override // z.r, android.app.Activity, android.view.Window.Callback
    @SuppressLint({"RestrictedApi"})
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        resetInactivityTimer();
        d dVar = this.f15494s;
        if (dVar != null && dVar.isAdded() && this.f15494s.dispatchKeyDown(keyEvent.getKeyCode(), keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    public final void e() {
        d dVar = this.f15494s;
        if (dVar != null) {
            dVar.requestFocus1();
        }
        int widthInPercent = AbstractC0990d.getWidthInPercent(this, 6);
        this.f15493r.startAnimation(this.f15484H);
        this.f15488j.animate().translationX(widthInPercent - 95).setDuration(350L).setInterpolator(new AccelerateInterpolator());
        this.f15493r.requestLayout();
        this.f15493r.getLayoutParams().width = widthInPercent;
    }

    public final void f(boolean z6) {
        new Handler().postDelayed(new k(this, 2), z6 ? 10L : 1000L);
    }

    public void finished() {
        SpinKitView spinKitView = this.f15487f;
        if (spinKitView != null) {
            spinKitView.setVisibility(8);
        }
    }

    public final boolean g() {
        return this.f15493r.getLayoutParams().width > 200;
    }

    public final void h() {
        int widthInPercent = AbstractC0990d.getWidthInPercent(this, 18);
        this.f15493r.startAnimation(this.f15483G);
        this.f15488j.animate().translationX(widthInPercent - 50).setDuration(350L).setInterpolator(new DecelerateInterpolator());
        this.f15493r.requestLayout();
        this.f15493r.getLayoutParams().width = widthInPercent;
        k();
        l();
    }

    public final void i(Movie movie) {
        Intent intent = App.f14424I ? new Intent(this, (Class<?>) MovieDetailActivityLeanBack.class) : new Intent(this, (Class<?>) MovieDetailActivity.class);
        intent.putExtra("movie", movie);
        intent.putExtra("logo_url", movie.logoUrl);
        intent.setFlags(268435456);
        startActivity(intent);
    }

    public final void k() {
        String str = this.f15491p;
        str.getClass();
        switch (str) {
            case "favorites":
                this.f15500y.requestFocus();
                break;
            case "genres":
                this.f15479C.requestFocus();
                break;
            case "search":
                this.f15495t.requestFocus();
                break;
            case "tv":
                this.f15498w.requestFocus();
                break;
            case "exit":
                this.f15477A.requestFocus();
                break;
            case "home":
                this.f15496u.requestFocus();
                break;
            case "more":
                this.f15478B.requestFocus();
                break;
            case "movie":
                this.f15497v.requestFocus();
                break;
            case "live_tv":
                this.f15499x.requestFocus();
                break;
            case "settings":
                this.f15501z.requestFocus();
                break;
        }
    }

    public final void l() {
        new Handler().postDelayed(new k(this, 3), 100L);
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i2, int i7, Intent intent) {
        if (i2 == 12345 && i7 == -1) {
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
            Intent intent2 = new Intent(this, (Class<?>) TVCategoriesActivity.class);
            intent2.putExtra("is_file", true);
            intent2.putExtra("url", stringExtra);
            startActivity(intent2);
        }
        super.onActivityResult(i2, i7, intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @SuppressLint({"MissingSuperCall"})
    public void onBackPressed() {
        d dVar = this.f15494s;
        if (dVar != null && dVar.getSelectedPosition() > 0) {
            this.f15494s.setSelectedPosition(0);
        } else if (g()) {
            e();
        } else {
            h();
        }
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        TextView textView;
        super.onCreate(bundle);
        int i2 = 1;
        if (bundle == null) {
            App.getInstance().initTech(this);
            if (App.getInstance().f14440s.getBoolean("IS_RD_LOGGED_IN", false)) {
                App.getInstance().refreshTokenRD();
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
                b.f1541a = true;
                b.f1542b = App.getInstance().f14440s.getString("torbox_apikey", null);
            }
            if (App.getInstance().f14440s.getBoolean("offcloud_logged_in", false)) {
                G4.b.f1174a = true;
                G4.b.f1175b = App.getInstance().f14440s.getString("offcloud_apikey", null);
            }
        }
        setContentView(R.layout.activity_main_leanback);
        new Handler().postDelayed(new k(this, i2), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        App.getInstance().loadRemoteConfig();
        this.f15485b = findViewById(R.id.padding_view);
        this.f15480D = (TextView) findViewById(R.id.button_adult);
        this.f15479C = (TextView) findViewById(R.id.button_genres);
        this.f15478B = (TextView) findViewById(R.id.button_more);
        this.f15487f = (SpinKitView) findViewById(R.id.loader_circle);
        this.f15488j = (FrameLayout) findViewById(R.id.container);
        this.f15493r = (BrowseFrameLayout) findViewById(R.id.navBar);
        this.f15495t = (TextView) findViewById(R.id.button_search);
        this.f15496u = (TextView) findViewById(R.id.button_home);
        this.f15497v = (TextView) findViewById(R.id.button_movies);
        this.f15498w = (TextView) findViewById(R.id.button_tv_series);
        this.f15499x = (TextView) findViewById(R.id.button_live_tv);
        this.f15500y = (TextView) findViewById(R.id.button_favorites);
        this.f15501z = (TextView) findViewById(R.id.button_settings);
        this.f15477A = (TextView) findViewById(R.id.button_exit);
        this.f15489m = new C0996j();
        AssetManager assets = getAssets();
        String str3 = Constant.f16184b;
        this.f15490n = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        Typeface.createFromAsset(getAssets(), "fonts/product_sans_bold.ttf");
        this.f15489m.applyFontToView(this.f15480D, this.f15490n);
        this.f15489m.applyFontToView(this.f15495t, this.f15490n);
        this.f15489m.applyFontToView(this.f15496u, this.f15490n);
        this.f15489m.applyFontToView(this.f15497v, this.f15490n);
        this.f15489m.applyFontToView(this.f15498w, this.f15490n);
        this.f15489m.applyFontToView(this.f15499x, this.f15490n);
        this.f15489m.applyFontToView(this.f15500y, this.f15490n);
        this.f15489m.applyFontToView(this.f15501z, this.f15490n);
        this.f15489m.applyFontToView(this.f15477A, this.f15490n);
        this.f15489m.applyFontToView(this.f15478B, this.f15490n);
        this.f15489m.applyFontToView(this.f15479C, this.f15490n);
        this.f15483G = AnimationUtils.loadAnimation(this, R.anim.slide_in_left);
        this.f15484H = AnimationUtils.loadAnimation(this, R.anim.slide_out_left);
        if (!App.getInstance().f14440s.getBoolean("pref_show_adult_zone", true) && (textView = this.f15480D) != null) {
            textView.setVisibility(8);
            this.f15485b.setVisibility(0);
        }
        this.f15480D.setOnKeyListener(this);
        this.f15479C.setOnKeyListener(this);
        this.f15495t.setOnKeyListener(this);
        this.f15496u.setOnKeyListener(this);
        this.f15497v.setOnKeyListener(this);
        this.f15498w.setOnKeyListener(this);
        this.f15499x.setOnKeyListener(this);
        this.f15500y.setOnKeyListener(this);
        this.f15477A.setOnKeyListener(this);
        this.f15501z.setOnKeyListener(this);
        this.f15478B.setOnKeyListener(this);
        this.f15493r.setOnFocusChangeListener(new g(this, i2));
        this.f15480D.setOnFocusChangeListener(this);
        this.f15479C.setOnFocusChangeListener(this);
        this.f15495t.setOnFocusChangeListener(this);
        this.f15496u.setOnFocusChangeListener(this);
        this.f15497v.setOnFocusChangeListener(this);
        this.f15498w.setOnFocusChangeListener(this);
        this.f15499x.setOnFocusChangeListener(this);
        this.f15500y.setOnFocusChangeListener(this);
        this.f15477A.setOnFocusChangeListener(this);
        this.f15501z.setOnFocusChangeListener(this);
        this.f15478B.setOnFocusChangeListener(this);
        TextView textView2 = this.f15496u;
        this.f15492q = textView2;
        textView2.setActivated(true);
        d dVar = new d(this, TVListFragmentMain.ContentTypeLB.f15544b);
        this.f15494s = dVar;
        dVar.setHome();
        d(this.f15494s);
        try {
            File externalFilesDir = getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
            if (externalFilesDir != null) {
                File file = new File(externalFilesDir.getAbsolutePath() + "/FlixVision.Update" + "".replace(StringUtils.SPACE, "").replace(".", "") + ".apk");
                if (file.exists()) {
                    file.delete();
                }
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z6) {
        if (view instanceof TextView) {
            if (!z6) {
                TextView textView = (TextView) view;
                j(textView, R.color.white);
                textView.setTextColor(getResources().getColor(R.color.color_grey));
                view.animate().scaleX(1.0f).scaleY(1.0f).setDuration(200L).start();
                return;
            }
            if (view.isActivated()) {
                view.animate().scaleX(1.1f).scaleY(1.1f).setDuration(200L).start();
                return;
            }
            if (!g()) {
                h();
            }
            TextView textView2 = (TextView) view;
            textView2.setTextColor(getResources().getColor(R.color.black));
            j(textView2, R.color.black);
            view.animate().scaleX(1.1f).scaleY(1.1f).setDuration(200L).start();
        }
    }

    @Override // android.view.View.OnKeyListener
    @SuppressLint({"NonConstantResourceId"})
    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            if (i2 == 4) {
                e();
                return true;
            }
            if (i2 == 66 || i2 == 23) {
                int id = view.getId();
                if (id == R.id.button_search) {
                    if (g()) {
                        e();
                    }
                    if (App.getInstance().f14440s.getBoolean("pref_classic_search", false)) {
                        startActivity(new Intent(this, (Class<?>) SearchActivityClassic.class));
                    } else {
                        startActivity(new Intent(this, (Class<?>) SearchActivityTV.class));
                    }
                    l();
                    return true;
                }
                if (id == R.id.button_adult) {
                    if (g()) {
                        e();
                    }
                    if (App.getInstance().f14440s.getBoolean("pref_adult_zone_pin_set", false)) {
                        startActivity(new Intent(this, (Class<?>) AdultZonePINEntryActivity.class));
                    } else {
                        startActivity(new Intent(this, (Class<?>) AdultPINSetupActivity.class));
                    }
                    l();
                    return true;
                }
                if (id == R.id.button_home) {
                    if (!Objects.equals(this.f15491p, "home")) {
                        if (g()) {
                            e();
                        }
                        this.f15497v.requestFocus();
                        d dVar = new d(this, TVListFragmentMain.ContentTypeLB.f15544b);
                        this.f15494s = dVar;
                        dVar.setHome();
                        d(this.f15494s);
                        this.f15492q.setActivated(false);
                        view.setActivated(true);
                        this.f15492q = view;
                        this.f15491p = "home";
                        l();
                        f(false);
                        return true;
                    }
                } else if (id == R.id.button_movies) {
                    if (!Objects.equals(this.f15491p, "movie")) {
                        if (g()) {
                            e();
                        }
                        this.f15497v.requestFocus();
                        App.getInstance().f14440s.edit().putInt(FirebaseAnalytics.Param.CONTENT_TYPE, 0).apply();
                        d dVar2 = new d(this, TVListFragmentMain.ContentTypeLB.f15545e);
                        this.f15494s = dVar2;
                        d(dVar2);
                        this.f15492q.setActivated(false);
                        view.setActivated(true);
                        this.f15492q = view;
                        this.f15491p = "movie";
                        l();
                        f(false);
                        return true;
                    }
                } else if (id == R.id.button_tv_series) {
                    if (!Objects.equals(this.f15491p, "tv")) {
                        if (g()) {
                            e();
                        }
                        this.f15498w.requestFocus();
                        App.getInstance().f14440s.edit().putInt(FirebaseAnalytics.Param.CONTENT_TYPE, 1).apply();
                        d dVar3 = new d(this, TVListFragmentMain.ContentTypeLB.f15546f);
                        this.f15494s = dVar3;
                        d(dVar3);
                        this.f15492q.setActivated(false);
                        view.setActivated(true);
                        this.f15492q = view;
                        this.f15491p = "tv";
                        l();
                        f(false);
                        return true;
                    }
                } else {
                    if (id == R.id.button_settings) {
                        if (g()) {
                            e();
                        }
                        startActivity(new Intent(this, (Class<?>) SettingsActivity.class));
                        return true;
                    }
                    if (id == R.id.button_live_tv) {
                        if (g()) {
                            e();
                        }
                        startActivity(new Intent(this, (Class<?>) TVCategoriesActivity.class));
                        return true;
                    }
                    if (id == R.id.button_genres) {
                        if (!Objects.equals(this.f15491p, "genres")) {
                            startActivity(new Intent(this, (Class<?>) FilterActivityLeanBack.class));
                            return true;
                        }
                    } else if (id == R.id.button_favorites) {
                        if (!Objects.equals(this.f15491p, "favorites")) {
                            if (App.getInstance().f14439r.getFavoritesMoviesFromDb().size() == 0) {
                                AbstractC0995i.makeToast(this, "No Item in your Favorites", false);
                                return true;
                            }
                            startActivity(new Intent(this, (Class<?>) FavoritesAcvivity.class));
                            return true;
                        }
                    } else if (id == R.id.button_more) {
                        if (g()) {
                            e();
                        }
                        FragmentManager fragmentManager = getFragmentManager();
                        Q4.d newInstance = Q4.d.newInstance(this, true);
                        newInstance.setButton_check_update_listener(new j(this, 0));
                        newInstance.setListener_watched(new j(this, 3));
                        newInstance.setButton_contact_us_listener(new j(this, 6));
                        newInstance.setTrakt_listener(new j(this, 7));
                        newInstance.setListener_login(new j(this, 8));
                        newInstance.setImport_Playlist_listener(new j(this, 9));
                        newInstance.setMyplaylist_listener(new j(this, 10));
                        newInstance.setMenuMode();
                        try {
                            newInstance.show(fragmentManager, "");
                            return true;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    } else if (id == R.id.button_exit) {
                        if (g()) {
                            e();
                        }
                        FragmentManager fragmentManager2 = getFragmentManager();
                        Q4.d newInstance2 = Q4.d.newInstance(this, true);
                        newInstance2.setTitle("Exit");
                        newInstance2.setMessage("Do you really want to close the App ?");
                        newInstance2.setButton1("CANCEL", new q(0));
                        newInstance2.setButton2("YES", new j(this, 11));
                        try {
                            newInstance2.show(fragmentManager2, "");
                            return true;
                        } catch (Exception e7) {
                            e7.printStackTrace();
                        }
                    }
                }
            } else {
                if (i2 != 82 && i2 != 21) {
                    if (i2 != 22 || !(view instanceof TextView)) {
                        return false;
                    }
                    view.clearFocus();
                    d dVar4 = this.f15494s;
                    if (dVar4 != null) {
                        dVar4.requestFocus1();
                    }
                    e();
                    return true;
                }
                if (!g()) {
                    k();
                    h();
                    return true;
                }
            }
        }
        return true;
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f15481E.removeCallbacks(this.f15482F);
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
        resetInactivityTimer();
        if (!this.f15486e && App.getInstance().f14432e) {
            d dVar = this.f15494s;
            if (dVar != null) {
                dVar.reloadWatchedHistory();
                return;
            }
            return;
        }
        this.f15486e = false;
        if (this.f15480D != null) {
            if (App.getInstance().f14440s.getBoolean("pref_show_adult_zone", true)) {
                this.f15480D.setVisibility(0);
                this.f15485b.setVisibility(8);
            } else {
                this.f15480D.setVisibility(8);
                this.f15485b.setVisibility(0);
            }
        }
        requestAndDisplayAd();
    }

    @Override // androidx.fragment.app.H, android.app.Activity
    public void onStop() {
        super.onStop();
        this.f15481E.removeCallbacks(this.f15482F);
    }

    public void openMovieintent(Movie movie) {
        SharedPreferences sharedPreferences = App.getInstance().f14440s;
        String str = Constant.f16184b;
        if (!sharedPreferences.getBoolean("update_available", false)) {
            i(movie);
        } else if (App.getInstance().f14440s.getBoolean("mandatory_update", false)) {
            askToUpdateIfAny(true, null);
        } else {
            askToUpdateIfAny(true, movie);
        }
    }

    public void requestAndDisplayAd() {
    }

    public void resetInactivityTimer() {
        Handler handler = this.f15481E;
        k kVar = this.f15482F;
        handler.removeCallbacks(kVar);
        handler.postDelayed(kVar, 30000L);
    }
}
