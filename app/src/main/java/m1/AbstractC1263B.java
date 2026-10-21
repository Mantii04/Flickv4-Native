package m1;

import android.util.SparseIntArray;

/* renamed from: m1.B, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1263B {

    /* renamed from: a, reason: collision with root package name */
    public final SparseIntArray f18214a = new SparseIntArray();

    /* renamed from: b, reason: collision with root package name */
    public final SparseIntArray f18215b = new SparseIntArray();

    public int getSpanGroupIndex(int i2, int i7) {
        int spanSize = getSpanSize(i2);
        int i8 = 0;
        int i9 = 0;
        for (int i10 = 0; i10 < i2; i10++) {
            int spanSize2 = getSpanSize(i10);
            i8 += spanSize2;
            if (i8 == i7) {
                i9++;
                i8 = 0;
            } else if (i8 > i7) {
                i9++;
                i8 = spanSize2;
            }
        }
        return i8 + spanSize > i7 ? i9 + 1 : i9;
    }

    public abstract int getSpanSize(int i2);

    public void invalidateSpanGroupIndexCache() {
        this.f18215b.clear();
    }

    public void invalidateSpanIndexCache() {
        this.f18214a.clear();
    }
}
