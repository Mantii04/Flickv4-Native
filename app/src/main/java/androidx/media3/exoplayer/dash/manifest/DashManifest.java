package androidx.media3.exoplayer.dash.manifest;

import android.net.Uri;
import androidx.media3.common.C;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.offline.FilterableManifest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

@UnstableApi
/* loaded from: classes.dex */
public class DashManifest implements FilterableManifest<DashManifest> {
    public final long availabilityStartTimeMs;
    public final long durationMs;
    public final boolean dynamic;
    public final Uri location;
    public final long minBufferTimeMs;
    public final long minUpdatePeriodMs;
    private final List<Period> periods;
    public final ProgramInformation programInformation;
    public final long publishTimeMs;
    public final ServiceDescriptionElement serviceDescription;
    public final long suggestedPresentationDelayMs;
    public final long timeShiftBufferDepthMs;
    public final UtcTimingElement utcTiming;

    public DashManifest(long j7, long j8, long j9, boolean z6, long j10, long j11, long j12, long j13, ProgramInformation programInformation, UtcTimingElement utcTimingElement, ServiceDescriptionElement serviceDescriptionElement, Uri uri, List<Period> list) {
        this.availabilityStartTimeMs = j7;
        this.durationMs = j8;
        this.minBufferTimeMs = j9;
        this.dynamic = z6;
        this.minUpdatePeriodMs = j10;
        this.timeShiftBufferDepthMs = j11;
        this.suggestedPresentationDelayMs = j12;
        this.publishTimeMs = j13;
        this.programInformation = programInformation;
        this.utcTiming = utcTimingElement;
        this.location = uri;
        this.serviceDescription = serviceDescriptionElement;
        this.periods = list == null ? Collections.EMPTY_LIST : list;
    }

    private static ArrayList<AdaptationSet> copyAdaptationSets(List<AdaptationSet> list, LinkedList<StreamKey> linkedList) {
        StreamKey poll = linkedList.poll();
        int i2 = poll.periodIndex;
        ArrayList<AdaptationSet> arrayList = new ArrayList<>();
        do {
            int i7 = poll.groupIndex;
            AdaptationSet adaptationSet = list.get(i7);
            List<Representation> list2 = adaptationSet.representations;
            ArrayList arrayList2 = new ArrayList();
            do {
                arrayList2.add(list2.get(poll.streamIndex));
                poll = linkedList.poll();
                if (poll.periodIndex != i2) {
                    break;
                }
            } while (poll.groupIndex == i7);
            arrayList.add(new AdaptationSet(adaptationSet.id, adaptationSet.type, arrayList2, adaptationSet.accessibilityDescriptors, adaptationSet.essentialProperties, adaptationSet.supplementalProperties));
        } while (poll.periodIndex == i2);
        linkedList.addFirst(poll);
        return arrayList;
    }

    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    public /* bridge */ /* synthetic */ DashManifest copy(List list) {
        return copy((List<StreamKey>) list);
    }

    public final Period getPeriod(int i2) {
        return this.periods.get(i2);
    }

    public final int getPeriodCount() {
        return this.periods.size();
    }

    public final long getPeriodDurationMs(int i2) {
        long j7;
        long j8;
        if (i2 == this.periods.size() - 1) {
            j7 = this.durationMs;
            if (j7 == C.TIME_UNSET) {
                return C.TIME_UNSET;
            }
            j8 = this.periods.get(i2).startMs;
        } else {
            j7 = this.periods.get(i2 + 1).startMs;
            j8 = this.periods.get(i2).startMs;
        }
        return j7 - j8;
    }

    public final long getPeriodDurationUs(int i2) {
        return Util.msToUs(getPeriodDurationMs(i2));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    public final DashManifest copy(List<StreamKey> list) {
        long j7;
        LinkedList linkedList = new LinkedList(list);
        Collections.sort(linkedList);
        linkedList.add(new StreamKey(-1, -1, -1));
        ArrayList arrayList = new ArrayList();
        long j8 = 0;
        int i2 = 0;
        while (true) {
            int periodCount = getPeriodCount();
            j7 = C.TIME_UNSET;
            if (i2 >= periodCount) {
                break;
            }
            if (((StreamKey) linkedList.peek()).periodIndex != i2) {
                long periodDurationMs = getPeriodDurationMs(i2);
                if (periodDurationMs != C.TIME_UNSET) {
                    j8 += periodDurationMs;
                }
            } else {
                Period period = getPeriod(i2);
                arrayList.add(new Period(period.id, period.startMs - j8, copyAdaptationSets(period.adaptationSets, linkedList), period.eventStreams));
            }
            i2++;
        }
        long j9 = this.durationMs;
        if (j9 != C.TIME_UNSET) {
            j7 = j9 - j8;
        }
        return new DashManifest(this.availabilityStartTimeMs, j7, this.minBufferTimeMs, this.dynamic, this.minUpdatePeriodMs, this.timeShiftBufferDepthMs, this.suggestedPresentationDelayMs, this.publishTimeMs, this.programInformation, this.utcTiming, this.serviceDescription, this.location, arrayList);
    }
}
