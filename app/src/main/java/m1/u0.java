package m1;

import android.util.Log;
import android.view.animation.Interpolator;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class u0 {

    /* renamed from: a, reason: collision with root package name */
    public int f18501a;

    /* renamed from: b, reason: collision with root package name */
    public int f18502b;

    /* renamed from: c, reason: collision with root package name */
    public int f18503c;

    /* renamed from: d, reason: collision with root package name */
    public int f18504d;

    /* renamed from: e, reason: collision with root package name */
    public Interpolator f18505e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f18506f;

    /* renamed from: g, reason: collision with root package name */
    public int f18507g;

    public u0(int i2, int i7) {
        this(i2, i7, Integer.MIN_VALUE, null);
    }

    public final void a(RecyclerView recyclerView) {
        int i2 = this.f18504d;
        if (i2 >= 0) {
            this.f18504d = -1;
            recyclerView.I(i2);
            this.f18506f = false;
            return;
        }
        if (!this.f18506f) {
            this.f18507g = 0;
            return;
        }
        Interpolator interpolator = this.f18505e;
        if (interpolator != null && this.f18503c < 1) {
            throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
        }
        int i7 = this.f18503c;
        if (i7 < 1) {
            throw new IllegalStateException("Scroll duration must be a positive number");
        }
        recyclerView.f8059n0.smoothScrollBy(this.f18501a, this.f18502b, i7, interpolator);
        int i8 = this.f18507g + 1;
        this.f18507g = i8;
        if (i8 > 10) {
            Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
        }
        this.f18506f = false;
    }

    public void jumpTo(int i2) {
        this.f18504d = i2;
    }

    public void update(int i2, int i7, int i8, Interpolator interpolator) {
        this.f18501a = i2;
        this.f18502b = i7;
        this.f18503c = i8;
        this.f18505e = interpolator;
        this.f18506f = true;
    }

    public u0(int i2, int i7, int i8, Interpolator interpolator) {
        this.f18504d = -1;
        this.f18506f = false;
        this.f18507g = 0;
        this.f18501a = i2;
        this.f18502b = i7;
        this.f18503c = i8;
        this.f18505e = interpolator;
    }
}
