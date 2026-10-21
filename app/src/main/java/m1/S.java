package m1;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class S {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f18330a;

    public S(RecyclerView recyclerView) {
        this.f18330a = recyclerView;
    }

    public void processAppeared(B0 b02, C1270a0 c1270a0, C1270a0 c1270a02) {
        RecyclerView recyclerView = this.f18330a;
        recyclerView.getClass();
        b02.setIsRecyclable(false);
        if (recyclerView.f8038V.animateAppearance(b02, c1270a0, c1270a02)) {
            recyclerView.O();
        }
    }

    public void processDisappeared(B0 b02, C1270a0 c1270a0, C1270a0 c1270a02) {
        RecyclerView recyclerView = this.f18330a;
        recyclerView.f8047f.j(b02);
        recyclerView.g(b02);
        b02.setIsRecyclable(false);
        if (recyclerView.f8038V.animateDisappearance(b02, c1270a0, c1270a02)) {
            recyclerView.O();
        }
    }

    public void processPersistent(B0 b02, C1270a0 c1270a0, C1270a0 c1270a02) {
        b02.setIsRecyclable(false);
        RecyclerView recyclerView = this.f18330a;
        if (recyclerView.f8029M) {
            if (recyclerView.f8038V.animateChange(b02, b02, c1270a0, c1270a02)) {
                recyclerView.O();
            }
        } else if (recyclerView.f8038V.animatePersistence(b02, c1270a0, c1270a02)) {
            recyclerView.O();
        }
    }

    public void unused(B0 b02) {
        RecyclerView recyclerView = this.f18330a;
        recyclerView.f8075w.removeAndRecycleView(b02.f18217a, recyclerView.f8047f);
    }
}
