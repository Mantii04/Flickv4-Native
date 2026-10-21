package H3;

import N.A;
import N.s;
import android.view.View;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Player;
import androidx.media3.common.SimpleBasePlayer;
import androidx.media3.common.util.ListenerSet;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* loaded from: classes2.dex */
public final /* synthetic */ class c implements A, ListenerSet.Event {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1201b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f1202e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f1203f;

    public /* synthetic */ c(Object obj, int i2, int i7) {
        this.f1201b = i7;
        this.f1203f = obj;
        this.f1202e = i2;
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        Player.Listener listener = (Player.Listener) obj;
        switch (this.f1201b) {
            case 1:
                listener.onMediaItemTransition((MediaItem) this.f1203f, this.f1202e);
                break;
            default:
                SimpleBasePlayer.lambda$updateStateAndInformListeners$34((SimpleBasePlayer.State) this.f1203f, this.f1202e, listener);
                break;
        }
    }

    @Override // N.A
    public boolean perform(View view, s sVar) {
        int i2 = SideSheetBehavior.f12782G;
        ((SideSheetBehavior) this.f1203f).setState(this.f1202e);
        return true;
    }
}
