package J0;

import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class d extends k {

    /* renamed from: b, reason: collision with root package name */
    public final String f1445b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f1446c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f1447d;

    /* renamed from: e, reason: collision with root package name */
    public final String[] f1448e;

    /* renamed from: f, reason: collision with root package name */
    public final k[] f1449f;

    public d(String str, boolean z6, boolean z7, String[] strArr, k[] kVarArr) {
        super("CTOC");
        this.f1445b = str;
        this.f1446c = z6;
        this.f1447d = z7;
        this.f1448e = strArr;
        this.f1449f = kVarArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && d.class == obj.getClass()) {
            d dVar = (d) obj;
            if (this.f1446c == dVar.f1446c && this.f1447d == dVar.f1447d && Objects.equals(this.f1445b, dVar.f1445b) && Arrays.equals(this.f1448e, dVar.f1448e) && Arrays.equals(this.f1449f, dVar.f1449f)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i2 = (((527 + (this.f1446c ? 1 : 0)) * 31) + (this.f1447d ? 1 : 0)) * 31;
        String str = this.f1445b;
        return i2 + (str != null ? str.hashCode() : 0);
    }
}
