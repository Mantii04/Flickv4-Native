package flix.com.vision.activities;

import A4.m;
import C4.B;
import C4.C0101z;
import C4.ViewOnClickListenerC0088l;
import Q4.d;
import U4.e;
import android.annotation.SuppressLint;
import android.app.FragmentManager;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.RecyclerView;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.DramaFavoritesActivity;
import flix.com.vision.activities.DramaHistoryActivity;
import flix.com.vision.activities.DramaHomeActivity;
import flix.com.vision.activities.DramaSearchActivityMobile;
import flix.com.vision.activities.DramaSearchResultActivity;
import flix.com.vision.helpers.CenterLayoutManager;
import flix.com.vision.materialsearchview.MaterialSearchView;
import flix.com.vision.models.Drama;
import flix.com.vision.tv.Constant;
import j6.h;
import java.util.ArrayList;
import java.util.Iterator;
import y4.C1888C;
import y4.C1913l;
import y4.RunnableC1938y;

/* loaded from: classes2.dex */
public class DramaHomeActivity extends flix.com.vision.activities.base.a implements e {

    /* renamed from: W, reason: collision with root package name */
    public static final /* synthetic */ int f14580W = 0;

    /* renamed from: A, reason: collision with root package name */
    public ArrayList f14581A;

    /* renamed from: B, reason: collision with root package name */
    public ArrayList f14582B;

    /* renamed from: C, reason: collision with root package name */
    public ArrayList f14583C;

    /* renamed from: D, reason: collision with root package name */
    public ArrayList f14584D;

    /* renamed from: E, reason: collision with root package name */
    public ArrayList f14585E;

    /* renamed from: F, reason: collision with root package name */
    public C0101z f14586F;

    /* renamed from: G, reason: collision with root package name */
    public C0101z f14587G;

    /* renamed from: H, reason: collision with root package name */
    public C0101z f14588H;

    /* renamed from: I, reason: collision with root package name */
    public C0101z f14589I;

    /* renamed from: J, reason: collision with root package name */
    public C0101z f14590J;

    /* renamed from: K, reason: collision with root package name */
    public C0101z f14591K;

    /* renamed from: L, reason: collision with root package name */
    public RecyclerView f14592L;

    /* renamed from: M, reason: collision with root package name */
    public RecyclerView f14593M;

    /* renamed from: N, reason: collision with root package name */
    public RecyclerView f14594N;

    /* renamed from: O, reason: collision with root package name */
    public RecyclerView f14595O;

    /* renamed from: P, reason: collision with root package name */
    public RecyclerView f14596P;

    /* renamed from: Q, reason: collision with root package name */
    public RecyclerView f14597Q;

    /* renamed from: R, reason: collision with root package name */
    public RecyclerView f14598R;

    /* renamed from: S, reason: collision with root package name */
    public B f14599S;

    /* renamed from: T, reason: collision with root package name */
    public d f14600T = null;

    /* renamed from: U, reason: collision with root package name */
    public boolean f14601U = false;

    /* renamed from: V, reason: collision with root package name */
    public String f14602V = "https://kissasiantv.to";

    /* renamed from: b, reason: collision with root package name */
    public ScrollView f14603b;

    /* renamed from: e, reason: collision with root package name */
    public MaterialSearchView f14604e;

    /* renamed from: f, reason: collision with root package name */
    public RelativeLayout f14605f;

    /* renamed from: j, reason: collision with root package name */
    public RelativeLayout f14606j;

    /* renamed from: m, reason: collision with root package name */
    public RelativeLayout f14607m;

    /* renamed from: n, reason: collision with root package name */
    public RelativeLayout f14608n;

    /* renamed from: p, reason: collision with root package name */
    public TextView f14609p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f14610q;

    /* renamed from: r, reason: collision with root package name */
    public TextView f14611r;

    /* renamed from: s, reason: collision with root package name */
    public TextView f14612s;

    /* renamed from: t, reason: collision with root package name */
    public TextView f14613t;

    /* renamed from: u, reason: collision with root package name */
    public ImageView f14614u;

    /* renamed from: v, reason: collision with root package name */
    public ImageView f14615v;

    /* renamed from: w, reason: collision with root package name */
    public ImageView f14616w;

    /* renamed from: x, reason: collision with root package name */
    public ImageView f14617x;

