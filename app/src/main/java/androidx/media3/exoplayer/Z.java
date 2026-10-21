package androidx.media3.exoplayer;

import androidx.media3.common.util.Clock;
import androidx.media3.exoplayer.StreamVolumeManager;
import androidx.media3.exoplayer.analytics.DefaultAnalyticsCollector;

/* loaded from: classes.dex */
public final /* synthetic */ class Z implements P3.p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7229a;

    public /* synthetic */ Z(int i2) {
        this.f7229a = i2;
    }

    @Override // P3.p
    public final Object apply(Object obj) {
        StreamVolumeManager.StreamVolumeState lambda$release$11;
        StreamVolumeManager.StreamVolumeState lambda$increaseVolume$5;
        StreamVolumeManager.StreamVolumeState lambda$decreaseVolume$7;
        String lambda$selectExtractor$0;
        switch (this.f7229a) {
            case 0:
                lambda$release$11 = StreamVolumeManager.lambda$release$11((StreamVolumeManager.StreamVolumeState) obj);
                return lambda$release$11;
            case 1:
                lambda$increaseVolume$5 = StreamVolumeManager.lambda$increaseVolume$5((StreamVolumeManager.StreamVolumeState) obj);
                return lambda$increaseVolume$5;
            case 2:
                lambda$decreaseVolume$7 = StreamVolumeManager.lambda$decreaseVolume$7((StreamVolumeManager.StreamVolumeState) obj);
                return lambda$decreaseVolume$7;
            case 3:
                return new DefaultAnalyticsCollector((Clock) obj);
            default:
                lambda$selectExtractor$0 = MediaExtractorCompatInternal.lambda$selectExtractor$0((v0.C) obj);
                return lambda$selectExtractor$0;
        }
    }
}
