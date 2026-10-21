package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.Format;
import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import java.util.Map;
import v0.C;
import v0.H;
import v0.I;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements I, Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7484b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7485e;

    public /* synthetic */ c(Object obj, Object obj2) {
        this.f7484b = obj;
        this.f7485e = obj2;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        ((MediaSourceEventListener.EventDispatcher) this.f7484b).lambda$downstreamFormatChanged$5((MediaLoadData) this.f7485e, (MediaSourceEventListener) obj);
    }

    @Override // v0.I
    public C[] createExtractors() {
        C[] lambda$createMediaSource$0;
        lambda$createMediaSource$0 = ((DefaultMediaSourceFactory) this.f7484b).lambda$createMediaSource$0((Format) this.f7485e);
        return lambda$createMediaSource$0;
    }

    @Override // v0.I
    public /* synthetic */ I experimentalSetCodecsToParseWithinGopSampleDependencies(int i2) {
        return H.b(this, i2);
    }

    @Override // v0.I
    public /* synthetic */ I experimentalSetTextTrackTranscodingEnabled(boolean z6) {
        return H.c(this, z6);
    }

    @Override // v0.I
    public /* synthetic */ I setSubtitleParserFactory(S0.q qVar) {
        return H.d(this, qVar);
    }

    @Override // v0.I
    public /* synthetic */ C[] createExtractors(Uri uri, Map map) {
        return H.a(this, uri, map);
    }
}
