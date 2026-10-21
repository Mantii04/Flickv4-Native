package androidx.leanback.widget;

import androidx.recyclerview.widget.RecyclerView;

/* renamed from: androidx.leanback.widget.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0515m extends AbstractC0532u0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6852a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ A1 f6853b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractC0529t f6854c;

    public C0515m(AbstractC0529t abstractC0529t, int i2, A1 a12) {
        this.f6854c = abstractC0529t;
        this.f6852a = i2;
        this.f6853b = a12;
    }

    @Override // androidx.leanback.widget.AbstractC0532u0
    public void onChildViewHolderSelected(RecyclerView recyclerView, m1.B0 b02, int i2, int i7) {
        if (i2 == this.f6852a) {
            this.f6854c.removeOnChildViewHolderSelectedListener(this);
            this.f6853b.run(b02);
        }
    }
}
