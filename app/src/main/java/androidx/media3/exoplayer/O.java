package androidx.media3.exoplayer;

import android.util.Pair;
import androidx.media3.exoplayer.MediaSourceList;
import androidx.media3.exoplayer.source.MediaLoadData;

/* loaded from: classes.dex */
public final /* synthetic */ class O implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7202b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MediaSourceList.ForwardingEventListener f7203e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Pair f7204f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ MediaLoadData f7205j;

    public /* synthetic */ O(MediaSourceList.ForwardingEventListener forwardingEventListener, Pair pair, MediaLoadData mediaLoadData, int i2) {
        this.f7202b = i2;
        this.f7203e = forwardingEventListener;
        this.f7204f = pair;
        this.f7205j = mediaLoadData;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7202b) {
            case 0:
                this.f7203e.lambda$onUpstreamDiscarded$4(this.f7204f, this.f7205j);
                break;
            default:
                this.f7203e.lambda$onDownstreamFormatChanged$5(this.f7204f, this.f7205j);
                break;
        }
    }
}
