package y4;

import android.view.Menu;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.AnimeDetailActivity;

/* renamed from: y4.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1892b implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnimeDetailActivity f21206b;

    public RunnableC1892b(AnimeDetailActivity animeDetailActivity) {
        this.f21206b = animeDetailActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        Menu menu;
        AnimeDetailActivity animeDetailActivity = this.f21206b;
        try {
            if (!App.getInstance().f14439r.isMovieFavorited_ANIME(animeDetailActivity.f14463t.toMovie()) || (menu = animeDetailActivity.f14452C) == null) {
                return;
            }
            menu.findItem(R.id.action_fav).setIcon(R.drawable.ic_action_favorite);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }
}
