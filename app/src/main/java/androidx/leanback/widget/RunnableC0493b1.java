package androidx.leanback.widget;

/* renamed from: androidx.leanback.widget.b1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0493b1 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchEditText f6772b;

    public RunnableC0493b1(SearchEditText searchEditText) {
        this.f6772b = searchEditText;
    }

    @Override // java.lang.Runnable
    public void run() {
        InterfaceC0496c1 interfaceC0496c1 = this.f6772b.f6695q;
        if (interfaceC0496c1 != null) {
            ((S0) interfaceC0496c1).onKeyboardDismiss();
        }
    }
}
