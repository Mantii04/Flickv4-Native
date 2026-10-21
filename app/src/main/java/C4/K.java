package C4;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import flix.com.vision.R;
import m1.B0;

/* loaded from: classes2.dex */
public final class K extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public final ImageView f570u;

    /* renamed from: v, reason: collision with root package name */
    public final TextView f571v;

    /* renamed from: w, reason: collision with root package name */
    public final TextView f572w;

    public K(View view) {
        super(view);
        this.f570u = (ImageView) view.findViewById(R.id.file_icon);
        this.f571v = (TextView) view.findViewById(R.id.file_name);
        this.f572w = (TextView) view.findViewById(R.id.file_details);
    }
}
