package D;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;

/* loaded from: classes.dex */
public final class k extends q {

    /* renamed from: a, reason: collision with root package name */
    public static final Class f822a;

    /* renamed from: b, reason: collision with root package name */
    public static final Constructor f823b;

    /* renamed from: c, reason: collision with root package name */
    public static final Method f824c;

    /* renamed from: d, reason: collision with root package name */
    public static final Method f825d;

    static {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
        } catch (ClassNotFoundException | NoSuchMethodException e3) {
            e = e3;
        }
        try {
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (NoSuchMethodException e7) {
            e = e7;
            Log.e("TypefaceCompatApi24Impl", e.getClass().getName(), e);
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
            f823b = constructor;
            f822a = cls;
            f824c = method2;
            f825d = method;
        }
        f823b = constructor;
        f822a = cls;
        f824c = method2;
        f825d = method;
    }

    public static boolean a(Object obj, ByteBuffer byteBuffer, int i2, int i7, boolean z6) {
        try {
            return ((Boolean) f824c.invoke(obj, byteBuffer, Integer.valueOf(i2), null, Integer.valueOf(i7), Boolean.valueOf(z6))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public static Typeface b(Object obj) {
        try {
            Object newInstance = Array.newInstance((Class<?>) f822a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f825d.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public static boolean isUsable() {
        Method method = f824c;
        if (method == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return method != null;
    }

    @Override // D.q
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, C.g gVar, Resources resources, int i2) {
        Object obj;
        int i7;
        try {
            obj = f823b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj != null) {
            C.h[] entries = gVar.getEntries();
            int length = entries.length;
            while (i7 < length) {
                C.h hVar = entries[i7];
                ByteBuffer copyToDirectBuffer = r.copyToDirectBuffer(context, resources, hVar.getResourceId());
                i7 = (copyToDirectBuffer != null && a(obj, copyToDirectBuffer, hVar.getTtcIndex(), hVar.getWeight(), hVar.isItalic())) ? i7 + 1 : 0;
            }
            return b(obj);
        }
        return null;
    }

    @Override // D.q
    public Typeface createFromFontInfo(Context context, CancellationSignal cancellationSignal, J.q[] qVarArr, int i2) {
        Object obj;
        int i7 = 0;
        try {
            obj = f823b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj != null) {
            p.q qVar = new p.q();
            int length = qVarArr.length;
            while (true) {
                if (i7 < length) {
                    J.q qVar2 = qVarArr[i7];
                    Uri uri = qVar2.getUri();
                    ByteBuffer byteBuffer = (ByteBuffer) qVar.get(uri);
                    if (byteBuffer == null) {
                        byteBuffer = r.mmap(context, cancellationSignal, uri);
                        qVar.put(uri, byteBuffer);
                    }
                    if (byteBuffer == null || !a(obj, byteBuffer, qVar2.getTtcIndex(), qVar2.getWeight(), qVar2.isItalic())) {
                        break;
                    }
                    i7++;
                } else {
                    Typeface b7 = b(obj);
                    if (b7 != null) {
                        return Typeface.create(b7, i2);
                    }
                }
            }
        }
        return null;
    }
}
