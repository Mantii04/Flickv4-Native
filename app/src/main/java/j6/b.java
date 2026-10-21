package j6;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class b implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public int f17007b = 0;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ c f17008e;

    public b(c cVar) {
        this.f17008e = cVar;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f17007b < this.f17008e.f17010b;
    }

    @Override // java.util.Iterator
    public void remove() {
        int i2 = this.f17007b;
        int i7 = i2 - 1;
        this.f17007b = i7;
        c cVar = this.f17008e;
        h6.k.isFalse(i7 >= cVar.f17010b);
        int i8 = (cVar.f17010b - i7) - 1;
        if (i8 > 0) {
            String[] strArr = cVar.f17011e;
            System.arraycopy(strArr, i2, strArr, i7, i8);
            String[] strArr2 = cVar.f17012f;
            System.arraycopy(strArr2, i2, strArr2, i7, i8);
        }
        int i9 = cVar.f17010b - 1;
        cVar.f17010b = i9;
        cVar.f17011e[i9] = null;
        cVar.f17012f[i9] = null;
    }

    @Override // java.util.Iterator
    public a next() {
        c cVar = this.f17008e;
        String[] strArr = cVar.f17011e;
        int i2 = this.f17007b;
        a aVar = new a(strArr[i2], cVar.f17012f[i2], cVar);
        this.f17007b++;
        return aVar;
    }
}
