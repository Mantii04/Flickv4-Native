package X1;

import T1.H;
import T1.InterfaceC0323b;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.fasterxml.jackson.core.JsonPointer;
import f2.AbstractC0923d;
import f2.h;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: d, reason: collision with root package name */
    public static final Object f4230d = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final Context f4231a;

    /* renamed from: b, reason: collision with root package name */
    public final String f4232b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f4233c;

    public b(Drawable.Callback callback, String str, InterfaceC0323b interfaceC0323b, Map<String, H> map) {
        this.f4232b = str;
        if (!TextUtils.isEmpty(str) && str.charAt(str.length() - 1) != '/') {
            this.f4232b = str + JsonPointer.SEPARATOR;
        }
        if (callback instanceof View) {
            this.f4231a = ((View) callback).getContext();
            this.f4233c = map;
            setDelegate(interfaceC0323b);
        } else {
            AbstractC0923d.warning("LottieDrawable must be inside of a view for images to work.");
            this.f4233c = new HashMap();
            this.f4231a = null;
        }
    }

    public final void a(String str, Bitmap bitmap) {
        synchronized (f4230d) {
            ((H) this.f4233c.get(str)).setBitmap(bitmap);
        }
    }

    public Bitmap bitmapForId(String str) {
        String str2 = this.f4232b;
        H h7 = (H) this.f4233c.get(str);
        if (h7 == null) {
            return null;
        }
        Bitmap bitmap = h7.getBitmap();
        if (bitmap != null) {
            return bitmap;
        }
        String fileName = h7.getFileName();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (fileName.startsWith("data:") && fileName.indexOf("base64,") > 0) {
            try {
                byte[] decode = Base64.decode(fileName.substring(fileName.indexOf(44) + 1), 0);
                Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length, options);
                a(str, decodeByteArray);
                return decodeByteArray;
            } catch (IllegalArgumentException e3) {
                AbstractC0923d.warning("data URL did not have correct base64 format.", e3);
                return null;
            }
        }
        try {
            if (TextUtils.isEmpty(str2)) {
                throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
            }
            Bitmap resizeBitmapIfNeeded = h.resizeBitmapIfNeeded(BitmapFactory.decodeStream(this.f4231a.getAssets().open(str2 + fileName), null, options), h7.getWidth(), h7.getHeight());
            a(str, resizeBitmapIfNeeded);
            return resizeBitmapIfNeeded;
        } catch (IOException e7) {
            AbstractC0923d.warning("Unable to open asset.", e7);
            return null;
        }
    }

    public boolean hasSameContext(Context context) {
        Context context2 = this.f4231a;
        return (context == null && context2 == null) || context2.equals(context);
    }

    public void setDelegate(InterfaceC0323b interfaceC0323b) {
    }
}
