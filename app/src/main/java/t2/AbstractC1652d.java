package t2;

import G2.r;
import n2.InterfaceC1391M;

/* renamed from: t2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1652d implements InterfaceC1391M {

    /* renamed from: b, reason: collision with root package name */
    public final Object f20045b;

    public AbstractC1652d(Object obj) {
        this.f20045b = r.checkNotNull(obj);
    }

    @Override // n2.InterfaceC1391M
    public final Object get() {
        return this.f20045b;
    }

    @Override // n2.InterfaceC1391M
    public Class<Object> getResourceClass() {
        return this.f20045b.getClass();
    }

    @Override // n2.InterfaceC1391M
    public final int getSize() {
        return 1;
    }

    @Override // n2.InterfaceC1391M
    public void recycle() {
    }
}
