package x3;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.google.android.material.R;
import l.e2;

/* loaded from: classes2.dex */
public abstract class L {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f20887a = {R.attr.colorPrimary};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f20888b = {R.attr.colorPrimaryVariant};

    public static void a(Context context, AttributeSet attributeSet, int i2, int i7) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ThemeEnforcement, i2, i7);
        boolean z6 = obtainStyledAttributes.getBoolean(R.styleable.ThemeEnforcement_enforceMaterialTheme, false);
        obtainStyledAttributes.recycle();
        if (z6) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(R.attr.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                checkMaterialTheme(context);
            }
        }
        checkAppCompatTheme(context);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x003d, code lost:
    
        if (r0.getResourceId(com.google.android.material.R.styleable.ThemeEnforcement_android_textAppearance, -1) != (-1)) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(android.content.Context r5, android.util.AttributeSet r6, int[] r7, int r8, int r9, int... r10) {
        /*
            int[] r0 = com.google.android.material.R.styleable.ThemeEnforcement
            android.content.res.TypedArray r0 = r5.obtainStyledAttributes(r6, r0, r8, r9)
            int r1 = com.google.android.material.R.styleable.ThemeEnforcement_enforceTextAppearance
            r2 = 0
            boolean r1 = r0.getBoolean(r1, r2)
            if (r1 != 0) goto L13
            r0.recycle()
            return
        L13:
            r1 = 1
            r3 = -1
            if (r10 == 0) goto L37
            int r4 = r10.length
            if (r4 != 0) goto L1b
            goto L37
        L1b:
            android.content.res.TypedArray r5 = r5.obtainStyledAttributes(r6, r7, r8, r9)
            int r6 = r10.length
            r7 = r2
        L21:
            if (r7 >= r6) goto L32
            r8 = r10[r7]
            int r8 = r5.getResourceId(r8, r3)
            if (r8 != r3) goto L2f
            r5.recycle()
            goto L40
        L2f:
            int r7 = r7 + 1
            goto L21
        L32:
            r5.recycle()
        L35:
            r2 = r1
            goto L40
        L37:
            int r5 = com.google.android.material.R.styleable.ThemeEnforcement_android_textAppearance
            int r5 = r0.getResourceId(r5, r3)
            if (r5 == r3) goto L40
            goto L35
        L40:
            r0.recycle()
            if (r2 == 0) goto L46
            return
        L46:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: x3.L.b(android.content.Context, android.util.AttributeSet, int[], int, int, int[]):void");
    }

    public static void c(Context context, int[] iArr, String str) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (!obtainStyledAttributes.hasValue(i2)) {
                obtainStyledAttributes.recycle();
                throw new IllegalArgumentException(A.i.l("The style on this component requires your app theme to be ", str, " (or a descendant)."));
            }
        }
        obtainStyledAttributes.recycle();
    }

    public static void checkAppCompatTheme(Context context) {
        c(context, f20887a, "Theme.AppCompat");
    }

    public static void checkMaterialTheme(Context context) {
        c(context, f20888b, "Theme.MaterialComponents");
    }

    public static boolean isMaterial3Theme(Context context) {
        return C3.c.resolveBoolean(context, R.attr.isMaterial3Theme, false);
    }

    public static TypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr, int i2, int i7, int... iArr2) {
        a(context, attributeSet, i2, i7);
        b(context, attributeSet, iArr, i2, i7, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i2, i7);
    }

    public static e2 obtainTintedStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr, int i2, int i7, int... iArr2) {
        a(context, attributeSet, i2, i7);
        b(context, attributeSet, iArr, i2, i7, iArr2);
        return e2.obtainStyledAttributes(context, attributeSet, iArr, i2, i7);
    }
}
