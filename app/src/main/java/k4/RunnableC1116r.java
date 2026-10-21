package k4;

import android.graphics.drawable.GradientDrawable;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import com.skydoves.powerspinner.PowerSpinnerView;
import l4.C1229b;
import m1.C1299p;

/* renamed from: k4.r, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class RunnableC1116r implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PowerSpinnerView f17315b;

    public RunnableC1116r(PowerSpinnerView powerSpinnerView) {
        this.f17315b = powerSpinnerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        PopupWindow popupWindow;
        C1229b c1229b;
        PopupWindow popupWindow2;
        PopupWindow popupWindow3;
        PowerSpinnerView powerSpinnerView = this.f17315b;
        popupWindow = powerSpinnerView.f13371r;
        popupWindow.setWidth(powerSpinnerView.getWidth());
        popupWindow.setOutsideTouchable(true);
        popupWindow.setOnDismissListener(new C1114p(this));
        popupWindow.setTouchInterceptor(new ViewOnTouchListenerC1115q(this));
        popupWindow.setElevation(powerSpinnerView.getSpinnerPopupElevation());
        c1229b = powerSpinnerView.f13370q;
        FrameLayout frameLayout = c1229b.f18152a;
        if (powerSpinnerView.getSpinnerPopupBackgroundColor() == 65555) {
            frameLayout.setBackground(powerSpinnerView.getBackground());
        } else {
            frameLayout.setBackgroundColor(powerSpinnerView.getSpinnerPopupBackgroundColor());
        }
        kotlin.jvm.internal.j.checkNotNullExpressionValue(frameLayout, "this");
        frameLayout.setPadding(frameLayout.getPaddingLeft(), frameLayout.getPaddingTop(), frameLayout.getPaddingRight(), frameLayout.getPaddingBottom());
        if (powerSpinnerView.getShowDivider()) {
            C1299p c1299p = new C1299p(frameLayout.getContext(), 1);
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            gradientDrawable.setSize(frameLayout.getWidth(), powerSpinnerView.getDividerSize());
            gradientDrawable.setColor(powerSpinnerView.getDividerColor());
            c1299p.setDrawable(gradientDrawable);
            powerSpinnerView.getSpinnerRecyclerView().addItemDecoration(c1299p);
        }
        if (powerSpinnerView.getSpinnerPopupWidth() != Integer.MIN_VALUE) {
            popupWindow3 = powerSpinnerView.f13371r;
            popupWindow3.setWidth(powerSpinnerView.getSpinnerPopupWidth());
        }
        if (powerSpinnerView.getSpinnerPopupHeight() != Integer.MIN_VALUE) {
            popupWindow2 = powerSpinnerView.f13371r;
            popupWindow2.setHeight(powerSpinnerView.getSpinnerPopupHeight());
        }
    }
}
