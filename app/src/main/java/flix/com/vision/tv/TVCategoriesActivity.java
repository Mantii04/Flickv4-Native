package flix.com.vision.tv;

import A.i;
import A4.q;
import C4.c0;
import Q4.d;
import T4.k;
import U4.l;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.app.FragmentManager;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.recyclerview.widget.RecyclerView;
import b.c;
import f1.RunnableC0883a;
import f5.D;
import f5.E;
import f5.ViewOnClickListenerC0926B;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.helpers.CenterGridLayoutManager;
import flix.com.vision.helpers.CenterLayoutManager;
import flix.com.vision.models.C4913m;
import flix.com.vision.models.ChannelTv;
import flix.com.vision.tv.TVCategoriesActivity;
import flix.com.vision.tv.TVCategory;
import h5.AbstractC0995i;
import h5.C0996j;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: classes2.dex */
public class TVCategoriesActivity extends flix.com.vision.activities.base.a implements l {

    /* renamed from: H, reason: collision with root package name */
    public static final /* synthetic */ int f16255H = 0;

    /* renamed from: A, reason: collision with root package name */
    public TextView f16256A;

    /* renamed from: B, reason: collision with root package name */
    public TextView f16257B;

    /* renamed from: C, reason: collision with root package name */
    public RelativeLayout f16258C;

    /* renamed from: D, reason: collision with root package name */
    public AlphaAnimation f16259D;

    /* renamed from: G, reason: collision with root package name */
    public int f16262G;

    /* renamed from: b, reason: collision with root package name */
    public RelativeLayout f16263b;

    /* renamed from: e, reason: collision with root package name */
    public RelativeLayout f16264e;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f16265f;

    /* renamed from: j, reason: collision with root package name */
    public C0996j f16266j;

    /* renamed from: m, reason: collision with root package name */
    public Typeface f16267m;

    /* renamed from: n, reason: collision with root package name */
    public TextView f16268n;

    /* renamed from: q, reason: collision with root package name */
    public LinearLayout f16270q;

    /* renamed from: r, reason: collision with root package name */
    public LinearLayout f16271r;

    /* renamed from: s, reason: collision with root package name */
    public RecyclerView f16272s;

    /* renamed from: t, reason: collision with root package name */
    public RecyclerView f16273t;

    /* renamed from: u, reason: collision with root package name */
    public c0 f16274u;

    /* renamed from: v, reason: collision with root package name */
    public c0 f16275v;

    /* renamed from: w, reason: collision with root package name */
    public String f16276w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f16277x;

    /* renamed from: y, reason: collision with root package name */
    public Handler f16278y;

    /* renamed from: z, reason: collision with root package name */
    public RunnableC0883a f16279z;

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f16269p = new ArrayList();

    /* renamed from: E, reason: collision with root package name */
    public boolean f16260E = false;

    /* renamed from: F, reason: collision with root package name */
    public HashSet f16261F = new HashSet();

