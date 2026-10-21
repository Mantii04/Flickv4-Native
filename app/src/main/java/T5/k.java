package T5;

import W5.D;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.BufferedChannelKt;

/* loaded from: classes2.dex */
public final class k extends D {

    /* renamed from: m, reason: collision with root package name */
    public final BufferedChannel f3735m;

    /* renamed from: n, reason: collision with root package name */
    public final AtomicReferenceArray f3736n;

    public k(long j7, k kVar, BufferedChannel bufferedChannel, int i2) {
        super(j7, kVar, i2);
        this.f3735m = bufferedChannel;
        this.f3736n = new AtomicReferenceArray(BufferedChannelKt.f17505b * 2);
    }

    public final boolean casState$kotlinx_coroutines_core(int i2, Object obj, Object obj2) {
        AtomicReferenceArray atomicReferenceArray = this.f3736n;
        int i7 = (i2 * 2) + 1;
        while (!atomicReferenceArray.compareAndSet(i7, obj, obj2)) {
            if (atomicReferenceArray.get(i7) != obj) {
                return false;
            }
        }
        return true;
    }

    public final void cleanElement$kotlinx_coroutines_core(int i2) {
        this.f3736n.lazySet(i2 * 2, null);
    }

    public final Object getAndSetState$kotlinx_coroutines_core(int i2, Object obj) {
        return this.f3736n.getAndSet((i2 * 2) + 1, obj);
    }

    public final BufferedChannel getChannel() {
        BufferedChannel bufferedChannel = this.f3735m;
        kotlin.jvm.internal.j.checkNotNull(bufferedChannel);
        return bufferedChannel;
    }

    public final Object getElement$kotlinx_coroutines_core(int i2) {
        return this.f3736n.get(i2 * 2);
    }

    @Override // W5.D
    public int getNumberOfSlots() {
        return BufferedChannelKt.f17505b;
    }

    public final Object getState$kotlinx_coroutines_core(int i2) {
        return this.f3736n.get((i2 * 2) + 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x005f, code lost:
    
        cleanElement$kotlinx_coroutines_core(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0062, code lost:
    
        if (r0 == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0064, code lost:
    
        r4 = getChannel().f17500e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x006a, code lost:
    
        if (r4 == null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x006c, code lost:
    
        kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r4, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x006f, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:?, code lost:
    
        return;
     */
    @Override // W5.D
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCancellation(int r4, java.lang.Throwable r5, y5.InterfaceC1952k r6) {
        /*
            r3 = this;
            int r5 = kotlinx.coroutines.channels.BufferedChannelKt.f17505b
            if (r4 < r5) goto L6
            r0 = 1
            goto L7
        L6:
            r0 = 0
        L7:
            if (r0 == 0) goto La
            int r4 = r4 - r5
        La:
            java.lang.Object r5 = r3.getElement$kotlinx_coroutines_core(r4)
        Le:
            java.lang.Object r1 = r3.getState$kotlinx_coroutines_core(r4)
            boolean r2 = r1 instanceof R5.S0
            if (r2 != 0) goto L70
            boolean r2 = r1 instanceof T5.t
            if (r2 == 0) goto L1b
            goto L70
        L1b:
            W5.G r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_SEND$p()
            if (r1 == r2) goto L5f
            W5.G r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_RCV$p()
            if (r1 != r2) goto L28
            goto L5f
        L28:
            W5.G r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getRESUMING_BY_EB$p()
            if (r1 == r2) goto Le
            W5.G r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getRESUMING_BY_RCV$p()
            if (r1 != r2) goto L35
            goto Le
        L35:
            W5.G r4 = kotlinx.coroutines.channels.BufferedChannelKt.access$getDONE_RCV$p()
            if (r1 == r4) goto L96
            W5.G r4 = kotlinx.coroutines.channels.BufferedChannelKt.f17507d
            if (r1 != r4) goto L40
            goto L96
        L40:
            W5.G r4 = kotlinx.coroutines.channels.BufferedChannelKt.getCHANNEL_CLOSED()
            if (r1 != r4) goto L47
            goto L96
        L47:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "unexpected state: "
            r5.<init>(r6)
            r5.append(r1)
            java.lang.String r5 = r5.toString()
            java.lang.String r5 = r5.toString()
            r4.<init>(r5)
            throw r4
        L5f:
            r3.cleanElement$kotlinx_coroutines_core(r4)
            if (r0 == 0) goto L96
            kotlinx.coroutines.channels.BufferedChannel r4 = r3.getChannel()
            H5.l r4 = r4.f17500e
            if (r4 == 0) goto L96
            kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r4, r5, r6)
            return
        L70:
            if (r0 == 0) goto L77
            W5.G r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_SEND$p()
            goto L7b
        L77:
            W5.G r2 = kotlinx.coroutines.channels.BufferedChannelKt.access$getINTERRUPTED_RCV$p()
        L7b:
            boolean r1 = r3.casState$kotlinx_coroutines_core(r4, r1, r2)
            if (r1 == 0) goto Le
            r3.cleanElement$kotlinx_coroutines_core(r4)
            r1 = r0 ^ 1
            r3.onCancelledRequest(r4, r1)
            if (r0 == 0) goto L96
            kotlinx.coroutines.channels.BufferedChannel r4 = r3.getChannel()
            H5.l r4 = r4.f17500e
            if (r4 == 0) goto L96
            kotlinx.coroutines.internal.OnUndeliveredElementKt.callUndeliveredElement(r4, r5, r6)
        L96:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: T5.k.onCancellation(int, java.lang.Throwable, y5.k):void");
    }

    public final void onCancelledRequest(int i2, boolean z6) {
        if (z6) {
            getChannel().waitExpandBufferCompletion$kotlinx_coroutines_core((this.f4177f * BufferedChannelKt.f17505b) + i2);
        }
        onSlotCleaned();
    }

    public final Object retrieveElement$kotlinx_coroutines_core(int i2) {
        Object element$kotlinx_coroutines_core = getElement$kotlinx_coroutines_core(i2);
        cleanElement$kotlinx_coroutines_core(i2);
        return element$kotlinx_coroutines_core;
    }

    public final void setState$kotlinx_coroutines_core(int i2, Object obj) {
        this.f3736n.set((i2 * 2) + 1, obj);
    }

    public final void storeElement$kotlinx_coroutines_core(int i2, Object obj) {
        this.f3736n.lazySet(i2 * 2, obj);
    }
}
