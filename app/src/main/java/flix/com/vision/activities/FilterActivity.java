package flix.com.vision.activities;

import C4.P;
import T4.f;
import T4.k;
import U4.j;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.media3.exoplayer.ExoPlayer;
import com.malinskiy.superrecyclerview.SuperRecyclerView;
import d4.InterfaceC0807a;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.FilterActivity;
import flix.com.vision.helpers.CenterGridLayoutManager;
import flix.com.vision.models.Genre;
import flix.com.vision.models.Movie;
import flix.com.vision.models.tmdb.Network;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Iterator;
import x4.C1851d;
import y4.O;

/* loaded from: classes2.dex */
public class FilterActivity extends flix.com.vision.activities.base.a implements j, InterfaceC0807a {

    /* renamed from: O, reason: collision with root package name */
    public static final /* synthetic */ int f14667O = 0;

    /* renamed from: C, reason: collision with root package name */
    public SuperRecyclerView f14670C;

    /* renamed from: D, reason: collision with root package name */
    public TextView f14671D;

    /* renamed from: E, reason: collision with root package name */
    public TextView f14672E;

    /* renamed from: F, reason: collision with root package name */
    public TextView f14673F;

    /* renamed from: G, reason: collision with root package name */
    public TextView f14674G;

    /* renamed from: H, reason: collision with root package name */
    public TextView f14675H;

    /* renamed from: I, reason: collision with root package name */
    public P f14676I;

    /* renamed from: L, reason: collision with root package name */
    public Disposable f14679L;

    /* renamed from: M, reason: collision with root package name */
    public boolean f14680M;

    /* renamed from: N, reason: collision with root package name */
    public int f14681N;

    /* renamed from: f, reason: collision with root package name */
    public String[] f14684f;

    /* renamed from: j, reason: collision with root package name */
    public String[] f14685j;

    /* renamed from: m, reason: collision with root package name */
    public String[] f14686m;

    /* renamed from: n, reason: collision with root package name */
    public String[] f14687n;

    /* renamed from: p, reason: collision with root package name */
    public String[] f14688p;

    /* renamed from: q, reason: collision with root package name */
    public String[] f14689q;

    /* renamed from: w, reason: collision with root package name */
    public RelativeLayout f14695w;

    /* renamed from: y, reason: collision with root package name */
    public ArrayList f14697y;

    /* renamed from: z, reason: collision with root package name */
    public String f14698z;

    /* renamed from: b, reason: collision with root package name */
    public int f14682b = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f14683e = 0;

    /* renamed from: r, reason: collision with root package name */
    public final ArrayList f14690r = new ArrayList();

    /* renamed from: s, reason: collision with root package name */
    public int f14691s = 0;

    /* renamed from: t, reason: collision with root package name */
    public int f14692t = 0;

    /* renamed from: u, reason: collision with root package name */
    public int f14693u = 0;

    /* renamed from: v, reason: collision with root package name */
    public String f14694v = "";

    /* renamed from: x, reason: collision with root package name */
    public boolean f14696x = false;

    /* renamed from: A, reason: collision with root package name */
    public int f14668A = 0;

    /* renamed from: B, reason: collision with root package name */
    public int f14669B = -1;

    /* renamed from: J, reason: collision with root package name */
    public String f14677J = "popularity.desc";

    /* renamed from: K, reason: collision with root package name */
    public int f14678K = 1;

