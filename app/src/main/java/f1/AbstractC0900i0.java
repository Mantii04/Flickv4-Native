package f1;

import android.media.MediaRouter;
import android.util.Log;
import android.view.Display;

/* renamed from: f1.i0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0900i0 {
    public static Display getPresentationDisplay(MediaRouter.RouteInfo routeInfo) {
        try {
            return routeInfo.getPresentationDisplay();
        } catch (NoSuchMethodError e3) {
            Log.w("MediaRouterJellybeanMr1", "Cannot get presentation display for the route.", e3);
            return null;
        }
    }

    public static boolean isEnabled(MediaRouter.RouteInfo routeInfo) {
        return routeInfo.isEnabled();
    }
}
