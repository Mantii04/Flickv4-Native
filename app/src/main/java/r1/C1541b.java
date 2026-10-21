package r1;

/* renamed from: r1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1541b implements o {

    /* renamed from: f, reason: collision with root package name */
    public static final C1540a f19711f = new C1540a(null);

    /* renamed from: b, reason: collision with root package name */
    public final String f19712b;

    /* renamed from: e, reason: collision with root package name */
    public final Object[] f19713e;

    public C1541b(String query, Object[] objArr) {
        kotlin.jvm.internal.j.checkNotNullParameter(query, "query");
        this.f19712b = query;
        this.f19713e = objArr;
    }

    @Override // r1.o
    public void bindTo(n statement) {
        kotlin.jvm.internal.j.checkNotNullParameter(statement, "statement");
        f19711f.bind(statement, this.f19713e);
    }

    @Override // r1.o
    public String getSql() {
        return this.f19712b;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C1541b(String query) {
        this(query, null);
        kotlin.jvm.internal.j.checkNotNullParameter(query, "query");
    }
}