    public void ToastChannel(String str) {
        if (this.f16258C == null) {
            return;
        }
        if (str != null && str.length() > 20) {
            str = str.substring(0, 19);
        }
        this.f16258C.setAlpha(1.0f);
        this.f16278y.removeCallbacks(this.f16279z);
        this.f16278y.postDelayed(this.f16279z, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        this.f16256A.setText(str);
        this.f16258C.setVisibility(0);
    }

    public final void e() {
        App.getInstance().f14437p.clear();
        ArrayList arrayList = new ArrayList();
        Iterator it = App.getInstance().f14434j.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            ChannelTv channelTv = (ChannelTv) it.next();
            i2++;
            String str = channelTv.group_name;
            if (str != null && !arrayList.contains(str) && !channelTv.group_name.toLowerCase().contains("agent")) {
                arrayList.add(channelTv.group_name);
                TVCategory tVCategory = new TVCategory();
                tVCategory.setCategoryName(channelTv.group_name);
                tVCategory.setCategoryId(i2);
                if (tVCategory.getCategoryName() != null && (tVCategory.getCategoryName().toLowerCase().contains("united states") || tVCategory.getCategoryName().toLowerCase().contains("france") || tVCategory.getCategoryName().toLowerCase().contains("canada") || tVCategory.getCategoryName().toLowerCase().contains("united kingdom") || tVCategory.getCategoryName().toLowerCase().contains("south africa") || tVCategory.getCategoryName().toLowerCase().contains("india") || tVCategory.getCategoryName().toLowerCase().contains("ireland") || tVCategory.getCategoryName().toLowerCase().contains("jamaica") || tVCategory.getCategoryName().toLowerCase().contains("netherlands"))) {
                    App.getInstance().f14437p.add(0, tVCategory);
                }
                App.getInstance().f14437p.add(tVCategory);
            }
        }
        if (App.getInstance().f14437p.size() > 0) {
            this.f16268n.setText("TV Categories · " + App.getInstance().f14437p.size());
            this.f16274u.notifyDataSetChanged();
            Toast.makeText(this, App.getInstance().f14434j.size() + " Channels loaded", 1).show();
            updateFavoritesBar();
            if (App.getInstance().f14440s.getBoolean("hint_tv_cat_shown", false)) {
                return;
            }
            AbstractC0995i.makeToast(this, "You can long press on a Category to pin it at the top of the list", true);
            i.x(App.getInstance().f14440s, "hint_tv_cat_shown", true);
        }
    }

