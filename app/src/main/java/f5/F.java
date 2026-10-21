package f5;

import android.widget.Toast;
import flix.com.vision.App;
import flix.com.vision.materialsearchview.MaterialSearchView;
import flix.com.vision.tv.TVCategory;
import flix.com.vision.tv.TVCategorySearchActivity;

/* loaded from: classes2.dex */
public final class F implements MaterialSearchView.OnQueryTextListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TVCategorySearchActivity f14386a;

    public F(TVCategorySearchActivity tVCategorySearchActivity) {
        this.f14386a = tVCategorySearchActivity;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        return false;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        if (str != null && str.length() >= 1) {
            TVCategorySearchActivity tVCategorySearchActivity = this.f14386a;
            tVCategorySearchActivity.getSupportActionBar().setTitle("Results for \"" + str + "\"");
            tVCategorySearchActivity.f16283j.clear();
            tVCategorySearchActivity.f16282f.notifyDataSetChanged();
            tVCategorySearchActivity.getClass();
            for (int i2 = 0; i2 < App.getInstance().f14437p.size(); i2++) {
                if (((TVCategory) App.getInstance().f14437p.get(i2)).getCategoryName().toLowerCase().contains(str.toLowerCase())) {
                    tVCategorySearchActivity.f16283j.add((TVCategory) App.getInstance().f14437p.get(i2));
                }
            }
            if (tVCategorySearchActivity.f16283j.size() > 0) {
                tVCategorySearchActivity.f16282f.notifyDataSetChanged();
            } else {
                Toast.makeText(tVCategorySearchActivity.getBaseContext(), "Nothing found!", 0).show();
            }
        }
        return false;
    }
}
