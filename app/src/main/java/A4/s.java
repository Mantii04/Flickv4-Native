package A4;

import com.google.gson.JsonElement;
import com.uwetrottmann.trakt5.entities.BaseMovie;
import com.uwetrottmann.trakt5.entities.BaseShow;
import com.uwetrottmann.trakt5.entities.HistoryEntry;
import com.uwetrottmann.trakt5.entities.Movie;
import com.uwetrottmann.trakt5.entities.Show;
import flix.com.vision.activities.MovieDetailActivityLeanBack;
import flix.com.vision.activities.TraktActivity;
import flix.com.vision.activities.leanback.SlideshowActivity;
import flix.com.vision.models.TmdbImagesResponse;
import io.reactivex.Observable;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.List;

/* loaded from: classes2.dex */
public final /* synthetic */ class s implements Function {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f93b;

    public /* synthetic */ s(int i2) {
        this.f93b = i2;
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        String str;
        Show show;
        switch (this.f93b) {
            case 0:
                TmdbImagesResponse tmdbImagesResponse = (TmdbImagesResponse) obj;
                int i2 = SlideshowActivity.f15502v;
                List<TmdbImagesResponse.TmdbLogo> list = tmdbImagesResponse.logos;
                if (list == null || list.isEmpty()) {
                    return "";
                }
                for (TmdbImagesResponse.TmdbLogo tmdbLogo : tmdbImagesResponse.logos) {
                    if ("en".equalsIgnoreCase(tmdbLogo.language)) {
                        return tmdbLogo.filePath;
                    }
                }
                return tmdbImagesResponse.logos.get(0).filePath;
            case 1:
                JsonElement jsonElement = (JsonElement) obj;
                return (jsonElement.isJsonObject() && jsonElement.getAsJsonObject().has("poster_path")) ? A.i.k("https://image.tmdb.org/t/p/w185", jsonElement.getAsJsonObject().get("poster_path").getAsString()) : "";
            case 2:
                return Observable.fromCallable(new Z4.k((String) obj, 1)).subscribeOn(Schedulers.io());
            case 3:
                TmdbImagesResponse tmdbImagesResponse2 = (TmdbImagesResponse) obj;
                int i7 = MovieDetailActivityLeanBack.f14880a1;
                List<TmdbImagesResponse.TmdbLogo> list2 = tmdbImagesResponse2.logos;
                if (list2 == null || list2.isEmpty()) {
                    return "";
                }
                for (TmdbImagesResponse.TmdbLogo tmdbLogo2 : tmdbImagesResponse2.logos) {
                    if ("en".equalsIgnoreCase(tmdbLogo2.language) && (str = tmdbLogo2.filePath) != null && str.endsWith("png")) {
                        return tmdbLogo2.filePath;
                    }
                }
                return tmdbImagesResponse2.logos.get(0).filePath;
            case 4:
                HistoryEntry historyEntry = (HistoryEntry) obj;
                int i8 = TraktActivity.f15234u;
                Movie movie = historyEntry.movie;
                if (movie != null) {
                    return TraktActivity.f(movie);
                }
                if (historyEntry.episode == null || (show = historyEntry.show) == null) {
                    return new flix.com.vision.models.Movie();
                }
                flix.com.vision.models.Movie g7 = TraktActivity.g(show);
                g7.setTitle(historyEntry.show.title + " - S" + historyEntry.episode.season + "E" + historyEntry.episode.number);
                return g7;
            case 5:
                List list3 = (List) obj;
                int i9 = TraktActivity.f15234u;
                return list3;
            default:
                int i10 = TraktActivity.f15234u;
                return obj instanceof BaseMovie ? TraktActivity.f(((BaseMovie) obj).movie) : obj instanceof BaseShow ? TraktActivity.g(((BaseShow) obj).show) : new flix.com.vision.models.Movie();
        }
    }

    public /* synthetic */ s(TraktActivity traktActivity, int i2) {
        this.f93b = i2;
    }
}
