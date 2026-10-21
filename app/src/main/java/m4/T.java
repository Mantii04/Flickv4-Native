package m4;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes2.dex */
public final class T extends Handler {
    @Override // android.os.Handler
    public void handleMessage(Message message) {
        sendMessageDelayed(obtainMessage(), 1000L);
    }
}
