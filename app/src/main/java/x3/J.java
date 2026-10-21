package x3;

import android.content.Context;
import android.text.TextPaint;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public final class J {

    /* renamed from: c, reason: collision with root package name */
    public float f20882c;

    /* renamed from: d, reason: collision with root package name */
    public float f20883d;

    /* renamed from: g, reason: collision with root package name */
    public C3.g f20886g;

    /* renamed from: a, reason: collision with root package name */
    public final TextPaint f20880a = new TextPaint(1);

    /* renamed from: b, reason: collision with root package name */
    public final H f20881b = new H(this);

    /* renamed from: e, reason: collision with root package name */
    public boolean f20884e = true;

    /* renamed from: f, reason: collision with root package name */
    public WeakReference f20885f = new WeakReference(null);

    public J(I i2) {
        setDelegate(i2);
    }

    public final void a(String str) {
        TextPaint textPaint = this.f20880a;
        this.f20882c = str == null ? 0.0f : textPaint.measureText((CharSequence) str, 0, str.length());
        this.f20883d = str != null ? Math.abs(textPaint.getFontMetrics().ascent) : 0.0f;
        this.f20884e = false;
    }

    public C3.g getTextAppearance() {
        return this.f20886g;
    }

    public float getTextHeight(String str) {
        if (!this.f20884e) {
            return this.f20883d;
        }
        a(str);
        return this.f20883d;
    }

    public TextPaint getTextPaint() {
        return this.f20880a;
    }

    public float getTextWidth(String str) {
        if (!this.f20884e) {
            return this.f20882c;
        }
        a(str);
        return this.f20882c;
    }

    public void setDelegate(I i2) {
        this.f20885f = new WeakReference(i2);
    }

    public void setTextAppearance(C3.g gVar, Context context) {
        if (this.f20886g != gVar) {
            this.f20886g = gVar;
            if (gVar != null) {
                TextPaint textPaint = this.f20880a;
                H h7 = this.f20881b;
                gVar.updateMeasureState(context, textPaint, h7);
                I i2 = (I) this.f20885f.get();
                if (i2 != null) {
                    textPaint.drawableState = i2.getState();
                }
                gVar.updateDrawState(context, textPaint, h7);
                this.f20884e = true;
            }
            I i7 = (I) this.f20885f.get();
            if (i7 != null) {
                i7.onTextSizeChange();
                i7.onStateChange(i7.getState());
            }
        }
    }

    public void setTextSizeDirty(boolean z6) {
        this.f20884e = z6;
    }

    public void setTextWidthDirty(boolean z6) {
        this.f20884e = z6;
    }

    public void updateTextPaintDrawState(Context context) {
        this.f20886g.updateDrawState(context, this.f20880a, this.f20881b);
    }
}
