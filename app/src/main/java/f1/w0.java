package f1;

/* loaded from: classes.dex */
public final class w0 extends F implements r0 {

    /* renamed from: a, reason: collision with root package name */
    public final String f14328a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14329b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f14330c;

    /* renamed from: d, reason: collision with root package name */
    public int f14331d = -1;

    /* renamed from: e, reason: collision with root package name */
    public int f14332e;

    /* renamed from: f, reason: collision with root package name */
    public p0 f14333f;

    /* renamed from: g, reason: collision with root package name */
    public int f14334g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ x0 f14335h;

    public w0(x0 x0Var, String str, String str2) {
        this.f14335h = x0Var;
        this.f14328a = str;
        this.f14329b = str2;
    }

    @Override // f1.r0
    public void attachConnection(p0 p0Var) {
        this.f14333f = p0Var;
        int createRouteController = p0Var.createRouteController(this.f14328a, this.f14329b);
        this.f14334g = createRouteController;
        if (this.f14330c) {
            p0Var.selectRoute(createRouteController);
            int i2 = this.f14331d;
            if (i2 >= 0) {
                p0Var.setVolume(this.f14334g, i2);
                this.f14331d = -1;
            }
            int i7 = this.f14332e;
            if (i7 != 0) {
                p0Var.updateVolume(this.f14334g, i7);
                this.f14332e = 0;
            }
        }
    }

    @Override // f1.r0
    public void detachConnection() {
        p0 p0Var = this.f14333f;
        if (p0Var != null) {
            p0Var.releaseRouteController(this.f14334g);
            this.f14333f = null;
            this.f14334g = 0;
        }
    }

    @Override // f1.r0
    public int getControllerId() {
        return this.f14334g;
    }

    @Override // f1.F
    public void onRelease() {
        x0 x0Var = this.f14335h;
        x0Var.f14339k.remove(this);
        detachConnection();
        x0Var.e();
    }

    @Override // f1.F
    public void onSelect() {
        this.f14330c = true;
        p0 p0Var = this.f14333f;
        if (p0Var != null) {
            p0Var.selectRoute(this.f14334g);
        }
    }

    @Override // f1.F
    public void onSetVolume(int i2) {
        p0 p0Var = this.f14333f;
        if (p0Var != null) {
            p0Var.setVolume(this.f14334g, i2);
        } else {
            this.f14331d = i2;
            this.f14332e = 0;
        }
    }

    @Override // f1.F
    public void onUnselect() {
        onUnselect(0);
    }

    @Override // f1.F
    public void onUpdateVolume(int i2) {
        p0 p0Var = this.f14333f;
        if (p0Var != null) {
            p0Var.updateVolume(this.f14334g, i2);
        } else {
            this.f14332e += i2;
        }
    }

    @Override // f1.F
    public void onUnselect(int i2) {
        this.f14330c = false;
        p0 p0Var = this.f14333f;
        if (p0Var != null) {
            p0Var.unselectRoute(this.f14334g, i2);
        }
    }
}
