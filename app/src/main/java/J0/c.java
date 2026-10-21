package J0;

import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class c extends k {

    /* renamed from: b, reason: collision with root package name */
    public final String f1439b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1440c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1441d;

    /* renamed from: e, reason: collision with root package name */
    public final long f1442e;

    /* renamed from: f, reason: collision with root package name */
    public final long f1443f;

    /* renamed from: g, reason: collision with root package name */
    public final k[] f1444g;

    public c(String str, int i2, int i7, long j7, long j8, k[] kVarArr) {
        super("CHAP");
        this.f1439b = str;
        this.f1440c = i2;
        this.f1441d = i7;
        this.f1442e = j7;
        this.f1443f = j8;
        this.f1444g = kVarArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && c.class == obj.getClass()) {
            c cVar = (c) obj;
            if (this.f1440c == cVar.f1440c && this.f1441d == cVar.f1441d && this.f1442e == cVar.f1442e && this.f1443f == cVar.f1443f && Objects.equals(this.f1439b, cVar.f1439b) && Arrays.equals(this.f1444g, cVar.f1444g)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i2 = (((((((527 + this.f1440c) * 31) + this.f1441d) * 31) + ((int) this.f1442e)) * 31) + ((int) this.f1443f)) * 31;
        String str = this.f1439b;
        return i2 + (str != null ? str.hashCode() : 0);
    }
}
