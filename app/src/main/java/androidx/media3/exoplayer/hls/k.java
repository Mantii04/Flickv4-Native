package androidx.media3.exoplayer.hls;

import P3.w;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements w {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7416b;

    public /* synthetic */ k(int i2) {
        this.f7416b = i2;
    }

    @Override // P3.w
    public final boolean apply(Object obj) {
        boolean lambda$peekId3PrivTimestamp$0;
        boolean lambda$isFmp4Variant$0;
        switch (this.f7416b) {
            case 0:
                lambda$peekId3PrivTimestamp$0 = HlsMediaChunk.lambda$peekId3PrivTimestamp$0((J0.o) obj);
                return lambda$peekId3PrivTimestamp$0;
            default:
                lambda$isFmp4Variant$0 = DefaultHlsExtractorFactory.lambda$isFmp4Variant$0((HlsTrackMetadataEntry) obj);
                return lambda$isFmp4Variant$0;
        }
    }
}
