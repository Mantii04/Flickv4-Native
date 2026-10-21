package B4;

import flix.com.vision.activities.player.PlayerActivityLiveTV;
import flix.com.vision.models.ChannelTv;

/* renamed from: B4.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC0049l implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ChannelTv f270b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PlayerActivityLiveTV f271e;

    public RunnableC0049l(PlayerActivityLiveTV playerActivityLiveTV, ChannelTv channelTv) {
        this.f271e = playerActivityLiveTV;
        this.f270b = channelTv;
    }

    @Override // java.lang.Runnable
    public void run() {
        PlayerActivityLiveTV playerActivityLiveTV = this.f271e;
        if (playerActivityLiveTV.f15621u.isPrepared()) {
            return;
        }
        playerActivityLiveTV.playChannel(this.f270b, true);
    }
}
