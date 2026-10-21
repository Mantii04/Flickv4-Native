package J;

import android.content.Context;
import android.net.Uri;
import android.os.Build;

/* loaded from: classes.dex */
public abstract /* synthetic */ class d {
    public static e a(Context context, Uri uri) {
        return Build.VERSION.SDK_INT < 24 ? new f(context, uri) : new g(context, uri);
    }
}
