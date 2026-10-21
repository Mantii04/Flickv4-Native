package flix.com.vision.tv;

import flix.com.vision.tv.PlayerActivityLiveExternal;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public final class b implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        EventBus.getDefault().post(PlayerActivityLiveExternal.RESULT_EVENT_PLAYER_CTIVITY_LIVE.f16253b);
    }
}
