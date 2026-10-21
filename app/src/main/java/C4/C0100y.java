package C4;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.Drama;
import m1.B0;

/* renamed from: C4.y, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0100y extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public Drama f795u;

    /* renamed from: v, reason: collision with root package name */
    public final FrameLayout f796v;

    /* renamed from: w, reason: collision with root package name */
    public final View f797w;

    /* renamed from: x, reason: collision with root package name */
    public final TextView f798x;

    /* renamed from: y, reason: collision with root package name */
    public final TextView f799y;

    /* renamed from: z, reason: collision with root package name */
    public final ImageView f800z;

    public C0100y(C0101z c0101z, View view) {
        super(view);
        this.f797w = view;
        this.f800z = (ImageView) view.findViewById(R.id.image);
        this.f798x = (TextView) view.findViewById(R.id.title);
        this.f799y = (TextView) view.findViewById(R.id.year_textview);
        this.f796v = (FrameLayout) view.findViewById(R.id.image_back);
    }

    @Override // m1.B0
    public String toString() {
        return super.toString() + " '" + ((Object) this.f798x.getText()) + "'";
    }
}
