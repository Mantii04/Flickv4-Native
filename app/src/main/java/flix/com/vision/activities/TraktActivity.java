package flix.com.vision.activities;

import A4.s;
import C4.P;
import T4.k;
import U4.j;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.gson.JsonElement;
import com.uwetrottmann.trakt5.TraktV2;
import com.uwetrottmann.trakt5.entities.MovieIds;
import com.uwetrottmann.trakt5.entities.Show;
import com.uwetrottmann.trakt5.entities.ShowIds;
import com.uwetrottmann.trakt5.entities.UserSlug;
import com.uwetrottmann.trakt5.enums.Extended;
import e.AbstractActivityC0842v;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.TraktActivity;
import flix.com.vision.models.Movie;
import flix.com.vision.utils.JsonUtils;
import io.reactivex.Observable;
import io.reactivex.Single;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import y4.H0;
import y4.l1;

/* loaded from: classes2.dex */
public class TraktActivity extends AbstractActivityC0842v implements j {

    /* renamed from: u, reason: collision with root package name */
    public static final /* synthetic */ int f15234u = 0;

    /* renamed from: e, reason: collision with root package name */
    public P f15236e;

    /* renamed from: f, reason: collision with root package name */
    public P f15237f;

    /* renamed from: j, reason: collision with root package name */
    public P f15238j;

    /* renamed from: q, reason: collision with root package name */
    public View f15242q;

    /* renamed from: r, reason: collision with root package name */
    public LinearLayout f15243r;

    /* renamed from: s, reason: collision with root package name */
    public LinearLayout f15244s;

    /* renamed from: t, reason: collision with root package name */
    public LinearLayout f15245t;

    /* renamed from: b, reason: collision with root package name */
    public final CompositeDisposable f15235b = new CompositeDisposable();

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f15239m = new ArrayList();

    /* renamed from: n, reason: collision with root package name */
    public final ArrayList f15240n = new ArrayList();

    /* renamed from: p, reason: collision with root package name */
    public final ArrayList f15241p = new ArrayList();

