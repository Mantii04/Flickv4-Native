package D4;

import com.uwetrottmann.trakt5.TraktV2;
import com.uwetrottmann.trakt5.entities.MovieCheckin;
import com.uwetrottmann.trakt5.entities.MovieIds;
import com.uwetrottmann.trakt5.entities.SearchResult;
import com.uwetrottmann.trakt5.entities.ShowIds;
import com.uwetrottmann.trakt5.entities.SyncItems;
import com.uwetrottmann.trakt5.entities.SyncMovie;
import com.uwetrottmann.trakt5.entities.SyncResponse;
import com.uwetrottmann.trakt5.entities.SyncShow;
import com.uwetrottmann.trakt5.enums.Extended;
import com.uwetrottmann.trakt5.enums.IdType;
import com.uwetrottmann.trakt5.enums.Type;
import flix.com.vision.models.Movie;
import io.reactivex.functions.Action;
import java.io.IOException;
import java.util.List;
import org.threeten.bp.OffsetDateTime;
import retrofit2.Response;

/* loaded from: classes2.dex */
public final /* synthetic */ class e implements Action {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f902b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ h f903e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Movie f904f;

    public /* synthetic */ e(h hVar, Movie movie, int i2) {
        this.f902b = i2;
        this.f903e = hVar;
        this.f904f = movie;
    }

    @Override // io.reactivex.functions.Action
    public final void run() {
        switch (this.f902b) {
            case 0:
                h hVar = this.f903e;
                hVar.a();
                if (hVar.f912a == null) {
                    return;
                }
                SyncItems syncItems = new SyncItems();
                Movie movie = this.f904f;
                if (movie.isSeries()) {
                    syncItems.shows(new SyncShow().id(ShowIds.tmdb((int) movie.getMovieId())));
                } else {
                    syncItems.movies(new SyncMovie().id(MovieIds.tmdb((int) movie.getMovieId())));
                }
                Response<SyncResponse> execute = hVar.f912a.sync().addItemsToCollection(syncItems).execute();
                if (execute.isSuccessful()) {
                    return;
                }
                throw new IOException("Trakt Error: " + execute.code());
            case 1:
                h hVar2 = this.f903e;
                hVar2.a();
                TraktV2 traktV2 = hVar2.f912a;
                if (traktV2 == null) {
                    return;
                }
                traktV2.checkin().deleteActiveCheckin().execute();
                Movie movie2 = this.f904f;
                Response<List<SearchResult>> execute2 = (movie2.getImdbID() == null || movie2.getImdbID().isEmpty()) ? hVar2.f912a.search().textQuery(Type.MOVIE, movie2.getSimpleNameClean(), movie2.getYear(), null, null, null, null, null, null, 1, 1).execute() : hVar2.f912a.search().idLookup(IdType.IMDB, movie2.getImdbID(), Type.MOVIE, Extended.FULL, 1, 1).execute();
                if (!execute2.isSuccessful() || execute2.body() == null || execute2.body().isEmpty()) {
                    return;
                }
                hVar2.f912a.checkin().checkin(new MovieCheckin.Builder(new SyncMovie().id(execute2.body().get(0).movie.ids).watchedAt(OffsetDateTime.now()), "Flix Vision", "").message("Watching " + movie2.getTitle() + " on @FlixVisionApp").build()).execute();
                return;
            case 2:
                h hVar3 = this.f903e;
                hVar3.a();
                if (hVar3.f912a == null) {
                    return;
                }
                SyncItems syncItems2 = new SyncItems();
                Movie movie3 = this.f904f;
                if (movie3.isSeries()) {
                    syncItems2.shows(new SyncShow().id(ShowIds.tmdb((int) movie3.getMovieId())));
                } else {
                    syncItems2.movies(new SyncMovie().id(MovieIds.tmdb((int) movie3.getMovieId())).watchedAt(OffsetDateTime.now()));
                }
                Response<SyncResponse> execute3 = hVar3.f912a.sync().addItemsToWatchedHistory(syncItems2).execute();
                if (execute3.isSuccessful()) {
                    return;
                }
                throw new IOException("Trakt History Error: " + execute3.code());
            default:
                h hVar4 = this.f903e;
                hVar4.a();
                if (hVar4.f912a == null) {
                    return;
                }
                SyncItems syncItems3 = new SyncItems();
                Movie movie4 = this.f904f;
                if (movie4.isSeries()) {
                    syncItems3.shows(new SyncShow().id(ShowIds.tmdb((int) movie4.getMovieId())));
                } else {
                    syncItems3.movies(new SyncMovie().id(MovieIds.tmdb((int) movie4.getMovieId())));
                }
                Response<SyncResponse> execute4 = hVar4.f912a.sync().addItemsToWatchlist(syncItems3).execute();
                if (execute4.isSuccessful()) {
                    return;
                }
                throw new IOException("Trakt Watchlist Error: " + execute4.code());
        }
    }
}
