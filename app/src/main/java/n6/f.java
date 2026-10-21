package n6;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class f extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f19018a;

    public f(pl.droidsonroids.gif.c cVar) {
        super(Looper.getMainLooper());
        this.f19018a = new WeakReference(cVar);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        pl.droidsonroids.gif.c cVar = (pl.droidsonroids.gif.c) this.f19018a.get();
        if (cVar == null) {
            return;
        }
        if (message.what == -1) {
            cVar.invalidateSelf();
            return;
        }
        Iterator it = cVar.f19531q.iterator();
        if (it.hasNext()) {
            throw b.c.g(it);
        }
    }
}
