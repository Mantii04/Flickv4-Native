package x1;

import java.util.ArrayList;

/* renamed from: x1.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1810l extends AbstractC1822y {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f20818a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f20819b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f20820c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f20821d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f20822e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ArrayList f20823f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ C1812n f20824g;

    public C1810l(C1812n c1812n, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
        this.f20824g = c1812n;
        this.f20818a = obj;
        this.f20819b = arrayList;
        this.f20820c = obj2;
        this.f20821d = arrayList2;
        this.f20822e = obj3;
        this.f20823f = arrayList3;
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionEnd(androidx.transition.e eVar) {
        eVar.removeListener(this);
    }

    @Override // x1.AbstractC1822y, x1.InterfaceC1820w
    public void onTransitionStart(androidx.transition.e eVar) {
        C1812n c1812n = this.f20824g;
        Object obj = this.f20818a;
        if (obj != null) {
            c1812n.replaceTargets(obj, this.f20819b, null);
        }
        Object obj2 = this.f20820c;
        if (obj2 != null) {
            c1812n.replaceTargets(obj2, this.f20821d, null);
        }
        Object obj3 = this.f20822e;
        if (obj3 != null) {
            c1812n.replaceTargets(obj3, this.f20823f, null);
        }
    }
}
