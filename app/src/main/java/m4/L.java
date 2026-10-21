package m4;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class L {
    public static void a(int i2, int i7, int i8, int i9, BitmapFactory.Options options, I i10) {
        int min;
        double floor;
        if (i9 > i7 || i8 > i2) {
            if (i7 == 0) {
                floor = Math.floor(i8 / i2);
            } else if (i2 == 0) {
                floor = Math.floor(i9 / i7);
            } else {
                int floor2 = (int) Math.floor(i9 / i7);
                int floor3 = (int) Math.floor(i8 / i2);
                i10.getClass();
                min = Math.min(floor2, floor3);
            }
            min = (int) floor;
        } else {
            min = 1;
        }
        options.inSampleSize = min;
        options.inJustDecodeBounds = false;
    }

    public static BitmapFactory.Options b(I i2) {
        boolean hasSize = i2.hasSize();
        Bitmap.Config config = i2.f18628i;
        boolean z6 = config != null;
        if (!hasSize && !z6) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = hasSize;
        options.inInputShareable = false;
        options.inPurgeable = false;
        if (z6) {
            options.inPreferredConfig = config;
        }
        return options;
    }

    public int c() {
        return 0;
    }

    public abstract boolean canHandleRequest(I i2);

    public boolean d(NetworkInfo networkInfo) {
        return false;
    }

    public abstract K load(I i2, int i7) throws IOException;
}
