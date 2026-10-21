package androidx.media3.exoplayer.mediacodec;

import androidx.media3.exoplayer.FormatHolder;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7431b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7432e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7433f;

    public /* synthetic */ a(int i2, Object obj, Object obj2) {
        this.f7431b = i2;
        this.f7432e = obj;
        this.f7433f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7431b) {
            case 0:
                ((AsynchronousMediaCodecAdapter) this.f7432e).lambda$useInputBuffer$0((Runnable) this.f7433f);
                break;
            default:
                ((MediaCodecRenderer) this.f7432e).lambda$feedInputBuffer$0((FormatHolder) this.f7433f);
                break;
        }
    }
}
