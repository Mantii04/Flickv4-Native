package B4;

import android.util.Log;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import io.reactivex.functions.Action;

/* loaded from: classes2.dex */
public final /* synthetic */ class r implements Action {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f275b;

    @Override // io.reactivex.functions.Action
    public final void run() {
        switch (this.f275b) {
            case 0:
                boolean z6 = SimpleVideoPlayer.f15629Q0;
                Log.d("Trakt", "Check-in removed");
                break;
            case 1:
                boolean z7 = SimpleVideoPlayer.f15629Q0;
                Log.d("Trakt", "Movie marked watched");
                break;
            case 2:
                boolean z8 = SimpleVideoPlayer.f15629Q0;
                Log.d("Trakt", "Scrobble paused");
                break;
            case 3:
                boolean z9 = SimpleVideoPlayer.f15629Q0;
                Log.d("Trakt", "Scrobble started/resumed");
                break;
            case 4:
                boolean z10 = SimpleVideoPlayer.f15629Q0;
                Log.d("Trakt", "Check-in removed");
                break;
            default:
                Log.d("TraktAPI", "Episode marked watched on Trakt");
                break;
        }
    }
}
