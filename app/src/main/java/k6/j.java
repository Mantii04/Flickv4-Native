package k6;

import org.jsoup.parser.Token$TokenType;

/* loaded from: classes2.dex */
public final class j extends o {

    /* renamed from: b, reason: collision with root package name */
    public final StringBuilder f17371b = new StringBuilder();

    /* renamed from: c, reason: collision with root package name */
    public String f17372c = null;

    /* renamed from: d, reason: collision with root package name */
    public final StringBuilder f17373d = new StringBuilder();

    /* renamed from: e, reason: collision with root package name */
    public final StringBuilder f17374e = new StringBuilder();

    /* renamed from: f, reason: collision with root package name */
    public boolean f17375f = false;

    public j() {
        this.f17385a = Token$TokenType.f19240b;
    }

    @Override // k6.o
    public final o f() {
        o.g(this.f17371b);
        this.f17372c = null;
        o.g(this.f17373d);
        o.g(this.f17374e);
        this.f17375f = false;
        return this;
    }

    public String getSystemIdentifier() {
        return this.f17374e.toString();
    }

    public boolean isForceQuirks() {
        return this.f17375f;
    }
}
