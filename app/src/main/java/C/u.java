package C;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.SparseArray;
import android.util.TypedValue;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class u {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f335a = new ThreadLocal();

    /* renamed from: b, reason: collision with root package name */
    public static final WeakHashMap f336b = new WeakHashMap(0);

    /* renamed from: c, reason: collision with root package name */
    public static final Object f337c = new Object();

    public static void a(p pVar, int i2, ColorStateList colorStateList, Resources.Theme theme) {
        synchronized (f337c) {
            try {
                WeakHashMap weakHashMap = f336b;
                SparseArray sparseArray = (SparseArray) weakHashMap.get(pVar);
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                    weakHashMap.put(pVar, sparseArray);
                }
                sparseArray.append(i2, new o(colorStateList, pVar.f330a.getConfiguration(), theme));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00ab A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface b(android.content.Context r13, int r14, android.util.TypedValue r15, int r16, C.r r17, android.os.Handler r18, boolean r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: C.u.b(android.content.Context, int, android.util.TypedValue, int, C.r, android.os.Handler, boolean, boolean):android.graphics.Typeface");
    }

    public static Typeface getCachedFont(Context context, int i2) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return b(context, i2, new TypedValue(), 0, null, null, false, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x003e, code lost:
    
        if (r4.f329c == r9.hashCode()) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.content.res.ColorStateList getColorStateList(android.content.res.Resources r7, int r8, android.content.res.Resources.Theme r9) throws android.content.res.Resources.NotFoundException {
        /*
            C.p r0 = new C.p
            r0.<init>(r7, r9)
            java.lang.Object r1 = C.u.f337c
            monitor-enter(r1)
            java.util.WeakHashMap r2 = C.u.f336b     // Catch: java.lang.Throwable -> L34
            java.lang.Object r2 = r2.get(r0)     // Catch: java.lang.Throwable -> L34
            android.util.SparseArray r2 = (android.util.SparseArray) r2     // Catch: java.lang.Throwable -> L34
            r3 = 0
            if (r2 == 0) goto L47
            int r4 = r2.size()     // Catch: java.lang.Throwable -> L34
            if (r4 <= 0) goto L47
            java.lang.Object r4 = r2.get(r8)     // Catch: java.lang.Throwable -> L34
            C.o r4 = (C.o) r4     // Catch: java.lang.Throwable -> L34
            if (r4 == 0) goto L47
            android.content.res.Configuration r5 = r4.f328b     // Catch: java.lang.Throwable -> L34
            android.content.res.Configuration r6 = r7.getConfiguration()     // Catch: java.lang.Throwable -> L34
            boolean r5 = r5.equals(r6)     // Catch: java.lang.Throwable -> L34
            if (r5 == 0) goto L44
            if (r9 != 0) goto L36
            int r5 = r4.f329c     // Catch: java.lang.Throwable -> L34
            if (r5 == 0) goto L40
            goto L36
        L34:
            r7 = move-exception
            goto L89
        L36:
            if (r9 == 0) goto L44
            int r5 = r4.f329c     // Catch: java.lang.Throwable -> L34
            int r6 = r9.hashCode()     // Catch: java.lang.Throwable -> L34
            if (r5 != r6) goto L44
        L40:
            android.content.res.ColorStateList r2 = r4.f327a     // Catch: java.lang.Throwable -> L34
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L34
            goto L49
        L44:
            r2.remove(r8)     // Catch: java.lang.Throwable -> L34
        L47:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L34
            r2 = r3
        L49:
            if (r2 == 0) goto L4c
            return r2
        L4c:
            java.lang.ThreadLocal r1 = C.u.f335a
            java.lang.Object r2 = r1.get()
            android.util.TypedValue r2 = (android.util.TypedValue) r2
            if (r2 != 0) goto L5e
            android.util.TypedValue r2 = new android.util.TypedValue
            r2.<init>()
            r1.set(r2)
        L5e:
            r1 = 1
            r7.getValue(r8, r2, r1)
            int r1 = r2.type
            r2 = 28
            if (r1 < r2) goto L6d
            r2 = 31
            if (r1 > r2) goto L6d
            goto L7e
        L6d:
            android.content.res.XmlResourceParser r1 = r7.getXml(r8)
            android.content.res.ColorStateList r3 = C.c.createFromXml(r7, r1, r9)     // Catch: java.lang.Exception -> L76
            goto L7e
        L76:
            r1 = move-exception
            java.lang.String r2 = "ResourcesCompat"
            java.lang.String r4 = "Failed to inflate ColorStateList, leaving it to the framework"
            android.util.Log.w(r2, r4, r1)
        L7e:
            if (r3 == 0) goto L84
            a(r0, r8, r3, r9)
            return r3
        L84:
            android.content.res.ColorStateList r7 = C.n.b(r7, r8, r9)
            return r7
        L89:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L34
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: C.u.getColorStateList(android.content.res.Resources, int, android.content.res.Resources$Theme):android.content.res.ColorStateList");
    }

    public static Drawable getDrawable(Resources resources, int i2, Resources.Theme theme) throws Resources.NotFoundException {
        return m.a(resources, i2, theme);
    }

    public static Drawable getDrawableForDensity(Resources resources, int i2, int i7, Resources.Theme theme) throws Resources.NotFoundException {
        return m.b(resources, i2, i7, theme);
    }

    public static Typeface getFont(Context context, int i2) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return b(context, i2, new TypedValue(), 0, null, null, false, false);
    }

    public static void getFont(Context context, int i2, r rVar, Handler handler) throws Resources.NotFoundException {
        L.h.checkNotNull(rVar);
        if (context.isRestricted()) {
            rVar.callbackFailAsync(-4, handler);
        } else {
            b(context, i2, new TypedValue(), 0, rVar, handler, false, false);
        }
    }

    public static Typeface getFont(Context context, int i2, TypedValue typedValue, int i7, r rVar) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return b(context, i2, typedValue, i7, rVar, null, true, false);
    }
}
