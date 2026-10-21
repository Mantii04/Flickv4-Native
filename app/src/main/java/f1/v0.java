package f1;

import java.util.List;

/* loaded from: classes.dex */
public final class v0 extends AbstractC0881C implements r0 {

    /* renamed from: f, reason: collision with root package name */
    public final String f14317f;

    /* renamed from: g, reason: collision with root package name */
    public String f14318g;

    /* renamed from: h, reason: collision with root package name */
    public String f14319h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f14320i;

    /* renamed from: k, reason: collision with root package name */
    public int f14322k;

    /* renamed from: l, reason: collision with root package name */
    public p0 f14323l;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ x0 f14325n;

    /* renamed from: j, reason: collision with root package name */
    public int f14321j = -1;

    /* renamed from: m, reason: collision with root package name */
    public int f14324m = -1;

    public v0(x0 x0Var, String str) {
        this.f14325n = x0Var;
        this.f14317f = str;
    }

    @Override // f1.r0
    public void attachConnection(p0 p0Var) {
        u0 u0Var = new u0(this);
        this.f14323l = p0Var;
        int createDynamicGroupRouteController = p0Var.createDynamicGroupRouteController(this.f14317f, u0Var);
        this.f14324m = createDynamicGroupRouteController;
        if (this.f14320i) {
            p0Var.selectRoute(createDynamicGroupRouteController);
            int i2 = this.f14321j;
            if (i2 >= 0) {
                p0Var.setVolume(this.f14324m, i2);
                this.f14321j = -1;
            }
            int i7 = this.f14322k;
            if (i7 != 0) {
                p0Var.updateVolume(this.f14324m, i7);
                this.f14322k = 0;
            }
        }
    }

    @Override // f1.r0
    public void detachConnection() {
        p0 p0Var = this.f14323l;
        if (p0Var != null) {
            p0Var.releaseRouteController(this.f14324m);
            this.f14323l = null;
            this.f14324m = 0;
        }
    }

    @Override // f1.r0
    public int getControllerId() {
        return this.f14324m;
    }

    @Override // f1.AbstractC0881C
    public String getGroupableSelectionTitle() {
        return this.f14318g;
    }

    @Override // f1.AbstractC0881C
    public String getTransferableSectionTitle() {
        return this.f14319h;
    }

    @Override // f1.AbstractC0881C
    public void onAddMemberRoute(String str) {
        p0 p0Var = this.f14323l;
        if (p0Var != null) {
            p0Var.addMemberRoute(this.f14324m, str);
        }
    }

    @Override // f1.F
    public void onRelease() {
        x0 x0Var = this.f14325n;
        x0Var.f14339k.remove(this);
        detachConnection();
        x0Var.e();
    }

    @Override // f1.AbstractC0881C
    public void onRemoveMemberRoute(String str) {
        p0 p0Var = this.f14323l;
        if (p0Var != null) {
            p0Var.removeMemberRoute(this.f14324m, str);
        }
    }

    @Override // f1.F
    public void onSelect() {
        this.f14320i = true;
        p0 p0Var = this.f14323l;
        if (p0Var != null) {
            p0Var.selectRoute(this.f14324m);
        }
    }

    @Override // f1.F
    public void onSetVolume(int i2) {
        p0 p0Var = this.f14323l;
        if (p0Var != null) {
            p0Var.setVolume(this.f14324m, i2);
        } else {
            this.f14321j = i2;
            this.f14322k = 0;
        }
    }

    @Override // f1.F
    public void onUnselect() {
        onUnselect(0);
    }

    @Override // f1.AbstractC0881C
    public void onUpdateMemberRoutes(List<String> list) {
        p0 p0Var = this.f14323l;
        if (p0Var != null) {
            p0Var.updateMemberRoutes(this.f14324m, list);
        }
    }

    @Override // f1.F
    public void onUpdateVolume(int i2) {
        p0 p0Var = this.f14323l;
        if (p0Var != null) {
            p0Var.updateVolume(this.f14324m, i2);
        } else {
            this.f14322k += i2;
        }
    }

    @Override // f1.F
    public void onUnselect(int i2) {
        this.f14320i = false;
        p0 p0Var = this.f14323l;
        if (p0Var != null) {
            p0Var.unselectRoute(this.f14324m, i2);
        }
    }
}
