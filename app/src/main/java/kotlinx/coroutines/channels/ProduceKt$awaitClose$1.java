package kotlinx.coroutines.channels;

import A5.d;
import H5.a;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

@d(c = "kotlinx.coroutines.channels.ProduceKt", f = "Produce.kt", l = {153}, m = "awaitClose")
/* loaded from: classes2.dex */
public final class ProduceKt$awaitClose$1 extends ContinuationImpl {

    /* renamed from: b, reason: collision with root package name */
    public a f17528b;

    /* renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f17529e;

    /* renamed from: f, reason: collision with root package name */
    public int f17530f;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f17529e = obj;
        this.f17530f |= Integer.MIN_VALUE;
        return ProduceKt.awaitClose(null, null, this);
    }
}
