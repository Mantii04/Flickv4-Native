package androidx.core.graphics.drawable;

import E.d;
import E.f;
import L.c;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: k, reason: collision with root package name */
    public static final PorterDuff.Mode f5549k = PorterDuff.Mode.SRC_IN;

    /* renamed from: a, reason: collision with root package name */
    public int f5550a;

    /* renamed from: b, reason: collision with root package name */
    public Object f5551b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f5552c;

    /* renamed from: d, reason: collision with root package name */
    public Parcelable f5553d;

    /* renamed from: e, reason: collision with root package name */
    public int f5554e;

    /* renamed from: f, reason: collision with root package name */
    public int f5555f;

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f5556g;

    /* renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f5557h;

    /* renamed from: i, reason: collision with root package name */
    public String f5558i;

    /* renamed from: j, reason: collision with root package name */
    public String f5559j;

    public IconCompat() {
        this.f5550a = -1;
        this.f5552c = null;
        this.f5553d = null;
        this.f5554e = 0;
        this.f5555f = 0;
        this.f5556g = null;
        this.f5557h = f5549k;
        this.f5558i = null;
    }

    public static Bitmap a(boolean z6, Bitmap bitmap) {
        int min = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(3);
        float f3 = min;
        float f7 = 0.5f * f3;
        float f8 = 0.9166667f * f7;
        if (z6) {
            float f9 = 0.010416667f * f3;
            paint.setColor(0);
            paint.setShadowLayer(f9, 0.0f, f3 * 0.020833334f, 1023410176);
            canvas.drawCircle(f7, f7, f8, paint);
            paint.setShadowLayer(f9, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f7, f7, f8, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - min)) / 2.0f, (-(bitmap.getHeight() - min)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f7, f7, f8, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    public static IconCompat createWithBitmap(Bitmap bitmap) {
        c.requireNonNull(bitmap);
        IconCompat iconCompat = new IconCompat(1);
        iconCompat.f5551b = bitmap;
        return iconCompat;
    }

    public static IconCompat createWithResource(Resources resources, String str, int i2) {
        c.requireNonNull(str);
        if (i2 == 0) {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
        IconCompat iconCompat = new IconCompat(2);
        iconCompat.f5554e = i2;
        if (resources != null) {
            try {
                iconCompat.f5551b = resources.getResourceName(i2);
            } catch (Resources.NotFoundException unused) {
                throw new IllegalArgumentException("Icon resource cannot be found");
            }
        } else {
            iconCompat.f5551b = str;
        }
        iconCompat.f5559j = str;
        return iconCompat;
    }

    public int getResId() {
        int i2 = this.f5550a;
        if (i2 != -1) {
            if (i2 == 2) {
                return this.f5554e;
            }
            throw new IllegalStateException("called getResId() on " + this);
        }
        int i7 = Build.VERSION.SDK_INT;
        Object obj = this.f5551b;
        if (i7 >= 28) {
            return f.a(obj);
        }
        try {
            return ((Integer) obj.getClass().getMethod("getResId", new Class[0]).invoke(obj, new Object[0])).intValue();
        } catch (IllegalAccessException e3) {
            Log.e("IconCompat", "Unable to get icon resource", e3);
            return 0;
        } catch (NoSuchMethodException e7) {
            Log.e("IconCompat", "Unable to get icon resource", e7);
            return 0;
        } catch (InvocationTargetException e8) {
            Log.e("IconCompat", "Unable to get icon resource", e8);
            return 0;
        }
    }

    public String getResPackage() {
        int i2 = this.f5550a;
        if (i2 != -1) {
            if (i2 == 2) {
                String str = this.f5559j;
                return (str == null || TextUtils.isEmpty(str)) ? ((String) this.f5551b).split(":", -1)[0] : this.f5559j;
            }
            throw new IllegalStateException("called getResPackage() on " + this);
        }
        int i7 = Build.VERSION.SDK_INT;
        Object obj = this.f5551b;
        if (i7 >= 28) {
            return f.b(obj);
        }
        try {
            return (String) obj.getClass().getMethod("getResPackage", new Class[0]).invoke(obj, new Object[0]);
        } catch (IllegalAccessException e3) {
            Log.e("IconCompat", "Unable to get icon package", e3);
            return null;
        } catch (NoSuchMethodException e7) {
            Log.e("IconCompat", "Unable to get icon package", e7);
            return null;
        } catch (InvocationTargetException e8) {
            Log.e("IconCompat", "Unable to get icon package", e8);
            return null;
        }
    }

    public int getType() {
        int i2 = this.f5550a;
        if (i2 != -1) {
            return i2;
        }
        int i7 = Build.VERSION.SDK_INT;
        Object obj = this.f5551b;
        if (i7 >= 28) {
            return f.c(obj);
        }
        try {
            return ((Integer) obj.getClass().getMethod("getType", new Class[0]).invoke(obj, new Object[0])).intValue();
        } catch (IllegalAccessException e3) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e3);
            return -1;
        } catch (NoSuchMethodException e7) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e7);
            return -1;
        } catch (InvocationTargetException e8) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e8);
            return -1;
        }
    }

    public Uri getUri() {
        int i2 = this.f5550a;
        if (i2 == -1) {
            return d.a(this.f5551b);
        }
        if (i2 == 4 || i2 == 6) {
            return Uri.parse((String) this.f5551b);
        }
        throw new IllegalStateException("called getUri() on " + this);
    }

    public InputStream getUriInputStream(Context context) {
        Uri uri = getUri();
        String scheme = uri.getScheme();
        if (FirebaseAnalytics.Param.CONTENT.equals(scheme) || "file".equals(scheme)) {
            try {
                return context.getContentResolver().openInputStream(uri);
            } catch (Exception e3) {
                Log.w("IconCompat", "Unable to load image from URI: " + uri, e3);
                return null;
            }
        }
        try {
            return new FileInputStream(new File((String) this.f5551b));
        } catch (FileNotFoundException e7) {
            Log.w("IconCompat", "Unable to load image from path: " + uri, e7);
            return null;
        }
    }

    public void onPostParceling() {
        this.f5557h = PorterDuff.Mode.valueOf(this.f5558i);
        switch (this.f5550a) {
            case -1:
                Parcelable parcelable = this.f5553d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                this.f5551b = parcelable;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.f5553d;
                if (parcelable2 != null) {
                    this.f5551b = parcelable2;
                    return;
                }
                byte[] bArr = this.f5552c;
                this.f5551b = bArr;
                this.f5550a = 3;
                this.f5554e = 0;
                this.f5555f = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                String str = new String(this.f5552c, Charset.forName("UTF-16"));
                this.f5551b = str;
                if (this.f5550a == 2 && this.f5559j == null) {
                    this.f5559j = str.split(":", -1)[0];
                    return;
                }
                return;
            case 3:
                this.f5551b = this.f5552c;
                return;
        }
    }

    public void onPreParceling(boolean z6) {
        this.f5558i = this.f5557h.name();
        switch (this.f5550a) {
            case -1:
                if (z6) {
                    throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
                }
                this.f5553d = (Parcelable) this.f5551b;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (!z6) {
                    this.f5553d = (Parcelable) this.f5551b;
                    return;
                }
                Bitmap bitmap = (Bitmap) this.f5551b;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                this.f5552c = byteArrayOutputStream.toByteArray();
                return;
            case 2:
                this.f5552c = ((String) this.f5551b).getBytes(Charset.forName("UTF-16"));
                return;
            case 3:
                this.f5552c = (byte[]) this.f5551b;
                return;
            case 4:
            case 6:
                this.f5552c = this.f5551b.toString().getBytes(Charset.forName("UTF-16"));
                return;
        }
    }

    @Deprecated
    public Icon toIcon() {
        return toIcon(null);
    }

    public String toString() {
        String str;
        if (this.f5550a == -1) {
            return String.valueOf(this.f5551b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (this.f5550a) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case 5:
                str = "BITMAP_MASKABLE";
                break;
            case 6:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb.append(str);
        switch (this.f5550a) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.f5551b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.f5551b).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.f5559j);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(getResId())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f5554e);
                if (this.f5555f != 0) {
                    sb.append(" off=");
                    sb.append(this.f5555f);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.f5551b);
                break;
        }
        if (this.f5556g != null) {
            sb.append(" tint=");
            sb.append(this.f5556g);
        }
        if (this.f5557h != f5549k) {
            sb.append(" mode=");
            sb.append(this.f5557h);
        }
        sb.append(")");
        return sb.toString();
    }

    public Icon toIcon(Context context) {
        return d.c(this, context);
    }

    public IconCompat(int i2) {
        this.f5552c = null;
        this.f5553d = null;
        this.f5554e = 0;
        this.f5555f = 0;
        this.f5556g = null;
        this.f5557h = f5549k;
        this.f5558i = null;
        this.f5550a = i2;
    }
}
