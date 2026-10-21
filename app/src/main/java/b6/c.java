package b6;

import A5.f;
import R5.C0287n;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import y5.InterfaceC1944c;
import z5.AbstractC2008a;

/* loaded from: classes2.dex */
public abstract class c {
    public static final <T> Object await(Task<T> task, InterfaceC1944c interfaceC1944c) {
        if (!task.isComplete()) {
            C0287n c0287n = new C0287n(IntrinsicsKt__IntrinsicsJvmKt.intercepted(interfaceC1944c), 1);
            c0287n.initCancellability();
            task.addOnCompleteListener(a.f8522b, new b(c0287n));
            Object result = c0287n.getResult();
            if (result == AbstractC2008a.getCOROUTINE_SUSPENDED()) {
                f.probeCoroutineSuspended(interfaceC1944c);
            }
            return result;
        }
        Exception exception = task.getException();
        if (exception != null) {
            throw exception;
        }
        if (!task.isCanceled()) {
            return task.getResult();
        }
        throw new CancellationException("Task " + task + " was cancelled normally.");
    }
}
