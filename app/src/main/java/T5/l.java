package T5;

import kotlinx.coroutines.channels.ChannelsKt__ChannelsKt;

/* loaded from: classes2.dex */
public abstract class l {
    public static final void cancelConsumed(q qVar, Throwable th) {
        m.cancelConsumed(qVar, th);
    }

    public static final <E> Object trySendBlocking(s sVar, E e3) {
        return ChannelsKt__ChannelsKt.trySendBlocking(sVar, e3);
    }
}
