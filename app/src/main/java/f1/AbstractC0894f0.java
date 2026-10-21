package f1;

import android.content.Context;
import android.media.MediaRouter;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* renamed from: f1.f0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0894f0 {
    public static void addCallback(MediaRouter mediaRouter, int i2, MediaRouter.Callback callback) {
        mediaRouter.addCallback(i2, callback);
    }

    public static void addUserRoute(MediaRouter mediaRouter, MediaRouter.UserRouteInfo userRouteInfo) {
        mediaRouter.addUserRoute(userRouteInfo);
    }

    public static MediaRouter.Callback createCallback(Z z6) {
        return new C0884a0(z6);
    }

    public static MediaRouter.RouteCategory createRouteCategory(MediaRouter mediaRouter, String str, boolean z6) {
        return mediaRouter.createRouteCategory(str, z6);
    }

    public static MediaRouter.UserRouteInfo createUserRoute(MediaRouter mediaRouter, MediaRouter.RouteCategory routeCategory) {
        return mediaRouter.createUserRoute(routeCategory);
    }

    public static MediaRouter.VolumeCallback createVolumeCallback(InterfaceC0890d0 interfaceC0890d0) {
        return new C0892e0(interfaceC0890d0);
    }

    public static MediaRouter getMediaRouter(Context context) {
        return (MediaRouter) context.getSystemService("media_router");
    }

    public static List<MediaRouter.RouteInfo> getRoutes(MediaRouter mediaRouter) {
        int routeCount = mediaRouter.getRouteCount();
        ArrayList arrayList = new ArrayList(routeCount);
        for (int i2 = 0; i2 < routeCount; i2++) {
            arrayList.add(mediaRouter.getRouteAt(i2));
        }
        return arrayList;
    }

    public static MediaRouter.RouteInfo getSelectedRoute(MediaRouter mediaRouter, int i2) {
        return mediaRouter.getSelectedRoute(i2);
    }

    public static void removeCallback(MediaRouter mediaRouter, MediaRouter.Callback callback) {
        mediaRouter.removeCallback(callback);
    }

    public static void removeUserRoute(MediaRouter mediaRouter, MediaRouter.UserRouteInfo userRouteInfo) {
        try {
            mediaRouter.removeUserRoute(userRouteInfo);
        } catch (IllegalArgumentException e3) {
            Log.w("MediaRouterJellybean", "Failed to remove user route", e3);
        }
    }

    public static void selectRoute(MediaRouter mediaRouter, int i2, MediaRouter.RouteInfo routeInfo) {
        mediaRouter.selectRoute(i2, routeInfo);
    }
}
