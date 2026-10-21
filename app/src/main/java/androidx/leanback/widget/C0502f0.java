package androidx.leanback.widget;

/* renamed from: androidx.leanback.widget.f0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0502f0 extends H0 {

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0526r0 f6789d;

    public C0502f0(P p6, AbstractC0526r0 abstractC0526r0) {
        super(p6);
        this.f6789d = abstractC0526r0;
        if (abstractC0526r0 == null) {
            throw new IllegalArgumentException("ObjectAdapter cannot be null");
        }
    }

    public final AbstractC0526r0 getAdapter() {
        return this.f6789d;
    }

    public CharSequence getContentDescription() {
        P headerItem = getHeaderItem();
        if (headerItem == null) {
            return null;
        }
        CharSequence contentDescription = headerItem.getContentDescription();
        return contentDescription != null ? contentDescription : headerItem.getName();
    }
}
