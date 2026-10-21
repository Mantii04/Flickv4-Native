package D4;

import com.uwetrottmann.trakt5.TraktV2;
import com.uwetrottmann.trakt5.entities.Episode;
import com.uwetrottmann.trakt5.entities.EpisodeCheckin;
import com.uwetrottmann.trakt5.entities.ShowIds;
import com.uwetrottmann.trakt5.entities.SyncEpisode;
import com.uwetrottmann.trakt5.entities.SyncItems;
import com.uwetrottmann.trakt5.entities.SyncResponse;
import com.uwetrottmann.trakt5.entities.SyncSeason;
import com.uwetrottmann.trakt5.entities.SyncShow;
import com.uwetrottmann.trakt5.enums.Extended;
import com.uwetrottmann.trakt5.services.Seasons;
import flix.com.vision.models.Movie;
import io.reactivex.functions.Action;
import java.io.IOException;
import java.util.List;
import org.threeten.bp.OffsetDateTime;
import retrofit2.Response;

/* loaded from: classes2.dex */
public final /* synthetic */ class f implements Action {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f905b = 0;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ h f906e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Movie f907f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f908j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ int f909m;

    public /* synthetic */ f(h hVar, int i2, int i7, Movie movie) {
        this.f906e = hVar;
        this.f908j = i2;
        this.f909m = i7;
        this.f907f = movie;
    }

    @Override // io.reactivex.functions.Action
    public final void run() {
        switch (this.f905b) {
            case 0:
                h hVar = this.f906e;
                hVar.a();
                if (hVar.f912a == null) {
                    return;
                }
                SyncItems syncItems = new SyncItems();
                syncItems.shows(new SyncShow().id(ShowIds.tmdb((int) this.f907f.getMovieId())).seasons(new SyncSeason().number(this.f909m).episodes(new SyncEpisode().number(this.f908j))));
                Response<SyncResponse> execute = hVar.f912a.sync().addItemsToWatchedHistory(syncItems).execute();
                if (execute.isSuccessful()) {
                    return;
                }
                throw new IOException("Trakt Error: " + execute.code());
            default:
                h hVar2 = this.f906e;
                hVar2.a();
                TraktV2 traktV2 = hVar2.f912a;
                if (traktV2 == null) {
                    return;
                }
                traktV2.checkin().deleteActiveCheckin().execute();
                Seasons seasons = hVar2.f912a.seasons();
                Movie movie = this.f907f;
                String imdbID = movie.getImdbID();
                Extended extended = Extended.EPISODES;
                int i2 = this.f908j;
                Response<List<Episode>> execute2 = seasons.season(imdbID, i2, extended).execute();
                if (!execute2.isSuccessful() || execute2.body() == null) {
                    return;
                }
                for (Episode episode : execute2.body()) {
                    int intValue = episode.number.intValue();
                    int i7 = this.f909m;
                    if (intValue == i7) {
                        hVar2.f912a.checkin().checkin(new EpisodeCheckin.Builder(new SyncEpisode().id(episode.ids).watchedAt(OffsetDateTime.now()), "Flix Vision", "").message("Watching " + movie.getTitle() + " S" + i2 + "E" + i7).build()).execute();
                        return;
                    }
                }
                return;
        }
    }

    public /* synthetic */ f(h hVar, Movie movie, int i2, int i7) {
        this.f906e = hVar;
        this.f907f = movie;
        this.f908j = i2;
        this.f909m = i7;
    }
}
