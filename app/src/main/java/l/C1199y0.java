package l;

import M.AbstractC0181p0;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.appcompat.R;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* renamed from: l.y0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1199y0 {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f18056a;

    /* renamed from: b, reason: collision with root package name */
    public c2 f18057b;

    /* renamed from: c, reason: collision with root package name */
    public c2 f18058c;

    /* renamed from: d, reason: collision with root package name */
    public c2 f18059d;

    /* renamed from: e, reason: collision with root package name */
    public c2 f18060e;

    /* renamed from: f, reason: collision with root package name */
    public c2 f18061f;

    /* renamed from: g, reason: collision with root package name */
    public c2 f18062g;

    /* renamed from: h, reason: collision with root package name */
    public c2 f18063h;

    /* renamed from: i, reason: collision with root package name */
    public final I0 f18064i;

    /* renamed from: j, reason: collision with root package name */
    public int f18065j = 0;

    /* renamed from: k, reason: collision with root package name */
    public int f18066k = -1;

    /* renamed from: l, reason: collision with root package name */
    public Typeface f18067l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f18068m;

    public C1199y0(TextView textView) {
        this.f18056a = textView;
        this.f18064i = new I0(textView);
    }

    public static c2 c(Context context, I i2, int i7) {
        ColorStateList f3;
        synchronized (i2) {
            f3 = i2.f17708a.f(context, i7);
        }
        if (f3 == null) {
            return null;
        }
        c2 c2Var = new c2();
        c2Var.f17879d = true;
        c2Var.f17876a = f3;
        return c2Var;
    }

    public final void a(Drawable drawable, c2 c2Var) {
        if (drawable == null || c2Var == null) {
            return;
        }
        I.a(drawable, c2Var, this.f18056a.getDrawableState());
    }

    public final void b() {
        c2 c2Var = this.f18057b;
        TextView textView = this.f18056a;
        if (c2Var != null || this.f18058c != null || this.f18059d != null || this.f18060e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.f18057b);
            a(compoundDrawables[1], this.f18058c);
            a(compoundDrawables[2], this.f18059d);
            a(compoundDrawables[3], this.f18060e);
        }
        if (this.f18061f == null && this.f18062g == null) {
            return;
        }
        Drawable[] a7 = AbstractC1184t0.a(textView);
        a(a7[0], this.f18061f);
        a(a7[2], this.f18062g);
    }

    public final ColorStateList d() {
        c2 c2Var = this.f18063h;
        if (c2Var != null) {
            return c2Var.f17876a;
        }
        return null;
    }

    public final PorterDuff.Mode e() {
        c2 c2Var = this.f18063h;
        if (c2Var != null) {
            return c2Var.f17877b;
        }
        return null;
    }

    public final void f(AttributeSet attributeSet, int i2) {
        boolean z6;
        boolean z7;
        String str;
        String str2;
        float f3;
        int i7;
        int resourceId;
        TextView textView = this.f18056a;
        Context context = textView.getContext();
        I i8 = I.get();
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(context, attributeSet, R.styleable.AppCompatTextHelper, i2, 0);
        AbstractC0181p0.saveAttributeDataForStyleable(textView, textView.getContext(), R.styleable.AppCompatTextHelper, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i2, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_textAppearance, -1);
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableLeft)) {
            this.f18057b = c(context, i8, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableTop)) {
            this.f18058c = c(context, i8, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableRight)) {
            this.f18059d = c(context, i8, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableBottom)) {
            this.f18060e = c(context, i8, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableBottom, 0));
        }
        int i9 = Build.VERSION.SDK_INT;
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableStart)) {
            this.f18061f = c(context, i8, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableStart, 0));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableEnd)) {
            this.f18062g = c(context, i8, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableEnd, 0));
        }
        obtainStyledAttributes.recycle();
        boolean z8 = textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (resourceId2 != -1) {
            e2 obtainStyledAttributes2 = e2.obtainStyledAttributes(context, resourceId2, R.styleable.TextAppearance);
            if (z8 || !obtainStyledAttributes2.hasValue(R.styleable.TextAppearance_textAllCaps)) {
                z6 = false;
                z7 = false;
            } else {
                z6 = obtainStyledAttributes2.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
                z7 = true;
            }
            m(context, obtainStyledAttributes2);
            str2 = obtainStyledAttributes2.hasValue(R.styleable.TextAppearance_textLocale) ? obtainStyledAttributes2.getString(R.styleable.TextAppearance_textLocale) : null;
            str = (i9 < 26 || !obtainStyledAttributes2.hasValue(R.styleable.TextAppearance_fontVariationSettings)) ? null : obtainStyledAttributes2.getString(R.styleable.TextAppearance_fontVariationSettings);
            obtainStyledAttributes2.recycle();
        } else {
            z6 = false;
            z7 = false;
            str = null;
            str2 = null;
        }
        e2 obtainStyledAttributes3 = e2.obtainStyledAttributes(context, attributeSet, R.styleable.TextAppearance, i2, 0);
        if (!z8 && obtainStyledAttributes3.hasValue(R.styleable.TextAppearance_textAllCaps)) {
            z6 = obtainStyledAttributes3.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
            z7 = true;
        }
        if (obtainStyledAttributes3.hasValue(R.styleable.TextAppearance_textLocale)) {
            str2 = obtainStyledAttributes3.getString(R.styleable.TextAppearance_textLocale);
        }
        if (i9 >= 26 && obtainStyledAttributes3.hasValue(R.styleable.TextAppearance_fontVariationSettings)) {
            str = obtainStyledAttributes3.getString(R.styleable.TextAppearance_fontVariationSettings);
        }
        if (i9 >= 28 && obtainStyledAttributes3.hasValue(R.styleable.TextAppearance_android_textSize) && obtainStyledAttributes3.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        m(context, obtainStyledAttributes3);
        obtainStyledAttributes3.recycle();
        if (!z8 && z7) {
            textView.setAllCaps(z6);
        }
        Typeface typeface = this.f18067l;
        if (typeface != null) {
            if (this.f18066k == -1) {
                textView.setTypeface(typeface, this.f18065j);
            } else {
                textView.setTypeface(typeface);
            }
        }
        if (str != null) {
            AbstractC1193w0.d(textView, str);
        }
        if (str2 != null) {
            if (i9 >= 24) {
                AbstractC1190v0.b(textView, AbstractC1190v0.a(str2));
            } else {
                AbstractC1184t0.c(textView, AbstractC1187u0.a(str2.split(",")[0]));
            }
        }
        int[] iArr = R.styleable.AppCompatTextView;
        I0 i02 = this.f18064i;
        Context context2 = i02.f17720j;
        TypedArray obtainStyledAttributes4 = context2.obtainStyledAttributes(attributeSet, iArr, i2, 0);
        TextView textView2 = i02.f17719i;
        AbstractC0181p0.saveAttributeDataForStyleable(textView2, textView2.getContext(), R.styleable.AppCompatTextView, attributeSet, obtainStyledAttributes4, i2, 0);
        if (obtainStyledAttributes4.hasValue(R.styleable.AppCompatTextView_autoSizeTextType)) {
            i02.f17711a = obtainStyledAttributes4.getInt(R.styleable.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = obtainStyledAttributes4.hasValue(R.styleable.AppCompatTextView_autoSizeStepGranularity) ? obtainStyledAttributes4.getDimension(R.styleable.AppCompatTextView_autoSizeStepGranularity, -1.0f) : -1.0f;
        float dimension2 = obtainStyledAttributes4.hasValue(R.styleable.AppCompatTextView_autoSizeMinTextSize) ? obtainStyledAttributes4.getDimension(R.styleable.AppCompatTextView_autoSizeMinTextSize, -1.0f) : -1.0f;
        float dimension3 = obtainStyledAttributes4.hasValue(R.styleable.AppCompatTextView_autoSizeMaxTextSize) ? obtainStyledAttributes4.getDimension(R.styleable.AppCompatTextView_autoSizeMaxTextSize, -1.0f) : -1.0f;
        if (!obtainStyledAttributes4.hasValue(R.styleable.AppCompatTextView_autoSizePresetSizes) || (resourceId = obtainStyledAttributes4.getResourceId(R.styleable.AppCompatTextView_autoSizePresetSizes, 0)) <= 0) {
            f3 = -1.0f;
        } else {
            TypedArray obtainTypedArray = obtainStyledAttributes4.getResources().obtainTypedArray(resourceId);
            int length = obtainTypedArray.length();
            int[] iArr2 = new int[length];
            if (length > 0) {
                f3 = -1.0f;
                for (int i10 = 0; i10 < length; i10++) {
                    iArr2[i10] = obtainTypedArray.getDimensionPixelSize(i10, -1);
                }
                i02.f17716f = I0.b(iArr2);
                i02.i();
            } else {
                f3 = -1.0f;
            }
            obtainTypedArray.recycle();
        }
        obtainStyledAttributes4.recycle();
        if (!i02.j()) {
            i02.f17711a = 0;
        } else if (i02.f17711a == 1) {
            if (!i02.f17717g) {
                DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
                if (dimension2 == f3) {
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                if (dimension3 == f3) {
                    dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                if (dimension == f3) {
                    dimension = 1.0f;
                }
                i02.k(dimension2, dimension3, dimension);
            }
            i02.h();
        }
        if (z2.f18070b && i02.f17711a != 0) {
            int[] iArr3 = i02.f17716f;
            if (iArr3.length > 0) {
                if (AbstractC1193w0.a(textView) != f3) {
                    AbstractC1193w0.b(textView, Math.round(i02.f17714d), Math.round(i02.f17715e), Math.round(i02.f17713c), 0);
                } else {
                    AbstractC1193w0.c(textView, iArr3, 0);
                }
            }
        }
        e2 obtainStyledAttributes5 = e2.obtainStyledAttributes(context, attributeSet, R.styleable.AppCompatTextView);
        int resourceId3 = obtainStyledAttributes5.getResourceId(R.styleable.AppCompatTextView_drawableLeftCompat, -1);
        Drawable drawable = resourceId3 != -1 ? i8.getDrawable(context, resourceId3) : null;
        int resourceId4 = obtainStyledAttributes5.getResourceId(R.styleable.AppCompatTextView_drawableTopCompat, -1);
        Drawable drawable2 = resourceId4 != -1 ? i8.getDrawable(context, resourceId4) : null;
        int resourceId5 = obtainStyledAttributes5.getResourceId(R.styleable.AppCompatTextView_drawableRightCompat, -1);
        Drawable drawable3 = resourceId5 != -1 ? i8.getDrawable(context, resourceId5) : null;
        int resourceId6 = obtainStyledAttributes5.getResourceId(R.styleable.AppCompatTextView_drawableBottomCompat, -1);
        Drawable drawable4 = resourceId6 != -1 ? i8.getDrawable(context, resourceId6) : null;
        int resourceId7 = obtainStyledAttributes5.getResourceId(R.styleable.AppCompatTextView_drawableStartCompat, -1);
        Drawable drawable5 = resourceId7 != -1 ? i8.getDrawable(context, resourceId7) : null;
        int resourceId8 = obtainStyledAttributes5.getResourceId(R.styleable.AppCompatTextView_drawableEndCompat, -1);
        Drawable drawable6 = resourceId8 != -1 ? i8.getDrawable(context, resourceId8) : null;
        if (drawable5 != null || drawable6 != null) {
            Drawable[] a7 = AbstractC1184t0.a(textView);
            if (drawable5 == null) {
                drawable5 = a7[0];
            }
            if (drawable2 == null) {
                drawable2 = a7[1];
            }
            if (drawable6 == null) {
                drawable6 = a7[2];
            }
            if (drawable4 == null) {
                drawable4 = a7[3];
            }
            AbstractC1184t0.b(textView, drawable5, drawable2, drawable6, drawable4);
        } else if (drawable != null || drawable2 != null || drawable3 != null || drawable4 != null) {
            Drawable[] a8 = AbstractC1184t0.a(textView);
            Drawable drawable7 = a8[0];
            if (drawable7 == null && a8[2] == null) {
                Drawable[] compoundDrawables = textView.getCompoundDrawables();
                if (drawable == null) {
                    drawable = compoundDrawables[0];
                }
                if (drawable2 == null) {
                    drawable2 = compoundDrawables[1];
                }
                if (drawable3 == null) {
                    drawable3 = compoundDrawables[2];
                }
                if (drawable4 == null) {
                    drawable4 = compoundDrawables[3];
                }
                textView.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            } else {
                if (drawable2 == null) {
                    drawable2 = a8[1];
                }
                Drawable drawable8 = a8[2];
                if (drawable4 == null) {
                    drawable4 = a8[3];
                }
                AbstractC1184t0.b(textView, drawable7, drawable2, drawable8, drawable4);
            }
        }
        if (obtainStyledAttributes5.hasValue(R.styleable.AppCompatTextView_drawableTint)) {
            S.A.setCompoundDrawableTintList(textView, obtainStyledAttributes5.getColorStateList(R.styleable.AppCompatTextView_drawableTint));
        }
        if (obtainStyledAttributes5.hasValue(R.styleable.AppCompatTextView_drawableTintMode)) {
            i7 = -1;
            S.A.setCompoundDrawableTintMode(textView, P0.parseTintMode(obtainStyledAttributes5.getInt(R.styleable.AppCompatTextView_drawableTintMode, -1), null));
        } else {
            i7 = -1;
        }
        int dimensionPixelSize = obtainStyledAttributes5.getDimensionPixelSize(R.styleable.AppCompatTextView_firstBaselineToTopHeight, i7);
        int dimensionPixelSize2 = obtainStyledAttributes5.getDimensionPixelSize(R.styleable.AppCompatTextView_lastBaselineToBottomHeight, i7);
        int dimensionPixelSize3 = obtainStyledAttributes5.getDimensionPixelSize(R.styleable.AppCompatTextView_lineHeight, i7);
        obtainStyledAttributes5.recycle();
        if (dimensionPixelSize != i7) {
            S.A.setFirstBaselineToTopHeight(textView, dimensionPixelSize);
        }
        if (dimensionPixelSize2 != i7) {
            S.A.setLastBaselineToBottomHeight(textView, dimensionPixelSize2);
        }
        if (dimensionPixelSize3 != i7) {
            S.A.setLineHeight(textView, dimensionPixelSize3);
        }
    }

    public final void g(Context context, int i2) {
        String string;
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(context, i2, R.styleable.TextAppearance);
        boolean hasValue = obtainStyledAttributes.hasValue(R.styleable.TextAppearance_textAllCaps);
        TextView textView = this.f18056a;
        if (hasValue) {
            textView.setAllCaps(obtainStyledAttributes.getBoolean(R.styleable.TextAppearance_textAllCaps, false));
        }
        int i7 = Build.VERSION.SDK_INT;
        if (obtainStyledAttributes.hasValue(R.styleable.TextAppearance_android_textSize) && obtainStyledAttributes.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        m(context, obtainStyledAttributes);
        if (i7 >= 26 && obtainStyledAttributes.hasValue(R.styleable.TextAppearance_fontVariationSettings) && (string = obtainStyledAttributes.getString(R.styleable.TextAppearance_fontVariationSettings)) != null) {
            AbstractC1193w0.d(textView, string);
        }
        obtainStyledAttributes.recycle();
        Typeface typeface = this.f18067l;
        if (typeface != null) {
            textView.setTypeface(typeface, this.f18065j);
        }
    }

    public final void h(int i2, int i7, int i8, int i9) {
        I0 i02 = this.f18064i;
        if (i02.j()) {
            DisplayMetrics displayMetrics = i02.f17720j.getResources().getDisplayMetrics();
            i02.k(TypedValue.applyDimension(i9, i2, displayMetrics), TypedValue.applyDimension(i9, i7, displayMetrics), TypedValue.applyDimension(i9, i8, displayMetrics));
            if (i02.h()) {
                i02.a();
            }
        }
    }

    public final void i(int[] iArr, int i2) {
        I0 i02 = this.f18064i;
        if (i02.j()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArr2 = new int[length];
                if (i2 == 0) {
                    iArr2 = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = i02.f17720j.getResources().getDisplayMetrics();
                    for (int i7 = 0; i7 < length; i7++) {
                        iArr2[i7] = Math.round(TypedValue.applyDimension(i2, iArr[i7], displayMetrics));
                    }
                }
                i02.f17716f = I0.b(iArr2);
                if (!i02.i()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                i02.f17717g = false;
            }
            if (i02.h()) {
                i02.a();
            }
        }
    }

    public final void j(int i2) {
        I0 i02 = this.f18064i;
        if (i02.j()) {
            if (i2 == 0) {
                i02.f17711a = 0;
                i02.f17714d = -1.0f;
                i02.f17715e = -1.0f;
                i02.f17713c = -1.0f;
                i02.f17716f = new int[0];
                i02.f17712b = false;
                return;
            }
            if (i2 != 1) {
                throw new IllegalArgumentException(A.i.f(i2, "Unknown auto-size text type: "));
            }
            DisplayMetrics displayMetrics = i02.f17720j.getResources().getDisplayMetrics();
            i02.k(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (i02.h()) {
                i02.a();
            }
        }
    }

    public final void k(ColorStateList colorStateList) {
        if (this.f18063h == null) {
            this.f18063h = new c2();
        }
        c2 c2Var = this.f18063h;
        c2Var.f17876a = colorStateList;
        c2Var.f17879d = colorStateList != null;
        this.f18057b = c2Var;
        this.f18058c = c2Var;
        this.f18059d = c2Var;
        this.f18060e = c2Var;
        this.f18061f = c2Var;
        this.f18062g = c2Var;
    }

    public final void l(PorterDuff.Mode mode) {
        if (this.f18063h == null) {
            this.f18063h = new c2();
        }
        c2 c2Var = this.f18063h;
        c2Var.f17877b = mode;
        c2Var.f17878c = mode != null;
        this.f18057b = c2Var;
        this.f18058c = c2Var;
        this.f18059d = c2Var;
        this.f18060e = c2Var;
        this.f18061f = c2Var;
        this.f18062g = c2Var;
    }

    public final void m(Context context, e2 e2Var) {
        String string;
        this.f18065j = e2Var.getInt(R.styleable.TextAppearance_android_textStyle, this.f18065j);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            int i7 = e2Var.getInt(R.styleable.TextAppearance_android_textFontWeight, -1);
            this.f18066k = i7;
            if (i7 != -1) {
                this.f18065j &= 2;
            }
        }
        if (!e2Var.hasValue(R.styleable.TextAppearance_android_fontFamily) && !e2Var.hasValue(R.styleable.TextAppearance_fontFamily)) {
            if (e2Var.hasValue(R.styleable.TextAppearance_android_typeface)) {
                this.f18068m = false;
                int i8 = e2Var.getInt(R.styleable.TextAppearance_android_typeface, 1);
                if (i8 == 1) {
                    this.f18067l = Typeface.SANS_SERIF;
                    return;
                } else if (i8 == 2) {
                    this.f18067l = Typeface.SERIF;
                    return;
                } else {
                    if (i8 != 3) {
                        return;
                    }
                    this.f18067l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f18067l = null;
        int i9 = e2Var.hasValue(R.styleable.TextAppearance_fontFamily) ? R.styleable.TextAppearance_fontFamily : R.styleable.TextAppearance_android_fontFamily;
        int i10 = this.f18066k;
        int i11 = this.f18065j;
        if (!context.isRestricted()) {
            try {
                Typeface font = e2Var.getFont(i9, this.f18065j, new C1178r0(this, i10, i11, new WeakReference(this.f18056a)));
                if (font != null) {
                    if (i2 < 28 || this.f18066k == -1) {
                        this.f18067l = font;
                    } else {
                        this.f18067l = AbstractC1196x0.a(Typeface.create(font, 0), this.f18066k, (this.f18065j & 2) != 0);
                    }
                }
                this.f18068m = this.f18067l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f18067l != null || (string = e2Var.getString(i9)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f18066k == -1) {
            this.f18067l = Typeface.create(string, this.f18065j);
        } else {
            this.f18067l = AbstractC1196x0.a(Typeface.create(string, 0), this.f18066k, (this.f18065j & 2) != 0);
        }
    }
}
