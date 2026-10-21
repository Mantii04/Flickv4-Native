package androidx.mediarouter.app;

import android.os.Handler;
import android.os.Message;
import java.util.List;

/* renamed from: androidx.mediarouter.app.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class HandlerC0600d extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DialogC0605i f7772a;

    public HandlerC0600d(DialogC0605i dialogC0605i) {
        this.f7772a = dialogC0605i;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i2 = message.what;
        DialogC0605i dialogC0605i = this.f7772a;
        if (i2 == 1) {
            dialogC0605i.c((List) message.obj);
            return;
        }
        HandlerC0600d handlerC0600d = dialogC0605i.f7800F;
        if (i2 == 2) {
            if (dialogC0605i.f7804r.isEmpty()) {
                dialogC0605i.d(2);
                handlerC0600d.removeMessages(2);
                handlerC0600d.removeMessages(3);
                handlerC0600d.sendMessageDelayed(handlerC0600d.obtainMessage(3), 15000L);
                return;
            }
            return;
        }
        if (i2 == 3 && dialogC0605i.f7804r.isEmpty()) {
            dialogC0605i.d(3);
            handlerC0600d.removeMessages(2);
            handlerC0600d.removeMessages(3);
            handlerC0600d.removeMessages(1);
            dialogC0605i.f7801n.removeCallback(dialogC0605i.f7802p);
        }
    }
}
