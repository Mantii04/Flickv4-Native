package m4;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* loaded from: classes2.dex */
public final class O extends Handler {

    /* renamed from: a, reason: collision with root package name */
    public final P f18642a;

    public O(Looper looper, P p6) {
        super(looper);
        this.f18642a = p6;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        int i2 = message.what;
        P p6 = this.f18642a;
        if (i2 == 0) {
            p6.f18645c++;
            return;
        }
        if (i2 == 1) {
            p6.f18646d++;
            return;
        }
        if (i2 == 2) {
            long j7 = message.arg1;
            int i7 = p6.f18654l + 1;
            p6.f18654l = i7;
            long j8 = p6.f18648f + j7;
            p6.f18648f = j8;
            p6.f18651i = j8 / i7;
            return;
        }
        if (i2 == 3) {
            long j9 = message.arg1;
            p6.f18655m++;
            long j10 = p6.f18649g + j9;
            p6.f18649g = j10;
            p6.f18652j = j10 / p6.f18654l;
            return;
        }
        if (i2 != 4) {
            D.f18592k.post(new N(message));
            return;
        }
        Long l7 = (Long) message.obj;
        p6.f18653k++;
        long longValue = l7.longValue() + p6.f18647e;
        p6.f18647e = longValue;
        p6.f18650h = longValue / p6.f18653k;
    }
}
