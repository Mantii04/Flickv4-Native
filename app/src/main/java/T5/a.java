package T5;

import R5.AbstractC0291p;
import R5.C0287n;
import R5.S0;
import W5.D;
import W5.F;
import W5.G;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.BufferedChannelKt;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public final class a implements e, S0 {

    /* renamed from: b, reason: collision with root package name */
    public Object f3724b;

    /* renamed from: e, reason: collision with root package name */
    public C0287n f3725e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ BufferedChannel f3726f;

    public a(BufferedChannel bufferedChannel) {
        G g7;
        this.f3726f = bufferedChannel;
        g7 = BufferedChannelKt.f17519p;
        this.f3724b = g7;
    }

    public static final void access$onClosedHasNextNoWaiterSuspend(a aVar) {
        C0287n c0287n = aVar.f3725e;
        kotlin.jvm.internal.j.checkNotNull(c0287n);
        aVar.f3725e = null;
        aVar.f3724b = BufferedChannelKt.getCHANNEL_CLOSED();
        Throwable closeCause = aVar.f3726f.getCloseCause();
        if (closeCause == null) {
            int i2 = Result.f17390b;
            c0287n.resumeWith(Result.m103constructorimpl(Boolean.FALSE));
        } else {
            int i7 = Result.f17390b;
            c0287n.resumeWith(Result.m103constructorimpl(kotlin.b.createFailure(closeCause)));
        }
    }

    public Object hasNext(InterfaceC1944c interfaceC1944c) {
        k kVar;
        G g7;
        G g8;
        G g9;
        G g10;
        G g11;
        Boolean boxBoolean;
        G g12;
        G g13;
        G g14;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = BufferedChannel.f17495q;
        BufferedChannel bufferedChannel = this.f3726f;
        k kVar2 = (k) atomicReferenceFieldUpdater.get(bufferedChannel);
        while (!bufferedChannel.isClosedForReceive()) {
            long andIncrement = BufferedChannel.f17491j.getAndIncrement(bufferedChannel);
            int i2 = BufferedChannelKt.f17505b;
            long j7 = andIncrement / i2;
            int i7 = (int) (andIncrement % i2);
            if (kVar2.f4177f != j7) {
                kVar = bufferedChannel.d(j7, kVar2);
                if (kVar == null) {
                    continue;
                }
            } else {
                kVar = kVar2;
            }
            Object n7 = bufferedChannel.n(kVar, i7, andIncrement, null);
            g7 = BufferedChannelKt.f17516m;
            if (n7 == g7) {
                throw new IllegalStateException("unreachable");
            }
            g8 = BufferedChannelKt.f17518o;
            if (n7 != g8) {
                g9 = BufferedChannelKt.f17517n;
                if (n7 != g9) {
                    kVar.cleanPrev();
                    this.f3724b = n7;
                    return A5.a.boxBoolean(true);
                }
                BufferedChannel bufferedChannel2 = this.f3726f;
                C0287n orCreateCancellableContinuation = AbstractC0291p.getOrCreateCancellableContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c));
                try {
                    this.f3725e = orCreateCancellableContinuation;
                    Object n8 = bufferedChannel2.n(kVar, i7, andIncrement, this);
                    g10 = BufferedChannelKt.f17516m;
                    if (n8 == g10) {
                        BufferedChannel.access$prepareReceiverForSuspension(bufferedChannel2, this, kVar, i7);
                    } else {
                        g11 = BufferedChannelKt.f17518o;
                        H5.l lVar = null;
                        if (n8 == g11) {
                            if (andIncrement < bufferedChannel2.getSendersCounter$kotlinx_coroutines_core()) {
                                kVar.cleanPrev();
                            }
                            k kVar3 = (k) BufferedChannel.f17495q.get(bufferedChannel2);
                            while (true) {
                                if (bufferedChannel2.isClosedForReceive()) {
                                    access$onClosedHasNextNoWaiterSuspend(this);
                                    break;
                                }
                                long andIncrement2 = BufferedChannel.f17491j.getAndIncrement(bufferedChannel2);
                                long j8 = BufferedChannelKt.f17505b;
                                long j9 = andIncrement2 / j8;
                                int i8 = (int) (andIncrement2 % j8);
                                if (kVar3.f4177f != j9) {
                                    k d7 = bufferedChannel2.d(j9, kVar3);
                                    if (d7 != null) {
                                        kVar3 = d7;
                                    }
                                }
                                Object n9 = bufferedChannel2.n(kVar3, i8, andIncrement2, this);
                                g12 = BufferedChannelKt.f17516m;
                                if (n9 == g12) {
                                    BufferedChannel.access$prepareReceiverForSuspension(bufferedChannel2, this, kVar3, i8);
                                    break;
                                }
                                g13 = BufferedChannelKt.f17518o;
                                if (n9 != g13) {
                                    g14 = BufferedChannelKt.f17517n;
                                    if (n9 == g14) {
                                        throw new IllegalStateException("unexpected");
                                    }
                                    kVar3.cleanPrev();
                                    this.f3724b = n9;
                                    this.f3725e = null;
                                    boxBoolean = A5.a.boxBoolean(true);
                                    H5.l lVar2 = bufferedChannel2.f17500e;
                                    if (lVar2 != null) {
                                        lVar = OnUndeliveredElementKt.bindCancellationFun(lVar2, n9, orCreateCancellableContinuation.getContext());
                                    }
                                } else if (andIncrement2 < bufferedChannel2.getSendersCounter$kotlinx_coroutines_core()) {
                                    kVar3.cleanPrev();
                                }
                            }
                        } else {
                            kVar.cleanPrev();
                            this.f3724b = n8;
                            this.f3725e = null;
                            boxBoolean = A5.a.boxBoolean(true);
                            H5.l lVar3 = bufferedChannel2.f17500e;
                            if (lVar3 != null) {
                                lVar = OnUndeliveredElementKt.bindCancellationFun(lVar3, n8, orCreateCancellableContinuation.getContext());
                            }
                        }
                        orCreateCancellableContinuation.resume(boxBoolean, lVar);
                    }
                    Object result = orCreateCancellableContinuation.getResult();
                    if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
                        A5.f.probeCoroutineSuspended(interfaceC1944c);
                    }
                    return result;
                } catch (Throwable th) {
                    orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
                    throw th;
                }
            }
            if (andIncrement < bufferedChannel.getSendersCounter$kotlinx_coroutines_core()) {
                kVar.cleanPrev();
            }
            kVar2 = kVar;
        }
        this.f3724b = BufferedChannelKt.getCHANNEL_CLOSED();
        Throwable closeCause = bufferedChannel.getCloseCause();
        if (closeCause == null) {
            return A5.a.boxBoolean(false);
        }
        throw F.recoverStackTrace(closeCause);
    }

    @Override // R5.S0
    public void invokeOnCancellation(D d7, int i2) {
        C0287n c0287n = this.f3725e;
        if (c0287n != null) {
            c0287n.invokeOnCancellation(d7, i2);
        }
    }

    public Object next() {
        G g7;
        G g8;
        Throwable e3;
        Object obj = this.f3724b;
        g7 = BufferedChannelKt.f17519p;
        if (obj == g7) {
            throw new IllegalStateException("`hasNext()` has not been invoked");
        }
        g8 = BufferedChannelKt.f17519p;
        this.f3724b = g8;
        if (obj != BufferedChannelKt.getCHANNEL_CLOSED()) {
            return obj;
        }
        e3 = this.f3726f.e();
        throw F.recoverStackTrace(e3);
    }

    public final boolean tryResumeHasNext(Object obj) {
        C0287n c0287n = this.f3725e;
        kotlin.jvm.internal.j.checkNotNull(c0287n);
        this.f3725e = null;
        this.f3724b = obj;
        Boolean bool = Boolean.TRUE;
        H5.l lVar = this.f3726f.f17500e;
        return BufferedChannelKt.access$tryResume0(c0287n, bool, lVar != null ? OnUndeliveredElementKt.bindCancellationFun(lVar, obj, c0287n.getContext()) : null);
    }

    public final void tryResumeHasNextOnClosedChannel() {
        C0287n c0287n = this.f3725e;
        kotlin.jvm.internal.j.checkNotNull(c0287n);
        this.f3725e = null;
        this.f3724b = BufferedChannelKt.getCHANNEL_CLOSED();
        Throwable closeCause = this.f3726f.getCloseCause();
        if (closeCause == null) {
            int i2 = Result.f17390b;
            c0287n.resumeWith(Result.m103constructorimpl(Boolean.FALSE));
        } else {
            int i7 = Result.f17390b;
            c0287n.resumeWith(Result.m103constructorimpl(kotlin.b.createFailure(closeCause)));
        }
    }
}
