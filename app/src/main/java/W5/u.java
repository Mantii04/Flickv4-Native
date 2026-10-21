package W5;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public final class u {

    /* renamed from: e, reason: collision with root package name */
    public static final s f4211e = new s(null);

    /* renamed from: f, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f4212f = AtomicReferenceFieldUpdater.newUpdater(u.class, Object.class, "_next");

    /* renamed from: g, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f4213g = AtomicLongFieldUpdater.newUpdater(u.class, "_state");

    /* renamed from: h, reason: collision with root package name */
    public static final G f4214h = new G("REMOVE_FROZEN");
    private volatile Object _next;
    private volatile long _state;

    /* renamed from: a, reason: collision with root package name */
    public final int f4215a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4216b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4217c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReferenceArray f4218d;

    public u(int i2, boolean z6) {
        this.f4215a = i2;
        this.f4216b = z6;
        int i7 = i2 - 1;
        this.f4217c = i7;
        this.f4218d = new AtomicReferenceArray(i2);
        if (i7 > 1073741823) {
            throw new IllegalStateException("Check failed.");
        }
        if ((i2 & i7) != 0) {
            throw new IllegalStateException("Check failed.");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x004e, code lost:
    
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int addLast(java.lang.Object r14) {
        /*
            r13 = this;
        L0:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = W5.u.f4213g
            long r3 = r0.get(r13)
            r1 = 3458764513820540928(0x3000000000000000, double:1.727233711018889E-77)
            long r1 = r1 & r3
            r7 = 0
            int r1 = (r1 > r7 ? 1 : (r1 == r7 ? 0 : -1))
            W5.s r2 = W5.u.f4211e
            if (r1 == 0) goto L16
            int r14 = r2.addFailReason(r3)
            return r14
        L16:
            r5 = 1073741823(0x3fffffff, double:5.304989472E-315)
            long r5 = r5 & r3
            int r1 = (int) r5
            r5 = 1152921503533105152(0xfffffffc0000000, double:1.2882296003504729E-231)
            long r5 = r5 & r3
            r9 = 30
            long r5 = r5 >> r9
            int r9 = (int) r5
            int r5 = r9 + 2
            int r10 = r13.f4217c
            r5 = r5 & r10
            r6 = r1 & r10
            r11 = 1
            if (r5 != r6) goto L30
            return r11
        L30:
            boolean r5 = r13.f4216b
            r6 = 1073741823(0x3fffffff, float:1.9999999)
            java.util.concurrent.atomic.AtomicReferenceArray r12 = r13.f4218d
            if (r5 != 0) goto L4f
            r5 = r9 & r10
            java.lang.Object r5 = r12.get(r5)
            if (r5 == 0) goto L4f
            r0 = 1024(0x400, float:1.435E-42)
            int r2 = r13.f4215a
            if (r2 < r0) goto L4e
            int r9 = r9 - r1
            r0 = r9 & r6
            int r1 = r2 >> 1
            if (r0 <= r1) goto L0
        L4e:
            return r11
        L4f:
            int r1 = r9 + 1
            r1 = r1 & r6
            r5 = r1
            java.util.concurrent.atomic.AtomicLongFieldUpdater r1 = W5.u.f4213g
            long r5 = r2.updateTail(r3, r5)
            r2 = r13
            boolean r1 = r1.compareAndSet(r2, r3, r5)
            if (r1 == 0) goto L0
            r1 = r9 & r10
            r12.set(r1, r14)
            r1 = r13
        L66:
            long r2 = r0.get(r1)
            r4 = 1152921504606846976(0x1000000000000000, double:1.2882297539194267E-231)
            long r2 = r2 & r4
            int r2 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r2 == 0) goto L8f
            W5.u r1 = r1.next()
            java.util.concurrent.atomic.AtomicReferenceArray r2 = r1.f4218d
            int r3 = r1.f4217c
            r3 = r3 & r9
            java.lang.Object r4 = r2.get(r3)
            boolean r5 = r4 instanceof W5.t
            if (r5 == 0) goto L8c
            W5.t r4 = (W5.t) r4
            int r4 = r4.f4210a
            if (r4 != r9) goto L8c
            r2.set(r3, r14)
            goto L8d
        L8c:
            r1 = 0
        L8d:
            if (r1 != 0) goto L66
        L8f:
            r14 = 0
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: W5.u.addLast(java.lang.Object):int");
    }

    public final boolean close() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j7;
        do {
            atomicLongFieldUpdater = f4213g;
            j7 = atomicLongFieldUpdater.get(this);
            if ((j7 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j7) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j7, 2305843009213693952L | j7));
        return true;
    }

    public final int getSize() {
        long j7 = f4213g.get(this);
        return (((int) ((j7 & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j7))) & 1073741823;
    }

    public final boolean isEmpty() {
        long j7 = f4213g.get(this);
        return ((int) (1073741823 & j7)) == ((int) ((j7 & 1152921503533105152L) >> 30));
    }

    public final u next() {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j7;
        u uVar;
        while (true) {
            atomicLongFieldUpdater = f4213g;
            j7 = atomicLongFieldUpdater.get(this);
            if ((j7 & 1152921504606846976L) != 0) {
                uVar = this;
                break;
            }
            long j8 = j7 | 1152921504606846976L;
            uVar = this;
            if (atomicLongFieldUpdater.compareAndSet(uVar, j7, j8)) {
                j7 = j8;
                break;
            }
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f4212f;
            u uVar2 = (u) atomicReferenceFieldUpdater.get(this);
            if (uVar2 != null) {
                return uVar2;
            }
            u uVar3 = new u(uVar.f4215a * 2, uVar.f4216b);
            int i2 = (int) (1073741823 & j7);
            int i7 = (int) ((1152921503533105152L & j7) >> 30);
            while (true) {
                int i8 = uVar.f4217c;
                int i9 = i2 & i8;
                if (i9 == (i8 & i7)) {
                    break;
                }
                Object obj = uVar.f4218d.get(i9);
                if (obj == null) {
                    obj = new t(i2);
                }
                uVar3.f4218d.set(uVar3.f4217c & i2, obj);
                i2++;
            }
            atomicLongFieldUpdater.set(uVar3, f4211e.wo(j7, 1152921504606846976L));
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, uVar3) && atomicReferenceFieldUpdater.get(this) == null) {
            }
        }
    }

    public final Object removeFirstOrNull() {
        u uVar = this;
        while (true) {
            long j7 = f4213g.get(uVar);
            if ((j7 & 1152921504606846976L) != 0) {
                return f4214h;
            }
            int i2 = (int) (j7 & 1073741823);
            int i7 = uVar.f4217c;
            if ((((int) ((1152921503533105152L & j7) >> 30)) & i7) == (i2 & i7)) {
                return null;
            }
            AtomicReferenceArray atomicReferenceArray = uVar.f4218d;
            Object obj = atomicReferenceArray.get(i2 & i7);
            boolean z6 = uVar.f4216b;
            if (obj == null) {
                if (z6) {
                    return null;
                }
            } else {
                if (obj instanceof t) {
                    return null;
                }
                int i8 = (i2 + 1) & 1073741823;
                AtomicLongFieldUpdater atomicLongFieldUpdater = f4213g;
                s sVar = f4211e;
                if (atomicLongFieldUpdater.compareAndSet(uVar, j7, sVar.updateHead(j7, i8))) {
                    atomicReferenceArray.set(i2 & i7, null);
                    return obj;
                }
                uVar = this;
                if (z6) {
                    while (true) {
                        AtomicLongFieldUpdater atomicLongFieldUpdater2 = f4213g;
                        long j8 = atomicLongFieldUpdater2.get(uVar);
                        int i9 = (int) (j8 & 1073741823);
                        if ((j8 & 1152921504606846976L) != 0) {
                            uVar = uVar.next();
                        } else {
                            if (atomicLongFieldUpdater2.compareAndSet(uVar, j8, sVar.updateHead(j8, i8))) {
                                uVar.f4218d.set(uVar.f4217c & i9, null);
                                uVar = null;
                            } else {
                                continue;
                            }
                        }
                        if (uVar == null) {
                            return obj;
                        }
                    }
                }
            }
        }
    }
}
