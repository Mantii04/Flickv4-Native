package Q0;

import P3.v;
import androidx.media3.common.util.Util;
import v0.D;
import v0.N;
import v0.O;
import v0.P;
import v0.g0;

/* loaded from: classes.dex */
public final class c implements h {

    /* renamed from: a, reason: collision with root package name */
    public final P f2756a;

    /* renamed from: b, reason: collision with root package name */
    public final O f2757b;

    /* renamed from: c, reason: collision with root package name */
    public long f2758c = -1;

    /* renamed from: d, reason: collision with root package name */
    public long f2759d = -1;

    public c(P p6, O o6) {
        this.f2756a = p6;
        this.f2757b = o6;
    }

    @Override // Q0.h
    public g0 createSeekMap() {
        v.checkState(this.f2758c != -1);
        return new N(this.f2756a, this.f2758c);
    }

    @Override // Q0.h
    public long read(D d7) {
        long j7 = this.f2759d;
        if (j7 < 0) {
            return -1L;
        }
        long j8 = -(j7 + 2);
        this.f2759d = -1L;
        return j8;
    }

    public void setFirstFrameOffset(long j7) {
        this.f2758c = j7;
    }

    @Override // Q0.h
    public void startSeek(long j7) {
        long[] jArr = this.f2757b.f20377a;
        this.f2759d = jArr[Util.binarySearchFloor(jArr, j7, true, true)];
    }
}
