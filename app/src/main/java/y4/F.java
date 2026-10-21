package y4;

import android.app.FragmentManager;
import android.os.AsyncTask;
import flix.com.vision.activities.DramaSearchActivityMobile;
import flix.com.vision.materialsearchview.MaterialSearchView;

/* loaded from: classes2.dex */
public final class F implements MaterialSearchView.OnQueryTextListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DramaSearchActivityMobile f21123a;

    public F(DramaSearchActivityMobile dramaSearchActivityMobile) {
        this.f21123a = dramaSearchActivityMobile;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextChange(String str) {
        return false;
    }

    @Override // flix.com.vision.materialsearchview.MaterialSearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        if (str != null && str.length() >= 1) {
            DramaSearchActivityMobile dramaSearchActivityMobile = this.f21123a;
            FragmentManager fragmentManager = dramaSearchActivityMobile.getFragmentManager();
            Q4.d newInstance = Q4.d.newInstance(dramaSearchActivityMobile, false);
            dramaSearchActivityMobile.f14637s = newInstance;
            newInstance.setloading();
            try {
                dramaSearchActivityMobile.f14637s.show(fragmentManager, "");
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            dramaSearchActivityMobile.getSupportActionBar().setTitle("Results for \"" + str + "\"");
            dramaSearchActivityMobile.f14631j.clear();
            dramaSearchActivityMobile.f14633n.notifyDataSetChanged();
            new E(dramaSearchActivityMobile, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
        return false;
    }
}
