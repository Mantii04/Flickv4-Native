package kotlinx.coroutines;

import H5.p;
import R5.I;
import R5.Q;
import R5.Q0;
import R5.R0;
import R5.U;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Ref$ObjectRef;
import y5.C1946e;
import y5.InterfaceC1944c;
import y5.InterfaceC1950i;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public abstract class a {
    public static final InterfaceC1952k a(InterfaceC1952k interfaceC1952k, InterfaceC1952k interfaceC1952k2, boolean z6) {
        Boolean bool = Boolean.FALSE;
        CoroutineContextKt$hasCopyableElements$1 coroutineContextKt$hasCopyableElements$1 = CoroutineContextKt$hasCopyableElements$1.f17478b;
        boolean booleanValue = ((Boolean) interfaceC1952k.fold(bool, coroutineContextKt$hasCopyableElements$1)).booleanValue();
        boolean booleanValue2 = ((Boolean) interfaceC1952k2.fold(bool, coroutineContextKt$hasCopyableElements$1)).booleanValue();
        if (!booleanValue && !booleanValue2) {
            return interfaceC1952k.plus(interfaceC1952k2);
        }
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.f17447b = interfaceC1952k2;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f17433b;
        InterfaceC1952k interfaceC1952k3 = (InterfaceC1952k) interfaceC1952k.fold(emptyCoroutineContext, new CoroutineContextKt$foldCopies$folded$1(2));
        if (booleanValue2) {
            ref$ObjectRef.f17447b = ((InterfaceC1952k) ref$ObjectRef.f17447b).fold(emptyCoroutineContext, new p() { // from class: kotlinx.coroutines.CoroutineContextKt$foldCopies$1
                @Override // H5.p
                public final InterfaceC1952k invoke(InterfaceC1952k interfaceC1952k4, InterfaceC1950i interfaceC1950i) {
                    return interfaceC1952k4.plus(interfaceC1950i);
                }
            });
        }
        return interfaceC1952k3.plus((InterfaceC1952k) ref$ObjectRef.f17447b);
    }

    public static final String getCoroutineName(InterfaceC1952k interfaceC1952k) {
        return null;
    }

    public static final InterfaceC1952k newCoroutineContext(I i2, InterfaceC1952k interfaceC1952k) {
        InterfaceC1952k a7 = a(i2.getCoroutineContext(), interfaceC1952k, true);
        return (a7 == U.getDefault() || a7.get(C1946e.f21324b) != null) ? a7 : a7.plus(U.getDefault());
    }

    public static final Q0 undispatchedCompletion(A5.c cVar) {
        while (!(cVar instanceof Q) && (cVar = cVar.getCallerFrame()) != null) {
            if (cVar instanceof Q0) {
                return (Q0) cVar;
            }
        }
        return null;
    }

    public static final Q0 updateUndispatchedCompletion(InterfaceC1944c interfaceC1944c, InterfaceC1952k interfaceC1952k, Object obj) {
        if (!(interfaceC1944c instanceof A5.c) || interfaceC1952k.get(R0.f3158b) == null) {
            return null;
        }
        Q0 undispatchedCompletion = undispatchedCompletion((A5.c) interfaceC1944c);
        if (undispatchedCompletion != null) {
            undispatchedCompletion.saveThreadContext(interfaceC1952k, obj);
        }
        return undispatchedCompletion;
    }

    public static final InterfaceC1952k newCoroutineContext(InterfaceC1952k interfaceC1952k, InterfaceC1952k interfaceC1952k2) {
        if (!((Boolean) interfaceC1952k2.fold(Boolean.FALSE, CoroutineContextKt$hasCopyableElements$1.f17478b)).booleanValue()) {
            return interfaceC1952k.plus(interfaceC1952k2);
        }
        return a(interfaceC1952k, interfaceC1952k2, false);
    }
}
