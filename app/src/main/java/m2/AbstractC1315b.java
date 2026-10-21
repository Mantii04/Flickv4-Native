package m2;

import android.net.Uri;
import androidx.media3.common.MimeTypes;
import com.google.firebase.analytics.FirebaseAnalytics;

/* renamed from: m2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1315b {
    public static boolean isAndroidPickerUri(Uri uri) {
        return isMediaStoreUri(uri) && uri.getPathSegments().contains("picker");
    }

    public static boolean isMediaStoreImageUri(Uri uri) {
        return isMediaStoreUri(uri) && !uri.getPathSegments().contains(MimeTypes.BASE_TYPE_VIDEO);
    }

    public static boolean isMediaStoreUri(Uri uri) {
        return uri != null && FirebaseAnalytics.Param.CONTENT.equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    public static boolean isMediaStoreVideoUri(Uri uri) {
        return isMediaStoreUri(uri) && uri.getPathSegments().contains(MimeTypes.BASE_TYPE_VIDEO);
    }

    public static boolean isThumbnailSize(int i2, int i7) {
        return i2 != Integer.MIN_VALUE && i7 != Integer.MIN_VALUE && i2 <= 512 && i7 <= 384;
    }
}
