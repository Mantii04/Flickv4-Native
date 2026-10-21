package D;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;

/* loaded from: classes.dex */
public class l extends j {

    /* renamed from: f, reason: collision with root package name */
    public final Class f826f;

    /* renamed from: g, reason: collision with root package name */
    public final Constructor f827g;

    /* renamed from: h, reason: collision with root package name */
    public final Method f828h;

    /* renamed from: i, reason: collision with root package name */
    public final Method f829i;

    /* renamed from: j, reason: collision with root package name */
    public final Method f830j;

    /* renamed from: k, reason: collision with root package name */
    public final Method f831k;

    /* renamed from: l, reason: collision with root package name */
    public final Method f832l;

    public l() {
        Class<?> cls;
        Constructor<?> constructor;
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        try {
            cls = obtainFontFamily();
            constructor = obtainFontFamilyCtor(cls);
            method = obtainAddFontFromAssetManagerMethod(cls);
            method2 = obtainAddFontFromBufferMethod(cls);
            method3 = obtainFreezeMethod(cls);
            method4 = obtainAbortCreationMethod(cls);
            method5 = obtainCreateFromFamiliesWithDefaultMethod(cls);
        } catch (ClassNotFoundException | NoSuchMethodException e3) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class ".concat(e3.getClass().getName()), e3);
            cls = null;
            constructor = null;
            method = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.f826f = cls;
        this.f827g = constructor;
        this.f828h = method;
        this.f829i = method2;
        this.f830j = method3;
        this.f831k = method4;
        this.f832l = method5;
    }

    public final void c(Object obj) {
        try {
            this.f831k.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    public Typeface createFromFamiliesWithDefault(Object obj) {
        try {
            Object newInstance = Array.newInstance((Class<?>) this.f826f, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f832l.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // D.j, D.q
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, C.g gVar, Resources resources, int i2) {
        Method method = this.f828h;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        if (method == null) {
            return super.createFromFontFamilyFilesResourceEntry(context, gVar, resources, i2);
        }
        Object f3 = f();
        if (f3 != null) {
            C.h[] entries = gVar.getEntries();
            int length = entries.length;
            int i7 = 0;
            while (i7 < length) {
                C.h hVar = entries[i7];
                String fileName = hVar.getFileName();
                int ttcIndex = hVar.getTtcIndex();
                int weight = hVar.getWeight();
                boolean isItalic = hVar.isItalic();
                Context context2 = context;
                if (!d(context2, f3, fileName, ttcIndex, weight, isItalic ? 1 : 0, FontVariationAxis.fromFontVariationSettings(hVar.getVariationSettings()))) {
                    c(f3);
                    return null;
                }
                i7++;
                context = context2;
            }
            if (e(f3)) {
                return createFromFamiliesWithDefault(f3);
            }
        }
        return null;
    }

    @Override // D.j, D.q
    public Typeface createFromFontInfo(Context context, CancellationSignal cancellationSignal, J.q[] qVarArr, int i2) {
        Typeface createFromFamiliesWithDefault;
        boolean z6;
        if (qVarArr.length >= 1) {
            Method method = this.f828h;
            if (method == null) {
                Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
            }
            if (method != null) {
                Map<Uri, ByteBuffer> readFontInfoIntoByteBuffer = r.readFontInfoIntoByteBuffer(context, qVarArr, cancellationSignal);
                Object f3 = f();
                if (f3 != null) {
                    int length = qVarArr.length;
                    int i7 = 0;
                    boolean z7 = false;
                    while (i7 < length) {
                        J.q qVar = qVarArr[i7];
                        ByteBuffer byteBuffer = readFontInfoIntoByteBuffer.get(qVar.getUri());
                        if (byteBuffer != null) {
                            try {
                                z6 = ((Boolean) this.f829i.invoke(f3, byteBuffer, Integer.valueOf(qVar.getTtcIndex()), null, Integer.valueOf(qVar.getWeight()), Integer.valueOf(qVar.isItalic() ? 1 : 0))).booleanValue();
                            } catch (IllegalAccessException | InvocationTargetException unused) {
                                z6 = false;
                            }
                            if (!z6) {
                                c(f3);
                                return null;
                            }
                            z7 = true;
                        }
                        i7++;
                        z7 = z7;
                    }
                    if (!z7) {
                        c(f3);
                        return null;
                    }
                    if (e(f3) && (createFromFamiliesWithDefault = createFromFamiliesWithDefault(f3)) != null) {
                        return Typeface.create(createFromFamiliesWithDefault, i2);
                    }
                }
            } else {
                J.q findBestInfo = findBestInfo(qVarArr, i2);
                try {
                    ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(findBestInfo.getUri(), "r", cancellationSignal);
                    if (openFileDescriptor != null) {
                        try {
                            Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(findBestInfo.getWeight()).setItalic(findBestInfo.isItalic()).build();
                            openFileDescriptor.close();
                            return build;
                        } finally {
                        }
                    }
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                        return null;
                    }
                } catch (IOException unused2) {
                }
            }
        }
        return null;
    }

    @Override // D.q
    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i2, String str, int i7) {
        Method method = this.f828h;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        if (method == null) {
            return super.createFromResourcesFontFile(context, resources, i2, str, i7);
        }
        Object f3 = f();
        if (f3 != null) {
            if (!d(context, f3, str, 0, -1, -1, null)) {
                c(f3);
                return null;
            }
            if (e(f3)) {
                return createFromFamiliesWithDefault(f3);
            }
        }
        return null;
    }

    public final boolean d(Context context, Object obj, String str, int i2, int i7, int i8, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f828h.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i2), Integer.valueOf(i7), Integer.valueOf(i8), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean e(Object obj) {
        try {
            return ((Boolean) this.f830j.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final Object f() {
        try {
            return this.f827g.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    public Method obtainAbortCreationMethod(Class<?> cls) throws NoSuchMethodException {
        return cls.getMethod("abortCreation", new Class[0]);
    }

    public Method obtainAddFontFromAssetManagerMethod(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    public Method obtainAddFontFromBufferMethod(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    public Method obtainCreateFromFamiliesWithDefaultMethod(Class<?> cls) throws NoSuchMethodException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    public Class<?> obtainFontFamily() throws ClassNotFoundException {
        return Class.forName("android.graphics.FontFamily");
    }

    public Constructor<?> obtainFontFamilyCtor(Class<?> cls) throws NoSuchMethodException {
        return cls.getConstructor(new Class[0]);
    }

    public Method obtainFreezeMethod(Class<?> cls) throws NoSuchMethodException {
        return cls.getMethod("freeze", new Class[0]);
    }
}
