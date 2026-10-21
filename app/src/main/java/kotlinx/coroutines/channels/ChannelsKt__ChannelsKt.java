package kotlinx.coroutines.channels;

import R5.AbstractC0275h;
import T5.i;
import T5.j;
import T5.s;
import u5.C1711j;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class ChannelsKt__ChannelsKt {
    public static final <E> Object trySendBlocking(s sVar, E e3) {
        Object runBlocking$default;
        Object mo29trySendJP2dKIU = sVar.mo29trySendJP2dKIU(e3);
        if (mo29trySendJP2dKIU instanceof i) {
            runBlocking$default = AbstractC0275h.runBlocking$default(null, new ChannelsKt__ChannelsKt$trySendBlocking$2(sVar, e3, null), 1, null);
            return ((j) runBlocking$default).m42unboximpl();
        }
        return j.f3732b.m32successJP2dKIU(C1711j.f20329a);
    }
}
