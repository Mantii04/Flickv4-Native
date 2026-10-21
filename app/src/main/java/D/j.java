package D;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class j extends q {

    /* renamed from: a, reason: collision with root package name */
    public static Class f817a = null;

    /* renamed from: b, reason: collision with root package name */
    public static Constructor f818b = null;

    /* renamed from: c, reason: collision with root package name */
    public static Method f819c = null;

    /* renamed from: d, reason: collision with root package name */
    public static Method f820d = null;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f821e = false;

    public static boolean a(Object obj, String str, int i2, boolean z6) {
        b();
        try {
            try {
                return ((Boolean) f819c.invoke(obj, str, Integer.valueOf(i2), Boolean.valueOf(z6))).booleanValue();
            } catch (InvocationTargetException e3) {
                e = e3;
                throw new RuntimeException(e);
            }
        } catch (IllegalAccessException | InvocationTargetException e7) {
            e = e7;
        }
    }

    public static void b() {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        if (f821e) {
            return;
        }
        f821e = true;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
        } catch (ClassNotFoundException | NoSuchMethodException e3) {
            e = e3;
        }
        try {
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (NoSuchMethodException e7) {
            e = e7;
            Log.e("TypefaceCompatApi21Impl", e.getClass().getName(), e);
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
            f818b = constructor;
            f817a = cls;
            f819c = method2;
            f820d = method;
        }
        f818b = constructor;
        f817a = cls;
        f819c = method2;
        f820d = method;
    }

    @Override // D.q
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, C.g gVar, Resources resources, int i2) {
        b();
        try {
            Object newInstance = f818b.newInstance(new Object[0]);
            for (C.h hVar : gVar.getEntries()) {
                File tempFile = r.getTempFile(context);
                if (tempFile == null) {
                    return null;
                }
                try {
                    if (!r.copyToFile(tempFile, resources, hVar.getResourceId())) {
                        return null;
                    }
                    if (!a(newInstance, tempFile.getPath(), hVar.getWeight(), hVar.isItalic())) {
                        return null;
                    }
                    tempFile.delete();
                } catch (RuntimeException unused) {
                    return null;
                } finally {
                    tempFile.delete();
                }
            }
            b();
            try {
                Object newInstance2 = Array.newInstance((Class<?>) f817a, 1);
                Array.set(newInstance2, 0, newInstance);
                return (Typeface) f820d.invoke(null, newInstance2);
            } catch (IllegalAccessException | InvocationTargetException e3) {
                throw new RuntimeException(e3);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e7) {
            throw new RuntimeException(e7);
        }
    }

    @Override // D.q
    public Typeface createFromFontInfo(Context context, CancellationSignal cancellationSignal, J.q[] qVarArr, int i2) {
        File file;
        String readlink;
        if (qVarArr.length < 1) {
            return null;
        }
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(findBestInfo(qVarArr, i2).getUri(), "r", cancellationSignal);
            if (openFileDescriptor == null) {
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return null;
            }
            try {
                try {
                    readlink = Os.readlink("/proc/self/fd/" + openFileDescriptor.getFd());
                } finally {
                }
            } catch (ErrnoException unused) {
            }
            try {
                if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                    file = new File(readlink);
                    if (file != null && file.canRead()) {
                        Typeface createFromFile = Typeface.createFromFile(file);
                        openFileDescriptor.close();
                        return createFromFile;
                    }
                    FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                    Typeface createFromInputStream = createFromInputStream(context, fileInputStream);
                    fileInputStream.close();
                    openFileDescriptor.close();
                    return createFromInputStream;
                }
                Typeface createFromInputStream2 = createFromInputStream(context, fileInputStream);
                fileInputStream.close();
                openFileDescriptor.close();
                return createFromInputStream2;
            } finally {
            }
            file = null;
            if (file != null) {
                Typeface createFromFile2 = Typeface.createFromFile(file);
                openFileDescriptor.close();
                return createFromFile2;
            }
            FileInputStream fileInputStream2 = new FileInputStream(openFileDescriptor.getFileDescriptor());
        } catch (IOException unused2) {
            return null;
        }
    }
}
