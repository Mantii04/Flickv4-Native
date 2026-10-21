package androidx.leanback.widget;

import androidx.media3.common.util.Log;

/* loaded from: classes.dex */
public abstract class r1 extends E {

    /* renamed from: j, reason: collision with root package name */
    public p.k f6900j;

    /* renamed from: k, reason: collision with root package name */
    public int f6901k;

    /* renamed from: l, reason: collision with root package name */
    public Object f6902l;

    /* renamed from: m, reason: collision with root package name */
    public int f6903m;

    public final boolean appendVisbleItemsWithCache(int i2, boolean z6) {
        int i7;
        int i8;
        int i9;
        p.k kVar = this.f6900j;
        if (kVar.size() == 0) {
            return false;
        }
        int count = ((G) this.f6484b).getCount();
        int i10 = this.f6489g;
        if (i10 >= 0) {
            i7 = i10 + 1;
            i8 = ((G) this.f6484b).getEdge(i10);
        } else {
            int i11 = this.f6491i;
            i7 = i11 != -1 ? i11 : 0;
            if (i7 > getLastIndex() + 1 || i7 < getFirstIndex()) {
                kVar.clear();
                return false;
            }
            if (i7 > getLastIndex()) {
                return false;
            }
            i8 = Integer.MAX_VALUE;
        }
        int lastIndex = getLastIndex();
        int i12 = i7;
        while (i12 < count && i12 <= lastIndex) {
            q1 location = getLocation(i12);
            if (i8 != Integer.MAX_VALUE) {
                i8 += location.f6896b;
            }
            int i13 = i8;
            int i14 = location.f6474a;
            G g7 = (G) this.f6484b;
            Object[] objArr = this.f6483a;
            int createItem = g7.createItem(i12, true, objArr, false);
            if (createItem != location.f6897c) {
                location.f6897c = createItem;
                kVar.removeFromEnd(lastIndex - i12);
                i9 = i12;
            } else {
                i9 = lastIndex;
            }
            this.f6489g = i12;
            if (this.f6488f < 0) {
                this.f6488f = i12;
            }
            ((G) this.f6484b).addItem(objArr[0], i12, createItem, i14, i13);
            if (!z6 && checkAppendOverLimit(i2)) {
                return true;
            }
            i8 = i13 == Integer.MAX_VALUE ? ((G) this.f6484b).getEdge(i12) : i13;
            if (i14 == this.f6487e - 1 && z6) {
                return true;
            }
            i12++;
            lastIndex = i9;
        }
        return false;
    }

    public final int appendVisibleItemToRow(int i2, int i7, int i8) {
        int edge;
        int i9 = this.f6489g;
        if (i9 >= 0 && (i9 != getLastIndex() || this.f6489g != i2 - 1)) {
            throw new IllegalStateException();
        }
        int i10 = this.f6489g;
        p.k kVar = this.f6900j;
        if (i10 >= 0) {
            edge = i8 - ((G) this.f6484b).getEdge(i10);
        } else if (kVar.size() <= 0 || i2 != getLastIndex() + 1) {
            edge = 0;
        } else {
            int lastIndex = getLastIndex();
            while (true) {
                if (lastIndex < this.f6901k) {
                    lastIndex = getLastIndex();
                    break;
                }
                if (getLocation(lastIndex).f6474a == i7) {
                    break;
                }
                lastIndex--;
            }
            edge = isReversedFlow() ? (-getLocation(lastIndex).f6897c) - this.f6486d : getLocation(lastIndex).f6897c + this.f6486d;
            for (int i11 = lastIndex + 1; i11 <= getLastIndex(); i11++) {
                edge -= getLocation(i11).f6896b;
            }
        }
        q1 q1Var = new q1(i7, edge);
        kVar.addLast(q1Var);
        Object obj = this.f6902l;
        if (obj != null) {
            q1Var.f6897c = this.f6903m;
            this.f6902l = null;
        } else {
            G g7 = (G) this.f6484b;
            Object[] objArr = this.f6483a;
            q1Var.f6897c = g7.createItem(i2, true, objArr, false);
            obj = objArr[0];
        }
        Object obj2 = obj;
        if (kVar.size() == 1) {
            this.f6489g = i2;
            this.f6488f = i2;
            this.f6901k = i2;
        } else {
            int i12 = this.f6489g;
            if (i12 < 0) {
                this.f6489g = i2;
                this.f6488f = i2;
            } else {
                this.f6489g = i12 + 1;
            }
        }
        ((G) this.f6484b).addItem(obj2, i2, q1Var.f6897c, i7, i8);
        return q1Var.f6897c;
    }

    @Override // androidx.leanback.widget.E
    public final boolean appendVisibleItems(int i2, boolean z6) {
        Object[] objArr = this.f6483a;
        if (((G) this.f6484b).getCount() == 0) {
            return false;
        }
        if (!z6 && checkAppendOverLimit(i2)) {
            return false;
        }
        try {
            if (!appendVisbleItemsWithCache(i2, z6)) {
                return appendVisibleItemsWithoutCache(i2, z6);
            }
            objArr[0] = null;
            this.f6902l = null;
            return true;
        } finally {
            objArr[0] = null;
            this.f6902l = null;
        }
    }

    public abstract boolean appendVisibleItemsWithoutCache(int i2, boolean z6);

    public final int getFirstIndex() {
        return this.f6901k;
    }

