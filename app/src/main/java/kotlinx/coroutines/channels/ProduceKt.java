package kotlinx.coroutines.channels;

import H5.l;
import H5.p;
import R5.I;
import T5.f;
import T5.o;
import T5.q;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.a;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public abstract class ProduceKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitClose(T5.p r4, H5.a r5, y5.InterfaceC1944c r6) {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.channels.ProduceKt$awaitClose$1
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.channels.ProduceKt$awaitClose$1 r0 = (kotlinx.coroutines.channels.ProduceKt$awaitClose$1) r0
            int r1 = r0.f17530f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f17530f = r1
            goto L18
        L13:
            kotlinx.coroutines.channels.ProduceKt$awaitClose$1 r0 = new kotlinx.coroutines.channels.ProduceKt$awaitClose$1
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f17529e
            java.lang.Object r1 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f17530f
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            H5.a r5 = r0.f17528b
            kotlin.b.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L2b
            goto L6e
        L2b:
            r4 = move-exception
            goto L74
        L2d:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L35:
            kotlin.b.throwOnFailure(r6)
            y5.k r6 = r0.getContext()
            R5.F r2 = R5.F.f3147e
            y5.i r6 = r6.get(r2)
            if (r6 != r4) goto L78
            r0.f17528b = r5     // Catch: java.lang.Throwable -> L2b
            r0.f17530f = r3     // Catch: java.lang.Throwable -> L2b
            R5.n r6 = new R5.n     // Catch: java.lang.Throwable -> L2b
            y5.c r2 = kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.intercepted(r0)     // Catch: java.lang.Throwable -> L2b
            r6.<init>(r2, r3)     // Catch: java.lang.Throwable -> L2b
            r6.initCancellability()     // Catch: java.lang.Throwable -> L2b
            kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1 r2 = new kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1     // Catch: java.lang.Throwable -> L2b
            r2.<init>()     // Catch: java.lang.Throwable -> L2b
            T5.d r4 = (T5.d) r4     // Catch: java.lang.Throwable -> L2b
            r4.invokeOnClose(r2)     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r4 = r6.getResult()     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r6 = z5.AbstractC2008a.getCOROUTINE_SUSPENDED()     // Catch: java.lang.Throwable -> L2b
            if (r4 != r6) goto L6b
            A5.f.probeCoroutineSuspended(r0)     // Catch: java.lang.Throwable -> L2b
        L6b:
            if (r4 != r1) goto L6e
            return r1
        L6e:
            r5.invoke()
            u5.j r4 = u5.C1711j.f20329a
            return r4
        L74:
            r5.invoke()
            throw r4
        L78:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "awaitClose() can only be invoked from the producer context"
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ProduceKt.awaitClose(T5.p, H5.a, y5.c):java.lang.Object");
    }

    public static final <E> q produce(I i2, InterfaceC1952k interfaceC1952k, int i7, BufferOverflow bufferOverflow, CoroutineStart coroutineStart, l lVar, p pVar) {
        o oVar = new o(a.newCoroutineContext(i2, interfaceC1952k), f.Channel$default(i7, bufferOverflow, null, 4, null));
        if (lVar != null) {
            oVar.invokeOnCompletion(lVar);
        }
        oVar.start(coroutineStart, oVar, pVar);
        return oVar;
    }

    public static /* synthetic */ q produce$default(I i2, InterfaceC1952k interfaceC1952k, int i7, BufferOverflow bufferOverflow, CoroutineStart coroutineStart, l lVar, p pVar, int i8, Object obj) {
        if ((i8 & 1) != 0) {
            interfaceC1952k = EmptyCoroutineContext.f17433b;
        }
        if ((i8 & 2) != 0) {
            i7 = 0;
        }
        if ((i8 & 4) != 0) {
            bufferOverflow = BufferOverflow.f17486b;
        }
        if ((i8 & 8) != 0) {
            coroutineStart = CoroutineStart.f17480b;
        }
        if ((i8 & 16) != 0) {
            lVar = null;
        }
        l lVar2 = lVar;
        return produce(i2, interfaceC1952k, i7, bufferOverflow, coroutineStart, lVar2, pVar);
    }
}
