package f1;

/* renamed from: f1.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0891e implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f14222b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0893f f14223e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f14224f;

    public /* synthetic */ RunnableC0891e(C0893f c0893f, int i2, int i7) {
        this.f14222b = i7;
        this.f14223e = c0893f;
        this.f14224f = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f14222b) {
            case 0:
                U u6 = this.f14223e.f14226g.f14229c.f14256s;
                if (u6 != null) {
                    u6.requestSetVolume(this.f14224f);
                    break;
                }
                break;
            default:
                U u7 = this.f14223e.f14226g.f14229c.f14256s;
                if (u7 != null) {
                    u7.requestUpdateVolume(this.f14224f);
                    break;
                }
                break;
        }
    }
}
