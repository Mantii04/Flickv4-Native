package androidx.mediarouter.app;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.mediarouter.R;
import m1.B0;

/* loaded from: classes.dex */
public final class d0 extends B0 {

    /* renamed from: A, reason: collision with root package name */
    public final /* synthetic */ j0 f7773A;

    /* renamed from: u, reason: collision with root package name */
    public final View f7774u;

    /* renamed from: v, reason: collision with root package name */
    public final ImageView f7775v;

    /* renamed from: w, reason: collision with root package name */
    public final ProgressBar f7776w;

    /* renamed from: x, reason: collision with root package name */
    public final TextView f7777x;

    /* renamed from: y, reason: collision with root package name */
    public final float f7778y;

    /* renamed from: z, reason: collision with root package name */
    public f1.U f7779z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(j0 j0Var, View view) {
        super(view);
        this.f7773A = j0Var;
        this.f7774u = view;
        this.f7775v = (ImageView) view.findViewById(R.id.mr_cast_group_icon);
        ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.mr_cast_group_progress_bar);
        this.f7776w = progressBar;
        this.f7777x = (TextView) view.findViewById(R.id.mr_cast_group_name);
        m0 m0Var = j0Var.f7835m;
        this.f7778y = o0.c(m0Var.f7879w);
        o0.i(m0Var.f7879w, progressBar);
    }
}
