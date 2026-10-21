package C4;

import android.view.View;
import android.widget.TextView;
import de.hdodenhof.circleimageview.CircleImageView;
import flix.com.vision.R;
import flix.com.vision.models.Cast;
import m1.B0;

/* renamed from: C4.q, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0093q extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public Cast f762u;

    /* renamed from: v, reason: collision with root package name */
    public final View f763v;

    /* renamed from: w, reason: collision with root package name */
    public final TextView f764w;

    /* renamed from: x, reason: collision with root package name */
    public final TextView f765x;

    /* renamed from: y, reason: collision with root package name */
    public final CircleImageView f766y;

    public C0093q(r rVar, View view) {
        super(view);
        this.f763v = view;
        this.f766y = (CircleImageView) view.findViewById(R.id.image_cast);
        this.f764w = (TextView) view.findViewById(R.id.cast_name);
        this.f765x = (TextView) view.findViewById(R.id.cast_name_actor);
    }

    @Override // m1.B0
    public String toString() {
        return super.toString() + " '" + ((Object) this.f764w.getText()) + "'";
    }
}
