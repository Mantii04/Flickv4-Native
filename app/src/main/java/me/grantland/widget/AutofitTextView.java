package me.grantland.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import c6.c;

/* loaded from: classes2.dex */
public class AutofitTextView extends TextView implements c {

    /* renamed from: b, reason: collision with root package name */
    public final a f18740b;

    public AutofitTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f18740b = a.create(this, attributeSet, 0).addOnTextSizeChangeListener(this);
    }

    public a getAutofitHelper() {
        return this.f18740b;
    }

    public float getMaxTextSize() {
        return this.f18740b.getMaxTextSize();
    }

    public float getMinTextSize() {
        return this.f18740b.getMinTextSize();
    }

    public float getPrecision() {
        return this.f18740b.getPrecision();
    }

    @Override // c6.c
    public void onTextSizeChange(float f3, float f7) {
    }

    @Override // android.widget.TextView
    public void setLines(int i2) {
        super.setLines(i2);
        a aVar = this.f18740b;
        if (aVar != null) {
            aVar.setMaxLines(i2);
        }
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i2) {
        super.setMaxLines(i2);
        a aVar = this.f18740b;
        if (aVar != null) {
            aVar.setMaxLines(i2);
        }
    }

    public void setMaxTextSize(float f3) {
        this.f18740b.setMaxTextSize(f3);
    }

    public void setMinTextSize(int i2) {
        this.f18740b.setMinTextSize(2, i2);
    }

    public void setPrecision(float f3) {
        this.f18740b.setPrecision(f3);
    }

    public void setSizeToFit(boolean z6) {
        this.f18740b.setEnabled(z6);
    }

    @Override // android.widget.TextView
    public void setTextSize(int i2, float f3) {
        super.setTextSize(i2, f3);
        a aVar = this.f18740b;
        if (aVar != null) {
            aVar.setTextSize(i2, f3);
        }
    }
}
