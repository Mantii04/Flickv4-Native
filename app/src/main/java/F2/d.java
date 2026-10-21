package F2;

import G2.r;
import java.security.MessageDigest;
import l2.m;

/* loaded from: classes.dex */
public final class d implements m {

    /* renamed from: b, reason: collision with root package name */
    public final Object f991b;

    public d(Object obj) {
        this.f991b = r.checkNotNull(obj);
    }

    @Override // l2.m
    public boolean equals(Object obj) {
        if (obj instanceof d) {
            return this.f991b.equals(((d) obj).f991b);
        }
        return false;
    }

    @Override // l2.m
    public int hashCode() {
        return this.f991b.hashCode();
    }

    public String toString() {
        return "ObjectKey{object=" + this.f991b + '}';
    }

    @Override // l2.m
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        messageDigest.update(this.f991b.toString().getBytes(m.f18122a));
    }
}
