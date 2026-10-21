package n2;

import android.os.Handler;
import android.os.Message;

/* renamed from: n2.P, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1394P implements Handler.Callback {
    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 1) {
            return false;
        }
        ((InterfaceC1391M) message.obj).recycle();
        return true;
    }
}
