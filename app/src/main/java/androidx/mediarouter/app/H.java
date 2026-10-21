package androidx.mediarouter.app;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import java.util.List;

/* loaded from: classes.dex */
public final class H extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Q f7676a;

    public H(Q q6) {
        this.f7676a = q6;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (message.what != 1) {
            return;
        }
        List list = (List) message.obj;
        Q q6 = this.f7676a;
        q6.f7740y = SystemClock.uptimeMillis();
        q6.f7734s.clear();
        q6.f7734s.addAll(list);
        q6.f7735t.a();
    }
}
