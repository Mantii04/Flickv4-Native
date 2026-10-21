package C4;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.Movie;
import m1.B0;

/* loaded from: classes2.dex */
public final class O extends B0 {

    /* renamed from: A, reason: collision with root package name */
    public final ImageView f584A;

    /* renamed from: u, reason: collision with root package name */
    public Movie f585u;

    /* renamed from: v, reason: collision with root package name */
    public final RelativeLayout f586v;

    /* renamed from: w, reason: collision with root package name */
    public final View f587w;

    /* renamed from: x, reason: collision with root package name */
    public final TextView f588x;

    /* renamed from: y, reason: collision with root package name */
    public final TextView f589y;

    /* renamed from: z, reason: collision with root package name */
    public final RelativeLayout f590z;

    public O(P p6, View view) {
        super(view);
        this.f587w = view;
        this.f584A = (ImageView) view.findViewById(R.id.image);
        this.f588x = (TextView) view.findViewById(R.id.title);
        this.f589y = (TextView) view.findViewById(R.id.year_textview);
        this.f590z = (RelativeLayout) view.findViewById(R.id.type_layout);
        this.f586v = (RelativeLayout) view.findViewById(R.id.image_back);
    }

    @Override // m1.B0
    public String toString() {
        return super.toString() + " '" + ((Object) this.f588x.getText()) + "'";
    }
}
