package C4;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.Drama;
import m1.B0;

/* loaded from: classes2.dex */
public final class A extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public Drama f528u;

    /* renamed from: v, reason: collision with root package name */
    public final FrameLayout f529v;

    /* renamed from: w, reason: collision with root package name */
    public final View f530w;

    /* renamed from: x, reason: collision with root package name */
    public final TextView f531x;

    /* renamed from: y, reason: collision with root package name */
    public final TextView f532y;

    /* renamed from: z, reason: collision with root package name */
    public final ImageView f533z;

    public A(B b7, View view) {
        super(view);
        this.f530w = view;
        this.f533z = (ImageView) view.findViewById(R.id.image);
        this.f531x = (TextView) view.findViewById(R.id.title);
        this.f532y = (TextView) view.findViewById(R.id.year_textview);
        this.f529v = (FrameLayout) view.findViewById(R.id.image_back);
    }

    @Override // m1.B0
    public String toString() {
        return super.toString() + " '" + ((Object) this.f531x.getText()) + "'";
    }
}
