package M;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;

/* renamed from: M.x0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0196x0 implements Iterator, I5.a {

    /* renamed from: b, reason: collision with root package name */
    public int f2078b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f2079e;

    public C0196x0(ViewGroup viewGroup) {
        this.f2079e = viewGroup;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f2078b < this.f2079e.getChildCount();
    }

    @Override // java.util.Iterator
    public void remove() {
        int i2 = this.f2078b - 1;
        this.f2078b = i2;
        this.f2079e.removeViewAt(i2);
    }

    @Override // java.util.Iterator
    public View next() {
        int i2 = this.f2078b;
        this.f2078b = i2 + 1;
        View childAt = this.f2079e.getChildAt(i2);
        if (childAt != null) {
            return childAt;
        }
        throw new IndexOutOfBoundsException();
    }
}
