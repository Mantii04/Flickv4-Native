package J;

import android.os.Handler;

/* loaded from: classes.dex */
public final class w implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public l f1431b;

    /* renamed from: e, reason: collision with root package name */
    public m f1432e;

    /* renamed from: f, reason: collision with root package name */
    public Handler f1433f;

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        try {
            obj = this.f1431b.call();
        } catch (Exception unused) {
            obj = null;
        }
        this.f1433f.post(new v(this.f1432e, obj));
    }
}
