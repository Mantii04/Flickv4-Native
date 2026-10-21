package y4;

import android.content.Intent;
import com.google.firebase.analytics.FirebaseAnalytics;
import flix.com.vision.App;
import flix.com.vision.activities.MainActivity;
import flix.com.vision.activities.SearchResultsActivity;
import flix.com.vision.materialsearchview.MaterialSearchView;
import flix.com.vision.subtitles.OpenSubtitles;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.schedulers.Schedulers;
import x4.C1851d;

/* renamed from: y4.h0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1906h0 implements MaterialSearchView.OnQueryTextListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MainActivity f21234a;

    public C1906h0(MainActivity mainActivity) {
        this.f21234a = mainActivity;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        if (str.length() > 1) {
            MainActivity mainActivity = this.f21234a;
            Disposable disposable = mainActivity.f14762O;
            if (disposable != null) {
                disposable.dispose();
            }
            mainActivity.f14762O = D4.a.getSuggest(mainActivity.getBaseContext(), str).observeOn(AndroidSchedulers.mainThread()).subscribeOn(Schedulers.newThread()).subscribe(new C1900e0(mainActivity, 1), new C1851d(11));
        }
        return true;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        MainActivity mainActivity = this.f21234a;
        if (str == null || str.length() < 1) {
            mainActivity.f14783z.activityResumed();
            mainActivity.f14783z.closeSearch();
            mainActivity.f14783z.clearFocus();
            return true;
        }
        Intent intent = new Intent(mainActivity, (Class<?>) SearchResultsActivity.class);
        intent.putExtra(OpenSubtitles.Params.Key.QUERY, str);
        intent.putExtra("tv_shows_only", App.getInstance().f14440s.getInt(FirebaseAnalytics.Param.CONTENT_TYPE, 0) == 1);
        mainActivity.startActivity(intent);
        mainActivity.f14783z.saveQueryToDb(str, System.currentTimeMillis());
        return true;
    }
}
