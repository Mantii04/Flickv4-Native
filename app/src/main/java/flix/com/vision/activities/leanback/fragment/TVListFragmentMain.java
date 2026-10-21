package flix.com.vision.activities.leanback.fragment;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.View;
import androidx.leanback.widget.A0;
import androidx.leanback.widget.C0488a;
import androidx.leanback.widget.C0492b0;
import androidx.leanback.widget.C0502f0;
import androidx.leanback.widget.C0512k0;
import androidx.leanback.widget.C0514l0;
import androidx.leanback.widget.M0;
import androidx.leanback.widget.P;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;
import flix.com.vision.App;
import flix.com.vision.activities.leanback.fragment.TVListFragmentMain;
import flix.com.vision.models.Movie;
import flix.com.vision.models.tmdb.Network;
import flix.com.vision.utils.JsonUtils;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import m1.B0;

/* loaded from: classes2.dex */
public class TVListFragmentMain extends androidx.leanback.app.h implements W4.c {

    /* renamed from: A0, reason: collision with root package name */
    public f f15515A0;

    /* renamed from: B0, reason: collision with root package name */
    public Disposable f15516B0;

    /* renamed from: C0, reason: collision with root package name */
    public Network f15517C0;

    /* renamed from: D0, reason: collision with root package name */
    public boolean f15518D0;

    /* renamed from: E0, reason: collision with root package name */
    public boolean f15519E0;

    /* renamed from: F0, reason: collision with root package name */
    public Network f15520F0;

    /* renamed from: G0, reason: collision with root package name */
    public C0488a f15521G0;

    /* renamed from: H0, reason: collision with root package name */
    public W4.e f15522H0;

    /* renamed from: I0, reason: collision with root package name */
    public W4.d f15523I0;

    /* renamed from: J0, reason: collision with root package name */
    public ArrayList f15524J0;

    /* renamed from: K0, reason: collision with root package name */
    public ArrayList f15525K0;

    /* renamed from: L0, reason: collision with root package name */
    public ArrayList f15526L0;

    /* renamed from: M0, reason: collision with root package name */
    public ArrayList f15527M0;

    /* renamed from: N0, reason: collision with root package name */
    public ArrayList f15528N0;

    /* renamed from: O0, reason: collision with root package name */
    public ArrayList f15529O0;

    /* renamed from: P0, reason: collision with root package name */
    public ArrayList f15530P0;

    /* renamed from: Q0, reason: collision with root package name */
    public ArrayList f15531Q0;

    /* renamed from: R0, reason: collision with root package name */
    public ArrayList f15532R0;

    /* renamed from: S0, reason: collision with root package name */
    public ArrayList f15533S0;

    /* renamed from: T0, reason: collision with root package name */
    public ArrayList f15534T0;

    /* renamed from: U0, reason: collision with root package name */
    public ContentTypeLB f15535U0;

    /* renamed from: V0, reason: collision with root package name */
    public d f15536V0;

    /* renamed from: W0, reason: collision with root package name */
    public final j f15537W0;

    /* renamed from: X0, reason: collision with root package name */
    public final C0488a f15538X0;

    /* renamed from: Y0, reason: collision with root package name */
    public boolean f15539Y0;

    /* renamed from: Z0, reason: collision with root package name */
    public C0488a f15540Z0;

    /* renamed from: a1, reason: collision with root package name */
    public boolean f15541a1;

    /* renamed from: y0, reason: collision with root package name */
    public final HashMap f15542y0;

    /* renamed from: z0, reason: collision with root package name */
    public final Handler f15543z0;

    /* renamed from: flix.com.vision.activities.leanback.fragment.TVListFragmentMain$2, reason: invalid class name */
    class AnonymousClass2 extends TypeToken<ArrayList<Integer>> {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ContentTypeLB {

        /* renamed from: b, reason: collision with root package name */
        public static final ContentTypeLB f15544b;

        /* renamed from: e, reason: collision with root package name */
        public static final ContentTypeLB f15545e;

        /* renamed from: f, reason: collision with root package name */
        public static final ContentTypeLB f15546f;

        /* renamed from: j, reason: collision with root package name */
        public static final /* synthetic */ ContentTypeLB[] f15547j;

