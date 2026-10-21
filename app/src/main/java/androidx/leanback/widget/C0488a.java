package androidx.leanback.widget;

import java.util.ArrayList;

/* renamed from: androidx.leanback.widget.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0488a extends AbstractC0526r0 {

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f6763c;

    public C0488a(C0 c02) {
        super(c02);
        this.f6763c = new ArrayList();
        new ArrayList();
    }

    public void add(Object obj) {
        add(this.f6763c.size(), obj);
    }

    @Override // androidx.leanback.widget.AbstractC0526r0
    public Object get(int i2) {
        return this.f6763c.get(i2);
    }

    public int indexOf(Object obj) {
        return this.f6763c.indexOf(obj);
    }

    public void notifyArrayItemRangeChanged(int i2, int i7) {
        notifyItemRangeChanged(i2, i7);
    }

    public boolean remove(Object obj) {
        ArrayList arrayList = this.f6763c;
        int indexOf = arrayList.indexOf(obj);
        if (indexOf >= 0) {
            arrayList.remove(indexOf);
            notifyItemRangeRemoved(indexOf, 1);
        }
        return indexOf >= 0;
    }

    @Override // androidx.leanback.widget.AbstractC0526r0
    public int size() {
        return this.f6763c.size();
    }

    public void add(int i2, Object obj) {
        this.f6763c.add(i2, obj);
        notifyItemRangeInserted(i2, 1);
    }
}
