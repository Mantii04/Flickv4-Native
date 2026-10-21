package C4;

import android.view.View;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.VideoSource;
import m1.B0;

/* loaded from: classes2.dex */
public final class i0 extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public VideoSource f695u;

    /* renamed from: v, reason: collision with root package name */
    public final View f696v;

    /* renamed from: w, reason: collision with root package name */
    public final TextView f697w;

    /* renamed from: x, reason: collision with root package name */
    public final TextView f698x;

    public i0(j0 j0Var, View view) {
        super(view);
        this.f696v = view;
        this.f697w = (TextView) view.findViewById(R.id.link_main_label);
        this.f698x = (TextView) view.findViewById(R.id.link_detail_view);
    }
}
