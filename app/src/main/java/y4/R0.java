package y4;

import android.widget.TextView;
import flix.com.vision.activities.SeriesDetailActivity;
import flix.com.vision.customviews.CustomImageView;
import m4.InterfaceC1330i;

/* loaded from: classes2.dex */
public final class R0 implements InterfaceC1330i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SeriesDetailActivity f21166a;

    public R0(SeriesDetailActivity seriesDetailActivity) {
        this.f21166a = seriesDetailActivity;
    }

    @Override // m4.InterfaceC1330i
    public void onSuccess() {
        SeriesDetailActivity seriesDetailActivity = this.f21166a;
        TextView textView = seriesDetailActivity.f15039b;
        if (textView != null) {
            textView.setVisibility(8);
        }
        CustomImageView customImageView = seriesDetailActivity.f15037E;
        if (customImageView != null) {
            customImageView.setVisibility(0);
        }
    }

    @Override // m4.InterfaceC1330i
    public void onError(Exception exc) {
    }
}
