package B2;

import java.util.ArrayList;
import java.util.List;
import l2.InterfaceC1222c;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f201a = new ArrayList();

    public synchronized void add(InterfaceC1222c interfaceC1222c) {
        this.f201a.add(interfaceC1222c);
    }

    public synchronized List<InterfaceC1222c> getParsers() {
        return this.f201a;
    }
}
