package T1;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.google.firebase.sessions.settings.RemoteSettings;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* renamed from: T1.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0338q {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f3634a = new HashMap();

    public static O a(String str, Callable callable) {
        C0330i c0330i = str == null ? null : Y1.g.getInstance().get(str);
        if (c0330i != null) {
            return new O(new CallableC0337p(c0330i));
        }
        HashMap hashMap = f3634a;
        if (str != null && hashMap.containsKey(str)) {
            return (O) hashMap.get(str);
        }
        O o6 = new O(callable);
        if (str != null) {
            o6.addListener(new C0331j(str));
            o6.addFailureListener(new C0332k(str));
            hashMap.put(str, o6);
        }
        return o6;
    }

    public static L b(com.airbnb.lottie.parser.moshi.a aVar, String str, boolean z6) {
        try {
            try {
                C0330i parse = d2.t.parse(aVar);
                if (str != null) {
                    Y1.g.getInstance().put(str, parse);
                }
                L l7 = new L(parse);
                if (z6) {
                    f2.h.closeQuietly(aVar);
                }
                return l7;
            } catch (Exception e3) {
                L l8 = new L((Throwable) e3);
                if (z6) {
                    f2.h.closeQuietly(aVar);
                }
                return l8;
            }
        } catch (Throwable th) {
            if (z6) {
                f2.h.closeQuietly(aVar);
            }
            throw th;
        }
    }

    public static L c(ZipInputStream zipInputStream, String str) {
        H h7;
        HashMap hashMap = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            C0330i c0330i = null;
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (name.contains("__MACOSX")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().contains(".json")) {
                    c0330i = (C0330i) b(com.airbnb.lottie.parser.moshi.a.of(e6.w.buffer(e6.w.source(zipInputStream))), null, false).getValue();
                } else {
                    if (!name.contains(".png") && !name.contains(".webp")) {
                        zipInputStream.closeEntry();
                    }
                    hashMap.put(name.split(RemoteSettings.FORWARD_SLASH_STRING)[r1.length - 1], BitmapFactory.decodeStream(zipInputStream));
                }
                nextEntry = zipInputStream.getNextEntry();
            }
            if (c0330i == null) {
                return new L((Throwable) new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                String str2 = (String) entry.getKey();
                Iterator<H> it = c0330i.getImages().values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        h7 = null;
                        break;
                    }
                    h7 = it.next();
                    if (h7.getFileName().equals(str2)) {
                        break;
                    }
                }
                if (h7 != null) {
                    h7.setBitmap(f2.h.resizeBitmapIfNeeded((Bitmap) entry.getValue(), h7.getWidth(), h7.getHeight()));
                }
            }
            for (Map.Entry<String, H> entry2 : c0330i.getImages().entrySet()) {
                if (entry2.getValue().getBitmap() == null) {
                    return new L((Throwable) new IllegalStateException("There is no image for " + entry2.getValue().getFileName()));
                }
            }
            if (str != null) {
                Y1.g.getInstance().put(str, c0330i);
            }
            return new L(c0330i);
        } catch (IOException e3) {
            return new L((Throwable) e3);
        }
    }

    public static String d(Context context, int i2) {
        StringBuilder sb = new StringBuilder("rawRes");
        sb.append((context.getResources().getConfiguration().uiMode & 48) == 32 ? "_night_" : "_day_");
        sb.append(i2);
        return sb.toString();
    }

    public static O fromAsset(Context context, String str) {
        return fromAsset(context, str, "asset_" + str);
    }

    public static L fromAssetSync(Context context, String str, String str2) {
        try {
            return str.endsWith(".zip") ? fromZipStreamSync(new ZipInputStream(context.getAssets().open(str)), str2) : fromJsonInputStreamSync(context.getAssets().open(str), str2);
        } catch (IOException e3) {
            return new L((Throwable) e3);
        }
    }

    public static O fromJsonInputStream(InputStream inputStream, String str) {
        return a(str, new CallableC0336o(inputStream, str));
    }

    public static L fromJsonInputStreamSync(InputStream inputStream, String str) {
        try {
            return fromJsonReaderSync(com.airbnb.lottie.parser.moshi.a.of(e6.w.buffer(e6.w.source(inputStream))), str);
        } finally {
            f2.h.closeQuietly(inputStream);
        }
    }

    public static L fromJsonReaderSync(com.airbnb.lottie.parser.moshi.a aVar, String str) {
        return b(aVar, str, true);
    }

    public static O fromRawRes(Context context, int i2) {
        return fromRawRes(context, i2, d(context, i2));
    }

    public static L fromRawResSync(Context context, int i2) {
        return fromRawResSync(context, i2, d(context, i2));
    }

    public static O fromUrl(Context context, String str) {
        return fromUrl(context, str, "url_" + str);
    }

    public static L fromZipStreamSync(ZipInputStream zipInputStream, String str) {
        try {
            return c(zipInputStream, str);
        } finally {
            f2.h.closeQuietly(zipInputStream);
        }
    }

    public static O fromRawRes(Context context, int i2, String str) {
        return a(str, new CallableC0335n(new WeakReference(context), context.getApplicationContext(), i2));
    }

    public static L fromRawResSync(Context context, int i2, String str) {
        try {
            return fromJsonInputStreamSync(context.getResources().openRawResource(i2), str);
        } catch (Resources.NotFoundException e3) {
            return new L((Throwable) e3);
        }
    }

    public static O fromUrl(Context context, String str, String str2) {
        return a(str2, new CallableC0333l(context, str, str2));
    }

    public static O fromAsset(Context context, String str, String str2) {
        return a(str2, new CallableC0334m(context.getApplicationContext(), str, str2));
    }
}
