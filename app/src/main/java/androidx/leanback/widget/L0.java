package androidx.leanback.widget;

/* loaded from: classes.dex */
public final class L0 extends A0 {

    /* renamed from: b, reason: collision with root package name */
    public final M0 f6593b;

    public L0(I0 i02, M0 m02) {
        super(i02);
        i02.addRowView(m02.f6460a);
        J0 j02 = m02.f6597c;
        if (j02 != null) {
            i02.addHeaderView(j02.f6460a);
        }
        this.f6593b = m02;
        m02.f6596b = this;
    }
}
