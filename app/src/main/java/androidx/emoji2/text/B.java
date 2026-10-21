package androidx.emoji2.text;

import android.util.SparseArray;

/* loaded from: classes.dex */
public final class B {

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray f5970a;

    /* renamed from: b, reason: collision with root package name */
    public u f5971b;

    public B(int i2) {
        this.f5970a = new SparseArray(i2);
    }

    public final void a(u uVar, int i2, int i7) {
        int codepointAt = uVar.getCodepointAt(i2);
        SparseArray sparseArray = this.f5970a;
        B b7 = sparseArray == null ? null : (B) sparseArray.get(codepointAt);
        if (b7 == null) {
            b7 = new B(1);
            sparseArray.put(uVar.getCodepointAt(i2), b7);
        }
        if (i7 > i2) {
            b7.a(uVar, i2 + 1, i7);
        } else {
            b7.f5971b = uVar;
        }
    }
}
