package S2;

import com.google.android.datatransport.Priority;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class n extends E {

    /* renamed from: a, reason: collision with root package name */
    public final String f3357a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f3358b;

    /* renamed from: c, reason: collision with root package name */
    public final Priority f3359c;

    public n(String str, byte[] bArr, Priority priority) {
        this.f3357a = str;
        this.f3358b = bArr;
        this.f3359c = priority;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof E) {
            E e3 = (E) obj;
            if (this.f3357a.equals(e3.getBackendName())) {
                if (Arrays.equals(this.f3358b, e3 instanceof n ? ((n) e3).f3358b : e3.getExtras()) && this.f3359c.equals(e3.getPriority())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // S2.E
    public String getBackendName() {
        return this.f3357a;
    }

    @Override // S2.E
    public byte[] getExtras() {
        return this.f3358b;
    }

    @Override // S2.E
    public Priority getPriority() {
        return this.f3359c;
    }

    public int hashCode() {
        return ((((this.f3357a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f3358b)) * 1000003) ^ this.f3359c.hashCode();
    }
}
