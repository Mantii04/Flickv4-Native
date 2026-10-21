package r;

/* renamed from: r.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1536i implements InterfaceC1535h {

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f19691a = new Object[256];

    /* renamed from: b, reason: collision with root package name */
    public int f19692b;

    @Override // r.InterfaceC1535h
    public Object acquire() {
        int i2 = this.f19692b;
        if (i2 <= 0) {
            return null;
        }
        int i7 = i2 - 1;
        Object[] objArr = this.f19691a;
        Object obj = objArr[i7];
        objArr[i7] = null;
        this.f19692b = i2 - 1;
        return obj;
    }

    @Override // r.InterfaceC1535h
    public boolean release(Object obj) {
        int i2 = this.f19692b;
        Object[] objArr = this.f19691a;
        if (i2 >= objArr.length) {
            return false;
        }
        objArr[i2] = obj;
        this.f19692b = i2 + 1;
        return true;
    }

    @Override // r.InterfaceC1535h
    public void releaseAll(Object[] objArr, int i2) {
        if (i2 > objArr.length) {
            i2 = objArr.length;
        }
        for (int i7 = 0; i7 < i2; i7++) {
            Object obj = objArr[i7];
            int i8 = this.f19692b;
            Object[] objArr2 = this.f19691a;
            if (i8 < objArr2.length) {
                objArr2[i8] = obj;
                this.f19692b = i8 + 1;
            }
        }
    }
}
