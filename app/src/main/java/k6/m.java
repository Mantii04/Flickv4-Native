package k6;

import org.apache.commons.lang3.StringUtils;
import org.jsoup.parser.Token$TokenType;

/* loaded from: classes2.dex */
public final class m extends n {
    public m() {
        this.f17384j = new j6.c();
        this.f17385a = Token$TokenType.f19241e;
    }

    @Override // k6.n, k6.o
    public final /* bridge */ /* synthetic */ o f() {
        f();
        return this;
    }

    @Override // k6.n
    /* renamed from: p */
    public final n f() {
        super.f();
        this.f17384j = new j6.c();
        return this;
    }

    public String toString() {
        j6.c cVar = this.f17384j;
        if (cVar == null || cVar.size() <= 0) {
            return "<" + m() + ">";
        }
        return "<" + m() + StringUtils.SPACE + this.f17384j.toString() + ">";
    }
}
