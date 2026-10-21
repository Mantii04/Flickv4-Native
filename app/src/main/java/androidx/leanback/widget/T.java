package androidx.leanback.widget;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class T extends V {

    /* renamed from: e, reason: collision with root package name */
    public final int f6734e;

    public T(int i2) {
        this.f6734e = i2;
    }

    public int getAlignmentPosition(View view) {
        View view2;
        int height;
        int width;
        int width2;
        int width3;
        Rect rect = X.f6759a;
        J j7 = (J) view.getLayoutParams();
        int i2 = this.f6753a;
        if (i2 == 0 || (view2 = view.findViewById(i2)) == null) {
            view2 = view;
        }
        int i7 = this.f6754b;
        Rect rect2 = X.f6759a;
        if (this.f6734e != 0) {
            if (this.f6756d) {
                float f3 = this.f6755c;
                if (f3 == 0.0f) {
                    i7 += view2.getPaddingTop();
                } else if (f3 == 100.0f) {
                    i7 -= view2.getPaddingBottom();
                }
            }
            if (this.f6755c != -1.0f) {
                if (view2 == view) {
                    j7.getClass();
                    height = (view2.getHeight() - j7.f6577f) - j7.f6579h;
                } else {
                    height = view2.getHeight();
                }
                i7 += (int) ((height * this.f6755c) / 100.0f);
            }
            if (view != view2) {
                rect2.top = i7;
                ((ViewGroup) view).offsetDescendantRectToMyCoords(view2, rect2);
                i7 = rect2.top - j7.f6577f;
            }
            return isAlignedToTextViewBaseLine() ? view2.getBaseline() + i7 : i7;
        }
        if (view.getLayoutDirection() != 1) {
            if (this.f6756d) {
                float f7 = this.f6755c;
                if (f7 == 0.0f) {
                    i7 += view2.getPaddingLeft();
                } else if (f7 == 100.0f) {
                    i7 -= view2.getPaddingRight();
                }
            }
            if (this.f6755c != -1.0f) {
                if (view2 == view) {
                    j7.getClass();
                    width = (view2.getWidth() - j7.f6576e) - j7.f6578g;
                } else {
                    width = view2.getWidth();
                }
                i7 += (int) ((width * this.f6755c) / 100.0f);
            }
            if (view == view2) {
                return i7;
            }
            rect2.left = i7;
            ((ViewGroup) view).offsetDescendantRectToMyCoords(view2, rect2);
            return rect2.left - j7.f6576e;
        }
        if (view2 == view) {
            j7.getClass();
            width2 = (view2.getWidth() - j7.f6576e) - j7.f6578g;
        } else {
            width2 = view2.getWidth();
        }
        int i8 = width2 - i7;
        if (this.f6756d) {
            float f8 = this.f6755c;
            if (f8 == 0.0f) {
                i8 -= view2.getPaddingRight();
            } else if (f8 == 100.0f) {
                i8 += view2.getPaddingLeft();
            }
        }
        if (this.f6755c != -1.0f) {
            if (view2 == view) {
                j7.getClass();
                width3 = (view2.getWidth() - j7.f6576e) - j7.f6578g;
            } else {
                width3 = view2.getWidth();
            }
            i8 -= (int) ((width3 * this.f6755c) / 100.0f);
        }
        if (view == view2) {
            return i8;
        }
        rect2.right = i8;
        ((ViewGroup) view).offsetDescendantRectToMyCoords(view2, rect2);
        return rect2.right + j7.f6578g;
    }
}
