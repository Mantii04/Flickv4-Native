package M5;

import java.util.NoSuchElementException;
import v5.w;

/* loaded from: classes2.dex */
public final class c extends w {

    /* renamed from: b, reason: collision with root package name */
    public final int f2111b;

    /* renamed from: e, reason: collision with root package name */
    public final int f2112e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f2113f;

    /* renamed from: j, reason: collision with root package name */
    public int f2114j;

    public c(int i2, int i7, int i8) {
        this.f2111b = i8;
        this.f2112e = i7;
        boolean z6 = false;
        if (i8 <= 0 ? i2 >= i7 : i2 <= i7) {
            z6 = true;
        }
        this.f2113f = z6;
        this.f2114j = z6 ? i2 : i7;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f2113f;
    }

    @Override // v5.w
    public int nextInt() {
        int i2 = this.f2114j;
        if (i2 != this.f2112e) {
            this.f2114j = this.f2111b + i2;
            return i2;
        }
        if (!this.f2113f) {
            throw new NoSuchElementException();
        }
        this.f2113f = false;
        return i2;
    }
}
