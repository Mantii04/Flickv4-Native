package G2;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: a, reason: collision with root package name */
    public static final g f1034a = new g();

    /* renamed from: b, reason: collision with root package name */
    public static final h f1035b = new h();

    public static Executor directExecutor() {
        return f1035b;
    }

    public static Executor mainThreadExecutor() {
        return f1034a;
    }
}
