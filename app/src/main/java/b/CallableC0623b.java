package b;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.concurrent.Callable;

/* renamed from: b.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class CallableC0623b implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f8330b;

    public CallableC0623b(d dVar) {
        this.f8330b = dVar;
    }

    public final void a() {
        Log.i("a.b", "ScheduledStart");
        new Handler(Looper.getMainLooper()).post(new RunnableC0622a(this.f8330b, 0));
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        a();
        return null;
    }
}
