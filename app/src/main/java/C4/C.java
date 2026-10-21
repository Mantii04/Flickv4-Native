package C4;

import android.view.View;
import flix.com.vision.R;
import flix.com.vision.models.Episode;
import m1.B0;
import me.grantland.widget.AutofitTextView;

/* loaded from: classes2.dex */
public final class C extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public Episode f537u;

    /* renamed from: v, reason: collision with root package name */
    public final AutofitTextView f538v;

    /* renamed from: w, reason: collision with root package name */
    public final View f539w;

    /* renamed from: x, reason: collision with root package name */
    public final View f540x;

    public C(D d7, View view) {
        super(view);
        this.f540x = view;
        this.f538v = (AutofitTextView) view.findViewById(R.id.rowTextView);
        this.f539w = view.findViewById(R.id.color_view);
    }
}
