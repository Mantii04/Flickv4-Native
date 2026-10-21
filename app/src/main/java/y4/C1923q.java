package y4;

import android.content.Intent;
import flix.com.vision.App;
import flix.com.vision.activities.AnimeSearchResultActivityClassic;
import flix.com.vision.activities.AnimeSearchResultActivty;
import flix.com.vision.activities.AnimesListActivity;
import flix.com.vision.materialsearchview.MaterialSearchView;
import flix.com.vision.subtitles.OpenSubtitles;
import java.net.URLEncoder;
import java.util.ArrayList;

/* renamed from: y4.q, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1923q implements MaterialSearchView.OnQueryTextListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AnimesListActivity f21275a;

    public C1923q(AnimesListActivity animesListActivity) {
        this.f21275a = animesListActivity;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        int i2 = 1;
        if (str.length() > 1) {
            int i7 = AnimesListActivity.f14504E;
            AnimesListActivity animesListActivity = this.f21275a;
            ArrayList arrayList = new ArrayList();
            String concat = "http://suggestqueries.google.com/complete/search?client=youtube&ds=yt&q=".concat(str);
            try {
                URLEncoder.encode(str, "UTF-8");
                App.getInstance().addToRequestQueue(new h2.t(0, concat, new C1886A(animesListActivity, arrayList, i2), new androidx.media3.exoplayer.source.chunk.a(24)), "MOVIES_App_Update_version");
            } catch (Exception unused) {
            }
        }
        return false;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        if (str == null || str.length() < 1) {
            return false;
        }
        boolean isTVDevice = App.getInstance().isTVDevice();
        AnimesListActivity animesListActivity = this.f21275a;
        if (isTVDevice) {
            Intent intent = new Intent(animesListActivity, (Class<?>) AnimeSearchResultActivty.class);
            intent.putExtra(OpenSubtitles.Params.Key.QUERY, str);
            animesListActivity.startActivity(intent);
            return false;
        }
        Intent intent2 = new Intent(animesListActivity, (Class<?>) AnimeSearchResultActivityClassic.class);
        intent2.putExtra(OpenSubtitles.Params.Key.QUERY, str);
        animesListActivity.startActivity(intent2);
        return false;
    }
}
