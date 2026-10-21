package x0;

import v0.d0;
import v0.e0;
import v0.g0;

/* loaded from: classes.dex */
public final class b implements g0 {

    /* renamed from: a, reason: collision with root package name */
    public final long f20722a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f20723b;

    public b(d dVar, long j7) {
        this.f20723b = dVar;
        this.f20722a = j7;
    }

    @Override // v0.g0
    public long getDurationUs() {
        return this.f20722a;
    }

    @Override // v0.g0
    public e0 getSeekPoints(long j7) {
        d dVar = this.f20723b;
        e0 seekPoints = dVar.f20735i[0].getSeekPoints(j7);
        int i2 = 1;
        while (true) {
            g[] gVarArr = dVar.f20735i;
            if (i2 >= gVarArr.length) {
                return seekPoints;
            }
            e0 seekPoints2 = gVarArr[i2].getSeekPoints(j7);
            if (seekPoints2.f20453a.f20475b < seekPoints.f20453a.f20475b) {
                seekPoints = seekPoints2;
            }
            i2++;
        }
    }

    @Override // v0.g0
    public final /* synthetic */ boolean isEstimated() {
        return d0.a(this);
    }

    @Override // v0.g0
    public boolean isSeekable() {
        return true;
    }
}
