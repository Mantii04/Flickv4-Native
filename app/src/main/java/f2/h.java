package f2;

import T1.AbstractC0324c;
import V1.t;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import android.provider.Settings;
import java.io.Closeable;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import javax.net.ssl.SSLException;

/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public static final PathMeasure f14370a = new PathMeasure();

    /* renamed from: b, reason: collision with root package name */
    public static final Path f14371b = new Path();

    /* renamed from: c, reason: collision with root package name */
    public static final Path f14372c = new Path();

    /* renamed from: d, reason: collision with root package name */
    public static final float[] f14373d = new float[4];

    /* renamed from: e, reason: collision with root package name */
    public static final float f14374e = (float) (Math.sqrt(2.0d) / 2.0d);

    /* renamed from: f, reason: collision with root package name */
    public static float f14375f = -1.0f;

    public static void applyTrimPathIfNeeded(Path path, t tVar) {
        if (tVar == null || tVar.isHidden()) {
            return;
        }
        applyTrimPathIfNeeded(path, ((W1.h) tVar.getStart()).getFloatValue() / 100.0f, ((W1.h) tVar.getEnd()).getFloatValue() / 100.0f, ((W1.h) tVar.getOffset()).getFloatValue() / 360.0f);
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception unused) {
            }
        }
    }

    public static Path createPath(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 == null || pointF4 == null || (pointF3.length() == 0.0f && pointF4.length() == 0.0f)) {
            path.lineTo(pointF2.x, pointF2.y);
            return path;
        }
        float f3 = pointF.x + pointF3.x;
        float f7 = pointF.y + pointF3.y;
        float f8 = pointF2.x;
        float f9 = f8 + pointF4.x;
        float f10 = pointF2.y;
        path.cubicTo(f3, f7, f9, f10 + pointF4.y, f8, f10);
        return path;
    }

    public static float dpScale() {
        if (f14375f == -1.0f) {
            f14375f = Resources.getSystem().getDisplayMetrics().density;
        }
        return f14375f;
    }

    public static float getAnimationScale(Context context) {
        return Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
    }

    public static float getScale(Matrix matrix) {
        float[] fArr = f14373d;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f3 = f14374e;
        fArr[2] = f3;
        fArr[3] = f3;
        matrix.mapPoints(fArr);
        return (float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1]);
    }

    public static boolean hasZeroScaleAxis(Matrix matrix) {
        float[] fArr = f14373d;
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 37394.73f;
        fArr[3] = 39575.234f;
        matrix.mapPoints(fArr);
        return fArr[0] == fArr[2] || fArr[1] == fArr[3];
    }

    public static int hashFor(float f3, float f7, float f8, float f9) {
        int i2 = f3 != 0.0f ? (int) (527 * f3) : 17;
        if (f7 != 0.0f) {
            i2 = (int) (i2 * 31 * f7);
        }
        if (f8 != 0.0f) {
            i2 = (int) (i2 * 31 * f8);
        }
        return f9 != 0.0f ? (int) (i2 * 31 * f9) : i2;
    }

    public static boolean isAtLeastVersion(int i2, int i7, int i8, int i9, int i10, int i11) {
        if (i2 < i9) {
            return false;
        }
        if (i2 > i9) {
            return true;
        }
        if (i7 < i10) {
            return false;
        }
        return i7 > i10 || i8 >= i11;
    }

    public static boolean isNetworkException(Throwable th) {
        return (th instanceof SocketException) || (th instanceof ClosedChannelException) || (th instanceof InterruptedIOException) || (th instanceof ProtocolException) || (th instanceof SSLException) || (th instanceof UnknownHostException) || (th instanceof UnknownServiceException);
    }

    public static Bitmap resizeBitmapIfNeeded(Bitmap bitmap, int i2, int i7) {
        if (bitmap.getWidth() == i2 && bitmap.getHeight() == i7) {
            return bitmap;
        }
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, i2, i7, true);
        bitmap.recycle();
        return createScaledBitmap;
    }

    public static void saveLayerCompat(Canvas canvas, RectF rectF, Paint paint) {
        saveLayerCompat(canvas, rectF, paint, 31);
    }

    public static void saveLayerCompat(Canvas canvas, RectF rectF, Paint paint, int i2) {
        AbstractC0324c.beginSection("Utils#saveLayer");
        canvas.saveLayer(rectF, paint);
        AbstractC0324c.endSection("Utils#saveLayer");
    }

    public static void applyTrimPathIfNeeded(Path path, float f3, float f7, float f8) {
        AbstractC0324c.beginSection("applyTrimPathIfNeeded");
        PathMeasure pathMeasure = f14370a;
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (f3 == 1.0f && f7 == 0.0f) {
            AbstractC0324c.endSection("applyTrimPathIfNeeded");
            return;
        }
        if (length >= 1.0f && Math.abs((f7 - f3) - 1.0f) >= 0.01d) {
            float f9 = f3 * length;
            float f10 = f7 * length;
            float f11 = f8 * length;
            float min = Math.min(f9, f10) + f11;
            float max = Math.max(f9, f10) + f11;
            if (min >= length && max >= length) {
                min = g.a(min, length);
                max = g.a(max, length);
            }
            if (min < 0.0f) {
                min = g.a(min, length);
            }
            if (max < 0.0f) {
                max = g.a(max, length);
            }
            if (min == max) {
                path.reset();
                AbstractC0324c.endSection("applyTrimPathIfNeeded");
                return;
            }
            if (min >= max) {
                min -= length;
            }
            Path path2 = f14371b;
            path2.reset();
            pathMeasure.getSegment(min, max, path2, true);
            Path path3 = f14372c;
            if (max > length) {
                path3.reset();
                pathMeasure.getSegment(0.0f, max % length, path3, true);
                path2.addPath(path3);
            } else if (min < 0.0f) {
                path3.reset();
                pathMeasure.getSegment(min + length, length, path3, true);
                path2.addPath(path3);
            }
            path.set(path2);
            AbstractC0324c.endSection("applyTrimPathIfNeeded");
            return;
        }
        AbstractC0324c.endSection("applyTrimPathIfNeeded");
    }
}
