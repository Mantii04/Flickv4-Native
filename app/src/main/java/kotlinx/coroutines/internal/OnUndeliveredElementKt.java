package kotlinx.coroutines.internal;

import H5.l;
import R5.G;
import u5.AbstractC1702a;
import u5.C1711j;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public abstract class OnUndeliveredElementKt {
    public static final <E> l bindCancellationFun(final l lVar, final E e3, final InterfaceC1952k interfaceC1952k) {
        return new l() { // from class: kotlinx.coroutines.internal.OnUndeliveredElementKt$bindCancellationFun$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // H5.l
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((Throwable) obj);
                return C1711j.f20329a;
            }

            public final void invoke(Throwable th) {
                OnUndeliveredElementKt.callUndeliveredElement(l.this, e3, interfaceC1952k);
            }
        };
    }

    public static final <E> void callUndeliveredElement(l lVar, E e3, InterfaceC1952k interfaceC1952k) {
        UndeliveredElementException callUndeliveredElementCatchingException = callUndeliveredElementCatchingException(lVar, e3, null);
        if (callUndeliveredElementCatchingException != null) {
            G.handleCoroutineException(interfaceC1952k, callUndeliveredElementCatchingException);
        }
    }

    public static final <E> UndeliveredElementException callUndeliveredElementCatchingException(l lVar, E e3, UndeliveredElementException undeliveredElementException) {
        try {
            lVar.invoke(e3);
            return undeliveredElementException;
        } catch (Throwable th) {
            if (undeliveredElementException != null && undeliveredElementException.getCause() != th) {
                AbstractC1702a.addSuppressed(undeliveredElementException, th);
                return undeliveredElementException;
            }
            return new UndeliveredElementException("Exception in undelivered element handler for " + e3, th);
        }
    }

    public static /* synthetic */ UndeliveredElementException callUndeliveredElementCatchingException$default(l lVar, Object obj, UndeliveredElementException undeliveredElementException, int i2, Object obj2) {
        if ((i2 & 2) != 0) {
            undeliveredElementException = null;
        }
        return callUndeliveredElementCatchingException(lVar, obj, undeliveredElementException);
    }
}
