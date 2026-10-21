package T2;

import com.google.android.datatransport.runtime.backends.BackendResponse$Status;

/* loaded from: classes.dex */
public final class c extends i {

    /* renamed from: a, reason: collision with root package name */
    public final BackendResponse$Status f3657a;

    /* renamed from: b, reason: collision with root package name */
    public final long f3658b;

    public c(BackendResponse$Status backendResponse$Status, long j7) {
        this.f3657a = backendResponse$Status;
        this.f3658b = j7;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            if (this.f3657a.equals(iVar.getStatus()) && this.f3658b == iVar.getNextRequestWaitMillis()) {
                return true;
            }
        }
        return false;
    }

    @Override // T2.i
    public long getNextRequestWaitMillis() {
        return this.f3658b;
    }

    @Override // T2.i
    public BackendResponse$Status getStatus() {
        return this.f3657a;
    }

    public int hashCode() {
        int hashCode = (this.f3657a.hashCode() ^ 1000003) * 1000003;
        long j7 = this.f3658b;
        return hashCode ^ ((int) (j7 ^ (j7 >>> 32)));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BackendResponse{status=");
        sb.append(this.f3657a);
        sb.append(", nextRequestWaitMillis=");
        return A.i.n(sb, this.f3658b, "}");
    }
}
