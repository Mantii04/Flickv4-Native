package G3;

/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    public AbstractC0105d f1117a;

    /* renamed from: b, reason: collision with root package name */
    public AbstractC0105d f1118b;

    /* renamed from: c, reason: collision with root package name */
    public AbstractC0105d f1119c;

    /* renamed from: d, reason: collision with root package name */
    public AbstractC0105d f1120d;

    /* renamed from: e, reason: collision with root package name */
    public InterfaceC0104c f1121e;

    /* renamed from: f, reason: collision with root package name */
    public InterfaceC0104c f1122f;

    /* renamed from: g, reason: collision with root package name */
    public InterfaceC0104c f1123g;

    /* renamed from: h, reason: collision with root package name */
    public InterfaceC0104c f1124h;

    /* renamed from: i, reason: collision with root package name */
    public final C0107f f1125i;

    /* renamed from: j, reason: collision with root package name */
    public final C0107f f1126j;

    /* renamed from: k, reason: collision with root package name */
    public final C0107f f1127k;

    /* renamed from: l, reason: collision with root package name */
    public final C0107f f1128l;

    public n() {
        this.f1117a = new m();
        this.f1118b = new m();
        this.f1119c = new m();
        this.f1120d = new m();
        this.f1121e = new C0102a(0.0f);
        this.f1122f = new C0102a(0.0f);
        this.f1123g = new C0102a(0.0f);
        this.f1124h = new C0102a(0.0f);
        this.f1125i = new C0107f();
        this.f1126j = new C0107f();
        this.f1127k = new C0107f();
        this.f1128l = new C0107f();
    }

    public static float a(AbstractC0105d abstractC0105d) {
        if (abstractC0105d instanceof m) {
            return ((m) abstractC0105d).f1116a;
        }
        if (abstractC0105d instanceof C0106e) {
            return ((C0106e) abstractC0105d).f1072a;
        }
        return -1.0f;
    }

    public p build() {
        p pVar = new p();
        pVar.f1129a = this.f1117a;
        pVar.f1130b = this.f1118b;
        pVar.f1131c = this.f1119c;
        pVar.f1132d = this.f1120d;
        pVar.f1133e = this.f1121e;
        pVar.f1134f = this.f1122f;
        pVar.f1135g = this.f1123g;
        pVar.f1136h = this.f1124h;
        pVar.f1137i = this.f1125i;
        pVar.f1138j = this.f1126j;
        pVar.f1139k = this.f1127k;
        pVar.f1140l = this.f1128l;
        return pVar;
    }

    public n setAllCornerSizes(InterfaceC0104c interfaceC0104c) {
        return setTopLeftCornerSize(interfaceC0104c).setTopRightCornerSize(interfaceC0104c).setBottomRightCornerSize(interfaceC0104c).setBottomLeftCornerSize(interfaceC0104c);
    }

    public n setBottomLeftCorner(int i2, InterfaceC0104c interfaceC0104c) {
        return setBottomLeftCorner(k.a(i2)).setBottomLeftCornerSize(interfaceC0104c);
    }

    public n setBottomLeftCornerSize(float f3) {
        this.f1124h = new C0102a(f3);
        return this;
    }

    public n setBottomRightCorner(int i2, InterfaceC0104c interfaceC0104c) {
        return setBottomRightCorner(k.a(i2)).setBottomRightCornerSize(interfaceC0104c);
    }

    public n setBottomRightCornerSize(float f3) {
        this.f1123g = new C0102a(f3);
        return this;
    }

    public n setTopLeftCorner(int i2, InterfaceC0104c interfaceC0104c) {
        return setTopLeftCorner(k.a(i2)).setTopLeftCornerSize(interfaceC0104c);
    }

    public n setTopLeftCornerSize(float f3) {
        this.f1121e = new C0102a(f3);
        return this;
    }

    public n setTopRightCorner(int i2, InterfaceC0104c interfaceC0104c) {
        return setTopRightCorner(k.a(i2)).setTopRightCornerSize(interfaceC0104c);
    }

    public n setTopRightCornerSize(float f3) {
        this.f1122f = new C0102a(f3);
        return this;
    }

    public n setBottomLeftCornerSize(InterfaceC0104c interfaceC0104c) {
        this.f1124h = interfaceC0104c;
        return this;
    }

    public n setBottomRightCornerSize(InterfaceC0104c interfaceC0104c) {
        this.f1123g = interfaceC0104c;
        return this;
    }

    public n setTopLeftCornerSize(InterfaceC0104c interfaceC0104c) {
        this.f1121e = interfaceC0104c;
        return this;
    }

    public n setTopRightCornerSize(InterfaceC0104c interfaceC0104c) {
        this.f1122f = interfaceC0104c;
        return this;
    }

    public n setBottomLeftCorner(AbstractC0105d abstractC0105d) {
        this.f1120d = abstractC0105d;
        float a7 = a(abstractC0105d);
        if (a7 != -1.0f) {
            setBottomLeftCornerSize(a7);
        }
        return this;
    }

    public n setBottomRightCorner(AbstractC0105d abstractC0105d) {
        this.f1119c = abstractC0105d;
        float a7 = a(abstractC0105d);
        if (a7 != -1.0f) {
            setBottomRightCornerSize(a7);
        }
        return this;
    }

    public n setTopLeftCorner(AbstractC0105d abstractC0105d) {
        this.f1117a = abstractC0105d;
        float a7 = a(abstractC0105d);
        if (a7 != -1.0f) {
            setTopLeftCornerSize(a7);
        }
        return this;
    }

    public n setTopRightCorner(AbstractC0105d abstractC0105d) {
        this.f1118b = abstractC0105d;
        float a7 = a(abstractC0105d);
        if (a7 != -1.0f) {
            setTopRightCornerSize(a7);
        }
        return this;
    }

    public n setAllCornerSizes(float f3) {
        return setTopLeftCornerSize(f3).setTopRightCornerSize(f3).setBottomRightCornerSize(f3).setBottomLeftCornerSize(f3);
    }

    public n(p pVar) {
        this.f1117a = new m();
        this.f1118b = new m();
        this.f1119c = new m();
        this.f1120d = new m();
        this.f1121e = new C0102a(0.0f);
        this.f1122f = new C0102a(0.0f);
        this.f1123g = new C0102a(0.0f);
        this.f1124h = new C0102a(0.0f);
        this.f1125i = new C0107f();
        this.f1126j = new C0107f();
        this.f1127k = new C0107f();
        this.f1128l = new C0107f();
        this.f1117a = pVar.f1129a;
        this.f1118b = pVar.f1130b;
        this.f1119c = pVar.f1131c;
        this.f1120d = pVar.f1132d;
        this.f1121e = pVar.f1133e;
        this.f1122f = pVar.f1134f;
        this.f1123g = pVar.f1135g;
        this.f1124h = pVar.f1136h;
        this.f1125i = pVar.f1137i;
        this.f1126j = pVar.f1138j;
        this.f1127k = pVar.f1139k;
        this.f1128l = pVar.f1140l;
    }
}
