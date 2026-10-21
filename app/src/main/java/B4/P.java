package B4;

import flix.com.vision.activities.player.WebPlayerActivity;
import m4.InterfaceC1330i;

/* loaded from: classes2.dex */
public final class P implements InterfaceC1330i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WebPlayerActivity f240a;

    public P(WebPlayerActivity webPlayerActivity) {
        this.f240a = webPlayerActivity;
    }

    @Override // m4.InterfaceC1330i
    public void onSuccess() {
        this.f240a.f15741u.setVisibility(0);
    }

    @Override // m4.InterfaceC1330i
    public void onError(Exception exc) {
    }
}
