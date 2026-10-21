package m1;

import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class M0 {

    /* renamed from: a, reason: collision with root package name */
    public int[] f18303a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f18304b;

    public final void a() {
        int[] iArr = this.f18303a;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.f18304b = null;
    }

    public final void b(int i2) {
        int[] iArr = this.f18303a;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i2, 10) + 1];
            this.f18303a = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i2 >= iArr.length) {
            int length = iArr.length;
            while (length <= i2) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.f18303a = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = this.f18303a;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    public final void c(int i2, int i7) {
        int[] iArr = this.f18303a;
        if (iArr == null || i2 >= iArr.length) {
            return;
        }
        int i8 = i2 + i7;
        b(i8);
        int[] iArr2 = this.f18303a;
        System.arraycopy(iArr2, i2, iArr2, i8, (iArr2.length - i2) - i7);
        Arrays.fill(this.f18303a, i2, i8, -1);
        ArrayList arrayList = this.f18304b;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            L0 l02 = (L0) this.f18304b.get(size);
            int i9 = l02.f18298b;
            if (i9 >= i2) {
                l02.f18298b = i9 + i7;
            }
        }
    }

    public final void d(int i2, int i7) {
        int[] iArr = this.f18303a;
        if (iArr == null || i2 >= iArr.length) {
            return;
        }
        int i8 = i2 + i7;
        b(i8);
        int[] iArr2 = this.f18303a;
        System.arraycopy(iArr2, i8, iArr2, i2, (iArr2.length - i2) - i7);
        int[] iArr3 = this.f18303a;
        Arrays.fill(iArr3, iArr3.length - i7, iArr3.length, -1);
        ArrayList arrayList = this.f18304b;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            L0 l02 = (L0) this.f18304b.get(size);
            int i9 = l02.f18298b;
            if (i9 >= i2) {
                if (i9 < i8) {
                    this.f18304b.remove(size);
                } else {
                    l02.f18298b = i9 - i7;
                }
            }
        }
    }

    public L0 getFullSpanItem(int i2) {
        ArrayList arrayList = this.f18304b;
        if (arrayList == null) {
            return null;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            L0 l02 = (L0) this.f18304b.get(size);
            if (l02.f18298b == i2) {
                return l02;
            }
        }
        return null;
    }
}
