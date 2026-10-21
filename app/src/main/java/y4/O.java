package y4;

import flix.com.vision.activities.FilterActivity;

/* loaded from: classes2.dex */
public final /* synthetic */ class O implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21153b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ FilterActivity f21154e;

    public /* synthetic */ O(FilterActivity filterActivity, int i2) {
        this.f21153b = i2;
        this.f21154e = filterActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f21153b) {
            case 0:
                FilterActivity filterActivity = this.f21154e;
                filterActivity.e(filterActivity.f14678K);
                break;
            default:
                this.f21154e.f14680M = false;
                break;
        }
    }
}
