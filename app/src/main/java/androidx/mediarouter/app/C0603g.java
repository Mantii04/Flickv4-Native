package androidx.mediarouter.app;

import java.util.Comparator;

/* renamed from: androidx.mediarouter.app.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0603g implements Comparator {

    /* renamed from: b, reason: collision with root package name */
    public static final C0603g f7790b = new C0603g();

    @Override // java.util.Comparator
    public int compare(f1.U u6, f1.U u7) {
        return u6.getName().compareToIgnoreCase(u7.getName());
    }
}
