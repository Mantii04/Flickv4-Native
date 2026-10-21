package Q3;

import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class E extends x0 {

    /* renamed from: b, reason: collision with root package name */
    public final Object f2857b;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2858e;

    public E(Object obj) {
        this.f2857b = obj;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return !this.f2858e;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (this.f2858e) {
            throw new NoSuchElementException();
        }
        this.f2858e = true;
        return this.f2857b;
    }
}
