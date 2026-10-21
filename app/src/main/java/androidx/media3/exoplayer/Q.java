package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.exoplayer.MediaSourceList;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;

/* loaded from: classes.dex */
public final /* synthetic */ class Q implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7212b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MediaSourceList.ForwardingEventListener f7213e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Pair f7214f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ LoadEventInfo f7215j;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ MediaLoadData f7216m;

    public /* synthetic */ Q(MediaSourceList.ForwardingEventListener forwardingEventListener, Pair pair, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i2) {
        this.f7212b = i2;
        this.f7213e = forwardingEventListener;
        this.f7214f = pair;
        this.f7215j = loadEventInfo;
        this.f7216m = mediaLoadData;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7212b) {
            case 0:
                this.f7213e.lambda$onLoadCanceled$2(this.f7214f, this.f7215j, this.f7216m);
                break;
            default:
                this.f7213e.lambda$onLoadCompleted$1(this.f7214f, this.f7215j, this.f7216m);
                break;
        }
    }
}
