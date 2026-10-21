package y4;

import android.content.Intent;
import flix.com.vision.activities.MovieDetailActivity;
import flix.com.vision.activities.SearchResultsActivity;
import flix.com.vision.materialsearchview.MaterialSearchView;
import flix.com.vision.subtitles.OpenSubtitles;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;

/* renamed from: y4.q0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1924q0 implements MaterialSearchView.OnQueryTextListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MovieDetailActivity f21276a;

    public C1924q0(MovieDetailActivity movieDetailActivity) {
        this.f21276a = movieDetailActivity;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        if (str.length() > 1) {
            MovieDetailActivity movieDetailActivity = this.f21276a;
            Disposable disposable = movieDetailActivity.f14824P0;
            if (disposable != null) {
                disposable.dispose();
            }
            movieDetailActivity.f14824P0 = D4.a.getSuggest(movieDetailActivity.getBaseContext(), str).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new C1929t0(movieDetailActivity), new C1931u0());
        }
        return true;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        MovieDetailActivity movieDetailActivity = this.f21276a;
        if (str != null && str.length() >= 1) {
            Intent intent = new Intent(movieDetailActivity, (Class<?>) SearchResultsActivity.class);
            intent.putExtra(OpenSubtitles.Params.Key.QUERY, str);
            movieDetailActivity.startActivity(intent);
            movieDetailActivity.f14843e0.saveQueryToDb(str, System.currentTimeMillis());
        }
        movieDetailActivity.f14843e0.activityResumed();
        movieDetailActivity.f14843e0.closeSearch();
        movieDetailActivity.f14843e0.clearFocus();
        return true;
    }
}