    /* renamed from: y, reason: collision with root package name */
    public ArrayList f14618y;

    /* renamed from: z, reason: collision with root package name */
    public ArrayList f14619z;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class DRAMA_TYPE {

        /* renamed from: b, reason: collision with root package name */
        public static final DRAMA_TYPE f14620b;

        /* renamed from: e, reason: collision with root package name */
        public static final DRAMA_TYPE f14621e;

        /* renamed from: f, reason: collision with root package name */
        public static final DRAMA_TYPE f14622f;

        /* renamed from: j, reason: collision with root package name */
        public static final DRAMA_TYPE f14623j;

        /* renamed from: m, reason: collision with root package name */
        public static final DRAMA_TYPE f14624m;

        /* renamed from: n, reason: collision with root package name */
        public static final DRAMA_TYPE f14625n;

        /* renamed from: p, reason: collision with root package name */
        public static final /* synthetic */ DRAMA_TYPE[] f14626p;

        /* JADX INFO: Fake field, exist only in values array */
        DRAMA_TYPE EF8;

        static {
            DRAMA_TYPE drama_type = new DRAMA_TYPE("CONTINUE", 0);
            DRAMA_TYPE drama_type2 = new DRAMA_TYPE("ONGOING", 1);
            f14620b = drama_type2;
            DRAMA_TYPE drama_type3 = new DRAMA_TYPE("ACTION", 2);
            f14621e = drama_type3;
            DRAMA_TYPE drama_type4 = new DRAMA_TYPE("MYSTERY", 3);
            f14622f = drama_type4;
            DRAMA_TYPE drama_type5 = new DRAMA_TYPE("VARIETY", 4);
            f14623j = drama_type5;
            DRAMA_TYPE drama_type6 = new DRAMA_TYPE("ROMANCE", 5);
            f14624m = drama_type6;
            DRAMA_TYPE drama_type7 = new DRAMA_TYPE("COMPLETED", 6);
            f14625n = drama_type7;
            f14626p = new DRAMA_TYPE[]{drama_type, drama_type2, drama_type3, drama_type4, drama_type5, drama_type6, drama_type7, new DRAMA_TYPE("NEW_AND_HOT", 7)};
        }

        public static DRAMA_TYPE valueOf(String str) {
            return (DRAMA_TYPE) Enum.valueOf(DRAMA_TYPE.class, str);
        }

        public static DRAMA_TYPE[] values() {
            return (DRAMA_TYPE[]) f14626p.clone();
        }
    }

    public final ArrayList e(h hVar) {
        ArrayList arrayList = new ArrayList();
        Iterator<org.jsoup.nodes.b> it = hVar.select("div.list-drama div.item").iterator();
        while (it.hasNext()) {
            org.jsoup.nodes.b next = it.next();
            try {
                Drama drama = new Drama();
                org.jsoup.nodes.b first = next.getElementsByTag("IMG").first();
                if (first != null) {
                    String attr = first.attr("alt");
                    String str = "https://" + first.attr("src");
                    drama.title = attr;
                    drama.image_url = str;
                }
                drama.url = this.f14602V + next.getElementsByTag("A").first().attr("href");
                try {
                    if (drama.title.toLowerCase().endsWith(")")) {
                        String substring = drama.title.substring(r3.length() - 6);
                        drama.title = drama.title.replace(substring, "").trim();
                        drama.year = substring.replace("(", "").replace(")", "");
                    }
                } catch (Exception unused) {
                }
                if (!arrayList.contains(drama)) {
                    arrayList.add(drama);
                }
            } catch (Exception unused2) {
            }
        }
        return arrayList;
    }

    public final void f() {
        ArrayList<Drama> dramaContinue = App.getInstance().f14439r.getDramaContinue();
        if (dramaContinue.isEmpty()) {
            this.f14592L.setVisibility(8);
            this.f14613t.setVisibility(8);
            return;
        }
        this.f14618y.clear();
        this.f14618y.addAll(dramaContinue);
        this.f14599S.notifyDataSetChanged();
        this.f14592L.setVisibility(0);
        this.f14613t.setVisibility(0);
        dramaContinue.clear();
    }

