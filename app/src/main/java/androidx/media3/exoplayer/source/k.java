package androidx.media3.exoplayer.source;

import android.os.Bundle;
import androidx.media3.common.TrackGroup;
import java.util.List;
import v0.C;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements P3.p {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7495a;

    public /* synthetic */ k(int i2) {
        this.f7495a = i2;
    }

    @Override // P3.p
    public final Object apply(Object obj) {
        List lambda$selectTracks$0;
        String lambda$init$0;
        Integer lambda$getTrackTypes$0;
        switch (this.f7495a) {
            case 0:
                lambda$selectTracks$0 = MergingMediaPeriod.lambda$selectTracks$0((MediaPeriod) obj);
                return lambda$selectTracks$0;
            case 1:
                lambda$init$0 = BundledExtractorsAdapter.lambda$init$0((C) obj);
                return lambda$init$0;
            case 2:
                lambda$getTrackTypes$0 = TrackGroupArray.lambda$getTrackTypes$0((TrackGroup) obj);
                return lambda$getTrackTypes$0;
            case 3:
                return ((TrackGroup) obj).toBundle();
            default:
                return TrackGroup.fromBundle((Bundle) obj);
        }
    }
}
