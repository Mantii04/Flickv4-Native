package K0;

import P3.v;
import androidx.media3.common.util.Util;
import java.util.Objects;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final long f1582a;

    /* renamed from: b, reason: collision with root package name */
    public final long f1583b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1584c;

    public b(long j7, long j8, int i2) {
        v.checkArgument(j7 < j8);
        this.f1582a = j7;
        this.f1583b = j8;
        this.f1584c = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && b.class == obj.getClass()) {
            b bVar = (b) obj;
            if (this.f1582a == bVar.f1582a && this.f1583b == bVar.f1583b && this.f1584c == bVar.f1584c) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Long.valueOf(this.f1582a), Long.valueOf(this.f1583b), Integer.valueOf(this.f1584c));
    }

    public String toString() {
        return Util.formatInvariant("Segment: startTimeMs=%d, endTimeMs=%d, speedDivisor=%d", Long.valueOf(this.f1582a), Long.valueOf(this.f1583b), Integer.valueOf(this.f1584c));
    }
}
