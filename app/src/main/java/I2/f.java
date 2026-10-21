package I2;

import M.F;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationSet;
import android.view.animation.OvershootInterpolator;
import com.devpaul.materialfabmenu.R;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: z, reason: collision with root package name */
    public static final OvershootInterpolator f1267z = new OvershootInterpolator();

    /* renamed from: a, reason: collision with root package name */
    public final View f1268a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f1269b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1270c;

    /* renamed from: d, reason: collision with root package name */
    public int f1271d;

    /* renamed from: e, reason: collision with root package name */
    public int f1272e;

    /* renamed from: f, reason: collision with root package name */
    public int f1273f;

    /* renamed from: g, reason: collision with root package name */
    public int f1274g;

    /* renamed from: h, reason: collision with root package name */
    public float f1275h;

    /* renamed from: i, reason: collision with root package name */
    public float f1276i;

    /* renamed from: j, reason: collision with root package name */
    public final float f1277j;

    /* renamed from: k, reason: collision with root package name */
    public final float f1278k;

    /* renamed from: l, reason: collision with root package name */
    public float f1279l;

    /* renamed from: m, reason: collision with root package name */
    public final float f1280m;

    /* renamed from: n, reason: collision with root package name */
    public final float f1281n;

    /* renamed from: o, reason: collision with root package name */
    public float f1282o;

    /* renamed from: p, reason: collision with root package name */
    public float f1283p;

    /* renamed from: q, reason: collision with root package name */
    public float f1284q;

    /* renamed from: r, reason: collision with root package name */
    public float f1285r;

    /* renamed from: s, reason: collision with root package name */
    public float f1286s;

    /* renamed from: t, reason: collision with root package name */
    public float f1287t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f1288u;

    /* renamed from: v, reason: collision with root package name */
    public final AnimationSet f1289v;

    /* renamed from: w, reason: collision with root package name */
    public final Paint f1290w = new Paint(1);

    /* renamed from: x, reason: collision with root package name */
    public final Path f1291x = new Path();

    /* renamed from: y, reason: collision with root package name */
    public RectF f1292y;

    static {
        new AccelerateDecelerateInterpolator();
    }

    public f(View view, Paint paint) {
        this.f1268a = view;
        this.f1269b = paint;
        Resources resources = view.getResources();
        view.setLayerType(1, paint);
        AnimationSet animationSet = new AnimationSet(true);
        this.f1289v = animationSet;
        animationSet.setInterpolator(f1267z);
        float dimension = resources.getDimension(R.dimen.mat_fab_shadow_offset) * 1.5f;
        this.f1278k = dimension;
        float f3 = dimension / 1.5f;
        this.f1277j = f3;
        float dimension2 = resources.getDimension(R.dimen.mat_fab_shadow_max_radius);
        this.f1280m = dimension2;
        float dimension3 = resources.getDimension(R.dimen.mat_fab_shadow_min_radius) / 2.0f;
        this.f1281n = dimension3;
        this.f1270c = -16777216;
        this.f1271d = a.getNewColorAlpha(-16777216, 0.1f);
        this.f1275h = 0.2f;
        this.f1276i = b.c.a(dimension2, dimension3, 0.2173913f, dimension3);
        this.f1279l = b.c.a(dimension, f3, 0.2173913f, f3);
        this.f1271d = a.getNewColorAlpha(this.f1270c, 0.4652174f);
        view.addOnAttachStateChangeListener(new b(this));
        this.f1273f = 100;
        this.f1283p = 0.0f;
        this.f1292y = new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        this.f1288u = false;
        this.f1287t = 0.0f;
    }

    public static void a(f fVar, float f3) {
        if (f3 == 0.0f) {
            f3 += 0.0f;
        } else if (f3 > 0.92f) {
            f3 = 0.92f;
        }
        fVar.f1275h = f3;
        float f7 = f3 / 0.92f;
        float f8 = fVar.f1280m;
        float f9 = fVar.f1281n;
        fVar.f1276i = b.c.a(f8, f9, f7, f9);
        float f10 = fVar.f1278k;
        float f11 = fVar.f1277j;
        fVar.f1279l = b.c.a(f10, f11, f7, f11);
        fVar.f1271d = a.getNewColorAlpha(fVar.f1270c, (0.3f * f7) + 0.4f);
    }

    public void onDrawRipple(Canvas canvas) {
        if (this.f1288u) {
            Path path = this.f1291x;
            path.reset();
            RectF rectF = this.f1292y;
            float f3 = this.f1282o;
            path.addRoundRect(rectF, f3, f3, Path.Direction.CW);
            canvas.clipPath(path);
            canvas.drawCircle(this.f1285r, this.f1286s, this.f1283p, this.f1290w);
        }
    }

    public void onDrawShadow(Paint paint) {
        this.f1269b.setShadowLayer(this.f1276i, 0.0f, this.f1279l, this.f1271d);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = F.getActionMasked(motionEvent);
        View view = this.f1268a;
        AnimationSet animationSet = this.f1289v;
        if (actionMasked != 0) {
            if (actionMasked != 1 && actionMasked != 3) {
                return false;
            }
            m mVar = new m(new d(this));
            mVar.setAnimationListener(new e(this));
            animationSet.cancel();
            animationSet.getAnimations().clear();
            animationSet.addAnimation(mVar);
            view.startAnimation(animationSet);
            return true;
        }
        this.f1285r = motionEvent.getX();
        float y6 = motionEvent.getY();
        this.f1286s = y6;
        this.f1288u = this.f1292y.contains(this.f1285r, y6);
        this.f1273f = 100;
        int newColorAlpha = a.getNewColorAlpha(this.f1274g, 100);
        this.f1272e = newColorAlpha;
        this.f1290w.setColor(newColorAlpha);
        m mVar2 = new m(new c(this));
        animationSet.cancel();
        animationSet.getAnimations().clear();
        animationSet.addAnimation(mVar2);
        view.startAnimation(animationSet);
        return true;
    }

    public void setAnimationDuration(long j7) {
        this.f1289v.setDuration(j7);
    }

    public void setBoundingRect(RectF rectF) {
        this.f1292y = rectF;
    }

    public void setClipRadius(float f3) {
        this.f1282o = f3;
    }

    public void setMaxRippleRadius(float f3) {
        this.f1284q = f3;
        this.f1287t = f3 * 2.1f;
    }

    public void setRippleColor(int i2) {
        this.f1272e = a.getNewColorAlpha(i2, this.f1273f);
        this.f1274g = i2;
        this.f1290w.setColor(i2);
    }
}
