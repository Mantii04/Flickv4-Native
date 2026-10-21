package S2;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class s {

    /* renamed from: a, reason: collision with root package name */
    public final P2.b f3372a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f3373b;

    public s(P2.b bVar, byte[] bArr) {
        if (bVar == null) {
            throw new NullPointerException("encoding is null");
        }
        if (bArr == null) {
            throw new NullPointerException("bytes is null");
        }
        this.f3372a = bVar;
        this.f3373b = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        if (this.f3372a.equals(sVar.f3372a)) {
            return Arrays.equals(this.f3373b, sVar.f3373b);
        }
        return false;
    }

    public byte[] getBytes() {
        return this.f3373b;
    }

    public P2.b getEncoding() {
        return this.f3372a;
    }

    public int hashCode() {
        return ((this.f3372a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f3373b);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f3372a + ", bytes=[...]}";
    }
}
