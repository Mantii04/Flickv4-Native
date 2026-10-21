package m3;

import G3.C0102a;
import G3.InterfaceC0104c;
import android.view.View;
import x3.T;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: e, reason: collision with root package name */
    public static final C0102a f18582e = new C0102a(0.0f);

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0104c f18583a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0104c f18584b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC0104c f18585c;

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC0104c f18586d;

    public g(InterfaceC0104c interfaceC0104c, InterfaceC0104c interfaceC0104c2, InterfaceC0104c interfaceC0104c3, InterfaceC0104c interfaceC0104c4) {
        this.f18583a = interfaceC0104c;
        this.f18584b = interfaceC0104c3;
        this.f18585c = interfaceC0104c4;
        this.f18586d = interfaceC0104c2;
    }

    public static g bottom(g gVar) {
        InterfaceC0104c interfaceC0104c = gVar.f18586d;
        InterfaceC0104c interfaceC0104c2 = gVar.f18585c;
        C0102a c0102a = f18582e;
        return new g(c0102a, interfaceC0104c, c0102a, interfaceC0104c2);
    }

    public static g end(g gVar, View view) {
        return T.isLayoutRtl(view) ? left(gVar) : right(gVar);
    }

    public static g left(g gVar) {
        InterfaceC0104c interfaceC0104c = gVar.f18583a;
        C0102a c0102a = f18582e;
        return new g(interfaceC0104c, gVar.f18586d, c0102a, c0102a);
    }

    public static g right(g gVar) {
        InterfaceC0104c interfaceC0104c = gVar.f18584b;
        InterfaceC0104c interfaceC0104c2 = gVar.f18585c;
        C0102a c0102a = f18582e;
        return new g(c0102a, c0102a, interfaceC0104c, interfaceC0104c2);
    }

    public static g start(g gVar, View view) {
        return T.isLayoutRtl(view) ? right(gVar) : left(gVar);
    }

    public static g top(g gVar) {
        InterfaceC0104c interfaceC0104c = gVar.f18583a;
        C0102a c0102a = f18582e;
        return new g(interfaceC0104c, c0102a, gVar.f18584b, c0102a);
    }
}
