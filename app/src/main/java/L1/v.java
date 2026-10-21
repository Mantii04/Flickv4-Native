package L1;

/* loaded from: classes.dex */
public final class v implements Runnable {

    /* renamed from: j, reason: collision with root package name */
    public static final String f1893j = B1.t.tagWithPrefix("StopWorkRunnable");

    /* renamed from: b, reason: collision with root package name */
    public final C1.G f1894b;

    /* renamed from: e, reason: collision with root package name */
    public final C1.v f1895e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f1896f;

    public v(C1.G g7, C1.v vVar, boolean z6) {
        this.f1894b = g7;
        this.f1895e = vVar;
        this.f1896f = z6;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z6 = this.f1896f;
        C1.G g7 = this.f1894b;
        C1.v vVar = this.f1895e;
        boolean stopForegroundWork = z6 ? g7.getProcessor().stopForegroundWork(vVar) : g7.getProcessor().stopWork(vVar);
        B1.t.get().debug(f1893j, "StopWorkRunnable for " + vVar.getId().getWorkSpecId() + "; Processor.stopWork = " + stopForegroundWork);
    }
}
