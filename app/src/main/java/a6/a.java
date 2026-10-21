package a6;

import kotlinx.coroutines.sync.MutexImpl;

/* loaded from: classes2.dex */
public abstract class a {
    public static /* synthetic */ void unlock$default(b bVar, Object obj, int i2, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: unlock");
        }
        if ((i2 & 1) != 0) {
            obj = null;
        }
        ((MutexImpl) bVar).unlock(obj);
    }
}
