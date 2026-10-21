package k4;

import android.view.View;
import com.skydoves.powerspinner.PowerSpinnerView;

/* renamed from: k4.k, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class ViewOnClickListenerC1109k implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PowerSpinnerView f17308b;

    public ViewOnClickListenerC1109k(PowerSpinnerView powerSpinnerView) {
        this.f17308b = powerSpinnerView;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        PowerSpinnerView.showOrDismiss$default(this.f17308b, 0, 0, 3, null);
    }
}
