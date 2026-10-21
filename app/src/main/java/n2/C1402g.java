package n2;

import java.security.MessageDigest;

/* renamed from: n2.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1402g implements l2.m {

    /* renamed from: b, reason: collision with root package name */
    public final l2.m f18957b;

    /* renamed from: c, reason: collision with root package name */
    public final l2.m f18958c;

    public C1402g(l2.m mVar, l2.m mVar2) {
        this.f18957b = mVar;
        this.f18958c = mVar2;
    }

    @Override // l2.m
    public boolean equals(Object obj) {
        if (obj instanceof C1402g) {
            C1402g c1402g = (C1402g) obj;
            if (this.f18957b.equals(c1402g.f18957b) && this.f18958c.equals(c1402g.f18958c)) {
                return true;
            }
        }
        return false;
    }

    @Override // l2.m
    public int hashCode() {
        return this.f18958c.hashCode() + (this.f18957b.hashCode() * 31);
    }

    public String toString() {
        return "DataCacheKey{sourceKey=" + this.f18957b + ", signature=" + this.f18958c + '}';
    }

    @Override // l2.m
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        this.f18957b.updateDiskCacheKey(messageDigest);
        this.f18958c.updateDiskCacheKey(messageDigest);
    }
}
