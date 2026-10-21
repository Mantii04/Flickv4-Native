package androidx.leanback.widget;

import android.util.SparseIntArray;
import androidx.media3.common.util.Log;
import java.util.Arrays;
import m1.InterfaceC1282g0;

/* loaded from: classes.dex */
public abstract class E {

    /* renamed from: b, reason: collision with root package name */
    public D f6484b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6485c;

    /* renamed from: d, reason: collision with root package name */
    public int f6486d;

    /* renamed from: e, reason: collision with root package name */
    public int f6487e;

    /* renamed from: h, reason: collision with root package name */
    public p.l[] f6490h;

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f6483a = new Object[1];

    /* renamed from: f, reason: collision with root package name */
    public int f6488f = -1;

    /* renamed from: g, reason: collision with root package name */
    public int f6489g = -1;

    /* renamed from: i, reason: collision with root package name */
    public int f6491i = -1;

    public static E createGrid(int i2) {
        if (i2 == 1) {
            return new o1();
        }
        s1 s1Var = new s1();
        s1Var.f6900j = new p.k(64);
        s1Var.f6901k = -1;
        s1Var.a(i2);
        return s1Var;
    }

    public final void a(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException();
        }
        if (this.f6487e == i2) {
            return;
        }
        this.f6487e = i2;
        this.f6490h = new p.l[i2];
        for (int i7 = 0; i7 < this.f6487e; i7++) {
            this.f6490h[i7] = new p.l();
        }
    }

    public boolean appendOneColumnVisibleItems() {
        return appendVisibleItems(this.f6485c ? Log.LOG_LEVEL_OFF : Integer.MIN_VALUE, true);
    }

    public final void appendVisibleItems(int i2) {
        appendVisibleItems(i2, false);
    }

    public abstract boolean appendVisibleItems(int i2, boolean z6);

    public final boolean checkAppendOverLimit(int i2) {
        if (this.f6489g < 0) {
            return false;
        }
        return this.f6485c ? findRowMin(true, null) <= i2 + this.f6486d : findRowMax(false, null) >= i2 - this.f6486d;
    }

    public final boolean checkPrependOverLimit(int i2) {
        if (this.f6489g < 0) {
            return false;
        }
        return this.f6485c ? findRowMax(false, null) >= i2 - this.f6486d : findRowMin(true, null) <= i2 + this.f6486d;
    }

    public void fillDisappearingItems(int[] iArr, int i2, SparseIntArray sparseIntArray) {
        int lastVisibleIndex = getLastVisibleIndex();
        int binarySearch = lastVisibleIndex >= 0 ? Arrays.binarySearch(iArr, 0, i2, lastVisibleIndex) : 0;
        Object[] objArr = this.f6483a;
        if (binarySearch < 0) {
            int edge = this.f6485c ? (((G) this.f6484b).getEdge(lastVisibleIndex) - ((G) this.f6484b).getSize(lastVisibleIndex)) - this.f6486d : this.f6486d + ((G) this.f6484b).getSize(lastVisibleIndex) + ((G) this.f6484b).getEdge(lastVisibleIndex);
            for (int i7 = (-binarySearch) - 1; i7 < i2; i7++) {
                int i8 = iArr[i7];
                int i9 = sparseIntArray.get(i8);
                int i10 = i9 < 0 ? 0 : i9;
                int createItem = ((G) this.f6484b).createItem(i8, true, objArr, true);
                ((G) this.f6484b).addItem(objArr[0], i8, createItem, i10, edge);
                edge = this.f6485c ? (edge - createItem) - this.f6486d : edge + createItem + this.f6486d;
            }
        }
        int firstVisibleIndex = getFirstVisibleIndex();
        int binarySearch2 = firstVisibleIndex >= 0 ? Arrays.binarySearch(iArr, 0, i2, firstVisibleIndex) : 0;
        if (binarySearch2 < 0) {
            int i11 = (-binarySearch2) - 2;
            int edge2 = this.f6485c ? ((G) this.f6484b).getEdge(firstVisibleIndex) : ((G) this.f6484b).getEdge(firstVisibleIndex);
            while (i11 >= 0) {
                int i12 = iArr[i11];
                int i13 = sparseIntArray.get(i12);
                int i14 = i13 < 0 ? 0 : i13;
                int createItem2 = ((G) this.f6484b).createItem(i12, false, objArr, true);
                int i15 = this.f6485c ? edge2 + this.f6486d + createItem2 : (edge2 - this.f6486d) - createItem2;
                ((G) this.f6484b).addItem(objArr[0], i12, createItem2, i14, i15);
                i11--;
                edge2 = i15;
            }
        }
    }

    public abstract int findRowMax(boolean z6, int i2, int[] iArr);

    public final int findRowMax(boolean z6, int[] iArr) {
        return findRowMax(z6, this.f6485c ? this.f6488f : this.f6489g, iArr);
    }

    public abstract int findRowMin(boolean z6, int i2, int[] iArr);

    public final int findRowMin(boolean z6, int[] iArr) {
        return findRowMin(z6, this.f6485c ? this.f6489g : this.f6488f, iArr);
    }

    public final int getFirstVisibleIndex() {
        return this.f6488f;
    }

    public final p.l[] getItemPositionsInRows() {
        return getItemPositionsInRows(getFirstVisibleIndex(), getLastVisibleIndex());
    }

    public abstract p.l[] getItemPositionsInRows(int i2, int i7);

    public final int getLastVisibleIndex() {
        return this.f6489g;
    }

    public abstract C getLocation(int i2);

    public int getNumRows() {
        return this.f6487e;
    }

    public final int getRowIndex(int i2) {
        C location = getLocation(i2);
        if (location == null) {
            return -1;
        }
        return location.f6474a;
    }

    public void invalidateItemsAfter(int i2) {
        int i7;
        if (i2 >= 0 && (i7 = this.f6489g) >= 0) {
            if (i7 >= i2) {
                this.f6489g = i2 - 1;
            }
            if (this.f6489g < this.f6488f) {
                resetVisibleIndex();
            }
            if (getFirstVisibleIndex() < 0) {
                setStart(i2);
            }
        }
    }

    public boolean isReversedFlow() {
        return this.f6485c;
    }

    public final boolean prependOneColumnVisibleItems() {
        return prependVisibleItems(this.f6485c ? Integer.MIN_VALUE : Log.LOG_LEVEL_OFF, true);
    }

    public final void prependVisibleItems(int i2) {
        prependVisibleItems(i2, false);
    }

    public abstract boolean prependVisibleItems(int i2, boolean z6);

    public void removeInvisibleItemsAtEnd(int i2, int i7) {
        while (true) {
            int i8 = this.f6489g;
            if (i8 < this.f6488f || i8 <= i2) {
                break;
            }
            if (!this.f6485c) {
                if (((G) this.f6484b).getEdge(i8) < i7) {
                    break;
                }
                ((G) this.f6484b).removeItem(this.f6489g);
                this.f6489g--;
            } else {
                if (((G) this.f6484b).getEdge(i8) > i7) {
                    break;
                }
                ((G) this.f6484b).removeItem(this.f6489g);
                this.f6489g--;
            }
        }
        if (this.f6489g < this.f6488f) {
            resetVisibleIndex();
        }
    }

    public void removeInvisibleItemsAtFront(int i2, int i7) {
        while (true) {
            int i8 = this.f6489g;
            int i9 = this.f6488f;
            if (i8 < i9 || i9 >= i2) {
                break;
            }
            int size = ((G) this.f6484b).getSize(i9);
            if (!this.f6485c) {
                if (((G) this.f6484b).getEdge(this.f6488f) + size > i7) {
                    break;
                }
                ((G) this.f6484b).removeItem(this.f6488f);
                this.f6488f++;
            } else {
                if (((G) this.f6484b).getEdge(this.f6488f) - size < i7) {
                    break;
                }
                ((G) this.f6484b).removeItem(this.f6488f);
                this.f6488f++;
            }
        }
        if (this.f6489g < this.f6488f) {
            resetVisibleIndex();
        }
    }

    public void resetVisibleIndex() {
        this.f6489g = -1;
        this.f6488f = -1;
    }

    public void setProvider(D d7) {
        this.f6484b = d7;
    }

    public final void setReversedFlow(boolean z6) {
        this.f6485c = z6;
    }

    public final void setSpacing(int i2) {
        this.f6486d = i2;
    }

    public void setStart(int i2) {
        this.f6491i = i2;
    }

    public void collectAdjacentPrefetchPositions(int i2, int i7, InterfaceC1282g0 interfaceC1282g0) {
    }
}
