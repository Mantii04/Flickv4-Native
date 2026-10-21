package Q3;

import com.google.common.collect.ImmutableList;
import java.util.Iterator;

/* renamed from: Q3.s, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0248s extends AbstractC0247q {
    public C0248s() {
        super(4);
    }

    @Override // Q3.AbstractC0247q, Q3.r
    public C0248s addAll(Iterable<Object> iterable) {
        super.addAll(iterable);
        return this;
    }

    public ImmutableList<Object> build() {
        this.f2910c = true;
        return ImmutableList.e(this.f2909b, this.f2908a);
    }

    @Override // Q3.r
    public C0248s add(Object obj) {
        super.add(obj);
        return this;
    }

    @Override // Q3.r
    public C0248s addAll(Iterator<Object> it) {
        super.addAll(it);
        return this;
    }

    @Override // Q3.AbstractC0247q
    public C0248s add(Object... objArr) {
        super.add(objArr);
        return this;
    }
}
