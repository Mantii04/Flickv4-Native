package Z2;

import S2.E;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import b3.InterfaceC0650a;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements InterfaceC0650a, ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f4482b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f4483e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f4484f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f4485j;

    public /* synthetic */ j(Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i2) {
        this.f4482b = 1;
        this.f4483e = i2;
        this.f4484f = positionInfo;
        this.f4485j = positionInfo2;
    }

    @Override // b3.InterfaceC0650a
    public Object execute() {
        ((d) ((m) this.f4484f).f4496d).schedule((E) this.f4485j, this.f4483e + 1);
        return null;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        switch (this.f4482b) {
            case 1:
                SimpleBasePlayer.lambda$updateStateAndInformListeners$35(this.f4483e, (Player.PositionInfo) this.f4484f, (Player.PositionInfo) this.f4485j, (Player.Listener) obj);
                break;
            default:
                ((AnalyticsListener) obj).onMediaItemTransition((AnalyticsListener.EventTime) this.f4484f, (MediaItem) this.f4485j, this.f4483e);
                break;
        }
    }

    public /* synthetic */ j(Object obj, Object obj2, int i2, int i7) {
        this.f4482b = i7;
        this.f4484f = obj;
        this.f4485j = obj2;
        this.f4483e = i2;
    }
}
