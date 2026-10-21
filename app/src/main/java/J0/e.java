package J0;

import java.util.Objects;

/* loaded from: classes.dex */
public final class e extends k {

    /* renamed from: b, reason: collision with root package name */
    public final String f1450b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1451c;

    /* renamed from: d, reason: collision with root package name */
    public final String f1452d;

    public e(String str, String str2, String str3) {
        super("COMM");
        this.f1450b = str;
        this.f1451c = str2;
        this.f1452d = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && e.class == obj.getClass()) {
            e eVar = (e) obj;
            if (Objects.equals(this.f1451c, eVar.f1451c) && Objects.equals(this.f1450b, eVar.f1450b) && Objects.equals(this.f1452d, eVar.f1452d)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f1450b;
        int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f1451c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f1452d;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // J0.k
    public String toString() {
        return this.f1463a + ": language=" + this.f1450b + ", description=" + this.f1451c + ", text=" + this.f1452d;
    }
}
