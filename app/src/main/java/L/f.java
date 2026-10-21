package L;

import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public class f implements e {

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f1822a;

    /* renamed from: b, reason: collision with root package name */
    public int f1823b;

    public f(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f1822a = new Object[i2];
    }

    @Override // L.e
    public Object acquire() {
        int i2 = this.f1823b;
        if (i2 <= 0) {
            return null;
        }
        int i7 = i2 - 1;
        Object[] objArr = this.f1822a;
        Object obj = objArr[i7];
        j.checkNotNull(obj, "null cannot be cast to non-null type T of androidx.core.util.Pools.SimplePool");
        objArr[i7] = null;
        this.f1823b--;
        return obj;
    }

    @Override // L.e
    public boolean release(Object instance) {
        Object[] objArr;
        boolean z6;
        j.checkNotNullParameter(instance, "instance");
        int i2 = this.f1823b;
        int i7 = 0;
        while (true) {
            objArr = this.f1822a;
            if (i7 >= i2) {
                z6 = false;
                break;
            }
            if (objArr[i7] == instance) {
                z6 = true;
                break;
            }
            i7++;
        }
        if (z6) {
            throw new IllegalStateException("Already in the pool!");
        }
        int i8 = this.f1823b;
        if (i8 >= objArr.length) {
            return false;
        }
        objArr[i8] = instance;
        this.f1823b = i8 + 1;
        return true;
    }
}
