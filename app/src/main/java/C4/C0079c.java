package C4;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.adult.AdultCategory;
import m1.B0;

/* renamed from: C4.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0079c extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public AdultCategory f646u;

    /* renamed from: v, reason: collision with root package name */
    public final LinearLayout f647v;

    /* renamed from: w, reason: collision with root package name */
    public final TextView f648w;

    /* renamed from: x, reason: collision with root package name */
    public final View f649x;

    /* renamed from: y, reason: collision with root package name */
    public final ImageView f650y;

    public C0079c(C0080d c0080d, View view) {
        super(view);
        this.f649x = view;
        this.f648w = (TextView) view.findViewById(R.id.adult_category_title);
        this.f650y = (ImageView) view.findViewById(R.id.adult_cat_poster);
        this.f647v = (LinearLayout) view.findViewById(R.id.item_background);
    }
}
