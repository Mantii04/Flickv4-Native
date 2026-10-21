package l;

import M.AbstractC0181p0;

/* renamed from: l.k1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1159k1 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C1162l1 f17913b;

    public RunnableC1159k1(C1162l1 c1162l1) {
        this.f17913b = c1162l1;
    }

    @Override // java.lang.Runnable
    public void run() {
        C1162l1 c1162l1 = this.f17913b;
        W0 w02 = c1162l1.f17932f;
        if (w02 == null || !AbstractC0181p0.isAttachedToWindow(w02) || c1162l1.f17932f.getCount() <= c1162l1.f17932f.getChildCount() || c1162l1.f17932f.getChildCount() > c1162l1.f17942v) {
            return;
        }
        c1162l1.f17929I.setInputMethodMode(2);
        c1162l1.show();
    }
}
