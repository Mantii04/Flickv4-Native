package k6;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: c, reason: collision with root package name */
    public static final d f17345c = new d(false, false);

    /* renamed from: d, reason: collision with root package name */
    public static final d f17346d = new d(true, true);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f17347a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f17348b;

    public d(boolean z6, boolean z7) {
        this.f17347a = z6;
        this.f17348b = z7;
    }

    public final String a(String str) {
        String trim = str.trim();
        return !this.f17347a ? i6.b.lowerCase(trim) : trim;
    }
}
