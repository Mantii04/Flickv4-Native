package androidx.media3.exoplayer.dash.manifest;

import androidx.media3.common.util.UnstableApi;
import java.util.Collections;
import java.util.List;

@UnstableApi
/* loaded from: classes.dex */
public class Period {
    public final List<AdaptationSet> adaptationSets;
    public final Descriptor assetIdentifier;
    public final List<EventStream> eventStreams;
    public final String id;
    public final long startMs;

    public Period(String str, long j7, List<AdaptationSet> list) {
        this(str, j7, list, Collections.EMPTY_LIST, null);
    }

    public int getAdaptationSetIndex(int i2) {
        int size = this.adaptationSets.size();
        for (int i7 = 0; i7 < size; i7++) {
            if (this.adaptationSets.get(i7).type == i2) {
                return i7;
            }
        }
        return -1;
    }

    public Period(String str, long j7, List<AdaptationSet> list, List<EventStream> list2) {
        this(str, j7, list, list2, null);
    }

    public Period(String str, long j7, List<AdaptationSet> list, List<EventStream> list2, Descriptor descriptor) {
        this.id = str;
        this.startMs = j7;
        this.adaptationSets = Collections.unmodifiableList(list);
        this.eventStreams = Collections.unmodifiableList(list2);
        this.assetIdentifier = descriptor;
    }
}
