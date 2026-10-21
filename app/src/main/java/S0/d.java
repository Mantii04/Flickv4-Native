package S0;

import P0.y;
import P3.v;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Util;
import com.google.common.collect.G;
import com.google.common.collect.ImmutableList;

/* loaded from: classes.dex */
public final class d implements i {

    /* renamed from: f, reason: collision with root package name */
    public static final G f3254f = G.natural().onResultOf(new y(2));

    /* renamed from: b, reason: collision with root package name */
    public final ImmutableList f3255b;

    /* renamed from: e, reason: collision with root package name */
    public final long[] f3256e;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public d(java.util.List<S0.c> r20) {
        /*
            Method dump skipped, instructions count: 225
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: S0.d.<init>(java.util.List):void");
    }

    @Override // S0.i
    public long getEventTime(int i2) {
        v.checkArgument(i2 < this.f3255b.size());
        return this.f3256e[i2];
    }

    @Override // S0.i
    public int getEventTimeCount() {
        return this.f3255b.size();
    }

    @Override // S0.i
    public int getNextEventTimeIndex(long j7) {
        int binarySearchCeil = Util.binarySearchCeil(this.f3256e, j7, false, false);
        if (binarySearchCeil < this.f3255b.size()) {
            return binarySearchCeil;
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // S0.i
    public ImmutableList<Cue> getCues(long j7) {
        int binarySearchFloor = Util.binarySearchFloor(this.f3256e, j7, true, false);
        return binarySearchFloor == -1 ? ImmutableList.of() : (ImmutableList) this.f3255b.get(binarySearchFloor);
    }
}
