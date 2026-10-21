package androidx.mediarouter.app;

/* loaded from: classes.dex */
public final class Z extends f1.M {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ m0 f7755a;

    public Z(m0 m0Var) {
        this.f7755a = m0Var;
    }

    @Override // f1.M
    public void onRouteAdded(f1.X x6, f1.U u6) {
        this.f7755a.h();
    }

    @Override // f1.M
    public void onRouteChanged(f1.X x6, f1.U u6) {
        f1.T dynamicGroupState;
        m0 m0Var = this.f7755a;
        if (u6 == m0Var.f7874r && u6.getDynamicGroupController() != null) {
            for (f1.U u7 : u6.getProvider().getRoutes()) {
                if (!m0Var.f7874r.getMemberRoutes().contains(u7) && (dynamicGroupState = m0Var.f7874r.getDynamicGroupState(u7)) != null && dynamicGroupState.isGroupable() && !m0Var.f7876t.contains(u7)) {
                    m0Var.i();
                    m0Var.g();
                    return;
                }
            }
        }
        m0Var.h();
    }

    @Override // f1.M
    public void onRouteRemoved(f1.X x6, f1.U u6) {
        this.f7755a.h();
    }

    @Override // f1.M
    public void onRouteSelected(f1.X x6, f1.U u6) {
        m0 m0Var = this.f7755a;
        m0Var.f7874r = u6;
        m0Var.i();
        m0Var.g();
    }

    @Override // f1.M
    public void onRouteUnselected(f1.X x6, f1.U u6) {
        this.f7755a.h();
    }

    @Override // f1.M
    public void onRouteVolumeChanged(f1.X x6, f1.U u6) {
        Y y6;
        u6.getVolume();
        int i2 = m0.f7842c0;
        m0 m0Var = this.f7755a;
        if (m0Var.f7848F == u6 || (y6 = (Y) m0Var.f7847E.get(u6.getId())) == null) {
            return;
        }
        int volume = y6.f7751u.getVolume();
        y6.o(volume == 0);
        y6.f7753w.setProgress(volume);
    }
}
