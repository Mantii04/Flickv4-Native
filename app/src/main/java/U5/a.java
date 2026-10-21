package U5;

import H5.p;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;
import u5.C1711j;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public abstract class a extends ChannelFlow {

    /* renamed from: j, reason: collision with root package name */
    public final p f3797j;

    public a(p pVar, InterfaceC1952k interfaceC1952k, int i2, BufferOverflow bufferOverflow) {
        super(interfaceC1952k, i2, bufferOverflow);
        this.f3797j = pVar;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public Object collectTo(T5.p pVar, InterfaceC1944c interfaceC1944c) {
        Object invoke = this.f3797j.invoke(pVar, interfaceC1944c);
        return invoke == AbstractC2008a.getCOROUTINE_SUSPENDED() ? invoke : C1711j.f20329a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public String toString() {
        return "block[" + this.f3797j + "] -> " + super.toString();
    }
}
