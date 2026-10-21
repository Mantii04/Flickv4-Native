package androidx.media3.common.util;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7120b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BackgroundThreadStateHandler f7121e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7122f;

    public /* synthetic */ a(BackgroundThreadStateHandler backgroundThreadStateHandler, Object obj, int i2) {
        this.f7120b = i2;
        this.f7121e = backgroundThreadStateHandler;
        this.f7122f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7120b) {
            case 0:
                this.f7121e.lambda$setStateInBackground$2(this.f7122f);
                break;
            default:
                this.f7121e.lambda$updateStateAsync$0(this.f7122f);
                break;
        }
    }
}
