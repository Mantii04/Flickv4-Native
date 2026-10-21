package l;

import android.annotation.SuppressLint;
import k.InterfaceC1064I;

/* renamed from: l.a0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1128a0 extends AbstractViewOnTouchListenerC1129a1 {

    /* renamed from: s, reason: collision with root package name */
    public final /* synthetic */ C1158k0 f17830s;

    /* renamed from: t, reason: collision with root package name */
    public final /* synthetic */ C1170o0 f17831t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1128a0(C1170o0 c1170o0, C1170o0 c1170o02, C1158k0 c1158k0) {
        super(c1170o02);
        this.f17831t = c1170o0;
        this.f17830s = c1158k0;
    }

    @Override // l.AbstractViewOnTouchListenerC1129a1
    public InterfaceC1064I getPopup() {
        return this.f17830s;
    }

    @Override // l.AbstractViewOnTouchListenerC1129a1
    @SuppressLint({"SyntheticAccessor"})
    public boolean onForwardingStarted() {
        C1170o0 c1170o0 = this.f17831t;
        if (c1170o0.getInternalPopup().isShowing()) {
            return true;
        }
        c1170o0.f17959n.show(AbstractC1137d0.b(c1170o0), AbstractC1137d0.a(c1170o0));
        return true;
    }
}
