package U5;

import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import y5.InterfaceC1944c;

/* loaded from: classes2.dex */
public final class j implements c {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Ref$ObjectRef f3800b;

    public j(Ref$ObjectRef ref$ObjectRef) {
        this.f3800b = ref$ObjectRef;
    }

    @Override // U5.c
    public Object emit(Object obj, InterfaceC1944c interfaceC1944c) {
        this.f3800b.f17447b = obj;
        throw new AbortFlowException(this);
    }
}
