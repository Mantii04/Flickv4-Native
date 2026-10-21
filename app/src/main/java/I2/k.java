package I2;

import M.F;
import android.animation.ArgbEvaluator;
import android.content.res.Resources;
import android.graphics.Paint;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationSet;
import android.view.animation.OvershootInterpolator;
import com.devpaul.materialfabmenu.R;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: q, reason: collision with root package name */
    public static final OvershootInterpolator f1297q = new OvershootInterpolator();

    /* renamed from: a, reason: collision with root package name */
    public final View f1298a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f1299b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1300c;

    /* renamed from: d, reason: collision with root package name */
    public int f1301d;

    /* renamed from: e, reason: collision with root package name */
    public int f1302e;

    /* renamed from: f, reason: collision with root package name */
    public int f1303f;

    /* renamed from: g, reason: collision with root package name */
    public int f1304g;

    /* renamed from: h, reason: collision with root package name */
    public final ArgbEvaluator f1305h;

    /* renamed from: i, reason: collision with root package name */
    public float f1306i;

    /* renamed from: j, reason: collision with root package name */
    public float f1307j;

    /* renamed from: k, reason: collision with root package name */
    public float f1308k;

    /* renamed from: l, reason: collision with root package name */
    public float f1309l;

    /* renamed from: m, reason: collision with root package name */
    public float f1310m;

    /* renamed from: n, reason: collision with root package name */
    public float f1311n;

    /* renamed from: o, reason: collision with root package name */
    public float f1312o;

    /* renamed from: p, reason: collision with root package name */
    public final AnimationSet f1313p;

    static {
        new AccelerateDecelerateInterpolator();
    }

    public k(View view, Paint paint) {
        g gVar = new g(this);
        this.f1298a = view;
        this.f1299b = paint;
        Resources resources = view.getResources();
        view.setLayerType(1, paint);
        AnimationSet animationSet = new AnimationSet(true);
        this.f1313p = animationSet;
        animationSet.setInterpolator(f1297q);
        this.f1305h = new ArgbEvaluator();
        float dimension = resources.getDimension(R.dimen.mat_fab_shadow_offset) * 1.5f;
        this.f1309l = dimension;
        this.f1308k = dimension / 1.5f;
        this.f1311n = resources.getDimension(R.dimen.mat_fab_shadow_max_radius);
        this.f1312o = resources.getDimension(R.dimen.mat_fab_shadow_min_radius) / 2.0f;
        this.f1300c = -16777216;
        this.f1301d = a.getNewColorAlpha(-16777216, 0.1f);
        this.f1306i = 0.2f;
        float f3 = this.f1311n;
        float f7 = this.f1312o;
        this.f1307j = b.c.a(f3, f7, 0.2173913f, f7);
        float f8 = this.f1309l;
        float f9 = this.f1308k;
        this.f1310m = b.c.a(f8, f9, 0.2173913f, f9);
        this.f1301d = a.getNewColorAlpha(this.f1300c, 0.4652174f);
        view.addOnAttachStateChangeListener(gVar);
    }

    public final void a(float f3) {
        if (f3 == 0.0f) {
            f3 += 0.0f;
        } else if (f3 > 0.92f) {
            f3 = 0.92f;
        }
        this.f1306i = f3;
        float f7 = f3 / 0.92f;
        float f8 = this.f1311n;
        float f9 = this.f1312o;
        this.f1307j = b.c.a(f8, f9, f7, f9);
        float f10 = this.f1309l;
        float f11 = this.f1308k;
        this.f1310m = b.c.a(f10, f11, f7, f11);
        this.f1301d = a.getNewColorAlpha(this.f1300c, (0.3f * f7) + 0.4f);
    }

    public void onDraw(Paint paint) {
        float f3 = this.f1307j;
        float f7 = this.f1310m;
        int i2 = this.f1301d;
        Paint paint2 = this.f1299b;
        paint2.setShadowLayer(f3, 0.0f, f7, i2);
        paint2.setColor(this.f1304g);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = F.getActionMasked(motionEvent);
        View view = this.f1298a;
        AnimationSet animationSet = this.f1313p;
        if (actionMasked == 0) {
            m mVar = new m(new h(this));
            animationSet.cancel();
            animationSet.getAnimations().clear();
            animationSet.addAnimation(mVar);
            view.startAnimation(animationSet);
            return true;
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return false;
        }
        m mVar2 = new m(new i(this));
        mVar2.setAnimationListener(new j(this));
        animationSet.cancel();
        animationSet.getAnimations().clear();
        animationSet.addAnimation(mVar2);
        view.startAnimation(animationSet);
        return true;
    }

    public void setAnimationDuration(long j7) {
        this.f1313p.setDuration(j7);
    }

    public void setNormalColor(int i2) {
        this.f1302e = i2;
        this.f1304g = i2;
    }

    public void setPressedColor(int i2) {
        this.f1303f = i2;
    }

    public void setShadowLimits(float f3, float f7, float f8, float f9) {
        this.f1308k = f3;
        this.f1310m = f3;
        this.f1311n = f9;
        this.f1312o = f8;
        this.f1309l = f7;
        a(0.2f);
        this.f1298a.invalidate();
    }
}
