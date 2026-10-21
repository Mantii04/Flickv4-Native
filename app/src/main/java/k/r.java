package k;

import M.InterfaceC0156d;

/* loaded from: classes.dex */
public final class r implements InterfaceC0156d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s f17176a;

    public r(s sVar) {
        this.f17176a = sVar;
    }

    public void onActionProviderVisibilityChanged(boolean z6) {
        C1084p c1084p = this.f17176a.f17193n;
        c1084p.f17156h = true;
        c1084p.onItemsChanged(true);
    }
}
