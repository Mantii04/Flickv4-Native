package m1;

import android.graphics.PointF;
import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public abstract class w0 {

    /* renamed from: b, reason: collision with root package name */
    public RecyclerView f18513b;

    /* renamed from: c, reason: collision with root package name */
    public AbstractC1286i0 f18514c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f18515d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f18516e;

    /* renamed from: f, reason: collision with root package name */
    public View f18517f;

    /* renamed from: h, reason: collision with root package name */
    public boolean f18519h;

    /* renamed from: a, reason: collision with root package name */
    public int f18512a = -1;

    /* renamed from: g, reason: collision with root package name */
    public final u0 f18518g = new u0(0, 0);

    public final void a(int i2, int i7) {
        PointF computeScrollVectorForPosition;
        RecyclerView recyclerView = this.f18513b;
        if (this.f18512a == -1 || recyclerView == null) {
            stop();
        }
        if (this.f18515d && this.f18517f == null && this.f18514c != null && (computeScrollVectorForPosition = computeScrollVectorForPosition(this.f18512a)) != null) {
            float f3 = computeScrollVectorForPosition.x;
            if (f3 != 0.0f || computeScrollVectorForPosition.y != 0.0f) {
                recyclerView.X((int) Math.signum(f3), (int) Math.signum(computeScrollVectorForPosition.y), null);
            }
        }
        this.f18515d = false;
        View view = this.f18517f;
        u0 u0Var = this.f18518g;
        if (view != null) {
            if (getChildPosition(view) == this.f18512a) {
                onTargetFound(this.f18517f, recyclerView.f8064q0, u0Var);
                u0Var.a(recyclerView);
                stop();
            } else {
                Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                this.f18517f = null;
            }
        }
        if (this.f18516e) {
            onSeekTargetStep(i2, i7, recyclerView.f8064q0, u0Var);
            boolean z6 = u0Var.f18504d >= 0;
            u0Var.a(recyclerView);
            if (z6 && this.f18516e) {
                this.f18515d = true;
                recyclerView.f8059n0.a();
            }
        }
    }

    public PointF computeScrollVectorForPosition(int i2) {
        Object layoutManager = getLayoutManager();
        if (layoutManager instanceof v0) {
            return ((v0) layoutManager).computeScrollVectorForPosition(i2);
        }
        Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + v0.class.getCanonicalName());
        return null;
    }

    public View findViewByPosition(int i2) {
        return this.f18513b.f8075w.findViewByPosition(i2);
    }

    public int getChildCount() {
        return this.f18513b.f8075w.getChildCount();
    }

    public int getChildPosition(View view) {
        return this.f18513b.getChildLayoutPosition(view);
    }

    public AbstractC1286i0 getLayoutManager() {
        return this.f18514c;
    }

    public int getTargetPosition() {
        return this.f18512a;
    }

    public boolean isPendingInitialRun() {
        return this.f18515d;
    }

    public boolean isRunning() {
        return this.f18516e;
    }

    public void normalize(PointF pointF) {
        float f3 = pointF.x;
        float f7 = pointF.y;
        float sqrt = (float) Math.sqrt((f7 * f7) + (f3 * f3));
        pointF.x /= sqrt;
        pointF.y /= sqrt;
    }

    public void onChildAttachedToWindow(View view) {
        if (getChildPosition(view) == getTargetPosition()) {
            this.f18517f = view;
            if (RecyclerView.f7999K0) {
                Log.d("RecyclerView", "smooth scroll target view has been attached");
            }
        }
    }

    public abstract void onSeekTargetStep(int i2, int i7, x0 x0Var, u0 u0Var);

    public abstract void onStart();

    public abstract void onStop();

    public abstract void onTargetFound(View view, x0 x0Var, u0 u0Var);

    public void setTargetPosition(int i2) {
        this.f18512a = i2;
    }

    public final void stop() {
        if (this.f18516e) {
            this.f18516e = false;
            onStop();
            this.f18513b.f8064q0.f18525a = -1;
            this.f18517f = null;
            this.f18512a = -1;
            this.f18515d = false;
            AbstractC1286i0 abstractC1286i0 = this.f18514c;
            if (abstractC1286i0.f18392e == this) {
                abstractC1286i0.f18392e = null;
            }
            this.f18514c = null;
            this.f18513b = null;
        }
    }
}
