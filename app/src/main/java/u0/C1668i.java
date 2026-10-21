package u0;

/* renamed from: u0.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1668i extends Thread {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f20242b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1668i(j jVar) {
        super("ExoPlayer:SimpleDecoder");
        this.f20242b = jVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        j.access$000(this.f20242b);
    }
}
