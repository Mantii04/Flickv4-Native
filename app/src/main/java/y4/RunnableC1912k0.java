package y4;

import android.view.Menu;
import android.widget.ImageView;
import android.widget.LinearLayout;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.MovieDetailActivity;

/* renamed from: y4.k0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC1912k0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21246b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MovieDetailActivity f21247e;

    public /* synthetic */ RunnableC1912k0(MovieDetailActivity movieDetailActivity, int i2) {
        this.f21246b = i2;
        this.f21247e = movieDetailActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MovieDetailActivity movieDetailActivity = this.f21247e;
        switch (this.f21246b) {
            case 0:
                ImageView imageView = movieDetailActivity.f14853m;
                if (imageView != null && imageView.getVisibility() != 0 && movieDetailActivity.f14826Q0) {
                    movieDetailActivity.f14853m.setVisibility(0);
                    movieDetailActivity.f14853m.startAnimation(movieDetailActivity.f14807H);
                    break;
                }
                break;
            case 1:
                movieDetailActivity.f14846g0.requestFocus();
                break;
            case 2:
                movieDetailActivity.f14846g0.setEnabled(true);
                break;
            case 3:
                movieDetailActivity.f14846g0.setEnabled(true);
                break;
            case 4:
                movieDetailActivity.f14853m.setVisibility(0);
                movieDetailActivity.f14853m.startAnimation(movieDetailActivity.f14807H);
                break;
            case 5:
                movieDetailActivity.f14828R0 = true;
                break;
            case 6:
                movieDetailActivity.f14811J.fullScroll(33);
                movieDetailActivity.f14811J.setVisibility(0);
                movieDetailActivity.f14860q.setVisibility(8);
                movieDetailActivity.f14846g0.requestFocus();
                break;
            case 7:
                if (movieDetailActivity.f14847h0.getVisibility() != 0) {
                    movieDetailActivity.f14847h0.setVisibility(0);
                    movieDetailActivity.f14847h0.startAnimation(movieDetailActivity.f14807H);
                }
                LinearLayout linearLayout = movieDetailActivity.f14864s;
                if (linearLayout != null && App.f14424I) {
                    linearLayout.setVisibility(0);
                    break;
                }
                break;
            default:
                int i2 = MovieDetailActivity.f14792S0;
                movieDetailActivity.getClass();
                try {
                    if (App.getInstance().f14439r.isMovieFavorited(movieDetailActivity.f14852l0)) {
                        ImageView imageView2 = movieDetailActivity.f14794A0;
                        if (imageView2 != null) {
                            imageView2.setImageResource(R.drawable.ic_delete_bookmark);
                        }
                        Menu menu = movieDetailActivity.f14814K0;
                        if (menu != null) {
                            menu.findItem(R.id.action_fav).setIcon(R.drawable.ic_action_favorite);
                            break;
                        }
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                break;
        }
    }
}