        static {
            ContentTypeLB contentTypeLB = new ContentTypeLB("HOME", 0);
            f15544b = contentTypeLB;
            ContentTypeLB contentTypeLB2 = new ContentTypeLB("MOVIES", 1);
            f15545e = contentTypeLB2;
            ContentTypeLB contentTypeLB3 = new ContentTypeLB("TV_SHOWS", 2);
            f15546f = contentTypeLB3;
            f15547j = new ContentTypeLB[]{contentTypeLB, contentTypeLB2, contentTypeLB3, new ContentTypeLB("GENRES", 3)};
        }

        public static ContentTypeLB valueOf(String str) {
            return (ContentTypeLB) Enum.valueOf(ContentTypeLB.class, str);
        }

        public static ContentTypeLB[] values() {
            return (ContentTypeLB[]) f15547j.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class GenresType {

        /* renamed from: b, reason: collision with root package name */
        public static final GenresType f15548b;

        /* renamed from: e, reason: collision with root package name */
        public static final GenresType f15549e;

        /* renamed from: f, reason: collision with root package name */
        public static final GenresType f15550f;

        /* renamed from: j, reason: collision with root package name */
        public static final GenresType f15551j;

        /* renamed from: m, reason: collision with root package name */
        public static final GenresType f15552m;

        /* renamed from: n, reason: collision with root package name */
        public static final GenresType f15553n;

        /* renamed from: p, reason: collision with root package name */
        public static final /* synthetic */ GenresType[] f15554p;

        static {
            GenresType genresType = new GenresType("COMEDY", 0);
            f15548b = genresType;
            GenresType genresType2 = new GenresType("ANIMATION", 1);
            f15549e = genresType2;
            GenresType genresType3 = new GenresType("CRIME", 2);
            f15550f = genresType3;
            GenresType genresType4 = new GenresType("ACTION", 3);
            f15551j = genresType4;
            GenresType genresType5 = new GenresType("ROMANCE", 4);
            f15552m = genresType5;
            GenresType genresType6 = new GenresType("HORROR", 5);
            f15553n = genresType6;
            f15554p = new GenresType[]{genresType, genresType2, genresType3, genresType4, genresType5, genresType6};
        }

        public static GenresType valueOf(String str) {
            return (GenresType) Enum.valueOf(GenresType.class, str);
        }

        public static GenresType[] values() {
            return (GenresType[]) f15554p.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class RequestType {

        /* renamed from: b, reason: collision with root package name */
        public static final RequestType f15555b;

        /* renamed from: e, reason: collision with root package name */
        public static final RequestType f15556e;

        /* renamed from: f, reason: collision with root package name */
        public static final /* synthetic */ RequestType[] f15557f;

        static {
            RequestType requestType = new RequestType("MOVIE", 0);
            f15555b = requestType;
            RequestType requestType2 = new RequestType("TV_SHOW", 1);
            f15556e = requestType2;
            f15557f = new RequestType[]{requestType, requestType2};
        }

        public static RequestType valueOf(String str) {
            return (RequestType) Enum.valueOf(RequestType.class, str);
        }

        public static RequestType[] values() {
            return (RequestType[]) f15557f.clone();
        }
    }

    public TVListFragmentMain(ContentTypeLB contentTypeLB) {
        this.f15542y0 = new HashMap();
        this.f15543z0 = new Handler(Looper.getMainLooper());
        this.f15517C0 = null;
        this.f15518D0 = false;
        this.f15519E0 = false;
        this.f15520F0 = null;
        this.f15521G0 = null;
        this.f15523I0 = null;
        this.f15539Y0 = false;
        this.f15541a1 = false;
        this.f15535U0 = contentTypeLB;
        j jVar = new j(2);
        this.f15537W0 = jVar;
        jVar.enableChildRoundedCorners(true);
        this.f15537W0.setShadowEnabled(false);
        this.f15538X0 = new C0488a(this.f15537W0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean dispatchKeyDown(int i2, KeyEvent keyEvent) {
        Network network;
        int indexOf;
        Network network2;
        int indexOf2;
        if (this.f15519E0 && keyEvent.getAction() == 0) {
            if (i2 == 4) {
                k();
                return true;
            }
            switch (i2) {
                case 19:
                case 20:
                case 23:
                    return true;
                case 21:
                    if (this.f15519E0 && (network = this.f15520F0) != null && (indexOf = this.f15521G0.indexOf(network)) > 0) {
                        this.f15522H0.setReorderState(this.f15523I0, false);
                        this.f15521G0.remove(this.f15520F0);
                        int i7 = indexOf - 1;
                        this.f15521G0.add(i7, this.f15520F0);
                        setSelectedPosition(this.f15539Y0 ? 1 : 0, true, new C0512k0(i7));
                        new Handler(Looper.getMainLooper()).postDelayed(new e(this, 4), 200L);
                    }
                    return true;
                case 22:
                    if (this.f15519E0 && (network2 = this.f15520F0) != null && (indexOf2 = this.f15521G0.indexOf(network2)) < this.f15521G0.size() - 1) {
                        this.f15522H0.setReorderState(this.f15523I0, false);
                        this.f15521G0.remove(this.f15520F0);
                        int i8 = indexOf2 + 1;
                        this.f15521G0.add(i8, this.f15520F0);
                        setSelectedPosition(this.f15539Y0 ? 1 : 0, true, new C0512k0(i8));
                        new Handler(Looper.getMainLooper()).postDelayed(new e(this, 0), 200L);
                        return true;
                    }
                    return true;
            }
        }
        return false;
    }

    public void getContinueContent() {
        if (App.getInstance().f14440s.getBoolean("pref_hide_continue", false) || this.f15538X0 == null) {
            return;
        }
        try {
            ArrayList<Movie> watchingMoviesFromDb = App.getInstance().f14439r.getWatchingMoviesFromDb();
            if (watchingMoviesFromDb != null && watchingMoviesFromDb.size() != 0) {
                this.f15539Y0 = true;
                this.f15540Z0 = new C0488a(new W4.b(watchingMoviesFromDb, getActivity(), this));
                Iterator<Movie> it = watchingMoviesFromDb.iterator();
                while (it.hasNext()) {
                    this.f15540Z0.add(it.next());
                }
                C0502f0 c0502f0 = new C0502f0(new P("Continue Watching"), this.f15540Z0);
                c0502f0.setId(999L);
                if (this.f15535U0 == ContentTypeLB.f15544b) {
                    this.f15538X0.add(0, c0502f0);
                } else {
                    this.f15538X0.add(c0502f0);
                }
                new Handler().postDelayed(new e(this, 1), 1000L);
            }
        } catch (Exception unused) {
        }
    }

    public final void k() {
        W4.e eVar;
        if (this.f15519E0) {
            if (this.f15521G0 != null) {
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < this.f15521G0.size(); i2++) {
                    arrayList.add(Integer.valueOf(((Network) this.f15521G0.get(i2)).id));
                }
                SharedPreferences.Editor edit = getContext().getSharedPreferences("LeanbackNavOrder", 0).edit();
                edit.putString("networkOrder", new Gson().toJson(arrayList));
                edit.apply();
            }
            W4.d dVar = this.f15523I0;
            if (dVar != null && (eVar = this.f15522H0) != null) {
                eVar.setReorderState(dVar, false);
            }
            this.f15519E0 = false;
            this.f15520F0 = null;
            this.f15523I0 = null;
        }
    }

    public final void l(RequestType requestType, final String str, final int i2, int i7) {
        if (this.f15538X0 == null) {
            return;
        }
        RequestType requestType2 = RequestType.f15555b;
        final int i8 = requestType == requestType2 ? 0 : 1;
        D4.a.gettabbedList(getContext(), i7, requestType == requestType2 ? "movie" : "tv", i2).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new Consumer() { // from class: flix.com.vision.activities.leanback.fragment.i
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                C0488a c0488a;
                C0488a c0488a2;
                TVListFragmentMain tVListFragmentMain = TVListFragmentMain.this;
                tVListFragmentMain.getClass();
                ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie((JsonElement) obj, i8);
                int i9 = i2;
                boolean z6 = false;
                if (i9 == 0) {
                    if (tVListFragmentMain.f15524J0 == null) {
                        tVListFragmentMain.f15524J0 = new ArrayList();
                    } else {
                        z6 = true;
                    }
                    tVListFragmentMain.f15524J0.addAll(parseListMovie);
                    if (z6) {
                        parseListMovie.clear();
                        parseListMovie.addAll(tVListFragmentMain.f15524J0);
                        tVListFragmentMain.f15524J0.clear();
                    }
                } else if (i9 == 1) {
                    if (tVListFragmentMain.f15528N0 == null) {
                        tVListFragmentMain.f15528N0 = new ArrayList();
                    } else {
                        z6 = true;
                    }
                    tVListFragmentMain.f15528N0.addAll(parseListMovie);
                    if (z6) {
                        parseListMovie.clear();
                        parseListMovie.addAll(tVListFragmentMain.f15528N0);
                        tVListFragmentMain.f15528N0.clear();
                    }
                } else if (i9 == 2) {
                    if (tVListFragmentMain.f15525K0 == null) {
                        tVListFragmentMain.f15525K0 = new ArrayList();
                    } else {
                        z6 = true;
                    }
                    tVListFragmentMain.f15525K0.addAll(parseListMovie);
                    if (z6) {
                        parseListMovie.clear();
                        parseListMovie.addAll(tVListFragmentMain.f15525K0);
                        tVListFragmentMain.f15525K0.clear();
                    }
                } else if (i9 == 3) {
                    if (tVListFragmentMain.f15526L0 == null) {
                        tVListFragmentMain.f15526L0 = new ArrayList();
                    } else {
                        z6 = true;
                    }
                    tVListFragmentMain.f15526L0.addAll(parseListMovie);
                    if (z6) {
                        parseListMovie.clear();
                        parseListMovie.addAll(tVListFragmentMain.f15526L0);
                        tVListFragmentMain.f15526L0.clear();
                    }
                } else if (i9 == 4) {
                    if (tVListFragmentMain.f15527M0 == null) {
                        tVListFragmentMain.f15527M0 = new ArrayList();
                    } else {
                        z6 = true;
                    }
                    tVListFragmentMain.f15527M0.addAll(parseListMovie);
                    if (z6) {
                        parseListMovie.clear();
                        parseListMovie.addAll(tVListFragmentMain.f15527M0);
                        tVListFragmentMain.f15527M0.clear();
                    }
                }
                if (z6) {
                    if (i9 != 4 && tVListFragmentMain.f15535U0 == TVListFragmentMain.ContentTypeLB.f15544b) {
                        Collections.shuffle(parseListMovie);
                    }
                    C0488a c0488a3 = new C0488a(new W4.f());
                    Iterator<Movie> it = parseListMovie.iterator();
                    while (it.hasNext()) {
                        c0488a3.add(it.next());
                    }
                    C0502f0 c0502f0 = new C0502f0(new P(str), c0488a3);
                    if (i9 == 0 && tVListFragmentMain.f15538X0.size() > 1 && tVListFragmentMain.f15539Y0 && (c0488a2 = tVListFragmentMain.f15538X0) != null) {
                        c0488a2.add(2, c0502f0);
                    } else if (i9 != 0 || tVListFragmentMain.f15538X0.size() <= 1 || (c0488a = tVListFragmentMain.f15538X0) == null) {
                        tVListFragmentMain.f15538X0.add(c0502f0);
                    } else {
                        c0488a.add(2, c0502f0);
                    }
                    if (tVListFragmentMain.f15541a1) {
                        return;
                    }
                    tVListFragmentMain.f15541a1 = true;
                    new Handler().postDelayed(new e(tVListFragmentMain, 3), 1000L);
                }
            }
        }, new A4.c(22));
    }

    public final void m(int i2, final String str, int i7, final GenresType genresType) {
        if (this.f15538X0 == null) {
            return;
        }
        D4.a.getItemsByGenresLeanBack(getContext(), i2 + "", i7, 0, "popularity.desc", false).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new Consumer() { // from class: flix.com.vision.activities.leanback.fragment.h
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                TVListFragmentMain tVListFragmentMain = TVListFragmentMain.this;
                tVListFragmentMain.getClass();
                boolean z6 = false;
                ArrayList<Movie> parseListMovie = JsonUtils.parseListMovie((JsonElement) obj, 0);
                int ordinal = genresType.ordinal();
                if (ordinal == 0) {
                    if (tVListFragmentMain.f15529O0 == null) {
                        tVListFragmentMain.f15529O0 = new ArrayList();
                    } else {
                        z6 = true;
                    }
                    tVListFragmentMain.f15529O0.addAll(parseListMovie);
                    if (z6) {
                        parseListMovie.clear();
                        parseListMovie.addAll(tVListFragmentMain.f15529O0);
                        tVListFragmentMain.f15529O0.clear();
                    }
                } else if (ordinal == 1) {
                    if (tVListFragmentMain.f15533S0 == null) {
                        tVListFragmentMain.f15533S0 = new ArrayList();
                    } else {
                        z6 = true;
                    }
                    tVListFragmentMain.f15533S0.addAll(parseListMovie);
                    if (z6) {
                        parseListMovie.clear();
                        parseListMovie.addAll(tVListFragmentMain.f15533S0);
                        tVListFragmentMain.f15533S0.clear();
                    }
                } else if (ordinal == 2) {
                    if (tVListFragmentMain.f15534T0 == null) {
                        tVListFragmentMain.f15534T0 = new ArrayList();
                    } else {
                        z6 = true;
                    }
                    tVListFragmentMain.f15534T0.addAll(parseListMovie);
                    if (z6) {
                        parseListMovie.clear();
                        parseListMovie.addAll(tVListFragmentMain.f15534T0);
                        tVListFragmentMain.f15534T0.clear();
                    }
                } else if (ordinal == 3) {
                    if (tVListFragmentMain.f15532R0 == null) {
                        tVListFragmentMain.f15532R0 = new ArrayList();
                    } else {
                        z6 = true;
                    }
                    tVListFragmentMain.f15532R0.addAll(parseListMovie);
                    if (z6) {
                        parseListMovie.clear();
                        parseListMovie.addAll(tVListFragmentMain.f15532R0);
                        tVListFragmentMain.f15532R0.clear();
                    }
                } else if (ordinal == 4) {
                    if (tVListFragmentMain.f15531Q0 == null) {
                        tVListFragmentMain.f15531Q0 = new ArrayList();
                    } else {
                        z6 = true;
                    }
                    tVListFragmentMain.f15531Q0.addAll(parseListMovie);
                    if (z6) {
                        parseListMovie.clear();
                        parseListMovie.addAll(tVListFragmentMain.f15531Q0);
                        tVListFragmentMain.f15531Q0.clear();
                    }
                } else if (ordinal == 5) {
                    if (tVListFragmentMain.f15530P0 == null) {
                        tVListFragmentMain.f15530P0 = new ArrayList();
                    } else {
                        z6 = true;
                    }
                    tVListFragmentMain.f15530P0.addAll(parseListMovie);
                    if (z6) {
                        parseListMovie.clear();
                        parseListMovie.addAll(tVListFragmentMain.f15530P0);
                        tVListFragmentMain.f15530P0.clear();
                    }
                }
                if (z6) {
                    C0488a c0488a = new C0488a(new W4.f());
                    Iterator<Movie> it = parseListMovie.iterator();
                    while (it.hasNext()) {
                        c0488a.add(it.next());
                    }
                    C0502f0 c0502f0 = new C0502f0(new P(str), c0488a);
                    C0488a c0488a2 = tVListFragmentMain.f15538X0;
                    if (c0488a2 != null) {
                        c0488a2.add(c0502f0);
                    }
                    if (tVListFragmentMain.f15541a1) {
                        return;
                    }
                    tVListFragmentMain.f15541a1 = true;
                    new Handler().postDelayed(new e(tVListFragmentMain, 2), 1000L);
                }
            }
        }, new A4.c(22));
    }

