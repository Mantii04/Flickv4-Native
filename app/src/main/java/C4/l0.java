package C4;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.Movie;
import m1.B0;

/* loaded from: classes2.dex */
public final class l0 extends B0 {

    /* renamed from: A, reason: collision with root package name */
    public final ImageView f726A;

    /* renamed from: B, reason: collision with root package name */
    public final ImageView f727B;

    /* renamed from: u, reason: collision with root package name */
    public Movie f728u;

    /* renamed from: v, reason: collision with root package name */
    public final RelativeLayout f729v;

    /* renamed from: w, reason: collision with root package name */
    public final View f730w;

    /* renamed from: x, reason: collision with root package name */
    public final TextView f731x;

    /* renamed from: y, reason: collision with root package name */
    public final TextView f732y;

    /* renamed from: z, reason: collision with root package name */
    public final RelativeLayout f733z;

    public l0(m0 m0Var, View view) {
        super(view);
        this.f730w = view;
        this.f726A = (ImageView) view.findViewById(R.id.image);
        this.f727B = (ImageView) view.findViewById(R.id.place_holder_poster);
        this.f731x = (TextView) view.findViewById(R.id.title);
        this.f732y = (TextView) view.findViewById(R.id.year_textview);
        this.f733z = (RelativeLayout) view.findViewById(R.id.type_layout);
        this.f729v = (RelativeLayout) view.findViewById(R.id.image_back);
    }

    @Override // m1.B0
    public String toString() {
        return super.toString() + " '" + ((Object) this.f731x.getText()) + "'";
    }
}
