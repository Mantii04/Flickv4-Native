package m1;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class O implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f18307b;

    public O(RecyclerView recyclerView) {
        this.f18307b = recyclerView;
    }

    @Override // java.lang.Runnable
    public void run() {
        RecyclerView recyclerView = this.f18307b;
        if (!recyclerView.f8016E || recyclerView.isLayoutRequested()) {
            return;
        }
        if (!recyclerView.f8012C) {
            recyclerView.requestLayout();
        } else if (recyclerView.f8022H) {
            recyclerView.f8020G = true;
        } else {
            recyclerView.m();
        }
    }
}
