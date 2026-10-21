package M;

import android.os.Build;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class W {

    /* renamed from: a, reason: collision with root package name */
    public static final Map f1986a = Collections.synchronizedMap(new WeakHashMap());

    public static void addMovement(VelocityTracker velocityTracker, MotionEvent motionEvent) {
        velocityTracker.addMovement(motionEvent);
        if (Build.VERSION.SDK_INT < 34 && motionEvent.getSource() == 4194304) {
            Map map = f1986a;
            if (!map.containsKey(velocityTracker)) {
                map.put(velocityTracker, new X());
            }
            X x6 = (X) map.get(velocityTracker);
            x6.getClass();
            long eventTime = motionEvent.getEventTime();
            int i2 = x6.f1991d;
            long[] jArr = x6.f1989b;
            if (i2 != 0 && eventTime - jArr[x6.f1992e] > 40) {
                x6.f1991d = 0;
                x6.f1990c = 0.0f;
            }
            int i7 = (x6.f1992e + 1) % 20;
            x6.f1992e = i7;
            int i8 = x6.f1991d;
            if (i8 != 20) {
                x6.f1991d = i8 + 1;
            }
            x6.f1988a[i7] = motionEvent.getAxisValue(26);
            jArr[x6.f1992e] = eventTime;
        }
    }

    public static void computeCurrentVelocity(VelocityTracker velocityTracker, int i2, float f3) {
        long j7;
        float f7;
        int i7;
        velocityTracker.computeCurrentVelocity(i2, f3);
        X x6 = (X) f1986a.get(velocityTracker);
        if (x6 != null) {
            int i8 = x6.f1991d;
            float f8 = 0.0f;
            if (i8 >= 2) {
                int i9 = x6.f1992e;
                int i10 = ((i9 + 20) - (i8 - 1)) % 20;
                long[] jArr = x6.f1989b;
                long j8 = jArr[i9];
                while (true) {
                    j7 = jArr[i10];
                    if (j8 - j7 <= 100) {
                        break;
                    }
                    x6.f1991d--;
                    i10 = (i10 + 1) % 20;
                }
                int i11 = x6.f1991d;
                if (i11 >= 2) {
                    float[] fArr = x6.f1988a;
                    if (i11 == 2) {
                        int i12 = (i10 + 1) % 20;
                        if (j7 != jArr[i12]) {
                            f8 = fArr[i12] / (r3 - j7);
                        }
                    } else {
                        int i13 = 0;
                        float f9 = 0.0f;
                        int i14 = 0;
                        while (true) {
                            if (i13 >= x6.f1991d - 1) {
                                break;
                            }
                            int i15 = i13 + i10;
                            long j9 = jArr[i15 % 20];
                            int i16 = (i15 + 1) % 20;
                            if (jArr[i16] == j9) {
                                f7 = f8;
                                i7 = i13;
                            } else {
                                i14++;
                                f7 = f8;
                                i7 = i13;
                                float sqrt = (f9 < f8 ? -1.0f : 1.0f) * ((float) Math.sqrt(Math.abs(f9) * 2.0f));
                                float f10 = fArr[i16] / (jArr[i16] - j9);
                                f9 += Math.abs(f10) * (f10 - sqrt);
                                if (i14 == 1) {
                                    f9 *= 0.5f;
                                }
                            }
                            i13 = i7 + 1;
                            f8 = f7;
                        }
                        f8 = (f9 < f8 ? -1.0f : 1.0f) * ((float) Math.sqrt(Math.abs(f9) * 2.0f));
                    }
                }
            }
            float f11 = f8 * i2;
            x6.f1990c = f11;
            if (f11 < (-Math.abs(f3))) {
                x6.f1990c = -Math.abs(f3);
            } else if (x6.f1990c > Math.abs(f3)) {
                x6.f1990c = Math.abs(f3);
            }
        }
    }

    public static float getAxisVelocity(VelocityTracker velocityTracker, int i2) {
        if (Build.VERSION.SDK_INT >= 34) {
            return V.a(velocityTracker, i2);
        }
        if (i2 == 0) {
            return velocityTracker.getXVelocity();
        }
        if (i2 == 1) {
            return velocityTracker.getYVelocity();
        }
        X x6 = (X) f1986a.get(velocityTracker);
        if (x6 == null || i2 != 26) {
            return 0.0f;
        }
        return x6.f1990c;
    }

    public static void computeCurrentVelocity(VelocityTracker velocityTracker, int i2) {
        computeCurrentVelocity(velocityTracker, i2, Float.MAX_VALUE);
    }
}
