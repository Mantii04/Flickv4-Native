package k6;

/* loaded from: classes2.dex */
public abstract class n extends o {

    /* renamed from: b, reason: collision with root package name */
    public String f17376b;

    /* renamed from: c, reason: collision with root package name */
    public String f17377c;

    /* renamed from: d, reason: collision with root package name */
    public String f17378d;

    /* renamed from: f, reason: collision with root package name */
    public String f17380f;

    /* renamed from: j, reason: collision with root package name */
    public j6.c f17384j;

    /* renamed from: e, reason: collision with root package name */
    public final StringBuilder f17379e = new StringBuilder();

    /* renamed from: g, reason: collision with root package name */
    public boolean f17381g = false;

    /* renamed from: h, reason: collision with root package name */
    public boolean f17382h = false;

    /* renamed from: i, reason: collision with root package name */
    public boolean f17383i = false;

    public final void h(char c7) {
        String valueOf = String.valueOf(c7);
        String str = this.f17378d;
        if (str != null) {
            valueOf = str.concat(valueOf);
        }
        this.f17378d = valueOf;
    }

    public final void i(char c7) {
        this.f17382h = true;
        String str = this.f17380f;
        if (str != null) {
            this.f17379e.append(str);
            this.f17380f = null;
        }
        this.f17379e.append(c7);
    }

    public final void j(String str) {
        this.f17382h = true;
        String str2 = this.f17380f;
        if (str2 != null) {
            this.f17379e.append(str2);
            this.f17380f = null;
        }
        StringBuilder sb = this.f17379e;
        if (sb.length() == 0) {
            this.f17380f = str;
        } else {
            sb.append(str);
        }
    }

    public final void k(int[] iArr) {
        this.f17382h = true;
        String str = this.f17380f;
        if (str != null) {
            this.f17379e.append(str);
            this.f17380f = null;
        }
        for (int i2 : iArr) {
            this.f17379e.appendCodePoint(i2);
        }
    }

    public final void l(String str) {
        String str2 = this.f17376b;
        if (str2 != null) {
            str = str2.concat(str);
        }
        this.f17376b = str;
        this.f17377c = i6.b.lowerCase(str);
    }

    public final String m() {
        String str = this.f17376b;
        h6.k.isFalse(str == null || str.length() == 0);
        return this.f17376b;
    }

    public final void n(String str) {
        this.f17376b = str;
        this.f17377c = i6.b.lowerCase(str);
    }

    public final void o() {
        if (this.f17384j == null) {
            this.f17384j = new j6.c();
        }
        String str = this.f17378d;
        StringBuilder sb = this.f17379e;
        if (str != null) {
            String trim = str.trim();
            this.f17378d = trim;
            if (trim.length() > 0) {
                this.f17384j.put(this.f17378d, this.f17382h ? sb.length() > 0 ? sb.toString() : this.f17380f : this.f17381g ? "" : null);
            }
        }
        this.f17378d = null;
        this.f17381g = false;
        this.f17382h = false;
        o.g(sb);
        this.f17380f = null;
    }

    @Override // k6.o
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public n f() {
        this.f17376b = null;
        this.f17377c = null;
        this.f17378d = null;
        o.g(this.f17379e);
        this.f17380f = null;
        this.f17381g = false;
        this.f17382h = false;
        this.f17383i = false;
        this.f17384j = null;
        return this;
    }
}
