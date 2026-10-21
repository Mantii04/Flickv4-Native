package M;

import android.view.View;
import android.view.ViewParent;

/* loaded from: classes.dex */
public final class H {

    /* renamed from: a, reason: collision with root package name */
    public ViewParent f1928a;

    /* renamed from: b, reason: collision with root package name */
    public ViewParent f1929b;

    /* renamed from: c, reason: collision with root package name */
    public final View f1930c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1931d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f1932e;

    public H(View view) {
        this.f1930c = view;
    }

    public final boolean a(int i2, int i7, int i8, int i9, int[] iArr, int i10, int[] iArr2) {
        ViewParent b7;
        int i11;
        int i12;
        int[] iArr3;
        if (isNestedScrollingEnabled() && (b7 = b(i10)) != null) {
            if (i2 != 0 || i7 != 0 || i8 != 0 || i9 != 0) {
                View view = this.f1930c;
                if (iArr != null) {
                    view.getLocationInWindow(iArr);
                    i11 = iArr[0];
                    i12 = iArr[1];
                } else {
                    i11 = 0;
                    i12 = 0;
                }
                if (iArr2 == null) {
                    if (this.f1932e == null) {
                        this.f1932e = new int[2];
                    }
                    int[] iArr4 = this.f1932e;
                    iArr4[0] = 0;
                    iArr4[1] = 0;
                    iArr3 = iArr4;
                } else {
                    iArr3 = iArr2;
                }
                AbstractC0200z0.onNestedScroll(b7, this.f1930c, i2, i7, i8, i9, i10, iArr3);
                if (iArr != null) {
                    view.getLocationInWindow(iArr);
                    iArr[0] = iArr[0] - i11;
                    iArr[1] = iArr[1] - i12;
                }
                return true;
            }
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
                return false;
            }
        }
        return false;
    }

    public final ViewParent b(int i2) {
        if (i2 == 0) {
            return this.f1928a;
        }
        if (i2 != 1) {
            return null;
        }
        return this.f1929b;
    }

    public boolean dispatchNestedFling(float f3, float f7, boolean z6) {
        ViewParent b7;
        if (!isNestedScrollingEnabled() || (b7 = b(0)) == null) {
            return false;
        }
        return AbstractC0200z0.onNestedFling(b7, this.f1930c, f3, f7, z6);
    }

    public boolean dispatchNestedPreFling(float f3, float f7) {
        ViewParent b7;
        if (!isNestedScrollingEnabled() || (b7 = b(0)) == null) {
            return false;
        }
        return AbstractC0200z0.onNestedPreFling(b7, this.f1930c, f3, f7);
    }

    public boolean dispatchNestedPreScroll(int i2, int i7, int[] iArr, int[] iArr2) {
        return dispatchNestedPreScroll(i2, i7, iArr, iArr2, 0);
    }

    public boolean dispatchNestedScroll(int i2, int i7, int i8, int i9, int[] iArr) {
        return a(i2, i7, i8, i9, iArr, 0, null);
    }

    public boolean hasNestedScrollingParent() {
        return hasNestedScrollingParent(0);
    }

    public boolean isNestedScrollingEnabled() {
        return this.f1931d;
    }

    public void setNestedScrollingEnabled(boolean z6) {
        if (this.f1931d) {
            AbstractC0181p0.stopNestedScroll(this.f1930c);
        }
        this.f1931d = z6;
    }

    public boolean startNestedScroll(int i2) {
        return startNestedScroll(i2, 0);
    }

    public void stopNestedScroll() {
        stopNestedScroll(0);
    }

    public boolean dispatchNestedPreScroll(int i2, int i7, int[] iArr, int[] iArr2, int i8) {
        ViewParent b7;
        int i9;
        int i10;
        if (isNestedScrollingEnabled() && (b7 = b(i8)) != null) {
            if (i2 != 0 || i7 != 0) {
                View view = this.f1930c;
                if (iArr2 != null) {
                    view.getLocationInWindow(iArr2);
                    i9 = iArr2[0];
                    i10 = iArr2[1];
                } else {
                    i9 = 0;
                    i10 = 0;
                }
                if (iArr == null) {
                    if (this.f1932e == null) {
                        this.f1932e = new int[2];
                    }
                    iArr = this.f1932e;
                }
                int[] iArr3 = iArr;
                iArr3[0] = 0;
                iArr3[1] = 0;
                AbstractC0200z0.onNestedPreScroll(b7, this.f1930c, i2, i7, iArr3, i8);
                if (iArr2 != null) {
                    view.getLocationInWindow(iArr2);
                    iArr2[0] = iArr2[0] - i9;
                    iArr2[1] = iArr2[1] - i10;
                }
                if (iArr3[0] != 0 || iArr3[1] != 0) {
                    return true;
                }
            } else if (iArr2 != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
                return false;
            }
        }
        return false;
    }

    public void dispatchNestedScroll(int i2, int i7, int i8, int i9, int[] iArr, int i10, int[] iArr2) {
        a(i2, i7, i8, i9, iArr, i10, iArr2);
    }

    public boolean hasNestedScrollingParent(int i2) {
        return b(i2) != null;
    }

    public boolean startNestedScroll(int i2, int i7) {
        if (hasNestedScrollingParent(i7)) {
            return true;
        }
        if (!isNestedScrollingEnabled()) {
            return false;
        }
        View view = this.f1930c;
        View view2 = view;
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (AbstractC0200z0.onStartNestedScroll(parent, view2, view, i2, i7)) {
                if (i7 == 0) {
                    this.f1928a = parent;
                } else if (i7 == 1) {
                    this.f1929b = parent;
                }
                AbstractC0200z0.onNestedScrollAccepted(parent, view2, view, i2, i7);
                return true;
            }
            if (parent instanceof View) {
                view2 = parent;
            }
        }
        return false;
    }

    public void stopNestedScroll(int i2) {
        ViewParent b7 = b(i2);
        if (b7 != null) {
            AbstractC0200z0.onStopNestedScroll(b7, this.f1930c, i2);
            if (i2 == 0) {
                this.f1928a = null;
            } else {
                if (i2 != 1) {
                    return;
                }
                this.f1929b = null;
            }
        }
    }
}
