package Q3;

import com.google.common.collect.ImmutableCollection;
import java.util.Arrays;
import java.util.Collection;

/* renamed from: Q3.q, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0247q extends r {

    /* renamed from: a, reason: collision with root package name */
    public Object[] f2908a;

    /* renamed from: b, reason: collision with root package name */
    public int f2909b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2910c;

    public AbstractC0247q(int i2) {
        V3.r.b(i2, "initialCapacity");
        this.f2908a = new Object[i2];
        this.f2909b = 0;
    }

    @Override // Q3.r
    public AbstractC0247q add(Object obj) {
        P3.v.checkNotNull(obj);
        b(1);
        Object[] objArr = this.f2908a;
        int i2 = this.f2909b;
        this.f2909b = i2 + 1;
        objArr[i2] = obj;
        return this;
    }

    @Override // Q3.r
    public r addAll(Iterable<Object> iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            b(collection.size());
            if (collection instanceof ImmutableCollection) {
                this.f2909b = ((ImmutableCollection) collection).a(this.f2909b, this.f2908a);
                return this;
            }
        }
        super.addAll(iterable);
        return this;
    }

    public final void b(int i2) {
        Object[] objArr = this.f2908a;
        int a7 = r.a(objArr.length, this.f2909b + i2);
        if (a7 > objArr.length || this.f2910c) {
            this.f2908a = Arrays.copyOf(this.f2908a, a7);
            this.f2910c = false;
        }
    }

    public r add(Object... objArr) {
        int length = objArr.length;
        h0.a(length, objArr);
        b(length);
        System.arraycopy(objArr, 0, this.f2908a, this.f2909b, length);
        this.f2909b += length;
        return this;
    }
}
