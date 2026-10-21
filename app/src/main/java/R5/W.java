package R5;

import u5.C1711j;

/* loaded from: classes2.dex */
public final class W extends AbstractC0279j {

    /* renamed from: b, reason: collision with root package name */
    public final V f3163b;

    public W(V v6) {
        this.f3163b = v6;
    }

    @Override // H5.l
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((Throwable) obj);
        return C1711j.f20329a;
    }

    public String toString() {
        return "DisposeOnCancel[" + this.f3163b + ']';
    }

    @Override // R5.AbstractC0281k
    public void invoke(Throwable th) {
        this.f3163b.dispose();
    }
}
