package V3;

import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class E {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3979a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final String f3980b;

    /* renamed from: c, reason: collision with root package name */
    public volatile Logger f3981c;

    public E(Class cls) {
        this.f3980b = cls.getName();
    }

    public final Logger a() {
        Logger logger = this.f3981c;
        if (logger != null) {
            return logger;
        }
        synchronized (this.f3979a) {
            try {
                Logger logger2 = this.f3981c;
                if (logger2 != null) {
                    return logger2;
                }
                Logger logger3 = Logger.getLogger(this.f3980b);
                this.f3981c = logger3;
                return logger3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
