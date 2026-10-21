package y4;

import android.view.Menu;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.DramaDetailActivity;

/* renamed from: y4.v, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1932v implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DramaDetailActivity f21295b;

    public RunnableC1932v(DramaDetailActivity dramaDetailActivity) {
        this.f21295b = dramaDetailActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        Menu menu;
        DramaDetailActivity dramaDetailActivity = this.f21295b;
        try {
            if (!App.getInstance().f14439r.isMovieFavorited_ANIME(dramaDetailActivity.f14562t.toMovie()) || (menu = dramaDetailActivity.f14568z) == null) {
                return;
            }
            menu.findItem(R.id.action_fav).setIcon(R.drawable.ic_action_favorite);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
