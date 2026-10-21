package a6;

import W5.G;
import kotlinx.coroutines.sync.MutexImpl;

/* loaded from: classes2.dex */
public abstract class c {

    /* renamed from: a, reason: collision with root package name */
    public static final G f4826a = new G("NO_OWNER");

    static {
        new G("ALREADY_LOCKED_BY_OWNER");
    }

    public static final b Mutex(boolean z6) {
        return new MutexImpl(z6);
    }

    public static /* synthetic */ b Mutex$default(boolean z6, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z6 = false;
        }
        return Mutex(z6);
    }
}
