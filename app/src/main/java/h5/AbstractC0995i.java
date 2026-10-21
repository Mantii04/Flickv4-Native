package h5;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.widget.Toast;
import flix.com.vision.R;

/* renamed from: h5.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0995i {
    public static void a(Context context, String str, int i2, boolean z6) {
        try {
            View inflate = LayoutInflater.from(context).inflate(R.layout.layout_toast_modern, (ViewGroup) null);
            ((TextView) inflate.findViewById(R.id.toast_text)).setText(str);
            Toast toast = new Toast(context);
            toast.setGravity(z6 ? 49 : 81, 0, 50);
            toast.setDuration(i2);
            toast.setView(inflate);
            toast.show();
        } catch (Exception e3) {
            e3.printStackTrace();
            Toast.makeText(context, str, i2).show();
        }
    }

    public static void makeToast(Context context, String str, boolean z6) {
        a(context, str, 0, z6);
    }

    public static void makeToastLong(Context context, String str, boolean z6) {
        a(context, str, 1, z6);
    }
}
