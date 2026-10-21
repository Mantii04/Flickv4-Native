package flix.com.vision.activities.leanback;

import A3.d;
import A4.g;
import A4.h;
import C4.P;
import D4.a;
import T4.f;
import T4.k;
import U4.j;
import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.fragment.app.H;
import androidx.leanback.widget.VerticalGridView;
import androidx.media3.exoplayer.ExoPlayer;
import b.c;
import com.google.gson.JsonElement;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.activities.MovieDetailActivityLeanBack;
import flix.com.vision.activities.leanback.FilterActivityLeanBack;
import flix.com.vision.models.Genre;
import flix.com.vision.models.Movie;
import flix.com.vision.models.tmdb.Network;
import flix.com.vision.subtitles.OpenSubtitles;
import flix.com.vision.utils.JsonUtils;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class FilterActivityLeanBack extends H implements j {

    /* renamed from: T, reason: collision with root package name */
    public static final /* synthetic */ int f15439T = 0;

    /* renamed from: A, reason: collision with root package name */
    public ArrayList f15440A;

    /* renamed from: C, reason: collision with root package name */
    public ProgressBar f15442C;

    /* renamed from: F, reason: collision with root package name */
    public VerticalGridView f15445F;

    /* renamed from: G, reason: collision with root package name */
    public TextView f15446G;

    /* renamed from: H, reason: collision with root package name */
    public TextView f15447H;

    /* renamed from: I, reason: collision with root package name */
    public TextView f15448I;

    /* renamed from: J, reason: collision with root package name */
    public TextView f15449J;

    /* renamed from: K, reason: collision with root package name */
    public TextView f15450K;

    /* renamed from: L, reason: collision with root package name */
    public P f15451L;

    /* renamed from: Q, reason: collision with root package name */
    public Disposable f15456Q;

    /* renamed from: R, reason: collision with root package name */
    public boolean f15457R;

    /* renamed from: S, reason: collision with root package name */
    public int f15458S;

    /* renamed from: f, reason: collision with root package name */
    public String[] f15461f;

    /* renamed from: j, reason: collision with root package name */
    public String[] f15462j;

    /* renamed from: m, reason: collision with root package name */
    public String[] f15463m;

    /* renamed from: n, reason: collision with root package name */
    public String[] f15464n;

    /* renamed from: p, reason: collision with root package name */
    public String[] f15465p;

    /* renamed from: q, reason: collision with root package name */
    public String[] f15466q;

    /* renamed from: y, reason: collision with root package name */
    public RelativeLayout f15474y;

    /* renamed from: b, reason: collision with root package name */
    public int f15459b = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f15460e = 0;

    /* renamed from: r, reason: collision with root package name */
    public final ArrayList f15467r = new ArrayList();

    /* renamed from: s, reason: collision with root package name */
    public int f15468s = 0;

    /* renamed from: t, reason: collision with root package name */
    public int f15469t = 0;

    /* renamed from: u, reason: collision with root package name */
    public int f15470u = 0;

    /* renamed from: v, reason: collision with root package name */
    public int f15471v = 0;

    /* renamed from: w, reason: collision with root package name */
    public String f15472w = "";

    /* renamed from: x, reason: collision with root package name */
    public String f15473x = null;

    /* renamed from: z, reason: collision with root package name */
    public boolean f15475z = false;

    /* renamed from: B, reason: collision with root package name */
    public boolean f15441B = false;

    /* renamed from: D, reason: collision with root package name */
    public int f15443D = 0;

    /* renamed from: E, reason: collision with root package name */
    public int f15444E = -1;

    /* renamed from: M, reason: collision with root package name */
    public String f15452M = null;

    /* renamed from: N, reason: collision with root package name */
    public int f15453N = 4;

    /* renamed from: O, reason: collision with root package name */
    public String f15454O = "popularity.desc";

    /* renamed from: P, reason: collision with root package name */
    public int f15455P = 1;

    public final void d(int i2) {
        this.f15441B = true;
        this.f15442C.setVisibility(0);
        Disposable disposable = this.f15456Q;
        if (disposable != null) {
            disposable.dispose();
        }
        final int i7 = 0;
        final int i8 = 1;
        this.f15456Q = a.getItemsByGenres(this, String.valueOf(this.f15459b), i2, this.f15460e, this.f15471v > 0 ? this.f15472w : null, this.f15454O, this.f15444E, null).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new Consumer(this) { // from class: A4.d

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ FilterActivityLeanBack f60e;

            {
                this.f60e = this;
            }

            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                switch (i7) {
                    case 0:
                        FilterActivityLeanBack filterActivityLeanBack = this.f60e;
                        ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie((JsonElement) obj, filterActivityLeanBack.f15460e);
                        int size = parseListMovie.size();
                        ArrayList arrayList = filterActivityLeanBack.f15467r;
                        if (size > 0 && filterActivityLeanBack.f15475z) {
                            arrayList.clear();
                            filterActivityLeanBack.f15475z = false;
                        } else if (parseListMovie.size() == 0) {
                            Toast.makeText(filterActivityLeanBack.getBaseContext(), "No more result", 0).show();
                            filterActivityLeanBack.f15441B = false;
                            filterActivityLeanBack.f15442C.setVisibility(8);
                            break;
                        }
                        arrayList.addAll(App.getInstance().filterList(parseListMovie));
                        if (arrayList.size() > parseListMovie.size()) {
                            filterActivityLeanBack.f15451L.notifyItemRangeChanged(arrayList.size() - 1, parseListMovie.size());
                        } else {
                            filterActivityLeanBack.f15451L.notifyDataSetChanged();
                        }
                        if (parseListMovie.size() > 0 && arrayList.size() == 0) {
                            int i9 = filterActivityLeanBack.f15455P + 1;
                            filterActivityLeanBack.f15455P = i9;
                            filterActivityLeanBack.d(i9);
                        }
                        filterActivityLeanBack.f15441B = false;
                        filterActivityLeanBack.f15442C.setVisibility(8);
                        break;
                    default:
                        FilterActivityLeanBack filterActivityLeanBack2 = this.f60e;
                        filterActivityLeanBack2.f15441B = false;
                        filterActivityLeanBack2.f15442C.setVisibility(8);
                        Log.d(MainActivity.class.toString(), "", (Throwable) obj);
                        break;
                }
            }
        }, new Consumer(this) { // from class: A4.d

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ FilterActivityLeanBack f60e;

            {
                this.f60e = this;
            }

            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                switch (i8) {
                    case 0:
                        FilterActivityLeanBack filterActivityLeanBack = this.f60e;
                        ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie((JsonElement) obj, filterActivityLeanBack.f15460e);
                        int size = parseListMovie.size();
                        ArrayList arrayList = filterActivityLeanBack.f15467r;
                        if (size > 0 && filterActivityLeanBack.f15475z) {
                            arrayList.clear();
                            filterActivityLeanBack.f15475z = false;
                        } else if (parseListMovie.size() == 0) {
                            Toast.makeText(filterActivityLeanBack.getBaseContext(), "No more result", 0).show();
                            filterActivityLeanBack.f15441B = false;
                            filterActivityLeanBack.f15442C.setVisibility(8);
                            break;
                        }
                        arrayList.addAll(App.getInstance().filterList(parseListMovie));
                        if (arrayList.size() > parseListMovie.size()) {
                            filterActivityLeanBack.f15451L.notifyItemRangeChanged(arrayList.size() - 1, parseListMovie.size());
                        } else {
                            filterActivityLeanBack.f15451L.notifyDataSetChanged();
                        }
                        if (parseListMovie.size() > 0 && arrayList.size() == 0) {
                            int i9 = filterActivityLeanBack.f15455P + 1;
                            filterActivityLeanBack.f15455P = i9;
                            filterActivityLeanBack.d(i9);
                        }
                        filterActivityLeanBack.f15441B = false;
                        filterActivityLeanBack.f15442C.setVisibility(8);
                        break;
                    default:
                        FilterActivityLeanBack filterActivityLeanBack2 = this.f60e;
                        filterActivityLeanBack2.f15441B = false;
                        filterActivityLeanBack2.f15442C.setVisibility(8);
                        Log.d(MainActivity.class.toString(), "", (Throwable) obj);
                        break;
                }
            }
        });
    }

    public final void e() {
        this.f15459b = 0;
        this.f15468s = 0;
        TextView textView = this.f15446G;
        StringBuilder sb = new StringBuilder("Genres:");
        sb.append(this.f15460e == 0 ? this.f15461f[0] : this.f15462j[0]);
        textView.setText(sb.toString());
    }

    @Override // U4.j
    public void favoriteDeleted(int i2) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (!this.f15449J.hasFocus() && !this.f15450K.hasFocus() && !this.f15446G.hasFocus() && !this.f15447H.hasFocus() && !this.f15448I.hasFocus()) {
            if (this.f15467r.size() < 200) {
                this.f15445F.smoothScrollToPosition(0);
            } else {
                this.f15445F.scrollToPosition(0);
            }
            this.f15445F.clearFocus();
            this.f15449J.requestFocus();
            return;
        }
        if (this.f15457R) {
            this.f15457R = false;
            super.onBackPressed();
            return;
        }
        Toast.makeText(getBaseContext(), "Press again to go back...", 0).show();
        this.f15457R = true;
        this.f15445F.clearFocus();
        this.f15449J.requestFocus();
        new Handler().postDelayed(new d(this, 2), ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_filter_leanback);
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
        this.f15461f = (String[]) arrayList.toArray(new String[0]);
        this.f15462j = (String[]) arrayList2.toArray(new String[0]);
        this.f15463m = new String[]{"Popularity", "Release Date"};
        this.f15465p = new String[]{"Movies", "Series"};
        this.f15464n = getResources().getStringArray(R.array.years);
        this.f15466q = new String[]{"All", "Netflix", "Disney+", "Prime Video", "Apple TV+", "Paramount+", "HBO Max", "Hulu", "Starz", "Bollywood", "Discovery+", "ABC", "CBS", "AMC", "Peacock", "Marvel Studios", "BET+", "BritBox"};
        ArrayList arrayList3 = new ArrayList();
        this.f15440A = arrayList3;
        arrayList3.add(new Network(-1, "All", null, -1));
        this.f15440A.addAll(f.getNetworks());
        this.f15474y = (RelativeLayout) findViewById(R.id.activity_player);
        this.f15450K = (TextView) findViewById(R.id.network_button);
        this.f15445F = (VerticalGridView) findViewById(R.id.recyclerview_cast);
        this.f15448I = (TextView) findViewById(R.id.sort_by_button);
        this.f15447H = (TextView) findViewById(R.id.year_button);
        this.f15446G = (TextView) findViewById(R.id.genres_button);
        this.f15449J = (TextView) findViewById(R.id.type_button);
        this.f15442C = (ProgressBar) findViewById(R.id.progress_bar);
        this.f15445F.setFocusSearchDisabled(false);
        final int i2 = 0;
        this.f15447H.setOnClickListener(new View.OnClickListener(this) { // from class: A4.f

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ FilterActivityLeanBack f64e;

            {
                this.f64e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final FilterActivityLeanBack filterActivityLeanBack = this.f64e;
                switch (i2) {
                    case 0:
                        int i7 = FilterActivityLeanBack.f15439T;
                        i iVar = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15464n);
                        e.r rVar = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i8 = 4;
                        rVar.setSingleChoiceItems(iVar, filterActivityLeanBack.f15471v, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i9) {
                                int i10;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i8) {
                                    case 0:
                                        int i11 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i9) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i9).apply();
                                            if (i9 == 0 && (i10 = filterActivityLeanBack2.f15444E) != 999 && i10 != 9999 && i10 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i9]);
                                                filterActivityLeanBack2.f15469t = i9;
                                                filterActivityLeanBack2.f15460e = i9;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i12 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i9) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i9];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i9 > 0 ? i9 - 1 : i9).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i9];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i9 > 0 ? i9 - 1 : i9).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i9;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i13 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i9) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i9]);
                                                filterActivityLeanBack2.f15443D = i9;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i9)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i9)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i14 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i9) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i9]);
                                                filterActivityLeanBack2.f15470u = i9;
                                                filterActivityLeanBack2.f15454O = i9 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i15 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i9) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i9]);
                                                filterActivityLeanBack2.f15471v = i9;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i9]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i9 = FilterActivityLeanBack.f15439T;
                        i iVar2 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15460e == 0 ? filterActivityLeanBack.f15461f : filterActivityLeanBack.f15462j);
                        e.r rVar2 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i10 = 1;
                        rVar2.setSingleChoiceItems(iVar2, filterActivityLeanBack.f15468s, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i92) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i10) {
                                    case 0:
                                        int i11 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i92) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i92).apply();
                                            if (i92 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i92]);
                                                filterActivityLeanBack2.f15469t = i92;
                                                filterActivityLeanBack2.f15460e = i92;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i12 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i92) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i92;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i13 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i92) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i92]);
                                                filterActivityLeanBack2.f15443D = i92;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i92)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i92)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i14 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i92) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i92]);
                                                filterActivityLeanBack2.f15470u = i92;
                                                filterActivityLeanBack2.f15454O = i92 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i15 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i92) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15471v = i92;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i11 = FilterActivityLeanBack.f15439T;
                        i iVar3 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15465p);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i12 = 0;
                        rVar3.setSingleChoiceItems(iVar3, filterActivityLeanBack.f15469t, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i92) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i12) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i92) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i92).apply();
                                            if (i92 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i92]);
                                                filterActivityLeanBack2.f15469t = i92;
                                                filterActivityLeanBack2.f15460e = i92;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i92) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i92;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i13 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i92) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i92]);
                                                filterActivityLeanBack2.f15443D = i92;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i92)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i92)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i14 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i92) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i92]);
                                                filterActivityLeanBack2.f15470u = i92;
                                                filterActivityLeanBack2.f15454O = i92 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i15 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i92) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15471v = i92;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i13 = FilterActivityLeanBack.f15439T;
                        i iVar4 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15466q);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i14 = 2;
                        rVar4.setSingleChoiceItems(iVar4, filterActivityLeanBack.f15443D, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i92) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i14) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i92) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i92).apply();
                                            if (i92 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i92]);
                                                filterActivityLeanBack2.f15469t = i92;
                                                filterActivityLeanBack2.f15460e = i92;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i92) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i92;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i92) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i92]);
                                                filterActivityLeanBack2.f15443D = i92;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i92)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i92)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i92) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i92]);
                                                filterActivityLeanBack2.f15470u = i92;
                                                filterActivityLeanBack2.f15454O = i92 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i15 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i92) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15471v = i92;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i15 = FilterActivityLeanBack.f15439T;
                        i iVar5 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15463m);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i16 = 3;
                        rVar5.setSingleChoiceItems(iVar5, filterActivityLeanBack.f15470u, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i92) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i16) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i92) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i92).apply();
                                            if (i92 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i92]);
                                                filterActivityLeanBack2.f15469t = i92;
                                                filterActivityLeanBack2.f15460e = i92;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i92) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i92;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i92) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i92]);
                                                filterActivityLeanBack2.f15443D = i92;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i92)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i92)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i92) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i92]);
                                                filterActivityLeanBack2.f15470u = i92;
                                                filterActivityLeanBack2.f15454O = i92 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i92) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15471v = i92;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
        final int i7 = 1;
        this.f15446G.setOnClickListener(new View.OnClickListener(this) { // from class: A4.f

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ FilterActivityLeanBack f64e;

            {
                this.f64e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final FilterActivityLeanBack filterActivityLeanBack = this.f64e;
                switch (i7) {
                    case 0:
                        int i72 = FilterActivityLeanBack.f15439T;
                        i iVar = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15464n);
                        e.r rVar = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i8 = 4;
                        rVar.setSingleChoiceItems(iVar, filterActivityLeanBack.f15471v, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i92) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i8) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i92) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i92).apply();
                                            if (i92 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i92]);
                                                filterActivityLeanBack2.f15469t = i92;
                                                filterActivityLeanBack2.f15460e = i92;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i92) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i92;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i92) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i92]);
                                                filterActivityLeanBack2.f15443D = i92;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i92)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i92)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i92) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i92]);
                                                filterActivityLeanBack2.f15470u = i92;
                                                filterActivityLeanBack2.f15454O = i92 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i92) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15471v = i92;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i9 = FilterActivityLeanBack.f15439T;
                        i iVar2 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15460e == 0 ? filterActivityLeanBack.f15461f : filterActivityLeanBack.f15462j);
                        e.r rVar2 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i10 = 1;
                        rVar2.setSingleChoiceItems(iVar2, filterActivityLeanBack.f15468s, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i92) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i10) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i92) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i92).apply();
                                            if (i92 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i92]);
                                                filterActivityLeanBack2.f15469t = i92;
                                                filterActivityLeanBack2.f15460e = i92;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i92) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i92;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i92) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i92]);
                                                filterActivityLeanBack2.f15443D = i92;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i92)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i92)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i92) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i92]);
                                                filterActivityLeanBack2.f15470u = i92;
                                                filterActivityLeanBack2.f15454O = i92 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i92) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15471v = i92;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i11 = FilterActivityLeanBack.f15439T;
                        i iVar3 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15465p);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i12 = 0;
                        rVar3.setSingleChoiceItems(iVar3, filterActivityLeanBack.f15469t, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i92) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i12) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i92) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i92).apply();
                                            if (i92 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i92]);
                                                filterActivityLeanBack2.f15469t = i92;
                                                filterActivityLeanBack2.f15460e = i92;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i92) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i92;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i92) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i92]);
                                                filterActivityLeanBack2.f15443D = i92;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i92)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i92)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i92) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i92]);
                                                filterActivityLeanBack2.f15470u = i92;
                                                filterActivityLeanBack2.f15454O = i92 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i92) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15471v = i92;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i13 = FilterActivityLeanBack.f15439T;
                        i iVar4 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15466q);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i14 = 2;
                        rVar4.setSingleChoiceItems(iVar4, filterActivityLeanBack.f15443D, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i92) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i14) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i92) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i92).apply();
                                            if (i92 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i92]);
                                                filterActivityLeanBack2.f15469t = i92;
                                                filterActivityLeanBack2.f15460e = i92;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i92) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i92;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i92) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i92]);
                                                filterActivityLeanBack2.f15443D = i92;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i92)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i92)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i92) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i92]);
                                                filterActivityLeanBack2.f15470u = i92;
                                                filterActivityLeanBack2.f15454O = i92 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i92) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15471v = i92;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i15 = FilterActivityLeanBack.f15439T;
                        i iVar5 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15463m);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i16 = 3;
                        rVar5.setSingleChoiceItems(iVar5, filterActivityLeanBack.f15470u, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i92) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i16) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i92) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i92).apply();
                                            if (i92 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i92]);
                                                filterActivityLeanBack2.f15469t = i92;
                                                filterActivityLeanBack2.f15460e = i92;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i92) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i92;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i92) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i92]);
                                                filterActivityLeanBack2.f15443D = i92;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i92)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i92)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i92) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i92]);
                                                filterActivityLeanBack2.f15470u = i92;
                                                filterActivityLeanBack2.f15454O = i92 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i92) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15471v = i92;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
        this.f15449J.setOnClickListener(new View.OnClickListener(this) { // from class: A4.f

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ FilterActivityLeanBack f64e;

            {
                this.f64e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final FilterActivityLeanBack filterActivityLeanBack = this.f64e;
                switch (i8) {
                    case 0:
                        int i72 = FilterActivityLeanBack.f15439T;
                        i iVar = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15464n);
                        e.r rVar = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i82 = 4;
                        rVar.setSingleChoiceItems(iVar, filterActivityLeanBack.f15471v, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i92) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i82) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i92) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i92).apply();
                                            if (i92 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i92]);
                                                filterActivityLeanBack2.f15469t = i92;
                                                filterActivityLeanBack2.f15460e = i92;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i92) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i92;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i92) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i92]);
                                                filterActivityLeanBack2.f15443D = i92;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i92)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i92)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i92) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i92]);
                                                filterActivityLeanBack2.f15470u = i92;
                                                filterActivityLeanBack2.f15454O = i92 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i92) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15471v = i92;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i9 = FilterActivityLeanBack.f15439T;
                        i iVar2 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15460e == 0 ? filterActivityLeanBack.f15461f : filterActivityLeanBack.f15462j);
                        e.r rVar2 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i10 = 1;
                        rVar2.setSingleChoiceItems(iVar2, filterActivityLeanBack.f15468s, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i92) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i10) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i92) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i92).apply();
                                            if (i92 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i92]);
                                                filterActivityLeanBack2.f15469t = i92;
                                                filterActivityLeanBack2.f15460e = i92;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i92) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i92;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i92) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i92]);
                                                filterActivityLeanBack2.f15443D = i92;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i92)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i92)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i92) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i92]);
                                                filterActivityLeanBack2.f15470u = i92;
                                                filterActivityLeanBack2.f15454O = i92 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i92) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15471v = i92;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i11 = FilterActivityLeanBack.f15439T;
                        i iVar3 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15465p);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i12 = 0;
                        rVar3.setSingleChoiceItems(iVar3, filterActivityLeanBack.f15469t, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i92) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i12) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i92) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i92).apply();
                                            if (i92 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i92]);
                                                filterActivityLeanBack2.f15469t = i92;
                                                filterActivityLeanBack2.f15460e = i92;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i92) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i92;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i92) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i92]);
                                                filterActivityLeanBack2.f15443D = i92;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i92)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i92)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i92) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i92]);
                                                filterActivityLeanBack2.f15470u = i92;
                                                filterActivityLeanBack2.f15454O = i92 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i92) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15471v = i92;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i13 = FilterActivityLeanBack.f15439T;
                        i iVar4 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15466q);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i14 = 2;
                        rVar4.setSingleChoiceItems(iVar4, filterActivityLeanBack.f15443D, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i92) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i14) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i92) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i92).apply();
                                            if (i92 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i92]);
                                                filterActivityLeanBack2.f15469t = i92;
                                                filterActivityLeanBack2.f15460e = i92;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i92) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i92;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i92) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i92]);
                                                filterActivityLeanBack2.f15443D = i92;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i92)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i92)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i92) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i92]);
                                                filterActivityLeanBack2.f15470u = i92;
                                                filterActivityLeanBack2.f15454O = i92 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i92) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15471v = i92;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i15 = FilterActivityLeanBack.f15439T;
                        i iVar5 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15463m);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i16 = 3;
                        rVar5.setSingleChoiceItems(iVar5, filterActivityLeanBack.f15470u, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i92) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i16) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i92) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i92).apply();
                                            if (i92 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i92]);
                                                filterActivityLeanBack2.f15469t = i92;
                                                filterActivityLeanBack2.f15460e = i92;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i92) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i92;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i92) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i92]);
                                                filterActivityLeanBack2.f15443D = i92;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i92)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i92)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i92) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i92]);
                                                filterActivityLeanBack2.f15470u = i92;
                                                filterActivityLeanBack2.f15454O = i92 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i92) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15471v = i92;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
        this.f15450K.setOnClickListener(new View.OnClickListener(this) { // from class: A4.f

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ FilterActivityLeanBack f64e;

            {
                this.f64e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final FilterActivityLeanBack filterActivityLeanBack = this.f64e;
                switch (i9) {
                    case 0:
                        int i72 = FilterActivityLeanBack.f15439T;
                        i iVar = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15464n);
                        e.r rVar = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i82 = 4;
                        rVar.setSingleChoiceItems(iVar, filterActivityLeanBack.f15471v, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i92) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i82) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i92) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i92).apply();
                                            if (i92 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i92]);
                                                filterActivityLeanBack2.f15469t = i92;
                                                filterActivityLeanBack2.f15460e = i92;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i92) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i92];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i92 > 0 ? i92 - 1 : i92).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i92;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i92) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i92]);
                                                filterActivityLeanBack2.f15443D = i92;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i92)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i92)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i92) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i92]);
                                                filterActivityLeanBack2.f15470u = i92;
                                                filterActivityLeanBack2.f15454O = i92 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i92) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15471v = i92;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i92]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i92 = FilterActivityLeanBack.f15439T;
                        i iVar2 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15460e == 0 ? filterActivityLeanBack.f15461f : filterActivityLeanBack.f15462j);
                        e.r rVar2 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i10 = 1;
                        rVar2.setSingleChoiceItems(iVar2, filterActivityLeanBack.f15468s, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i922) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i10) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i922) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i922).apply();
                                            if (i922 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i922]);
                                                filterActivityLeanBack2.f15469t = i922;
                                                filterActivityLeanBack2.f15460e = i922;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i922) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i922;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i922) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i922]);
                                                filterActivityLeanBack2.f15443D = i922;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i922)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i922)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i922) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i922]);
                                                filterActivityLeanBack2.f15470u = i922;
                                                filterActivityLeanBack2.f15454O = i922 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i922) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15471v = i922;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i11 = FilterActivityLeanBack.f15439T;
                        i iVar3 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15465p);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i12 = 0;
                        rVar3.setSingleChoiceItems(iVar3, filterActivityLeanBack.f15469t, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i922) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i12) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i922) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i922).apply();
                                            if (i922 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i922]);
                                                filterActivityLeanBack2.f15469t = i922;
                                                filterActivityLeanBack2.f15460e = i922;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i922) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i922;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i922) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i922]);
                                                filterActivityLeanBack2.f15443D = i922;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i922)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i922)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i922) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i922]);
                                                filterActivityLeanBack2.f15470u = i922;
                                                filterActivityLeanBack2.f15454O = i922 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i922) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15471v = i922;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i13 = FilterActivityLeanBack.f15439T;
                        i iVar4 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15466q);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i14 = 2;
                        rVar4.setSingleChoiceItems(iVar4, filterActivityLeanBack.f15443D, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i922) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i14) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i922) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i922).apply();
                                            if (i922 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i922]);
                                                filterActivityLeanBack2.f15469t = i922;
                                                filterActivityLeanBack2.f15460e = i922;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i922) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i922;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i922) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i922]);
                                                filterActivityLeanBack2.f15443D = i922;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i922)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i922)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i922) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i922]);
                                                filterActivityLeanBack2.f15470u = i922;
                                                filterActivityLeanBack2.f15454O = i922 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i922) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15471v = i922;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i15 = FilterActivityLeanBack.f15439T;
                        i iVar5 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15463m);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i16 = 3;
                        rVar5.setSingleChoiceItems(iVar5, filterActivityLeanBack.f15470u, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i922) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i16) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i922) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i922).apply();
                                            if (i922 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i922]);
                                                filterActivityLeanBack2.f15469t = i922;
                                                filterActivityLeanBack2.f15460e = i922;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i922) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i922;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i922) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i922]);
                                                filterActivityLeanBack2.f15443D = i922;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i922)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i922)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i922) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i922]);
                                                filterActivityLeanBack2.f15470u = i922;
                                                filterActivityLeanBack2.f15454O = i922 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i922) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15471v = i922;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
        this.f15448I.setOnClickListener(new View.OnClickListener(this) { // from class: A4.f

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ FilterActivityLeanBack f64e;

            {
                this.f64e = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                final FilterActivityLeanBack filterActivityLeanBack = this.f64e;
                switch (i10) {
                    case 0:
                        int i72 = FilterActivityLeanBack.f15439T;
                        i iVar = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15464n);
                        e.r rVar = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i82 = 4;
                        rVar.setSingleChoiceItems(iVar, filterActivityLeanBack.f15471v, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i922) {
                                int i102;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i82) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i922) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i922).apply();
                                            if (i922 == 0 && (i102 = filterActivityLeanBack2.f15444E) != 999 && i102 != 9999 && i102 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i922]);
                                                filterActivityLeanBack2.f15469t = i922;
                                                filterActivityLeanBack2.f15460e = i922;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i922) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i922;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i922) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i922]);
                                                filterActivityLeanBack2.f15443D = i922;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i922)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i922)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i922) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i922]);
                                                filterActivityLeanBack2.f15470u = i922;
                                                filterActivityLeanBack2.f15454O = i922 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i922) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15471v = i922;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i92 = FilterActivityLeanBack.f15439T;
                        i iVar2 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15460e == 0 ? filterActivityLeanBack.f15461f : filterActivityLeanBack.f15462j);
                        e.r rVar2 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i102 = 1;
                        rVar2.setSingleChoiceItems(iVar2, filterActivityLeanBack.f15468s, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i922) {
                                int i1022;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i102) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i922) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i922).apply();
                                            if (i922 == 0 && (i1022 = filterActivityLeanBack2.f15444E) != 999 && i1022 != 9999 && i1022 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i922]);
                                                filterActivityLeanBack2.f15469t = i922;
                                                filterActivityLeanBack2.f15460e = i922;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i922) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i922;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i922) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i922]);
                                                filterActivityLeanBack2.f15443D = i922;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i922)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i922)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i922) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i922]);
                                                filterActivityLeanBack2.f15470u = i922;
                                                filterActivityLeanBack2.f15454O = i922 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i922) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15471v = i922;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i11 = FilterActivityLeanBack.f15439T;
                        i iVar3 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15465p);
                        e.r rVar3 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i12 = 0;
                        rVar3.setSingleChoiceItems(iVar3, filterActivityLeanBack.f15469t, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i922) {
                                int i1022;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i12) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i922) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i922).apply();
                                            if (i922 == 0 && (i1022 = filterActivityLeanBack2.f15444E) != 999 && i1022 != 9999 && i1022 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i922]);
                                                filterActivityLeanBack2.f15469t = i922;
                                                filterActivityLeanBack2.f15460e = i922;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i922) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i922;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i922) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i922]);
                                                filterActivityLeanBack2.f15443D = i922;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i922)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i922)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i922) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i922]);
                                                filterActivityLeanBack2.f15470u = i922;
                                                filterActivityLeanBack2.f15454O = i922 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i922) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15471v = i922;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i13 = FilterActivityLeanBack.f15439T;
                        i iVar4 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15466q);
                        e.r rVar4 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i14 = 2;
                        rVar4.setSingleChoiceItems(iVar4, filterActivityLeanBack.f15443D, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i922) {
                                int i1022;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i14) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i922) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i922).apply();
                                            if (i922 == 0 && (i1022 = filterActivityLeanBack2.f15444E) != 999 && i1022 != 9999 && i1022 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i922]);
                                                filterActivityLeanBack2.f15469t = i922;
                                                filterActivityLeanBack2.f15460e = i922;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i922) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i922;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i922) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i922]);
                                                filterActivityLeanBack2.f15443D = i922;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i922)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i922)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i922) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i922]);
                                                filterActivityLeanBack2.f15470u = i922;
                                                filterActivityLeanBack2.f15454O = i922 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i922) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15471v = i922;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
                        int i15 = FilterActivityLeanBack.f15439T;
                        i iVar5 = new i(filterActivityLeanBack, filterActivityLeanBack, filterActivityLeanBack.f15463m);
                        e.r rVar5 = new e.r(new ContextThemeWrapper(filterActivityLeanBack, R.style.AlertDialogCustom));
                        final int i16 = 3;
                        rVar5.setSingleChoiceItems(iVar5, filterActivityLeanBack.f15470u, new DialogInterface.OnClickListener() { // from class: A4.e
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i922) {
                                int i1022;
                                String str;
                                FilterActivityLeanBack filterActivityLeanBack2 = filterActivityLeanBack;
                                switch (i16) {
                                    case 0:
                                        int i112 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15469t != i922) {
                                            App.getInstance().f14440s.edit().putInt("filter_type_index", i922).apply();
                                            if (i922 == 0 && (i1022 = filterActivityLeanBack2.f15444E) != 999 && i1022 != 9999 && i1022 != 99999) {
                                                try {
                                                    filterActivityLeanBack2.f15443D = 0;
                                                    filterActivityLeanBack2.f15450K.setText("Network:" + filterActivityLeanBack2.f15466q[filterActivityLeanBack2.f15443D]);
                                                    filterActivityLeanBack2.f15444E = -1;
                                                } catch (Exception unused) {
                                                }
                                            }
                                            try {
                                                filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[i922]);
                                                filterActivityLeanBack2.f15469t = i922;
                                                filterActivityLeanBack2.f15460e = i922;
                                                filterActivityLeanBack2.e();
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused2) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 1:
                                        int i122 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15468s != i922) {
                                            try {
                                                if (filterActivityLeanBack2.f15460e == 0) {
                                                    str = filterActivityLeanBack2.f15461f[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getMovieCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                } else {
                                                    str = filterActivityLeanBack2.f15462j[i922];
                                                    filterActivityLeanBack2.f15459b = T4.f.getSeriesCategories().get(i922 > 0 ? i922 - 1 : i922).id;
                                                }
                                                filterActivityLeanBack2.f15468s = i922;
                                                filterActivityLeanBack2.f15473x = str;
                                                filterActivityLeanBack2.f15446G.setText("Genres: " + filterActivityLeanBack2.f15473x);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused3) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 2:
                                        int i132 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15443D != i922) {
                                            try {
                                                filterActivityLeanBack2.f15450K.setText("Network: " + filterActivityLeanBack2.f15466q[i922]);
                                                filterActivityLeanBack2.f15443D = i922;
                                                filterActivityLeanBack2.f15444E = ((Network) filterActivityLeanBack2.f15440A.get(i922)).id;
                                                String str2 = ((Network) filterActivityLeanBack2.f15440A.get(i922)).name;
                                                filterActivityLeanBack2.f15452M = str2;
                                                if (str2 != null && (str2.equals("AMC") || filterActivityLeanBack2.f15452M.equals("ABC") || filterActivityLeanBack2.f15452M.equals("CBS") || filterActivityLeanBack2.f15452M.equals("Discovery+") || filterActivityLeanBack2.f15452M.equals("HBO Max") || filterActivityLeanBack2.f15452M.equals("BET+") || filterActivityLeanBack2.f15452M.equals("BritBox"))) {
                                                    filterActivityLeanBack2.f15469t = 1;
                                                    filterActivityLeanBack2.f15449J.setText(filterActivityLeanBack2.f15465p[1]);
                                                    filterActivityLeanBack2.f15460e = 1;
                                                    filterActivityLeanBack2.e();
                                                }
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused4) {
                                                return;
                                            }
                                        }
                                        break;
                                    case 3:
                                        int i142 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15470u != i922) {
                                            try {
                                                filterActivityLeanBack2.f15448I.setText("Sort:" + filterActivityLeanBack2.f15463m[i922]);
                                                filterActivityLeanBack2.f15470u = i922;
                                                filterActivityLeanBack2.f15454O = i922 == 0 ? "popularity.desc" : "primary_release_date.desc";
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
                                                break;
                                            } catch (Exception unused5) {
                                                return;
                                            }
                                        }
                                        break;
                                    default:
                                        int i152 = FilterActivityLeanBack.f15439T;
                                        dialogInterface.dismiss();
                                        if (filterActivityLeanBack2.f15471v != i922) {
                                            try {
                                                filterActivityLeanBack2.f15447H.setText("Year: " + filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15471v = i922;
                                                filterActivityLeanBack2.f15472w = String.valueOf(filterActivityLeanBack2.f15464n[i922]);
                                                filterActivityLeanBack2.f15475z = true;
                                                filterActivityLeanBack2.f15455P = 1;
                                                filterActivityLeanBack2.d(1);
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
        this.f15446G.requestFocus();
        float f3 = c.d(getWindowManager().getDefaultDisplay()).widthPixels / getResources().getDisplayMetrics().density;
        this.f15453N = Math.round(f3 / (App.f14424I ? 140 : 120));
        if (App.getInstance().f14440s.getBoolean("prefs_show_big_cobers", false)) {
            this.f15453N = Math.round(f3 / 180.0f);
        }
        this.f15445F.setNumColumns(this.f15453N);
        this.f15445F.addItemDecoration(new k(App.f14424I ? 12 : 8));
        P p6 = new P(getBaseContext(), this.f15467r, this, 0, this, null);
        this.f15451L = p6;
        this.f15445F.setAdapter(p6);
        this.f15445F.addOnScrollListener(new h(this));
        g gVar = new g(this, 0);
        this.f15446G.setOnFocusChangeListener(gVar);
        this.f15448I.setOnFocusChangeListener(gVar);
        this.f15447H.setOnFocusChangeListener(gVar);
        this.f15450K.setOnFocusChangeListener(gVar);
        this.f15449J.setOnFocusChangeListener(gVar);
        int intExtra = getIntent().getIntExtra("network", -1);
        this.f15444E = intExtra;
        if (intExtra != -1 || this.f15452M == null) {
            for (int i11 = 0; i11 < this.f15440A.size(); i11++) {
                if (((Network) this.f15440A.get(i11)).id == this.f15444E) {
                    this.f15443D = i11;
                    this.f15450K.setText("Network: " + ((Network) this.f15440A.get(i11)).name);
                    this.f15452M = ((Network) this.f15440A.get(i11)).name;
                }
            }
            int i12 = App.getInstance().f14440s.getInt("filter_type_index", 0);
            this.f15469t = i12;
            this.f15460e = i12;
            String str = this.f15452M;
            if (str != null && (str.equals("AMC") || this.f15452M.equals("ABC") || this.f15452M.equals("CBS") || this.f15452M.equals("Discovery+") || this.f15452M.equals("HBO Max") || this.f15452M.equals("BET+") || this.f15452M.equals("BritBox"))) {
                this.f15469t = 1;
                this.f15449J.setText(this.f15465p[1]);
                this.f15460e = 1;
            }
            try {
                this.f15449J.setText(this.f15465p[this.f15469t]);
            } catch (Exception unused) {
            }
        }
        setBackgroundColor();
        d(this.f15455P);
    }

    @Override // U4.j
    public void onMediaSelected(Movie movie) {
        Intent intent = App.f14424I ? new Intent(this, (Class<?>) MovieDetailActivityLeanBack.class) : new Intent(this, (Class<?>) MovieDetailActivity.class);
        intent.putExtra(OpenSubtitles.Params.Key.QUERY, movie.getTitle());
        intent.putExtra("server", "");
        intent.putExtra("movie", movie);
        intent.putExtra("year", movie.year);
        startActivity(intent);
    }

    public void setBackgroundColor() {
        this.f15458S = 2505092;
        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(this.f15458S), 0);
        ofObject.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofObject.addUpdateListener(new A3.a(this, 2));
        ofObject.start();
        this.f15458S = 0;
    }
}
