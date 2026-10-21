package f1;

import android.os.Handler;
import android.os.Message;

/* renamed from: f1.D, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class HandlerC0882D extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ G f14127a;

    public HandlerC0882D(G g7) {
        this.f14127a = g7;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i2 = message.what;
        G g7 = this.f14127a;
        if (i2 != 1) {
            if (i2 != 2) {
                return;
            }
            g7.f14138f = false;
            g7.onDiscoveryRequestChanged(g7.f14137e);
            return;
        }
        g7.f14140h = false;
        AbstractC0917x abstractC0917x = g7.f14136d;
        if (abstractC0917x != null) {
            abstractC0917x.onDescriptorChanged(g7, g7.f14139g);
        }
    }
}
