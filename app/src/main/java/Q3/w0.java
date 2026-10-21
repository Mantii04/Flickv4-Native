package Q3;

import com.google.common.collect.Range;

/* loaded from: classes2.dex */
public final class w0 extends AbstractC0234d {

    /* renamed from: b, reason: collision with root package name */
    public final Range f2921b;

    /* renamed from: e, reason: collision with root package name */
    public final Object f2922e;

    public w0(Range range, Object obj) {
        this.f2921b = range;
        this.f2922e = obj;
    }

    public boolean contains(Comparable comparable) {
        return this.f2921b.contains(comparable);
    }

    @Override // Q3.AbstractC0234d, java.util.Map.Entry
    public Object getValue() {
        return this.f2922e;
    }

    @Override // Q3.AbstractC0234d, java.util.Map.Entry
    public Range<Comparable> getKey() {
        return this.f2921b;
    }
}
