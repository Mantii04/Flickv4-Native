package D;

import J.s;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;

/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: a, reason: collision with root package name */
    public static final q f815a;

    /* renamed from: b, reason: collision with root package name */
    public static final p.p f816b;

    static {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            f815a = new n();
        } else if (i2 >= 28) {
            f815a = new m();
        } else if (i2 >= 26) {
            f815a = new l();
        } else if (i2 < 24 || !k.isUsable()) {
            f815a = new j();
        } else {
            f815a = new k();
        }
        f816b = new p.p(16);
    }

    public static String a(Resources resources, int i2, String str, int i7, int i8) {
        return resources.getResourcePackageName(i2) + '-' + str + '-' + i7 + '-' + i2 + '-' + i8;
    }

    public static Typeface create(Context context, Typeface typeface, int i2) {
        if (context != null) {
            return Typeface.create(typeface, i2);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    public static Typeface createFromFontInfo(Context context, CancellationSignal cancellationSignal, J.q[] qVarArr, int i2) {
        return f815a.createFromFontInfo(context, cancellationSignal, qVarArr, i2);
    }

    public static Typeface createFromResourcesFamilyXml(Context context, C.f fVar, Resources resources, int i2, String str, int i7, int i8, C.r rVar, Handler handler, boolean z6) {
        Typeface createFromFontFamilyFilesResourceEntry;
        if (fVar instanceof C.i) {
            C.i iVar = (C.i) fVar;
            String systemFontFamilyName = iVar.getSystemFontFamilyName();
            Typeface typeface = null;
            if (systemFontFamilyName != null && !systemFontFamilyName.isEmpty()) {
                Typeface create = Typeface.create(systemFontFamilyName, 0);
                Typeface create2 = Typeface.create(Typeface.DEFAULT, 0);
                if (create != null && !create.equals(create2)) {
                    typeface = create;
                }
            }
            if (typeface != null) {
                if (rVar != null) {
                    rVar.callbackSuccessAsync(typeface, handler);
                }
                return typeface;
            }
            createFromFontFamilyFilesResourceEntry = s.requestFont(context, iVar.getRequest(), i8, !z6 ? rVar != null : iVar.getFetchStrategy() != 0, z6 ? iVar.getTimeout() : -1, C.r.getHandler(handler), new h(rVar));
        } else {
            createFromFontFamilyFilesResourceEntry = f815a.createFromFontFamilyFilesResourceEntry(context, (C.g) fVar, resources, i8);
            if (rVar != null) {
                if (createFromFontFamilyFilesResourceEntry != null) {
                    rVar.callbackSuccessAsync(createFromFontFamilyFilesResourceEntry, handler);
                } else {
                    rVar.callbackFailAsync(-3, handler);
                }
            }
        }
        if (createFromFontFamilyFilesResourceEntry != null) {
            f816b.put(a(resources, i2, str, i7, i8), createFromFontFamilyFilesResourceEntry);
        }
        return createFromFontFamilyFilesResourceEntry;
    }

    public static Typeface createFromResourcesFontFile(Context context, Resources resources, int i2, String str, int i7, int i8) {
        Typeface createFromResourcesFontFile = f815a.createFromResourcesFontFile(context, resources, i2, str, i8);
        if (createFromResourcesFontFile != null) {
            f816b.put(a(resources, i2, str, i7, i8), createFromResourcesFontFile);
        }
        return createFromResourcesFontFile;
    }

    public static Typeface findFromCache(Resources resources, int i2, String str, int i7, int i8) {
        return (Typeface) f816b.get(a(resources, i2, str, i7, i8));
    }
}
