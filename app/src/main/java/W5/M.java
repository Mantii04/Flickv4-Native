package W5;

import R5.N0;
import y5.InterfaceC1952k;

/* loaded from: classes2.dex */
public final class M {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1952k f4180a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f4181b;

    /* renamed from: c, reason: collision with root package name */
    public final N0[] f4182c;

    /* renamed from: d, reason: collision with root package name */
    public int f4183d;

    public M(InterfaceC1952k interfaceC1952k, int i2) {
        this.f4180a = interfaceC1952k;
        this.f4181b = new Object[i2];
        this.f4182c = new N0[i2];
    }

    public final void append(N0 n02, Object obj) {
        int i2 = this.f4183d;
        this.f4181b[i2] = obj;
        this.f4183d = i2 + 1;
        kotlin.jvm.internal.j.checkNotNull(n02, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        this.f4182c[i2] = n02;
    }

    public final void restore(InterfaceC1952k interfaceC1952k) {
        N0[] n0Arr = this.f4182c;
        int length = n0Arr.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i2 = length - 1;
            N0 n02 = n0Arr[length];
            kotlin.jvm.internal.j.checkNotNull(n02);
            ((R5.H) n02).a(interfaceC1952k, this.f4181b[length]);
            if (i2 < 0) {
                return;
            } else {
                length = i2;
            }
        }
    }
}
