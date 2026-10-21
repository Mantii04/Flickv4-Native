package androidx.media3.exoplayer.source;

import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.source.MediaSourceEventListener;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7491b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MediaSourceEventListener.EventDispatcher f7492e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ LoadEventInfo f7493f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ MediaLoadData f7494j;

    public /* synthetic */ j(MediaSourceEventListener.EventDispatcher eventDispatcher, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, int i2) {
        this.f7491b = i2;
        this.f7492e = eventDispatcher;
        this.f7493f = loadEventInfo;
        this.f7494j = mediaLoadData;
    }

    @Override // androidx.media3.common.util.Consumer
    public final void accept(Object obj) {
        MediaSourceEventListener mediaSourceEventListener = (MediaSourceEventListener) obj;
        switch (this.f7491b) {
            case 0:
                this.f7492e.lambda$loadCompleted$1(this.f7493f, this.f7494j, mediaSourceEventListener);
                break;
            default:
                this.f7492e.lambda$loadCanceled$2(this.f7493f, this.f7494j, mediaSourceEventListener);
                break;
        }
    }
}
