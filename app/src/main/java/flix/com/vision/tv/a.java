package flix.com.vision.tv;

import flix.com.vision.tv.PlayerActivityLiveExtended;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public final class a implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        EventBus.getDefault().post(PlayerActivityLiveExtended.RESULT_EVENT_PLAYER_CTIVITY_LIVE.f16224b);
    }
}
