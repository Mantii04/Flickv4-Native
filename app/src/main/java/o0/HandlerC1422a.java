package o0;

import V3.r;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* renamed from: o0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class HandlerC1422a extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C1424c f19034a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC1422a(C1424c c1424c, Looper looper) {
        super(looper);
        this.f19034a = c1424c;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int size;
        r[] rVarArr;
        if (message.what != 1) {
            super.handleMessage(message);
            return;
        }
        C1424c c1424c = this.f19034a;
        do {
            synchronized (c1424c.f19039a) {
                try {
                    size = c1424c.f19041c.size();
                    if (size <= 0) {
                        return;
                    }
                    rVarArr = new r[size];
                    c1424c.f19041c.toArray(rVarArr);
                    c1424c.f19041c.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } while (size <= 0);
        r rVar = rVarArr[0];
        throw null;
    }
}
