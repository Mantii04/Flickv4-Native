package l;

import k.InterfaceC1064I;

/* renamed from: l.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1169o extends AbstractViewOnTouchListenerC1129a1 {

    /* renamed from: s, reason: collision with root package name */
    public final /* synthetic */ C1172p f17952s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1169o(C1172p c1172p, C1172p c1172p2) {
        super(c1172p2);
        this.f17952s = c1172p;
    }

    @Override // l.AbstractViewOnTouchListenerC1129a1
    public InterfaceC1064I getPopup() {
        C1175q c1175q = this.f17952s.f17964j.f18007C;
        if (c1175q == null) {
            return null;
        }
        return c1175q.getPopup();
    }

    @Override // l.AbstractViewOnTouchListenerC1129a1
    public boolean onForwardingStarted() {
        this.f17952s.f17964j.showOverflowMenu();
        return true;
    }

    @Override // l.AbstractViewOnTouchListenerC1129a1
    public boolean onForwardingStopped() {
        C1186u c1186u = this.f17952s.f17964j;
        if (c1186u.f18009E != null) {
            return false;
        }
        c1186u.hideOverflowMenu();
        return true;
    }
}
