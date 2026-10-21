package androidx.media3.exoplayer.source.ads;

import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;
import com.google.common.collect.ImmutableMap;
import java.io.IOException;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7475b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7476e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7477f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f7478j;

    public /* synthetic */ d(Object obj, Object obj2, Object obj3, int i2) {
        this.f7475b = i2;
        this.f7476e = obj;
        this.f7477f = obj2;
        this.f7478j = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7475b) {
            case 0:
                ((AdsMediaSource.AdPrepareListener) this.f7476e).lambda$onPrepareError$1((MediaSource.MediaPeriodId) this.f7477f, (IOException) this.f7478j);
                break;
            default:
                ((ServerSideAdInsertionMediaSource) this.f7476e).lambda$setAdPlaybackStates$0((ImmutableMap) this.f7477f, (Timeline) this.f7478j);
                break;
        }
    }
}
