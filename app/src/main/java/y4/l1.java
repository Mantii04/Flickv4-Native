package y4;

import com.uwetrottmann.trakt5.entities.MovieIds;
import com.uwetrottmann.trakt5.entities.PlaybackResponse;
import com.uwetrottmann.trakt5.entities.ShowIds;
import flix.com.vision.activities.TraktActivity;
import flix.com.vision.models.Movie;
import io.reactivex.functions.Function;

/* loaded from: classes2.dex */
public final /* synthetic */ class l1 implements Function {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21255b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f21256e;

    public /* synthetic */ l1(Object obj, int i2) {
        this.f21255b = i2;
        this.f21256e = obj;
    }

    @Override // io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Integer num;
        Integer num2;
        Object obj2 = this.f21256e;
        switch (this.f21255b) {
            case 0:
                return TraktActivity.e((TraktActivity) obj2, (Movie) obj);
            case 1:
                PlaybackResponse playbackResponse = (PlaybackResponse) obj;
                int i2 = TraktActivity.f15234u;
                ((TraktActivity) obj2).getClass();
                Movie movie = new Movie();
                if (playbackResponse != null) {
                    long j7 = 0;
                    if (playbackResponse.movie != null) {
                        movie.setType(0);
                        MovieIds movieIds = playbackResponse.movie.ids;
                        if (movieIds != null && (num2 = movieIds.tmdb) != null) {
                            j7 = num2.intValue();
                        }
                        movie.setMovieId(j7);
                    } else if (playbackResponse.show != null) {
                        movie.setType(1);
                        ShowIds showIds = playbackResponse.show.ids;
                        if (showIds != null && (num = showIds.tmdb) != null) {
                            j7 = num.intValue();
                        }
                        movie.setMovieId(j7);
                        if (playbackResponse.episode != null) {
                            movie.setTitle("S" + playbackResponse.episode.season + "E" + playbackResponse.episode.number);
                        }
                    }
                }
                return movie;
            default:
                int i7 = TraktActivity.f15234u;
                Movie movie2 = (Movie) obj2;
                movie2.setImage_url((String) obj);
                return movie2;
        }
    }
}
