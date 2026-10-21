package m1;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class F0 extends AbstractC1294m0 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f18271a = false;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ G0 f18272b;

    public F0(G0 g02) {
        this.f18272b = g02;
    }

    @Override // m1.AbstractC1294m0
    public void onScrollStateChanged(RecyclerView recyclerView, int i2) {
        super.onScrollStateChanged(recyclerView, i2);
        if (i2 == 0 && this.f18271a) {
            this.f18271a = false;
            this.f18272b.a();
        }
    }

    @Override // m1.AbstractC1294m0
    public void onScrolled(RecyclerView recyclerView, int i2, int i7) {
        if (i2 == 0 && i7 == 0) {
            return;
        }
        this.f18271a = true;
    }
}
