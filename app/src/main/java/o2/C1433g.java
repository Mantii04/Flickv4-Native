package o2;

import java.util.ArrayList;

/* renamed from: o2.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1433g {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1443q f19045a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f19046b;

    /* renamed from: d, reason: collision with root package name */
    public C1433g f19048d = this;

    /* renamed from: c, reason: collision with root package name */
    public C1433g f19047c = this;

    public C1433g(InterfaceC1443q interfaceC1443q) {
        this.f19045a = interfaceC1443q;
    }

    public void add(Object obj) {
        if (this.f19046b == null) {
            this.f19046b = new ArrayList();
        }
        this.f19046b.add(obj);
    }

    public Object removeLast() {
        int size = size();
        if (size > 0) {
            return this.f19046b.remove(size - 1);
        }
        return null;
    }

    public int size() {
        ArrayList arrayList = this.f19046b;
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }
}
