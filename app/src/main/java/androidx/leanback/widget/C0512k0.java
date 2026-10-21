package androidx.leanback.widget;

/* renamed from: androidx.leanback.widget.k0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0512k0 extends B0 {

    /* renamed from: a, reason: collision with root package name */
    public int f6836a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f6837b = true;

    public C0512k0(int i2) {
        setItemPosition(i2);
    }

    public boolean isSmoothScroll() {
        return this.f6837b;
    }

    @Override // androidx.leanback.widget.B0
    public void run(A0 a02) {
        if (a02 instanceof C0514l0) {
            HorizontalGridView gridView = ((C0514l0) a02).getGridView();
            if (isSmoothScroll()) {
                gridView.setSelectedPositionSmooth(this.f6836a, null);
            } else {
                gridView.setSelectedPosition(this.f6836a, null);
            }
        }
    }

    public void setItemPosition(int i2) {
        this.f6836a = i2;
    }
}
