package B4;

import flix.com.vision.activities.player.SimpleVideoPlayer;
import m4.InterfaceC1330i;

/* loaded from: classes2.dex */
public final class F implements InterfaceC1330i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SimpleVideoPlayer f227a;

    public F(SimpleVideoPlayer simpleVideoPlayer) {
        this.f227a = simpleVideoPlayer;
    }

    @Override // m4.InterfaceC1330i
    public void onSuccess() {
        this.f227a.f15648J.setVisibility(0);
    }

    @Override // m4.InterfaceC1330i
    public void onError(Exception exc) {
    }
}
