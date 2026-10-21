package androidx.concurrent.futures;

import V3.F;

/* loaded from: classes.dex */
public final class f implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final i f5213b;

    /* renamed from: e, reason: collision with root package name */
    public final F f5214e;

    public f(i iVar, F f3) {
        this.f5213b = iVar;
        this.f5214e = f3;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f5213b.value != this) {
            return;
        }
        if (i.ATOMIC_HELPER.b(this.f5213b, this, i.getFutureValue(this.f5214e))) {
            i.complete(this.f5213b);
        }
    }
}
