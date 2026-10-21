package androidx.media3.exoplayer.source.preload;

import P3.C;
import android.content.Context;
import androidx.media3.exoplayer.RenderersFactory;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.preload.DefaultPreloadManager;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements C {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7518b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f7519e;

    public /* synthetic */ g(Context context, int i2) {
        this.f7518b = i2;
        this.f7519e = context;
    }

    @Override // P3.C
    public final Object get() {
        DefaultMediaSourceFactory lambda$new$0;
        BandwidthMeter singletonInstance;
        RenderersFactory lambda$new$1;
        switch (this.f7518b) {
            case 0:
                lambda$new$0 = DefaultPreloadManager.MediaSourceFactorySupplier.lambda$new$0(this.f7519e);
                return lambda$new$0;
            case 1:
                singletonInstance = DefaultBandwidthMeter.getSingletonInstance(this.f7519e);
                return singletonInstance;
            default:
                lambda$new$1 = DefaultPreloadManager.Builder.lambda$new$1(this.f7519e);
                return lambda$new$1;
        }
    }
}
