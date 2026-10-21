package M1;

import V3.F;

/* loaded from: classes.dex */
public final class d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final androidx.work.impl.utils.futures.b f2098b;

    /* renamed from: e, reason: collision with root package name */
    public final F f2099e;

    public d(androidx.work.impl.utils.futures.b bVar, F f3) {
        this.f2098b = bVar;
        this.f2099e = f3;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f2098b.f8320b != this) {
            return;
        }
        if (androidx.work.impl.utils.futures.b.f8318n.b(this.f2098b, this, androidx.work.impl.utils.futures.b.e(this.f2099e))) {
            androidx.work.impl.utils.futures.b.b(this.f2098b);
        }
    }
}
