package n2;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import o2.C1438l;
import o2.InterfaceC1428b;

/* renamed from: n2.O, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1393O implements l2.m {

    /* renamed from: j, reason: collision with root package name */
    public static final G2.o f18918j = new G2.o(50);

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1428b f18919b;

    /* renamed from: c, reason: collision with root package name */
    public final l2.m f18920c;

    /* renamed from: d, reason: collision with root package name */
    public final l2.m f18921d;

    /* renamed from: e, reason: collision with root package name */
    public final int f18922e;

    /* renamed from: f, reason: collision with root package name */
    public final int f18923f;

    /* renamed from: g, reason: collision with root package name */
    public final Class f18924g;

    /* renamed from: h, reason: collision with root package name */
    public final l2.q f18925h;

    /* renamed from: i, reason: collision with root package name */
    public final l2.t f18926i;

    public C1393O(InterfaceC1428b interfaceC1428b, l2.m mVar, l2.m mVar2, int i2, int i7, l2.t tVar, Class cls, l2.q qVar) {
        this.f18919b = interfaceC1428b;
        this.f18920c = mVar;
        this.f18921d = mVar2;
        this.f18922e = i2;
        this.f18923f = i7;
        this.f18926i = tVar;
        this.f18924g = cls;
        this.f18925h = qVar;
    }

    @Override // l2.m
    public boolean equals(Object obj) {
        if (obj instanceof C1393O) {
            C1393O c1393o = (C1393O) obj;
            if (this.f18923f == c1393o.f18923f && this.f18922e == c1393o.f18922e && G2.t.bothNullOrEqual(this.f18926i, c1393o.f18926i) && this.f18924g.equals(c1393o.f18924g) && this.f18920c.equals(c1393o.f18920c) && this.f18921d.equals(c1393o.f18921d) && this.f18925h.equals(c1393o.f18925h)) {
                return true;
            }
        }
        return false;
    }

    @Override // l2.m
    public int hashCode() {
        int hashCode = ((((this.f18921d.hashCode() + (this.f18920c.hashCode() * 31)) * 31) + this.f18922e) * 31) + this.f18923f;
        l2.t tVar = this.f18926i;
        if (tVar != null) {
            hashCode = (hashCode * 31) + tVar.hashCode();
        }
        return this.f18925h.hashCode() + ((this.f18924g.hashCode() + (hashCode * 31)) * 31);
    }

    public String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f18920c + ", signature=" + this.f18921d + ", width=" + this.f18922e + ", height=" + this.f18923f + ", decodedResourceClass=" + this.f18924g + ", transformation='" + this.f18926i + "', options=" + this.f18925h + '}';
    }

    @Override // l2.m
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        InterfaceC1428b interfaceC1428b = this.f18919b;
        byte[] bArr = (byte[]) ((C1438l) interfaceC1428b).getExact(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f18922e).putInt(this.f18923f).array();
        this.f18921d.updateDiskCacheKey(messageDigest);
        this.f18920c.updateDiskCacheKey(messageDigest);
        messageDigest.update(bArr);
        l2.t tVar = this.f18926i;
        if (tVar != null) {
            tVar.updateDiskCacheKey(messageDigest);
        }
        this.f18925h.updateDiskCacheKey(messageDigest);
        G2.o oVar = f18918j;
        Class cls = this.f18924g;
        byte[] bArr2 = (byte[]) oVar.get(cls);
        if (bArr2 == null) {
            bArr2 = cls.getName().getBytes(l2.m.f18122a);
            oVar.put(cls, bArr2);
        }
        messageDigest.update(bArr2);
        ((C1438l) interfaceC1428b).put(bArr);
    }
}
