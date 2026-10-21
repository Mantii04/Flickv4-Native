package o2;

import java.util.HashMap;

/* renamed from: o2.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1434h {

    /* renamed from: a, reason: collision with root package name */
    public final C1433g f19049a = new C1433g(null);

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f19050b = new HashMap();

    public Object get(InterfaceC1443q interfaceC1443q) {
        HashMap hashMap = this.f19050b;
        C1433g c1433g = (C1433g) hashMap.get(interfaceC1443q);
        if (c1433g == null) {
            c1433g = new C1433g(interfaceC1443q);
            hashMap.put(interfaceC1443q, c1433g);
        } else {
            interfaceC1443q.offer();
        }
        C1433g c1433g2 = c1433g.f19048d;
        c1433g2.f19047c = c1433g.f19047c;
        c1433g.f19047c.f19048d = c1433g2;
        C1433g c1433g3 = this.f19049a;
        c1433g.f19048d = c1433g3;
        C1433g c1433g4 = c1433g3.f19047c;
        c1433g.f19047c = c1433g4;
        c1433g4.f19048d = c1433g;
        c1433g.f19048d.f19047c = c1433g;
        return c1433g.removeLast();
    }

    public void put(InterfaceC1443q interfaceC1443q, Object obj) {
        HashMap hashMap = this.f19050b;
        C1433g c1433g = (C1433g) hashMap.get(interfaceC1443q);
        if (c1433g == null) {
            c1433g = new C1433g(interfaceC1443q);
            c1433g.f19048d = c1433g;
            C1433g c1433g2 = this.f19049a;
            c1433g.f19048d = c1433g2.f19048d;
            c1433g.f19047c = c1433g2;
            c1433g2.f19048d = c1433g;
            c1433g.f19048d.f19047c = c1433g;
            hashMap.put(interfaceC1443q, c1433g);
        } else {
            interfaceC1443q.offer();
        }
        c1433g.add(obj);
    }

    public Object removeLast() {
        C1433g c1433g = this.f19049a;
        for (C1433g c1433g2 = c1433g.f19048d; !c1433g2.equals(c1433g); c1433g2 = c1433g2.f19048d) {
            Object removeLast = c1433g2.removeLast();
            if (removeLast != null) {
                return removeLast;
            }
            C1433g c1433g3 = c1433g2.f19048d;
            c1433g3.f19047c = c1433g2.f19047c;
            c1433g2.f19047c.f19048d = c1433g3;
            HashMap hashMap = this.f19050b;
            InterfaceC1443q interfaceC1443q = c1433g2.f19045a;
            hashMap.remove(interfaceC1443q);
            interfaceC1443q.offer();
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        C1433g c1433g = this.f19049a;
        C1433g c1433g2 = c1433g.f19047c;
        boolean z6 = false;
        while (!c1433g2.equals(c1433g)) {
            sb.append('{');
            sb.append(c1433g2.f19045a);
            sb.append(':');
            sb.append(c1433g2.size());
            sb.append("}, ");
            c1433g2 = c1433g2.f19047c;
            z6 = true;
        }
        if (z6) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }
}
