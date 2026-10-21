package B1;

import android.content.Context;
import androidx.work.WorkerParameters;

/* loaded from: classes.dex */
public abstract class P {

    /* renamed from: a, reason: collision with root package name */
    public static final String f155a = t.tagWithPrefix("WorkerFactory");

    public static P getDefaultWorkerFactory() {
        return new O();
    }

    public abstract r createWorker(Context context, String str, WorkerParameters workerParameters);

    public final r createWorkerWithDefaultFallback(Context context, String str, WorkerParameters workerParameters) {
        Class cls;
        String str2 = f155a;
        r createWorker = createWorker(context, str, workerParameters);
        if (createWorker == null) {
            try {
                cls = Class.forName(str).asSubclass(r.class);
            } catch (Throwable th) {
                t.get().error(str2, "Invalid class: " + str, th);
                cls = null;
            }
            if (cls != null) {
                try {
                    createWorker = (r) cls.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
                } catch (Throwable th2) {
                    t.get().error(str2, "Could not instantiate " + str, th2);
                }
            }
        }
        if (createWorker == null || !createWorker.isUsed()) {
            return createWorker;
        }
        throw new IllegalStateException(b.c.m("WorkerFactory (", getClass().getName(), ") returned an instance of a ListenableWorker (", str, ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker."));
    }
}
