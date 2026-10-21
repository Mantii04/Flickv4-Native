package O5;

import java.util.Iterator;
import org.apache.commons.lang3.ClassUtils;

/* loaded from: classes2.dex */
public final class c implements d {

    /* renamed from: a, reason: collision with root package name */
    public final d f2446a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2447b;

    public c(d sequence, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(sequence, "sequence");
        this.f2446a = sequence;
        this.f2447b = i2;
        if (i2 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i2 + ClassUtils.PACKAGE_SEPARATOR_CHAR).toString());
    }

    public d drop(int i2) {
        int i7 = this.f2447b + i2;
        return i7 < 0 ? new c(this, i2) : new c(this.f2446a, i7);
    }

    @Override // O5.d
    public Iterator<Object> iterator() {
        return new b(this);
    }
}
