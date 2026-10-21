package androidx.leanback.widget;

/* loaded from: classes.dex */
public abstract class H0 {

    /* renamed from: b, reason: collision with root package name */
    public P f6550b;

    /* renamed from: a, reason: collision with root package name */
    public int f6549a = 1;

    /* renamed from: c, reason: collision with root package name */
    public long f6551c = -1;

    public H0(P p6) {
        setHeaderItem(p6);
    }

    public final P getHeaderItem() {
        return this.f6550b;
    }

    public final long getId() {
        if ((this.f6549a & 1) != 1) {
            return this.f6551c;
        }
        P headerItem = getHeaderItem();
        if (headerItem != null) {
            return headerItem.getId();
        }
        return -1L;
    }

    public final void setHeaderItem(P p6) {
        this.f6550b = p6;
    }

    public final void setId(long j7) {
        this.f6551c = j7;
        this.f6549a &= -2;
    }
}
