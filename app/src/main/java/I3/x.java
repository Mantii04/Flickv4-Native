package I3;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes2.dex */
public final class x implements Handler.Callback {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ A f1377b;

    public x(A a7) {
        this.f1377b = a7;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 0) {
            return false;
        }
        A a7 = this.f1377b;
        z zVar = (z) message.obj;
        synchronized (a7.f1316a) {
            try {
                if (a7.f1318c != zVar) {
                    if (a7.f1319d == zVar) {
                    }
                }
                a7.a(zVar, 2);
            } catch (Throwable th) {
                throw th;
            }
        }
        return true;
    }
}
