package J0;

import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class f extends k {

    /* renamed from: b, reason: collision with root package name */
    public final String f1453b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1454c;

    /* renamed from: d, reason: collision with root package name */
    public final String f1455d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f1456e;

    public f(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.f1453b = str;
        this.f1454c = str2;
        this.f1455d = str3;
        this.f1456e = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && f.class == obj.getClass()) {
            f fVar = (f) obj;
            if (Objects.equals(this.f1453b, fVar.f1453b) && Objects.equals(this.f1454c, fVar.f1454c) && Objects.equals(this.f1455d, fVar.f1455d) && Arrays.equals(this.f1456e, fVar.f1456e)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f1453b;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f1454c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f1455d;
        return Arrays.hashCode(this.f1456e) + ((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    @Override // J0.k
    public String toString() {
        return this.f1463a + ": mimeType=" + this.f1453b + ", filename=" + this.f1454c + ", description=" + this.f1455d;
    }
}
