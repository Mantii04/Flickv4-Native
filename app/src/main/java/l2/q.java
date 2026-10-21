package l2;

import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class q implements m {

    /* renamed from: b, reason: collision with root package name */
    public final G2.d f18128b = new G2.d();

    @Override // l2.m
    public boolean equals(Object obj) {
        if (obj instanceof q) {
            return this.f18128b.equals(((q) obj).f18128b);
        }
        return false;
    }

    public <T> T get(p pVar) {
        G2.d dVar = this.f18128b;
        return dVar.containsKey(pVar) ? (T) dVar.get(pVar) : (T) pVar.getDefaultValue();
    }

    @Override // l2.m
    public int hashCode() {
        return this.f18128b.hashCode();
    }

    public void putAll(q qVar) {
        this.f18128b.putAll((p.q) qVar.f18128b);
    }

    public q remove(p pVar) {
        this.f18128b.remove(pVar);
        return this;
    }

    public <T> q set(p pVar, T t6) {
        this.f18128b.put(pVar, t6);
        return this;
    }

    public String toString() {
        return "Options{values=" + this.f18128b + '}';
    }

    @Override // l2.m
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        int i2 = 0;
        while (true) {
            G2.d dVar = this.f18128b;
            if (i2 >= dVar.size()) {
                return;
            }
            ((p) dVar.keyAt(i2)).update(dVar.valueAt(i2), messageDigest);
            i2++;
        }
    }
}
