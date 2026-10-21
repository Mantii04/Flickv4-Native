package C4;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.adult.AdultVideo;
import m1.B0;

/* renamed from: C4.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0083g extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public AdultVideo f676u;

    /* renamed from: v, reason: collision with root package name */
    public final LinearLayout f677v;

    /* renamed from: w, reason: collision with root package name */
    public final TextView f678w;

    /* renamed from: x, reason: collision with root package name */
    public final TextView f679x;

    /* renamed from: y, reason: collision with root package name */
    public final View f680y;

    /* renamed from: z, reason: collision with root package name */
    public final ImageView f681z;

    public C0083g(C0084h c0084h, View view) {
        super(view);
        this.f680y = view;
        this.f678w = (TextView) view.findViewById(R.id.adult_category_title);
        this.f679x = (TextView) view.findViewById(R.id.adult_video_duration);
        this.f681z = (ImageView) view.findViewById(R.id.adult_cat_poster);
        this.f677v = (LinearLayout) view.findViewById(R.id.item_background);
    }
}
