package flix.com.vision.activities.leanback.fragment;

/* loaded from: classes2.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15577b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TVListFragmentMain f15578e;

    public /* synthetic */ e(TVListFragmentMain tVListFragmentMain, int i2) {
        this.f15577b = i2;
        this.f15578e = tVListFragmentMain;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f15577b) {
            case 0:
                TVListFragmentMain tVListFragmentMain = this.f15578e;
                W4.d o6 = tVListFragmentMain.o(tVListFragmentMain.f15520F0);
                tVListFragmentMain.f15523I0 = o6;
                tVListFragmentMain.f15522H0.setReorderState(o6, true);
                break;
            case 1:
                d dVar = this.f15578e.f15536V0;
                if (dVar != null) {
                    dVar.finished();
                    break;
                }
                break;
            case 2:
                d dVar2 = this.f15578e.f15536V0;
                if (dVar2 != null) {
                    dVar2.finished();
                    break;
                }
                break;
            case 3:
                d dVar3 = this.f15578e.f15536V0;
                if (dVar3 != null) {
                    dVar3.finished();
                    break;
                }
                break;
            case 4:
                TVListFragmentMain tVListFragmentMain2 = this.f15578e;
                W4.d o7 = tVListFragmentMain2.o(tVListFragmentMain2.f15520F0);
                tVListFragmentMain2.f15523I0 = o7;
                tVListFragmentMain2.f15522H0.setReorderState(o7, true);
                break;
            case 5:
                TVListFragmentMain tVListFragmentMain3 = this.f15578e;
                if (tVListFragmentMain3.getVerticalGridView() != null) {
                    tVListFragmentMain3.getVerticalGridView().requestFocus();
                }
                tVListFragmentMain3.setSelectedPosition(0);
                break;
            default:
                this.f15578e.setSelectedPosition(0);
                break;
        }
    }
}