    public final void g(DRAMA_TYPE drama_type, String str) {
        new c(this, str, new ArrayList(), drama_type).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    @SuppressLint({"MissingSuperCall"})
    public void onBackPressed() {
        if (this.f14601U) {
            this.f14601U = false;
            finish();
        } else {
            this.f14603b.fullScroll(33);
            Toast.makeText(getBaseContext(), "Press again to Exit", 0).show();
            this.f14601U = true;
            new Handler().postDelayed(new RunnableC1938y(this, 0), 1600L);
        }
    }

    public void onContinueLongPress(int i2) {
        Drama drama = (Drama) this.f14618y.get(i2);
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, true);
        newInstance.setTitle(drama.title);
        newInstance.setMessage("What would you like to Do?");
        newInstance.setButton1("MARK AS WATCHED", new ViewOnClickListenerC0088l(this, drama, i2, 2));
        newInstance.setButton2("ADD TO FAVORITES", new m(17, this, drama));
        try {
            newInstance.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        final int i2 = 3;
        final int i7 = 2;
        final int i8 = 0;
        final int i9 = 1;
        super.onCreate(bundle);
        SharedPreferences sharedPreferences = App.getInstance().f14440s;
        String str = Constant.f16184b;
        this.f14602V = sharedPreferences.getString("pref_drama_host", "https://kissasiantv.to");
        setContentView(App.f14424I ? R.layout.activity_drama_home : R.layout.activity_drama_home_light);
        FragmentManager fragmentManager = getFragmentManager();
        d newInstance = d.newInstance(this, false);
        this.f14600T = newInstance;
        newInstance.setloading();
        try {
            this.f14600T.show(fragmentManager, "");
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        new Handler().postDelayed(new RunnableC1938y(this, 1), 5000L);
        this.f14603b = (ScrollView) findViewById(R.id.scrollview_drama_home);
        MaterialSearchView materialSearchView = (MaterialSearchView) findViewById(R.id.search_view);
        this.f14604e = materialSearchView;
        if (materialSearchView != null) {
            materialSearchView.setShouldKeepHistory(false);
            this.f14604e.setTintAlpha(1);
            this.f14604e.setOnQueryTextListener(new C1888C(this));
            this.f14604e.setOnItemClickListener(new C1913l(this, i9));
        }
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        if (toolbar != null) {
            setSupportActionBar(toolbar);
            getSupportActionBar().setTitle(getString(R.string.anime_label));
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        this.f14613t = (TextView) findViewById(R.id.continue_label);
        this.f14617x = (ImageView) findViewById(R.id.filter_anime_button_imageview);
        this.f14616w = (ImageView) findViewById(R.id.search_anime_button_imageview);
        this.f14615v = (ImageView) findViewById(R.id.progress_anime_button_image);
        this.f14614u = (ImageView) findViewById(R.id.anime_fav_textview_button_imageview);
        this.f14612s = (TextView) findViewById(R.id.anime_fav_textview);
        this.f14611r = (TextView) findViewById(R.id.progress_anime_textview);
        this.f14609p = (TextView) findViewById(R.id.filter_anime__textview);
        this.f14610q = (TextView) findViewById(R.id.search_anime__textview);
        this.f14608n = (RelativeLayout) findViewById(R.id.filter_anime_button);
        this.f14607m = (RelativeLayout) findViewById(R.id.search_anime_button);
        this.f14606j = (RelativeLayout) findViewById(R.id.anime_history_button);
        this.f14605f = (RelativeLayout) findViewById(R.id.anime_favorites);
        this.f14592L = (RecyclerView) findViewById(R.id.recyclerview_continue);
        this.f14593M = (RecyclerView) findViewById(R.id.recyclerview_dramma_ongoing);
        this.f14594N = (RecyclerView) findViewById(R.id.recyclerview_dramma_completed);
        this.f14595O = (RecyclerView) findViewById(R.id.recyclerview_romance);
        this.f14596P = (RecyclerView) findViewById(R.id.recyclerview_action);
        this.f14597Q = (RecyclerView) findViewById(R.id.recyclerview_mystery);
        this.f14596P = (RecyclerView) findViewById(R.id.recyclerview_action);
        this.f14598R = (RecyclerView) findViewById(R.id.recyclerview_variety_show);
        this.f14618y = new ArrayList();
        this.f14583C = new ArrayList();
        this.f14582B = new ArrayList();
        this.f14584D = new ArrayList();
        this.f14581A = new ArrayList();
        this.f14619z = new ArrayList();
        this.f14585E = new ArrayList();
        this.f14599S = new B(this.f14618y, this, this);
        this.f14589I = new C0101z(this.f14583C, this, this);
        this.f14588H = new C0101z(this.f14582B, this, this);
        this.f14590J = new C0101z(this.f14584D, this, this);
        this.f14586F = new C0101z(this.f14619z, this, this);
        this.f14591K = new C0101z(this.f14585E, this, this);
        this.f14587G = new C0101z(this.f14581A, this, this);
        this.f14598R.setLayoutManager(new CenterLayoutManager(this, 0, false));
        this.f14598R.setAdapter(this.f14591K);
        b.c.s(this.f14598R, 15);
        this.f14597Q.setLayoutManager(new CenterLayoutManager(this, 0, false));
        this.f14597Q.setAdapter(this.f14590J);
        b.c.s(this.f14597Q, 15);
        this.f14594N.setLayoutManager(new CenterLayoutManager(this, 0, false));
        this.f14594N.setAdapter(this.f14587G);
        b.c.s(this.f14594N, 15);
        this.f14595O.setLayoutManager(new CenterLayoutManager(this, 0, false));
        this.f14595O.setAdapter(this.f14588H);
        b.c.s(this.f14595O, 15);
        this.f14592L.setLayoutManager(new CenterLayoutManager(this, 0, false));
        this.f14592L.setAdapter(this.f14599S);
        b.c.s(this.f14592L, 15);
        this.f14593M.setLayoutManager(new CenterLayoutManager(this, 0, false));
        this.f14593M.setAdapter(this.f14586F);
        b.c.s(this.f14593M, 15);
        this.f14596P.setLayoutManager(new CenterLayoutManager(this, 0, false));
        this.f14596P.setAdapter(this.f14589I);
        b.c.s(this.f14596P, 15);
        if (this.f14608n != null) {
            this.f14607m.setOnClickListener(new View.OnClickListener(this) { // from class: y4.B

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ DramaHomeActivity f21109e;

                {
                    this.f21109e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DramaHomeActivity dramaHomeActivity = this.f21109e;
                    switch (i8) {
                        case 0:
                            int i10 = DramaHomeActivity.f14580W;
                            dramaHomeActivity.getClass();
                            if (!App.f14424I) {
                                dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) DramaSearchActivityMobile.class));
                                break;
                            } else {
                                dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) DramaSearchResultActivity.class));
                                break;
                            }
                        case 1:
                            int i11 = DramaHomeActivity.f14580W;
                            dramaHomeActivity.getClass();
                            dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) DramaFavoritesActivity.class));
                            break;
                        case 2:
                            int i12 = DramaHomeActivity.f14580W;
                            dramaHomeActivity.getClass();
                            dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) DramaHistoryActivity.class));
                            break;
                        default:
                            int i13 = DramaHomeActivity.f14580W;
                            dramaHomeActivity.getClass();
                            dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) AbstractActivityC1936x.class));
                            break;
                    }
                }
            });
            this.f14605f.setOnClickListener(new View.OnClickListener(this) { // from class: y4.B

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ DramaHomeActivity f21109e;

                {
                    this.f21109e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DramaHomeActivity dramaHomeActivity = this.f21109e;
                    switch (i9) {
                        case 0:
                            int i10 = DramaHomeActivity.f14580W;
                            dramaHomeActivity.getClass();
                            if (!App.f14424I) {
                                dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) DramaSearchActivityMobile.class));
                                break;
                            } else {
                                dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) DramaSearchResultActivity.class));
                                break;
                            }
                        case 1:
                            int i11 = DramaHomeActivity.f14580W;
                            dramaHomeActivity.getClass();
                            dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) DramaFavoritesActivity.class));
                            break;
                        case 2:
                            int i12 = DramaHomeActivity.f14580W;
                            dramaHomeActivity.getClass();
                            dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) DramaHistoryActivity.class));
                            break;
                        default:
                            int i13 = DramaHomeActivity.f14580W;
                            dramaHomeActivity.getClass();
                            dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) AbstractActivityC1936x.class));
                            break;
                    }
                }
            });
            this.f14606j.setOnClickListener(new View.OnClickListener(this) { // from class: y4.B

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ DramaHomeActivity f21109e;

                {
                    this.f21109e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DramaHomeActivity dramaHomeActivity = this.f21109e;
                    switch (i7) {
                        case 0:
                            int i10 = DramaHomeActivity.f14580W;
                            dramaHomeActivity.getClass();
                            if (!App.f14424I) {
                                dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) DramaSearchActivityMobile.class));
                                break;
                            } else {
                                dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) DramaSearchResultActivity.class));
                                break;
                            }
                        case 1:
                            int i11 = DramaHomeActivity.f14580W;
                            dramaHomeActivity.getClass();
                            dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) DramaFavoritesActivity.class));
                            break;
                        case 2:
                            int i12 = DramaHomeActivity.f14580W;
                            dramaHomeActivity.getClass();
                            dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) DramaHistoryActivity.class));
                            break;
                        default:
                            int i13 = DramaHomeActivity.f14580W;
                            dramaHomeActivity.getClass();
                            dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) AbstractActivityC1936x.class));
                            break;
                    }
                }
            });
            this.f14608n.setOnClickListener(new View.OnClickListener(this) { // from class: y4.B

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ DramaHomeActivity f21109e;

                {
                    this.f21109e = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DramaHomeActivity dramaHomeActivity = this.f21109e;
                    switch (i2) {
                        case 0:
                            int i10 = DramaHomeActivity.f14580W;
                            dramaHomeActivity.getClass();
                            if (!App.f14424I) {
                                dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) DramaSearchActivityMobile.class));
                                break;
                            } else {
                                dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) DramaSearchResultActivity.class));
                                break;
                            }
                        case 1:
                            int i11 = DramaHomeActivity.f14580W;
                            dramaHomeActivity.getClass();
                            dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) DramaFavoritesActivity.class));
                            break;
                        case 2:
                            int i12 = DramaHomeActivity.f14580W;
                            dramaHomeActivity.getClass();
                            dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) DramaHistoryActivity.class));
                            break;
                        default:
                            int i13 = DramaHomeActivity.f14580W;
                            dramaHomeActivity.getClass();
                            dramaHomeActivity.startActivity(new Intent(dramaHomeActivity, (Class<?>) AbstractActivityC1936x.class));
                            break;
                    }
                }
            });
        }
        RelativeLayout relativeLayout = this.f14608n;
        if (relativeLayout != null) {
            relativeLayout.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: y4.z

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ DramaHomeActivity f21318e;

                {
                    this.f21318e = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z6) {
                    switch (i2) {
                        case 0:
                            DramaHomeActivity dramaHomeActivity = this.f21318e;
                            if (!z6) {
                                dramaHomeActivity.f14614u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity.f14612s.setTextColor(dramaHomeActivity.getResources().getColor(R.color.white));
                                dramaHomeActivity.f14605f.animate().scaleX(1.0f).start();
                                dramaHomeActivity.f14605f.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                dramaHomeActivity.f14614u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity.f14612s.setTextColor(dramaHomeActivity.getResources().getColor(R.color.black));
                                b.c.r(dramaHomeActivity.f14605f, 100L, 1.03f);
                                b.c.w(dramaHomeActivity.f14605f, 100L, 1.03f);
                                break;
                            }
                        case 1:
                            DramaHomeActivity dramaHomeActivity2 = this.f21318e;
                            if (!z6) {
                                dramaHomeActivity2.f14615v.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity2, R.color.white), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity2.f14611r.setTextColor(dramaHomeActivity2.getResources().getColor(R.color.white));
                                dramaHomeActivity2.f14606j.animate().scaleX(1.0f).start();
                                dramaHomeActivity2.f14606j.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                dramaHomeActivity2.f14615v.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity2, R.color.black), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity2.f14611r.setTextColor(dramaHomeActivity2.getResources().getColor(R.color.black));
                                b.c.r(dramaHomeActivity2.f14606j, 100L, 1.03f);
                                b.c.w(dramaHomeActivity2.f14606j, 100L, 1.03f);
                                break;
                            }
                        case 2:
                            DramaHomeActivity dramaHomeActivity3 = this.f21318e;
                            if (!z6) {
                                dramaHomeActivity3.f14616w.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity3, R.color.white), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity3.f14610q.setTextColor(dramaHomeActivity3.getResources().getColor(R.color.white));
                                dramaHomeActivity3.f14607m.animate().scaleX(1.0f).start();
                                dramaHomeActivity3.f14607m.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                dramaHomeActivity3.f14616w.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity3, R.color.black), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity3.f14610q.setTextColor(dramaHomeActivity3.getResources().getColor(R.color.black));
                                b.c.r(dramaHomeActivity3.f14607m, 100L, 1.03f);
                                b.c.w(dramaHomeActivity3.f14607m, 100L, 1.03f);
                                break;
                            }
                        default:
                            DramaHomeActivity dramaHomeActivity4 = this.f21318e;
                            if (!z6) {
                                dramaHomeActivity4.f14617x.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity4, R.color.white), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity4.f14609p.setTextColor(dramaHomeActivity4.getResources().getColor(R.color.white));
                                dramaHomeActivity4.f14608n.animate().scaleX(1.0f).start();
                                dramaHomeActivity4.f14608n.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                dramaHomeActivity4.f14617x.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity4, R.color.black), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity4.f14609p.setTextColor(dramaHomeActivity4.getResources().getColor(R.color.black));
                                b.c.r(dramaHomeActivity4.f14608n, 100L, 1.03f);
                                b.c.w(dramaHomeActivity4.f14608n, 100L, 1.03f);
                                break;
                            }
                    }
                }
            });
        }
        RelativeLayout relativeLayout2 = this.f14605f;
        if (relativeLayout2 != null) {
            relativeLayout2.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: y4.z

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ DramaHomeActivity f21318e;

                {
                    this.f21318e = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z6) {
                    switch (i8) {
                        case 0:
                            DramaHomeActivity dramaHomeActivity = this.f21318e;
                            if (!z6) {
                                dramaHomeActivity.f14614u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity.f14612s.setTextColor(dramaHomeActivity.getResources().getColor(R.color.white));
                                dramaHomeActivity.f14605f.animate().scaleX(1.0f).start();
                                dramaHomeActivity.f14605f.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                dramaHomeActivity.f14614u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity.f14612s.setTextColor(dramaHomeActivity.getResources().getColor(R.color.black));
                                b.c.r(dramaHomeActivity.f14605f, 100L, 1.03f);
                                b.c.w(dramaHomeActivity.f14605f, 100L, 1.03f);
                                break;
                            }
                        case 1:
                            DramaHomeActivity dramaHomeActivity2 = this.f21318e;
                            if (!z6) {
                                dramaHomeActivity2.f14615v.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity2, R.color.white), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity2.f14611r.setTextColor(dramaHomeActivity2.getResources().getColor(R.color.white));
                                dramaHomeActivity2.f14606j.animate().scaleX(1.0f).start();
                                dramaHomeActivity2.f14606j.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                dramaHomeActivity2.f14615v.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity2, R.color.black), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity2.f14611r.setTextColor(dramaHomeActivity2.getResources().getColor(R.color.black));
                                b.c.r(dramaHomeActivity2.f14606j, 100L, 1.03f);
                                b.c.w(dramaHomeActivity2.f14606j, 100L, 1.03f);
                                break;
                            }
                        case 2:
                            DramaHomeActivity dramaHomeActivity3 = this.f21318e;
                            if (!z6) {
                                dramaHomeActivity3.f14616w.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity3, R.color.white), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity3.f14610q.setTextColor(dramaHomeActivity3.getResources().getColor(R.color.white));
                                dramaHomeActivity3.f14607m.animate().scaleX(1.0f).start();
                                dramaHomeActivity3.f14607m.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                dramaHomeActivity3.f14616w.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity3, R.color.black), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity3.f14610q.setTextColor(dramaHomeActivity3.getResources().getColor(R.color.black));
                                b.c.r(dramaHomeActivity3.f14607m, 100L, 1.03f);
                                b.c.w(dramaHomeActivity3.f14607m, 100L, 1.03f);
                                break;
                            }
                        default:
                            DramaHomeActivity dramaHomeActivity4 = this.f21318e;
                            if (!z6) {
                                dramaHomeActivity4.f14617x.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity4, R.color.white), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity4.f14609p.setTextColor(dramaHomeActivity4.getResources().getColor(R.color.white));
                                dramaHomeActivity4.f14608n.animate().scaleX(1.0f).start();
                                dramaHomeActivity4.f14608n.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                dramaHomeActivity4.f14617x.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity4, R.color.black), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity4.f14609p.setTextColor(dramaHomeActivity4.getResources().getColor(R.color.black));
                                b.c.r(dramaHomeActivity4.f14608n, 100L, 1.03f);
                                b.c.w(dramaHomeActivity4.f14608n, 100L, 1.03f);
                                break;
                            }
                    }
                }
            });
        }
        RelativeLayout relativeLayout3 = this.f14606j;
        if (relativeLayout3 != null) {
            relativeLayout3.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: y4.z

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ DramaHomeActivity f21318e;

                {
                    this.f21318e = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z6) {
                    switch (i9) {
                        case 0:
                            DramaHomeActivity dramaHomeActivity = this.f21318e;
                            if (!z6) {
                                dramaHomeActivity.f14614u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity.f14612s.setTextColor(dramaHomeActivity.getResources().getColor(R.color.white));
                                dramaHomeActivity.f14605f.animate().scaleX(1.0f).start();
                                dramaHomeActivity.f14605f.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                dramaHomeActivity.f14614u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity.f14612s.setTextColor(dramaHomeActivity.getResources().getColor(R.color.black));
                                b.c.r(dramaHomeActivity.f14605f, 100L, 1.03f);
                                b.c.w(dramaHomeActivity.f14605f, 100L, 1.03f);
                                break;
                            }
                        case 1:
                            DramaHomeActivity dramaHomeActivity2 = this.f21318e;
                            if (!z6) {
                                dramaHomeActivity2.f14615v.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity2, R.color.white), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity2.f14611r.setTextColor(dramaHomeActivity2.getResources().getColor(R.color.white));
                                dramaHomeActivity2.f14606j.animate().scaleX(1.0f).start();
                                dramaHomeActivity2.f14606j.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                dramaHomeActivity2.f14615v.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity2, R.color.black), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity2.f14611r.setTextColor(dramaHomeActivity2.getResources().getColor(R.color.black));
                                b.c.r(dramaHomeActivity2.f14606j, 100L, 1.03f);
                                b.c.w(dramaHomeActivity2.f14606j, 100L, 1.03f);
                                break;
                            }
                        case 2:
                            DramaHomeActivity dramaHomeActivity3 = this.f21318e;
                            if (!z6) {
                                dramaHomeActivity3.f14616w.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity3, R.color.white), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity3.f14610q.setTextColor(dramaHomeActivity3.getResources().getColor(R.color.white));
                                dramaHomeActivity3.f14607m.animate().scaleX(1.0f).start();
                                dramaHomeActivity3.f14607m.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                dramaHomeActivity3.f14616w.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity3, R.color.black), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity3.f14610q.setTextColor(dramaHomeActivity3.getResources().getColor(R.color.black));
                                b.c.r(dramaHomeActivity3.f14607m, 100L, 1.03f);
                                b.c.w(dramaHomeActivity3.f14607m, 100L, 1.03f);
                                break;
                            }
                        default:
                            DramaHomeActivity dramaHomeActivity4 = this.f21318e;
                            if (!z6) {
                                dramaHomeActivity4.f14617x.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity4, R.color.white), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity4.f14609p.setTextColor(dramaHomeActivity4.getResources().getColor(R.color.white));
                                dramaHomeActivity4.f14608n.animate().scaleX(1.0f).start();
                                dramaHomeActivity4.f14608n.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                dramaHomeActivity4.f14617x.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity4, R.color.black), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity4.f14609p.setTextColor(dramaHomeActivity4.getResources().getColor(R.color.black));
                                b.c.r(dramaHomeActivity4.f14608n, 100L, 1.03f);
                                b.c.w(dramaHomeActivity4.f14608n, 100L, 1.03f);
                                break;
                            }
                    }
                }
            });
        }
        RelativeLayout relativeLayout4 = this.f14607m;
        if (relativeLayout4 != null) {
            relativeLayout4.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: y4.z

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ DramaHomeActivity f21318e;

                {
                    this.f21318e = this;
                }

                @Override // android.view.View.OnFocusChangeListener
                public final void onFocusChange(View view, boolean z6) {
                    switch (i7) {
                        case 0:
                            DramaHomeActivity dramaHomeActivity = this.f21318e;
                            if (!z6) {
                                dramaHomeActivity.f14614u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity.f14612s.setTextColor(dramaHomeActivity.getResources().getColor(R.color.white));
                                dramaHomeActivity.f14605f.animate().scaleX(1.0f).start();
                                dramaHomeActivity.f14605f.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                dramaHomeActivity.f14614u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity.f14612s.setTextColor(dramaHomeActivity.getResources().getColor(R.color.black));
                                b.c.r(dramaHomeActivity.f14605f, 100L, 1.03f);
                                b.c.w(dramaHomeActivity.f14605f, 100L, 1.03f);
                                break;
                            }
                        case 1:
                            DramaHomeActivity dramaHomeActivity2 = this.f21318e;
                            if (!z6) {
                                dramaHomeActivity2.f14615v.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity2, R.color.white), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity2.f14611r.setTextColor(dramaHomeActivity2.getResources().getColor(R.color.white));
                                dramaHomeActivity2.f14606j.animate().scaleX(1.0f).start();
                                dramaHomeActivity2.f14606j.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                dramaHomeActivity2.f14615v.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity2, R.color.black), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity2.f14611r.setTextColor(dramaHomeActivity2.getResources().getColor(R.color.black));
                                b.c.r(dramaHomeActivity2.f14606j, 100L, 1.03f);
                                b.c.w(dramaHomeActivity2.f14606j, 100L, 1.03f);
                                break;
                            }
                        case 2:
                            DramaHomeActivity dramaHomeActivity3 = this.f21318e;
                            if (!z6) {
                                dramaHomeActivity3.f14616w.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity3, R.color.white), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity3.f14610q.setTextColor(dramaHomeActivity3.getResources().getColor(R.color.white));
                                dramaHomeActivity3.f14607m.animate().scaleX(1.0f).start();
                                dramaHomeActivity3.f14607m.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                dramaHomeActivity3.f14616w.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity3, R.color.black), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity3.f14610q.setTextColor(dramaHomeActivity3.getResources().getColor(R.color.black));
                                b.c.r(dramaHomeActivity3.f14607m, 100L, 1.03f);
                                b.c.w(dramaHomeActivity3.f14607m, 100L, 1.03f);
                                break;
                            }
                        default:
                            DramaHomeActivity dramaHomeActivity4 = this.f21318e;
                            if (!z6) {
                                dramaHomeActivity4.f14617x.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity4, R.color.white), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity4.f14609p.setTextColor(dramaHomeActivity4.getResources().getColor(R.color.white));
                                dramaHomeActivity4.f14608n.animate().scaleX(1.0f).start();
                                dramaHomeActivity4.f14608n.animate().scaleY(1.0f).start();
                                break;
                            } else {
                                dramaHomeActivity4.f14617x.setColorFilter(new PorterDuffColorFilter(A.h.getColor(dramaHomeActivity4, R.color.black), PorterDuff.Mode.SRC_IN));
                                dramaHomeActivity4.f14609p.setTextColor(dramaHomeActivity4.getResources().getColor(R.color.black));
                                b.c.r(dramaHomeActivity4.f14608n, 100L, 1.03f);
                                b.c.w(dramaHomeActivity4.f14608n, 100L, 1.03f);
                                break;
                            }
                    }
                }
            });
        }
        f();
        g(DRAMA_TYPE.f14620b, this.f14602V + "/drama-list/ongoing.html");
        g(DRAMA_TYPE.f14625n, this.f14602V + "/drama-list/completed.html");
        g(DRAMA_TYPE.f14621e, this.f14602V + "/genre/action/");
        g(DRAMA_TYPE.f14622f, this.f14602V + "/genre/mystery/");
        g(DRAMA_TYPE.f14624m, this.f14602V + "/genre/romance/");
        g(DRAMA_TYPE.f14623j, this.f14602V + "/genre/variety-show/");
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, android.app.Activity
    public void onResume() {
        super.onResume();
        f();
    }

    @Override // U4.e
    public void openDrama(Drama drama) {
        Intent intent = new Intent(this, (Class<?>) DramaDetailActivity.class);
        intent.putExtra("drama", drama);
        intent.setFlags(268435456);
        startActivity(intent);
    }

    @Override // U4.e
    public void removeDramaFromFavorites(Drama drama) {
    }
}
