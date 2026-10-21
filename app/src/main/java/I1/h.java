package I1;

import B1.t;
import android.content.Context;
import java.util.LinkedHashSet;
import v5.u;

/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public final N1.c f1247a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f1248b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f1249c;

    /* renamed from: d, reason: collision with root package name */
    public final LinkedHashSet f1250d;

    /* renamed from: e, reason: collision with root package name */
    public Object f1251e;

    public h(Context context, N1.c taskExecutor) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(taskExecutor, "taskExecutor");
        this.f1247a = taskExecutor;
        Context applicationContext = context.getApplicationContext();
        kotlin.jvm.internal.j.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.f1248b = applicationContext;
        this.f1249c = new Object();
        this.f1250d = new LinkedHashSet();
    }

    public final void addListener(G1.a listener) {
        String str;
        kotlin.jvm.internal.j.checkNotNullParameter(listener, "listener");
        synchronized (this.f1249c) {
            try {
                if (this.f1250d.add(listener)) {
                    if (this.f1250d.size() == 1) {
                        this.f1251e = getInitialState();
                        t tVar = t.get();
                        str = i.f1252a;
                        tVar.debug(str, getClass().getSimpleName() + ": initial state = " + this.f1251e);
                        startTracking();
                    }
                    ((H1.d) listener).onConstraintChanged(this.f1251e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Context getAppContext() {
        return this.f1248b;
    }

    public abstract Object getInitialState();

    public final void removeListener(G1.a listener) {
        kotlin.jvm.internal.j.checkNotNullParameter(listener, "listener");
        synchronized (this.f1249c) {
            if (this.f1250d.remove(listener) && this.f1250d.isEmpty()) {
                stopTracking();
            }
        }
    }

    public final void setState(Object obj) {
        synchronized (this.f1249c) {
            Object obj2 = this.f1251e;
            if (obj2 == null || !kotlin.jvm.internal.j.areEqual(obj2, obj)) {
                this.f1251e = obj;
                ((N1.e) this.f1247a).getMainThreadExecutor().execute(new A4.n(9, u.toList(this.f1250d), this));
            }
        }
    }

    public abstract void startTracking();

    public abstract void stopTracking();
}
