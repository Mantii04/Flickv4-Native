package B4;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;
import flix.com.vision.activities.TraktTvConfigActivity;
import flix.com.vision.activities.player.PlayerActivityLiveTV;
import flix.com.vision.helpers.Constants$TRAKT_TV_EVENT;
import org.greenrobot.eventbus.EventBus;

/* renamed from: B4.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC0044g implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f265b;

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f265b) {
            case 0:
                int i2 = PlayerActivityLiveTV.f15608B;
                EventBus.getDefault().post(PlayerActivityLiveTV.RESULT_EVENT_PLAYER_CTIVITY_LIVE.f15627b);
                break;
            case 1:
                int i7 = AlarmManagerSchedulerBroadcastReceiver.f9509a;
                break;
            default:
                int i8 = TraktTvConfigActivity.f15262z;
                EventBus.getDefault().post(Constants$TRAKT_TV_EVENT.f16002e);
                break;
        }
    }
}
