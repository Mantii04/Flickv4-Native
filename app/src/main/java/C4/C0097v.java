package C4;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import flix.com.vision.R;
import flix.com.vision.models.ColorItem;
import m1.B0;

/* renamed from: C4.v, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0097v extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public ColorItem f782u;

    /* renamed from: v, reason: collision with root package name */
    public final ImageView f783v;

    /* renamed from: w, reason: collision with root package name */
    public final RelativeLayout f784w;

    /* renamed from: x, reason: collision with root package name */
    public final View f785x;

    /* renamed from: y, reason: collision with root package name */
    public final View f786y;

    public C0097v(C0098w c0098w, View view) {
        super(view);
        this.f785x = view;
        this.f786y = view.findViewById(R.id.color_view);
        this.f783v = (ImageView) view.findViewById(R.id.check_icon);
        this.f784w = (RelativeLayout) view.findViewById(R.id.image_back);
    }
}