    public void markAsWatched(Movie movie) {
        reloadWatchedHistory();
        int i2 = -1;
        for (int i7 = 0; i7 < this.f15540Z0.size(); i7++) {
            if (((Movie) this.f15540Z0.get(i7)).getMovieId() == movie.getMovieId()) {
                i2 = i7;
            }
        }
        if (i2 > -1) {
            this.f15540Z0.remove(Integer.valueOf(i2));
            this.f15540Z0.notifyItemRangeChanged(0, 1);
            C0488a c0488a = this.f15540Z0;
            c0488a.notifyArrayItemRangeChanged(0, c0488a.size());
            C0488a c0488a2 = this.f15540Z0;
            c0488a2.notifyItemRangeChanged(0, c0488a2.size());
        }
    }

    public final void n() {
        ArrayList<Network> networks = T4.f.getNetworks();
        if (networks.size() == 0) {
            return;
        }
        String string = getContext().getSharedPreferences("LeanbackNavOrder", 0).getString("networkOrder", null);
        final ArrayList arrayList = string != null ? (ArrayList) new Gson().fromJson(string, new AnonymousClass2().getType()) : null;
        ArrayList arrayList2 = new ArrayList(networks);
        if (arrayList != null && !arrayList.isEmpty()) {
            Collections.sort(arrayList2, new Comparator() { // from class: flix.com.vision.activities.leanback.fragment.g
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    Integer valueOf = Integer.valueOf(((Network) obj).id);
                    ArrayList arrayList3 = arrayList;
                    int indexOf = arrayList3.indexOf(valueOf);
                    int indexOf2 = arrayList3.indexOf(Integer.valueOf(((Network) obj2).id));
                    if (indexOf == -1) {
                        indexOf = Integer.MAX_VALUE;
                    }
                    if (indexOf2 == -1) {
                        indexOf2 = Integer.MAX_VALUE;
                    }
                    return Integer.compare(indexOf, indexOf2);
                }
            });
        }
        try {
            W4.e eVar = new W4.e();
            this.f15522H0 = eVar;
            eVar.setOnNetworkActionListener(this);
            this.f15521G0 = new C0488a(this.f15522H0);
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                this.f15521G0.add((Network) it.next());
            }
            C0502f0 c0502f0 = new C0502f0(new P("Popular Services"), this.f15521G0);
            c0502f0.setId(888L);
            if (this.f15539Y0 && this.f15538X0 != null) {
                new Handler().postDelayed(new a(2, this, c0502f0), 1000L);
                return;
            }
            C0488a c0488a = this.f15538X0;
            if (c0488a != null) {
                c0488a.add(0, c0502f0);
            }
        } catch (Exception unused) {
        }
    }

