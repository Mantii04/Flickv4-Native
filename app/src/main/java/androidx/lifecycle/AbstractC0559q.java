package androidx.lifecycle;

import android.app.Application;
import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: androidx.lifecycle.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0559q {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f7042a = new AtomicBoolean(false);

    public static final void init(Context context) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        if (f7042a.getAndSet(true)) {
            return;
        }
        Context applicationContext = context.getApplicationContext();
        kotlin.jvm.internal.j.checkNotNull(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).registerActivityLifecycleCallbacks(new C0558p());
    }
}
