package u2;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;

/* loaded from: classes.dex */
public interface H {
    Bitmap decodeBitmap(BitmapFactory.Options options) throws IOException;

    int getImageOrientation() throws IOException;

    ImageHeaderParser$ImageType getImageType() throws IOException;

    void stopGrowingBuffers();
}
