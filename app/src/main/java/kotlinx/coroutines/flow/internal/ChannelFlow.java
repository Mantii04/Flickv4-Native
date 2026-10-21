package kotlinx.coroutines.flow.internal;

import R5.I;
import R5.J;
import R5.K;
import T5.p;
import T5.q;
import U5.b;
import U5.c;
import java.util.ArrayList;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt;
import u5.C1711j;
import v5.u;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public abstract class ChannelFlow implements b {

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1952k f17585b;

    /* renamed from: e, reason: collision with root package name */
    public final int f17586e;

    /* renamed from: f, reason: collision with root package name */
    public final BufferOverflow f17587f;

    public ChannelFlow(InterfaceC1952k interfaceC1952k, int i2, BufferOverflow bufferOverflow) {
        this.f17585b = interfaceC1952k;
        this.f17586e = i2;
        this.f17587f = bufferOverflow;
    }

    public String additionalToStringProps() {
        return null;
    }

    @Override // U5.b
    public Object collect(c cVar, InterfaceC1944c interfaceC1944c) {
        Object coroutineScope = J.coroutineScope(new ChannelFlow$collect$2(cVar, this, null), interfaceC1944c);
        return coroutineScope == AbstractC2008a.getCOROUTINE_SUSPENDED() ? coroutineScope : C1711j.f20329a;
    }

    public abstract Object collectTo(p pVar, InterfaceC1944c interfaceC1944c);

    public final H5.p getCollectToFun$kotlinx_coroutines_core() {
        return new ChannelFlow$collectToFun$1(this, null);
    }

    public final int getProduceCapacity$kotlinx_coroutines_core() {
        int i2 = this.f17586e;
        if (i2 == -3) {
            return -2;
        }
        return i2;
    }

    public q produceImpl(I i2) {
        return ProduceKt.produce$default(i2, this.f17585b, getProduceCapacity$kotlinx_coroutines_core(), this.f17587f, CoroutineStart.f17482f, null, getCollectToFun$kotlinx_coroutines_core(), 16, null);
    }

    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        String additionalToStringProps = additionalToStringProps();
        if (additionalToStringProps != null) {
            arrayList.add(additionalToStringProps);
        }
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f17433b;
        InterfaceC1952k interfaceC1952k = this.f17585b;
        if (interfaceC1952k != emptyCoroutineContext) {
            arrayList.add("context=" + interfaceC1952k);
        }
        int i2 = this.f17586e;
        if (i2 != -3) {
            arrayList.add("capacity=" + i2);
        }
        BufferOverflow bufferOverflow = BufferOverflow.f17486b;
        BufferOverflow bufferOverflow2 = this.f17587f;
        if (bufferOverflow2 != bufferOverflow) {
            arrayList.add("onBufferOverflow=" + bufferOverflow2);
        }
        return K.getClassSimpleName(this) + '[' + u.joinToString$default(arrayList, ", ", null, null, 0, null, null, 62, null) + ']';
    }
}
