package T5;

import R5.S0;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.BufferedChannelKt;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.UndeliveredElementException;
import u5.AbstractC1702a;
import u5.C1711j;
import y5.InterfaceC1944c;

/* loaded from: classes2.dex */
public final class n extends BufferedChannel {

    /* renamed from: u, reason: collision with root package name */
    public final BufferOverflow f3737u;

    public n(int i2, BufferOverflow bufferOverflow, H5.l lVar) {
        super(i2, lVar);
        this.f3737u = bufferOverflow;
        if (bufferOverflow != BufferOverflow.f17486b) {
            if (i2 < 1) {
                throw new IllegalArgumentException(A.i.g(i2, "Buffered channel capacity must be at least 1, but ", " was specified").toString());
            }
        } else {
            throw new IllegalArgumentException(("This implementation does not support suspension for senders, use " + ((kotlin.jvm.internal.e) kotlin.jvm.internal.l.getOrCreateKotlinClass(BufferedChannel.class)).getSimpleName() + " instead").toString());
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public boolean isConflatedDropOldest() {
        return this.f3737u == BufferOverflow.f17487e;
    }

    public final Object p(Object obj, boolean z6) {
        H5.l lVar;
        UndeliveredElementException callUndeliveredElementCatchingException$default;
        BufferOverflow bufferOverflow = BufferOverflow.f17488f;
        C1711j c1711j = C1711j.f20329a;
        if (this.f3737u == bufferOverflow) {
            Object mo29trySendJP2dKIU = super.mo29trySendJP2dKIU(obj);
            if (j.m40isSuccessimpl(mo29trySendJP2dKIU) || j.m39isClosedimpl(mo29trySendJP2dKIU)) {
                return mo29trySendJP2dKIU;
            }
            if (!z6 || (lVar = this.f17500e) == null || (callUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(lVar, obj, null, 2, null)) == null) {
                return j.f3732b.m32successJP2dKIU(c1711j);
            }
            throw callUndeliveredElementCatchingException$default;
        }
        Object obj2 = obj;
        Object obj3 = BufferedChannelKt.f17507d;
        k kVar = (k) BufferedChannel.f17494p.get(this);
        while (true) {
            long andIncrement = BufferedChannel.f17490f.getAndIncrement(this);
            long j7 = 1152921504606846975L & andIncrement;
            boolean access$isClosedForSend0 = BufferedChannel.access$isClosedForSend0(this, andIncrement);
            long j8 = BufferedChannelKt.f17505b;
            long j9 = j7 / j8;
            int i2 = (int) (j7 % j8);
            if (kVar.f4177f != j9) {
                k access$findSegmentSend = BufferedChannel.access$findSegmentSend(this, j9, kVar);
                if (access$findSegmentSend != null) {
                    kVar = access$findSegmentSend;
                } else if (access$isClosedForSend0) {
                    return j.f3732b.m30closedJP2dKIU(getSendException());
                }
            }
            int access$updateCellSend = BufferedChannel.access$updateCellSend(this, kVar, i2, obj2, j7, obj3, access$isClosedForSend0);
            if (access$updateCellSend == 0) {
                kVar.cleanPrev();
                return j.f3732b.m32successJP2dKIU(c1711j);
            }
            if (access$updateCellSend == 1) {
                return j.f3732b.m32successJP2dKIU(c1711j);
            }
            if (access$updateCellSend == 2) {
                if (access$isClosedForSend0) {
                    kVar.onSlotCleaned();
                    return j.f3732b.m30closedJP2dKIU(getSendException());
                }
                S0 s02 = obj3 instanceof S0 ? (S0) obj3 : null;
                if (s02 != null) {
                    BufferedChannel.access$prepareSenderForSuspension(this, s02, kVar, i2);
                }
                dropFirstElementUntilTheSpecifiedCellIsInTheBuffer((kVar.f4177f * j8) + i2);
                return j.f3732b.m32successJP2dKIU(c1711j);
            }
            if (access$updateCellSend == 3) {
                throw new IllegalStateException("unexpected");
            }
            if (access$updateCellSend == 4) {
                if (j7 < getReceiversCounter$kotlinx_coroutines_core()) {
                    kVar.cleanPrev();
                }
                return j.f3732b.m30closedJP2dKIU(getSendException());
            }
            if (access$updateCellSend == 5) {
                kVar.cleanPrev();
            }
            obj2 = obj;
        }
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, T5.s
    public Object send(Object obj, InterfaceC1944c interfaceC1944c) {
        UndeliveredElementException callUndeliveredElementCatchingException$default;
        Object p6 = p(obj, true);
        if (!(p6 instanceof g)) {
            return C1711j.f20329a;
        }
        j.m36exceptionOrNullimpl(p6);
        H5.l lVar = this.f17500e;
        if (lVar == null || (callUndeliveredElementCatchingException$default = OnUndeliveredElementKt.callUndeliveredElementCatchingException$default(lVar, obj, null, 2, null)) == null) {
            throw getSendException();
        }
        AbstractC1702a.addSuppressed(callUndeliveredElementCatchingException$default, getSendException());
        throw callUndeliveredElementCatchingException$default;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, T5.s
    /* renamed from: trySend-JP2dKIU */
    public Object mo29trySendJP2dKIU(Object obj) {
        return p(obj, false);
    }
}
