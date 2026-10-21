package I3;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R;
import com.google.android.material.snackbar.SnackbarContentLayout;

/* loaded from: classes2.dex */
public final class w extends t {

    /* renamed from: C, reason: collision with root package name */
    public static final int[] f1375C = {R.attr.snackbarButtonStyle, R.attr.snackbarTextViewStyle};

    /* renamed from: B, reason: collision with root package name */
    public final AccessibilityManager f1376B;

    public w(Context context, ViewGroup viewGroup, SnackbarContentLayout snackbarContentLayout, SnackbarContentLayout snackbarContentLayout2) {
        super(context, viewGroup, snackbarContentLayout, snackbarContentLayout2);
        this.f1376B = (AccessibilityManager) viewGroup.getContext().getSystemService("accessibility");
    }

    public static w make(View view, int i2, int i7) {
        return make(view, view.getResources().getText(i2), i7);
    }

    @Override // I3.t
    public void dismiss() {
        super.dismiss();
    }

    @Override // I3.t
    public int getDuration() {
        int recommendedTimeoutMillis;
        int duration = super.getDuration();
        if (duration == -2) {
            return -2;
        }
        if (Build.VERSION.SDK_INT < 29) {
            return duration;
        }
        recommendedTimeoutMillis = this.f1376B.getRecommendedTimeoutMillis(duration, 3);
        return recommendedTimeoutMillis;
    }

    public w setText(CharSequence charSequence) {
        ((SnackbarContentLayout) this.f1362i.getChildAt(0)).getMessageView().setText(charSequence);
        return this;
    }

    @Override // I3.t
    public void show() {
        super.show();
    }

    public static w make(View view, CharSequence charSequence, int i2) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2 = null;
        while (true) {
            if (view instanceof CoordinatorLayout) {
                viewGroup = (ViewGroup) view;
                break;
            }
            if (view instanceof FrameLayout) {
                if (view.getId() == 16908290) {
                    viewGroup = (ViewGroup) view;
                    break;
                }
                viewGroup2 = (ViewGroup) view;
            }
            if (view != null) {
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            if (view == null) {
                viewGroup = viewGroup2;
                break;
            }
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("No suitable parent found from the given view. Please provide a valid view.");
        }
        Context context = viewGroup.getContext();
        LayoutInflater from = LayoutInflater.from(context);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f1375C);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        int resourceId2 = obtainStyledAttributes.getResourceId(1, -1);
        obtainStyledAttributes.recycle();
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) from.inflate((resourceId == -1 || resourceId2 == -1) ? R.layout.design_layout_snackbar_include : R.layout.mtrl_layout_snackbar_include, viewGroup, false);
        w wVar = new w(context, viewGroup, snackbarContentLayout, snackbarContentLayout);
        wVar.setText(charSequence);
        wVar.setDuration(i2);
        return wVar;
    }
}
