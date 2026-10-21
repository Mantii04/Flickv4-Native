package x5;

import java.util.Comparator;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class c implements Comparator {

    /* renamed from: b, reason: collision with root package name */
    public static final c f20933b = new c();

    @Override // java.util.Comparator
    public final Comparator<Comparable<Object>> reversed() {
        return C1856b.f20932b;
    }

    @Override // java.util.Comparator
    public int compare(Comparable<Object> a7, Comparable<Object> b7) {
        j.checkNotNullParameter(a7, "a");
        j.checkNotNullParameter(b7, "b");
        return b7.compareTo(a7);
    }
}
