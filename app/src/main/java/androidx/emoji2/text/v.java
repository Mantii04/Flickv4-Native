package androidx.emoji2.text;

import android.util.SparseArray;

/* loaded from: classes.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public int f6016a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final B f6017b;

    /* renamed from: c, reason: collision with root package name */
    public B f6018c;

    /* renamed from: d, reason: collision with root package name */
    public B f6019d;

    /* renamed from: e, reason: collision with root package name */
    public int f6020e;

    /* renamed from: f, reason: collision with root package name */
    public int f6021f;

    public v(B b7) {
        this.f6017b = b7;
        this.f6018c = b7;
    }

    public final int a(int i2) {
        SparseArray sparseArray = this.f6018c.f5970a;
        B b7 = sparseArray == null ? null : (B) sparseArray.get(i2);
        int i7 = 1;
        int i8 = 2;
        if (this.f6016a == 2) {
            if (b7 != null) {
                this.f6018c = b7;
                this.f6021f++;
            } else if (i2 == 65038) {
                b();
            } else if (i2 != 65039) {
                B b8 = this.f6018c;
                if (b8.f5971b != null) {
                    i8 = 3;
                    if (this.f6021f != 1) {
                        this.f6019d = b8;
                        b();
                    } else if (c()) {
                        this.f6019d = this.f6018c;
                        b();
                    } else {
                        b();
                    }
                } else {
                    b();
                }
            }
            i7 = i8;
        } else if (b7 == null) {
            b();
        } else {
            this.f6016a = 2;
            this.f6018c = b7;
            this.f6021f = 1;
            i7 = i8;
        }
        this.f6020e = i2;
        return i7;
    }

    public final void b() {
        this.f6016a = 1;
        this.f6018c = this.f6017b;
        this.f6021f = 0;
    }

    public final boolean c() {
        return this.f6018c.f5971b.isDefaultEmoji() || this.f6020e == 65039;
    }
}
