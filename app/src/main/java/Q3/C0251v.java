package Q3;

/* renamed from: Q3.v, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0251v {

    /* renamed from: a, reason: collision with root package name */
    public final Object f2913a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f2914b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f2915c;

    public C0251v(Object obj, Object obj2, Object obj3) {
        this.f2913a = obj;
        this.f2914b = obj2;
        this.f2915c = obj3;
    }

    public final IllegalArgumentException a() {
        StringBuilder sb = new StringBuilder("Multiple entries with same key: ");
        Object obj = this.f2913a;
        sb.append(obj);
        sb.append("=");
        sb.append(this.f2914b);
        sb.append(" and ");
        sb.append(obj);
        sb.append("=");
        sb.append(this.f2915c);
        return new IllegalArgumentException(sb.toString());
    }
}
