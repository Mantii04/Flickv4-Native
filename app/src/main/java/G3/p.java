package G3;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import com.google.android.material.R;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public AbstractC0105d f1129a = new m();

    /* renamed from: b, reason: collision with root package name */
    public AbstractC0105d f1130b = new m();

    /* renamed from: c, reason: collision with root package name */
    public AbstractC0105d f1131c = new m();

    /* renamed from: d, reason: collision with root package name */
    public AbstractC0105d f1132d = new m();

    /* renamed from: e, reason: collision with root package name */
    public InterfaceC0104c f1133e = new C0102a(0.0f);

    /* renamed from: f, reason: collision with root package name */
    public InterfaceC0104c f1134f = new C0102a(0.0f);

    /* renamed from: g, reason: collision with root package name */
    public InterfaceC0104c f1135g = new C0102a(0.0f);

    /* renamed from: h, reason: collision with root package name */
    public InterfaceC0104c f1136h = new C0102a(0.0f);

    /* renamed from: i, reason: collision with root package name */
    public C0107f f1137i = new C0107f();

    /* renamed from: j, reason: collision with root package name */
    public C0107f f1138j = new C0107f();

    /* renamed from: k, reason: collision with root package name */
    public C0107f f1139k = new C0107f();

    /* renamed from: l, reason: collision with root package name */
    public C0107f f1140l = new C0107f();

    static {
        new l(0.5f);
    }

    public static n a(Context context, int i2, int i7, InterfaceC0104c interfaceC0104c) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i2);
        if (i7 != 0) {
            contextThemeWrapper = new ContextThemeWrapper(contextThemeWrapper, i7);
        }
        TypedArray obtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(R.styleable.ShapeAppearance);
        try {
            int i8 = obtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamily, 0);
            int i9 = obtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyTopLeft, i8);
            int i10 = obtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyTopRight, i8);
            int i11 = obtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyBottomRight, i8);
            int i12 = obtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyBottomLeft, i8);
            InterfaceC0104c b7 = b(obtainStyledAttributes, R.styleable.ShapeAppearance_cornerSize, interfaceC0104c);
            InterfaceC0104c b8 = b(obtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeTopLeft, b7);
            InterfaceC0104c b9 = b(obtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeTopRight, b7);
            InterfaceC0104c b10 = b(obtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeBottomRight, b7);
            return new n().setTopLeftCorner(i9, b8).setTopRightCorner(i10, b9).setBottomRightCorner(i11, b10).setBottomLeftCorner(i12, b(obtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeBottomLeft, b7));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static InterfaceC0104c b(TypedArray typedArray, int i2, InterfaceC0104c interfaceC0104c) {
        TypedValue peekValue = typedArray.peekValue(i2);
        if (peekValue != null) {
            int i7 = peekValue.type;
            if (i7 == 5) {
                return new C0102a(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics()));
            }
            if (i7 == 6) {
                return new l(peekValue.getFraction(1.0f, 1.0f));
            }
        }
        return interfaceC0104c;
    }

    public static n builder() {
        return new n();
    }

    public C0107f getBottomEdge() {
        return this.f1139k;
    }

    public AbstractC0105d getBottomLeftCorner() {
        return this.f1132d;
    }

    public InterfaceC0104c getBottomLeftCornerSize() {
        return this.f1136h;
    }

    public AbstractC0105d getBottomRightCorner() {
        return this.f1131c;
    }

    public InterfaceC0104c getBottomRightCornerSize() {
        return this.f1135g;
    }

    public C0107f getLeftEdge() {
        return this.f1140l;
    }

    public C0107f getRightEdge() {
        return this.f1138j;
    }

    public C0107f getTopEdge() {
        return this.f1137i;
    }

    public AbstractC0105d getTopLeftCorner() {
        return this.f1129a;
    }

    public InterfaceC0104c getTopLeftCornerSize() {
        return this.f1133e;
    }

    public AbstractC0105d getTopRightCorner() {
        return this.f1130b;
    }

    public InterfaceC0104c getTopRightCornerSize() {
        return this.f1134f;
    }

    public boolean isRoundRect(RectF rectF) {
        boolean z6 = this.f1140l.getClass().equals(C0107f.class) && this.f1138j.getClass().equals(C0107f.class) && this.f1137i.getClass().equals(C0107f.class) && this.f1139k.getClass().equals(C0107f.class);
        float cornerSize = this.f1133e.getCornerSize(rectF);
        return z6 && ((this.f1134f.getCornerSize(rectF) > cornerSize ? 1 : (this.f1134f.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0 && (this.f1136h.getCornerSize(rectF) > cornerSize ? 1 : (this.f1136h.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0 && (this.f1135g.getCornerSize(rectF) > cornerSize ? 1 : (this.f1135g.getCornerSize(rectF) == cornerSize ? 0 : -1)) == 0) && ((this.f1130b instanceof m) && (this.f1129a instanceof m) && (this.f1131c instanceof m) && (this.f1132d instanceof m));
    }

    public n toBuilder() {
        return new n(this);
    }

    public p withCornerSize(float f3) {
        return toBuilder().setAllCornerSizes(f3).build();
    }

    public p withTransformedCornerSizes(o oVar) {
        h hVar = (h) oVar;
        return toBuilder().setTopLeftCornerSize(hVar.apply(getTopLeftCornerSize())).setTopRightCornerSize(hVar.apply(getTopRightCornerSize())).setBottomLeftCornerSize(hVar.apply(getBottomLeftCornerSize())).setBottomRightCornerSize(hVar.apply(getBottomRightCornerSize())).build();
    }

    public static n builder(Context context, AttributeSet attributeSet, int i2, int i7) {
        return builder(context, attributeSet, i2, i7, 0);
    }

    public p withCornerSize(InterfaceC0104c interfaceC0104c) {
        return toBuilder().setAllCornerSizes(interfaceC0104c).build();
    }

    public static n builder(Context context, AttributeSet attributeSet, int i2, int i7, int i8) {
        return builder(context, attributeSet, i2, i7, new C0102a(i8));
    }

    public static n builder(Context context, AttributeSet attributeSet, int i2, int i7, InterfaceC0104c interfaceC0104c) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MaterialShape, i2, i7);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.MaterialShape_shapeAppearance, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.MaterialShape_shapeAppearanceOverlay, 0);
        obtainStyledAttributes.recycle();
        return a(context, resourceId, resourceId2, interfaceC0104c);
    }

    public static n builder(Context context, int i2, int i7) {
        return a(context, i2, i7, new C0102a(0));
    }
}
