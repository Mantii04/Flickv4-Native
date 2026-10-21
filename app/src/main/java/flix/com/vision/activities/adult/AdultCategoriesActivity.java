package flix.com.vision.activities.adult;

import C4.C0080d;
import T4.l;
import Z4.k;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.media3.exoplayer.ExoPlayer;
import b.c;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import cz.msebera.android.httpclient.HttpStatus;
import f5.m;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.activities.adult.AdultCategoriesActivity;
import flix.com.vision.activities.adult.AdultHistoryActivity;
import flix.com.vision.activities.adult.AdultVideosFavoritesActivity;
import flix.com.vision.activities.adult.AdultVideosSearchActivity;
import flix.com.vision.activities.base.a;
import flix.com.vision.helpers.CenterGridLayoutManager;
import flix.com.vision.models.adult.AdultCategory;
import flix.com.vision.tv.Constant;
import flix.com.vision.utils.JsonUtils;
import h5.C0996j;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import z4.RunnableC1992a;

/* loaded from: classes2.dex */
public class AdultCategoriesActivity extends a {

    /* renamed from: w, reason: collision with root package name */
    public static final /* synthetic */ int f15309w = 0;

    /* renamed from: b, reason: collision with root package name */
    public RelativeLayout f15310b;

    /* renamed from: e, reason: collision with root package name */
    public RelativeLayout f15311e;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f15312f;

    /* renamed from: j, reason: collision with root package name */
    public RelativeLayout f15313j;

    /* renamed from: m, reason: collision with root package name */
    public RelativeLayout f15314m;

    /* renamed from: n, reason: collision with root package name */
    public C0996j f15315n;

    /* renamed from: p, reason: collision with root package name */
    public Typeface f15316p;

    /* renamed from: q, reason: collision with root package name */
    public Disposable f15317q;

    /* renamed from: s, reason: collision with root package name */
    public SuperRecyclerView f15319s;

    /* renamed from: t, reason: collision with root package name */
    public C0080d f15320t;

    /* renamed from: v, reason: collision with root package name */
    public int f15322v;

    /* renamed from: r, reason: collision with root package name */
    public final ArrayList f15318r = new ArrayList();

    /* renamed from: u, reason: collision with root package name */
    public boolean f15321u = false;

    public final void e() {
        String loadJSONFromAsset = m.loadJSONFromAsset(this);
        if (loadJSONFromAsset == null || loadJSONFromAsset.length() <= 0) {
            return;
        }
        ArrayList<AdultCategory> parseAdultCategories = JsonUtils.parseAdultCategories(JsonParser.parseString(loadJSONFromAsset).getAsJsonObject());
        if (parseAdultCategories != null && parseAdultCategories.size() > 0) {
            this.f15318r.addAll(parseAdultCategories);
        }
        this.f15320t.notifyDataSetChanged();
    }

