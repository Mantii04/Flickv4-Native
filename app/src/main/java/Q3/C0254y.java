package Q3;

import java.util.Objects;

/* renamed from: Q3.y, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0254y extends x0 {

    /* renamed from: b, reason: collision with root package name */
    public int f2925b;

    /* renamed from: e, reason: collision with root package name */
    public Object f2926e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ x0 f2927f;

    public C0254y(x0 x0Var) {
        this.f2927f = x0Var;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f2925b > 0 || this.f2927f.hasNext();
    }

    @Override // java.util.Iterator
    public Object next() {
        if (this.f2925b <= 0) {
            i0 i0Var = (i0) ((g0) this.f2927f.next());
            this.f2926e = i0Var.getElement();
            this.f2925b = i0Var.getCount();
        }
        this.f2925b--;
        Object obj = this.f2926e;
        Objects.requireNonNull(obj);
        return obj;
    }
}
