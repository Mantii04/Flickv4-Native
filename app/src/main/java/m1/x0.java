package m1;

/* loaded from: classes.dex */
public final class x0 {

    /* renamed from: a, reason: collision with root package name */
    public int f18525a = -1;

    /* renamed from: b, reason: collision with root package name */
    public int f18526b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f18527c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f18528d = 1;

    /* renamed from: e, reason: collision with root package name */
    public int f18529e = 0;

    /* renamed from: f, reason: collision with root package name */
    public boolean f18530f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f18531g = false;

    /* renamed from: h, reason: collision with root package name */
    public boolean f18532h = false;

    /* renamed from: i, reason: collision with root package name */
    public boolean f18533i = false;

    /* renamed from: j, reason: collision with root package name */
    public boolean f18534j = false;

    /* renamed from: k, reason: collision with root package name */
    public boolean f18535k = false;

    /* renamed from: l, reason: collision with root package name */
    public int f18536l;

    /* renamed from: m, reason: collision with root package name */
    public long f18537m;

    /* renamed from: n, reason: collision with root package name */
    public int f18538n;

    /* renamed from: o, reason: collision with root package name */
    public int f18539o;

    /* renamed from: p, reason: collision with root package name */
    public int f18540p;

    public final void a(int i2) {
        if ((this.f18528d & i2) != 0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i2) + " but it is " + Integer.toBinaryString(this.f18528d));
    }

    public boolean didStructureChange() {
        return this.f18530f;
    }

    public int getItemCount() {
        return this.f18531g ? this.f18526b - this.f18527c : this.f18529e;
    }

    public int getRemainingScrollHorizontal() {
        return this.f18539o;
    }

    public int getRemainingScrollVertical() {
        return this.f18540p;
    }

    public int getTargetScrollPosition() {
        return this.f18525a;
    }

    public boolean hasTargetScrollPosition() {
        return this.f18525a != -1;
    }

    public boolean isPreLayout() {
        return this.f18531g;
    }

    public String toString() {
        return "State{mTargetPosition=" + this.f18525a + ", mData=null, mItemCount=" + this.f18529e + ", mIsMeasuring=" + this.f18533i + ", mPreviousLayoutItemCount=" + this.f18526b + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f18527c + ", mStructureChanged=" + this.f18530f + ", mInPreLayout=" + this.f18531g + ", mRunSimpleAnimations=" + this.f18534j + ", mRunPredictiveAnimations=" + this.f18535k + '}';
    }

    public boolean willRunPredictiveAnimations() {
        return this.f18535k;
    }
}
