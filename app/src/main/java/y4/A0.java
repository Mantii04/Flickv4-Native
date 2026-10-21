package y4;

import android.content.Intent;
import flix.com.vision.activities.MovieDetailActivityLeanBack;
import flix.com.vision.activities.SearchResultsActivity;
import flix.com.vision.materialsearchview.MaterialSearchView;
import flix.com.vision.subtitles.OpenSubtitles;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;
import x4.C1851d;

/* loaded from: classes2.dex */
public final class A0 implements MaterialSearchView.OnQueryTextListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MovieDetailActivityLeanBack f21105a;

    public A0(MovieDetailActivityLeanBack movieDetailActivityLeanBack) {
        this.f21105a = movieDetailActivityLeanBack;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        if (str.length() > 1) {
            MovieDetailActivityLeanBack movieDetailActivityLeanBack = this.f21105a;
            Disposable disposable = movieDetailActivityLeanBack.f14928X0;
            if (disposable != null) {
                disposable.dispose();
            }
            movieDetailActivityLeanBack.f14928X0 = D4.a.getSuggest(movieDetailActivityLeanBack.getBaseContext(), str).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new C1937x0(movieDetailActivityLeanBack, 4), new C1851d(26));
        }
        return true;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        MovieDetailActivityLeanBack movieDetailActivityLeanBack = this.f21105a;
        if (str != null && str.length() >= 1) {
            Intent intent = new Intent(movieDetailActivityLeanBack, (Class<?>) SearchResultsActivity.class);
            intent.putExtra(OpenSubtitles.Params.Key.QUERY, str);
            movieDetailActivityLeanBack.startActivity(intent);
            movieDetailActivityLeanBack.f14950m0.saveQueryToDb(str, System.currentTimeMillis());
        }
        movieDetailActivityLeanBack.f14950m0.activityResumed();
        movieDetailActivityLeanBack.f14950m0.closeSearch();
        movieDetailActivityLeanBack.f14950m0.clearFocus();
        return true;
    }
}
