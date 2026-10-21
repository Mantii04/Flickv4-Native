package z;

import android.util.Log;
import java.lang.reflect.Method;

/* renamed from: z.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1963i implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f21360b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f21361e;

    public RunnableC1963i(Object obj, Object obj2) {
        this.f21360b = obj;
        this.f21361e = obj2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Method method = AbstractC1965k.f21371d;
            Object obj = this.f21361e;
            Object obj2 = this.f21360b;
            if (method != null) {
                method.invoke(obj2, obj, Boolean.FALSE, "AppCompat recreation");
            } else {
                AbstractC1965k.f21372e.invoke(obj2, obj, Boolean.FALSE);
            }
        } catch (RuntimeException e3) {
            if (e3.getClass() == RuntimeException.class && e3.getMessage() != null && e3.getMessage().startsWith("Unable to stop")) {
                throw e3;
            }
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
        }
    }
}
