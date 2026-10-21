package l6;

import java.util.ArrayList;

/* renamed from: l6.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1235e extends AbstractC1236f {
    public void add(S s6) {
        ArrayList arrayList = this.f18175a;
        arrayList.add(s6);
        this.f18176b = arrayList.size();
    }

    @Override // l6.S
    public boolean matches(org.jsoup.nodes.b bVar, org.jsoup.nodes.b bVar2) {
        for (int i2 = 0; i2 < this.f18176b; i2++) {
            if (((S) this.f18175a.get(i2)).matches(bVar, bVar2)) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        return h6.j.join(this.f18175a, ", ");
    }
}
