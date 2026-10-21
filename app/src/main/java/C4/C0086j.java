package C4;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.Anime;
import m1.B0;

/* renamed from: C4.j, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0086j extends B0 {

    /* renamed from: A, reason: collision with root package name */
    public final TextView f699A;

    /* renamed from: B, reason: collision with root package name */
    public final TextView f700B;

    /* renamed from: C, reason: collision with root package name */
    public final TextView f701C;

    /* renamed from: D, reason: collision with root package name */
    public final ImageView f702D;

    /* renamed from: u, reason: collision with root package name */
    public Anime f703u;

    /* renamed from: v, reason: collision with root package name */
    public final FrameLayout f704v;

    /* renamed from: w, reason: collision with root package name */
    public final View f705w;

    /* renamed from: x, reason: collision with root package name */
    public final TextView f706x;

    /* renamed from: y, reason: collision with root package name */
    public final TextView f707y;

    /* renamed from: z, reason: collision with root package name */
    public final TextView f708z;

    public C0086j(C0087k c0087k, View view) {
        super(view);
        this.f705w = view;
        this.f702D = (ImageView) view.findViewById(R.id.image);
        this.f706x = (TextView) view.findViewById(R.id.title);
        this.f701C = (TextView) view.findViewById(R.id.year_textview);
        this.f707y = (TextView) view.findViewById(R.id.tag1);
        this.f708z = (TextView) view.findViewById(R.id.tag2);
        this.f699A = (TextView) view.findViewById(R.id.tag3);
        this.f700B = (TextView) view.findViewById(R.id.tag4);
        this.f704v = (FrameLayout) view.findViewById(R.id.image_back);
    }

    @Override // m1.B0
    public String toString() {
        return super.toString() + " '" + ((Object) this.f706x.getText()) + "'";
    }
}
