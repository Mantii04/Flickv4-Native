package k6;

import org.jsoup.parser.Token$TokenType;

/* loaded from: classes2.dex */
public final class i extends o {

    /* renamed from: b, reason: collision with root package name */
    public final StringBuilder f17369b = new StringBuilder();

    /* renamed from: c, reason: collision with root package name */
    public boolean f17370c = false;

    public i() {
        this.f17385a = Token$TokenType.f19243j;
    }

    @Override // k6.o
    public final o f() {
        o.g(this.f17369b);
        this.f17370c = false;
        return this;
    }

    public String toString() {
        return "<!--" + this.f17369b.toString() + "-->";
    }
}
