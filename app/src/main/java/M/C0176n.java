package M;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import androidx.media3.common.util.Log;

/* renamed from: M.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0176n {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2049a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0178o f2050b;

    /* renamed from: c, reason: collision with root package name */
    public final J0.g f2051c;

    /* renamed from: d, reason: collision with root package name */
    public final J0.g f2052d;

    /* renamed from: e, reason: collision with root package name */
    public VelocityTracker f2053e;

    /* renamed from: f, reason: collision with root package name */
    public float f2054f;

    /* renamed from: g, reason: collision with root package name */
    public int f2055g;

    /* renamed from: h, reason: collision with root package name */
    public int f2056h;

    /* renamed from: i, reason: collision with root package name */
    public int f2057i;

    /* renamed from: j, reason: collision with root package name */
    public final int[] f2058j;

    public C0176n(Context context, InterfaceC0178o interfaceC0178o) {
        J0.g gVar = new J0.g(2);
        J0.g gVar2 = new J0.g(3);
        this.f2055g = -1;
        this.f2056h = -1;
        this.f2057i = -1;
        this.f2058j = new int[]{Log.LOG_LEVEL_OFF, 0};
        this.f2049a = context;
        this.f2050b = interfaceC0178o;
        this.f2051c = gVar;
        this.f2052d = gVar2;
    }

    public void onMotionEvent(MotionEvent motionEvent, int i2) {
        boolean z6;
        int source = motionEvent.getSource();
        int deviceId = motionEvent.getDeviceId();
        int i7 = this.f2056h;
        int[] iArr = this.f2058j;
        if (i7 == source && this.f2057i == deviceId && this.f2055g == i2) {
            z6 = false;
        } else {
            J0.g gVar = this.f2051c;
            Context context = this.f2049a;
            gVar.getClass();
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            iArr[0] = AbstractC0188t0.getScaledMinimumFlingVelocity(context, viewConfiguration, motionEvent.getDeviceId(), i2, motionEvent.getSource());
            iArr[1] = AbstractC0188t0.getScaledMaximumFlingVelocity(context, viewConfiguration, motionEvent.getDeviceId(), i2, motionEvent.getSource());
            this.f2056h = source;
            this.f2057i = deviceId;
            this.f2055g = i2;
            z6 = true;
        }
        if (iArr[0] == Integer.MAX_VALUE) {
            VelocityTracker velocityTracker = this.f2053e;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f2053e = null;
                return;
            }
            return;
        }
        if (this.f2053e == null) {
            this.f2053e = VelocityTracker.obtain();
        }
        VelocityTracker velocityTracker2 = this.f2053e;
        this.f2052d.getClass();
        W.addMovement(velocityTracker2, motionEvent);
        W.computeCurrentVelocity(velocityTracker2, 1000);
        float axisVelocity = W.getAxisVelocity(velocityTracker2, i2);
        S.q qVar = (S.q) this.f2050b;
        float scaledScrollFactor = qVar.getScaledScrollFactor() * axisVelocity;
        float signum = Math.signum(scaledScrollFactor);
        if (z6 || (signum != Math.signum(this.f2054f) && signum != 0.0f)) {
            qVar.stopDifferentialMotionFling();
        }
        if (Math.abs(scaledScrollFactor) < iArr[0]) {
            return;
        }
        float max = Math.max(-r10, Math.min(scaledScrollFactor, iArr[1]));
        this.f2054f = qVar.startDifferentialMotionFling(max) ? max : 0.0f;
    }
}
