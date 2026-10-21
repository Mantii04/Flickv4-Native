package n2;

import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: n2.D, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1382D implements Iterable {

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f18881b;

    public C1382D(ArrayList arrayList) {
        this.f18881b = arrayList;
    }

    @Override // java.lang.Iterable
    public Iterator<C1381C> iterator() {
        return this.f18881b.iterator();
    }
}
