package androidx.media3.exoplayer.text;

import Q3.A;
import S0.c;
import androidx.media3.common.C;
import androidx.media3.common.text.Cue;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class ReplacingCuesResolver implements CuesResolver {
    private final ArrayList<c> cuesWithTimingList = new ArrayList<>();

    private int getIndexOfCuesStartingAfter(long j7) {
        for (int i2 = 0; i2 < this.cuesWithTimingList.size(); i2++) {
            if (j7 < this.cuesWithTimingList.get(i2).f3251b) {
                return i2;
            }
        }
        return this.cuesWithTimingList.size();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002f  */
    @Override // androidx.media3.exoplayer.text.CuesResolver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean addCues(S0.c r10, long r11) {
        /*
            r9 = this;
            long r0 = r10.f3251b
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r1 = 0
            r4 = 1
            if (r0 == 0) goto Lf
            r0 = r4
            goto L10
        Lf:
            r0 = r1
        L10:
            P3.v.checkArgument(r0)
            long r5 = r10.f3251b
            int r0 = (r5 > r11 ? 1 : (r5 == r11 ? 0 : -1))
            if (r0 > 0) goto L25
            long r7 = r10.f3253d
            int r0 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r0 == 0) goto L23
            int r0 = (r11 > r7 ? 1 : (r11 == r7 ? 0 : -1))
            if (r0 >= 0) goto L25
        L23:
            r0 = r4
            goto L26
        L25:
            r0 = r1
        L26:
            java.util.ArrayList<S0.c> r2 = r9.cuesWithTimingList
            int r2 = r2.size()
            int r2 = r2 - r4
        L2d:
            if (r2 < 0) goto L56
            java.util.ArrayList<S0.c> r3 = r9.cuesWithTimingList
            java.lang.Object r3 = r3.get(r2)
            S0.c r3 = (S0.c) r3
            long r7 = r3.f3251b
            int r3 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r3 < 0) goto L44
            java.util.ArrayList<S0.c> r11 = r9.cuesWithTimingList
            int r2 = r2 + r4
            r11.add(r2, r10)
            return r0
        L44:
            java.util.ArrayList<S0.c> r3 = r9.cuesWithTimingList
            java.lang.Object r3 = r3.get(r2)
            S0.c r3 = (S0.c) r3
            long r7 = r3.f3251b
            int r3 = (r7 > r11 ? 1 : (r7 == r11 ? 0 : -1))
            if (r3 > 0) goto L53
            r0 = r1
        L53:
            int r2 = r2 + (-1)
            goto L2d
        L56:
            java.util.ArrayList<S0.c> r11 = r9.cuesWithTimingList
            r11.add(r1, r10)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.text.ReplacingCuesResolver.addCues(S0.c, long):boolean");
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public void clear() {
        this.cuesWithTimingList.clear();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public void discardCuesBeforeTimeUs(long j7) {
        int indexOfCuesStartingAfter = getIndexOfCuesStartingAfter(j7);
        if (indexOfCuesStartingAfter == 0) {
            return;
        }
        long j8 = this.cuesWithTimingList.get(indexOfCuesStartingAfter - 1).f3253d;
        if (j8 == C.TIME_UNSET || j8 >= j7) {
            indexOfCuesStartingAfter--;
        }
        this.cuesWithTimingList.subList(0, indexOfCuesStartingAfter).clear();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public ImmutableList<Cue> getCuesAtTimeUs(long j7) {
        int indexOfCuesStartingAfter = getIndexOfCuesStartingAfter(j7);
        if (indexOfCuesStartingAfter == 0) {
            return ImmutableList.of();
        }
        c cVar = this.cuesWithTimingList.get(indexOfCuesStartingAfter - 1);
        long j8 = cVar.f3253d;
        return (j8 == C.TIME_UNSET || j7 < j8) ? cVar.f3250a : ImmutableList.of();
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public long getNextCueChangeTimeUs(long j7) {
        if (this.cuesWithTimingList.isEmpty()) {
            return Long.MIN_VALUE;
        }
        if (j7 < this.cuesWithTimingList.get(0).f3251b) {
            return this.cuesWithTimingList.get(0).f3251b;
        }
        for (int i2 = 1; i2 < this.cuesWithTimingList.size(); i2++) {
            c cVar = this.cuesWithTimingList.get(i2);
            if (j7 < cVar.f3251b) {
                long j8 = this.cuesWithTimingList.get(i2 - 1).f3253d;
                long j9 = cVar.f3251b;
                return (j8 == C.TIME_UNSET || j8 <= j7 || j8 >= j9) ? j9 : j8;
            }
        }
        long j10 = ((c) A.getLast(this.cuesWithTimingList)).f3253d;
        if (j10 == C.TIME_UNSET || j7 >= j10) {
            return Long.MIN_VALUE;
        }
        return j10;
    }

    @Override // androidx.media3.exoplayer.text.CuesResolver
    public long getPreviousCueChangeTimeUs(long j7) {
        if (this.cuesWithTimingList.isEmpty() || j7 < this.cuesWithTimingList.get(0).f3251b) {
            return C.TIME_UNSET;
        }
        for (int i2 = 1; i2 < this.cuesWithTimingList.size(); i2++) {
            long j8 = this.cuesWithTimingList.get(i2).f3251b;
            if (j7 == j8) {
                return j8;
            }
            if (j7 < j8) {
                c cVar = this.cuesWithTimingList.get(i2 - 1);
                long j9 = cVar.f3253d;
                return (j9 == C.TIME_UNSET || j9 > j7) ? cVar.f3251b : j9;
            }
        }
        c cVar2 = (c) A.getLast(this.cuesWithTimingList);
        long j10 = cVar2.f3253d;
        return (j10 == C.TIME_UNSET || j7 < j10) ? cVar2.f3251b : j10;
    }
}
