package z4;

import flix.com.vision.activities.adult.AdultVideosSearchActivity;
import flix.com.vision.materialsearchview.MaterialSearchView;

/* renamed from: z4.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C2004m implements MaterialSearchView.OnQueryTextListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AdultVideosSearchActivity f21459a;

    public C2004m(AdultVideosSearchActivity adultVideosSearchActivity) {
        this.f21459a = adultVideosSearchActivity;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        return false;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        if (str == null || str.length() < 1) {
            return false;
        }
        AdultVideosSearchActivity adultVideosSearchActivity = this.f21459a;
        adultVideosSearchActivity.f();
        adultVideosSearchActivity.getSupportActionBar().setTitle("Results for \"" + str + "\"");
        adultVideosSearchActivity.f15385m.clear();
        adultVideosSearchActivity.f15387p.notifyDataSetChanged();
        adultVideosSearchActivity.f15391t = str;
        adultVideosSearchActivity.getVideos(adultVideosSearchActivity.f15390s);
        return false;
    }
}
