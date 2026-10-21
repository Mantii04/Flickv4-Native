package y4;

import android.view.Menu;
import android.widget.ImageView;
import android.widget.LinearLayout;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.MovieDetailActivityLeanBack;

/* renamed from: y4.v0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC1933v0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21296b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MovieDetailActivityLeanBack f21297e;

    public /* synthetic */ RunnableC1933v0(MovieDetailActivityLeanBack movieDetailActivityLeanBack, int i2) {
        this.f21296b = i2;
        this.f21297e = movieDetailActivityLeanBack;
    }

    @Override // java.lang.Runnable
    public final void run() {
        MovieDetailActivityLeanBack movieDetailActivityLeanBack = this.f21297e;
        switch (this.f21296b) {
            case 0:
                movieDetailActivityLeanBack.f14915R.fullScroll(33);
                movieDetailActivityLeanBack.f14915R.setVisibility(0);
                movieDetailActivityLeanBack.f14940f.setVisibility(8);
                movieDetailActivityLeanBack.f14953o0.requestFocus();
                break;
            case 1:
                if (movieDetailActivityLeanBack.f14955p0.getVisibility() != 0) {
                    movieDetailActivityLeanBack.f14955p0.setVisibility(0);
                    movieDetailActivityLeanBack.f14955p0.startAnimation(movieDetailActivityLeanBack.f14909O);
                }
                LinearLayout linearLayout = movieDetailActivityLeanBack.f14974z;
                if (linearLayout != null && App.f14424I) {
                    linearLayout.setVisibility(0);
                    break;
                }
                break;
            case 2:
                movieDetailActivityLeanBack.f14953o0.setEnabled(true);
                break;
            case 3:
                movieDetailActivityLeanBack.f14966v.setVisibility(0);
                movieDetailActivityLeanBack.f14966v.startAnimation(movieDetailActivityLeanBack.f14909O);
                break;
            case 4:
                movieDetailActivityLeanBack.f14932Z0 = true;
                break;
            case 5:
                int i2 = MovieDetailActivityLeanBack.f14880a1;
                movieDetailActivityLeanBack.getClass();
                try {
                    if (App.getInstance().f14439r.isMovieFavorited(movieDetailActivityLeanBack.f14963t0)) {
                        ImageView imageView = movieDetailActivityLeanBack.f14898I0;
                        if (imageView != null) {
                            imageView.setImageResource(R.drawable.ic_delete_bookmark);
                        }
                        Menu menu = movieDetailActivityLeanBack.f14918S0;
                        if (menu != null) {
                            menu.findItem(R.id.action_fav).setIcon(R.drawable.ic_action_favorite);
                            break;
                        }
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
                break;
            case 6:
                ImageView imageView2 = movieDetailActivityLeanBack.f14966v;
                if (imageView2 != null && imageView2.getVisibility() != 0 && movieDetailActivityLeanBack.f14930Y0) {
                    movieDetailActivityLeanBack.f14966v.setVisibility(0);
                    movieDetailActivityLeanBack.f14966v.startAnimation(movieDetailActivityLeanBack.f14909O);
                    break;
                }
                break;
            case 7:
                movieDetailActivityLeanBack.f14953o0.requestFocus();
                break;
            default:
                movieDetailActivityLeanBack.f14953o0.setEnabled(true);
                break;
        }
    }
}
