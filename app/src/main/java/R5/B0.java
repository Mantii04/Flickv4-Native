package R5;

/* loaded from: classes2.dex */
public abstract class B0 {

    /* renamed from: a, reason: collision with root package name */
    public static final W5.G f3136a = new W5.G("COMPLETING_ALREADY");

    /* renamed from: b, reason: collision with root package name */
    public static final W5.G f3137b = new W5.G("COMPLETING_WAITING_CHILDREN");

    /* renamed from: c, reason: collision with root package name */
    public static final W5.G f3138c = new W5.G("COMPLETING_RETRY");

    /* renamed from: d, reason: collision with root package name */
    public static final W5.G f3139d = new W5.G("TOO_LATE_TO_CANCEL");

    /* renamed from: e, reason: collision with root package name */
    public static final W5.G f3140e = new W5.G("SEALED");

    /* renamed from: f, reason: collision with root package name */
    public static final X f3141f = new X(false);

    /* renamed from: g, reason: collision with root package name */
    public static final X f3142g = new X(true);

    public static final Object boxIncomplete(Object obj) {
        return obj instanceof InterfaceC0282k0 ? new C0284l0((InterfaceC0282k0) obj) : obj;
    }

    public static final Object unboxState(Object obj) {
        InterfaceC0282k0 interfaceC0282k0;
        C0284l0 c0284l0 = obj instanceof C0284l0 ? (C0284l0) obj : null;
        return (c0284l0 == null || (interfaceC0282k0 = c0284l0.f3180a) == null) ? obj : interfaceC0282k0;
    }
}
