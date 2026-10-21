package y4;

import android.content.Intent;
import flix.com.vision.App;
import flix.com.vision.activities.AnimeSearchResultActivityClassic;
import flix.com.vision.activities.AnimeSearchResultActivty;
import flix.com.vision.activities.DramaHomeActivity;
import flix.com.vision.materialsearchview.MaterialSearchView;
import flix.com.vision.subtitles.OpenSubtitles;
import java.net.URLEncoder;
import java.util.ArrayList;

/* renamed from: y4.C, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1888C implements MaterialSearchView.OnQueryTextListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DramaHomeActivity f21112a;

    public C1888C(DramaHomeActivity dramaHomeActivity) {
        this.f21112a = dramaHomeActivity;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        int i2 = 0;
        if (str.length() > 1) {
            int i7 = DramaHomeActivity.f14580W;
            DramaHomeActivity dramaHomeActivity = this.f21112a;
            ArrayList arrayList = new ArrayList();
            String concat = "http://suggestqueries.google.com/complete/search?client=youtube&ds=yt&q=".concat(str);
            try {
                URLEncoder.encode(str, "UTF-8");
                App.getInstance().addToRequestQueue(new h2.t(0, concat, new C1886A(dramaHomeActivity, arrayList, i2), new androidx.media3.exoplayer.source.chunk.a(25)), "MOVIES_App_Update_version");
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
        DramaHomeActivity dramaHomeActivity = this.f21112a;
        if (isTVDevice) {
            Intent intent = new Intent(dramaHomeActivity, (Class<?>) AnimeSearchResultActivty.class);
            intent.putExtra(OpenSubtitles.Params.Key.QUERY, str);
            dramaHomeActivity.startActivity(intent);
            return false;
        }
        Intent intent2 = new Intent(dramaHomeActivity, (Class<?>) AnimeSearchResultActivityClassic.class);
        intent2.putExtra(OpenSubtitles.Params.Key.QUERY, str);
        dramaHomeActivity.startActivity(intent2);
        return false;
    }
}
