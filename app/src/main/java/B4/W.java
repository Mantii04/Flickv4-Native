package B4;

import flix.com.vision.activities.player.WebPlayerActivitySuper;
import m4.InterfaceC1330i;

/* loaded from: classes2.dex */
public final class W implements InterfaceC1330i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebPlayerActivitySuper f249a;

    public W(WebPlayerActivitySuper webPlayerActivitySuper) {
        this.f249a = webPlayerActivitySuper;
    }

    @Override // m4.InterfaceC1330i
    public void onSuccess() {
        this.f249a.f15772u.setVisibility(0);
    }

    @Override // m4.InterfaceC1330i
    public void onError(Exception exc) {
    }
}
