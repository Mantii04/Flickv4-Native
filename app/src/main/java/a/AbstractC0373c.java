package a;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import androidx.leanback.transition.FadeAndShortSlide;
import java.io.Serializable;
import x1.J;

/* renamed from: a.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0373c {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f4617a = true;

    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b7 : bArr) {
            sb.append(String.format("%02x", Byte.valueOf(b7)));
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static long[] b(Serializable serializable) {
        if (!(serializable instanceof int[])) {
            if (serializable instanceof long[]) {
                return (long[]) serializable;
            }
            return null;
        }
        int[] iArr = (int[]) serializable;
        long[] jArr = new long[iArr.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            jArr[i2] = iArr[i2];
        }
        return jArr;
    }

    public static boolean c(EditText editText) {
        return editText.getInputType() != 0;
    }

    public static int d(int i2) {
        return (int) (Integer.rotateLeft((int) (i2 * (-862048943)), 15) * 461845907);
    }

    public static int e(Object obj) {
        return d(obj == null ? 0 : obj.hashCode());
    }

    public static void f(ViewGroup viewGroup, boolean z6) {
        if (Build.VERSION.SDK_INT >= 29) {
            J.b(viewGroup, z6);
        } else if (f4617a) {
            try {
                J.b(viewGroup, z6);
            } catch (NoSuchMethodError unused) {
                f4617a = false;
            }
        }
    }

    public float getGoneX(FadeAndShortSlide fadeAndShortSlide, ViewGroup viewGroup, View view, int[] iArr) {
        return view.getTranslationX();
    }

    public float getGoneY(FadeAndShortSlide fadeAndShortSlide, ViewGroup viewGroup, View view, int[] iArr) {
        return view.getTranslationY();
    }
}
