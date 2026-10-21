package n2;

import java.security.MessageDigest;
import java.util.Map;

/* renamed from: n2.E, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1383E implements l2.m {

    /* renamed from: b, reason: collision with root package name */
    public final Object f18882b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18883c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18884d;

    /* renamed from: e, reason: collision with root package name */
    public final Class f18885e;

    /* renamed from: f, reason: collision with root package name */
    public final Class f18886f;

    /* renamed from: g, reason: collision with root package name */
    public final l2.m f18887g;

    /* renamed from: h, reason: collision with root package name */
    public final Map f18888h;

    /* renamed from: i, reason: collision with root package name */
    public final l2.q f18889i;

    /* renamed from: j, reason: collision with root package name */
    public int f18890j;

    public C1383E(Object obj, l2.m mVar, int i2, int i7, Map map, Class cls, Class cls2, l2.q qVar) {
        this.f18882b = G2.r.checkNotNull(obj);
        this.f18887g = (l2.m) G2.r.checkNotNull(mVar, "Signature must not be null");
        this.f18883c = i2;
        this.f18884d = i7;
        this.f18888h = (Map) G2.r.checkNotNull(map);
        this.f18885e = (Class) G2.r.checkNotNull(cls, "Resource class must not be null");
        this.f18886f = (Class) G2.r.checkNotNull(cls2, "Transcode class must not be null");
        this.f18889i = (l2.q) G2.r.checkNotNull(qVar);
    }

    @Override // l2.m
    public boolean equals(Object obj) {
        if (obj instanceof C1383E) {
            C1383E c1383e = (C1383E) obj;
            if (this.f18882b.equals(c1383e.f18882b) && this.f18887g.equals(c1383e.f18887g) && this.f18884d == c1383e.f18884d && this.f18883c == c1383e.f18883c && this.f18888h.equals(c1383e.f18888h) && this.f18885e.equals(c1383e.f18885e) && this.f18886f.equals(c1383e.f18886f) && this.f18889i.equals(c1383e.f18889i)) {
                return true;
            }
        }
        return false;
    }

    @Override // l2.m
    public int hashCode() {
        if (this.f18890j == 0) {
            int hashCode = this.f18882b.hashCode();
            this.f18890j = hashCode;
            int hashCode2 = ((((this.f18887g.hashCode() + (hashCode * 31)) * 31) + this.f18883c) * 31) + this.f18884d;
            this.f18890j = hashCode2;
            int hashCode3 = this.f18888h.hashCode() + (hashCode2 * 31);
            this.f18890j = hashCode3;
            int hashCode4 = this.f18885e.hashCode() + (hashCode3 * 31);
            this.f18890j = hashCode4;
            int hashCode5 = this.f18886f.hashCode() + (hashCode4 * 31);
            this.f18890j = hashCode5;
            this.f18890j = this.f18889i.hashCode() + (hashCode5 * 31);
        }
        return this.f18890j;
    }

    public String toString() {
        return "EngineKey{model=" + this.f18882b + ", width=" + this.f18883c + ", height=" + this.f18884d + ", resourceClass=" + this.f18885e + ", transcodeClass=" + this.f18886f + ", signature=" + this.f18887g + ", hashCode=" + this.f18890j + ", transformations=" + this.f18888h + ", options=" + this.f18889i + '}';
    }

    @Override // l2.m
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }
}
