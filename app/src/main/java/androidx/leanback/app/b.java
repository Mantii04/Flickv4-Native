package androidx.leanback.app;

import androidx.leanback.widget.VerticalGridView;
import m1.X;

/* loaded from: classes.dex */
public final class b extends X {

    /* renamed from: a, reason: collision with root package name */
    public boolean f6381a = false;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f6382b;

    public b(c cVar) {
        this.f6382b = cVar;
    }

    @Override // m1.X
    public void onChanged() {
        boolean z6 = this.f6381a;
        c cVar = this.f6382b;
        if (z6) {
            this.f6381a = false;
            cVar.f6385h0.unregisterAdapterDataObserver(this);
        }
        VerticalGridView verticalGridView = cVar.f6384g0;
        if (verticalGridView != null) {
            verticalGridView.setSelectedPosition(cVar.f6386i0);
        }
    }

    @Override // m1.X
    public void onItemRangeInserted(int i2, int i7) {
        boolean z6 = this.f6381a;
        c cVar = this.f6382b;
        if (z6) {
            this.f6381a = false;
            cVar.f6385h0.unregisterAdapterDataObserver(this);
        }
        VerticalGridView verticalGridView = cVar.f6384g0;
        if (verticalGridView != null) {
            verticalGridView.setSelectedPosition(cVar.f6386i0);
        }
    }
}
