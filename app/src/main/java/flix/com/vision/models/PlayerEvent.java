package flix.com.vision.models;

/* loaded from: classes2.dex */
public class PlayerEvent {
    public ACTION action;
    public ChannelTv channel;
    public VideoSource vs;

    public enum ACTION {
        PLAY,
        PAUSE,
        PREPARED,
        ERROR,
        COMPLETED,
        EPISODE_FAILED
    }
}