    public final W4.d o(Network network) {
        if (getVerticalGridView() == null || this.f15521G0 == null || network == null) {
            return null;
        }
        M0 rowViewHolder = getRowViewHolder(this.f15539Y0 ? 1 : 0);
        if (!(rowViewHolder instanceof C0514l0)) {
            return null;
        }
        C0514l0 c0514l0 = (C0514l0) rowViewHolder;
        int indexOf = this.f15521G0.indexOf(network);
        if (indexOf < 0) {
            return null;
        }
        B0 findViewHolderForAdapterPosition = c0514l0.getGridView().findViewHolderForAdapterPosition(indexOf);
        if (!(findViewHolderForAdapterPosition instanceof C0492b0)) {
            return null;
        }
        A0 viewHolder = ((C0492b0) findViewHolderForAdapterPosition).getViewHolder();
        if (viewHolder instanceof W4.d) {
            return (W4.d) viewHolder;
        }
        return null;
    }

    @Override // W4.c
    public void onNetworkLongClicked(Network network) {
        if (this.f15519E0) {
            return;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new f(this, network, 0), 100L);
    }

    @Override // androidx.leanback.app.h, androidx.leanback.app.c, androidx.fragment.app.C
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (getVerticalGridView() != null) {
            getVerticalGridView().setClipChildren(false);
            getVerticalGridView().setClipToPadding(false);
        }
        setAdapter(this.f15538X0);
        setOnItemViewSelectedListener(new k(this));
        setOnItemViewClickedListener(new d6.a(this));
        if (this.f15535U0 == null) {
            this.f15535U0 = ContentTypeLB.f15544b;
        }
        int ordinal = this.f15535U0.ordinal();
        RequestType requestType = RequestType.f15556e;
        RequestType requestType2 = RequestType.f15555b;
        if (ordinal == 0) {
            getContinueContent();
            n();
            l(requestType2, "Trending", 0, 1);
            l(requestType, "Trending", 0, 1);
            l(requestType2, "Now Playing", 1, 1);
            l(requestType, "Now Playing", 1, 1);
            l(requestType2, "Popular", 2, 1);
            l(requestType, "Popular", 2, 1);
            l(requestType2, "Top Rated", 3, 1);
            l(requestType, "Top Rated", 3, 1);
            l(requestType2, "Upcoming", 4, 1);
            l(requestType2, "Upcoming", 4, 2);
        } else if (ordinal == 1) {
            l(requestType2, "Trending", 0, 1);
            l(requestType2, "Trending", 0, 2);
            l(requestType2, "Now Playing", 1, 1);
            l(requestType2, "Now Playing", 1, 2);
            l(requestType2, "Popular", 2, 1);
            l(requestType2, "Popular", 2, 2);
            l(requestType2, "Top Rated", 3, 1);
            l(requestType2, "Top Rated", 3, 2);
            l(requestType2, "Upcoming", 4, 1);
            l(requestType2, "Upcoming", 4, 2);
        } else if (ordinal == 2) {
            n();
            l(requestType, "Trending", 0, 1);
            l(requestType, "Trending", 0, 2);
            l(requestType, "Now Playing", 1, 1);
            l(requestType, "Now Playing", 1, 2);
            l(requestType, "Popular", 2, 1);
            l(requestType, "Popular", 2, 2);
            l(requestType, "Top Rated", 3, 1);
            l(requestType, "Top Rated", 3, 2);
        } else if (ordinal == 3) {
            GenresType genresType = GenresType.f15553n;
            m(27, "Horror", 1, genresType);
            m(27, "Horror", 2, genresType);
            GenresType genresType2 = GenresType.f15551j;
            m(28, "Action", 1, genresType2);
            m(28, "Action", 2, genresType2);
            GenresType genresType3 = GenresType.f15550f;
            m(80, "Crime", 1, genresType3);
            m(80, "Crime", 2, genresType3);
            GenresType genresType4 = GenresType.f15552m;
            m(10749, "Romance", 1, genresType4);
            m(10749, "Romance", 2, genresType4);
            GenresType genresType5 = GenresType.f15548b;
            m(35, "Comedy", 1, genresType5);
            m(35, "Comedy", 2, genresType5);
            GenresType genresType6 = GenresType.f15549e;
            m(16, "Animation", 1, genresType6);
            m(16, "Animation", 2, genresType6);
        }
        new Handler().postDelayed(new e(this, 5), 1000L);
    }

    public void reloadWatchedHistory() {
        C0488a c0488a;
        if (this.f15535U0 != ContentTypeLB.f15544b || (c0488a = this.f15538X0) == null || c0488a.size() <= 0) {
            return;
        }
        C0502f0 c0502f0 = (C0502f0) this.f15538X0.get(0);
        if (c0502f0.getId() == 999) {
            this.f15538X0.remove(c0502f0);
        }
        getContinueContent();
        new Handler().postDelayed(new e(this, 6), 500L);
    }

    public void setOnContentSelectedListener(d dVar) {
        this.f15536V0 = dVar;
    }

    public TVListFragmentMain() {
        this.f15542y0 = new HashMap();
        this.f15543z0 = new Handler(Looper.getMainLooper());
        this.f15517C0 = null;
        this.f15518D0 = false;
        this.f15519E0 = false;
        this.f15520F0 = null;
        this.f15521G0 = null;
        this.f15523I0 = null;
        this.f15535U0 = ContentTypeLB.f15544b;
        this.f15539Y0 = false;
        this.f15541a1 = false;
        j jVar = new j(2);
        this.f15537W0 = jVar;
        jVar.enableChildRoundedCorners(true);
        this.f15537W0.setShadowEnabled(false);
        this.f15538X0 = new C0488a(this.f15537W0);
    }
}
