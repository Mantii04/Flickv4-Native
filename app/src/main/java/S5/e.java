package S5;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import kotlin.Result;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public abstract class e {
    private static volatile Choreographer choreographer;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Object m103constructorimpl;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        try {
            int i2 = Result.f17390b;
            m103constructorimpl = Result.m103constructorimpl(new c(asHandler(Looper.getMainLooper(), true), objArr2 == true ? 1 : 0, 2, objArr == true ? 1 : 0));
        } catch (Throwable th) {
            int i7 = Result.f17390b;
            m103constructorimpl = Result.m103constructorimpl(kotlin.b.createFailure(th));
        }
    }

    public static final Handler asHandler(Looper looper, boolean z6) {
        if (!z6) {
            return new Handler(looper);
        }
        if (Build.VERSION.SDK_INT < 28) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (NoSuchMethodException unused) {
                return new Handler(looper);
            }
        }
        Object invoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        j.checkNotNull(invoke, "null cannot be cast to non-null type android.os.Handler");
        return (Handler) invoke;
    }
}
