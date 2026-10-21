package B1;

import android.net.Uri;

/* renamed from: B1.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0025e {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f168a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f169b;

    public C0025e(Uri uri, boolean z6) {
        kotlin.jvm.internal.j.checkNotNullParameter(uri, "uri");
        this.f168a = uri;
        this.f169b = z6;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!kotlin.jvm.internal.j.areEqual(C0025e.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        kotlin.jvm.internal.j.checkNotNull(obj, "null cannot be cast to non-null type androidx.work.Constraints.ContentUriTrigger");
        C0025e c0025e = (C0025e) obj;
        return kotlin.jvm.internal.j.areEqual(this.f168a, c0025e.f168a) && this.f169b == c0025e.f169b;
    }

    public final Uri getUri() {
        return this.f168a;
    }

    public int hashCode() {
        return (this.f168a.hashCode() * 31) + (this.f169b ? 1231 : 1237);
    }

    public final boolean isTriggeredForDescendants() {
        return this.f169b;
    }
}
