package f1;

/* loaded from: classes.dex */
public final class T {

    /* renamed from: a, reason: collision with root package name */
    public final C0880B f14183a;

    public T(C0880B c0880b) {
        this.f14183a = c0880b;
    }

    public int getSelectionState() {
        C0880B c0880b = this.f14183a;
        if (c0880b != null) {
            return c0880b.getSelectionState();
        }
        return 1;
    }

    public boolean isGroupable() {
        C0880B c0880b = this.f14183a;
        return c0880b != null && c0880b.isGroupable();
    }

    public boolean isTransferable() {
        C0880B c0880b = this.f14183a;
        return c0880b != null && c0880b.isTransferable();
    }

    public boolean isUnselectable() {
        C0880B c0880b = this.f14183a;
        return c0880b == null || c0880b.isUnselectable();
    }
}
