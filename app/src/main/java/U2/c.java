package U2;

/* loaded from: classes.dex */
public final class c implements b {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3795a;

    public c(Object obj) {
        this.f3795a = obj;
    }

    public static <T> b create(T t6) {
        return new c(d.checkNotNull(t6, "instance cannot be null"));
    }

    @Override // t5.InterfaceC1657a
    public Object get() {
        return this.f3795a;
    }
}
