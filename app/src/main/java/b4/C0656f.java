package b4;

/* renamed from: b4.f, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0656f {

    /* renamed from: a, reason: collision with root package name */
    public final String f8490a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8491b;

    public C0656f(String str) {
        String[] split = str.split(":", 2);
        this.f8490a = split[0].trim();
        this.f8491b = split.length > 1 ? split[1].trim() : null;
    }
}
