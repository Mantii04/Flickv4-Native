package R;

import android.content.ClipDescription;
import android.net.Uri;

/* loaded from: classes.dex */
public interface j {
    Uri getContentUri();

    ClipDescription getDescription();

    Object getInputContentInfo();

    Uri getLinkUri();

    void requestPermission();
}
