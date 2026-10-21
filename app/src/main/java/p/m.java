package p;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public abstract class m implements Iterator, I5.a {

    /* renamed from: b, reason: collision with root package name */
    public int f19396b;

    /* renamed from: e, reason: collision with root package name */
    public int f19397e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f19398f;

    public m(int i2) {
        this.f19396b = i2;
    }

    public abstract Object elementAt(int i2);

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f19397e < this.f19396b;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object elementAt = elementAt(this.f19397e);
        this.f19397e++;
        this.f19398f = true;
        return elementAt;
    }

    @Override // java.util.Iterator
    public void remove() {
        if (!this.f19398f) {
            throw new IllegalStateException("Call next() before removing an element.");
        }
        int i2 = this.f19397e - 1;
        this.f19397e = i2;
        removeAt(i2);
        this.f19396b--;
        this.f19398f = false;
    }

    public abstract void removeAt(int i2);
}
