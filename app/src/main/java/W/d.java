package W;

import M.AbstractC0181p0;
import M.C0152b;
import N.n;
import N.q;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.media3.common.util.Log;
import java.util.ArrayList;
import java.util.List;
import p.r;

/* loaded from: classes.dex */
public abstract class d extends C0152b {

    /* renamed from: n, reason: collision with root package name */
    public static final Rect f4033n = new Rect(Log.LOG_LEVEL_OFF, Log.LOG_LEVEL_OFF, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* renamed from: o, reason: collision with root package name */
    public static final a f4034o = new a();

    /* renamed from: p, reason: collision with root package name */
    public static final b f4035p = new b();

    /* renamed from: h, reason: collision with root package name */
    public final AccessibilityManager f4040h;

    /* renamed from: i, reason: collision with root package name */
    public final View f4041i;

    /* renamed from: j, reason: collision with root package name */
    public c f4042j;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f4036d = new Rect();

    /* renamed from: e, reason: collision with root package name */
    public final Rect f4037e = new Rect();

    /* renamed from: f, reason: collision with root package name */
    public final Rect f4038f = new Rect();

    /* renamed from: g, reason: collision with root package name */
    public final int[] f4039g = new int[2];

    /* renamed from: k, reason: collision with root package name */
    public int f4043k = Integer.MIN_VALUE;

    /* renamed from: l, reason: collision with root package name */
    public int f4044l = Integer.MIN_VALUE;

    /* renamed from: m, reason: collision with root package name */
    public int f4045m = Integer.MIN_VALUE;

    public d(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.f4041i = view;
        this.f4040h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        if (AbstractC0181p0.getImportantForAccessibility(view) == 0) {
            AbstractC0181p0.setImportantForAccessibility(view, 1);
        }
    }

    public final n a(int i2) {
        n obtain = n.obtain();
        obtain.setEnabled(true);
        obtain.setFocusable(true);
        obtain.setClassName("android.view.View");
        Rect rect = f4033n;
        obtain.setBoundsInParent(rect);
        obtain.setBoundsInScreen(rect);
        View view = this.f4041i;
        obtain.setParent(view);
        onPopulateNodeForVirtualView(i2, obtain);
        if (obtain.getText() == null && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        Rect rect2 = this.f4037e;
        obtain.getBoundsInParent(rect2);
        if (rect2.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = obtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        obtain.setPackageName(view.getContext().getPackageName());
        obtain.setSource(view, i2);
        if (this.f4043k == i2) {
            obtain.setAccessibilityFocused(true);
            obtain.addAction(128);
        } else {
            obtain.setAccessibilityFocused(false);
            obtain.addAction(64);
        }
        boolean z6 = this.f4044l == i2;
        if (z6) {
            obtain.addAction(2);
        } else if (obtain.isFocusable()) {
            obtain.addAction(1);
        }
        obtain.setFocused(z6);
        int[] iArr = this.f4039g;
        view.getLocationOnScreen(iArr);
        Rect rect3 = this.f4036d;
        obtain.getBoundsInScreen(rect3);
        if (rect3.equals(rect)) {
            obtain.getBoundsInParent(rect3);
            if (obtain.f2141b != -1) {
                n obtain2 = n.obtain();
                for (int i7 = obtain.f2141b; i7 != -1; i7 = obtain2.f2141b) {
                    obtain2.setParent(view, -1);
                    obtain2.setBoundsInParent(rect);
                    onPopulateNodeForVirtualView(i7, obtain2);
                    obtain2.getBoundsInParent(rect2);
                    rect3.offset(rect2.left, rect2.top);
                }
                obtain2.recycle();
            }
            rect3.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
        }
        Rect rect4 = this.f4038f;
        if (view.getLocalVisibleRect(rect4)) {
            rect4.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
            if (rect3.intersect(rect4)) {
                obtain.setBoundsInScreen(rect3);
                if (rect3 != null && !rect3.isEmpty() && view.getWindowVisibility() == 0) {
                    Object parent = view.getParent();
                    while (true) {
                        if (parent instanceof View) {
                            View view2 = (View) parent;
                            if (view2.getAlpha() <= 0.0f || view2.getVisibility() != 0) {
                                break;
                            }
                            parent = view2.getParent();
                        } else if (parent != null) {
                            obtain.setVisibleToUser(true);
                        }
                    }
                }
            }
        }
        return obtain;
    }

    public final boolean b(int i2, Rect rect) {
        n nVar;
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        r rVar = new r();
        for (int i7 = 0; i7 < arrayList.size(); i7++) {
            rVar.put(((Integer) arrayList.get(i7)).intValue(), a(((Integer) arrayList.get(i7)).intValue()));
        }
        int i8 = this.f4044l;
        n nVar2 = i8 == Integer.MIN_VALUE ? null : (n) rVar.get(i8);
        a aVar = f4034o;
        b bVar = f4035p;
        View view = this.f4041i;
        if (i2 == 1 || i2 == 2) {
            nVar = (n) h.findNextFocusInRelativeDirection(rVar, bVar, aVar, nVar2, i2, AbstractC0181p0.getLayoutDirection(view) == 1, false);
        } else {
            if (i2 != 17 && i2 != 33 && i2 != 66 && i2 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect2 = new Rect();
            int i9 = this.f4044l;
            if (i9 != Integer.MIN_VALUE) {
                c(i9).getBoundsInParent(rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                int width = view.getWidth();
                int height = view.getHeight();
                if (i2 == 17) {
                    rect2.set(width, 0, width, height);
                } else if (i2 == 33) {
                    rect2.set(0, height, width, height);
                } else if (i2 == 66) {
                    rect2.set(-1, 0, -1, height);
                } else {
                    if (i2 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                    rect2.set(0, -1, width, -1);
                }
            }
            nVar = (n) h.findNextFocusInAbsoluteDirection(rVar, bVar, aVar, nVar2, rect2, i2);
        }
        return requestKeyboardFocusForVirtualView(nVar != null ? rVar.keyAt(rVar.indexOfValue(nVar)) : Integer.MIN_VALUE);
    }

    public final n c(int i2) {
        if (i2 != -1) {
            return a(i2);
        }
        View view = this.f4041i;
        n obtain = n.obtain(view);
        AbstractC0181p0.onInitializeAccessibilityNodeInfo(view, obtain);
        ArrayList arrayList = new ArrayList();
        getVisibleVirtualViews(arrayList);
        if (obtain.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            obtain.addChild(view, ((Integer) arrayList.get(i7)).intValue());
        }
        return obtain;
    }

    public final boolean clearKeyboardFocusForVirtualView(int i2) {
        if (this.f4044l != i2) {
            return false;
        }
        this.f4044l = Integer.MIN_VALUE;
        onVirtualViewKeyboardFocusChanged(i2, false);
        sendEventForVirtualView(i2, 8);
        return true;
    }

    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int i2;
        AccessibilityManager accessibilityManager = this.f4040h;
        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int virtualViewAt = getVirtualViewAt(motionEvent.getX(), motionEvent.getY());
            int i7 = this.f4045m;
            if (i7 != virtualViewAt) {
                this.f4045m = virtualViewAt;
                sendEventForVirtualView(virtualViewAt, 128);
                sendEventForVirtualView(i7, 256);
            }
            if (virtualViewAt == Integer.MIN_VALUE) {
                return false;
            }
        } else {
            if (action != 10 || (i2 = this.f4045m) == Integer.MIN_VALUE) {
                return false;
            }
            if (i2 != Integer.MIN_VALUE) {
                this.f4045m = Integer.MIN_VALUE;
                sendEventForVirtualView(Integer.MIN_VALUE, 128);
                sendEventForVirtualView(i2, 256);
                return true;
            }
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int i2 = 0;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i7 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode == 19) {
                                    i7 = 33;
                                } else if (keyCode == 21) {
                                    i7 = 17;
                                } else if (keyCode != 22) {
                                    i7 = 130;
                                }
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z6 = false;
                                while (i2 < repeatCount && b(i7, null)) {
                                    i2++;
                                    z6 = true;
                                }
                                return z6;
                            }
                            break;
                    }
                }
                if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                    int i8 = this.f4044l;
                    if (i8 != Integer.MIN_VALUE) {
                        onPerformActionForVirtualView(i8, 16, null);
                    }
                    return true;
                }
            } else {
                if (keyEvent.hasNoModifiers()) {
                    return b(2, null);
                }
                if (keyEvent.hasModifiers(1)) {
                    return b(1, null);
                }
            }
        }
        return false;
    }

    public final int getAccessibilityFocusedVirtualViewId() {
        return this.f4043k;
    }

    @Override // M.C0152b
    public q getAccessibilityNodeProvider(View view) {
        if (this.f4042j == null) {
            this.f4042j = new c(this);
        }
        return this.f4042j;
    }

    public final int getKeyboardFocusedVirtualViewId() {
        return this.f4044l;
    }

    public abstract int getVirtualViewAt(float f3, float f7);

    public abstract void getVisibleVirtualViews(List<Integer> list);

    public final void onFocusChanged(boolean z6, int i2, Rect rect) {
        int i7 = this.f4044l;
        if (i7 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i7);
        }
        if (z6) {
            b(i2, rect);
        }
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        onPopulateEventForHost(accessibilityEvent);
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityNodeInfo(View view, n nVar) {
        super.onInitializeAccessibilityNodeInfo(view, nVar);
        onPopulateNodeForHost(nVar);
    }

    public abstract boolean onPerformActionForVirtualView(int i2, int i7, Bundle bundle);

    public abstract void onPopulateNodeForHost(n nVar);

    public abstract void onPopulateNodeForVirtualView(int i2, n nVar);

    public abstract void onVirtualViewKeyboardFocusChanged(int i2, boolean z6);

    public final boolean requestKeyboardFocusForVirtualView(int i2) {
        int i7;
        View view = this.f4041i;
        if ((!view.isFocused() && !view.requestFocus()) || (i7 = this.f4044l) == i2) {
            return false;
        }
        if (i7 != Integer.MIN_VALUE) {
            clearKeyboardFocusForVirtualView(i7);
        }
        if (i2 == Integer.MIN_VALUE) {
            return false;
        }
        this.f4044l = i2;
        onVirtualViewKeyboardFocusChanged(i2, true);
        sendEventForVirtualView(i2, 8);
        return true;
    }

    public final boolean sendEventForVirtualView(int i2, int i7) {
        View view;
        ViewParent parent;
        AccessibilityEvent obtain;
        if (i2 == Integer.MIN_VALUE || !this.f4040h.isEnabled() || (parent = (view = this.f4041i).getParent()) == null) {
            return false;
        }
        if (i2 != -1) {
            obtain = AccessibilityEvent.obtain(i7);
            n c7 = c(i2);
            obtain.getText().add(c7.getText());
            obtain.setContentDescription(c7.getContentDescription());
            obtain.setScrollable(c7.isScrollable());
            obtain.setPassword(c7.isPassword());
            obtain.setEnabled(c7.isEnabled());
            obtain.setChecked(c7.isChecked());
            onPopulateEventForVirtualView(i2, obtain);
            if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
                throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
            }
            obtain.setClassName(c7.getClassName());
            N.r.setSource(obtain, view, i2);
            obtain.setPackageName(view.getContext().getPackageName());
        } else {
            obtain = AccessibilityEvent.obtain(i7);
            view.onInitializeAccessibilityEvent(obtain);
        }
        return parent.requestSendAccessibilityEvent(view, obtain);
    }

    public void onPopulateEventForHost(AccessibilityEvent accessibilityEvent) {
    }

    public void onPopulateEventForVirtualView(int i2, AccessibilityEvent accessibilityEvent) {
    }
}
