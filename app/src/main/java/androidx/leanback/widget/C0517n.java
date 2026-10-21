package androidx.leanback.widget;

import androidx.recyclerview.widget.RecyclerView;

/* renamed from: androidx.leanback.widget.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0517n extends AbstractC0532u0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6876a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ A1 f6877b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractC0529t f6878c;

    public C0517n(AbstractC0529t abstractC0529t, int i2, A1 a12) {
        this.f6878c = abstractC0529t;
        this.f6876a = i2;
        this.f6877b = a12;
    }

    @Override // androidx.leanback.widget.AbstractC0532u0
    public void onChildViewHolderSelectedAndPositioned(RecyclerView recyclerView, m1.B0 b02, int i2, int i7) {
        if (i2 == this.f6876a) {
            this.f6878c.removeOnChildViewHolderSelectedListener(this);
            this.f6877b.run(b02);
        }
    }
}
