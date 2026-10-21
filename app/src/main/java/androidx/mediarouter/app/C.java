package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.mediarouter.R;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class C extends ArrayAdapter {

    /* renamed from: b, reason: collision with root package name */
    public final float f7606b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ D f7607e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C(D d7, Context context, List<f1.U> list) {
        super(context, 0, list);
        this.f7607e = d7;
        this.f7606b = o0.c(context);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        D d7 = this.f7607e;
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mr_controller_volume_item, viewGroup, false);
        } else {
            d7.getClass();
            D.k((LinearLayout) view.findViewById(R.id.volume_item_container), d7.f7634Z);
            View findViewById = view.findViewById(R.id.mr_volume_item_icon);
            ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
            int i7 = d7.f7633Y;
            layoutParams.width = i7;
            layoutParams.height = i7;
            findViewById.setLayoutParams(layoutParams);
        }
        f1.U u6 = (f1.U) getItem(i2);
        if (u6 != null) {
            boolean isEnabled = u6.isEnabled();
            TextView textView = (TextView) view.findViewById(R.id.mr_name);
            textView.setEnabled(isEnabled);
            textView.setText(u6.getName());
            MediaRouteVolumeSlider mediaRouteVolumeSlider = (MediaRouteVolumeSlider) view.findViewById(R.id.mr_volume_slider);
            Context context = viewGroup.getContext();
            OverlayListView overlayListView = d7.f7624P;
            int b7 = o0.b(context, 0);
            if (Color.alpha(b7) != 255) {
                b7 = D.a.compositeColors(b7, ((Integer) overlayListView.getTag()).intValue());
            }
            mediaRouteVolumeSlider.setColor(b7);
            mediaRouteVolumeSlider.setTag(u6);
            d7.f7637c0.put(u6, mediaRouteVolumeSlider);
            mediaRouteVolumeSlider.setHideThumb(!isEnabled);
            mediaRouteVolumeSlider.setEnabled(isEnabled);
            if (isEnabled) {
                if (d7.f7618J && u6.getVolumeHandling() == 1) {
                    mediaRouteVolumeSlider.setMax(u6.getVolumeMax());
                    mediaRouteVolumeSlider.setProgress(u6.getVolume());
                    mediaRouteVolumeSlider.setOnSeekBarChangeListener(d7.f7631W);
                } else {
                    mediaRouteVolumeSlider.setMax(100);
                    mediaRouteVolumeSlider.setProgress(100);
                    mediaRouteVolumeSlider.setEnabled(false);
                }
            }
            ((ImageView) view.findViewById(R.id.mr_volume_item_icon)).setAlpha(isEnabled ? 255 : (int) (this.f7606b * 255.0f));
            ((LinearLayout) view.findViewById(R.id.volume_item_container)).setVisibility(d7.f7629U.contains(u6) ? 4 : 0);
            Set set = d7.f7627S;
            if (set != null && set.contains(u6)) {
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 0.0f);
                alphaAnimation.setDuration(0L);
                alphaAnimation.setFillEnabled(true);
                alphaAnimation.setFillAfter(true);
                view.clearAnimation();
                view.startAnimation(alphaAnimation);
            }
        }
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i2) {
        return false;
    }
}