    @Override // androidx.leanback.widget.E
    public final p.l[] getItemPositionsInRows(int i2, int i7) {
        for (int i8 = 0; i8 < this.f6487e; i8++) {
            this.f6490h[i8].clear();
        }
        if (i2 >= 0) {
            while (i2 <= i7) {
                p.l lVar = this.f6490h[getLocation(i2).f6474a];
                if (lVar.size() <= 0 || lVar.getLast() != i2 - 1) {
                    lVar.addLast(i2);
                    lVar.addLast(i2);
                } else {
                    lVar.popLast();
                    lVar.addLast(i2);
                }
                i2++;
            }
        }
        return this.f6490h;
    }

    public final int getLastIndex() {
        return (this.f6900j.size() + this.f6901k) - 1;
    }

    @Override // androidx.leanback.widget.E
    public void invalidateItemsAfter(int i2) {
        super.invalidateItemsAfter(i2);
        int lastIndex = (getLastIndex() - i2) + 1;
        p.k kVar = this.f6900j;
        kVar.removeFromEnd(lastIndex);
        if (kVar.size() == 0) {
            this.f6901k = -1;
        }
    }

    public final boolean prependVisbleItemsWithCache(int i2, boolean z6) {
        int i7;
        int i8;
        int i9;
        p.k kVar = this.f6900j;
        if (kVar.size() == 0) {
            return false;
        }
        int i10 = this.f6488f;
        if (i10 >= 0) {
            i8 = ((G) this.f6484b).getEdge(i10);
            i9 = getLocation(this.f6488f).f6896b;
            i7 = this.f6488f - 1;
        } else {
            int i11 = this.f6491i;
            i7 = i11 != -1 ? i11 : 0;
            if (i7 > getLastIndex() || i7 < getFirstIndex() - 1) {
                kVar.clear();
                return false;
            }
            if (i7 < getFirstIndex()) {
                return false;
            }
            i8 = Log.LOG_LEVEL_OFF;
            i9 = 0;
        }
        int max = Math.max(((G) this.f6484b).getMinIndex(), this.f6901k);
        for (int i12 = i7; i12 >= max; i12--) {
            q1 location = getLocation(i12);
            int i13 = location.f6474a;
            G g7 = (G) this.f6484b;
            Object[] objArr = this.f6483a;
            int createItem = g7.createItem(i12, false, objArr, false);
            if (createItem != location.f6897c) {
                kVar.removeFromStart((i12 + 1) - this.f6901k);
                this.f6901k = this.f6488f;
                this.f6902l = objArr[0];
                this.f6903m = createItem;
                return false;
            }
            this.f6488f = i12;
            if (this.f6489g < 0) {
                this.f6489g = i12;
            }
            ((G) this.f6484b).addItem(objArr[0], i12, createItem, i13, i8 - i9);
            if (!z6 && checkPrependOverLimit(i2)) {
                return true;
            }
            i8 = ((G) this.f6484b).getEdge(i12);
            i9 = location.f6896b;
            if (i13 == 0 && z6) {
                return true;
            }
        }
        return false;
    }

    public final int prependVisibleItemToRow(int i2, int i7, int i8) {
        int i9 = this.f6488f;
        if (i9 >= 0 && (i9 != getFirstIndex() || this.f6488f != i2 + 1)) {
            throw new IllegalStateException();
        }
        int i10 = this.f6901k;
        q1 location = i10 >= 0 ? getLocation(i10) : null;
        int edge = ((G) this.f6484b).getEdge(this.f6901k);
        q1 q1Var = new q1(i7, 0);
        this.f6900j.addFirst(q1Var);
        Object obj = this.f6902l;
        if (obj != null) {
            q1Var.f6897c = this.f6903m;
            this.f6902l = null;
        } else {
            G g7 = (G) this.f6484b;
            Object[] objArr = this.f6483a;
            q1Var.f6897c = g7.createItem(i2, false, objArr, false);
            obj = objArr[0];
        }
        Object obj2 = obj;
        this.f6488f = i2;
        this.f6901k = i2;
        if (this.f6489g < 0) {
            this.f6489g = i2;
        }
        int i11 = !this.f6485c ? i8 - q1Var.f6897c : i8 + q1Var.f6897c;
        if (location != null) {
            location.f6896b = edge - i11;
        }
        ((G) this.f6484b).addItem(obj2, i2, q1Var.f6897c, i7, i11);
        return q1Var.f6897c;
    }

    @Override // androidx.leanback.widget.E
    public final boolean prependVisibleItems(int i2, boolean z6) {
        Object[] objArr = this.f6483a;
        if (((G) this.f6484b).getCount() == 0) {
            return false;
        }
        if (!z6 && checkPrependOverLimit(i2)) {
            return false;
        }
        try {
            if (!prependVisbleItemsWithCache(i2, z6)) {
                return prependVisibleItemsWithoutCache(i2, z6);
            }
            objArr[0] = null;
            this.f6902l = null;
            return true;
        } finally {
            objArr[0] = null;
            this.f6902l = null;
        }
    }

    public abstract boolean prependVisibleItemsWithoutCache(int i2, boolean z6);

    @Override // androidx.leanback.widget.E
    public final q1 getLocation(int i2) {
        int i7 = i2 - this.f6901k;
        if (i7 < 0) {
            return null;
        }
        p.k kVar = this.f6900j;
        if (i7 >= kVar.size()) {
            return null;
        }
        return (q1) kVar.get(i7);
    }
}
