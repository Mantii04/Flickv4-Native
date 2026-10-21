package androidx.media3.exoplayer.source;

import androidx.media3.common.util.Consumer;
import v0.g0;

/* loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7498b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7499e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7500f;

    public /* synthetic */ m(int i2, Object obj, Object obj2) {
        this.f7498b = i2;
        this.f7499e = obj;
        this.f7500f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7498b) {
            case 0:
                ((ProgressiveMediaPeriod) this.f7499e).lambda$seekMap$1((g0) this.f7500f);
                break;
            default:
                ((Consumer) this.f7499e).accept((MediaSourceEventListener) this.f7500f);
                break;
        }
    }
}
