package v5;

import java.util.RandomAccess;

/* renamed from: v5.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1768d extends AbstractC1769e implements RandomAccess {

    /* renamed from: e, reason: collision with root package name */
    public final AbstractC1769e f20634e;

    /* renamed from: f, reason: collision with root package name */
    public final int f20635f;

    /* renamed from: j, reason: collision with root package name */
    public final int f20636j;

    public C1768d(AbstractC1769e list, int i2, int i7) {
        kotlin.jvm.internal.j.checkNotNullParameter(list, "list");
        this.f20634e = list;
        this.f20635f = i2;
        AbstractC1769e.f20637b.checkRangeIndexes$kotlin_stdlib(i2, i7, list.size());
        this.f20636j = i7 - i2;
    }

    @Override // v5.AbstractC1769e, java.util.List
    public Object get(int i2) {
        AbstractC1769e.f20637b.checkElementIndex$kotlin_stdlib(i2, this.f20636j);
        return this.f20634e.get(this.f20635f + i2);
    }

    @Override // kotlin.collections.AbstractCollection
    public int getSize() {
        return this.f20636j;
    }
}
