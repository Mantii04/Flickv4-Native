package f1;

import android.content.Context;
import android.media.MediaRouter;

/* renamed from: f1.b0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0886b0 {
    public static CharSequence getName(MediaRouter.RouteInfo routeInfo, Context context) {
        return routeInfo.getName(context);
    }

    public static int getPlaybackStream(MediaRouter.RouteInfo routeInfo) {
        return routeInfo.getPlaybackStream();
    }

    public static int getPlaybackType(MediaRouter.RouteInfo routeInfo) {
        return routeInfo.getPlaybackType();
    }

    public static int getSupportedTypes(MediaRouter.RouteInfo routeInfo) {
        return routeInfo.getSupportedTypes();
    }

    public static Object getTag(MediaRouter.RouteInfo routeInfo) {
        return routeInfo.getTag();
    }

    public static int getVolume(MediaRouter.RouteInfo routeInfo) {
        return routeInfo.getVolume();
    }

    public static int getVolumeHandling(MediaRouter.RouteInfo routeInfo) {
        return routeInfo.getVolumeHandling();
    }

    public static int getVolumeMax(MediaRouter.RouteInfo routeInfo) {
        return routeInfo.getVolumeMax();
    }

    public static void requestSetVolume(MediaRouter.RouteInfo routeInfo, int i2) {
        routeInfo.requestSetVolume(i2);
    }

    public static void requestUpdateVolume(MediaRouter.RouteInfo routeInfo, int i2) {
        routeInfo.requestUpdateVolume(i2);
    }

    public static void setTag(MediaRouter.RouteInfo routeInfo, Object obj) {
        routeInfo.setTag(obj);
    }
}
