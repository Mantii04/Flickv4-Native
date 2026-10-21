package l6;

import java.util.Arrays;
import java.util.List;
import org.apache.commons.lang3.StringUtils;

/* renamed from: l6.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1234d extends AbstractC1236f {
    public C1234d(List list) {
        this.f18175a.addAll(list);
        this.f18176b = this.f18175a.size();
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        for (int i2 = 0; i2 < this.f18176b; i2++) {
            if (!((S) this.f18175a.get(i2)).matches(bVar, bVar2)) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        return h6.j.join(this.f18175a, StringUtils.SPACE);
    }

    public C1234d(S... sArr) {
        this(Arrays.asList(sArr));
    }
}
