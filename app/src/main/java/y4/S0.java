package y4;

import android.widget.TextView;
import flix.com.vision.activities.SeriesDetailActivityLeanBack;
import flix.com.vision.customviews.CustomImageView;
import m4.InterfaceC1330i;

/* loaded from: classes2.dex */
public final class S0 implements InterfaceC1330i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SeriesDetailActivityLeanBack f21170a;

    public S0(SeriesDetailActivityLeanBack seriesDetailActivityLeanBack) {
        this.f21170a = seriesDetailActivityLeanBack;
    }

    @Override // m4.InterfaceC1330i
    public void onSuccess() {
        SeriesDetailActivityLeanBack seriesDetailActivityLeanBack = this.f21170a;
        TextView textView = seriesDetailActivityLeanBack.f15063b;
        if (textView != null) {
            textView.setVisibility(8);
        }
        CustomImageView customImageView = seriesDetailActivityLeanBack.f15061E;
        if (customImageView != null) {
            customImageView.setVisibility(0);
        }
    }

    @Override // m4.InterfaceC1330i
    public void onError(Exception exc) {
    }
}
