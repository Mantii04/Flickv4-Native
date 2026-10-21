package O3;

import android.os.Handler;
import android.os.Message;
import com.google.android.youtube.player.YouTubeInitializationResult;

/* loaded from: classes2.dex */
public final class t extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f2417a;

    public t(y yVar) {
        this.f2417a = yVar;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i2 = message.what;
        if (i2 == 3) {
            this.f2417a.a((YouTubeInitializationResult) message.obj);
            return;
        }
        if (i2 != 4) {
            if (i2 != 2 || this.f2417a.f()) {
                int i7 = message.what;
                if (i7 == 2 || i7 == 1) {
                    ((u) message.obj).a();
                    return;
                }
                return;
            }
            return;
        }
        synchronized (this.f2417a.f2427d) {
            try {
                y yVar = this.f2417a;
                if (yVar.f2433j && yVar.f() && this.f2417a.f2427d.contains(message.obj)) {
                    ((N3.g) ((A) message.obj)).a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
