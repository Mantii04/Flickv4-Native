package x5;

import java.util.Comparator;
import kotlin.jvm.internal.j;

/* renamed from: x5.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1856b implements Comparator {

    /* renamed from: b, reason: collision with root package name */
    public static final C1856b f20932b = new C1856b();

    @Override // java.util.Comparator
    public final Comparator<Comparable<Object>> reversed() {
        return c.f20933b;
    }

    @Override // java.util.Comparator
    public int compare(Comparable<Object> a7, Comparable<Object> b7) {
        j.checkNotNullParameter(a7, "a");
        j.checkNotNullParameter(b7, "b");
        return a7.compareTo(b7);
    }
}
