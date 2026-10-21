package f1;

import android.media.MediaRouter;
import android.media.RemoteControlClient;

/* renamed from: f1.c0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0888c0 {
    public static void setName(MediaRouter.UserRouteInfo userRouteInfo, CharSequence charSequence) {
        userRouteInfo.setName(charSequence);
    }

    public static void setPlaybackStream(MediaRouter.UserRouteInfo userRouteInfo, int i2) {
        userRouteInfo.setPlaybackStream(i2);
    }

    public static void setPlaybackType(MediaRouter.UserRouteInfo userRouteInfo, int i2) {
        userRouteInfo.setPlaybackType(i2);
    }

    public static void setRemoteControlClient(MediaRouter.UserRouteInfo userRouteInfo, RemoteControlClient remoteControlClient) {
        userRouteInfo.setRemoteControlClient(remoteControlClient);
    }

    public static void setVolume(MediaRouter.UserRouteInfo userRouteInfo, int i2) {
        userRouteInfo.setVolume(i2);
    }

    public static void setVolumeCallback(MediaRouter.UserRouteInfo userRouteInfo, MediaRouter.VolumeCallback volumeCallback) {
        userRouteInfo.setVolumeCallback(volumeCallback);
    }

    public static void setVolumeHandling(MediaRouter.UserRouteInfo userRouteInfo, int i2) {
        userRouteInfo.setVolumeHandling(i2);
    }

    public static void setVolumeMax(MediaRouter.UserRouteInfo userRouteInfo, int i2) {
        userRouteInfo.setVolumeMax(i2);
    }
}
