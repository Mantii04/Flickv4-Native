package androidx.media3.exoplayer.source;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7496b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ProgressiveMediaPeriod f7497e;

    public /* synthetic */ l(ProgressiveMediaPeriod progressiveMediaPeriod, int i2) {
        this.f7496b = i2;
        this.f7497e = progressiveMediaPeriod;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7496b) {
            case 0:
                this.f7497e.lambda$onLengthKnown$2();
                break;
            case 1:
                this.f7497e.maybeFinishPrepare();
                break;
            default:
                this.f7497e.lambda$new$0();
                break;
        }
    }
}
