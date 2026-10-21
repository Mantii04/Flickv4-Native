package f1;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

/* renamed from: f1.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class HandlerC0908n extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0909o f14272a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC0908n(C0909o c0909o) {
        super(Looper.getMainLooper());
        this.f14272a = c0909o;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i2 = message.what;
        int i7 = message.arg1;
        Object obj = message.obj;
        Bundle peekData = message.peekData();
        C0909o c0909o = this.f14272a;
        O o6 = (O) c0909o.f14278j.get(i7);
        if (o6 == null) {
            Log.w("MR2Provider", "Pending callback not found for control request.");
            return;
        }
        c0909o.f14278j.remove(i7);
        if (i2 == 3) {
            o6.onResult((Bundle) obj);
        } else {
            if (i2 != 4) {
                return;
            }
            o6.onError(peekData == null ? null : peekData.getString("error"), (Bundle) obj);
        }
    }
}
