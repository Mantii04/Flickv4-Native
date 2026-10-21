package androidx.mediarouter.app;

import java.util.Comparator;

/* loaded from: classes.dex */
public final class P implements Comparator {

    /* renamed from: b, reason: collision with root package name */
    public static final P f7729b = new P();

    @Override // java.util.Comparator
    public int compare(f1.U u6, f1.U u7) {
        return u6.getName().compareToIgnoreCase(u7.getName());
    }
}
