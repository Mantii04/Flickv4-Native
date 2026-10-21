package androidx.media3.exoplayer.source;

import androidx.media3.common.util.Consumer;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.ProgressiveMediaExtractor;
import androidx.media3.exoplayer.source.SampleQueue;

/* loaded from: classes.dex */
public final /* synthetic */ class p implements Consumer, ProgressiveMediaExtractor.Factory {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7505b;

    public /* synthetic */ p(int i2) {
        this.f7505b = i2;
    }

    @Override // androidx.media3.common.util.Consumer
    public void accept(Object obj) {
        switch (this.f7505b) {
            case 0:
                SampleQueue.lambda$new$0((SampleQueue.SharedSampleMetadata) obj);
                break;
            default:
                SpannedData.lambda$new$0(obj);
                break;
        }
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor.Factory
    public ProgressiveMediaExtractor createProgressiveMediaExtractor(PlayerId playerId) {
        ProgressiveMediaExtractor lambda$static$0;
        lambda$static$0 = MediaParserExtractorAdapter.lambda$static$0(playerId);
        return lambda$static$0;
    }
}
