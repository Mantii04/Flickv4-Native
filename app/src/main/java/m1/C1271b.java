package m1;

import java.util.ArrayList;

/* renamed from: m1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1271b {

    /* renamed from: d, reason: collision with root package name */
    public final U f18351d;

    /* renamed from: a, reason: collision with root package name */
    public final L.f f18348a = new L.f(30);

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f18349b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f18350c = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public int f18353f = 0;

    /* renamed from: e, reason: collision with root package name */
    public final L0.f f18352e = new L0.f(this);

    public C1271b(U u6) {
        this.f18351d = u6;
    }

    public final boolean a(int i2) {
        ArrayList arrayList = this.f18350c;
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            C1269a c1269a = (C1269a) arrayList.get(i7);
            int i8 = c1269a.f18342a;
            if (i8 == 8) {
                if (f(c1269a.f18345d, i7 + 1) == i2) {
                    return true;
                }
            } else if (i8 == 1) {
                int i9 = c1269a.f18343b;
                int i10 = c1269a.f18345d + i9;
                while (i9 < i10) {
                    if (f(i9, i7 + 1) == i2) {
                        return true;
                    }
                    i9++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public int applyPendingUpdatesToPosition(int i2) {
        ArrayList arrayList = this.f18349b;
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            C1269a c1269a = (C1269a) arrayList.get(i7);
            int i8 = c1269a.f18342a;
            if (i8 != 1) {
                if (i8 == 2) {
                    int i9 = c1269a.f18343b;
                    if (i9 <= i2) {
                        int i10 = c1269a.f18345d;
                        if (i9 + i10 > i2) {
                            return -1;
                        }
                        i2 -= i10;
                    } else {
                        continue;
                    }
                } else if (i8 == 8) {
                    int i11 = c1269a.f18343b;
                    if (i11 == i2) {
                        i2 = c1269a.f18345d;
                    } else {
                        if (i11 < i2) {
                            i2--;
                        }
                        if (c1269a.f18345d <= i2) {
                            i2++;
                        }
                    }
                }
            } else if (c1269a.f18343b <= i2) {
                i2 += c1269a.f18345d;
            }
        }
        return i2;
    }

    public final void b() {
        ArrayList arrayList = this.f18350c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f18351d.onDispatchSecondPass((C1269a) arrayList.get(i2));
        }
        j(arrayList);
        this.f18353f = 0;
    }

    public final void c() {
        b();
        ArrayList arrayList = this.f18349b;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1269a c1269a = (C1269a) arrayList.get(i2);
            int i7 = c1269a.f18342a;
            U u6 = this.f18351d;
            if (i7 == 1) {
                u6.onDispatchSecondPass(c1269a);
                u6.offsetPositionsForAdd(c1269a.f18343b, c1269a.f18345d);
            } else if (i7 == 2) {
                u6.onDispatchSecondPass(c1269a);
                u6.offsetPositionsForRemovingInvisible(c1269a.f18343b, c1269a.f18345d);
            } else if (i7 == 4) {
                u6.onDispatchSecondPass(c1269a);
                u6.markViewHoldersUpdated(c1269a.f18343b, c1269a.f18345d, c1269a.f18344c);
            } else if (i7 == 8) {
                u6.onDispatchSecondPass(c1269a);
                u6.offsetPositionsForMove(c1269a.f18343b, c1269a.f18345d);
            }
        }
        j(arrayList);
        this.f18353f = 0;
    }

    public final void d(C1269a c1269a) {
        int i2;
        int i7 = c1269a.f18342a;
        if (i7 == 1 || i7 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int k7 = k(c1269a.f18343b, i7);
        int i8 = c1269a.f18343b;
        int i9 = c1269a.f18342a;
        if (i9 == 2) {
            i2 = 0;
        } else {
            if (i9 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + c1269a);
            }
            i2 = 1;
        }
        int i10 = 1;
        for (int i11 = 1; i11 < c1269a.f18345d; i11++) {
            int k8 = k((i2 * i11) + c1269a.f18343b, c1269a.f18342a);
            int i12 = c1269a.f18342a;
            if (i12 == 2 ? k8 != k7 : !(i12 == 4 && k8 == k7 + 1)) {
                C1269a obtainUpdateOp = obtainUpdateOp(i12, k7, i10, c1269a.f18344c);
                e(obtainUpdateOp, i8);
                recycleUpdateOp(obtainUpdateOp);
                if (c1269a.f18342a == 4) {
                    i8 += i10;
                }
                i10 = 1;
                k7 = k8;
            } else {
                i10++;
            }
        }
        Object obj = c1269a.f18344c;
        recycleUpdateOp(c1269a);
        if (i10 > 0) {
            C1269a obtainUpdateOp2 = obtainUpdateOp(c1269a.f18342a, k7, i10, obj);
            e(obtainUpdateOp2, i8);
            recycleUpdateOp(obtainUpdateOp2);
        }
    }

    public final void e(C1269a c1269a, int i2) {
        U u6 = this.f18351d;
        u6.onDispatchFirstPass(c1269a);
        int i7 = c1269a.f18342a;
        if (i7 == 2) {
            u6.offsetPositionsForRemovingInvisible(i2, c1269a.f18345d);
        } else {
            if (i7 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            u6.markViewHoldersUpdated(i2, c1269a.f18345d, c1269a.f18344c);
        }
    }

    public final int f(int i2, int i7) {
        ArrayList arrayList = this.f18350c;
        int size = arrayList.size();
        while (i7 < size) {
            C1269a c1269a = (C1269a) arrayList.get(i7);
            int i8 = c1269a.f18342a;
            if (i8 == 8) {
                int i9 = c1269a.f18343b;
                if (i9 == i2) {
                    i2 = c1269a.f18345d;
                } else {
                    if (i9 < i2) {
                        i2--;
                    }
                    if (c1269a.f18345d <= i2) {
                        i2++;
                    }
                }
            } else {
                int i10 = c1269a.f18343b;
                if (i10 > i2) {
                    continue;
                } else if (i8 == 2) {
                    int i11 = c1269a.f18345d;
                    if (i2 < i10 + i11) {
                        return -1;
                    }
                    i2 -= i11;
                } else if (i8 == 1) {
                    i2 += c1269a.f18345d;
                }
            }
            i7++;
        }
        return i2;
    }

    public final boolean g() {
        return this.f18349b.size() > 0;
    }

    public final void h(C1269a c1269a) {
        this.f18350c.add(c1269a);
        int i2 = c1269a.f18342a;
        U u6 = this.f18351d;
        if (i2 == 1) {
            u6.offsetPositionsForAdd(c1269a.f18343b, c1269a.f18345d);
            return;
        }
        if (i2 == 2) {
            u6.offsetPositionsForRemovingLaidOutOrNewView(c1269a.f18343b, c1269a.f18345d);
            return;
        }
        if (i2 == 4) {
            u6.markViewHoldersUpdated(c1269a.f18343b, c1269a.f18345d, c1269a.f18344c);
        } else if (i2 == 8) {
            u6.offsetPositionsForMove(c1269a.f18343b, c1269a.f18345d);
        } else {
            throw new IllegalArgumentException("Unknown update op type for " + c1269a);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x009b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i() {
        /*
            Method dump skipped, instructions count: 642
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: m1.C1271b.i():void");
    }

    public final void j(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            recycleUpdateOp((C1269a) arrayList.get(i2));
        }
        arrayList.clear();
    }

    public final int k(int i2, int i7) {
        int i8;
        int i9;
        ArrayList arrayList = this.f18350c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C1269a c1269a = (C1269a) arrayList.get(size);
            int i10 = c1269a.f18342a;
            if (i10 == 8) {
                int i11 = c1269a.f18343b;
                int i12 = c1269a.f18345d;
                if (i11 < i12) {
                    i9 = i11;
                    i8 = i12;
                } else {
                    i8 = i11;
                    i9 = i12;
                }
                if (i2 < i9 || i2 > i8) {
                    if (i2 < i11) {
                        if (i7 == 1) {
                            c1269a.f18343b = i11 + 1;
                            c1269a.f18345d = i12 + 1;
                        } else if (i7 == 2) {
                            c1269a.f18343b = i11 - 1;
                            c1269a.f18345d = i12 - 1;
                        }
                    }
                } else if (i9 == i11) {
                    if (i7 == 1) {
                        c1269a.f18345d = i12 + 1;
                    } else if (i7 == 2) {
                        c1269a.f18345d = i12 - 1;
                    }
                    i2++;
                } else {
                    if (i7 == 1) {
                        c1269a.f18343b = i11 + 1;
                    } else if (i7 == 2) {
                        c1269a.f18343b = i11 - 1;
                    }
                    i2--;
                }
            } else {
                int i13 = c1269a.f18343b;
                if (i13 <= i2) {
                    if (i10 == 1) {
                        i2 -= c1269a.f18345d;
                    } else if (i10 == 2) {
                        i2 += c1269a.f18345d;
                    }
                } else if (i7 == 1) {
                    c1269a.f18343b = i13 + 1;
                } else if (i7 == 2) {
                    c1269a.f18343b = i13 - 1;
                }
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            C1269a c1269a2 = (C1269a) arrayList.get(size2);
            if (c1269a2.f18342a == 8) {
                int i14 = c1269a2.f18345d;
                if (i14 == c1269a2.f18343b || i14 < 0) {
                    arrayList.remove(size2);
                    recycleUpdateOp(c1269a2);
                }
            } else if (c1269a2.f18345d <= 0) {
                arrayList.remove(size2);
                recycleUpdateOp(c1269a2);
            }
        }
        return i2;
    }

    public C1269a obtainUpdateOp(int i2, int i7, int i8, Object obj) {
        C1269a c1269a = (C1269a) this.f18348a.acquire();
        if (c1269a != null) {
            c1269a.f18342a = i2;
            c1269a.f18343b = i7;
            c1269a.f18345d = i8;
            c1269a.f18344c = obj;
            return c1269a;
        }
        C1269a c1269a2 = new C1269a();
        c1269a2.f18342a = i2;
        c1269a2.f18343b = i7;
        c1269a2.f18345d = i8;
        c1269a2.f18344c = obj;
        return c1269a2;
    }

    public void recycleUpdateOp(C1269a c1269a) {
        c1269a.f18344c = null;
        this.f18348a.release(c1269a);
    }
}
