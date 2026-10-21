package D4;

import android.util.Log;
import com.uwetrottmann.trakt5.TraktV2;
import com.uwetrottmann.trakt5.entities.MovieIds;
import com.uwetrottmann.trakt5.entities.ShowIds;
import com.uwetrottmann.trakt5.entities.SyncItems;
import com.uwetrottmann.trakt5.entities.SyncMovie;
import com.uwetrottmann.trakt5.entities.SyncResponse;
import com.uwetrottmann.trakt5.entities.SyncShow;
import flix.com.vision.App;
import flix.com.vision.models.Movie;
import io.reactivex.functions.Action;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.threeten.bp.OffsetDateTime;
import retrofit2.Response;

/* loaded from: classes2.dex */
public final /* synthetic */ class g implements Action {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f910b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ h f911e;

    public /* synthetic */ g(h hVar, int i2) {
        this.f910b = i2;
        this.f911e = hVar;
    }

    @Override // io.reactivex.functions.Action
    public final void run() {
        ArrayList<Movie> watchedMoviesFromDb;
        switch (this.f910b) {
            case 0:
                h hVar = this.f911e;
                hVar.a();
                TraktV2 traktV2 = hVar.f912a;
                if (traktV2 != null) {
                    traktV2.checkin().deleteActiveCheckin().execute();
                    return;
                }
                return;
            default:
                h hVar2 = this.f911e;
                hVar2.a();
                if (hVar2.f912a == null || (watchedMoviesFromDb = App.getInstance().f14439r.getWatchedMoviesFromDb()) == null || watchedMoviesFromDb.isEmpty()) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                Iterator<Movie> it = watchedMoviesFromDb.iterator();
                while (it.hasNext()) {
                    Movie next = it.next();
                    if (next.isSeries()) {
                        if (next.getMovieId() > 0) {
                            arrayList2.add(new SyncShow().id(ShowIds.tmdb((int) next.getMovieId())));
                        }
                    } else if (next.getMovieId() > 0) {
                        arrayList.add(new SyncMovie().id(MovieIds.tmdb((int) next.getMovieId())).watchedAt(OffsetDateTime.now()));
                    } else if (next.getImdbID() != null && !next.getImdbID().isEmpty()) {
                        arrayList.add(new SyncMovie().id(MovieIds.imdb(next.getImdbID())).watchedAt(OffsetDateTime.now()));
                    }
                }
                SyncItems syncItems = new SyncItems();
                if (!arrayList.isEmpty()) {
                    syncItems.movies(arrayList);
                }
                if (!arrayList2.isEmpty()) {
                    syncItems.shows(arrayList2);
                }
                if (arrayList.isEmpty() && arrayList2.isEmpty()) {
                    return;
                }
                Response<SyncResponse> execute = hVar2.f912a.sync().addItemsToWatchedHistory(syncItems).execute();
                if (execute.isSuccessful()) {
                    Log.d("TraktAPI", "History Sync Successful");
                    A.i.x(App.getInstance().f14440s, "user_movies_history_synced_with_trakt", true);
                    return;
                } else {
                    throw new IOException("Trakt Server Error: " + execute.code());
                }
        }
    }
}
