package T1;

import android.os.Handler;
import android.os.Looper;
import f2.AbstractC0923d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class O {

    /* renamed from: e, reason: collision with root package name */
    public static final ExecutorService f3587e = Executors.newCachedThreadPool();

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashSet f3588a = new LinkedHashSet(1);

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashSet f3589b = new LinkedHashSet(1);

    /* renamed from: c, reason: collision with root package name */
    public final Handler f3590c = new Handler(Looper.getMainLooper());

    /* renamed from: d, reason: collision with root package name */
    public volatile L f3591d = null;

    public O(Callable<L> callable) {
        f3587e.execute(new N(this, callable));
    }

    public static void a(O o6, Throwable th) {
        synchronized (o6) {
            ArrayList arrayList = new ArrayList(o6.f3589b);
            if (arrayList.isEmpty()) {
                AbstractC0923d.warning("Lottie encountered an error but no failure listener was added:", th);
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((I) it.next()).onResult(th);
            }
        }
    }

    public synchronized O addFailureListener(I i2) {
        try {
            if (this.f3591d != null && this.f3591d.getException() != null) {
                i2.onResult(this.f3591d.getException());
            }
            this.f3589b.add(i2);
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public synchronized O addListener(I i2) {
        try {
            if (this.f3591d != null && this.f3591d.getValue() != null) {
                i2.onResult(this.f3591d.getValue());
            }
            this.f3588a.add(i2);
        } catch (Throwable th) {
            throw th;
        }
        return this;
    }

    public final void b(L l7) {
        if (this.f3591d != null) {
            throw new IllegalStateException("A task may only be set once.");
        }
        this.f3591d = l7;
        this.f3590c.post(new M(this));
    }

    public synchronized O removeFailureListener(I i2) {
        this.f3589b.remove(i2);
        return this;
    }

    public synchronized O removeListener(I i2) {
        this.f3588a.remove(i2);
        return this;
    }
}
