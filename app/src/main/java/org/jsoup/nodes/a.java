package org.jsoup.nodes;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;

/* loaded from: classes2.dex */
public final class a implements Cloneable {

    /* renamed from: e, reason: collision with root package name */
    public Charset f19203e;

    /* renamed from: j, reason: collision with root package name */
    public Entities$CoreCharset f19205j;

    /* renamed from: b, reason: collision with root package name */
    public Entities$EscapeMode f19202b = Entities$EscapeMode.base;

    /* renamed from: f, reason: collision with root package name */
    public final ThreadLocal f19204f = new ThreadLocal();

    /* renamed from: m, reason: collision with root package name */
    public final boolean f19206m = true;

    /* renamed from: n, reason: collision with root package name */
    public final int f19207n = 1;

    /* renamed from: p, reason: collision with root package name */
    public Document$OutputSettings$Syntax f19208p = Document$OutputSettings$Syntax.f19183b;

    public a() {
        charset(Charset.forName("UTF8"));
    }

    public final CharsetEncoder a() {
        CharsetEncoder newEncoder = this.f19203e.newEncoder();
        this.f19204f.set(newEncoder);
        String name = newEncoder.charset().name();
        this.f19205j = name.equals("US-ASCII") ? Entities$CoreCharset.f19190b : name.startsWith("UTF-") ? Entities$CoreCharset.f19191e : Entities$CoreCharset.f19192f;
        return newEncoder;
    }

    public Charset charset() {
        return this.f19203e;
    }

    public Entities$EscapeMode escapeMode() {
        return this.f19202b;
    }

    public int indentAmount() {
        return this.f19207n;
    }

    public boolean outline() {
        return false;
    }

    public boolean prettyPrint() {
        return this.f19206m;
    }

    public Document$OutputSettings$Syntax syntax() {
        return this.f19208p;
    }

    public a charset(Charset charset) {
        this.f19203e = charset;
        return this;
    }

    public a clone() {
        try {
            a aVar = (a) super.clone();
            aVar.charset(this.f19203e.name());
            aVar.f19202b = Entities$EscapeMode.valueOf(this.f19202b.name());
            return aVar;
        } catch (CloneNotSupportedException e3) {
            throw new RuntimeException(e3);
        }
    }

    public a syntax(Document$OutputSettings$Syntax document$OutputSettings$Syntax) {
        this.f19208p = document$OutputSettings$Syntax;
        return this;
    }

    public a charset(String str) {
        charset(Charset.forName(str));
        return this;
    }
}
