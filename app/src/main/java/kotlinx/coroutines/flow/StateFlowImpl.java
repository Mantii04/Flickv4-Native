package kotlinx.coroutines.flow;

import U5.b;
import U5.k;
import U5.n;
import V5.c;
import V5.g;
import W5.G;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.j;
import u5.C1711j;
import y5.InterfaceC1944c;

/* loaded from: classes2.dex */
public final class StateFlowImpl extends V5.a implements k, b {

    /* renamed from: m, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f17574m = AtomicReferenceFieldUpdater.newUpdater(StateFlowImpl.class, Object.class, "_state");
    private volatile Object _state;

    /* renamed from: j, reason: collision with root package name */
    public int f17575j;

    public StateFlowImpl(Object obj) {
        this._state = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00bb, code lost:
    
        if (r6.awaitPending(r0) == r1) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x007f A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:14:0x0036, B:15:0x0077, B:17:0x007f, B:19:0x0084, B:21:0x00a5, B:23:0x00ab, B:27:0x008a, B:30:0x0091, B:39:0x004f, B:41:0x0059, B:42:0x0068), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0084 A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:14:0x0036, B:15:0x0077, B:17:0x007f, B:19:0x0084, B:21:0x00a5, B:23:0x00ab, B:27:0x008a, B:30:0x0091, B:39:0x004f, B:41:0x0059, B:42:0x0068), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ab A[Catch: all -> 0x003a, TRY_LEAVE, TryCatch #0 {all -> 0x003a, blocks: (B:14:0x0036, B:15:0x0077, B:17:0x007f, B:19:0x0084, B:21:0x00a5, B:23:0x00ab, B:27:0x008a, B:30:0x0091, B:39:0x004f, B:41:0x0059, B:42:0x0068), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00a9 -> B:15:0x0077). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00bb -> B:15:0x0077). Please report as a decompilation issue!!! */
    @Override // U5.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(U5.c r11, y5.InterfaceC1944c r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof kotlinx.coroutines.flow.StateFlowImpl$collect$1
            if (r0 == 0) goto L13
            r0 = r12
            kotlinx.coroutines.flow.StateFlowImpl$collect$1 r0 = (kotlinx.coroutines.flow.StateFlowImpl$collect$1) r0
            int r1 = r0.f17583q
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f17583q = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.StateFlowImpl$collect$1 r0 = new kotlinx.coroutines.flow.StateFlowImpl$collect$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.f17581n
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f17583q
            r3 = 0
            r4 = 3
            r5 = 2
            if (r2 == 0) goto L5d
            r11 = 1
            if (r2 == r11) goto L53
            if (r2 == r5) goto L45
            if (r2 != r4) goto L3d
            java.lang.Object r11 = r0.f17580m
            R5.q0 r2 = r0.f17579j
            U5.n r6 = r0.f17578f
            U5.c r7 = r0.f17577e
            kotlinx.coroutines.flow.StateFlowImpl r8 = r0.f17576b
            kotlin.b.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L3a
            goto L77
        L3a:
            r11 = move-exception
            goto Lbe
        L3d:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L45:
            java.lang.Object r11 = r0.f17580m
            R5.q0 r2 = r0.f17579j
            U5.n r6 = r0.f17578f
            U5.c r7 = r0.f17577e
            kotlinx.coroutines.flow.StateFlowImpl r8 = r0.f17576b
            kotlin.b.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L3a
            goto La5
        L53:
            U5.n r6 = r0.f17578f
            U5.c r11 = r0.f17577e
            kotlinx.coroutines.flow.StateFlowImpl r8 = r0.f17576b
            kotlin.b.throwOnFailure(r12)     // Catch: java.lang.Throwable -> L3a
            goto L68
        L5d:
            kotlin.b.throwOnFailure(r12)
            V5.c r12 = r10.allocateSlot()
            U5.n r12 = (U5.n) r12
            r8 = r10
            r6 = r12
        L68:
            y5.k r12 = r0.getContext()     // Catch: java.lang.Throwable -> L3a
            R5.F r2 = R5.F.f3147e     // Catch: java.lang.Throwable -> L3a
            y5.i r12 = r12.get(r2)     // Catch: java.lang.Throwable -> L3a
            R5.q0 r12 = (R5.InterfaceC0294q0) r12     // Catch: java.lang.Throwable -> L3a
            r7 = r11
            r2 = r12
            r11 = r3
        L77:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r12 = kotlinx.coroutines.flow.StateFlowImpl.f17574m     // Catch: java.lang.Throwable -> L3a
            java.lang.Object r12 = r12.get(r8)     // Catch: java.lang.Throwable -> L3a
            if (r2 == 0) goto L82
            R5.AbstractC0299t0.ensureActive(r2)     // Catch: java.lang.Throwable -> L3a
        L82:
            if (r11 == 0) goto L8a
            boolean r9 = kotlin.jvm.internal.j.areEqual(r11, r12)     // Catch: java.lang.Throwable -> L3a
            if (r9 != 0) goto La5
        L8a:
            W5.G r11 = V5.g.f4031a     // Catch: java.lang.Throwable -> L3a
            if (r12 != r11) goto L90
            r11 = r3
            goto L91
        L90:
            r11 = r12
        L91:
            r0.f17576b = r8     // Catch: java.lang.Throwable -> L3a
            r0.f17577e = r7     // Catch: java.lang.Throwable -> L3a
            r0.f17578f = r6     // Catch: java.lang.Throwable -> L3a
            r0.f17579j = r2     // Catch: java.lang.Throwable -> L3a
            r0.f17580m = r12     // Catch: java.lang.Throwable -> L3a
            r0.f17583q = r5     // Catch: java.lang.Throwable -> L3a
            java.lang.Object r11 = r7.emit(r11, r0)     // Catch: java.lang.Throwable -> L3a
            if (r11 != r1) goto La4
            goto Lbd
        La4:
            r11 = r12
        La5:
            boolean r12 = r6.takePending()     // Catch: java.lang.Throwable -> L3a
            if (r12 != 0) goto L77
            r0.f17576b = r8     // Catch: java.lang.Throwable -> L3a
            r0.f17577e = r7     // Catch: java.lang.Throwable -> L3a
            r0.f17578f = r6     // Catch: java.lang.Throwable -> L3a
            r0.f17579j = r2     // Catch: java.lang.Throwable -> L3a
            r0.f17580m = r11     // Catch: java.lang.Throwable -> L3a
            r0.f17583q = r4     // Catch: java.lang.Throwable -> L3a
            java.lang.Object r12 = r6.awaitPending(r0)     // Catch: java.lang.Throwable -> L3a
            if (r12 != r1) goto L77
        Lbd:
            return r1
        Lbe:
            r8.freeSlot(r6)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.StateFlowImpl.collect(U5.c, y5.c):java.lang.Object");
    }

    @Override // U5.c
    public Object emit(Object obj, InterfaceC1944c interfaceC1944c) {
        setValue(obj);
        return C1711j.f20329a;
    }

    public Object getValue() {
        G g7 = g.f4031a;
        Object obj = f17574m.get(this);
        if (obj == g7) {
            return null;
        }
        return obj;
    }

    public void setValue(Object obj) {
        int i2;
        c[] slots;
        if (obj == null) {
            obj = g.f4031a;
        }
        synchronized (this) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f17574m;
            if (j.areEqual(atomicReferenceFieldUpdater.get(this), obj)) {
                return;
            }
            atomicReferenceFieldUpdater.set(this, obj);
            int i7 = this.f17575j;
            if ((i7 & 1) != 0) {
                this.f17575j = i7 + 2;
                return;
            }
            int i8 = i7 + 1;
            this.f17575j = i8;
            c[] slots2 = getSlots();
            while (true) {
                n[] nVarArr = (n[]) slots2;
                if (nVarArr != null) {
                    for (n nVar : nVarArr) {
                        if (nVar != null) {
                            nVar.makePending();
                        }
                    }
                }
                synchronized (this) {
                    i2 = this.f17575j;
                    if (i2 == i8) {
                        this.f17575j = i8 + 1;
                        return;
                    }
                    slots = getSlots();
                }
                slots2 = slots;
                i8 = i2;
            }
        }
    }

    @Override // V5.a
    public n createSlot() {
        return new n();
    }

    @Override // V5.a
    public n[] createSlotArray(int i2) {
        return new n[i2];
    }
}
