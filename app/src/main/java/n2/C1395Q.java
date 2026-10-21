package n2;

import android.os.Handler;
import android.os.Looper;

/* renamed from: n2.Q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1395Q {

    /* renamed from: a, reason: collision with root package name */
    public boolean f18927a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f18928b = new Handler(Looper.getMainLooper(), new C1394P());

    public final synchronized void a(InterfaceC1391M interfaceC1391M, boolean z6) {
        try {
            if (!this.f18927a && !z6) {
                this.f18927a = true;
                interfaceC1391M.recycle();
                this.f18927a = false;
            }
            this.f18928b.obtainMessage(1, interfaceC1391M).sendToTarget();
        } catch (Throwable th) {
            throw th;
        }
    }
}
