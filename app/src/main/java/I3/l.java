package I3;

import android.os.Handler;

/* loaded from: classes2.dex */
public final class l implements y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f1330a;

    public l(t tVar) {
        this.f1330a = tVar;
    }

    public void dismiss(int i2) {
        Handler handler = t.f1352y;
        handler.sendMessage(handler.obtainMessage(1, i2, 0, this.f1330a));
    }

    public void show() {
        Handler handler = t.f1352y;
        handler.sendMessage(handler.obtainMessage(0, this.f1330a));
    }
}
