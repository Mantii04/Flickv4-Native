package C4;

import android.view.View;
import android.widget.TextView;
import flix.com.vision.R;
import m1.B0;

/* loaded from: classes2.dex */
public final class W extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public final TextView f615u;

    /* renamed from: v, reason: collision with root package name */
    public final TextView f616v;

    public W(View view) {
        super(view);
        this.f615u = (TextView) view.findViewById(R.id.version_title);
        this.f616v = (TextView) view.findViewById(R.id.version_body);
    }
}
