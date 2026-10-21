package B4;

import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.SessionManagerListener;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.bvp.BetterVideoPlayer;

/* loaded from: classes2.dex */
public final class L implements SessionManagerListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SimpleVideoPlayer f234a;

    public L(SimpleVideoPlayer simpleVideoPlayer) {
        this.f234a = simpleVideoPlayer;
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionResumed(CastSession castSession, boolean z6) {
        SimpleVideoPlayer simpleVideoPlayer = this.f234a;
        BetterVideoPlayer betterVideoPlayer = simpleVideoPlayer.f15630A;
        if (betterVideoPlayer != null) {
            betterVideoPlayer.getToolbar().invalidateMenu();
        }
        simpleVideoPlayer.f15710x0 = castSession;
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionStarted(CastSession castSession, String str) {
        SimpleVideoPlayer simpleVideoPlayer = this.f234a;
        simpleVideoPlayer.f15630A.getToolbar().invalidateMenu();
        simpleVideoPlayer.f15710x0 = castSession;
        simpleVideoPlayer.g(simpleVideoPlayer.f15630A.getSource().toString());
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionEnded(CastSession castSession, int i2) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionEnding(CastSession castSession) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionResumeFailed(CastSession castSession, int i2) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionResuming(CastSession castSession, String str) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionStartFailed(CastSession castSession, int i2) {
        CastContext castContext = this.f234a.f15662Q;
        if (castContext != null) {
            castContext.getCastReasonCodeForCastStatusCode(i2);
        }
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionStarting(CastSession castSession) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public void onSessionSuspended(CastSession castSession, int i2) {
    }
}
