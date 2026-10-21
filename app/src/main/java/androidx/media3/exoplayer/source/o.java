package androidx.media3.exoplayer.source;

import P3.C;
import androidx.media3.common.util.Consumer;
import androidx.media3.datasource.DataSource;
import androidx.media3.exoplayer.source.DefaultMediaSourceFactory;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.exoplayer.source.SingleSampleMediaSource;
import androidx.media3.exoplayer.util.ReleasableExecutor;

/* loaded from: classes.dex */
public final /* synthetic */ class o implements C {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7502b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7503e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7504f;

    public /* synthetic */ o(int i2, Object obj, Object obj2) {
        this.f7502b = i2;
        this.f7503e = obj;
        this.f7504f = obj2;
    }

    @Override // P3.C
    public final Object get() {
        ReleasableExecutor lambda$setDownloadExecutor$1;
        ReleasableExecutor lambda$setDownloadExecutor$0;
        MediaSource.Factory lambda$loadSupplier$4;
        switch (this.f7502b) {
            case 0:
                lambda$setDownloadExecutor$1 = ProgressiveMediaSource.Factory.lambda$setDownloadExecutor$1((C) this.f7503e, (Consumer) this.f7504f);
                return lambda$setDownloadExecutor$1;
            case 1:
                lambda$setDownloadExecutor$0 = SingleSampleMediaSource.Factory.lambda$setDownloadExecutor$0((C) this.f7503e, (Consumer) this.f7504f);
                return lambda$setDownloadExecutor$0;
            default:
                lambda$loadSupplier$4 = ((DefaultMediaSourceFactory.DelegateFactoryLoader) this.f7503e).lambda$loadSupplier$4((DataSource.Factory) this.f7504f);
                return lambda$loadSupplier$4;
        }
    }
}
