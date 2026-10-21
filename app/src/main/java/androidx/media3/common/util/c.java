package androidx.media3.common.util;

import android.os.Handler;
import android.os.Message;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Handler.Callback {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7123b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7124e;

    public /* synthetic */ c(Object obj, int i2) {
        this.f7123b = i2;
        this.f7124e = obj;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean handleMessage;
        boolean handleMessage2;
        switch (this.f7123b) {
            case 0:
                handleMessage = ((ListenerSet) this.f7124e).handleMessage(message);
                return handleMessage;
            default:
                handleMessage2 = ((StuckPlayerDetector) this.f7124e).handleMessage(message);
                return handleMessage2;
        }
    }
}
