package C4;

import android.view.View;
import flix.com.vision.R;
import flix.com.vision.models.Episode;
import m1.B0;
import me.grantland.widget.AutofitTextView;

/* renamed from: C4.n, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0090n extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public Episode f744u;

    /* renamed from: v, reason: collision with root package name */
    public final AutofitTextView f745v;

    /* renamed from: w, reason: collision with root package name */
    public final View f746w;

    /* renamed from: x, reason: collision with root package name */
    public final View f747x;

    public C0090n(C0091o c0091o, View view) {
        super(view);
        this.f747x = view;
        this.f745v = (AutofitTextView) view.findViewById(R.id.rowTextView);
        this.f746w = view.findViewById(R.id.color_view);
    }
}
