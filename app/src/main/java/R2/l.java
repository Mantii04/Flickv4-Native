package R2;

import com.google.firebase.encoders.annotations.Encodable;
import java.util.List;

/* loaded from: classes.dex */
public final class l extends v {

    /* renamed from: a, reason: collision with root package name */
    public final List f3075a;

    public l(List list) {
        if (list == null) {
            throw new NullPointerException("Null logRequests");
        }
        this.f3075a = list;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof v) {
            return this.f3075a.equals(((v) obj).getLogRequests());
        }
        return false;
    }

    @Override // R2.v
    @Encodable.Field(name = "logRequest")
    public List<B> getLogRequests() {
        return this.f3075a;
    }

    public int hashCode() {
        return this.f3075a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.f3075a + "}";
    }
}
