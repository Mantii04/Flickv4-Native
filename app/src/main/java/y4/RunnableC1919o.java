package y4;

import flix.com.vision.activities.AnimesListActivity;

/* renamed from: y4.o, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC1919o implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21267b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AnimesListActivity f21268e;

    public /* synthetic */ RunnableC1919o(AnimesListActivity animesListActivity, int i2) {
        this.f21267b = i2;
        this.f21268e = animesListActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AnimesListActivity animesListActivity = this.f21268e;
        switch (this.f21267b) {
            case 0:
                int i2 = AnimesListActivity.f14504E;
                animesListActivity.ExtractDominentColor();
                break;
            default:
                animesListActivity.f14508D = false;
                break;
        }
    }
}
