package G2;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;

/* loaded from: classes.dex */
public abstract class t {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f1049a = "0123456789abcdef".toCharArray();

    /* renamed from: b, reason: collision with root package name */
    public static final char[] f1050b = new char[64];

    /* renamed from: c, reason: collision with root package name */
    public static volatile Handler f1051c;

    public static Handler a() {
        if (f1051c == null) {
            synchronized (t.class) {
                try {
                    if (f1051c == null) {
                        f1051c = new Handler(Looper.getMainLooper());
                    }
                } finally {
                }
            }
        }
        return f1051c;
    }

    public static void assertMainThread() {
        if (!isOnMainThread()) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    public static boolean bothBaseRequestOptionsNullEquivalentOrEquals(C2.a aVar, C2.a aVar2) {
        return aVar == null ? aVar2 == null : aVar.isEquivalentTo(aVar2);
    }

    public static boolean bothModelsNullEquivalentOrEquals(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static boolean bothNullOrEqual(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static <T> Queue<T> createQueue(int i2) {
        return new ArrayDeque(i2);
    }

    @TargetApi(19)
    public static int getBitmapByteSize(Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
                return bitmap.getRowBytes() * bitmap.getHeight();
            }
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
    }

    public static int getBytesPerPixel(Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i2 = s.f1048a[config.ordinal()];
        int i7 = 1;
        if (i2 != 1) {
            i7 = 2;
            if (i2 != 2 && i2 != 3) {
                return i2 != 4 ? 4 : 8;
            }
        }
        return i7;
    }

    public static <T> List<T> getSnapshot(Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t6 : collection) {
            if (t6 != null) {
                arrayList.add(t6);
            }
        }
        return arrayList;
    }

    public static int hashCode(int i2, int i7) {
        return (i7 * 31) + i2;
    }

    public static boolean isOnBackgroundThread() {
        return !isOnMainThread();
    }

    public static boolean isOnMainThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean isValidDimension(int i2) {
        return i2 > 0 || i2 == Integer.MIN_VALUE;
    }

    public static boolean isValidDimensions(int i2, int i7) {
        return isValidDimension(i2) && isValidDimension(i7);
    }

    public static void postOnUiThread(Runnable runnable) {
        a().post(runnable);
    }

    public static void removeCallbacksOnUiThread(Runnable runnable) {
        a().removeCallbacks(runnable);
    }

    public static String sha256BytesToHex(byte[] bArr) {
        String str;
        char[] cArr = f1050b;
        synchronized (cArr) {
            for (int i2 = 0; i2 < bArr.length; i2++) {
                byte b7 = bArr[i2];
                int i7 = i2 * 2;
                char[] cArr2 = f1049a;
                cArr[i7] = cArr2[(b7 & 255) >>> 4];
                cArr[i7 + 1] = cArr2[b7 & 15];
            }
            str = new String(cArr);
        }
        return str;
    }

    public static int hashCode(float f3) {
        return hashCode(f3, 17);
    }

    public static int hashCode(float f3, int i2) {
        return hashCode(Float.floatToIntBits(f3), i2);
    }

    public static int hashCode(Object obj, int i2) {
        return hashCode(obj == null ? 0 : obj.hashCode(), i2);
    }

    public static int hashCode(boolean z6, int i2) {
        return hashCode(z6 ? 1 : 0, i2);
    }

    public static int getBitmapByteSize(int i2, int i7, Bitmap.Config config) {
        return getBytesPerPixel(config) * i2 * i7;
    }
}
