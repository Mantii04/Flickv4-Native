package C4;

import android.view.View;
import flix.com.vision.App;
import flix.com.vision.activities.AnimeDetailActivity;
import flix.com.vision.activities.DramaDetailActivity;
import flix.com.vision.activities.SeriesDetailActivity;
import flix.com.vision.activities.SeriesDetailActivityLeanBack;

/* renamed from: C4.m, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class ViewOnFocusChangeListenerC0089m implements View.OnFocusChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f734b;

    public /* synthetic */ ViewOnFocusChangeListenerC0089m(int i2) {
        this.f734b = i2;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z6) {
        switch (this.f734b) {
            case 0:
                if (!z6) {
                    b.c.e(view, 0.0f, 0.0f, 0.0f, 1.0f).scaleY(1.0f).start();
                    break;
                } else {
                    b.c.e(view, 20.0f, 20.0f, 20.0f, 1.1f).scaleY(1.1f).start();
                    break;
                }
            case 1:
                if (!z6) {
                    b.c.e(view, 0.0f, 0.0f, 0.0f, 1.0f).scaleY(1.0f).start();
                    break;
                } else {
                    b.c.e(view, 20.0f, 20.0f, 20.0f, 1.1f).scaleY(1.1f).start();
                    break;
                }
            case 2:
                if (!z6) {
                    if (App.getInstance().f14440s.getBoolean("pref_adult_zone_animate", true)) {
                        b.c.e(view, 0.0f, 0.0f, 0.0f, 1.0f).scaleY(1.0f).start();
                        break;
                    }
                } else if (App.getInstance().f14440s.getBoolean("pref_adult_zone_animate", true)) {
                    b.c.e(view, 20.0f, 20.0f, 20.0f, 1.1f).scaleY(1.1f).start();
                    break;
                }
                break;
            case 3:
                if (!z6) {
                    if (App.getInstance().f14440s.getBoolean("pref_adult_zone_animate", true)) {
                        b.c.e(view, 0.0f, 0.0f, 0.0f, 1.0f).scaleY(1.0f).start();
                        break;
                    }
                } else if (App.getInstance().f14440s.getBoolean("pref_adult_zone_animate", true)) {
                    b.c.e(view, 20.0f, 20.0f, 20.0f, 1.1f).scaleY(1.1f).start();
                    break;
                }
                break;
            case 4:
                int i2 = AnimeDetailActivity.f14449D;
                if (!z6) {
                    b.c.e(view, 0.0f, 0.0f, 0.0f, 1.0f).scaleY(1.0f).start();
                    break;
                } else {
                    b.c.e(view, 20.0f, 20.0f, 20.0f, 1.3f).scaleY(1.3f).start();
                    break;
                }
            case 5:
                int i7 = DramaDetailActivity.f14551A;
                if (!z6) {
                    b.c.e(view, 0.0f, 0.0f, 0.0f, 1.0f).scaleY(1.0f).start();
                    break;
                } else {
                    b.c.e(view, 20.0f, 20.0f, 20.0f, 1.3f).scaleY(1.3f).start();
                    break;
                }
            case 6:
                int i8 = SeriesDetailActivity.f15032G;
                break;
            default:
                int i9 = SeriesDetailActivityLeanBack.f15056G;
                break;
        }
    }
}
