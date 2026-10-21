package z2;

/* renamed from: z2.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1989f {

    /* renamed from: a, reason: collision with root package name */
    public final Class f21411a;

    /* renamed from: b, reason: collision with root package name */
    public final Class f21412b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1988e f21413c;

    public C1989f(Class cls, Class cls2, InterfaceC1988e interfaceC1988e) {
        this.f21411a = cls;
        this.f21412b = cls2;
        this.f21413c = interfaceC1988e;
    }

    public boolean handles(Class<?> cls, Class<?> cls2) {
        return this.f21411a.isAssignableFrom(cls) && cls2.isAssignableFrom(this.f21412b);
    }
}