    public void fetchCategoriesFromUrl() {
        if (this.f15318r.size() > 0) {
            return;
        }
        String str = App.getInstance().f14445x;
        Disposable disposable = this.f15317q;
        if (disposable != null) {
            disposable.dispose();
        }
        final int i2 = 0;
        final int i7 = 1;
        this.f15317q = Observable.fromCallable(new k(str, 2)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer(this) { // from class: z4.b

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultCategoriesActivity f21440e;

            {
                this.f21440e = this;
            }

            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AdultCategoriesActivity adultCategoriesActivity = this.f21440e;
                switch (i2) {
                    case 0:
                        JsonElement jsonElement = (JsonElement) obj;
                        int i8 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        try {
                            ArrayList<AdultCategory> parseAdultCategories = JsonUtils.parseAdultCategories(jsonElement);
                            if (parseAdultCategories != null && parseAdultCategories.size() > 0) {
                                adultCategoriesActivity.f15318r.addAll(parseAdultCategories);
                            }
                            adultCategoriesActivity.f15320t.notifyDataSetChanged();
                            break;
                        } catch (Exception e3) {
                            Log.e(AdultCategoriesActivity.class.toString(), "Error parsing JSON", e3);
                            adultCategoriesActivity.e();
                            return;
                        }
                        break;
                    default:
                        int i9 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        Log.e(AdultCategoriesActivity.class.toString(), "Error fetching URL", (Throwable) obj);
                        adultCategoriesActivity.e();
                        break;
                }
            }
        }, new Consumer(this) { // from class: z4.b

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultCategoriesActivity f21440e;

            {
                this.f21440e = this;
            }

            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                AdultCategoriesActivity adultCategoriesActivity = this.f21440e;
                switch (i7) {
                    case 0:
                        JsonElement jsonElement = (JsonElement) obj;
                        int i8 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        try {
                            ArrayList<AdultCategory> parseAdultCategories = JsonUtils.parseAdultCategories(jsonElement);
                            if (parseAdultCategories != null && parseAdultCategories.size() > 0) {
                                adultCategoriesActivity.f15318r.addAll(parseAdultCategories);
                            }
                            adultCategoriesActivity.f15320t.notifyDataSetChanged();
                            break;
                        } catch (Exception e3) {
                            Log.e(AdultCategoriesActivity.class.toString(), "Error parsing JSON", e3);
                            adultCategoriesActivity.e();
                            return;
                        }
                        break;
                    default:
                        int i9 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        Log.e(AdultCategoriesActivity.class.toString(), "Error fetching URL", (Throwable) obj);
                        adultCategoriesActivity.e();
                        break;
                }
            }
        });
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f15321u) {
            this.f15321u = false;
            super.onBackPressed();
            finish();
            return;
        }
        if (this.f15318r.size() < 200) {
            this.f15319s.getRecyclerView().smoothScrollToPosition(0);
        } else {
            this.f15319s.getRecyclerView().scrollToPosition(0);
        }
        this.f15321u = true;
        this.f15310b.requestFocus();
        this.f15319s.clearFocus();
        Toast.makeText(getBaseContext(), "Press Back again to Exit", 0).show();
        new Handler().postDelayed(new RunnableC1992a(this, 0), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        final int i2 = 1;
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f15316p = Typeface.createFromAsset(assets, "fonts/product_sans_bold.ttf");
        this.f15315n = new C0996j();
        setContentView(R.layout.activity_adult_categories);
        this.f15320t = new C0080d(this, this.f15318r);
        this.f15314m = (RelativeLayout) findViewById(R.id.history_button_adult);
        this.f15313j = (RelativeLayout) findViewById(R.id.settings_button_adult);
        this.f15312f = (RelativeLayout) findViewById(R.id.activity_player);
        this.f15311e = (RelativeLayout) findViewById(R.id.favorites_button_adult);
        this.f15310b = (RelativeLayout) findViewById(R.id.search_button_adult);
        this.f15319s = (SuperRecyclerView) findViewById(R.id.recyclerview_categories);
        this.f15315n.applyFontToView((TextView) findViewById(R.id.adult_page_title), this.f15316p);
        final int i7 = 0;
        this.f15310b.setOnClickListener(new View.OnClickListener(this) { // from class: z4.c

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultCategoriesActivity f21442e;

            {
                this.f21442e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdultCategoriesActivity adultCategoriesActivity = this.f21442e;
                switch (i7) {
                    case 0:
                        int i8 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        adultCategoriesActivity.startActivity(new Intent(adultCategoriesActivity, (Class<?>) AdultVideosSearchActivity.class));
                        break;
                    case 1:
                        int i9 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        if (App.getInstance().f14439r.getAdultVideosFavoritesFromDb().size() != 0) {
                            adultCategoriesActivity.startActivity(new Intent(adultCategoriesActivity, (Class<?>) AdultVideosFavoritesActivity.class));
                            break;
                        } else {
                            Toast.makeText(adultCategoriesActivity.getBaseContext(), "Long press on Video to add to your favorites", 1).show();
                            break;
                        }
                    case 2:
                        int i10 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        adultCategoriesActivity.startActivity(new Intent(adultCategoriesActivity, (Class<?>) SettingsActivity.class));
                        break;
                    default:
                        int i11 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        adultCategoriesActivity.startActivity(new Intent(adultCategoriesActivity, (Class<?>) AdultHistoryActivity.class));
                        break;
                }
            }
        });
        this.f15311e.setOnClickListener(new View.OnClickListener(this) { // from class: z4.c

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultCategoriesActivity f21442e;

            {
                this.f21442e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdultCategoriesActivity adultCategoriesActivity = this.f21442e;
                switch (i2) {
                    case 0:
                        int i8 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        adultCategoriesActivity.startActivity(new Intent(adultCategoriesActivity, (Class<?>) AdultVideosSearchActivity.class));
                        break;
                    case 1:
                        int i9 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        if (App.getInstance().f14439r.getAdultVideosFavoritesFromDb().size() != 0) {
                            adultCategoriesActivity.startActivity(new Intent(adultCategoriesActivity, (Class<?>) AdultVideosFavoritesActivity.class));
                            break;
                        } else {
                            Toast.makeText(adultCategoriesActivity.getBaseContext(), "Long press on Video to add to your favorites", 1).show();
                            break;
                        }
                    case 2:
                        int i10 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        adultCategoriesActivity.startActivity(new Intent(adultCategoriesActivity, (Class<?>) SettingsActivity.class));
                        break;
                    default:
                        int i11 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        adultCategoriesActivity.startActivity(new Intent(adultCategoriesActivity, (Class<?>) AdultHistoryActivity.class));
                        break;
                }
            }
        });
        final int i8 = 2;
        this.f15313j.setOnClickListener(new View.OnClickListener(this) { // from class: z4.c

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultCategoriesActivity f21442e;

            {
                this.f21442e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdultCategoriesActivity adultCategoriesActivity = this.f21442e;
                switch (i8) {
                    case 0:
                        int i82 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        adultCategoriesActivity.startActivity(new Intent(adultCategoriesActivity, (Class<?>) AdultVideosSearchActivity.class));
                        break;
                    case 1:
                        int i9 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        if (App.getInstance().f14439r.getAdultVideosFavoritesFromDb().size() != 0) {
                            adultCategoriesActivity.startActivity(new Intent(adultCategoriesActivity, (Class<?>) AdultVideosFavoritesActivity.class));
                            break;
                        } else {
                            Toast.makeText(adultCategoriesActivity.getBaseContext(), "Long press on Video to add to your favorites", 1).show();
                            break;
                        }
                    case 2:
                        int i10 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        adultCategoriesActivity.startActivity(new Intent(adultCategoriesActivity, (Class<?>) SettingsActivity.class));
                        break;
                    default:
                        int i11 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        adultCategoriesActivity.startActivity(new Intent(adultCategoriesActivity, (Class<?>) AdultHistoryActivity.class));
                        break;
                }
            }
        });
        final int i9 = 3;
        this.f15314m.setOnClickListener(new View.OnClickListener(this) { // from class: z4.c

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ AdultCategoriesActivity f21442e;

            {
                this.f21442e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AdultCategoriesActivity adultCategoriesActivity = this.f21442e;
                switch (i9) {
                    case 0:
                        int i82 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        adultCategoriesActivity.startActivity(new Intent(adultCategoriesActivity, (Class<?>) AdultVideosSearchActivity.class));
                        break;
                    case 1:
                        int i92 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        if (App.getInstance().f14439r.getAdultVideosFavoritesFromDb().size() != 0) {
                            adultCategoriesActivity.startActivity(new Intent(adultCategoriesActivity, (Class<?>) AdultVideosFavoritesActivity.class));
                            break;
                        } else {
                            Toast.makeText(adultCategoriesActivity.getBaseContext(), "Long press on Video to add to your favorites", 1).show();
                            break;
                        }
                    case 2:
                        int i10 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        adultCategoriesActivity.startActivity(new Intent(adultCategoriesActivity, (Class<?>) SettingsActivity.class));
                        break;
                    default:
                        int i11 = AdultCategoriesActivity.f15309w;
                        adultCategoriesActivity.getClass();
                        adultCategoriesActivity.startActivity(new Intent(adultCategoriesActivity, (Class<?>) AdultHistoryActivity.class));
                        break;
                }
            }
        });
        this.f15319s.setAdapter(this.f15320t);
        DisplayMetrics d7 = c.d(getWindowManager().getDefaultDisplay());
        this.f15319s.setLayoutManager(new CenterGridLayoutManager(this, Math.round((d7.widthPixels / getResources().getDisplayMetrics().density) / HttpStatus.SC_OK)));
        this.f15319s.addItemDecoration(new l(5));
        setBackgroundColor();
        fetchCategoriesFromUrl();
        new Handler().postDelayed(new RunnableC1992a(this, 1), 1000L);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(ArrayList<AdultCategory> arrayList) {
        this.f15318r.addAll(arrayList);
        this.f15320t.notifyDataSetChanged();
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    public void openCategory(int i2) {
        Intent intent = new Intent(this, (Class<?>) AdultVideosActivity.class);
        ArrayList arrayList = this.f15318r;
        intent.putExtra("categoryUrl", ((AdultCategory) arrayList.get(i2)).url);
        intent.putExtra("categoryTitle", ((AdultCategory) arrayList.get(i2)).title);
        startActivity(intent);
    }

    public void setBackgroundColor() {
        this.f15322v = 2505092;
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.f15322v), 0);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 20));
        ofObject.start();
        this.f15322v = 0;
    }
}
