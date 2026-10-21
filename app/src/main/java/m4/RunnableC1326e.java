package m4;

/* renamed from: m4.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1326e implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ S f18677b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RuntimeException f18678e;

    public RunnableC1326e(S s6, RuntimeException runtimeException) {
        this.f18677b = s6;
        this.f18678e = runtimeException;
    }

    @Override // java.lang.Runnable
    public void run() {
        throw new RuntimeException("Transformation " + ((T4.d) this.f18677b).key() + " crashed with exception.", this.f18678e);
    }
}
