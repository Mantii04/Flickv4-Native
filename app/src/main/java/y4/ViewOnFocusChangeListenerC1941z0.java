package y4;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.View;
import android.widget.RelativeLayout;
import flix.com.vision.R;
import flix.com.vision.activities.MovieDetailActivityLeanBack;

/* renamed from: y4.z0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ViewOnFocusChangeListenerC1941z0 implements View.OnFocusChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21319b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MovieDetailActivityLeanBack f21320e;

    public /* synthetic */ ViewOnFocusChangeListenerC1941z0(MovieDetailActivityLeanBack movieDetailActivityLeanBack, int i2) {
        this.f21319b = i2;
        this.f21320e = movieDetailActivityLeanBack;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z6) {
        float f3;
        RelativeLayout relativeLayout;
        float f7;
        RelativeLayout relativeLayout2;
        float f8;
        RelativeLayout relativeLayout3;
        switch (this.f21319b) {
            case 0:
                MovieDetailActivityLeanBack movieDetailActivityLeanBack = this.f21320e;
                if (!z6) {
                    movieDetailActivityLeanBack.f14962t.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivityLeanBack, R.color.white), PorterDuff.Mode.SRC_IN));
                    break;
                } else {
                    movieDetailActivityLeanBack.f14962t.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivityLeanBack, R.color.black), PorterDuff.Mode.SRC_IN));
                    break;
                }
            case 1:
                MovieDetailActivityLeanBack movieDetailActivityLeanBack2 = this.f21320e;
                if (!z6) {
                    movieDetailActivityLeanBack2.f14964u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivityLeanBack2, R.color.white), PorterDuff.Mode.SRC_IN));
                    break;
                } else {
                    movieDetailActivityLeanBack2.f14964u.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivityLeanBack2, R.color.black), PorterDuff.Mode.SRC_IN));
                    break;
                }
            case 2:
                MovieDetailActivityLeanBack movieDetailActivityLeanBack3 = this.f21320e;
                if (z6) {
                    movieDetailActivityLeanBack3.f14945j.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivityLeanBack3, R.color.black), PorterDuff.Mode.SRC_IN));
                    f3 = 1.02f;
                    b.c.r(movieDetailActivityLeanBack3.f14938e, 100L, 1.02f);
                    relativeLayout = movieDetailActivityLeanBack3.f14938e;
                } else {
                    movieDetailActivityLeanBack3.f14945j.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivityLeanBack3, R.color.white), PorterDuff.Mode.SRC_IN));
                    f3 = 1.0f;
                    b.c.r(movieDetailActivityLeanBack3.f14938e, 100L, 1.0f);
                    relativeLayout = movieDetailActivityLeanBack3.f14938e;
                }
                b.c.w(relativeLayout, 100L, f3);
                break;
            case 3:
                MovieDetailActivityLeanBack movieDetailActivityLeanBack4 = this.f21320e;
                if (!z6) {
                    movieDetailActivityLeanBack4.f14896H0.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivityLeanBack4, R.color.white), PorterDuff.Mode.SRC_IN));
                    movieDetailActivityLeanBack4.f14890E0.setTextColor(movieDetailActivityLeanBack4.getResources().getColor(R.color.white));
                    movieDetailActivityLeanBack4.f14953o0.animate().scaleX(1.0f).scaleY(1.0f).setDuration(200L).start();
                    break;
                } else {
                    movieDetailActivityLeanBack4.f14896H0.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivityLeanBack4, R.color.black), PorterDuff.Mode.SRC_IN));
                    movieDetailActivityLeanBack4.f14890E0.setTextColor(movieDetailActivityLeanBack4.getResources().getColor(R.color.black));
                    movieDetailActivityLeanBack4.f14953o0.animate().scaleX(1.1f).scaleY(1.1f).setDuration(200L).start();
                    break;
                }
            case 4:
                MovieDetailActivityLeanBack movieDetailActivityLeanBack5 = this.f21320e;
                if (!z6) {
                    movieDetailActivityLeanBack5.f14892F0.setTextColor(movieDetailActivityLeanBack5.getResources().getColor(R.color.white));
                    movieDetailActivityLeanBack5.f14959r0.animate().scaleX(1.0f).scaleY(1.0f).setDuration(200L).start();
                    break;
                } else {
                    movieDetailActivityLeanBack5.f14892F0.setTextColor(movieDetailActivityLeanBack5.getResources().getColor(R.color.black));
                    movieDetailActivityLeanBack5.f14959r0.animate().scaleX(1.1f).scaleY(1.1f).setDuration(200L).start();
                    break;
                }
            case 5:
                MovieDetailActivityLeanBack movieDetailActivityLeanBack6 = this.f21320e;
                if (z6) {
                    movieDetailActivityLeanBack6.f14898I0.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivityLeanBack6, R.color.black), PorterDuff.Mode.SRC_IN));
                    f7 = 1.02f;
                    b.c.r(movieDetailActivityLeanBack6.f14957q0, 100L, 1.02f);
                    relativeLayout2 = movieDetailActivityLeanBack6.f14957q0;
                } else {
                    movieDetailActivityLeanBack6.f14898I0.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivityLeanBack6, R.color.white), PorterDuff.Mode.SRC_IN));
                    f7 = 1.0f;
                    b.c.r(movieDetailActivityLeanBack6.f14957q0, 100L, 1.0f);
                    relativeLayout2 = movieDetailActivityLeanBack6.f14957q0;
                }
                b.c.w(relativeLayout2, 100L, f7);
                break;
            default:
                MovieDetailActivityLeanBack movieDetailActivityLeanBack7 = this.f21320e;
                if (z6) {
                    movieDetailActivityLeanBack7.f14968w.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivityLeanBack7, R.color.black), PorterDuff.Mode.SRC_IN));
                    f8 = 1.02f;
                    b.c.r(movieDetailActivityLeanBack7.f14961s0, 100L, 1.02f);
                    relativeLayout3 = movieDetailActivityLeanBack7.f14961s0;
                } else {
                    movieDetailActivityLeanBack7.f14968w.setColorFilter(new PorterDuffColorFilter(A.h.getColor(movieDetailActivityLeanBack7, R.color.accent), PorterDuff.Mode.SRC_IN));
                    f8 = 1.0f;
                    b.c.r(movieDetailActivityLeanBack7.f14961s0, 100L, 1.0f);
                    relativeLayout3 = movieDetailActivityLeanBack7.f14961s0;
                }
                b.c.w(relativeLayout3, 100L, f8);
                break;
        }
    }
}
