package y4;

import flix.com.vision.activities.DramaSearchActivityMobile;

/* loaded from: classes2.dex */
public final /* synthetic */ class D implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21115b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DramaSearchActivityMobile f21116e;

    public /* synthetic */ D(DramaSearchActivityMobile dramaSearchActivityMobile, int i2) {
        this.f21115b = i2;
        this.f21116e = dramaSearchActivityMobile;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f21115b) {
            case 0:
                this.f21116e.f14635q = false;
                break;
            default:
                this.f21116e.f14630f.openSearch();
                break;
        }
    }
}
