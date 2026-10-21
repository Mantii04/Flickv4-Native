package L3;

import C3.c;
import C3.d;
import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: classes2.dex */
public final class a extends AppCompatTextView {
    public a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        if (c.resolveBoolean(context, com.google.android.material.R.attr.textAppearanceLineHeightEnabled, true)) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(i2, com.google.android.material.R.styleable.MaterialTextAppearance);
            Context context2 = getContext();
            int[] iArr = {com.google.android.material.R.styleable.MaterialTextAppearance_android_lineHeight, com.google.android.material.R.styleable.MaterialTextAppearance_lineHeight};
            int i7 = -1;
            for (int i8 = 0; i8 < 2 && i7 < 0; i8++) {
                i7 = d.getDimensionPixelSize(context2, obtainStyledAttributes, iArr[i8], -1);
            }
            obtainStyledAttributes.recycle();
            if (i7 >= 0) {
                setLineHeight(i7);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, AttributeSet attributeSet, int i2) {
        super(M3.a.wrap(context, attributeSet, i2, 0), attributeSet, i2);
        Context context2 = getContext();
        if (c.resolveBoolean(context2, com.google.android.material.R.attr.textAppearanceLineHeightEnabled, true)) {
            Resources.Theme theme = context2.getTheme();
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, com.google.android.material.R.styleable.MaterialTextView, i2, 0);
            int[] iArr = {com.google.android.material.R.styleable.MaterialTextView_android_lineHeight, com.google.android.material.R.styleable.MaterialTextView_lineHeight};
            int i7 = -1;
            for (int i8 = 0; i8 < 2 && i7 < 0; i8++) {
                i7 = d.getDimensionPixelSize(context2, obtainStyledAttributes, iArr[i8], -1);
            }
            obtainStyledAttributes.recycle();
            if (i7 != -1) {
                return;
            }
            TypedArray obtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, com.google.android.material.R.styleable.MaterialTextView, i2, 0);
            int resourceId = obtainStyledAttributes2.getResourceId(com.google.android.material.R.styleable.MaterialTextView_android_textAppearance, -1);
            obtainStyledAttributes2.recycle();
            if (resourceId != -1) {
                TypedArray obtainStyledAttributes3 = theme.obtainStyledAttributes(resourceId, com.google.android.material.R.styleable.MaterialTextAppearance);
                Context context3 = getContext();
                int[] iArr2 = {com.google.android.material.R.styleable.MaterialTextAppearance_android_lineHeight, com.google.android.material.R.styleable.MaterialTextAppearance_lineHeight};
                int i9 = -1;
                for (int i10 = 0; i10 < 2 && i9 < 0; i10++) {
                    i9 = d.getDimensionPixelSize(context3, obtainStyledAttributes3, iArr2[i10], -1);
                }
                obtainStyledAttributes3.recycle();
                if (i9 >= 0) {
                    setLineHeight(i9);
                }
            }
        }
    }
}
