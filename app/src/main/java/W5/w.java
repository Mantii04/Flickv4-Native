package W5;

import R5.E0;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceConfigurationError;
import kotlin.KotlinNothingValueException;

/* loaded from: classes2.dex */
public abstract class w {

    /* renamed from: a, reason: collision with root package name */
    public static final E0 f4219a;

    static {
        Object obj;
        E0 tryCreateDispatcher;
        H.systemProp("kotlinx.coroutines.fast.service.loader", true);
        try {
            List list = O5.l.toList(O5.j.asSequence(Arrays.asList(new S5.a()).iterator()));
            Iterator it = list.iterator();
            if (it.hasNext()) {
                Object next = it.next();
                if (it.hasNext()) {
                    int loadPriority = ((v) next).getLoadPriority();
                    do {
                        Object next2 = it.next();
                        int loadPriority2 = ((v) next2).getLoadPriority();
                        if (loadPriority < loadPriority2) {
                            next = next2;
                            loadPriority = loadPriority2;
                        }
                    } while (it.hasNext());
                }
                obj = next;
            } else {
                obj = null;
            }
            v vVar = (v) obj;
            if (vVar == null || (tryCreateDispatcher = x.tryCreateDispatcher(vVar, list)) == null) {
                x.throwMissingMainDispatcherException();
                throw new KotlinNothingValueException();
            }
            f4219a = tryCreateDispatcher;
        } catch (Throwable th) {
            throw new ServiceConfigurationError(th.getMessage(), th);
        }
    }
}
