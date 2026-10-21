package G3;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import com.google.android.material.R;
import java.util.BitSet;
import r3.AbstractC1595a;
import u3.C1699a;

/* loaded from: classes2.dex */
public class j extends Drawable implements B {

    /* renamed from: G, reason: collision with root package name */
    public static final Paint f1091G;

    /* renamed from: A, reason: collision with root package name */
    public final s f1092A;

    /* renamed from: B, reason: collision with root package name */
    public PorterDuffColorFilter f1093B;

    /* renamed from: C, reason: collision with root package name */
    public PorterDuffColorFilter f1094C;

    /* renamed from: D, reason: collision with root package name */
    public int f1095D;

    /* renamed from: E, reason: collision with root package name */
    public final RectF f1096E;

    /* renamed from: F, reason: collision with root package name */
    public final boolean f1097F;

    /* renamed from: b, reason: collision with root package name */
    public i f1098b;

    /* renamed from: e, reason: collision with root package name */
    public final z[] f1099e;

    /* renamed from: f, reason: collision with root package name */
    public final z[] f1100f;

    /* renamed from: j, reason: collision with root package name */
    public final BitSet f1101j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1102m;

    /* renamed from: n, reason: collision with root package name */
    public final Matrix f1103n;

    /* renamed from: p, reason: collision with root package name */
    public final Path f1104p;

    /* renamed from: q, reason: collision with root package name */
    public final Path f1105q;

    /* renamed from: r, reason: collision with root package name */
    public final RectF f1106r;

    /* renamed from: s, reason: collision with root package name */
    public final RectF f1107s;

    /* renamed from: t, reason: collision with root package name */
    public final Region f1108t;

    /* renamed from: u, reason: collision with root package name */
    public final Region f1109u;

    /* renamed from: v, reason: collision with root package name */
    public p f1110v;

    /* renamed from: w, reason: collision with root package name */
    public final Paint f1111w;

    /* renamed from: x, reason: collision with root package name */
    public final Paint f1112x;

    /* renamed from: y, reason: collision with root package name */
    public final F3.a f1113y;

    /* renamed from: z, reason: collision with root package name */
    public final C0108g f1114z;

    static {
        Paint paint = new Paint(1);
        f1091G = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public j() {
        this(new p());
    }

    public static j createWithElevationOverlay(Context context, float f3, ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(AbstractC1595a.getColor(context, R.attr.colorSurface, j.class.getSimpleName()));
        }
        j jVar = new j();
        jVar.initializeElevationOverlay(context);
        jVar.setFillColor(colorStateList);
        jVar.setElevation(f3);
        return jVar;
    }

