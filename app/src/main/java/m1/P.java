package m1;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class P implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f18318b;

    public P(RecyclerView recyclerView) {
        this.f18318b = recyclerView;
    }

    @Override // java.lang.Runnable
    public void run() {
        RecyclerView recyclerView = this.f18318b;
        AbstractC1272b0 abstractC1272b0 = recyclerView.f8038V;
        if (abstractC1272b0 != null) {
            abstractC1272b0.runPendingAnimations();
        }
        recyclerView.f8076w0 = false;
    }
}
