package flix.com.vision.helpers;

import T4.g;
import T4.h;
import T4.i;
import U4.m;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.WindowManager;
import android.widget.FrameLayout;
import cz.msebera.android.httpclient.HttpStatus;

/* loaded from: classes2.dex */
public class CursorLayout extends FrameLayout {

    /* renamed from: w, reason: collision with root package name */
    public static int f16004w = 0;

    /* renamed from: x, reason: collision with root package name */
    public static float f16005x = 0.0f;

    /* renamed from: y, reason: collision with root package name */
    public static float f16006y = 0.0f;

    /* renamed from: z, reason: collision with root package name */
    public static int f16007z = 100;

    /* renamed from: b, reason: collision with root package name */
    public m f16008b;

    /* renamed from: e, reason: collision with root package name */
    public final Point f16009e;

    /* renamed from: f, reason: collision with root package name */
    public final g f16010f;

    /* renamed from: j, reason: collision with root package name */
    public final PointF f16011j;

    /* renamed from: m, reason: collision with root package name */
    public final PointF f16012m;

    /* renamed from: n, reason: collision with root package name */
    public final h f16013n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f16014p;

    /* renamed from: q, reason: collision with root package name */
    public long f16015q;

    /* renamed from: r, reason: collision with root package name */
    public final Paint f16016r;

    /* renamed from: s, reason: collision with root package name */
    public final PointF f16017s;

    /* renamed from: t, reason: collision with root package name */
    public int f16018t;

    /* renamed from: u, reason: collision with root package name */
    public int f16019u;

    /* renamed from: v, reason: collision with root package name */
    public int f16020v;

    public CursorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f16009e = new Point(0, 0);
        this.f16010f = new g(this);
        this.f16011j = new PointF(0.0f, 0.0f);
        this.f16012m = new PointF(0.0f, 0.0f);
        this.f16013n = new h(this);
        this.f16014p = false;
        this.f16015q = System.currentTimeMillis();
        Paint paint = new Paint();
        this.f16016r = paint;
        this.f16017s = new PointF();
        this.f16018t = 255;
        this.f16019u = 255;
        this.f16020v = 255;
        if (isInEditMode()) {
            return;
        }
        paint.setAntiAlias(true);
        setWillNotDraw(false);
        Context context2 = getContext();
        getContext();
        Display defaultDisplay = ((WindowManager) context2.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        int i2 = point.x;
        f16005x = i2 / HttpStatus.SC_BAD_REQUEST;
        f16004w = i2 / 80;
        f16006y = i2 / 25;
        f16007z = i2 / 15;
    }

    public final void a(KeyEvent keyEvent, int i2, int i7, boolean z6) {
        this.f16015q = System.currentTimeMillis();
        if (!z6) {
            getKeyDispatcherState().handleUpEvent(keyEvent);
            this.f16012m.set(0.0f, 0.0f);
        } else {
            if (getKeyDispatcherState().isTracking(keyEvent)) {
                return;
            }
            Handler handler = getHandler();
            h hVar = this.f16013n;
            handler.removeCallbacks(hVar);
            handler.post(hVar);
            getKeyDispatcherState().startTracking(keyEvent, this);
        }
        Point point = this.f16009e;
        if (i2 == -100) {
            i2 = point.x;
        }
        if (i7 == -100) {
            i7 = point.y;
        }
        point.set(i2, i7);
    }

    public float bound(float f3, float f7) {
        if (f3 > f7) {
            return f7;
        }
        float f8 = -f7;
        return f3 < f8 ? f8 : f3;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (isInEditMode() || System.currentTimeMillis() - this.f16015q > 5000) {
            return;
        }
        PointF pointF = this.f16011j;
        float f3 = pointF.x;
        float f7 = pointF.y;
        Paint paint = this.f16016r;
        paint.setColor(Color.argb(128, this.f16018t, this.f16019u, this.f16020v));
        paint.setStyle(Paint.Style.FILL);
        canvas.drawCircle(f3, f7, f16004w, paint);
        paint.setColor(-7829368);
        paint.setStrokeWidth(f16005x);
        paint.setStyle(Paint.Style.STROKE);
        canvas.drawCircle(f3, f7, f16004w, paint);
        m mVar = this.f16008b;
        if (mVar != null) {
            try {
                mVar.infoToggle(true);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x010f  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchKeyEvent(android.view.KeyEvent r10) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: flix.com.vision.helpers.CursorLayout.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    public void dispatchMotionEvent(float f3, float f7, int i2) {
        long uptimeMillis = SystemClock.uptimeMillis();
        long uptimeMillis2 = SystemClock.uptimeMillis();
        MotionEvent.PointerProperties pointerProperties = new MotionEvent.PointerProperties();
        pointerProperties.id = 0;
        pointerProperties.toolType = 1;
        MotionEvent.PointerProperties[] pointerPropertiesArr = {pointerProperties};
        MotionEvent.PointerCoords pointerCoords = new MotionEvent.PointerCoords();
        pointerCoords.x = f3;
        pointerCoords.y = f7;
        pointerCoords.pressure = 1.0f;
        pointerCoords.size = 1.0f;
        dispatchTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis2, i2, 1, pointerPropertiesArr, new MotionEvent.PointerCoords[]{pointerCoords}, 0, 0, 1.0f, 1.0f, 0, 0, 0, 0));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i7, int i8, int i9) {
        super.onSizeChanged(i2, i7, i8, i9);
        if (isInEditMode()) {
            return;
        }
        this.f16011j.set(i2 / 2.0f, i7 / 2.0f);
        if (getHandler() != null) {
            getHandler().postDelayed(this.f16010f, 5000L);
        }
    }

    public void setActivity(m mVar) {
        this.f16008b = mVar;
    }

    public void setCursorColor(int i2, int i7, int i8) {
        this.f16018t = i2;
        this.f16019u = i7;
        this.f16020v = i8;
    }

    public void setCallback(i iVar) {
    }
}
