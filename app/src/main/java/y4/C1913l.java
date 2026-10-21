package y4;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import com.google.firebase.analytics.FirebaseAnalytics;
import flix.com.vision.App;
import flix.com.vision.activities.AnimeSearchResultActivityClassic;
import flix.com.vision.activities.AnimesListActivity;
import flix.com.vision.activities.DramaHomeActivity;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.activities.MovieDetailActivityLeanBack;
import flix.com.vision.activities.SearchResultsActivity;
import flix.com.vision.subtitles.OpenSubtitles;

/* renamed from: y4.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C1913l implements AdapterView.OnItemClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21250b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ flix.com.vision.activities.base.a f21251e;

    public /* synthetic */ C1913l(flix.com.vision.activities.base.a aVar, int i2) {
        this.f21250b = i2;
        this.f21251e = aVar;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i2, long j7) {
        switch (this.f21250b) {
            case 0:
                AnimesListActivity animesListActivity = (AnimesListActivity) this.f21251e;
                String suggestionAtPosition = animesListActivity.f14509b.getSuggestionAtPosition(i2);
                if (suggestionAtPosition != null && suggestionAtPosition.length() >= 1) {
                    Intent intent = new Intent(animesListActivity, (Class<?>) AnimeSearchResultActivityClassic.class);
                    intent.putExtra(OpenSubtitles.Params.Key.QUERY, suggestionAtPosition);
                    animesListActivity.startActivity(intent);
                    break;
                }
                break;
            case 1:
                DramaHomeActivity dramaHomeActivity = (DramaHomeActivity) this.f21251e;
                String suggestionAtPosition2 = dramaHomeActivity.f14604e.getSuggestionAtPosition(i2);
                if (suggestionAtPosition2 != null && suggestionAtPosition2.length() >= 1) {
                    Intent intent2 = new Intent(dramaHomeActivity, (Class<?>) AnimeSearchResultActivityClassic.class);
                    intent2.putExtra(OpenSubtitles.Params.Key.QUERY, suggestionAtPosition2);
                    dramaHomeActivity.startActivity(intent2);
                    break;
                }
                break;
            case 2:
                MainActivity mainActivity = (MainActivity) this.f21251e;
                String suggestionAtPosition3 = mainActivity.f14783z.getSuggestionAtPosition(i2);
                if (suggestionAtPosition3 != null) {
                    if (suggestionAtPosition3.length() >= 1) {
                        Intent intent3 = new Intent(mainActivity, (Class<?>) SearchResultsActivity.class);
                        intent3.putExtra(OpenSubtitles.Params.Key.QUERY, suggestionAtPosition3);
                        intent3.putExtra("tv_shows_only", App.getInstance().f14440s.getInt(FirebaseAnalytics.Param.CONTENT_TYPE, 0) == 1);
                        mainActivity.startActivity(intent3);
                        mainActivity.f14783z.saveQueryToDb(suggestionAtPosition3, System.currentTimeMillis());
                        break;
                    }
                }
                break;
            case 3:
                MovieDetailActivity movieDetailActivity = (MovieDetailActivity) this.f21251e;
                String suggestionAtPosition4 = movieDetailActivity.f14843e0.getSuggestionAtPosition(i2);
                if (suggestionAtPosition4 != null && suggestionAtPosition4.length() >= 1) {
                    Intent intent4 = new Intent(movieDetailActivity, (Class<?>) SearchResultsActivity.class);
                    intent4.putExtra(OpenSubtitles.Params.Key.QUERY, suggestionAtPosition4);
                    movieDetailActivity.startActivity(intent4);
                    movieDetailActivity.f14843e0.saveQueryToDb(suggestionAtPosition4, System.currentTimeMillis());
                    break;
                }
                break;
            default:
                MovieDetailActivityLeanBack movieDetailActivityLeanBack = (MovieDetailActivityLeanBack) this.f21251e;
                String suggestionAtPosition5 = movieDetailActivityLeanBack.f14950m0.getSuggestionAtPosition(i2);
                if (suggestionAtPosition5 != null && suggestionAtPosition5.length() >= 1) {
                    Intent intent5 = new Intent(movieDetailActivityLeanBack, (Class<?>) SearchResultsActivity.class);
                    intent5.putExtra(OpenSubtitles.Params.Key.QUERY, suggestionAtPosition5);
                    movieDetailActivityLeanBack.startActivity(intent5);
                    movieDetailActivityLeanBack.f14950m0.saveQueryToDb(suggestionAtPosition5, System.currentTimeMillis());
                    break;
                }
                break;
        }
    }
}