    public final void a(RectF rectF, Path path) {
        calculatePathForSize(rectF, path);
        if (this.f1098b.f1082h != 1.0f) {
            Matrix matrix = this.f1103n;
            matrix.reset();
            float f3 = this.f1098b.f1082h;
            matrix.setScale(f3, f3, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.f1096E, true);
    }

    public final void b(Canvas canvas) {
        if (this.f1101j.cardinality() > 0) {
            Log.w("j", "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        int i2 = this.f1098b.f1089o;
        Path path = this.f1104p;
        F3.a aVar = this.f1113y;
        if (i2 != 0) {
            canvas.drawPath(path, aVar.getShadowPaint());
        }
        for (int i7 = 0; i7 < 4; i7++) {
            this.f1099e[i7].draw(aVar, this.f1098b.f1088n, canvas);
            this.f1100f[i7].draw(aVar, this.f1098b.f1088n, canvas);
        }
        if (this.f1097F) {
            int shadowOffsetX = getShadowOffsetX();
            int shadowOffsetY = getShadowOffsetY();
            canvas.translate(-shadowOffsetX, -shadowOffsetY);
            canvas.drawPath(path, f1091G);
            canvas.translate(shadowOffsetX, shadowOffsetY);
        }
    }

    public final void c(Canvas canvas, Paint paint, Path path, p pVar, RectF rectF) {
        if (!pVar.isRoundRect(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float cornerSize = pVar.getTopRightCornerSize().getCornerSize(rectF) * this.f1098b.f1083i;
            canvas.drawRoundRect(rectF, cornerSize, cornerSize, paint);
        }
    }

    public final void calculatePathForSize(RectF rectF, Path path) {
        i iVar = this.f1098b;
        this.f1092A.calculatePath(iVar.f1075a, iVar.f1083i, rectF, this.f1114z, path);
    }

    public int compositeElevationOverlayIfNeeded(int i2) {
        float parentAbsoluteElevation = getParentAbsoluteElevation() + getZ();
        C1699a c1699a = this.f1098b.f1076b;
        return c1699a != null ? c1699a.compositeOverlayIfNeeded(i2, parentAbsoluteElevation) : i2;
    }

    public final boolean d() {
        Paint.Style style = this.f1098b.f1090p;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f1112x.getStrokeWidth() > 0.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Canvas canvas2;
        Paint paint = this.f1111w;
        paint.setColorFilter(this.f1093B);
        int alpha = paint.getAlpha();
        int i2 = this.f1098b.f1085k;
        paint.setAlpha(((i2 + (i2 >>> 7)) * alpha) >>> 8);
        Paint paint2 = this.f1112x;
        paint2.setColorFilter(this.f1094C);
        paint2.setStrokeWidth(this.f1098b.f1084j);
        int alpha2 = paint2.getAlpha();
        int i7 = this.f1098b.f1085k;
        paint2.setAlpha(((i7 + (i7 >>> 7)) * alpha2) >>> 8);
        boolean z6 = this.f1102m;
        Path path = this.f1104p;
        if (z6) {
            p withTransformedCornerSizes = getShapeAppearanceModel().withTransformedCornerSizes(new h(-(d() ? paint2.getStrokeWidth() / 2.0f : 0.0f)));
            this.f1110v = withTransformedCornerSizes;
            float f3 = this.f1098b.f1083i;
            RectF rectF = this.f1107s;
            rectF.set(getBoundsAsRectF());
            float strokeWidth = d() ? paint2.getStrokeWidth() / 2.0f : 0.0f;
            rectF.inset(strokeWidth, strokeWidth);
            this.f1092A.calculatePath(withTransformedCornerSizes, f3, rectF, this.f1105q);
            a(getBoundsAsRectF(), path);
            this.f1102m = false;
        }
        i iVar = this.f1098b;
        iVar.getClass();
        if (iVar.f1088n > 0 && requiresCompatShadow()) {
            canvas.save();
            canvas.translate(getShadowOffsetX(), getShadowOffsetY());
            if (this.f1097F) {
                RectF rectF2 = this.f1096E;
                int width = (int) (rectF2.width() - getBounds().width());
                int height = (int) (rectF2.height() - getBounds().height());
                if (width < 0 || height < 0) {
                    throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
                }
                Bitmap createBitmap = Bitmap.createBitmap((this.f1098b.f1088n * 2) + ((int) rectF2.width()) + width, (this.f1098b.f1088n * 2) + ((int) rectF2.height()) + height, Bitmap.Config.ARGB_8888);
                Canvas canvas3 = new Canvas(createBitmap);
                float f7 = (getBounds().left - this.f1098b.f1088n) - width;
                float f8 = (getBounds().top - this.f1098b.f1088n) - height;
                canvas3.translate(-f7, -f8);
                b(canvas3);
                canvas.drawBitmap(createBitmap, f7, f8, (Paint) null);
                createBitmap.recycle();
                canvas.restore();
            } else {
                b(canvas);
                canvas.restore();
            }
        }
        i iVar2 = this.f1098b;
        Paint.Style style = iVar2.f1090p;
        if (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL) {
            canvas2 = canvas;
            c(canvas2, paint, path, iVar2.f1075a, getBoundsAsRectF());
        } else {
            canvas2 = canvas;
        }
        if (d()) {
            drawStrokeShape(canvas2);
        }
        paint.setAlpha(alpha);
        paint2.setAlpha(alpha2);
    }

    public void drawShape(Canvas canvas, Paint paint, Path path, RectF rectF) {
        c(canvas, paint, path, this.f1098b.f1075a, rectF);
    }

    public void drawStrokeShape(Canvas canvas) {
        Paint paint = this.f1112x;
        Path path = this.f1105q;
        p pVar = this.f1110v;
        RectF rectF = this.f1107s;
        rectF.set(getBoundsAsRectF());
        float strokeWidth = d() ? paint.getStrokeWidth() / 2.0f : 0.0f;
        rectF.inset(strokeWidth, strokeWidth);
        c(canvas, paint, path, pVar, rectF);
    }

    public final boolean e(int[] iArr) {
        boolean z6;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.f1098b.f1077c == null || color2 == (colorForState2 = this.f1098b.f1077c.getColorForState(iArr, (color2 = (paint2 = this.f1111w).getColor())))) {
            z6 = false;
        } else {
            paint2.setColor(colorForState2);
            z6 = true;
        }
        if (this.f1098b.f1078d == null || color == (colorForState = this.f1098b.f1078d.getColorForState(iArr, (color = (paint = this.f1112x).getColor())))) {
            return z6;
        }
        paint.setColor(colorForState);
        return true;
    }

    public final boolean f() {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f1093B;
        PorterDuffColorFilter porterDuffColorFilter3 = this.f1094C;
        i iVar = this.f1098b;
        ColorStateList colorStateList = iVar.f1079e;
        PorterDuff.Mode mode = iVar.f1080f;
        Paint paint = this.f1111w;
        if (colorStateList == null || mode == null) {
            int color = paint.getColor();
            int compositeElevationOverlayIfNeeded = compositeElevationOverlayIfNeeded(color);
            this.f1095D = compositeElevationOverlayIfNeeded;
            porterDuffColorFilter = compositeElevationOverlayIfNeeded != color ? new PorterDuffColorFilter(compositeElevationOverlayIfNeeded, PorterDuff.Mode.SRC_IN) : null;
        } else {
            int compositeElevationOverlayIfNeeded2 = compositeElevationOverlayIfNeeded(colorStateList.getColorForState(getState(), 0));
            this.f1095D = compositeElevationOverlayIfNeeded2;
            porterDuffColorFilter = new PorterDuffColorFilter(compositeElevationOverlayIfNeeded2, mode);
        }
        this.f1093B = porterDuffColorFilter;
        this.f1098b.getClass();
        this.f1094C = null;
        this.f1098b.getClass();
        return (L.c.equals(porterDuffColorFilter2, this.f1093B) && L.c.equals(porterDuffColorFilter3, this.f1094C)) ? false : true;
    }

    public final void g() {
        float z6 = getZ();
        this.f1098b.f1088n = (int) Math.ceil(0.75f * z6);
        this.f1098b.f1089o = (int) Math.ceil(z6 * 0.25f);
        f();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f1098b.f1085k;
    }

    public RectF getBoundsAsRectF() {
        RectF rectF = this.f1106r;
        rectF.set(getBounds());
        return rectF;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f1098b;
    }

    public float getElevation() {
        return this.f1098b.f1087m;
    }

    public ColorStateList getFillColor() {
        return this.f1098b.f1077c;
    }

    public float getInterpolation() {
        return this.f1098b.f1083i;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        this.f1098b.getClass();
        if (isRoundRect()) {
            outline.setRoundRect(getBounds(), getTopLeftCornerResolvedSize() * this.f1098b.f1083i);
        } else {
            RectF boundsAsRectF = getBoundsAsRectF();
            Path path = this.f1104p;
            a(boundsAsRectF, path);
            t3.c.setOutlineToPath(outline, path);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Rect rect2 = this.f1098b.f1081g;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    public float getParentAbsoluteElevation() {
        return this.f1098b.f1086l;
    }

    public int getResolvedTintColor() {
        return this.f1095D;
    }

    public int getShadowOffsetX() {
        return (int) (Math.sin(Math.toRadians(0)) * this.f1098b.f1089o);
    }

    public int getShadowOffsetY() {
        return (int) (Math.cos(Math.toRadians(0)) * this.f1098b.f1089o);
    }

    public p getShapeAppearanceModel() {
        return this.f1098b.f1075a;
    }

    public float getTopLeftCornerResolvedSize() {
        return this.f1098b.f1075a.getTopLeftCornerSize().getCornerSize(getBoundsAsRectF());
    }

    public float getTopRightCornerResolvedSize() {
        return this.f1098b.f1075a.getTopRightCornerSize().getCornerSize(getBoundsAsRectF());
    }

    public float getTranslationZ() {
        this.f1098b.getClass();
        return 0.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.f1108t;
        region.set(bounds);
        RectF boundsAsRectF = getBoundsAsRectF();
        Path path = this.f1104p;
        a(boundsAsRectF, path);
        Region region2 = this.f1109u;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    public float getZ() {
        return getTranslationZ() + getElevation();
    }

    public void initializeElevationOverlay(Context context) {
        this.f1098b.f1076b = new C1699a(context);
        g();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.f1102m = true;
        super.invalidateSelf();
    }

    public boolean isElevationOverlayEnabled() {
        C1699a c1699a = this.f1098b.f1076b;
        return c1699a != null && c1699a.isThemeElevationOverlayEnabled();
    }

    public boolean isRoundRect() {
        return this.f1098b.f1075a.isRoundRect(getBoundsAsRectF());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (super.isStateful()) {
            return true;
        }
        ColorStateList colorStateList = this.f1098b.f1079e;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        this.f1098b.getClass();
        ColorStateList colorStateList2 = this.f1098b.f1078d;
        if (colorStateList2 != null && colorStateList2.isStateful()) {
            return true;
        }
        ColorStateList colorStateList3 = this.f1098b.f1077c;
        return colorStateList3 != null && colorStateList3.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f1098b = new i(this.f1098b);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f1102m = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean z6 = e(iArr) || f();
        if (z6) {
            invalidateSelf();
        }
        return z6;
    }

    public boolean requiresCompatShadow() {
        return (isRoundRect() || this.f1104p.isConvex() || Build.VERSION.SDK_INT >= 29) ? false : true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        i iVar = this.f1098b;
        if (iVar.f1085k != i2) {
            iVar.f1085k = i2;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1098b.getClass();
        super.invalidateSelf();
    }

    public void setCornerSize(float f3) {
        setShapeAppearanceModel(this.f1098b.f1075a.withCornerSize(f3));
    }

    public void setElevation(float f3) {
        i iVar = this.f1098b;
        if (iVar.f1087m != f3) {
            iVar.f1087m = f3;
            g();
        }
    }

    public void setFillColor(ColorStateList colorStateList) {
        i iVar = this.f1098b;
        if (iVar.f1077c != colorStateList) {
            iVar.f1077c = colorStateList;
            onStateChange(getState());
        }
    }

    public void setInterpolation(float f3) {
        i iVar = this.f1098b;
        if (iVar.f1083i != f3) {
            iVar.f1083i = f3;
            this.f1102m = true;
            invalidateSelf();
        }
    }

    public void setPadding(int i2, int i7, int i8, int i9) {
        i iVar = this.f1098b;
        if (iVar.f1081g == null) {
            iVar.f1081g = new Rect();
        }
        this.f1098b.f1081g.set(i2, i7, i8, i9);
        invalidateSelf();
    }

    public void setParentAbsoluteElevation(float f3) {
        i iVar = this.f1098b;
        if (iVar.f1086l != f3) {
            iVar.f1086l = f3;
            g();
        }
    }

    @Override // G3.B
    public void setShapeAppearanceModel(p pVar) {
        this.f1098b.f1075a = pVar;
        invalidateSelf();
    }

    public void setStroke(float f3, int i2) {
        setStrokeWidth(f3);
        setStrokeColor(ColorStateList.valueOf(i2));
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        i iVar = this.f1098b;
        if (iVar.f1078d != colorStateList) {
            iVar.f1078d = colorStateList;
            onStateChange(getState());
        }
    }

    public void setStrokeWidth(float f3) {
        this.f1098b.f1084j = f3;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i2) {
        setTintList(ColorStateList.valueOf(i2));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f1098b.f1079e = colorStateList;
        f();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        i iVar = this.f1098b;
        if (iVar.f1080f != mode) {
            iVar.f1080f = mode;
            f();
            super.invalidateSelf();
        }
    }

    public j(Context context, AttributeSet attributeSet, int i2, int i7) {
        this(p.builder(context, attributeSet, i2, i7).build());
    }

    public void setCornerSize(InterfaceC0104c interfaceC0104c) {
        setShapeAppearanceModel(this.f1098b.f1075a.withCornerSize(interfaceC0104c));
    }

    public j(p pVar) {
        this(new i(pVar, null));
    }

    public void setStroke(float f3, ColorStateList colorStateList) {
        setStrokeWidth(f3);
        setStrokeColor(colorStateList);
    }

    public j(i iVar) {
        s sVar;
        this.f1099e = new z[4];
        this.f1100f = new z[4];
        this.f1101j = new BitSet(8);
        this.f1103n = new Matrix();
        this.f1104p = new Path();
        this.f1105q = new Path();
        this.f1106r = new RectF();
        this.f1107s = new RectF();
        this.f1108t = new Region();
        this.f1109u = new Region();
        Paint paint = new Paint(1);
        this.f1111w = paint;
        Paint paint2 = new Paint(1);
        this.f1112x = paint2;
        this.f1113y = new F3.a();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            sVar = s.getInstance();
        } else {
            sVar = new s();
        }
        this.f1092A = sVar;
        this.f1096E = new RectF();
        this.f1097F = true;
        this.f1098b = iVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        f();
        e(getState());
        this.f1114z = new C0108g(this);
    }
}
