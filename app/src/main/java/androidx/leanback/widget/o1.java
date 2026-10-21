package androidx.leanback.widget;

import androidx.media3.common.util.Log;
import m1.C1310w;
import m1.InterfaceC1282g0;

/* loaded from: classes.dex */
public final class o1 extends E {

    /* renamed from: j, reason: collision with root package name */
    public final C f6881j = new C(0);

    public o1() {
        a(1);
    }

    @Override // androidx.leanback.widget.E
    public final boolean appendVisibleItems(int i2, boolean z6) {
        int min;
        int i7;
        if (((G) this.f6484b).getCount() == 0 || (!z6 && checkAppendOverLimit(i2))) {
            return false;
        }
        int i8 = this.f6489g;
        if (i8 >= 0) {
            min = i8 + 1;
        } else {
            int i9 = this.f6491i;
            min = i9 != -1 ? Math.min(i9, ((G) this.f6484b).getCount() - 1) : 0;
        }
        int i10 = min;
        boolean z7 = false;
        while (i10 < ((G) this.f6484b).getCount()) {
            G g7 = (G) this.f6484b;
            Object[] objArr = this.f6483a;
            int createItem = g7.createItem(i10, true, objArr, false);
            if (this.f6488f < 0 || this.f6489g < 0) {
                i7 = this.f6485c ? Log.LOG_LEVEL_OFF : Integer.MIN_VALUE;
                this.f6488f = i10;
                this.f6489g = i10;
            } else {
                if (this.f6485c) {
                    int i11 = i10 - 1;
                    i7 = (((G) this.f6484b).getEdge(i11) - ((G) this.f6484b).getSize(i11)) - this.f6486d;
                } else {
                    int i12 = i10 - 1;
                    i7 = this.f6486d + ((G) this.f6484b).getSize(i12) + ((G) this.f6484b).getEdge(i12);
                }
                this.f6489g = i10;
            }
            ((G) this.f6484b).addItem(objArr[0], i10, createItem, 0, i7);
            if (z6 || checkAppendOverLimit(i2)) {
                return true;
            }
            i10++;
            z7 = true;
        }
        return z7;
    }

    public final int b() {
        int i2 = this.f6488f;
        if (i2 >= 0) {
            return i2 - 1;
        }
        int i7 = this.f6491i;
        return i7 != -1 ? Math.min(i7, ((G) this.f6484b).getCount() - 1) : ((G) this.f6484b).getCount() - 1;
    }

    @Override // androidx.leanback.widget.E
    public void collectAdjacentPrefetchPositions(int i2, int i7, InterfaceC1282g0 interfaceC1282g0) {
        int b7;
        int edge;
        if (!this.f6485c ? i7 < 0 : i7 > 0) {
            if (getLastVisibleIndex() == ((G) this.f6484b).getCount() - 1) {
                return;
            }
            int i8 = this.f6489g;
            if (i8 >= 0) {
                b7 = i8 + 1;
            } else {
                int i9 = this.f6491i;
                b7 = i9 != -1 ? Math.min(i9, ((G) this.f6484b).getCount() - 1) : 0;
            }
            int size = ((G) this.f6484b).getSize(this.f6489g) + this.f6486d;
            int edge2 = ((G) this.f6484b).getEdge(this.f6489g);
            if (this.f6485c) {
                size = -size;
            }
            edge = size + edge2;
        } else {
            if (getFirstVisibleIndex() == 0) {
                return;
            }
            b7 = b();
            edge = ((G) this.f6484b).getEdge(this.f6488f) + (this.f6485c ? this.f6486d : -this.f6486d);
        }
        ((C1310w) interfaceC1282g0).addPosition(b7, Math.abs(edge - i2));
    }

    @Override // androidx.leanback.widget.E
    public final int findRowMax(boolean z6, int i2, int[] iArr) {
        if (iArr != null) {
            iArr[0] = 0;
            iArr[1] = i2;
        }
        if (this.f6485c) {
            return ((G) this.f6484b).getEdge(i2);
        }
        return ((G) this.f6484b).getSize(i2) + ((G) this.f6484b).getEdge(i2);
    }

    @Override // androidx.leanback.widget.E
    public final int findRowMin(boolean z6, int i2, int[] iArr) {
        if (iArr != null) {
            iArr[0] = 0;
            iArr[1] = i2;
        }
        return this.f6485c ? ((G) this.f6484b).getEdge(i2) - ((G) this.f6484b).getSize(i2) : ((G) this.f6484b).getEdge(i2);
    }

    @Override // androidx.leanback.widget.E
    public final p.l[] getItemPositionsInRows(int i2, int i7) {
        this.f6490h[0].clear();
        this.f6490h[0].addLast(i2);
        this.f6490h[0].addLast(i7);
        return this.f6490h;
    }

    @Override // androidx.leanback.widget.E
    public final C getLocation(int i2) {
        return this.f6881j;
    }

    @Override // androidx.leanback.widget.E
    public final boolean prependVisibleItems(int i2, boolean z6) {
        int i7;
        if (((G) this.f6484b).getCount() == 0) {
            return false;
        }
        if (!z6 && checkPrependOverLimit(i2)) {
            return false;
        }
        int minIndex = ((G) this.f6484b).getMinIndex();
        boolean z7 = false;
        for (int b7 = b(); b7 >= minIndex; b7--) {
            G g7 = (G) this.f6484b;
            Object[] objArr = this.f6483a;
            int createItem = g7.createItem(b7, false, objArr, false);
            if (this.f6488f < 0 || this.f6489g < 0) {
                i7 = this.f6485c ? Integer.MIN_VALUE : Log.LOG_LEVEL_OFF;
                this.f6488f = b7;
                this.f6489g = b7;
            } else {
                i7 = this.f6485c ? ((G) this.f6484b).getEdge(b7 + 1) + this.f6486d + createItem : (((G) this.f6484b).getEdge(b7 + 1) - this.f6486d) - createItem;
                this.f6488f = b7;
            }
            ((G) this.f6484b).addItem(objArr[0], b7, createItem, 0, i7);
            z7 = true;
            if (z6 || checkPrependOverLimit(i2)) {
                break;
            }
        }
        return z7;
    }
}
