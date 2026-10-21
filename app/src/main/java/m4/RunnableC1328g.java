package m4;

/* renamed from: m4.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1328g implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ T4.d f18680b;

    public RunnableC1328g(T4.d dVar) {
        this.f18680b = dVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        throw new IllegalStateException("Transformation " + this.f18680b.key() + " returned input Bitmap but recycled it.");
    }
}
