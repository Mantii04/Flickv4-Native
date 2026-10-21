package T0;

import S0.m;

/* loaded from: classes.dex */
public final class h extends m implements Comparable {

    /* renamed from: e, reason: collision with root package name */
    public long f3514e;

    @Override // java.lang.Comparable
    public int compareTo(h hVar) {
        if (isEndOfStream() != hVar.isEndOfStream()) {
            return isEndOfStream() ? 1 : -1;
        }
        long j7 = this.timeUs - hVar.timeUs;
        if (j7 == 0) {
            j7 = this.f3514e - hVar.f3514e;
            if (j7 == 0) {
                return 0;
            }
        }
        return j7 > 0 ? 1 : -1;
    }
}
