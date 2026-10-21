package C4;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.tv.TVCategory;
import m1.B0;

/* loaded from: classes2.dex */
public final class b0 extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public TVCategory f642u;

    /* renamed from: v, reason: collision with root package name */
    public final View f643v;

    /* renamed from: w, reason: collision with root package name */
    public final TextView f644w;

    /* renamed from: x, reason: collision with root package name */
    public final ImageView f645x;

    public b0(c0 c0Var, View view) {
        super(view);
        this.f643v = view;
        this.f644w = (TextView) view.findViewById(R.id.channel_text_view);
        this.f645x = (ImageView) view.findViewById(R.id.image_v);
    }
}
