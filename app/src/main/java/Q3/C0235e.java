package Q3;

import java.util.Iterator;
import java.util.Map;

/* renamed from: Q3.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0235e extends b0 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractC0237g f2879b;

    public C0235e(AbstractC0237g abstractC0237g) {
        this.f2879b = abstractC0237g;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<Map.Entry<Object, Object>> iterator() {
        return this.f2879b.e();
    }
}
