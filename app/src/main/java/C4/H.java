package C4;

import android.view.View;
import android.widget.TextView;
import flix.com.vision.R;
import m1.B0;

/* loaded from: classes2.dex */
public final class H extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public String f562u;

    /* renamed from: v, reason: collision with root package name */
    public final View f563v;

    /* renamed from: w, reason: collision with root package name */
    public final TextView f564w;

    public H(I i2, View view) {
        super(view);
        this.f563v = view;
        this.f564w = (TextView) view.findViewById(R.id.letter_textview);
    }
}
