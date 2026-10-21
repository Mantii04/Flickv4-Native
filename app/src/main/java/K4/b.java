package K4;

import flix.com.vision.bvp.BetterVideoPlayer;

/* loaded from: classes2.dex */
public interface b {
    void onBuffering(int i2);

    void onCompletion(BetterVideoPlayer betterVideoPlayer);

    void onError(BetterVideoPlayer betterVideoPlayer, Exception exc);

    void onPaused(BetterVideoPlayer betterVideoPlayer);

    void onPrepared(BetterVideoPlayer betterVideoPlayer);

    void onPreparing();

    void onStarted(BetterVideoPlayer betterVideoPlayer);

    void onToggleControls(boolean z6);
}
