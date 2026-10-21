package k6;

import org.jsoup.parser.Token$TokenType;

/* loaded from: classes2.dex */
public abstract class o {

    /* renamed from: a, reason: collision with root package name */
    public Token$TokenType f17385a;

    public static void g(StringBuilder sb) {
        if (sb != null) {
            sb.delete(0, sb.length());
        }
    }

    public final boolean a() {
        return this.f17385a == Token$TokenType.f19243j;
    }

    public final boolean b() {
        return this.f17385a == Token$TokenType.f19240b;
    }

    public final boolean c() {
        return this.f17385a == Token$TokenType.f19245n;
    }

    public final boolean d() {
        return this.f17385a == Token$TokenType.f19242f;
    }

    public final boolean e() {
        return this.f17385a == Token$TokenType.f19241e;
    }

    public abstract o f();
}
