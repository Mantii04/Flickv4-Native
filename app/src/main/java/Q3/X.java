package Q3;

import java.util.Comparator;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes2.dex */
public final class X extends Z {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Comparator f2874a;

    public X(Comparator comparator) {
        this.f2874a = comparator;
    }

    @Override // Q3.Z
    public final Map a() {
        return new TreeMap(this.f2874a);
    }
}
