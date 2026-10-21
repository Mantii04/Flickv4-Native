package S2;

/* loaded from: classes.dex */
public abstract class C {
    public static B builder() {
        return new C0321k();
    }

    public abstract P2.b getEncoding();

    public byte[] getPayload() {
        l lVar = (l) this;
        return (byte[]) lVar.f3352d.apply(lVar.f3351c.getPayload());
    }

    public abstract E getTransportContext();

    public abstract String getTransportName();
}
