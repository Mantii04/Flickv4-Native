package T1;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;

/* renamed from: T1.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class CallableC0335n implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WeakReference f3628b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f3629e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f3630f;

    public CallableC0335n(WeakReference weakReference, Context context, int i2) {
        this.f3628b = weakReference;
        this.f3629e = context;
        this.f3630f = i2;
    }

    @Override // java.util.concurrent.Callable
    public L call() {
        Context context = (Context) this.f3628b.get();
        if (context == null) {
            context = this.f3629e;
        }
        return AbstractC0338q.fromRawResSync(context, this.f3630f);
    }
}
