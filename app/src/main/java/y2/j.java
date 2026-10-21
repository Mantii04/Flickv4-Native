package y2;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
public final class j implements Handler.Callback {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ k f21079b;

    public j(k kVar) {
        this.f21079b = kVar;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i2 = message.what;
        k kVar = this.f21079b;
        if (i2 == 1) {
            kVar.b((h) message.obj);
            return true;
        }
        if (i2 != 2) {
            return false;
        }
        kVar.f21083d.clear((h) message.obj);
        return false;
    }
}
