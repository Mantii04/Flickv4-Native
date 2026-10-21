package e;

/* renamed from: e.B, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0814B implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a0 f13645b;

    public RunnableC0814B(a0 a0Var) {
        this.f13645b = a0Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        a0 a0Var = this.f13645b;
        if ((a0Var.f13726j0 & 1) != 0) {
            a0Var.k(0);
        }
        if ((a0Var.f13726j0 & 4096) != 0) {
            a0Var.k(108);
        }
        a0Var.f13725i0 = false;
        a0Var.f13726j0 = 0;
    }
}
