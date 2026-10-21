package m4;

import android.os.Message;

/* loaded from: classes2.dex */
public final class N implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Message f18641b;

    public N(Message message) {
        this.f18641b = message;
    }

    @Override // java.lang.Runnable
    public void run() {
        throw new AssertionError("Unhandled stats message." + this.f18641b.what);
    }
}
