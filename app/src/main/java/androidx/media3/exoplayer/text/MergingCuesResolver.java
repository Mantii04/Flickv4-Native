package androidx.media3.exoplayer.text;

import P3.p;
import P3.v;
import Q3.C0248s;
import S0.c;
import androidx.media3.common.C;
import androidx.media3.common.text.Cue;
import com.google.common.collect.G;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
final class MergingCuesResolver implements CuesResolver {
    private static final G CUES_DISPLAY_PRIORITY_COMPARATOR;
    private final List<c> cuesWithTimingList = new ArrayList();

    static {
        final int i2 = 0;
        final int i7 = 1;
        CUES_DISPLAY_PRIORITY_COMPARATOR = G.natural().onResultOf(new p() { // from class: androidx.media3.exoplayer.text.a
            @Override // P3.p
            public final Object apply(Object obj) {
                Long lambda$static$0;
                Long lambda$static$1;
                c cVar = (c) obj;
                switch (i2) {
                    case 0:
                        lambda$static$0 = MergingCuesResolver.lambda$static$0(cVar);
                        return lambda$static$0;
                    default:
                        lambda$static$1 = MergingCuesResolver.lambda$static$1(cVar);
                        return lambda$static$1;
                }
            }
        }).compound(G.natural().reverse().onResultOf(new p() { // from class: androidx.media3.exoplayer.text.a
            @Override // P3.p
            public final Object apply(Object obj) {
                Long lambda$static$0;
                Long lambda$static$1;
                c cVar = (c) obj;
                switch (i7) {
                    case 0:
                        lambda$static$0 = MergingCuesResolver.lambda$static$0(cVar);
                        return lambda$static$0;
                    default:
                        lambda$static$1 = MergingCuesResolver.lambda$static$1(cVar);
                        return lambda$static$1;
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$static$0(c cVar) {
        return Long.valueOf(cVar.f3251b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$static$1(c cVar) {
        return Long.valueOf(cVar.f3252c);
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public boolean addCues(c cVar, long j7) {
        v.checkArgument(cVar.f3251b != C.TIME_UNSET);
        v.checkArgument(cVar.f3252c != C.TIME_UNSET);
        long j8 = cVar.f3251b;
        boolean z6 = j8 <= j7 && j7 < cVar.f3253d;
        for (int size = this.cuesWithTimingList.size() - 1; size >= 0; size--) {
            if (j8 >= this.cuesWithTimingList.get(size).f3251b) {
                this.cuesWithTimingList.add(size + 1, cVar);
                return z6;
            }
        }
        this.cuesWithTimingList.add(0, cVar);
        return z6;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public void clear() {
        this.cuesWithTimingList.clear();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public void discardCuesBeforeTimeUs(long j7) {
        int i2 = 0;
        while (i2 < this.cuesWithTimingList.size()) {
            long j8 = this.cuesWithTimingList.get(i2).f3251b;
            if (j7 > j8 && j7 > this.cuesWithTimingList.get(i2).f3253d) {
                this.cuesWithTimingList.remove(i2);
                i2--;
            } else if (j7 < j8) {
                return;
            }
            i2++;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.text.CuesResolver
    public ImmutableList<Cue> getCuesAtTimeUs(long j7) {
        if (!this.cuesWithTimingList.isEmpty()) {
            if (j7 >= this.cuesWithTimingList.get(0).f3251b) {
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < this.cuesWithTimingList.size(); i2++) {
                    c cVar = this.cuesWithTimingList.get(i2);
                    if (j7 >= cVar.f3251b && j7 < cVar.f3253d) {
                        arrayList.add(cVar);
                    }
                    if (j7 < cVar.f3251b) {
                        break;
                    }
                }
                ImmutableList sortedCopyOf = ImmutableList.sortedCopyOf(CUES_DISPLAY_PRIORITY_COMPARATOR, arrayList);
                C0248s builder = ImmutableList.builder();
                for (int i7 = 0; i7 < sortedCopyOf.size(); i7++) {
                    builder.addAll((Iterable<Object>) ((c) sortedCopyOf.get(i7)).f3250a);
                }
                return builder.build();
            }
        }
        return ImmutableList.of();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public long getNextCueChangeTimeUs(long j7) {
        int i2 = 0;
        long j8 = -9223372036854775807L;
        while (true) {
            if (i2 >= this.cuesWithTimingList.size()) {
                break;
            }
            long j9 = this.cuesWithTimingList.get(i2).f3251b;
            long j10 = this.cuesWithTimingList.get(i2).f3253d;
            if (j7 < j9) {
                j8 = j8 == C.TIME_UNSET ? j9 : Math.min(j8, j9);
            } else {
                if (j7 < j10) {
                    j8 = j8 == C.TIME_UNSET ? j10 : Math.min(j8, j10);
                }
                i2++;
            }
        }
        if (j8 != C.TIME_UNSET) {
            return j8;
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public long getPreviousCueChangeTimeUs(long j7) {
        if (this.cuesWithTimingList.isEmpty()) {
            return C.TIME_UNSET;
        }
        if (j7 < this.cuesWithTimingList.get(0).f3251b) {
            return C.TIME_UNSET;
        }
        long j8 = this.cuesWithTimingList.get(0).f3251b;
        for (int i2 = 0; i2 < this.cuesWithTimingList.size(); i2++) {
            long j9 = this.cuesWithTimingList.get(i2).f3251b;
            long j10 = this.cuesWithTimingList.get(i2).f3253d;
            if (j10 > j7) {
                if (j9 > j7) {
                    break;
                }
                j8 = Math.max(j8, j9);
            } else {
                j8 = Math.max(j8, j10);
            }
        }
        return j8;
    }
}
