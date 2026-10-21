package i0;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Paint;
import androidx.leanback.R;

/* renamed from: i0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1002a {

    /* renamed from: a, reason: collision with root package name */
    public final float f16655a;

    /* renamed from: b, reason: collision with root package name */
    public final float f16656b;

    /* renamed from: c, reason: collision with root package name */
    public final Paint f16657c;

    public C1002a(float f3, float f7, int i2) {
        f3 = f3 > 1.0f ? 1.0f : f3;
        f3 = f3 < 0.0f ? 0.0f : f3;
        f7 = f7 > 1.0f ? 1.0f : f7;
        float f8 = f7 >= 0.0f ? f7 : 0.0f;
        Paint paint = new Paint();
        this.f16657c = paint;
        paint.setColor(Color.rgb(Color.red(i2), Color.green(i2), Color.blue(i2)));
        this.f16655a = f3;
        this.f16656b = f8;
        setActiveLevel(1.0f);
    }

    public static C1002a createDefault(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(R.styleable.LeanbackTheme);
        int color = obtainStyledAttributes.getColor(R.styleable.LeanbackTheme_overlayDimMaskColor, context.getResources().getColor(R.color.lb_view_dim_mask_color));
        float fraction = obtainStyledAttributes.getFraction(R.styleable.LeanbackTheme_overlayDimActiveLevel, 1, 1, context.getResources().getFraction(R.fraction.lb_view_active_level, 1, 0));
        float fraction2 = obtainStyledAttributes.getFraction(R.styleable.LeanbackTheme_overlayDimDimmedLevel, 1, 1, context.getResources().getFraction(R.fraction.lb_view_dimmed_level, 1, 1));
        obtainStyledAttributes.recycle();
        return new C1002a(fraction, fraction2, color);
    }

    public Paint getPaint() {
        return this.f16657c;
    }

    public void setActiveLevel(float f3) {
        float f7 = this.f16655a;
        float f8 = this.f16656b;
        this.f16657c.setAlpha((int) ((((f7 - f8) * f3) + f8) * 255.0f));
    }
}