    public static Observable e(TraktActivity traktActivity, final Movie movie) {
        if (movie.getMovieId() <= 0) {
            return Observable.just(movie);
        }
        if (movie.getTitle() != null && !movie.getTitle().isEmpty() && !movie.getTitle().startsWith("S")) {
            return D4.a.getTmdbPoster((int) movie.getMovieId(), movie.getType() == 1).toObservable().map(new l1(movie, 2)).onErrorReturnItem(movie);
        }
        final String title = movie.getTitle();
        return D4.a.getDetails(traktActivity, movie.getType() == 0 ? "movie" : "tv", (int) movie.getMovieId()).subscribeOn(Schedulers.io()).map(new Function() { // from class: y4.k1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                String str;
                int i2 = TraktActivity.f15234u;
                Movie movie2 = Movie.this;
                Movie parseMovieInfo = JsonUtils.parseMovieInfo((JsonElement) obj, movie2.getType());
                if (movie2.getType() != 1 || (str = title) == null || str.isEmpty()) {
                    movie2.setTitle(parseMovieInfo.getTitle());
                } else {
                    movie2.setTitle(parseMovieInfo.getTitle() + " - " + str);
                }
                movie2.setImage_url(parseMovieInfo.getCover());
                movie2.year = parseMovieInfo.year;
                return movie2;
            }
        }).onErrorReturnItem(movie);
    }

    public static Movie f(com.uwetrottmann.trakt5.entities.Movie movie) {
        Integer num;
        Movie movie2 = new Movie();
        if (movie == null) {
            return movie2;
        }
        movie2.setType(0);
        movie2.setTitle(movie.title);
        MovieIds movieIds = movie.ids;
        movie2.setMovieId((movieIds == null || (num = movieIds.tmdb) == null) ? 0L : num.intValue());
        Integer num2 = movie.year;
        movie2.year = num2 != null ? String.valueOf(num2) : "";
        return movie2;
    }

    public static Movie g(Show show) {
        Integer num;
        Movie movie = new Movie();
        if (show == null) {
            return movie;
        }
        movie.setType(1);
        movie.setTitle(show.title);
        ShowIds showIds = show.ids;
        movie.setMovieId((showIds == null || (num = showIds.tmdb) == null) ? 0L : num.intValue());
        Integer num2 = show.year;
        movie.year = num2 != null ? String.valueOf(num2) : "";
        return movie;
    }

    @Override // U4.j
    public void favoriteDeleted(int i2) {
    }

    public final void h(RecyclerView recyclerView, P p6) {
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 0, false));
        recyclerView.addItemDecoration(new k(12));
        recyclerView.setAdapter(p6);
    }

    public final void i(List list, ArrayList arrayList, P p6, View view) {
        this.f15242q.setVisibility(8);
        if (list == null || list.isEmpty()) {
            return;
        }
        arrayList.clear();
        arrayList.addAll(list);
        p6.notifyDataSetChanged();
        view.setVisibility(0);
    }

    @Override // androidx.fragment.app.H, androidx.activity.ComponentActivity, z.r, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_trakt_modern);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        if (getSupportActionBar() != null) {
            getSupportActionBar().setTitle("My Trakt");
            getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        }
        this.f15242q = findViewById(R.id.loader);
        this.f15243r = (LinearLayout) findViewById(R.id.section_continue);
        this.f15244s = (LinearLayout) findViewById(R.id.section_start);
        this.f15245t = (LinearLayout) findViewById(R.id.section_history);
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.rv_continue);
        P p6 = new P(this, this.f15239m, this, 0, this, null);
        this.f15236e = p6;
        h(recyclerView, p6);
        RecyclerView recyclerView2 = (RecyclerView) findViewById(R.id.rv_start);
        P p7 = new P(this, this.f15240n, this, 0, this, null);
        this.f15237f = p7;
        h(recyclerView2, p7);
        RecyclerView recyclerView3 = (RecyclerView) findViewById(R.id.rv_history);
        P p8 = new P(this, this.f15241p, this, 0, this, null);
        this.f15238j = p8;
        h(recyclerView3, p8);
        TraktV2 traktV2 = App.getInstance().f14438q.f912a;
        CompositeDisposable compositeDisposable = this.f15235b;
        if (traktV2 != null) {
            this.f15242q.setVisibility(0);
            final int i2 = 3;
            final int i7 = 2;
            compositeDisposable.add(Observable.fromCallable(new Callable() { // from class: y4.i1
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    switch (i2) {
                        case 0:
                            int i8 = TraktActivity.f15234u;
                            return App.getInstance().f14438q.f912a.users().watchlistMovies(UserSlug.ME, Extended.FULL).execute().body();
                        case 1:
                            int i9 = TraktActivity.f15234u;
                            return App.getInstance().f14438q.f912a.users().history(UserSlug.ME, null, 1, 20, Extended.FULL, null, null).execute().body();
                        case 2:
                            int i10 = TraktActivity.f15234u;
                            return App.getInstance().f14438q.f912a.users().watchlistShows(UserSlug.ME, Extended.FULL).execute().body();
                        default:
                            int i11 = TraktActivity.f15234u;
                            return App.getInstance().f14438q.f912a.sync().getPlayback(40).execute().body();
                    }
                }
            }).subscribeOn(Schedulers.io()).flatMapIterable(new s(5)).map(new l1(this, 1)).flatMap(new l1(this, 0)).toList().observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer(this) { // from class: y4.j1

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ TraktActivity f21245e;

                {
                    this.f21245e = this;
                }

                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    List list = (List) obj;
                    switch (i7) {
                        case 0:
                            TraktActivity traktActivity = this.f21245e;
                            traktActivity.i(list, traktActivity.f15241p, traktActivity.f15238j, traktActivity.f15245t);
                            break;
                        case 1:
                            TraktActivity traktActivity2 = this.f21245e;
                            traktActivity2.i(list, traktActivity2.f15240n, traktActivity2.f15237f, traktActivity2.f15244s);
                            break;
                        default:
                            TraktActivity traktActivity3 = this.f21245e;
                            traktActivity3.i(list, traktActivity3.f15239m, traktActivity3.f15236e, traktActivity3.f15243r);
                            break;
                    }
                }
            }, new H0(4)));
        }
        if (App.getInstance().f14438q.f912a != null) {
            final int i8 = 0;
            final int i9 = 2;
            Single observeOn = Observable.merge(Observable.fromCallable(new Callable() { // from class: y4.i1
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    switch (i8) {
                        case 0:
                            int i82 = TraktActivity.f15234u;
                            return App.getInstance().f14438q.f912a.users().watchlistMovies(UserSlug.ME, Extended.FULL).execute().body();
                        case 1:
                            int i92 = TraktActivity.f15234u;
                            return App.getInstance().f14438q.f912a.users().history(UserSlug.ME, null, 1, 20, Extended.FULL, null, null).execute().body();
                        case 2:
                            int i10 = TraktActivity.f15234u;
                            return App.getInstance().f14438q.f912a.users().watchlistShows(UserSlug.ME, Extended.FULL).execute().body();
                        default:
                            int i11 = TraktActivity.f15234u;
                            return App.getInstance().f14438q.f912a.sync().getPlayback(40).execute().body();
                    }
                }
            }), Observable.fromCallable(new Callable() { // from class: y4.i1
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    switch (i9) {
                        case 0:
                            int i82 = TraktActivity.f15234u;
                            return App.getInstance().f14438q.f912a.users().watchlistMovies(UserSlug.ME, Extended.FULL).execute().body();
                        case 1:
                            int i92 = TraktActivity.f15234u;
                            return App.getInstance().f14438q.f912a.users().history(UserSlug.ME, null, 1, 20, Extended.FULL, null, null).execute().body();
                        case 2:
                            int i10 = TraktActivity.f15234u;
                            return App.getInstance().f14438q.f912a.users().watchlistShows(UserSlug.ME, Extended.FULL).execute().body();
                        default:
                            int i11 = TraktActivity.f15234u;
                            return App.getInstance().f14438q.f912a.sync().getPlayback(40).execute().body();
                    }
                }
            })).subscribeOn(Schedulers.io()).flatMapIterable(new s(5)).map(new s(this, 6)).flatMap(new l1(this, 0)).toList().observeOn(AndroidSchedulers.mainThread());
            final int i10 = 1;
            compositeDisposable.add(observeOn.subscribe(new Consumer(this) { // from class: y4.j1

                /* renamed from: e, reason: collision with root package name */
                public final /* synthetic */ TraktActivity f21245e;

                {
                    this.f21245e = this;
                }

                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    List list = (List) obj;
                    switch (i10) {
                        case 0:
                            TraktActivity traktActivity = this.f21245e;
                            traktActivity.i(list, traktActivity.f15241p, traktActivity.f15238j, traktActivity.f15245t);
                            break;
                        case 1:
                            TraktActivity traktActivity2 = this.f21245e;
                            traktActivity2.i(list, traktActivity2.f15240n, traktActivity2.f15237f, traktActivity2.f15244s);
                            break;
                        default:
                            TraktActivity traktActivity3 = this.f21245e;
                            traktActivity3.i(list, traktActivity3.f15239m, traktActivity3.f15236e, traktActivity3.f15243r);
                            break;
                    }
                }
            }, new H0(4)));
        }
        if (App.getInstance().f14438q.f912a == null) {
            return;
        }
        final int i11 = 1;
        final int i12 = 0;
        compositeDisposable.add(Observable.fromCallable(new Callable() { // from class: y4.i1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                switch (i11) {
                    case 0:
                        int i82 = TraktActivity.f15234u;
                        return App.getInstance().f14438q.f912a.users().watchlistMovies(UserSlug.ME, Extended.FULL).execute().body();
                    case 1:
                        int i92 = TraktActivity.f15234u;
                        return App.getInstance().f14438q.f912a.users().history(UserSlug.ME, null, 1, 20, Extended.FULL, null, null).execute().body();
                    case 2:
                        int i102 = TraktActivity.f15234u;
                        return App.getInstance().f14438q.f912a.users().watchlistShows(UserSlug.ME, Extended.FULL).execute().body();
                    default:
                        int i112 = TraktActivity.f15234u;
                        return App.getInstance().f14438q.f912a.sync().getPlayback(40).execute().body();
                }
            }
        }).subscribeOn(Schedulers.io()).flatMapIterable(new s(5)).map(new s(this, 4)).filter(new androidx.media3.exoplayer.source.chunk.a(26)).flatMap(new l1(this, i12)).toList().observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer(this) { // from class: y4.j1

            /* renamed from: e, reason: collision with root package name */
            public final /* synthetic */ TraktActivity f21245e;

            {
                this.f21245e = this;
            }

            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                List list = (List) obj;
                switch (i12) {
                    case 0:
                        TraktActivity traktActivity = this.f21245e;
                        traktActivity.i(list, traktActivity.f15241p, traktActivity.f15238j, traktActivity.f15245t);
                        break;
                    case 1:
                        TraktActivity traktActivity2 = this.f21245e;
                        traktActivity2.i(list, traktActivity2.f15240n, traktActivity2.f15237f, traktActivity2.f15244s);
                        break;
                    default:
                        TraktActivity traktActivity3 = this.f21245e;
                        traktActivity3.i(list, traktActivity3.f15239m, traktActivity3.f15236e, traktActivity3.f15243r);
                        break;
                }
            }
        }, new H0(4)));
    }

    @Override // e.AbstractActivityC0842v, androidx.fragment.app.H, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f15235b.clear();
    }

    @Override // U4.j
    public void onMediaSelected(Movie movie) {
        Intent intent = new Intent(this, (Class<?>) MovieDetailActivity.class);
        if (App.f14424I) {
            intent = new Intent(this, (Class<?>) MovieDetailActivityLeanBack.class);
        }
        intent.putExtra("movie", movie);
        startActivity(intent);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        finish();
        return true;
    }
}
