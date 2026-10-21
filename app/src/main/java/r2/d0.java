package r2;

/* loaded from: classes.dex */
public final class d0 {

    /* renamed from: a, reason: collision with root package name */
    public final Class f19776a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f19777b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1563W f19778c;

    public d0(Class<Object> cls, Class<Object> cls2, InterfaceC1563W interfaceC1563W) {
        this.f19776a = cls;
        this.f19777b = cls2;
        this.f19778c = interfaceC1563W;
    }

    public boolean handles(Class<?> cls, Class<?> cls2) {
        return handles(cls) && this.f19777b.isAssignableFrom(cls2);
    }

    public boolean handles(Class<?> cls) {
        return this.f19776a.isAssignableFrom(cls);
    }
}
