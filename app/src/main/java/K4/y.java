package K4;

import android.net.Uri;
import cz.msebera.android.httpclient.HttpHost;

/* loaded from: classes2.dex */
public abstract class y {
    public static boolean isRemotePath(Uri uri) {
        return uri.getScheme().equals(HttpHost.DEFAULT_SCHEME_NAME) || uri.getScheme().equals("https");
    }
}
