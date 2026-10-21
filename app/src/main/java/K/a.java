package K;

import java.util.Locale;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f1544a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1545b;

    /* renamed from: c, reason: collision with root package name */
    public final o f1546c;

    public a() {
        this.f1544a = q.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
        this.f1546c = c.f1552d;
        this.f1545b = 2;
    }

    public c build() {
        return (this.f1545b == 2 && this.f1546c == c.f1552d) ? this.f1544a ? c.f1556h : c.f1555g : new c(this.f1544a, this.f1545b, this.f1546c);
    }
}
