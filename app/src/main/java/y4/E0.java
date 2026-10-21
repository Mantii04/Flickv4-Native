package y4;

import android.content.Intent;
import com.google.firebase.analytics.FirebaseAnalytics;
import flix.com.vision.App;
import flix.com.vision.activities.SearchActivityClassic;
import flix.com.vision.activities.SearchResultsActivity;
import flix.com.vision.materialsearchview.MaterialSearchView;
import flix.com.vision.subtitles.OpenSubtitles;

/* loaded from: classes2.dex */
public final class E0 implements MaterialSearchView.OnQueryTextListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchActivityClassic f21122a;

    public E0(SearchActivityClassic searchActivityClassic) {
        this.f21122a = searchActivityClassic;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        return false;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        if (str != null) {
            if (str.length() >= 1) {
                SearchActivityClassic searchActivityClassic = this.f21122a;
                Intent intent = new Intent(searchActivityClassic, (Class<?>) SearchResultsActivity.class);
                intent.putExtra(OpenSubtitles.Params.Key.QUERY, str);
                intent.putExtra("tv_shows_only", App.getInstance().f14440s.getInt(FirebaseAnalytics.Param.CONTENT_TYPE, 0) == 1);
                searchActivityClassic.startActivity(intent);
                searchActivityClassic.f14978e.saveQueryToDb(searchActivityClassic.f14979f, System.currentTimeMillis());
            }
        }
        return false;
    }
}
