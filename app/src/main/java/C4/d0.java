package C4;

import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.HistoryTVLink;
import m1.B0;

/* loaded from: classes2.dex */
public final class d0 extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public HistoryTVLink f658u;

    /* renamed from: v, reason: collision with root package name */
    public final ImageButton f659v;

    /* renamed from: w, reason: collision with root package name */
    public final View f660w;

    /* renamed from: x, reason: collision with root package name */
    public final TextView f661x;

    /* renamed from: y, reason: collision with root package name */
    public final TextView f662y;

    /* renamed from: z, reason: collision with root package name */
    public final ImageView f663z;

    public d0(e0 e0Var, View view) {
        super(view);
        this.f660w = view;
        this.f661x = (TextView) view.findViewById(R.id.item_histoty_name);
        this.f662y = (TextView) view.findViewById(R.id.item_histoty_url);
        this.f659v = (ImageButton) view.findViewById(R.id.option_button);
        this.f663z = (ImageView) view.findViewById(R.id.url_icon);
    }
}
