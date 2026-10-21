package B4;

import flix.com.vision.activities.player.SimpleVideoPlayer;
import m4.InterfaceC1330i;

/* loaded from: classes2.dex */
public final class K implements InterfaceC1330i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SimpleVideoPlayer f233a;

    public K(SimpleVideoPlayer simpleVideoPlayer) {
        this.f233a = simpleVideoPlayer;
    }

    @Override // m4.InterfaceC1330i
    public void onError(Exception exc) {
        this.f233a.f15645H0 = false;
    }

    @Override // m4.InterfaceC1330i
    public void onSuccess() {
        this.f233a.f15645H0 = true;
    }
}
