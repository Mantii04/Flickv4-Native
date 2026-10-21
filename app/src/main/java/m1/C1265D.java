package m1;

import android.view.View;

/* renamed from: m1.D, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1265D {

    /* renamed from: a, reason: collision with root package name */
    public L f18247a;

    /* renamed from: b, reason: collision with root package name */
    public int f18248b;

    /* renamed from: c, reason: collision with root package name */
    public int f18249c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f18250d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f18251e;

    public C1265D() {
        b();
    }

    public final void a() {
        this.f18249c = this.f18250d ? this.f18247a.getEndAfterPadding() : this.f18247a.getStartAfterPadding();
    }

    public void assignFromView(View view, int i2) {
        if (this.f18250d) {
            this.f18249c = this.f18247a.getTotalSpaceChange() + this.f18247a.getDecoratedEnd(view);
        } else {
            this.f18249c = this.f18247a.getDecoratedStart(view);
        }
        this.f18248b = i2;
    }

    public void assignFromViewAndKeepVisibleRect(View view, int i2) {
        int totalSpaceChange = this.f18247a.getTotalSpaceChange();
        if (totalSpaceChange >= 0) {
            assignFromView(view, i2);
            return;
        }
        this.f18248b = i2;
        if (!this.f18250d) {
            int decoratedStart = this.f18247a.getDecoratedStart(view);
            int startAfterPadding = decoratedStart - this.f18247a.getStartAfterPadding();
            this.f18249c = decoratedStart;
            if (startAfterPadding > 0) {
                int endAfterPadding = (this.f18247a.getEndAfterPadding() - Math.min(0, (this.f18247a.getEndAfterPadding() - totalSpaceChange) - this.f18247a.getDecoratedEnd(view))) - (this.f18247a.getDecoratedMeasurement(view) + decoratedStart);
                if (endAfterPadding < 0) {
                    this.f18249c -= Math.min(startAfterPadding, -endAfterPadding);
                    return;
                }
                return;
            }
            return;
        }
        int endAfterPadding2 = (this.f18247a.getEndAfterPadding() - totalSpaceChange) - this.f18247a.getDecoratedEnd(view);
        this.f18249c = this.f18247a.getEndAfterPadding() - endAfterPadding2;
        if (endAfterPadding2 > 0) {
            int decoratedMeasurement = this.f18249c - this.f18247a.getDecoratedMeasurement(view);
            int startAfterPadding2 = this.f18247a.getStartAfterPadding();
            int min = decoratedMeasurement - (Math.min(this.f18247a.getDecoratedStart(view) - startAfterPadding2, 0) + startAfterPadding2);
            if (min < 0) {
                this.f18249c = Math.min(endAfterPadding2, -min) + this.f18249c;
            }
        }
    }

    public final void b() {
        this.f18248b = -1;
        this.f18249c = Integer.MIN_VALUE;
        this.f18250d = false;
        this.f18251e = false;
    }

    public String toString() {
        return "AnchorInfo{mPosition=" + this.f18248b + ", mCoordinate=" + this.f18249c + ", mLayoutFromEnd=" + this.f18250d + ", mValid=" + this.f18251e + '}';
    }
}
