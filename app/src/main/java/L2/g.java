package L2;

import N2.q;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.util.Log;
import android.view.animation.Interpolator;
import androidx.media3.exoplayer.ExoPlayer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final q f1905a;

    /* renamed from: b, reason: collision with root package name */
    public Interpolator f1906b;

    /* renamed from: c, reason: collision with root package name */
    public long f1907c = ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS;

    /* renamed from: d, reason: collision with root package name */
    public int f1908d = 0;

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f1909e = new HashMap();

    public g(q qVar) {
        this.f1905a = qVar;
    }

    public final void a(float[] fArr, b bVar, Float[] fArr2) {
        int length = fArr.length;
        int length2 = fArr2.length;
        if (length != length2) {
            throw new IllegalStateException(String.format(Locale.getDefault(), "The fractions.length must equal values.length, fraction.length[%d], values.length[%d]", Integer.valueOf(length), Integer.valueOf(length2)));
        }
        this.f1909e.put(bVar.getName(), new d(this, fArr, bVar, fArr2));
    }

    public g alpha(float[] fArr, Integer... numArr) {
        b(fArr, q.f2306J, numArr);
        return this;
    }

    public final void b(float[] fArr, c cVar, Integer[] numArr) {
        int length = fArr.length;
        int length2 = numArr.length;
        if (length != length2) {
            throw new IllegalStateException(String.format(Locale.getDefault(), "The fractions.length must equal values.length, fraction.length[%d], values.length[%d]", Integer.valueOf(length), Integer.valueOf(length2)));
        }
        this.f1909e.put(cVar.getName(), new f(this, fArr, cVar, numArr));
    }

    public ObjectAnimator build() {
        HashMap hashMap = this.f1909e;
        PropertyValuesHolder[] propertyValuesHolderArr = new PropertyValuesHolder[hashMap.size()];
        Iterator it = hashMap.entrySet().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            e eVar = (e) ((Map.Entry) it.next()).getValue();
            float[] fArr = eVar.f1902a;
            Keyframe[] keyframeArr = new Keyframe[fArr.length];
            int i7 = this.f1908d;
            float f3 = fArr[i7];
            while (true) {
                int i8 = this.f1908d;
                Object[] objArr = eVar.f1904c;
                if (i7 < objArr.length + i8) {
                    int i9 = i7 - i8;
                    int length = i7 % objArr.length;
                    float f7 = fArr[length] - f3;
                    if (f7 < 0.0f) {
                        f7 += fArr[fArr.length - 1];
                    }
                    if (eVar instanceof f) {
                        keyframeArr[i9] = Keyframe.ofInt(f7, ((Integer) objArr[length]).intValue());
                    } else if (eVar instanceof d) {
                        keyframeArr[i9] = Keyframe.ofFloat(f7, ((Float) objArr[length]).floatValue());
                    } else {
                        keyframeArr[i9] = Keyframe.ofObject(f7, objArr[length]);
                    }
                    i7++;
                }
            }
            propertyValuesHolderArr[i2] = PropertyValuesHolder.ofKeyframe(eVar.f1903b, keyframeArr);
            i2++;
        }
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this.f1905a, propertyValuesHolderArr);
        ofPropertyValuesHolder.setDuration(this.f1907c);
        ofPropertyValuesHolder.setRepeatCount(-1);
        ofPropertyValuesHolder.setInterpolator(this.f1906b);
        return ofPropertyValuesHolder;
    }

    public g duration(long j7) {
        this.f1907c = j7;
        return this;
    }

    public g easeInOut(float... fArr) {
        interpolator(M2.b.easeInOut(fArr));
        return this;
    }

    public g interpolator(Interpolator interpolator) {
        this.f1906b = interpolator;
        return this;
    }

    public g rotate(float[] fArr, Integer... numArr) {
        b(fArr, q.f2300D, numArr);
        return this;
    }

    public g rotateX(float[] fArr, Integer... numArr) {
        b(fArr, q.f2299C, numArr);
        return this;
    }

    public g rotateY(float[] fArr, Integer... numArr) {
        b(fArr, q.f2301E, numArr);
        return this;
    }

    public g scale(float[] fArr, Float... fArr2) {
        a(fArr, q.f2305I, fArr2);
        return this;
    }

    public g scaleY(float[] fArr, Float... fArr2) {
        a(fArr, q.f2304H, fArr2);
        return this;
    }

    public g startFrame(int i2) {
        if (i2 < 0) {
            Log.w("SpriteAnimatorBuilder", "startFrame should always be non-negative");
            i2 = 0;
        }
        this.f1908d = i2;
        return this;
    }

    public g translateXPercentage(float[] fArr, Float... fArr2) {
        a(fArr, q.f2302F, fArr2);
        return this;
    }

    public g translateYPercentage(float[] fArr, Float... fArr2) {
        a(fArr, q.f2303G, fArr2);
        return this;
    }
}
