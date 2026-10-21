package kotlinx.coroutines.channels;

import A.i;
import A5.f;
import H5.l;
import H5.p;
import H5.q;
import R5.AbstractC0291p;
import R5.C0287n;
import R5.InterfaceC0285m;
import R5.S0;
import T5.c;
import T5.e;
import T5.k;
import T5.t;
import W5.AbstractC0357d;
import W5.D;
import W5.E;
import W5.F;
import W5.G;
import Z5.a;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.b;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.internal.j;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.UndeliveredElementException;
import u5.AbstractC1702a;
import u5.C1711j;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public class BufferedChannel implements c {

    /* renamed from: f, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f17490f = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "sendersAndCloseStatus");

    /* renamed from: j, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f17491j = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "receivers");

    /* renamed from: m, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f17492m = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "bufferEnd");

    /* renamed from: n, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f17493n = AtomicLongFieldUpdater.newUpdater(BufferedChannel.class, "completedExpandBuffersAndPauseFlag");

    /* renamed from: p, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f17494p = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "sendSegment");

    /* renamed from: q, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f17495q = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "receiveSegment");

    /* renamed from: r, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f17496r = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "bufferEndSegment");

    /* renamed from: s, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f17497s = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "_closeCause");

    /* renamed from: t, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f17498t = AtomicReferenceFieldUpdater.newUpdater(BufferedChannel.class, Object.class, "closeHandler");
    private volatile Object _closeCause;

    /* renamed from: b, reason: collision with root package name */
    public final int f17499b;
    private volatile long bufferEnd;
    private volatile Object bufferEndSegment;
    private volatile Object closeHandler;
    private volatile long completedExpandBuffersAndPauseFlag;

    /* renamed from: e, reason: collision with root package name */
    public final l f17500e;
    private volatile Object receiveSegment;
    private volatile long receivers;
    private volatile Object sendSegment;
    private volatile long sendersAndCloseStatus;

    public BufferedChannel(int i2, l lVar) {
        G g7;
        this.f17499b = i2;
        this.f17500e = lVar;
        if (i2 < 0) {
            throw new IllegalArgumentException(i.g(i2, "Invalid channel capacity: ", ", should be >=0").toString());
        }
        this.bufferEnd = BufferedChannelKt.access$initialBufferEnd(i2);
        this.completedExpandBuffersAndPauseFlag = f17492m.get(this);
        k kVar = new k(0L, null, this, 3);
        this.sendSegment = kVar;
        this.receiveSegment = kVar;
        if (h()) {
            kVar = BufferedChannelKt.f17504a;
            j.checkNotNull(kVar, "null cannot be cast to non-null type kotlinx.coroutines.channels.ChannelSegment<E of kotlinx.coroutines.channels.BufferedChannel>");
        }
        this.bufferEndSegment = kVar;
        if (lVar != null) {
            new q() { // from class: kotlinx.coroutines.channels.BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1
                {
                    super(3);
                }

                @Override // H5.q
                public /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) {
                    if (obj == null) {
                        return invoke((a) null, obj2, obj3);
                    }
                    throw new ClassCastException();
                }

                public final l invoke(a aVar, Object obj, final Object obj2) {
                    final BufferedChannel bufferedChannel = BufferedChannel.this;
                    return new l() { // from class: kotlinx.coroutines.channels.BufferedChannel$onUndeliveredElementReceiveCancellationConstructor$1$1.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // H5.l
                        public /* bridge */ /* synthetic */ Object invoke(Object obj3) {
                            invoke((Throwable) obj3);
                            return C1711j.f20329a;
                        }

                        public final void invoke(Throwable th) {
                            if (obj2 == BufferedChannelKt.getCHANNEL_CLOSED()) {
                                return;
                            }
                            l lVar2 = bufferedChannel.f17500e;
                            throw null;
                        }
                    };
                }
            };
        }
        g7 = BufferedChannelKt.f17522s;
        this._closeCause = g7;
    }

    public static final k access$findSegmentSend(BufferedChannel bufferedChannel, long j7, k kVar) {
        Object findSegmentInternal;
        BufferedChannel bufferedChannel2;
        bufferedChannel.getClass();
        p pVar = (p) BufferedChannelKt.createSegmentFunction();
        loop0: while (true) {
            findSegmentInternal = AbstractC0357d.findSegmentInternal(kVar, j7, pVar);
            if (!E.m46isClosedimpl(findSegmentInternal)) {
                D m45getSegmentimpl = E.m45getSegmentimpl(findSegmentInternal);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f17494p;
                    D d7 = (D) atomicReferenceFieldUpdater.get(bufferedChannel);
                    if (d7.f4177f >= m45getSegmentimpl.f4177f) {
                        break loop0;
                    }
                    if (!m45getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(bufferedChannel, d7, m45getSegmentimpl)) {
                        if (atomicReferenceFieldUpdater.get(bufferedChannel) != d7) {
                            if (m45getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                                m45getSegmentimpl.remove();
                            }
                        }
                    }
                    if (d7.decPointers$kotlinx_coroutines_core()) {
                        d7.remove();
                    }
                }
            } else {
                break;
            }
        }
        if (E.m46isClosedimpl(findSegmentInternal)) {
            bufferedChannel.isClosedForSend();
            if (kVar.f4177f * BufferedChannelKt.f17505b < bufferedChannel.getReceiversCounter$kotlinx_coroutines_core()) {
                kVar.cleanPrev();
                return null;
            }
        } else {
            k kVar2 = (k) E.m45getSegmentimpl(findSegmentInternal);
            long j8 = kVar2.f4177f;
            if (j8 <= j7) {
                return kVar2;
            }
            long j9 = j8 * BufferedChannelKt.f17505b;
            while (true) {
                AtomicLongFieldUpdater atomicLongFieldUpdater = f17490f;
                long j10 = atomicLongFieldUpdater.get(bufferedChannel);
                long j11 = 1152921504606846975L & j10;
                if (j11 >= j9) {
                    bufferedChannel2 = bufferedChannel;
                    break;
                }
                bufferedChannel2 = bufferedChannel;
                if (atomicLongFieldUpdater.compareAndSet(bufferedChannel2, j10, BufferedChannelKt.access$constructSendersAndCloseStatus(j11, (int) (j10 >> 60)))) {
                    break;
                }
                bufferedChannel = bufferedChannel2;
            }
            if (kVar2.f4177f * BufferedChannelKt.f17505b < bufferedChannel2.getReceiversCounter$kotlinx_coroutines_core()) {
                kVar2.cleanPrev();
            }
        }
        return null;
    }

    public static final boolean access$isClosedForSend0(BufferedChannel bufferedChannel, long j7) {
        return bufferedChannel.g(j7, false);
    }

    public static final void access$onClosedReceiveOnNoWaiterSuspend(BufferedChannel bufferedChannel, InterfaceC0285m interfaceC0285m) {
        bufferedChannel.getClass();
        int i2 = Result.f17390b;
        interfaceC0285m.resumeWith(Result.m103constructorimpl(b.createFailure(bufferedChannel.e())));
    }

    public static final void access$onClosedSendOnNoWaiterSuspend(BufferedChannel bufferedChannel, Object obj, InterfaceC0285m interfaceC0285m) {
        l lVar = bufferedChannel.f17500e;
        if (lVar != null) {
            OnUndeliveredElementKt.callUndeliveredElement(lVar, obj, interfaceC0285m.getContext());
        }
        Throwable sendException = bufferedChannel.getSendException();
        int i2 = Result.f17390b;
        interfaceC0285m.resumeWith(Result.m103constructorimpl(b.createFailure(sendException)));
    }

    public static final void access$prepareReceiverForSuspension(BufferedChannel bufferedChannel, S0 s02, k kVar, int i2) {
        bufferedChannel.onReceiveEnqueued();
        s02.invokeOnCancellation(kVar, i2);
    }

    public static final void access$prepareSenderForSuspension(BufferedChannel bufferedChannel, S0 s02, k kVar, int i2) {
        bufferedChannel.getClass();
        s02.invokeOnCancellation(kVar, i2 + BufferedChannelKt.f17505b);
    }

    public static final int access$updateCellSend(BufferedChannel bufferedChannel, k kVar, int i2, Object obj, long j7, Object obj2, boolean z6) {
        G g7;
        G g8;
        G g9;
        bufferedChannel.getClass();
        kVar.storeElement$kotlinx_coroutines_core(i2, obj);
        if (z6) {
            return bufferedChannel.o(kVar, i2, obj, j7, obj2, z6);
        }
        Object state$kotlinx_coroutines_core = kVar.getState$kotlinx_coroutines_core(i2);
        if (state$kotlinx_coroutines_core == null) {
            if (bufferedChannel.a(j7)) {
                if (kVar.casState$kotlinx_coroutines_core(i2, null, BufferedChannelKt.f17507d)) {
                    return 1;
                }
            } else {
                if (obj2 == null) {
                    return 3;
                }
                if (kVar.casState$kotlinx_coroutines_core(i2, null, obj2)) {
                    return 2;
                }
            }
        } else if (state$kotlinx_coroutines_core instanceof S0) {
            kVar.cleanElement$kotlinx_coroutines_core(i2);
            if (bufferedChannel.l(state$kotlinx_coroutines_core, obj)) {
                g9 = BufferedChannelKt.f17512i;
                kVar.setState$kotlinx_coroutines_core(i2, g9);
                bufferedChannel.onReceiveDequeued();
                return 0;
            }
            g7 = BufferedChannelKt.f17514k;
            Object andSetState$kotlinx_coroutines_core = kVar.getAndSetState$kotlinx_coroutines_core(i2, g7);
            g8 = BufferedChannelKt.f17514k;
            if (andSetState$kotlinx_coroutines_core == g8) {
                return 5;
            }
            kVar.onCancelledRequest(i2, true);
            return 5;
        }
        return bufferedChannel.o(kVar, i2, obj, j7, obj2, z6);
    }

    public static void f(BufferedChannel bufferedChannel) {
        bufferedChannel.getClass();
        AtomicLongFieldUpdater atomicLongFieldUpdater = f17493n;
        if ((atomicLongFieldUpdater.addAndGet(bufferedChannel, 1L) & 4611686018427387904L) != 0) {
            while ((atomicLongFieldUpdater.get(bufferedChannel) & 4611686018427387904L) != 0) {
            }
        }
    }

    public static boolean m(Object obj) {
        if (!(obj instanceof InterfaceC0285m)) {
            throw new IllegalStateException(("Unexpected waiter: " + obj).toString());
        }
        j.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
        InterfaceC0285m interfaceC0285m = (InterfaceC0285m) obj;
        k kVar = BufferedChannelKt.f17504a;
        Object tryResume = interfaceC0285m.tryResume(C1711j.f20329a, null, null);
        if (tryResume == null) {
            return false;
        }
        interfaceC0285m.completeResume(tryResume);
        return true;
    }

    public final boolean a(long j7) {
        return j7 < f17492m.get(this) || j7 < getReceiversCounter$kotlinx_coroutines_core() + ((long) this.f17499b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x007a, code lost:
    
        r1 = (T5.k) r1.getPrev();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T5.k b(long r12) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.b(long):T5.k");
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x01ad, code lost:
    
        f(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01b0, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c() {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.c():void");
    }

    @Override // T5.q
    public final void cancel(CancellationException cancellationException) {
        cancelImpl$kotlinx_coroutines_core(cancellationException);
    }

    public boolean cancelImpl$kotlinx_coroutines_core(Throwable th) {
        if (th == null) {
            th = new CancellationException("Channel was cancelled");
        }
        return closeOrCancelImpl(th, true);
    }

    @Override // T5.s
    public boolean close(Throwable th) {
        return closeOrCancelImpl(th, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x003d A[LOOP:2: B:17:0x003d->B:39:?, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0078 A[LOOP:3: B:22:0x0078->B:30:?, LOOP_LABEL: LOOP:3: B:22:0x0078->B:30:?, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x004e A[LOOP:5: B:40:0x004e->B:48:?, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0030 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean closeOrCancelImpl(java.lang.Throwable r13, boolean r14) {
        /*
            r12 = this;
            r0 = 60
            r1 = 1152921504606846975(0xfffffffffffffff, double:1.2882297539194265E-231)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r3 = kotlinx.coroutines.channels.BufferedChannel.f17490f
            r9 = 1
            if (r14 == 0) goto L23
        Lc:
            long r5 = r3.get(r12)
            long r7 = r5 >> r0
            int r4 = (int) r7
            if (r4 != 0) goto L23
            long r7 = r5 & r1
            long r7 = kotlinx.coroutines.channels.BufferedChannelKt.access$constructSendersAndCloseStatus(r7, r9)
            r4 = r12
            boolean r5 = r3.compareAndSet(r4, r5, r7)
            if (r5 == 0) goto Lc
            goto L24
        L23:
            r4 = r12
        L24:
            W5.G r5 = kotlinx.coroutines.channels.BufferedChannelKt.access$getNO_CLOSE_CAUSE$p()
        L28:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r6 = kotlinx.coroutines.channels.BufferedChannel.f17497s
            boolean r7 = r6.compareAndSet(r12, r5, r13)
            if (r7 == 0) goto L32
            r10 = r9
            goto L3a
        L32:
            java.lang.Object r6 = r6.get(r12)
            if (r6 == r5) goto L28
            r13 = 0
            r10 = r13
        L3a:
            r11 = 3
            if (r14 == 0) goto L4e
        L3d:
            long r5 = r3.get(r12)
            long r13 = r5 & r1
            long r7 = kotlinx.coroutines.channels.BufferedChannelKt.access$constructSendersAndCloseStatus(r13, r11)
            boolean r13 = r3.compareAndSet(r4, r5, r7)
            if (r13 == 0) goto L3d
            goto L70
        L4e:
            long r5 = r3.get(r12)
            long r13 = r5 >> r0
            int r13 = (int) r13
            if (r13 == 0) goto L62
            if (r13 == r9) goto L5a
            goto L70
        L5a:
            long r13 = r5 & r1
            long r13 = kotlinx.coroutines.channels.BufferedChannelKt.access$constructSendersAndCloseStatus(r13, r11)
        L60:
            r7 = r13
            goto L6a
        L62:
            long r13 = r5 & r1
            r7 = 2
            long r13 = kotlinx.coroutines.channels.BufferedChannelKt.access$constructSendersAndCloseStatus(r13, r7)
            goto L60
        L6a:
            boolean r13 = r3.compareAndSet(r4, r5, r7)
            if (r13 == 0) goto L4e
        L70:
            r12.isClosedForSend()
            r12.onClosedIdempotent()
            if (r10 == 0) goto La9
        L78:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r13 = kotlinx.coroutines.channels.BufferedChannel.f17498t
            java.lang.Object r14 = r13.get(r12)
            if (r14 != 0) goto L85
            W5.G r0 = kotlinx.coroutines.channels.BufferedChannelKt.access$getCLOSE_HANDLER_CLOSED$p()
            goto L89
        L85:
            W5.G r0 = kotlinx.coroutines.channels.BufferedChannelKt.access$getCLOSE_HANDLER_INVOKED$p()
        L89:
            boolean r1 = r13.compareAndSet(r12, r14, r0)
            if (r1 == 0) goto La2
            if (r14 != 0) goto L92
            goto La9
        L92:
            java.lang.Object r13 = kotlin.jvm.internal.o.beforeCheckcastToFunctionOfArity(r14, r9)
            H5.l r13 = (H5.l) r13
            H5.l r14 = (H5.l) r14
            java.lang.Throwable r13 = r12.getCloseCause()
            r14.invoke(r13)
            return r10
        La2:
            java.lang.Object r1 = r13.get(r12)
            if (r1 == r14) goto L89
            goto L78
        La9:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.closeOrCancelImpl(java.lang.Throwable, boolean):boolean");
    }

    public final k d(long j7, k kVar) {
        Object findSegmentInternal;
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        long j8;
        p pVar = (p) BufferedChannelKt.createSegmentFunction();
        loop0: while (true) {
            findSegmentInternal = AbstractC0357d.findSegmentInternal(kVar, j7, pVar);
            if (!E.m46isClosedimpl(findSegmentInternal)) {
                D m45getSegmentimpl = E.m45getSegmentimpl(findSegmentInternal);
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f17495q;
                    D d7 = (D) atomicReferenceFieldUpdater.get(this);
                    if (d7.f4177f >= m45getSegmentimpl.f4177f) {
                        break loop0;
                    }
                    if (!m45getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, d7, m45getSegmentimpl)) {
                        if (atomicReferenceFieldUpdater.get(this) != d7) {
                            if (m45getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                                m45getSegmentimpl.remove();
                            }
                        }
                    }
                    if (d7.decPointers$kotlinx_coroutines_core()) {
                        d7.remove();
                    }
                }
            } else {
                break;
            }
        }
        if (E.m46isClosedimpl(findSegmentInternal)) {
            isClosedForSend();
            if (kVar.f4177f * BufferedChannelKt.f17505b < getSendersCounter$kotlinx_coroutines_core()) {
                kVar.cleanPrev();
            }
            return null;
        }
        k kVar2 = (k) E.m45getSegmentimpl(findSegmentInternal);
        if (!h() && j7 <= f17492m.get(this) / BufferedChannelKt.f17505b) {
            while (true) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f17496r;
                D d8 = (D) atomicReferenceFieldUpdater2.get(this);
                if (d8.f4177f >= kVar2.f4177f || !kVar2.tryIncPointers$kotlinx_coroutines_core()) {
                    break;
                }
                while (!atomicReferenceFieldUpdater2.compareAndSet(this, d8, kVar2)) {
                    if (atomicReferenceFieldUpdater2.get(this) != d8) {
                        if (kVar2.decPointers$kotlinx_coroutines_core()) {
                            kVar2.remove();
                        }
                    }
                }
                if (d8.decPointers$kotlinx_coroutines_core()) {
                    d8.remove();
                }
            }
        }
        long j9 = kVar2.f4177f;
        if (j9 <= j7) {
            return kVar2;
        }
        long j10 = j9 * BufferedChannelKt.f17505b;
        do {
            atomicLongFieldUpdater = f17491j;
            j8 = atomicLongFieldUpdater.get(this);
            if (j8 >= j10) {
                break;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j8, j10));
        if (kVar2.f4177f * BufferedChannelKt.f17505b < getSendersCounter$kotlinx_coroutines_core()) {
            kVar2.cleanPrev();
        }
        return null;
    }

    public final void dropFirstElementUntilTheSpecifiedCellIsInTheBuffer(long j7) {
        G g7;
        UndeliveredElementException callUndeliveredElementCatchingException$default;
        k kVar = (k) f17495q.get(this);
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f17491j;
            long j8 = atomicLongFieldUpdater.get(this);
            if (j7 < Math.max(this.f17499b + j8, f17492m.get(this))) {
                return;
            }
            if (atomicLongFieldUpdater.compareAndSet(this, j8, 1 + j8)) {
                int i2 = BufferedChannelKt.f17505b;
                long j9 = j8 / i2;
                int i7 = (int) (j8 % i2);
                if (kVar.f4177f != j9) {
                    k d7 = d(j9, kVar);
                    if (d7 == null) {
                        continue;
                    } else {
                        kVar = d7;
                    }
                }
                k kVar2 = kVar;
                Object n7 = n(kVar2, i7, j8, null);
                g7 = BufferedChannelKt.f17518o;
                if (n7 != g7) {
                    kVar2.cleanPrev();
                    l lVar = this.f17500e;
                    if (lVar != null && (callUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(lVar, n7, null, 2, null)) != null) {
                        throw callUndeliveredElementCatchingException$default;
                    }
                } else if (j8 < getSendersCounter$kotlinx_coroutines_core()) {
                    kVar2.cleanPrev();
                }
                kVar = kVar2;
            }
        }
    }

    public final Throwable e() {
        Throwable closeCause = getCloseCause();
        return closeCause == null ? new ClosedReceiveChannelException("Channel was closed") : closeCause;
    }

    /* JADX WARN: Code restructure failed: missing block: B:91:0x00cd, code lost:
    
        r12 = (T5.k) r12.getPrev();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean g(long r12, boolean r14) {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.g(long, boolean):boolean");
    }

    public final Throwable getCloseCause() {
        return (Throwable) f17497s.get(this);
    }

    public final long getReceiversCounter$kotlinx_coroutines_core() {
        return f17491j.get(this);
    }

    public final Throwable getSendException() {
        Throwable closeCause = getCloseCause();
        return closeCause == null ? new ClosedSendChannelException("Channel was closed") : closeCause;
    }

    public final long getSendersCounter$kotlinx_coroutines_core() {
        return f17490f.get(this) & 1152921504606846975L;
    }

    public final boolean h() {
        long j7 = f17492m.get(this);
        return j7 == 0 || j7 == Long.MAX_VALUE;
    }

    public final boolean hasElements$kotlinx_coroutines_core() {
        G g7;
        G g8;
        G g9;
        G g10;
        G g11;
        G g12;
        G g13;
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f17495q;
            k kVar = (k) atomicReferenceFieldUpdater.get(this);
            long receiversCounter$kotlinx_coroutines_core = getReceiversCounter$kotlinx_coroutines_core();
            if (getSendersCounter$kotlinx_coroutines_core() <= receiversCounter$kotlinx_coroutines_core) {
                return false;
            }
            int i2 = BufferedChannelKt.f17505b;
            long j7 = receiversCounter$kotlinx_coroutines_core / i2;
            if (kVar.f4177f == j7 || (kVar = d(j7, kVar)) != null) {
                kVar.cleanPrev();
                int i7 = (int) (receiversCounter$kotlinx_coroutines_core % i2);
                while (true) {
                    Object state$kotlinx_coroutines_core = kVar.getState$kotlinx_coroutines_core(i7);
                    if (state$kotlinx_coroutines_core != null) {
                        g8 = BufferedChannelKt.f17508e;
                        if (state$kotlinx_coroutines_core != g8) {
                            if (state$kotlinx_coroutines_core == BufferedChannelKt.f17507d) {
                                return true;
                            }
                            g9 = BufferedChannelKt.f17513j;
                            if (state$kotlinx_coroutines_core != g9 && state$kotlinx_coroutines_core != BufferedChannelKt.getCHANNEL_CLOSED()) {
                                g10 = BufferedChannelKt.f17512i;
                                if (state$kotlinx_coroutines_core != g10) {
                                    g11 = BufferedChannelKt.f17511h;
                                    if (state$kotlinx_coroutines_core != g11) {
                                        g12 = BufferedChannelKt.f17510g;
                                        if (state$kotlinx_coroutines_core == g12) {
                                            return true;
                                        }
                                        g13 = BufferedChannelKt.f17509f;
                                        if (state$kotlinx_coroutines_core != g13 && receiversCounter$kotlinx_coroutines_core == getReceiversCounter$kotlinx_coroutines_core()) {
                                            return true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    g7 = BufferedChannelKt.f17511h;
                    if (kVar.casState$kotlinx_coroutines_core(i7, state$kotlinx_coroutines_core, g7)) {
                        c();
                        break;
                    }
                }
                f17491j.compareAndSet(this, receiversCounter$kotlinx_coroutines_core, receiversCounter$kotlinx_coroutines_core + 1);
            } else if (((k) atomicReferenceFieldUpdater.get(this)).f4177f < j7) {
                return false;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0011, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i(long r5, T5.k r7) {
        /*
            r4 = this;
        L0:
            long r0 = r7.f4177f
            int r0 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r0 >= 0) goto L11
            W5.e r0 = r7.getNext()
            T5.k r0 = (T5.k) r0
            if (r0 != 0) goto Lf
            goto L11
        Lf:
            r7 = r0
            goto L0
        L11:
            boolean r5 = r7.isRemoved()
            if (r5 == 0) goto L22
            W5.e r5 = r7.getNext()
            T5.k r5 = (T5.k) r5
            if (r5 != 0) goto L20
            goto L22
        L20:
            r7 = r5
            goto L11
        L22:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = kotlinx.coroutines.channels.BufferedChannel.f17496r
            java.lang.Object r6 = r5.get(r4)
            W5.D r6 = (W5.D) r6
            long r0 = r6.f4177f
            long r2 = r7.f4177f
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 < 0) goto L33
            goto L49
        L33:
            boolean r0 = r7.tryIncPointers$kotlinx_coroutines_core()
            if (r0 != 0) goto L3a
            goto L11
        L3a:
            boolean r0 = r5.compareAndSet(r4, r6, r7)
            if (r0 == 0) goto L4a
            boolean r5 = r6.decPointers$kotlinx_coroutines_core()
            if (r5 == 0) goto L49
            r6.remove()
        L49:
            return
        L4a:
            java.lang.Object r0 = r5.get(r4)
            if (r0 == r6) goto L3a
            boolean r5 = r7.decPointers$kotlinx_coroutines_core()
            if (r5 == 0) goto L22
            r7.remove()
            goto L22
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.i(long, T5.k):void");
    }

    @Override // T5.s
    public void invokeOnClose(l lVar) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        G g7;
        G g8;
        G g9;
        G g10;
        do {
            atomicReferenceFieldUpdater = f17498t;
            if (atomicReferenceFieldUpdater.compareAndSet(this, null, lVar)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(this) == null);
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            g7 = BufferedChannelKt.f17520q;
            if (obj != g7) {
                g8 = BufferedChannelKt.f17521r;
                if (obj == g8) {
                    throw new IllegalStateException("Another handler was already registered and successfully invoked");
                }
                throw new IllegalStateException(("Another handler is already registered: " + obj).toString());
            }
            g9 = BufferedChannelKt.f17520q;
            g10 = BufferedChannelKt.f17521r;
            while (!atomicReferenceFieldUpdater.compareAndSet(this, g9, g10)) {
                if (atomicReferenceFieldUpdater.get(this) != g9) {
                    break;
                }
            }
            lVar.invoke(getCloseCause());
            return;
        }
    }

    public boolean isClosedForReceive() {
        return g(f17490f.get(this), true);
    }

    @Override // T5.s
    public boolean isClosedForSend() {
        return g(f17490f.get(this), false);
    }

    public boolean isConflatedDropOldest() {
        return false;
    }

    @Override // T5.q
    public e iterator() {
        return new T5.a(this);
    }

    public final Object j(Object obj, InterfaceC1944c interfaceC1944c) {
        UndeliveredElementException callUndeliveredElementCatchingException$default;
        C0287n c0287n = new C0287n(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c), 1);
        c0287n.initCancellability();
        l lVar = this.f17500e;
        if (lVar == null || (callUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(lVar, obj, null, 2, null)) == null) {
            Throwable sendException = getSendException();
            int i2 = Result.f17390b;
            c0287n.resumeWith(Result.m103constructorimpl(b.createFailure(sendException)));
        } else {
            AbstractC1702a.addSuppressed(callUndeliveredElementCatchingException$default, getSendException());
            int i7 = Result.f17390b;
            c0287n.resumeWith(Result.m103constructorimpl(b.createFailure(callUndeliveredElementCatchingException$default)));
        }
        Object result = c0287n.getResult();
        if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
            f.probeCoroutineSuspended(interfaceC1944c);
        }
        return result == AbstractC2008a.getCOROUTINE_SUSPENDED() ? result : C1711j.f20329a;
    }

    public final void k(S0 s02, boolean z6) {
        if (s02 instanceof InterfaceC0285m) {
            InterfaceC1944c interfaceC1944c = (InterfaceC1944c) s02;
            int i2 = Result.f17390b;
            interfaceC1944c.resumeWith(Result.m103constructorimpl(b.createFailure(z6 ? e() : getSendException())));
        } else if (s02 instanceof T5.a) {
            ((T5.a) s02).tryResumeHasNextOnClosedChannel();
        } else {
            throw new IllegalStateException(("Unexpected waiter: " + s02).toString());
        }
    }

    public final boolean l(Object obj, Object obj2) {
        if (obj instanceof T5.a) {
            j.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel.BufferedChannelIterator<E of kotlinx.coroutines.channels.BufferedChannel>");
            return ((T5.a) obj).tryResumeHasNext(obj2);
        }
        if (!(obj instanceof InterfaceC0285m)) {
            throw new IllegalStateException(("Unexpected receiver type: " + obj).toString());
        }
        j.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<E of kotlinx.coroutines.channels.BufferedChannel>");
        InterfaceC0285m interfaceC0285m = (InterfaceC0285m) obj;
        l lVar = this.f17500e;
        return BufferedChannelKt.access$tryResume0(interfaceC0285m, obj2, lVar != null ? OnUndeliveredElementKt.bindCancellationFun(lVar, obj2, interfaceC0285m.getContext()) : null);
    }

    public final Object n(k kVar, int i2, long j7, Object obj) {
        G g7;
        G g8;
        G g9;
        G g10;
        G g11;
        G g12;
        G g13;
        G g14;
        G g15;
        G g16;
        G g17;
        G g18;
        G g19;
        G g20;
        G g21;
        G g22;
        G g23;
        G g24;
        G g25;
        Object state$kotlinx_coroutines_core = kVar.getState$kotlinx_coroutines_core(i2);
        AtomicLongFieldUpdater atomicLongFieldUpdater = f17490f;
        if (state$kotlinx_coroutines_core == null) {
            if (j7 >= (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                if (obj == null) {
                    g25 = BufferedChannelKt.f17517n;
                    return g25;
                }
                if (kVar.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core, obj)) {
                    c();
                    g24 = BufferedChannelKt.f17516m;
                    return g24;
                }
            }
        } else if (state$kotlinx_coroutines_core == BufferedChannelKt.f17507d) {
            g7 = BufferedChannelKt.f17512i;
            if (kVar.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core, g7)) {
                c();
                return kVar.retrieveElement$kotlinx_coroutines_core(i2);
            }
        }
        while (true) {
            Object state$kotlinx_coroutines_core2 = kVar.getState$kotlinx_coroutines_core(i2);
            if (state$kotlinx_coroutines_core2 != null) {
                g12 = BufferedChannelKt.f17508e;
                if (state$kotlinx_coroutines_core2 != g12) {
                    if (state$kotlinx_coroutines_core2 == BufferedChannelKt.f17507d) {
                        g13 = BufferedChannelKt.f17512i;
                        if (kVar.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core2, g13)) {
                            c();
                            return kVar.retrieveElement$kotlinx_coroutines_core(i2);
                        }
                    } else {
                        g14 = BufferedChannelKt.f17513j;
                        if (state$kotlinx_coroutines_core2 == g14) {
                            g15 = BufferedChannelKt.f17518o;
                            return g15;
                        }
                        g16 = BufferedChannelKt.f17511h;
                        if (state$kotlinx_coroutines_core2 == g16) {
                            g17 = BufferedChannelKt.f17518o;
                            return g17;
                        }
                        if (state$kotlinx_coroutines_core2 == BufferedChannelKt.getCHANNEL_CLOSED()) {
                            c();
                            g18 = BufferedChannelKt.f17518o;
                            return g18;
                        }
                        g19 = BufferedChannelKt.f17510g;
                        if (state$kotlinx_coroutines_core2 != g19) {
                            g20 = BufferedChannelKt.f17509f;
                            if (kVar.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core2, g20)) {
                                boolean z6 = state$kotlinx_coroutines_core2 instanceof t;
                                if (z6) {
                                    state$kotlinx_coroutines_core2 = ((t) state$kotlinx_coroutines_core2).f3738a;
                                }
                                if (m(state$kotlinx_coroutines_core2)) {
                                    g23 = BufferedChannelKt.f17512i;
                                    kVar.setState$kotlinx_coroutines_core(i2, g23);
                                    c();
                                    return kVar.retrieveElement$kotlinx_coroutines_core(i2);
                                }
                                g21 = BufferedChannelKt.f17513j;
                                kVar.setState$kotlinx_coroutines_core(i2, g21);
                                kVar.onCancelledRequest(i2, false);
                                if (z6) {
                                    c();
                                }
                                g22 = BufferedChannelKt.f17518o;
                                return g22;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            if (j7 < (atomicLongFieldUpdater.get(this) & 1152921504606846975L)) {
                g8 = BufferedChannelKt.f17511h;
                if (kVar.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core2, g8)) {
                    c();
                    g9 = BufferedChannelKt.f17518o;
                    return g9;
                }
            } else {
                if (obj == null) {
                    g10 = BufferedChannelKt.f17517n;
                    return g10;
                }
                if (kVar.casState$kotlinx_coroutines_core(i2, state$kotlinx_coroutines_core2, obj)) {
                    c();
                    g11 = BufferedChannelKt.f17516m;
                    return g11;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0045, code lost:
    
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int o(T5.k r6, int r7, java.lang.Object r8, long r9, java.lang.Object r11, boolean r12) {
        /*
            r5 = this;
        L0:
            java.lang.Object r0 = r6.getState$kotlinx_coroutines_core(r7)
            r1 = 4
            r2 = 0
            r3 = 1
            if (r0 != 0) goto L37
            boolean r0 = r5.a(r9)
            r4 = 0
            if (r0 == 0) goto L1b
            if (r12 != 0) goto L1b
            W5.G r0 = kotlinx.coroutines.channels.BufferedChannelKt.f17507d
            boolean r0 = r6.casState$kotlinx_coroutines_core(r7, r4, r0)
            if (r0 == 0) goto L0
            goto L45
        L1b:
            if (r12 == 0) goto L2b
            W5.G r0 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_SEND$p()
            boolean r0 = r6.casState$kotlinx_coroutines_core(r7, r4, r0)
            if (r0 == 0) goto L0
            r6.onCancelledRequest(r7, r2)
            return r1
        L2b:
            if (r11 != 0) goto L2f
            r6 = 3
            return r6
        L2f:
            boolean r0 = r6.casState$kotlinx_coroutines_core(r7, r4, r11)
            if (r0 == 0) goto L0
            r6 = 2
            return r6
        L37:
            W5.G r4 = kotlinx.coroutines.channels.BufferedChannelKt.access$getIN_BUFFER$p()
            if (r0 != r4) goto L46
            W5.G r1 = kotlinx.coroutines.channels.BufferedChannelKt.f17507d
            boolean r0 = r6.casState$kotlinx_coroutines_core(r7, r0, r1)
            if (r0 == 0) goto L0
        L45:
            return r3
        L46:
            W5.G r9 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_RCV$p()
            r10 = 5
            if (r0 != r9) goto L51
            r6.cleanElement$kotlinx_coroutines_core(r7)
            return r10
        L51:
            W5.G r9 = kotlinx.coroutines.channels.BufferedChannelKt.access$getPOISONED$p()
            if (r0 != r9) goto L5b
            r6.cleanElement$kotlinx_coroutines_core(r7)
            return r10
        L5b:
            W5.G r9 = kotlinx.coroutines.channels.BufferedChannelKt.getCHANNEL_CLOSED()
            if (r0 != r9) goto L68
            r6.cleanElement$kotlinx_coroutines_core(r7)
            r5.isClosedForSend()
            return r1
        L68:
            r6.cleanElement$kotlinx_coroutines_core(r7)
            boolean r9 = r0 instanceof T5.t
            if (r9 == 0) goto L73
            T5.t r0 = (T5.t) r0
            R5.S0 r0 = r0.f3738a
        L73:
            boolean r8 = r5.l(r0, r8)
            if (r8 == 0) goto L84
            W5.G r8 = kotlinx.coroutines.channels.BufferedChannelKt.access$getDONE_RCV$p()
            r6.setState$kotlinx_coroutines_core(r7, r8)
            r5.onReceiveDequeued()
            return r2
        L84:
            W5.G r8 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_RCV$p()
            java.lang.Object r8 = r6.getAndSetState$kotlinx_coroutines_core(r7, r8)
            W5.G r9 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_RCV$p()
            if (r8 == r9) goto L95
            r6.onCancelledRequest(r7, r3)
        L95:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.o(T5.k, int, java.lang.Object, long, java.lang.Object, boolean):int");
    }

    public void onClosedIdempotent() {
    }

    public void onReceiveDequeued() {
    }

    public void onReceiveEnqueued() {
    }

    @Override // T5.q
    public Object receive(InterfaceC1944c interfaceC1944c) {
        k kVar;
        G g7;
        G g8;
        G g9;
        G g10;
        G g11;
        k kVar2;
        G g12;
        G g13;
        G g14;
        k kVar3 = (k) f17495q.get(this);
        while (!isClosedForReceive()) {
            long andIncrement = f17491j.getAndIncrement(this);
            long j7 = BufferedChannelKt.f17505b;
            long j8 = andIncrement / j7;
            int i2 = (int) (andIncrement % j7);
            if (kVar3.f4177f != j8) {
                kVar = d(j8, kVar3);
                if (kVar == null) {
                    continue;
                }
            } else {
                kVar = kVar3;
            }
            Object n7 = n(kVar, i2, andIncrement, null);
            g7 = BufferedChannelKt.f17516m;
            if (n7 == g7) {
                throw new IllegalStateException("unexpected");
            }
            g8 = BufferedChannelKt.f17518o;
            if (n7 != g8) {
                g9 = BufferedChannelKt.f17517n;
                if (n7 != g9) {
                    kVar.cleanPrev();
                    return n7;
                }
                C0287n orCreateCancellableContinuation = AbstractC0291p.getOrCreateCancellableContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c));
                try {
                    Object n8 = n(kVar, i2, andIncrement, orCreateCancellableContinuation);
                    g10 = BufferedChannelKt.f17516m;
                    if (n8 == g10) {
                        access$prepareReceiverForSuspension(this, orCreateCancellableContinuation, kVar, i2);
                    } else {
                        g11 = BufferedChannelKt.f17518o;
                        l lVar = this.f17500e;
                        l lVar2 = null;
                        lVar2 = null;
                        if (n8 == g11) {
                            if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                                kVar.cleanPrev();
                            }
                            k kVar4 = (k) f17495q.get(this);
                            while (true) {
                                if (isClosedForReceive()) {
                                    access$onClosedReceiveOnNoWaiterSuspend(this, orCreateCancellableContinuation);
                                    break;
                                }
                                long andIncrement2 = f17491j.getAndIncrement(this);
                                long j9 = BufferedChannelKt.f17505b;
                                long j10 = andIncrement2 / j9;
                                int i7 = (int) (andIncrement2 % j9);
                                if (kVar4.f4177f != j10) {
                                    kVar2 = d(j10, kVar4);
                                    if (kVar2 == null) {
                                    }
                                } else {
                                    kVar2 = kVar4;
                                }
                                n8 = n(kVar2, i7, andIncrement2, orCreateCancellableContinuation);
                                g12 = BufferedChannelKt.f17516m;
                                if (n8 == g12) {
                                    C0287n c0287n = orCreateCancellableContinuation instanceof S0 ? orCreateCancellableContinuation : null;
                                    if (c0287n != null) {
                                        access$prepareReceiverForSuspension(this, c0287n, kVar2, i7);
                                    }
                                } else {
                                    g13 = BufferedChannelKt.f17518o;
                                    if (n8 == g13) {
                                        if (andIncrement2 < getSendersCounter$kotlinx_coroutines_core()) {
                                            kVar2.cleanPrev();
                                        }
                                        kVar4 = kVar2;
                                    } else {
                                        g14 = BufferedChannelKt.f17517n;
                                        if (n8 == g14) {
                                            throw new IllegalStateException("unexpected");
                                        }
                                        kVar2.cleanPrev();
                                        if (lVar != null) {
                                            lVar2 = OnUndeliveredElementKt.bindCancellationFun(lVar, n8, orCreateCancellableContinuation.getContext());
                                        }
                                    }
                                }
                            }
                        } else {
                            kVar.cleanPrev();
                            if (lVar != null) {
                                lVar2 = OnUndeliveredElementKt.bindCancellationFun(lVar, n8, orCreateCancellableContinuation.getContext());
                            }
                        }
                        orCreateCancellableContinuation.resume(n8, lVar2);
                    }
                    Object result = orCreateCancellableContinuation.getResult();
                    if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
                        f.probeCoroutineSuspended(interfaceC1944c);
                    }
                    return result;
                } catch (Throwable th) {
                    orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                    throw th;
                }
            }
            if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                kVar.cleanPrev();
            }
            kVar3 = kVar;
        }
        throw F.recoverStackTrace(e());
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0174 A[RETURN] */
    @Override // T5.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object send(java.lang.Object r19, y5.InterfaceC1944c r20) {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.send(java.lang.Object, y5.c):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:90:0x01b8, code lost:
    
        r16 = r7;
        r3 = (T5.k) r3.getNext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01c1, code lost:
    
        if (r3 != null) goto L84;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 493
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BufferedChannel.toString():java.lang.String");
    }

    @Override // T5.q
    /* renamed from: tryReceive-PtdJZtk */
    public Object mo28tryReceivePtdJZtk() {
        Object obj;
        k kVar;
        G g7;
        G g8;
        G g9;
        long j7 = f17491j.get(this);
        long j8 = f17490f.get(this);
        if (g(j8, true)) {
            return T5.j.f3732b.m30closedJP2dKIU(getCloseCause());
        }
        if (j7 >= (j8 & 1152921504606846975L)) {
            return T5.j.f3732b.m31failurePtdJZtk();
        }
        obj = BufferedChannelKt.f17514k;
        k kVar2 = (k) f17495q.get(this);
        while (!isClosedForReceive()) {
            long andIncrement = f17491j.getAndIncrement(this);
            int i2 = BufferedChannelKt.f17505b;
            long j9 = andIncrement / i2;
            int i7 = (int) (andIncrement % i2);
            if (kVar2.f4177f != j9) {
                kVar = d(j9, kVar2);
                if (kVar == null) {
                    continue;
                }
            } else {
                kVar = kVar2;
            }
            Object n7 = n(kVar, i7, andIncrement, obj);
            g7 = BufferedChannelKt.f17516m;
            if (n7 == g7) {
                S0 s02 = obj instanceof S0 ? (S0) obj : null;
                if (s02 != null) {
                    access$prepareReceiverForSuspension(this, s02, kVar, i7);
                }
                waitExpandBufferCompletion$kotlinx_coroutines_core(andIncrement);
                kVar.onSlotCleaned();
                return T5.j.f3732b.m31failurePtdJZtk();
            }
            g8 = BufferedChannelKt.f17518o;
            if (n7 != g8) {
                g9 = BufferedChannelKt.f17517n;
                if (n7 == g9) {
                    throw new IllegalStateException("unexpected");
                }
                kVar.cleanPrev();
                return T5.j.f3732b.m32successJP2dKIU(n7);
            }
            if (andIncrement < getSendersCounter$kotlinx_coroutines_core()) {
                kVar.cleanPrev();
            }
            kVar2 = kVar;
        }
        return T5.j.f3732b.m30closedJP2dKIU(getCloseCause());
    }

    @Override // T5.s
    /* renamed from: trySend-JP2dKIU */
    public Object mo29trySendJP2dKIU(Object obj) {
        Object obj2;
        k kVar;
        if (g(f17490f.get(this), false) ? false : !a(r0 & 1152921504606846975L)) {
            return T5.j.f3732b.m31failurePtdJZtk();
        }
        obj2 = BufferedChannelKt.f17513j;
        k kVar2 = (k) f17494p.get(this);
        while (true) {
            long andIncrement = f17490f.getAndIncrement(this);
            long j7 = andIncrement & 1152921504606846975L;
            boolean access$isClosedForSend0 = access$isClosedForSend0(this, andIncrement);
            int i2 = BufferedChannelKt.f17505b;
            long j8 = j7 / i2;
            int i7 = (int) (j7 % i2);
            if (kVar2.f4177f != j8) {
                k access$findSegmentSend = access$findSegmentSend(this, j8, kVar2);
                if (access$findSegmentSend != null) {
                    kVar = access$findSegmentSend;
                } else if (access$isClosedForSend0) {
                    return T5.j.f3732b.m30closedJP2dKIU(getSendException());
                }
            } else {
                kVar = kVar2;
            }
            int access$updateCellSend = access$updateCellSend(this, kVar, i7, obj, j7, obj2, access$isClosedForSend0);
            k kVar3 = kVar;
            C1711j c1711j = C1711j.f20329a;
            if (access$updateCellSend == 0) {
                kVar3.cleanPrev();
                return T5.j.f3732b.m32successJP2dKIU(c1711j);
            }
            if (access$updateCellSend == 1) {
                return T5.j.f3732b.m32successJP2dKIU(c1711j);
            }
            if (access$updateCellSend == 2) {
                if (access$isClosedForSend0) {
                    kVar3.onSlotCleaned();
                    return T5.j.f3732b.m30closedJP2dKIU(getSendException());
                }
                S0 s02 = obj2 instanceof S0 ? (S0) obj2 : null;
                if (s02 != null) {
                    access$prepareSenderForSuspension(this, s02, kVar3, i7);
                }
                kVar3.onSlotCleaned();
                return T5.j.f3732b.m31failurePtdJZtk();
            }
            if (access$updateCellSend == 3) {
                throw new IllegalStateException("unexpected");
            }
            if (access$updateCellSend == 4) {
                if (j7 < getReceiversCounter$kotlinx_coroutines_core()) {
                    kVar3.cleanPrev();
                }
                return T5.j.f3732b.m30closedJP2dKIU(getSendException());
            }
            if (access$updateCellSend == 5) {
                kVar3.cleanPrev();
            }
            kVar2 = kVar3;
        }
    }

    public final void waitExpandBufferCompletion$kotlinx_coroutines_core(long j7) {
        AtomicLongFieldUpdater atomicLongFieldUpdater;
        int i2;
        AtomicLongFieldUpdater atomicLongFieldUpdater2;
        BufferedChannel bufferedChannel = this;
        if (bufferedChannel.h()) {
            return;
        }
        while (true) {
            atomicLongFieldUpdater = f17492m;
            if (atomicLongFieldUpdater.get(bufferedChannel) > j7) {
                break;
            } else {
                bufferedChannel = this;
            }
        }
        i2 = BufferedChannelKt.f17506c;
        int i7 = 0;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater3 = f17493n;
            if (i7 < i2) {
                long j8 = atomicLongFieldUpdater.get(bufferedChannel);
                if (j8 == (4611686018427387903L & atomicLongFieldUpdater3.get(bufferedChannel)) && j8 == atomicLongFieldUpdater.get(bufferedChannel)) {
                    return;
                } else {
                    i7++;
                }
            } else {
                while (true) {
                    long j9 = atomicLongFieldUpdater3.get(bufferedChannel);
                    if (atomicLongFieldUpdater3.compareAndSet(bufferedChannel, j9, BufferedChannelKt.access$constructEBCompletedAndPauseFlag(j9 & 4611686018427387903L, true))) {
                        break;
                    } else {
                        bufferedChannel = this;
                    }
                }
                while (true) {
                    long j10 = atomicLongFieldUpdater.get(bufferedChannel);
                    atomicLongFieldUpdater2 = f17493n;
                    long j11 = atomicLongFieldUpdater2.get(bufferedChannel);
                    long j12 = j11 & 4611686018427387903L;
                    boolean z6 = (4611686018427387904L & j11) != 0;
                    if (j10 == j12 && j10 == atomicLongFieldUpdater.get(bufferedChannel)) {
                        break;
                    }
                    if (z6) {
                        bufferedChannel = this;
                    } else {
                        bufferedChannel = this;
                        atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j11, BufferedChannelKt.access$constructEBCompletedAndPauseFlag(j12, true));
                    }
                }
                while (true) {
                    long j13 = atomicLongFieldUpdater2.get(bufferedChannel);
                    if (atomicLongFieldUpdater2.compareAndSet(bufferedChannel, j13, BufferedChannelKt.access$constructEBCompletedAndPauseFlag(j13 & 4611686018427387903L, false))) {
                        return;
                    } else {
                        bufferedChannel = this;
                    }
                }
            }
        }
    }
}
