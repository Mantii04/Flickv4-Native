package y4;

import flix.com.vision.activities.SearchActivityClassic;

/* loaded from: classes2.dex */
public final /* synthetic */ class D0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21117b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SearchActivityClassic f21118e;

    public /* synthetic */ D0(SearchActivityClassic searchActivityClassic, int i2) {
        this.f21117b = i2;
        this.f21118e = searchActivityClassic;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f21117b) {
            case 0:
                this.f21118e.f14978e.openSearch();
                break;
            default:
                SearchActivityClassic searchActivityClassic = this.f21118e;
                if (!searchActivityClassic.f14978e.isOpen() && !SearchActivityClassic.isTV()) {
                    searchActivityClassic.f14978e.openSearch();
                    break;
                }
                break;
        }
    }
}
