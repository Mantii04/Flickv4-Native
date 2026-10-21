package y4;

import com.uwetrottmann.trakt5.TraktV2;
import d4.InterfaceC0807a;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.AnimesListActivity;
import v1.InterfaceC1755n;

/* renamed from: y4.n, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C1917n implements InterfaceC1755n, InterfaceC0807a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnimesListActivity f21263b;

    public /* synthetic */ C1917n(AnimesListActivity animesListActivity) {
        this.f21263b = animesListActivity;
    }

    @Override // d4.InterfaceC0807a
    public void onMoreAsked(int i2, int i7, int i8) {
        AnimesListActivity animesListActivity = this.f21263b;
        int i9 = animesListActivity.f14522w + 1;
        animesListActivity.f14522w = i9;
        String string = App.getInstance().f14440s.getString("genre_anime", "");
        String string2 = App.getInstance().f14440s.getString("year_anime", "");
        String string3 = App.getInstance().f14440s.getString("type_anime", "");
        String string4 = App.getInstance().f14440s.getString("lang_anime", "");
        if (string.equals("All")) {
            string = "";
        }
        string3.equals("All");
        if (string2.equals("All")) {
            string2 = "";
        }
        if (string4.equals("All")) {
            string4 = "";
        }
        animesListActivity.f14505A.addAll(App.getInstance().f14439r.getGoAnime(string, string2, animesListActivity.f14525z.equals(TraktV2.API_VERSION) ? "" : string4, i9));
        if (animesListActivity.f14505A.size() < 1) {
            I3.w.make(animesListActivity.findViewById(R.id.activity_player), animesListActivity.getString(R.string.no_more_content), 0).show();
        }
        animesListActivity.f14507C.getAdapter().notifyDataSetChanged();
        animesListActivity.f14507C.invalidate();
    }

    @Override // v1.InterfaceC1755n
    public void onRefresh() {
        AnimesListActivity animesListActivity = this.f21263b;
        animesListActivity.f14522w = 0;
        animesListActivity.f14505A.clear();
        animesListActivity.e(animesListActivity.f14522w);
    }
}
