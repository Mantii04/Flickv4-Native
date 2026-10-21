package y4;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.RelativeLayout;
import flix.com.vision.R;
import flix.com.vision.activities.MovieDetailActivity;

/* renamed from: y4.o0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ViewOnFocusChangeListenerC1920o0 implements View.OnFocusChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21269b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MovieDetailActivity f21270e;

    public /* synthetic */ ViewOnFocusChangeListenerC1920o0(MovieDetailActivity movieDetailActivity, int i2) {
        this.f21269b = i2;
        this.f21270e = movieDetailActivity;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z6) {
        float f3;
        RelativeLayout relativeLayout;
        float f7;
        RelativeLayout relativeLayout2;
        float f8;
        RelativeLayout relativeLayout3;
        switch (this.f21269b) {
            case 0:
                MovieDetailActivity movieDetailActivity = this.f21270e;
                if (!z6) {
                    movieDetailActivity.f14879z0.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivity, R.color.white), PorterDuff.Mode.SRC_IN));
                    movieDetailActivity.f14873w0.setTextColor(movieDetailActivity.getResources().getColor(R.color.white));
                    movieDetailActivity.f14846g0.animate().scaleX(1.0f).start();
                    movieDetailActivity.f14846g0.animate().scaleY(1.0f).start();
                    break;
                } else {
                    movieDetailActivity.f14879z0.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivity, R.color.black), PorterDuff.Mode.SRC_IN));
                    movieDetailActivity.f14873w0.setTextColor(movieDetailActivity.getResources().getColor(R.color.black));
                    movieDetailActivity.f14846g0.animate().setDuration(100L).scaleX(1.03f).start();
                    movieDetailActivity.f14846g0.animate().setDuration(100L).scaleY(1.03f).start();
                    break;
                }
            case 1:
                MovieDetailActivity movieDetailActivity2 = this.f21270e;
                if (z6) {
                    movieDetailActivity2.f14875x0.setTextColor(movieDetailActivity2.getResources().getColor(R.color.black));
                    f3 = 1.03f;
                    b.c.r(movieDetailActivity2.f14850j0, 100L, 1.03f);
                    relativeLayout = movieDetailActivity2.f14850j0;
                } else {
                    movieDetailActivity2.f14875x0.setTextColor(movieDetailActivity2.getResources().getColor(R.color.white));
                    f3 = 1.0f;
                    b.c.r(movieDetailActivity2.f14850j0, 100L, 1.0f);
                    relativeLayout = movieDetailActivity2.f14850j0;
                }
                b.c.w(relativeLayout, 100L, f3);
                break;
            case 2:
                MovieDetailActivity movieDetailActivity3 = this.f21270e;
                if (z6) {
                    movieDetailActivity3.f14794A0.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivity3, R.color.black), PorterDuff.Mode.SRC_IN));
                    f7 = 1.02f;
                    b.c.r(movieDetailActivity3.f14848i0, 100L, 1.02f);
                    relativeLayout2 = movieDetailActivity3.f14848i0;
                } else {
                    movieDetailActivity3.f14794A0.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivity3, R.color.white), PorterDuff.Mode.SRC_IN));
                    f7 = 1.0f;
                    b.c.r(movieDetailActivity3.f14848i0, 100L, 1.0f);
                    relativeLayout2 = movieDetailActivity3.f14848i0;
                }
                b.c.w(relativeLayout2, 100L, f7);
                break;
            case 3:
                MovieDetailActivity movieDetailActivity4 = this.f21270e;
                if (z6) {
                    movieDetailActivity4.f14855n.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivity4, R.color.black), PorterDuff.Mode.SRC_IN));
                    f8 = 1.02f;
                    b.c.r(movieDetailActivity4.f14851k0, 100L, 1.02f);
                    relativeLayout3 = movieDetailActivity4.f14851k0;
                } else {
                    movieDetailActivity4.f14855n.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivity4, R.color.accent), PorterDuff.Mode.SRC_IN));
                    f8 = 1.0f;
                    b.c.r(movieDetailActivity4.f14851k0, 100L, 1.0f);
                    relativeLayout3 = movieDetailActivity4.f14851k0;
                }
                b.c.w(relativeLayout3, 100L, f8);
                break;
            case 4:
                MovieDetailActivity movieDetailActivity5 = this.f21270e;
                if (!z6) {
                    movieDetailActivity5.f14844f.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivity5, R.color.white), PorterDuff.Mode.SRC_IN));
                    break;
                } else {
                    movieDetailActivity5.f14844f.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivity5, R.color.black), PorterDuff.Mode.SRC_IN));
                    break;
                }
            default:
                MovieDetailActivity movieDetailActivity6 = this.f21270e;
                if (!z6) {
                    movieDetailActivity6.f14849j.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivity6, R.color.white), PorterDuff.Mode.SRC_IN));
                    break;
                } else {
                    movieDetailActivity6.f14849j.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivity6, R.color.black), PorterDuff.Mode.SRC_IN));
                    break;
                }
        }
    }
}
