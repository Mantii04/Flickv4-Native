package f5;

import flix.com.vision.tv.PlayerActivityLiveExternal;

/* loaded from: classes2.dex */
public final /* synthetic */ class v implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f14410b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PlayerActivityLiveExternal f14411e;

    public /* synthetic */ v(PlayerActivityLiveExternal playerActivityLiveExternal, int i2) {
        this.f14410b = i2;
        this.f14411e = playerActivityLiveExternal;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f14410b) {
            case 0:
                this.f14411e.f16235I = false;
                break;
            default:
                PlayerActivityLiveExternal playerActivityLiveExternal = this.f14411e;
                playerActivityLiveExternal.playChannel(playerActivityLiveExternal.f16249w);
                break;
        }
    }
}
