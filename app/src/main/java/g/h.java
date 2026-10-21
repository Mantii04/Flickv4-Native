package g;

/* loaded from: classes.dex */
public final class h implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f16326b;

    public h(g gVar) {
        this.f16326b = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        g gVar = this.f16326b;
        gVar.a(true);
        gVar.invalidateSelf();
    }
}
