package androidx.leanback.widget;

/* loaded from: classes.dex */
public final class Y extends AbstractC0524q0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0498d0 f6761a;

    public Y(C0498d0 c0498d0) {
        this.f6761a = c0498d0;
    }

    @Override // androidx.leanback.widget.AbstractC0524q0
    public void onChanged() {
        this.f6761a.notifyDataSetChanged();
    }

    @Override // androidx.leanback.widget.AbstractC0524q0
    public void onItemRangeChanged(int i2, int i7) {
        this.f6761a.notifyItemRangeChanged(i2, i7);
    }

    @Override // androidx.leanback.widget.AbstractC0524q0
    public void onItemRangeInserted(int i2, int i7) {
        this.f6761a.notifyItemRangeInserted(i2, i7);
    }

    @Override // androidx.leanback.widget.AbstractC0524q0
    public void onItemRangeRemoved(int i2, int i7) {
        this.f6761a.notifyItemRangeRemoved(i2, i7);
    }
}
