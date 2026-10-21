package R5;

/* loaded from: classes2.dex */
public final class X implements InterfaceC0282k0 {

    /* renamed from: b, reason: collision with root package name */
    public final boolean f3164b;

    public X(boolean z6) {
        this.f3164b = z6;
    }

    @Override // R5.InterfaceC0282k0
    public F0 getList() {
        return null;
    }

    @Override // R5.InterfaceC0282k0
    public boolean isActive() {
        return this.f3164b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Empty{");
        sb.append(isActive() ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
