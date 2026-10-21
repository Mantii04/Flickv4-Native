package I3;

import android.content.Context;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.view.WindowInsets;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class v {
    public static /* synthetic */ MediaSession f(Context context, String str, Bundle bundle) {
        return new MediaSession(context, str, bundle);
    }

    public static /* synthetic */ WindowInsets.Builder h() {
        return new WindowInsets.Builder();
    }

    public static /* synthetic */ WindowInsets.Builder i(WindowInsets windowInsets) {
        return new WindowInsets.Builder(windowInsets);
    }
}
