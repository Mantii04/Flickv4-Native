package androidx.media3.exoplayer.source.preload;

import P3.C;
import androidx.media3.exoplayer.LoadControl;
import androidx.media3.exoplayer.RenderersFactory;
import androidx.media3.exoplayer.source.preload.DefaultPreloadManager;
import androidx.media3.exoplayer.upstream.BandwidthMeter;

/* loaded from: classes.dex */
public final /* synthetic */ class f implements C {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7516b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7517e;

    public /* synthetic */ f(Object obj, int i2) {
        this.f7516b = i2;
        this.f7517e = obj;
    }

    @Override // P3.C
    public final Object get() {
        LoadControl lambda$setLoadControl$3;
        RenderersFactory lambda$setRenderersFactory$2;
        BandwidthMeter lambda$setBandwidthMeter$4;
        switch (this.f7516b) {
            case 0:
                lambda$setLoadControl$3 = DefaultPreloadManager.Builder.lambda$setLoadControl$3((LoadControl) this.f7517e);
                return lambda$setLoadControl$3;
            case 1:
                lambda$setRenderersFactory$2 = DefaultPreloadManager.Builder.lambda$setRenderersFactory$2((RenderersFactory) this.f7517e);
                return lambda$setRenderersFactory$2;
            default:
                lambda$setBandwidthMeter$4 = DefaultPreloadManager.Builder.lambda$setBandwidthMeter$4((BandwidthMeter) this.f7517e);
                return lambda$setBandwidthMeter$4;
        }
    }
}
