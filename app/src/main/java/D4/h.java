package D4;

import B4.r;
import android.content.Context;
import android.util.Log;
import com.jakewharton.threetenabp.AndroidThreeTen;
import com.uwetrottmann.trakt5.TraktV2;
import com.uwetrottmann.trakt5.entities.MovieIds;
import com.uwetrottmann.trakt5.entities.PlaybackResponse;
import com.uwetrottmann.trakt5.entities.ScrobbleProgress;
import com.uwetrottmann.trakt5.entities.ShowIds;
import com.uwetrottmann.trakt5.entities.SyncEpisode;
import com.uwetrottmann.trakt5.entities.SyncMovie;
import com.uwetrottmann.trakt5.entities.SyncShow;
import flix.com.vision.App;
import flix.com.vision.api.TraktAPI$ScrobbleState;
import flix.com.vision.models.Movie;
import io.reactivex.Completable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Action;
import io.reactivex.schedulers.Schedulers;
import java.io.IOException;
import retrofit2.Response;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public TraktV2 f912a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f913b;

    public h(Context context) {
        this.f913b = context;
        a();
    }

    public final void a() {
        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false) && this.f912a == null) {
            AndroidThreeTen.init(this.f913b);
            TraktV2 traktV2 = new TraktV2("39c944040d5f19862b77e7a66b6c419af653c1e3bf226cc691eb2abbb551730c");
            this.f912a = traktV2;
            traktV2.accessToken(App.getInstance().f14440s.getString("trakt_access_token", ""));
            this.f912a.refreshToken(App.getInstance().f14440s.getString("trakt_refresh_token", ""));
        }
    }

    public Completable addToCollection(Movie movie) {
        return Completable.fromAction(new e(this, movie, 0)).subscribeOn(Schedulers.io());
    }

    public Completable addToHistory(Movie movie) {
        return Completable.fromAction(new e(this, movie, 2)).subscribeOn(Schedulers.io());
    }

    public Completable addToWatchlist(Movie movie) {
        return Completable.fromAction(new e(this, movie, 3)).subscribeOn(Schedulers.io());
    }

    public Completable checkInEpisode(Movie movie, int i2, int i7) {
        return Completable.fromAction(new f(this, movie, i2, i7)).subscribeOn(Schedulers.io());
    }

    public Completable checkInMovie(Movie movie) {
        return Completable.fromAction(new e(this, movie, 1)).subscribeOn(Schedulers.io());
    }

    public Completable removeActiveCheckin() {
        return Completable.fromAction(new g(this, 0)).subscribeOn(Schedulers.io());
    }

    public Completable scrobble(final Movie movie, final int i2, final int i7, final float f3, final TraktAPI$ScrobbleState traktAPI$ScrobbleState) {
        return Completable.fromAction(new Action() { // from class: D4.d
            @Override // io.reactivex.functions.Action
            public final void run() {
                ScrobbleProgress scrobbleProgress;
                h hVar = h.this;
                hVar.a();
                if (hVar.f912a == null) {
                    return;
                }
                Movie movie2 = movie;
                if (movie2.getMovieId() <= 0) {
                    Log.w("TraktAPI", "Aborting scrobble: Movie/Show has no TMDB ID.");
                    return;
                }
                boolean isSeries = movie2.isSeries();
                float f7 = f3;
                if (isSeries) {
                    scrobbleProgress = new ScrobbleProgress(new SyncEpisode().season(i2).number(i7), f7, "2.9", "2024-10-01");
                    scrobbleProgress.show = new SyncShow().id(ShowIds.tmdb((int) movie2.getMovieId()));
                } else {
                    scrobbleProgress = new ScrobbleProgress(new SyncMovie().id(MovieIds.tmdb((int) movie2.getMovieId())), f7, "2.9", "2024-10-01");
                }
                TraktAPI$ScrobbleState traktAPI$ScrobbleState2 = traktAPI$ScrobbleState;
                int ordinal = traktAPI$ScrobbleState2.ordinal();
                Response<PlaybackResponse> execute = ordinal != 0 ? ordinal != 1 ? hVar.f912a.scrobble().stopWatching(scrobbleProgress).execute() : hVar.f912a.scrobble().pauseWatching(scrobbleProgress).execute() : hVar.f912a.scrobble().startWatching(scrobbleProgress).execute();
                if (!execute.isSuccessful()) {
                    Log.e("TraktAPI", "Scrobble Error Code: " + execute.code());
                    throw new IOException("Trakt API Error: " + execute.code());
                }
                Log.d("TraktAPI", "Scrobble sync successful: " + traktAPI$ScrobbleState2.name() + " at " + f7 + "%");
            }
        }).subscribeOn(Schedulers.io());
    }

    public Completable syncUserHistoryWithTrakt() {
        return Completable.fromAction(new g(this, 1)).subscribeOn(Schedulers.io());
    }

    public void traktAddToWatchedHistoryEpisode(Movie movie, int i2, int i7) {
        if (App.getInstance().f14440s.getBoolean("trakt_user_logged_in", false)) {
            Completable.fromAction(new f(this, i7, i2, movie)).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new r(5), new A4.c(11));
        }
    }
}
