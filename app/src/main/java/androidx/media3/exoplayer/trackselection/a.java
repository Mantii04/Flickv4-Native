package androidx.media3.exoplayer.trackselection;

import androidx.media3.common.Format;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Comparator {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7553b;

    public /* synthetic */ a(int i2) {
        this.f7553b = i2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int compareNonQualityPreferences;
        int compareQualityPreferences;
        int lambda$new$0;
        int lambda$static$0;
        switch (this.f7553b) {
            case 0:
                return DefaultTrackSelector.ImageTrackInfo.compareSelections((List) obj, (List) obj2);
            case 1:
                return DefaultTrackSelector.VideoTrackInfo.compareSelections((List) obj, (List) obj2);
            case 2:
                return DefaultTrackSelector.AudioTrackInfo.compareSelections((List) obj, (List) obj2);
            case 3:
                return DefaultTrackSelector.TextTrackInfo.compareSelections((List) obj, (List) obj2);
            case 4:
                compareNonQualityPreferences = DefaultTrackSelector.VideoTrackInfo.compareNonQualityPreferences((DefaultTrackSelector.VideoTrackInfo) obj, (DefaultTrackSelector.VideoTrackInfo) obj2);
                return compareNonQualityPreferences;
            case 5:
                compareQualityPreferences = DefaultTrackSelector.VideoTrackInfo.compareQualityPreferences((DefaultTrackSelector.VideoTrackInfo) obj, (DefaultTrackSelector.VideoTrackInfo) obj2);
                return compareQualityPreferences;
            case 6:
                lambda$new$0 = BaseTrackSelection.lambda$new$0((Format) obj, (Format) obj2);
                return lambda$new$0;
            default:
                lambda$static$0 = DefaultTrackSelector.lambda$static$0((Integer) obj, (Integer) obj2);
                return lambda$static$0;
        }
    }
}
