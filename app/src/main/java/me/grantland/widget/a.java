package me.grantland.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.method.SingleLineTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import c6.b;
import c6.c;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public TextView f18741a;

    /* renamed from: b, reason: collision with root package name */
    public TextPaint f18742b;

    /* renamed from: c, reason: collision with root package name */
    public float f18743c;

    /* renamed from: d, reason: collision with root package name */
    public int f18744d;

    /* renamed from: e, reason: collision with root package name */
    public float f18745e;

    /* renamed from: f, reason: collision with root package name */
    public float f18746f;

    /* renamed from: g, reason: collision with root package name */
    public float f18747g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f18748h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f18749i;

    /* renamed from: j, reason: collision with root package name */
    public ArrayList f18750j;

    /* renamed from: k, reason: collision with root package name */
    public b f18751k;

    /* renamed from: l, reason: collision with root package name */
    public c6.a f18752l;

    public static float b(CharSequence charSequence, TextPaint textPaint, float f3, int i2, float f7, float f8, float f9, DisplayMetrics displayMetrics) {
        StaticLayout staticLayout;
        int i7;
        CharSequence charSequence2;
        float f10;
        float f11 = (f7 + f8) / 2.0f;
        textPaint.setTextSize(TypedValue.applyDimension(0, f11, displayMetrics));
        if (i2 != 1) {
            staticLayout = new StaticLayout(charSequence, textPaint, (int) f3, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            i7 = staticLayout.getLineCount();
        } else {
            staticLayout = null;
            i7 = 1;
        }
        StaticLayout staticLayout2 = staticLayout;
        if (i7 <= i2) {
            if (i7 < i2) {
                return b(charSequence, textPaint, f3, i2, f11, f8, f9, displayMetrics);
            }
            if (i2 == 1) {
                charSequence2 = charSequence;
                f10 = textPaint.measureText(charSequence2, 0, charSequence.length());
            } else {
                charSequence2 = charSequence;
                f10 = 0.0f;
                for (int i8 = 0; i8 < i7; i8++) {
                    if (staticLayout2.getLineWidth(i8) > f10) {
                        f10 = staticLayout2.getLineWidth(i8);
                    }
                }
            }
            float f12 = f10;
            if (f8 - f7 >= f9) {
                return f12 > f3 ? b(charSequence2, textPaint, f3, i2, f7, f11, f9, displayMetrics) : f12 < f3 ? b(charSequence, textPaint, f3, i2, f11, f8, f9, displayMetrics) : f11;
            }
        } else if (f8 - f7 >= f9) {
            return b(charSequence, textPaint, f3, i2, f7, f11, f9, displayMetrics);
        }
        return f7;
    }

    public static a create(TextView textView, AttributeSet attributeSet, int i2) {
        a aVar = new a();
        aVar.f18751k = new b(aVar);
        aVar.f18752l = new c6.a(aVar);
        float f3 = textView.getContext().getResources().getDisplayMetrics().scaledDensity;
        aVar.f18741a = textView;
        aVar.f18742b = new TextPaint();
        float textSize = textView.getTextSize();
        if (aVar.f18743c != textSize) {
            aVar.f18743c = textSize;
        }
        TransformationMethod transformationMethod = textView.getTransformationMethod();
        boolean z6 = true;
        aVar.f18744d = (transformationMethod == null || !(transformationMethod instanceof SingleLineTransformationMethod)) ? textView.getMaxLines() : 1;
        aVar.f18745e = f3 * 8.0f;
        aVar.f18746f = aVar.f18743c;
        aVar.f18747g = 0.5f;
        if (attributeSet != null) {
            Context context = textView.getContext();
            int minTextSize = (int) aVar.getMinTextSize();
            float precision = aVar.getPrecision();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AutofitTextView, i2, 0);
            z6 = obtainStyledAttributes.getBoolean(R.styleable.AutofitTextView_sizeToFit, true);
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AutofitTextView_minTextSize, minTextSize);
            float f7 = obtainStyledAttributes.getFloat(R.styleable.AutofitTextView_precision, precision);
            obtainStyledAttributes.recycle();
            aVar.setMinTextSize(0, dimensionPixelSize).setPrecision(f7);
        }
        aVar.setEnabled(z6);
        return aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: me.grantland.widget.a.a():void");
    }

    public a addOnTextSizeChangeListener(c cVar) {
        if (this.f18750j == null) {
            this.f18750j = new ArrayList();
        }
        this.f18750j.add(cVar);
        return this;
    }

    public float getMaxTextSize() {
        return this.f18746f;
    }

    public float getMinTextSize() {
        return this.f18745e;
    }

    public float getPrecision() {
        return this.f18747g;
    }

    public a setEnabled(boolean z6) {
        if (this.f18748h != z6) {
            this.f18748h = z6;
            c6.a aVar = this.f18752l;
            b bVar = this.f18751k;
            TextView textView = this.f18741a;
            if (z6) {
                textView.addTextChangedListener(bVar);
                textView.addOnLayoutChangeListener(aVar);
                a();
                return this;
            }
            textView.removeTextChangedListener(bVar);
            textView.removeOnLayoutChangeListener(aVar);
            textView.setTextSize(0, this.f18743c);
        }
        return this;
    }

    public a setMaxLines(int i2) {
        if (this.f18744d != i2) {
            this.f18744d = i2;
            a();
        }
        return this;
    }

    public a setMaxTextSize(float f3) {
        return setMaxTextSize(2, f3);
    }

    public a setMinTextSize(int i2, float f3) {
        Context context = this.f18741a.getContext();
        Resources system = Resources.getSystem();
        if (context != null) {
            system = context.getResources();
        }
        float applyDimension = TypedValue.applyDimension(i2, f3, system.getDisplayMetrics());
        if (applyDimension != this.f18745e) {
            this.f18745e = applyDimension;
            a();
        }
        return this;
    }

    public a setPrecision(float f3) {
        if (this.f18747g != f3) {
            this.f18747g = f3;
            a();
        }
        return this;
    }

    public void setTextSize(int i2, float f3) {
        if (this.f18749i) {
            return;
        }
        Context context = this.f18741a.getContext();
        Resources system = Resources.getSystem();
        if (context != null) {
            system = context.getResources();
        }
        float applyDimension = TypedValue.applyDimension(i2, f3, system.getDisplayMetrics());
        if (this.f18743c != applyDimension) {
            this.f18743c = applyDimension;
        }
    }

    public a setMaxTextSize(int i2, float f3) {
        Context context = this.f18741a.getContext();
        Resources system = Resources.getSystem();
        if (context != null) {
            system = context.getResources();
        }
        float applyDimension = TypedValue.applyDimension(i2, f3, system.getDisplayMetrics());
        if (applyDimension != this.f18746f) {
            this.f18746f = applyDimension;
            a();
        }
        return this;
    }
}
