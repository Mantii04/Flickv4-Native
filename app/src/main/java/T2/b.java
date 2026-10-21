package T2;

import S2.u;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class b extends h {

    /* renamed from: a, reason: collision with root package name */
    public final Iterable f3655a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f3656b;

    public b(Iterable iterable, byte[] bArr) {
        this.f3655a = iterable;
        this.f3656b = bArr;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            if (this.f3655a.equals(hVar.getEvents())) {
                if (Arrays.equals(this.f3656b, hVar instanceof b ? ((b) hVar).f3656b : hVar.getExtras())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // T2.h
    public Iterable<u> getEvents() {
        return this.f3655a;
    }

    @Override // T2.h
    public byte[] getExtras() {
        return this.f3656b;
    }

    public int hashCode() {
        return ((this.f3655a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f3656b);
    }

    public String toString() {
        return "BackendRequest{events=" + this.f3655a + ", extras=" + Arrays.toString(this.f3656b) + "}";
    }
}
