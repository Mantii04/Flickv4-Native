package C3;

import C.u;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import com.google.android.material.R;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final ColorStateList f514a;

    /* renamed from: b, reason: collision with root package name */
    public final String f515b;

    /* renamed from: c, reason: collision with root package name */
    public final int f516c;

    /* renamed from: d, reason: collision with root package name */
    public final int f517d;

    /* renamed from: e, reason: collision with root package name */
    public final float f518e;

    /* renamed from: f, reason: collision with root package name */
    public final float f519f;

    /* renamed from: g, reason: collision with root package name */
    public final float f520g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f521h;

    /* renamed from: i, reason: collision with root package name */
    public final float f522i;

    /* renamed from: j, reason: collision with root package name */
    public ColorStateList f523j;

    /* renamed from: k, reason: collision with root package name */
    public float f524k;

    /* renamed from: l, reason: collision with root package name */
    public final int f525l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f526m = false;

    /* renamed from: n, reason: collision with root package name */
    public Typeface f527n;

    public g(Context context, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i2, R.styleable.TextAppearance);
        setTextSize(obtainStyledAttributes.getDimension(R.styleable.TextAppearance_android_textSize, 0.0f));
        setTextColor(d.getColorStateList(context, obtainStyledAttributes, R.styleable.TextAppearance_android_textColor));
        d.getColorStateList(context, obtainStyledAttributes, R.styleable.TextAppearance_android_textColorHint);
        d.getColorStateList(context, obtainStyledAttributes, R.styleable.TextAppearance_android_textColorLink);
        this.f516c = obtainStyledAttributes.getInt(R.styleable.TextAppearance_android_textStyle, 0);
        this.f517d = obtainStyledAttributes.getInt(R.styleable.TextAppearance_android_typeface, 1);
        int i7 = R.styleable.TextAppearance_fontFamily;
        i7 = obtainStyledAttributes.hasValue(i7) ? i7 : R.styleable.TextAppearance_android_fontFamily;
        this.f525l = obtainStyledAttributes.getResourceId(i7, 0);
        this.f515b = obtainStyledAttributes.getString(i7);
        obtainStyledAttributes.getBoolean(R.styleable.TextAppearance_textAllCaps, false);
        this.f514a = d.getColorStateList(context, obtainStyledAttributes, R.styleable.TextAppearance_android_shadowColor);
        this.f518e = obtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDx, 0.0f);
        this.f519f = obtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowDy, 0.0f);
        this.f520g = obtainStyledAttributes.getFloat(R.styleable.TextAppearance_android_shadowRadius, 0.0f);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i2, R.styleable.MaterialTextAppearance);
        this.f521h = obtainStyledAttributes2.hasValue(R.styleable.MaterialTextAppearance_android_letterSpacing);
        this.f522i = obtainStyledAttributes2.getFloat(R.styleable.MaterialTextAppearance_android_letterSpacing, 0.0f);
        obtainStyledAttributes2.recycle();
    }

    public final void a() {
        String str;
        Typeface typeface = this.f527n;
        int i2 = this.f516c;
        if (typeface == null && (str = this.f515b) != null) {
            this.f527n = Typeface.create(str, i2);
        }
        if (this.f527n == null) {
            int i7 = this.f517d;
            if (i7 == 1) {
                this.f527n = Typeface.SANS_SERIF;
            } else if (i7 == 2) {
                this.f527n = Typeface.SERIF;
            } else if (i7 != 3) {
                this.f527n = Typeface.DEFAULT;
            } else {
                this.f527n = Typeface.MONOSPACE;
            }
            this.f527n = Typeface.create(this.f527n, i2);
        }
    }

    public Typeface getFallbackFont() {
        a();
        return this.f527n;
    }

    public Typeface getFont(Context context) {
        if (this.f526m) {
            return this.f527n;
        }
        if (!context.isRestricted()) {
            try {
                Typeface font = u.getFont(context, this.f525l);
                this.f527n = font;
                if (font != null) {
                    this.f527n = Typeface.create(font, this.f516c);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception e3) {
                Log.d("TextAppearance", "Error loading font " + this.f515b, e3);
            }
        }
        a();
        this.f526m = true;
        return this.f527n;
    }

    public void getFontAsync(Context context, TextPaint textPaint, i iVar) {
        updateTextPaintMeasureState(context, textPaint, getFallbackFont());
        getFontAsync(context, new f(this, context, textPaint, iVar));
    }

    public ColorStateList getTextColor() {
        return this.f523j;
    }

    public float getTextSize() {
        return this.f524k;
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f523j = colorStateList;
    }

    public void setTextSize(float f3) {
        this.f524k = f3;
    }

    public void updateDrawState(Context context, TextPaint textPaint, i iVar) {
        updateMeasureState(context, textPaint, iVar);
        ColorStateList colorStateList = this.f523j;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        ColorStateList colorStateList2 = this.f514a;
        textPaint.setShadowLayer(this.f520g, this.f518e, this.f519f, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public void updateMeasureState(Context context, TextPaint textPaint, i iVar) {
        if (!h.shouldLoadFontSynchronously()) {
            int i2 = this.f525l;
            if ((i2 != 0 ? u.getCachedFont(context, i2) : null) == null) {
                getFontAsync(context, textPaint, iVar);
                return;
            }
        }
        updateTextPaintMeasureState(context, textPaint, getFont(context));
    }

    public void updateTextPaintMeasureState(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface maybeCopyWithFontWeightAdjustment = k.maybeCopyWithFontWeightAdjustment(context, typeface);
        if (maybeCopyWithFontWeightAdjustment != null) {
            typeface = maybeCopyWithFontWeightAdjustment;
        }
        textPaint.setTypeface(typeface);
        int i2 = (~typeface.getStyle()) & this.f516c;
        textPaint.setFakeBoldText((i2 & 1) != 0);
        textPaint.setTextSkewX((i2 & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f524k);
        if (this.f521h) {
            textPaint.setLetterSpacing(this.f522i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void getFontAsync(android.content.Context r5, C3.i r6) {
        /*
            r4 = this;
            boolean r0 = C3.h.shouldLoadFontSynchronously()
            r1 = 0
            int r2 = r4.f525l
            if (r0 == 0) goto La
            goto L14
        La:
            if (r2 == 0) goto L11
            android.graphics.Typeface r0 = C.u.getCachedFont(r5, r2)
            goto L12
        L11:
            r0 = r1
        L12:
            if (r0 == 0) goto L18
        L14:
            r4.getFont(r5)
            goto L1b
        L18:
            r4.a()
        L1b:
            r0 = 1
            if (r2 != 0) goto L20
            r4.f526m = r0
        L20:
            boolean r3 = r4.f526m
            if (r3 == 0) goto L2a
            android.graphics.Typeface r5 = r4.f527n
            r6.onFontRetrieved(r5, r0)
            return
        L2a:
            C3.e r3 = new C3.e     // Catch: java.lang.Exception -> L33 android.content.res.Resources.NotFoundException -> L50
            r3.<init>(r4, r6)     // Catch: java.lang.Exception -> L33 android.content.res.Resources.NotFoundException -> L50
            C.u.getFont(r5, r2, r3, r1)     // Catch: java.lang.Exception -> L33 android.content.res.Resources.NotFoundException -> L50
            return
        L33:
            r5 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Error loading font "
            r1.<init>(r2)
            java.lang.String r2 = r4.f515b
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "TextAppearance"
            android.util.Log.d(r2, r1, r5)
            r4.f526m = r0
            r5 = -3
            r6.onFontRetrievalFailed(r5)
            goto L55
        L50:
            r4.f526m = r0
            r6.onFontRetrievalFailed(r0)
        L55:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: C3.g.getFontAsync(android.content.Context, C3.i):void");
    }
}
