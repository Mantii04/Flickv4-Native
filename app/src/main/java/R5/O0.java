package R5;

/* loaded from: classes2.dex */
public final class O0 {

    /* renamed from: a, reason: collision with root package name */
    public static final O0 f3153a = new O0();

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadLocal f3154b = W5.K.commonThreadLocal(new W5.G("ThreadLocalEventLoop"));

    public final Y currentOrNull$kotlinx_coroutines_core() {
        return (Y) f3154b.get();
    }

    public final Y getEventLoop$kotlinx_coroutines_core() {
        ThreadLocal threadLocal = f3154b;
        Y y6 = (Y) threadLocal.get();
        if (y6 != null) {
            return y6;
        }
        Y createEventLoop = AbstractC0266c0.createEventLoop();
        threadLocal.set(createEventLoop);
        return createEventLoop;
    }

    public final void resetEventLoop$kotlinx_coroutines_core() {
        f3154b.set(null);
    }

    public final void setEventLoop$kotlinx_coroutines_core(Y y6) {
        f3154b.set(y6);
    }
}
