package B3;

import S.g;
import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import com.google.android.material.R;
import l.V;
import r3.AbstractC1595a;

/* loaded from: classes2.dex */
public final class a extends V {

    /* renamed from: p, reason: collision with root package name */
    public static final int f215p = R.style.Widget_MaterialComponents_CompoundButton_RadioButton;

    /* renamed from: q, reason: collision with root package name */
    public static final int[][] f216q = {new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* renamed from: m, reason: collision with root package name */
    public ColorStateList f217m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f218n;

    public a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.radioButtonStyle);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f217m == null) {
            int color = AbstractC1595a.getColor(this, R.attr.colorControlActivated);
            int color2 = AbstractC1595a.getColor(this, R.attr.colorOnSurface);
            int color3 = AbstractC1595a.getColor(this, R.attr.colorSurface);
            this.f217m = new ColorStateList(f216q, new int[]{AbstractC1595a.layer(color3, color, 1.0f), AbstractC1595a.layer(color3, color2, 0.54f), AbstractC1595a.layer(color3, color2, 0.38f), AbstractC1595a.layer(color3, color2, 0.38f)});
        }
        return this.f217m;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f218n && g.getButtonTintList(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z6) {
        this.f218n = z6;
        if (z6) {
            g.setButtonTintList(this, getMaterialThemeColorsTintList());
        } else {
            g.setButtonTintList(this, null);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a(android.content.Context r7, android.util.AttributeSet r8, int r9) {
        /*
            r6 = this;
            int r4 = B3.a.f215p
            android.content.Context r7 = M3.a.wrap(r7, r8, r9, r4)
            r6.<init>(r7, r8, r9)
            android.content.Context r0 = r6.getContext()
            int[] r2 = com.google.android.material.R.styleable.MaterialRadioButton
            r7 = 0
            int[] r5 = new int[r7]
            r1 = r8
            r3 = r9
            android.content.res.TypedArray r8 = x3.L.obtainStyledAttributes(r0, r1, r2, r3, r4, r5)
            int r9 = com.google.android.material.R.styleable.MaterialRadioButton_buttonTint
            boolean r9 = r8.hasValue(r9)
            if (r9 == 0) goto L29
            int r9 = com.google.android.material.R.styleable.MaterialRadioButton_buttonTint
            android.content.res.ColorStateList r9 = C3.d.getColorStateList(r0, r8, r9)
            S.g.setButtonTintList(r6, r9)
        L29:
            int r9 = com.google.android.material.R.styleable.MaterialRadioButton_useMaterialThemeColors
            boolean r7 = r8.getBoolean(r9, r7)
            r6.f218n = r7
            r8.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: B3.a.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
