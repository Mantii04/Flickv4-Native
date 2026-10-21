package m4;

/* renamed from: m4.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1329h implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ T4.d f18681b;

    public RunnableC1329h(T4.d dVar) {
        this.f18681b = dVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        throw new IllegalStateException("Transformation " + this.f18681b.key() + " mutated input Bitmap but failed to recycle the original.");
    }
}
