package O5;

import H5.p;
import java.util.Iterator;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;

/* loaded from: classes2.dex */
public abstract class h {
    public static final <T> Iterator<T> iterator(p block) {
        kotlin.jvm.internal.j.checkNotNullParameter(block, "block");
        e eVar = new e();
        eVar.setNextStep(IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(block, eVar, eVar));
        return eVar;
    }

    public static <T> d sequence(p block) {
        kotlin.jvm.internal.j.checkNotNullParameter(block, "block");
        return new g(block);
    }
}
