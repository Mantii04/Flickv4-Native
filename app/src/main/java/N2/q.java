package N2;

import android.animation.ValueAnimator;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public abstract class q extends Drawable implements ValueAnimator.AnimatorUpdateListener, Animatable, Drawable.Callback {

    /* renamed from: B, reason: collision with root package name */
    public static final Rect f2298B = new Rect();

    /* renamed from: C, reason: collision with root package name */
    public static final h f2299C = new h("rotateX");

    /* renamed from: D, reason: collision with root package name */
    public static final i f2300D = new i("rotate");

    /* renamed from: E, reason: collision with root package name */
    public static final j f2301E = new j("rotateY");

    /* renamed from: F, reason: collision with root package name */
    public static final m f2302F;

    /* renamed from: G, reason: collision with root package name */
    public static final n f2303G;

    /* renamed from: H, reason: collision with root package name */
    public static final p f2304H;

    /* renamed from: I, reason: collision with root package name */
    public static final f f2305I;

    /* renamed from: J, reason: collision with root package name */
    public static final g f2306J;

    /* renamed from: j, reason: collision with root package name */
    public float f2311j;

    /* renamed from: m, reason: collision with root package name */
    public float f2312m;

    /* renamed from: n, reason: collision with root package name */
    public int f2313n;

    /* renamed from: p, reason: collision with root package name */
    public int f2314p;

    /* renamed from: q, reason: collision with root package name */
    public int f2315q;

    /* renamed from: r, reason: collision with root package name */
    public int f2316r;

    /* renamed from: s, reason: collision with root package name */
    public int f2317s;

    /* renamed from: t, reason: collision with root package name */
    public int f2318t;

    /* renamed from: u, reason: collision with root package name */
    public float f2319u;

    /* renamed from: v, reason: collision with root package name */
    public float f2320v;

    /* renamed from: w, reason: collision with root package name */
    public ValueAnimator f2321w;

    /* renamed from: b, reason: collision with root package name */
    public float f2308b = 1.0f;

    /* renamed from: e, reason: collision with root package name */
    public float f2309e = 1.0f;

    /* renamed from: f, reason: collision with root package name */
    public float f2310f = 1.0f;

    /* renamed from: x, reason: collision with root package name */
    public int f2322x = 255;

    /* renamed from: y, reason: collision with root package name */
    public Rect f2323y = f2298B;

    /* renamed from: z, reason: collision with root package name */
    public final Camera f2324z = new Camera();

    /* renamed from: A, reason: collision with root package name */
    public final Matrix f2307A = new Matrix();

    static {
        new k("translateX");
        new l("translateY");
        f2302F = new m("translateXPercentage");
        f2303G = new n("translateYPercentage");
        new o("scaleX");
        f2304H = new p("scaleY");
        f2305I = new f("scale");
        f2306J = new g("alpha");
    }

    public Rect clipSquare(Rect rect) {
        int min = Math.min(rect.width(), rect.height());
        int centerX = rect.centerX();
        int centerY = rect.centerY();
        int i2 = min / 2;
        return new Rect(centerX - i2, centerY - i2, centerX + i2, centerY + i2);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int translateX = getTranslateX();
        if (translateX == 0) {
            translateX = (int) (getTranslateXPercentage() * getBounds().width());
        }
        int translateY = getTranslateY();
        if (translateY == 0) {
            translateY = (int) (getTranslateYPercentage() * getBounds().height());
        }
        canvas.translate(translateX, translateY);
        canvas.scale(getScaleX(), getScaleY(), getPivotX(), getPivotY());
        canvas.rotate(getRotate(), getPivotX(), getPivotY());
        if (getRotateX() != 0 || getRotateY() != 0) {
            Camera camera = this.f2324z;
            camera.save();
            camera.rotateX(getRotateX());
            camera.rotateY(getRotateY());
            Matrix matrix = this.f2307A;
            camera.getMatrix(matrix);
            matrix.preTranslate(-getPivotX(), -getPivotY());
            matrix.postTranslate(getPivotX(), getPivotY());
            camera.restore();
            canvas.concat(matrix);
        }
        drawSelf(canvas);
    }

    public abstract void drawSelf(Canvas canvas);

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f2322x;
    }

    public abstract int getColor();

    public Rect getDrawBounds() {
        return this.f2323y;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public float getPivotX() {
        return this.f2311j;
    }

    public float getPivotY() {
        return this.f2312m;
    }

    public int getRotate() {
        return this.f2318t;
    }

    public int getRotateX() {
        return this.f2314p;
    }

    public int getRotateY() {
        return this.f2315q;
    }

    public float getScale() {
        return this.f2308b;
    }

    public float getScaleX() {
        return this.f2309e;
    }

    public float getScaleY() {
        return this.f2310f;
    }

    public int getTranslateX() {
        return this.f2316r;
    }

    public float getTranslateXPercentage() {
        return this.f2319u;
    }

    public int getTranslateY() {
        return this.f2317s;
    }

    public float getTranslateYPercentage() {
        return this.f2320v;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return L2.a.isRunning(this.f2321w);
    }

    public ValueAnimator obtainAnimation() {
        if (this.f2321w == null) {
            this.f2321w = onCreateAnimation();
        }
        ValueAnimator valueAnimator = this.f2321w;
        if (valueAnimator != null) {
            valueAnimator.addUpdateListener(this);
            this.f2321w.setStartDelay(this.f2313n);
        }
        return this.f2321w;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        setDrawBounds(rect);
    }

    public abstract ValueAnimator onCreateAnimation();

    public void reset() {
        this.f2308b = 1.0f;
        this.f2314p = 0;
        this.f2315q = 0;
        this.f2316r = 0;
        this.f2317s = 0;
        this.f2318t = 0;
        this.f2319u = 0.0f;
        this.f2320v = 0.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f2322x = i2;
    }

    public q setAnimationDelay(int i2) {
        this.f2313n = i2;
        return this;
    }

    public abstract void setColor(int i2);

    public void setDrawBounds(Rect rect) {
        setDrawBounds(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void setPivotX(float f3) {
        this.f2311j = f3;
    }

    public void setPivotY(float f3) {
        this.f2312m = f3;
    }

    public void setRotate(int i2) {
        this.f2318t = i2;
    }

    public void setRotateX(int i2) {
        this.f2314p = i2;
    }

    public void setRotateY(int i2) {
        this.f2315q = i2;
    }

    public void setScale(float f3) {
        this.f2308b = f3;
        setScaleX(f3);
        setScaleY(f3);
    }

    public void setScaleX(float f3) {
        this.f2309e = f3;
    }

    public void setScaleY(float f3) {
        this.f2310f = f3;
    }

    public void setTranslateX(int i2) {
        this.f2316r = i2;
    }

    public void setTranslateXPercentage(float f3) {
        this.f2319u = f3;
    }

    public void setTranslateY(int i2) {
        this.f2317s = i2;
    }

    public void setTranslateYPercentage(float f3) {
        this.f2320v = f3;
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (L2.a.isStarted(this.f2321w)) {
            return;
        }
        ValueAnimator obtainAnimation = obtainAnimation();
        this.f2321w = obtainAnimation;
        if (obtainAnimation == null) {
            return;
        }
        L2.a.start(obtainAnimation);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (L2.a.isStarted(this.f2321w)) {
            this.f2321w.removeAllUpdateListeners();
            this.f2321w.end();
            reset();
        }
    }

    public void setDrawBounds(int i2, int i7, int i8, int i9) {
        this.f2323y = new Rect(i2, i7, i8, i9);
        setPivotX(getDrawBounds().centerX());
        setPivotY(getDrawBounds().centerY());
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j7) {
    }
}
