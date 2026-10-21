package k2;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
public interface b {
    void advance();

    Bitmap getNextFrame();

    void setDefaultBitmapConfig(Bitmap.Config config);
}