    public final void e(int i2) {
        this.f14670C.setupMoreListener(this, 20);
        Disposable disposable = this.f14679L;
        if (disposable != null) {
            disposable.dispose();
        }
        this.f14679L = D4.a.getItemsByGenres(this, String.valueOf(this.f14682b), i2, this.f14683e, this.f14693u > 0 ? this.f14694v : null, this.f14677J, this.f14669B, null).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new E4.c(this, 11), new C1851d(5));
    }

    @Override // U4.j
    public void favoriteDeleted(int i2) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f14680M) {
            this.f14680M = false;
            super.onBackPressed();
            return;
        }
        Toast.makeText(getBaseContext(), "Press again to go back...", 0).show();
        if (this.f14690r.size() < 200) {
            this.f14670C.getRecyclerView().smoothScrollToPosition(0);
        } else {
            this.f14670C.getRecyclerView().scrollToPosition(0);
        }
        this.f14680M = true;
        this.f14670C.clearFocus();
        this.f14674G.requestFocus();
        new Handler().postDelayed(new O(this, 1), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    @Override // flix.com.vision.activities.base.a, androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        final int i2 = 0;
        final int i7 = 1;
        super.onCreate(bundle);
        setContentView(R.layout.activity_filter_main);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList.add("All");
        arrayList2.add("All");
        Iterator<Genre> it = f.getMovieCategories().iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().name);
        }
        Iterator<Genre> it2 = f.getSeriesCategories().iterator();
        while (it2.hasNext()) {
            arrayList2.add(it2.next().name);
        }
        this.f14684f = (String[]) arrayList.toArray(new String[0]);
        this.f14685j = (String[]) arrayList2.toArray(new String[0]);
        this.f14686m = new String[]{"Popularity", "Release Date"};
        this.f14688p = new String[]{"Movies", "Series"};
        this.f14687n = getResources().getStringArray(R.array.years);
        this.f14689q = new String[]{"All", "Netflix", "Disney+", "Prime Video", "Apple TV+", "Paramount+", "HBO Max", "Hulu", "Starz", "Bollywood", "Discovery+", "ABC", "CBS", "AMC", "Peacock", "Marvel Studios", "BET+", "BritBox"};
        ArrayList arrayList3 = new ArrayList();
        this.f14697y = arrayList3;
        arrayList3.add(new Network(-1, "All", null, -1));
        this.f14697y.addAll(f.getNetworks());
        this.f14695w = (RelativeLayout) findViewById(R.id.activity_player);
        this.f14675H = (TextView) findViewById(R.id.network_button);
        this.f14670C = (SuperRecyclerView) findViewById(R.id.recyclerview_cast);
        this.f14673F = (TextView) findViewById(R.id.sort_by_button);
        this.f14672E = (TextView) findViewById(R.id.year_button);
        this.f14671D = (TextView) findViewById(R.id.genres_button);
        this.f14674G = (TextView) findViewById(R.id.type_button);
        this.f14672E.setOnClickListener(new View.OnClickListener(this) { // from class: y4.M

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ FilterActivity f21143e;

            {
                this.f21143e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final int i8 = 0;
                final FilterActivity filterActivity = this.f21143e;
                switch (i2) {
                    case 0:
                        int i9 = FilterActivity.f14667O;
                        e.r rVar = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i10 = 2;
                        rVar.setSingleChoiceItems(filterActivity.f14687n, filterActivity.f14693u, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i11) {
                                int i12;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i10) {
                                    case 0:
                                        int i13 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i11) {
                                            if (i11 == 0 && (i12 = filterActivity2.f14669B) != 999 && i12 != 9999 && i12 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i11]);
                                                filterActivity2.f14691s = i11;
                                                filterActivity2.f14683e = i11;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i11 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i14 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i11 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i11];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i11 > 0) {
                                                        i11--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i11).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i11];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i11 > 0) {
                                                        i11--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i11).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i15 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i11) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i11]);
                                                filterActivity2.f14693u = i11;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i11]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i16 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i11) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i11]);
                                                filterActivity2.f14668A = i11;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i11)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i11)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i17 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i11) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i11]);
                                                filterActivity2.f14692t = i11;
                                                filterActivity2.f14677J = i11 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar.show();
                        break;
                    case 1:
                        int i11 = FilterActivity.f14667O;
                        e.r rVar2 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i12 = 1;
                        rVar2.setSingleChoiceItems(filterActivity.f14683e == 0 ? filterActivity.f14684f : filterActivity.f14685j, 0, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i12) {
                                    case 0:
                                        int i13 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i14 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i15 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i16 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i17 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar2.show();
                        break;
                    case 2:
                        int i13 = FilterActivity.f14667O;
                        e.r rVar3 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        rVar3.setSingleChoiceItems(filterActivity.f14688p, filterActivity.f14691s, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i8) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i14 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i15 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i16 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i17 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar3.show();
                        break;
                    case 3:
                        int i14 = FilterActivity.f14667O;
                        e.r rVar4 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i15 = 3;
                        rVar4.setSingleChoiceItems(filterActivity.f14689q, filterActivity.f14668A, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i15) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i16 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i17 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar4.show();
                        break;
                    default:
                        int i16 = FilterActivity.f14667O;
                        e.r rVar5 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i17 = 4;
                        rVar5.setSingleChoiceItems(filterActivity.f14686m, filterActivity.f14692t, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i17) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar5.show();
                        break;
                }
            }
        });
        this.f14671D.setOnClickListener(new View.OnClickListener(this) { // from class: y4.M

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ FilterActivity f21143e;

            {
                this.f21143e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final int i8 = 0;
                final FilterActivity filterActivity = this.f21143e;
                switch (i7) {
                    case 0:
                        int i9 = FilterActivity.f14667O;
                        e.r rVar = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i10 = 2;
                        rVar.setSingleChoiceItems(filterActivity.f14687n, filterActivity.f14693u, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i10) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar.show();
                        break;
                    case 1:
                        int i11 = FilterActivity.f14667O;
                        e.r rVar2 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i12 = 1;
                        rVar2.setSingleChoiceItems(filterActivity.f14683e == 0 ? filterActivity.f14684f : filterActivity.f14685j, 0, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i12) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar2.show();
                        break;
                    case 2:
                        int i13 = FilterActivity.f14667O;
                        e.r rVar3 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        rVar3.setSingleChoiceItems(filterActivity.f14688p, filterActivity.f14691s, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i8) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar3.show();
                        break;
                    case 3:
                        int i14 = FilterActivity.f14667O;
                        e.r rVar4 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i15 = 3;
                        rVar4.setSingleChoiceItems(filterActivity.f14689q, filterActivity.f14668A, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i15) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar4.show();
                        break;
                    default:
                        int i16 = FilterActivity.f14667O;
                        e.r rVar5 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i17 = 4;
                        rVar5.setSingleChoiceItems(filterActivity.f14686m, filterActivity.f14692t, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i17) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar5.show();
                        break;
                }
            }
        });
        final int i8 = 2;
        this.f14674G.setOnClickListener(new View.OnClickListener(this) { // from class: y4.M

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ FilterActivity f21143e;

            {
                this.f21143e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final int i82 = 0;
                final FilterActivity filterActivity = this.f21143e;
                switch (i8) {
                    case 0:
                        int i9 = FilterActivity.f14667O;
                        e.r rVar = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i10 = 2;
                        rVar.setSingleChoiceItems(filterActivity.f14687n, filterActivity.f14693u, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i10) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar.show();
                        break;
                    case 1:
                        int i11 = FilterActivity.f14667O;
                        e.r rVar2 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i12 = 1;
                        rVar2.setSingleChoiceItems(filterActivity.f14683e == 0 ? filterActivity.f14684f : filterActivity.f14685j, 0, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i12) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar2.show();
                        break;
                    case 2:
                        int i13 = FilterActivity.f14667O;
                        e.r rVar3 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        rVar3.setSingleChoiceItems(filterActivity.f14688p, filterActivity.f14691s, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i82) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar3.show();
                        break;
                    case 3:
                        int i14 = FilterActivity.f14667O;
                        e.r rVar4 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i15 = 3;
                        rVar4.setSingleChoiceItems(filterActivity.f14689q, filterActivity.f14668A, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i15) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar4.show();
                        break;
                    default:
                        int i16 = FilterActivity.f14667O;
                        e.r rVar5 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i17 = 4;
                        rVar5.setSingleChoiceItems(filterActivity.f14686m, filterActivity.f14692t, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i17) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar5.show();
                        break;
                }
            }
        });
        final int i9 = 3;
        this.f14675H.setOnClickListener(new View.OnClickListener(this) { // from class: y4.M

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ FilterActivity f21143e;

            {
                this.f21143e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final int i82 = 0;
                final FilterActivity filterActivity = this.f21143e;
                switch (i9) {
                    case 0:
                        int i92 = FilterActivity.f14667O;
                        e.r rVar = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i10 = 2;
                        rVar.setSingleChoiceItems(filterActivity.f14687n, filterActivity.f14693u, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i10) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar.show();
                        break;
                    case 1:
                        int i11 = FilterActivity.f14667O;
                        e.r rVar2 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i12 = 1;
                        rVar2.setSingleChoiceItems(filterActivity.f14683e == 0 ? filterActivity.f14684f : filterActivity.f14685j, 0, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i12) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar2.show();
                        break;
                    case 2:
                        int i13 = FilterActivity.f14667O;
                        e.r rVar3 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        rVar3.setSingleChoiceItems(filterActivity.f14688p, filterActivity.f14691s, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i82) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar3.show();
                        break;
                    case 3:
                        int i14 = FilterActivity.f14667O;
                        e.r rVar4 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i15 = 3;
                        rVar4.setSingleChoiceItems(filterActivity.f14689q, filterActivity.f14668A, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i15) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar4.show();
                        break;
                    default:
                        int i16 = FilterActivity.f14667O;
                        e.r rVar5 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i17 = 4;
                        rVar5.setSingleChoiceItems(filterActivity.f14686m, filterActivity.f14692t, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i17) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar5.show();
                        break;
                }
            }
        });
        final int i10 = 4;
        this.f14673F.setOnClickListener(new View.OnClickListener(this) { // from class: y4.M

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ FilterActivity f21143e;

            {
                this.f21143e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final int i82 = 0;
                final FilterActivity filterActivity = this.f21143e;
                switch (i10) {
                    case 0:
                        int i92 = FilterActivity.f14667O;
                        e.r rVar = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i102 = 2;
                        rVar.setSingleChoiceItems(filterActivity.f14687n, filterActivity.f14693u, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i102) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar.show();
                        break;
                    case 1:
                        int i11 = FilterActivity.f14667O;
                        e.r rVar2 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i12 = 1;
                        rVar2.setSingleChoiceItems(filterActivity.f14683e == 0 ? filterActivity.f14684f : filterActivity.f14685j, 0, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i12) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar2.show();
                        break;
                    case 2:
                        int i13 = FilterActivity.f14667O;
                        e.r rVar3 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        rVar3.setSingleChoiceItems(filterActivity.f14688p, filterActivity.f14691s, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i82) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar3.show();
                        break;
                    case 3:
                        int i14 = FilterActivity.f14667O;
                        e.r rVar4 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i15 = 3;
                        rVar4.setSingleChoiceItems(filterActivity.f14689q, filterActivity.f14668A, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i15) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar4.show();
                        break;
                    default:
                        int i16 = FilterActivity.f14667O;
                        e.r rVar5 = new e.r(new ContextThemeWrapper(filterActivity, R.style.AlertDialogCustom));
                        final int i17 = 4;
                        rVar5.setSingleChoiceItems(filterActivity.f14686m, filterActivity.f14692t, new DialogInterface.OnClickListener() { // from class: y4.N
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i112) {
                                int i122;
                                String str;
                                FilterActivity filterActivity2 = filterActivity;
                                switch (i17) {
                                    case 0:
                                        int i132 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14691s != i112) {
                                            if (i112 == 0 && (i122 = filterActivity2.f14669B) != 999 && i122 != 9999 && i122 != 99999) {
                                                try {
                                                    filterActivity2.f14668A = 0;
                                                    filterActivity2.f14675H.setText(filterActivity2.f14689q[0]);
                                                    filterActivity2.f14669B = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivity2.f14674G.setText(filterActivity2.f14688p[i112]);
                                                filterActivity2.f14691s = i112;
                                                filterActivity2.f14683e = i112;
                                                filterActivity2.f14682b = 0;
                                                filterActivity2.f14671D.setText(i112 == 0 ? filterActivity2.f14684f[0] : filterActivity2.f14685j[0]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i142 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (i112 != 0) {
                                            try {
                                                if (filterActivity2.f14683e == 0) {
                                                    str = filterActivity2.f14684f[i112];
                                                    ArrayList<Genre> movieCategories = T4.f.getMovieCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = movieCategories.get(i112).id;
                                                } else {
                                                    str = filterActivity2.f14685j[i112];
                                                    ArrayList<Genre> seriesCategories = T4.f.getSeriesCategories();
                                                    if (i112 > 0) {
                                                        i112--;
                                                    }
                                                    filterActivity2.f14682b = seriesCategories.get(i112).id;
                                                }
                                                filterActivity2.f14671D.setText(str);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i152 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14693u != i112) {
                                            try {
                                                filterActivity2.f14672E.setText(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14693u = i112;
                                                filterActivity2.f14694v = String.valueOf(filterActivity2.f14687n[i112]);
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i162 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14668A != i112) {
                                            try {
                                                filterActivity2.f14675H.setText("Network: " + filterActivity2.f14689q[i112]);
                                                filterActivity2.f14668A = i112;
                                                filterActivity2.f14669B = ((Network) filterActivity2.f14697y.get(i112)).id;
                                                String str2 = ((Network) filterActivity2.f14697y.get(i112)).name;
                                                filterActivity2.f14698z = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivity2.f14698z.equals("ABC") || filterActivity2.f14698z.equals("CBS") || filterActivity2.f14698z.equals("Discovery+") || filterActivity2.f14698z.equals("HBO Max") || filterActivity2.f14698z.equals("BET+") || filterActivity2.f14698z.equals("BritBox"))) {
                                                    filterActivity2.f14691s = 1;
                                                    filterActivity2.f14674G.setText(filterActivity2.f14688p[1]);
                                                    filterActivity2.f14683e = 1;
                                                    filterActivity2.f14682b = 0;
                                                    filterActivity2.f14671D.setText(filterActivity2.f14685j[0]);
                                                }
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i172 = FilterActivity.f14667O;
                                        dialogInterface.dismiss();
                                        if (filterActivity2.f14692t != i112) {
                                            try {
                                                filterActivity2.f14673F.setText(filterActivity2.f14686m[i112]);
                                                filterActivity2.f14692t = i112;
                                                filterActivity2.f14677J = i112 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivity2.f14696x = true;
                                                filterActivity2.f14678K = 1;
                                                filterActivity2.e(1);
                                                break;
                                            } catch (Exception unused6) {
                                                return;
                                            }
                                        }
                                        break;
                                }
                            }
                        });
                        rVar5.show();
                        break;
                }
            }
        });
        this.f14671D.requestFocus();
        int round = Math.round((b.c.d(getWindowManager().getDefaultDisplay()).widthPixels / getResources().getDisplayMetrics().density) / 140);
        this.f14670C.addItemDecoration(new k(App.f14424I ? 12 : 8));
        this.f14676I = new P(getBaseContext(), this.f14690r, this, 0, this, null);
        this.f14670C.setLayoutManager(new CenterGridLayoutManager(this, round));
        this.f14670C.addItemDecoration(new k(8));
        this.f14670C.setAdapter(this.f14676I);
        AssetManager assets = getAssets();
        String str = Constant.f16184b;
        Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        new C0996j();
        int intExtra = getIntent().getIntExtra("network", -1);
        this.f14669B = intExtra;
        if (intExtra != -1 || this.f14698z == null) {
            while (i2 < this.f14697y.size()) {
                if (((Network) this.f14697y.get(i2)).id == this.f14669B) {
                    this.f14668A = i2;
                    this.f14675H.setText(((Network) this.f14697y.get(i2)).name);
                    this.f14698z = ((Network) this.f14697y.get(i2)).name;
                }
                i2++;
            }
            String str2 = this.f14698z;
            if (str2 != null && (str2.equals("AMC") || this.f14698z.equals("ABC") || this.f14698z.equals("CBS") || this.f14698z.equals("Discovery+") || this.f14698z.equals("HBO Max") || this.f14698z.equals("BET+") || this.f14698z.equals("BritBox"))) {
                this.f14691s = 1;
                this.f14674G.setText(this.f14688p[1]);
                this.f14683e = 1;
            }
        }
        setBackgroundColor();
        e(this.f14678K);
    }

    @Override // U4.j
    public void onMediaSelected(Movie movie) {
        Intent intent = new Intent(this, (Class<?>) MovieDetailActivity.class);
        intent.putExtra("movie", movie);
        intent.setFlags(268435456);
        startActivity(intent);
    }

    @Override // d4.InterfaceC0807a
    public void onMoreAsked(int i2, int i7, int i8) {
        this.f14678K++;
        new Handler().postDelayed(new O(this, 0), 200L);
    }

    public void setBackgroundColor() {
        this.f14681N = 2505092;
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.f14681N), 0);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 14));
        ofObject.start();
        this.f14681N = 0;
    }
}