    public void getCategories() {
        if (App.getInstance().f14437p.size() <= 0) {
            App.getInstance().f14433f = this.f16276w;
            if (this.f16277x) {
                new D(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.f16276w);
                return;
            } else {
                new E(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, this.f16276w);
                return;
            }
        }
        this.f16268n.setText("TV Categories · " + App.getInstance().f14437p.size());
        this.f16270q.setVisibility(8);
        this.f16274u.notifyDataSetChanged();
        this.f16272s.requestFocus();
        this.f16260E = true;
        updateFavoritesBar();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f16273t.getVisibility() == 0 && !this.f16273t.hasFocus()) {
            this.f16273t.requestFocus();
            return;
        }
        if (this.f16260E) {
            super.onBackPressed();
            finish();
            return;
        }
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, true);
        newInstance.setTitle("Still working");
        newInstance.setMessage("We're still loading your channels. Can you please wait a little more?");
        newInstance.setButton1("CANCEL", new ViewOnClickListenerC0926B(this, 0));
        newInstance.setButton2("OK, I'LL WAIT", new q(5));
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EventBus.getDefault().register(this);
        setContentView(R.layout.activity_tv_categories2);
        this.f16261F = new HashSet(App.getInstance().f14440s.getStringSet("prefs_tv_category_fav_set", new HashSet()));
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        this.f16267m = Typeface.createFromAsset(assets, "fonts/product_sans_bold.ttf");
        this.f16266j = new C0996j();
        String stringExtra = getIntent().getStringExtra("url");
        this.f16276w = stringExtra;
        if (stringExtra == null) {
            this.f16276w = App.getInstance().f14440s.getString("iptv_url", "https://iptv-org.github.io/iptv/index.country.m3u");
        }
        this.f16277x = getIntent().getBooleanExtra("is_file", false);
        this.f16276w = this.f16276w.toLowerCase(Locale.ROOT);
        String str2 = App.getInstance().f14433f;
        if (App.getInstance().f14437p == null) {
            App.getInstance().f14437p = new ArrayList();
        }
        if (App.getInstance().f14434j == null) {
            App.getInstance().f14434j = new ArrayList();
        }
        if (App.getInstance().f14435m == null) {
            App.getInstance().f14435m = new ArrayList();
        }
        if (App.getInstance().f14437p.size() > 0 && str2 != null && !str2.equalsIgnoreCase(this.f16276w)) {
            App.getInstance().f14437p.clear();
            App.getInstance().f14434j.clear();
            App.getInstance().f14435m.clear();
        }
        this.f16271r = (LinearLayout) findViewById(R.id.tv_favorites_layout);
        this.f16273t = (RecyclerView) findViewById(R.id.recyclerview_tv_favorites);
        this.f16257B = (TextView) findViewById(R.id.loader_text);
        this.f16272s = (RecyclerView) findViewById(R.id.recyclerview_categories);
        this.f16270q = (LinearLayout) findViewById(R.id.loader);
        this.f16265f = (RelativeLayout) findViewById(R.id.settings_button_adult);
        this.f16264e = (RelativeLayout) findViewById(R.id.activity_player);
        this.f16263b = (RelativeLayout) findViewById(R.id.search_button_adult);
        this.f16272s = (RecyclerView) findViewById(R.id.recyclerview_categories);
        TextView textView = (TextView) findViewById(R.id.adult_page_title);
        this.f16268n = textView;
        this.f16266j.applyFontToView(textView, this.f16267m);
        TextView textView2 = this.f16257B;
        if (textView2 != null) {
            this.f16266j.applyFontToView(textView2, this.f16267m);
        }
        this.f16263b.setOnClickListener(new ViewOnClickListenerC0926B(this, 1));
        this.f16265f.setOnClickListener(new ViewOnClickListenerC0926B(this, 2));
        setBackgroundColor();
        if (App.f14424I) {
            this.f16258C = (RelativeLayout) findViewById(R.id.toast_view);
            this.f16259D = new AlphaAnimation(1.0f, 0.0f);
            this.f16256A = (TextView) findViewById(R.id.customToastText);
            this.f16278y = new Handler();
            this.f16279z = new RunnableC0883a(this, 4);
        }
        DisplayMetrics d7 = c.d(getWindowManager().getDefaultDisplay());
        this.f16272s.setLayoutManager(new CenterGridLayoutManager(this, Math.round((d7.widthPixels / getResources().getDisplayMetrics().density) / 140)));
        this.f16272s.addItemDecoration(new T4.l(5));
        c0 c0Var = new c0(App.getInstance().f14437p, this, this);
        this.f16274u = c0Var;
        this.f16272s.setAdapter(c0Var);
        this.f16275v = new c0(this.f16269p, this, this);
        this.f16273t.setLayoutManager(new CenterLayoutManager(this, 0, false));
        this.f16273t.setAdapter(this.f16275v);
        this.f16273t.addItemDecoration(new k(15));
        getCategories();
    }

    @Override // U4.l
    public void onLongPress(int i2, ArrayList<TVCategory> arrayList) {
        final TVCategory tVCategory = arrayList.get(i2);
        if (this.f16261F.contains(tVCategory.getCategoryName())) {
            FragmentManager fragmentManager = getFragmentManager();
            d newInstance = d.newInstance(this, true);
            newInstance.setTitle(tVCategory.getCategoryName());
            newInstance.setMessage("What would you like to Do?");
            final int i7 = 0;
            newInstance.setButton1("REMOVE FAVORITE", new View.OnClickListener(this) { // from class: f5.C

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ TVCategoriesActivity f14380e;

                {
                    this.f14380e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TVCategory tVCategory2 = tVCategory;
                    TVCategoriesActivity tVCategoriesActivity = this.f14380e;
                    switch (i7) {
                        case 0:
                            int i8 = TVCategoriesActivity.f16255H;
                            tVCategoriesActivity.getClass();
                            AbstractC0995i.makeToast(tVCategoriesActivity, "Removed From Favorites", true);
                            tVCategoriesActivity.f16261F.remove(tVCategory2.getCategoryName());
                            App.getInstance().f14440s.edit().putStringSet("prefs_tv_category_fav_set", tVCategoriesActivity.f16261F).apply();
                            tVCategoriesActivity.updateFavoritesBar();
                            break;
                        case 1:
                            int i9 = TVCategoriesActivity.f16255H;
                            tVCategoriesActivity.openCategory(tVCategory2);
                            break;
                        case 2:
                            int i10 = TVCategoriesActivity.f16255H;
                            tVCategoriesActivity.getClass();
                            AbstractC0995i.makeToast(tVCategoriesActivity, "Added To Favorites", true);
                            tVCategoriesActivity.f16261F.add(tVCategory2.getCategoryName());
                            App.getInstance().f14440s.edit().putStringSet("prefs_tv_category_fav_set", tVCategoriesActivity.f16261F).apply();
                            tVCategoriesActivity.updateFavoritesBar();
                            break;
                        default:
                            int i11 = TVCategoriesActivity.f16255H;
                            tVCategoriesActivity.openCategory(tVCategory2);
                            break;
                    }
                }
            });
            final int i8 = 1;
            newInstance.setButton2("OPEN", new View.OnClickListener(this) { // from class: f5.C

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ TVCategoriesActivity f14380e;

                {
                    this.f14380e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TVCategory tVCategory2 = tVCategory;
                    TVCategoriesActivity tVCategoriesActivity = this.f14380e;
                    switch (i8) {
                        case 0:
                            int i82 = TVCategoriesActivity.f16255H;
                            tVCategoriesActivity.getClass();
                            AbstractC0995i.makeToast(tVCategoriesActivity, "Removed From Favorites", true);
                            tVCategoriesActivity.f16261F.remove(tVCategory2.getCategoryName());
                            App.getInstance().f14440s.edit().putStringSet("prefs_tv_category_fav_set", tVCategoriesActivity.f16261F).apply();
                            tVCategoriesActivity.updateFavoritesBar();
                            break;
                        case 1:
                            int i9 = TVCategoriesActivity.f16255H;
                            tVCategoriesActivity.openCategory(tVCategory2);
                            break;
                        case 2:
                            int i10 = TVCategoriesActivity.f16255H;
                            tVCategoriesActivity.getClass();
                            AbstractC0995i.makeToast(tVCategoriesActivity, "Added To Favorites", true);
                            tVCategoriesActivity.f16261F.add(tVCategory2.getCategoryName());
                            App.getInstance().f14440s.edit().putStringSet("prefs_tv_category_fav_set", tVCategoriesActivity.f16261F).apply();
                            tVCategoriesActivity.updateFavoritesBar();
                            break;
                        default:
                            int i11 = TVCategoriesActivity.f16255H;
                            tVCategoriesActivity.openCategory(tVCategory2);
                            break;
                    }
                }
            });
            try {
                newInstance.show(fragmentManager, "");
                return;
            } catch (Exception e3) {
                e3.printStackTrace();
                return;
            }
        }
        FragmentManager fragmentManager2 = getFragmentManager();
        d newInstance2 = d.newInstance(this, true);
        newInstance2.setTitle(tVCategory.getCategoryName());
        newInstance2.setMessage("What would you like to Do?");
        final int i9 = 2;
        newInstance2.setButton1("ADD TO FAVORITES", new View.OnClickListener(this) { // from class: f5.C

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ TVCategoriesActivity f14380e;

            {
                this.f14380e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TVCategory tVCategory2 = tVCategory;
                TVCategoriesActivity tVCategoriesActivity = this.f14380e;
                switch (i9) {
                    case 0:
                        int i82 = TVCategoriesActivity.f16255H;
                        tVCategoriesActivity.getClass();
                        AbstractC0995i.makeToast(tVCategoriesActivity, "Removed From Favorites", true);
                        tVCategoriesActivity.f16261F.remove(tVCategory2.getCategoryName());
                        App.getInstance().f14440s.edit().putStringSet("prefs_tv_category_fav_set", tVCategoriesActivity.f16261F).apply();
                        tVCategoriesActivity.updateFavoritesBar();
                        break;
                    case 1:
                        int i92 = TVCategoriesActivity.f16255H;
                        tVCategoriesActivity.openCategory(tVCategory2);
                        break;
                    case 2:
                        int i10 = TVCategoriesActivity.f16255H;
                        tVCategoriesActivity.getClass();
                        AbstractC0995i.makeToast(tVCategoriesActivity, "Added To Favorites", true);
                        tVCategoriesActivity.f16261F.add(tVCategory2.getCategoryName());
                        App.getInstance().f14440s.edit().putStringSet("prefs_tv_category_fav_set", tVCategoriesActivity.f16261F).apply();
                        tVCategoriesActivity.updateFavoritesBar();
                        break;
                    default:
                        int i11 = TVCategoriesActivity.f16255H;
                        tVCategoriesActivity.openCategory(tVCategory2);
                        break;
                }
            }
        });
        final int i10 = 3;
        newInstance2.setButton2("OPEN", new View.OnClickListener(this) { // from class: f5.C

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ TVCategoriesActivity f14380e;

            {
                this.f14380e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TVCategory tVCategory2 = tVCategory;
                TVCategoriesActivity tVCategoriesActivity = this.f14380e;
                switch (i10) {
                    case 0:
                        int i82 = TVCategoriesActivity.f16255H;
                        tVCategoriesActivity.getClass();
                        AbstractC0995i.makeToast(tVCategoriesActivity, "Removed From Favorites", true);
                        tVCategoriesActivity.f16261F.remove(tVCategory2.getCategoryName());
                        App.getInstance().f14440s.edit().putStringSet("prefs_tv_category_fav_set", tVCategoriesActivity.f16261F).apply();
                        tVCategoriesActivity.updateFavoritesBar();
                        break;
                    case 1:
                        int i92 = TVCategoriesActivity.f16255H;
                        tVCategoriesActivity.openCategory(tVCategory2);
                        break;
                    case 2:
                        int i102 = TVCategoriesActivity.f16255H;
                        tVCategoriesActivity.getClass();
                        AbstractC0995i.makeToast(tVCategoriesActivity, "Added To Favorites", true);
                        tVCategoriesActivity.f16261F.add(tVCategory2.getCategoryName());
                        App.getInstance().f14440s.edit().putStringSet("prefs_tv_category_fav_set", tVCategoriesActivity.f16261F).apply();
                        tVCategoriesActivity.updateFavoritesBar();
                        break;
                    default:
                        int i11 = TVCategoriesActivity.f16255H;
                        tVCategoriesActivity.openCategory(tVCategory2);
                        break;
                }
            }
        });
        try {
            newInstance2.show(fragmentManager2, "");
        } catch (Exception e7) {
            e7.printStackTrace();
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onMessageEvent(R4.b bVar) {
        ArrayList arrayList = App.getInstance().f14437p;
        throw null;
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    @Override // U4.l
    public void openCategory(TVCategory tVCategory) {
        App.getInstance().f14435m.clear();
        Iterator it = App.getInstance().f14434j.iterator();
        while (it.hasNext()) {
            ChannelTv channelTv = (ChannelTv) it.next();
            if (channelTv.group_name.equalsIgnoreCase(tVCategory.getCategoryName())) {
                App.getInstance().f14435m.add(channelTv);
            }
        }
        Intent intent = new Intent(this, (Class<?>) ChannelsListActivity.class);
        intent.putExtra(C4913m.f14509i, tVCategory.getCategoryName());
        startActivity(intent);
    }

    public void setBackgroundColor() {
        this.f16262G = 2505092;
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.f16262G), 0);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 4));
        ofObject.start();
        this.f16262G = 0;
    }

    public void updateFavoritesBar() {
        ArrayList arrayList = this.f16269p;
        try {
            arrayList.clear();
            Iterator it = App.getInstance().f14437p.iterator();
            while (it.hasNext()) {
                TVCategory tVCategory = (TVCategory) it.next();
                if (this.f16261F.contains(tVCategory.getCategoryName())) {
                    arrayList.add(tVCategory);
                }
            }
            Collections.reverse(arrayList);
            if (arrayList.isEmpty()) {
                this.f16271r.setVisibility(8);
            } else {
                this.f16271r.setVisibility(0);
                this.f16275v.notifyDataSetChanged();
            }
        } catch (Exception e3) {
            AbstractC0995i.makeToast(this, "ERROR: " + e3.getMessage(), false);
        }
    }
}
