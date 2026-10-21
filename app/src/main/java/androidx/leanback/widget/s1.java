package androidx.leanback.widget;

import androidx.media3.common.util.Log;

/* loaded from: classes.dex */
public final class s1 extends r1 {
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0138, code lost:
    
        return true;
     */
    @Override // androidx.leanback.widget.r1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean appendVisibleItemsWithoutCache(int r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.s1.appendVisibleItemsWithoutCache(int, boolean):boolean");
    }

    public final int b(boolean z6) {
        boolean z7 = false;
        if (z6) {
            for (int i2 = this.f6489g; i2 >= this.f6488f; i2--) {
                int i7 = getLocation(i2).f6474a;
                if (i7 == 0) {
                    z7 = true;
                } else if (z7 && i7 == this.f6487e - 1) {
                    return i2;
                }
            }
            return -1;
        }
        for (int i8 = this.f6488f; i8 <= this.f6489g; i8++) {
            int i9 = getLocation(i8).f6474a;
            if (i9 == this.f6487e - 1) {
                z7 = true;
            } else if (z7 && i9 == 0) {
                return i8;
            }
        }
        return -1;
    }

    public final int c(int i2) {
        int i7;
        q1 location;
        int i8 = this.f6488f;
        if (i8 < 0) {
            return Integer.MIN_VALUE;
        }
        if (this.f6485c) {
            int edge = ((G) this.f6484b).getEdge(i8);
            if (getLocation(this.f6488f).f6474a == i2) {
                return edge;
            }
            int i9 = this.f6488f;
            do {
                i9++;
                if (i9 <= getLastIndex()) {
                    location = getLocation(i9);
                    edge += location.f6896b;
                }
            } while (location.f6474a != i2);
            return edge;
        }
        int edge2 = ((G) this.f6484b).getEdge(this.f6489g);
        q1 location2 = getLocation(this.f6489g);
        if (location2.f6474a == i2) {
            i7 = location2.f6897c;
        } else {
            int i10 = this.f6489g;
            do {
                i10--;
                if (i10 >= getFirstIndex()) {
                    edge2 -= location2.f6896b;
                    location2 = getLocation(i10);
                }
            } while (location2.f6474a != i2);
            i7 = location2.f6897c;
        }
        return edge2 + i7;
        return Integer.MIN_VALUE;
    }

    public final int d(int i2) {
        q1 location;
        int i7;
        int i8 = this.f6488f;
        if (i8 < 0) {
            return Log.LOG_LEVEL_OFF;
        }
        if (!this.f6485c) {
            int edge = ((G) this.f6484b).getEdge(i8);
            if (getLocation(this.f6488f).f6474a == i2) {
                return edge;
            }
            int i9 = this.f6488f;
            do {
                i9++;
                if (i9 <= getLastIndex()) {
                    location = getLocation(i9);
                    edge += location.f6896b;
                }
            } while (location.f6474a != i2);
            return edge;
        }
        int edge2 = ((G) this.f6484b).getEdge(this.f6489g);
        q1 location2 = getLocation(this.f6489g);
        if (location2.f6474a == i2) {
            i7 = location2.f6897c;
        } else {
            int i10 = this.f6489g;
            do {
                i10--;
                if (i10 >= getFirstIndex()) {
                    edge2 -= location2.f6896b;
                    location2 = getLocation(i10);
                }
            } while (location2.f6474a != i2);
            i7 = location2.f6897c;
        }
        return edge2 - i7;
        return Log.LOG_LEVEL_OFF;
    }

    @Override // androidx.leanback.widget.E
    public int findRowMax(boolean z6, int i2, int[] iArr) {
        int i7;
        int edge = ((G) this.f6484b).getEdge(i2);
        q1 location = getLocation(i2);
        int i8 = location.f6474a;
        if (this.f6485c) {
            i7 = i8;
            int i9 = i7;
            int i10 = 1;
            int i11 = edge;
            for (int i12 = i2 + 1; i10 < this.f6487e && i12 <= this.f6489g; i12++) {
                q1 location2 = getLocation(i12);
                i11 += location2.f6896b;
                int i13 = location2.f6474a;
                if (i13 != i9) {
                    i10++;
                    if (!z6 ? i11 >= edge : i11 <= edge) {
                        i9 = i13;
                    } else {
                        edge = i11;
                        i2 = i12;
                        i7 = i13;
                        i9 = i7;
                    }
                }
            }
        } else {
            int i14 = 1;
            int i15 = i8;
            q1 q1Var = location;
            int i16 = edge;
            edge = ((G) this.f6484b).getSize(i2) + edge;
            i7 = i15;
            for (int i17 = i2 - 1; i14 < this.f6487e && i17 >= this.f6488f; i17--) {
                i16 -= q1Var.f6896b;
                q1Var = getLocation(i17);
                int i18 = q1Var.f6474a;
                if (i18 != i15) {
                    i14++;
                    int size = ((G) this.f6484b).getSize(i17) + i16;
                    if (!z6 ? size >= edge : size <= edge) {
                        i15 = i18;
                    } else {
                        edge = size;
                        i2 = i17;
                        i7 = i18;
                        i15 = i7;
                    }
                }
            }
        }
        if (iArr != null) {
            iArr[0] = i7;
            iArr[1] = i2;
        }
        return edge;
    }

    @Override // androidx.leanback.widget.E
    public int findRowMin(boolean z6, int i2, int[] iArr) {
        int i7;
        int edge = ((G) this.f6484b).getEdge(i2);
        q1 location = getLocation(i2);
        int i8 = location.f6474a;
        if (this.f6485c) {
            int i9 = 1;
            i7 = edge - ((G) this.f6484b).getSize(i2);
            int i10 = i8;
            for (int i11 = i2 - 1; i9 < this.f6487e && i11 >= this.f6488f; i11--) {
                edge -= location.f6896b;
                location = getLocation(i11);
                int i12 = location.f6474a;
                if (i12 != i10) {
                    i9++;
                    int size = edge - ((G) this.f6484b).getSize(i11);
                    if (!z6 ? size >= i7 : size <= i7) {
                        i10 = i12;
                    } else {
                        i7 = size;
                        i2 = i11;
                        i8 = i12;
                        i10 = i8;
                    }
                }
            }
        } else {
            int i13 = i8;
            int i14 = i13;
            int i15 = 1;
            int i16 = edge;
            for (int i17 = i2 + 1; i15 < this.f6487e && i17 <= this.f6489g; i17++) {
                q1 location2 = getLocation(i17);
                i16 += location2.f6896b;
                int i18 = location2.f6474a;
                if (i18 != i14) {
                    i15++;
                    if (!z6 ? i16 >= edge : i16 <= edge) {
                        i14 = i18;
                    } else {
                        edge = i16;
                        i2 = i17;
                        i13 = i18;
                        i14 = i13;
                    }
                }
            }
            i7 = edge;
            i8 = i13;
        }
        if (iArr != null) {
            iArr[0] = i8;
            iArr[1] = i2;
        }
        return i7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x0130, code lost:
    
        return true;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0101 A[LOOP:2: B:54:0x0101->B:68:0x0125, LOOP_START, PHI: r5 r8 r9
      0x0101: PHI (r5v12 int) = (r5v6 int), (r5v17 int) binds: [B:53:0x00ff, B:68:0x0125] A[DONT_GENERATE, DONT_INLINE]
      0x0101: PHI (r8v19 int) = (r8v17 int), (r8v20 int) binds: [B:53:0x00ff, B:68:0x0125] A[DONT_GENERATE, DONT_INLINE]
      0x0101: PHI (r9v8 int) = (r9v6 int), (r9v10 int) binds: [B:53:0x00ff, B:68:0x0125] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0133  */
    @Override // androidx.leanback.widget.r1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean prependVisibleItemsWithoutCache(int r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.s1.prependVisibleItemsWithoutCache(int, boolean):boolean");
    }
}
