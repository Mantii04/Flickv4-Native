package N4;

import android.content.Context;
import android.util.Log;
import h5.AbstractC0995i;

/* loaded from: classes2.dex */
public abstract class a {
    public static void Success(Context context, String str, String str2, int i2, int i7) {
        try {
            if (i7 == 0) {
                AbstractC0995i.makeToastLong(context, str, i2 == 48);
            } else {
                AbstractC0995i.makeToastLong(context, str, i2 == 48);
            }
        } catch (Exception e3) {
            Log.e("ContentValues", "Success: ", e3);
        }
    }
}
