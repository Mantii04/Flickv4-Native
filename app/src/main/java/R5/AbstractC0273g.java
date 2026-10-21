package R5;

import kotlinx.coroutines.CoroutineStart;
import y5.InterfaceC1944c;
import y5.InterfaceC1952k;

/* renamed from: R5.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0273g {
    public static final <T> N async(I i2, InterfaceC1952k interfaceC1952k, CoroutineStart coroutineStart, H5.p pVar) {
        return AbstractC0277i.async(i2, interfaceC1952k, coroutineStart, pVar);
    }

    public static final InterfaceC0294q0 launch(I i2, InterfaceC1952k interfaceC1952k, CoroutineStart coroutineStart, H5.p pVar) {
        return AbstractC0277i.launch(i2, interfaceC1952k, coroutineStart, pVar);
    }

    public static final <T> T runBlocking(InterfaceC1952k interfaceC1952k, H5.p pVar) throws InterruptedException {
        return (T) AbstractC0275h.runBlocking(interfaceC1952k, pVar);
    }

    public static final <T> Object withContext(InterfaceC1952k interfaceC1952k, H5.p pVar, InterfaceC1944c interfaceC1944c) {
        return AbstractC0277i.withContext(interfaceC1952k, pVar, interfaceC1944c);
    }
}
