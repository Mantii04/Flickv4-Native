package androidx.mediarouter.app;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
public final class S extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m0 f7742a;

    public S(m0 m0Var) {
        this.f7742a = m0Var;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i2 = message.what;
        m0 m0Var = this.f7742a;
        if (i2 == 1) {
            m0Var.h();
        } else if (i2 == 2 && m0Var.f7848F != null) {
            m0Var.f7848F = null;
            m0Var.i();
        }
    }
}
