package androidx.mediarouter.app;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.mediarouter.R;
import m1.B0;

/* loaded from: classes.dex */
public final class N extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public final View f7716u;

    /* renamed from: v, reason: collision with root package name */
    public final ImageView f7717v;

    /* renamed from: w, reason: collision with root package name */
    public final ProgressBar f7718w;

    /* renamed from: x, reason: collision with root package name */
    public final TextView f7719x;

    /* renamed from: y, reason: collision with root package name */
    public final /* synthetic */ O f7720y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N(O o6, View view) {
        super(view);
        this.f7720y = o6;
        this.f7716u = view;
        this.f7717v = (ImageView) view.findViewById(R.id.mr_picker_route_icon);
        ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.mr_picker_route_progress_bar);
        this.f7718w = progressBar;
        this.f7719x = (TextView) view.findViewById(R.id.mr_picker_route_name);
        o0.i(o6.f7727j.f7732q, progressBar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003c, code lost:
    
        if (r1 != null) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void bindRouteView(androidx.mediarouter.app.L r6) {
        /*
            r5 = this;
            java.lang.Object r6 = r6.getData()
            f1.U r6 = (f1.U) r6
            android.view.View r0 = r5.f7716u
            r1 = 0
            r0.setVisibility(r1)
            android.widget.ProgressBar r1 = r5.f7718w
            r2 = 4
            r1.setVisibility(r2)
            androidx.mediarouter.app.M r1 = new androidx.mediarouter.app.M
            r1.<init>(r5, r6)
            r0.setOnClickListener(r1)
            java.lang.String r0 = r6.getName()
            android.widget.TextView r1 = r5.f7719x
            r1.setText(r0)
            androidx.mediarouter.app.O r0 = r5.f7720y
            android.net.Uri r1 = r6.getIconUri()
            if (r1 == 0) goto L53
            androidx.mediarouter.app.Q r2 = r0.f7727j     // Catch: java.io.IOException -> L3f
            android.content.Context r2 = r2.f7732q     // Catch: java.io.IOException -> L3f
            android.content.ContentResolver r2 = r2.getContentResolver()     // Catch: java.io.IOException -> L3f
            java.io.InputStream r2 = r2.openInputStream(r1)     // Catch: java.io.IOException -> L3f
            r3 = 0
            android.graphics.drawable.Drawable r1 = android.graphics.drawable.Drawable.createFromStream(r2, r3)     // Catch: java.io.IOException -> L3f
            if (r1 == 0) goto L53
            goto L70
        L3f:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Failed to load "
            r3.<init>(r4)
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            java.lang.String r3 = "RecyclerAdapter"
            android.util.Log.w(r3, r1, r2)
        L53:
            int r1 = r6.getDeviceType()
            r2 = 1
            if (r1 == r2) goto L6d
            r2 = 2
            if (r1 == r2) goto L6a
            boolean r6 = r6.isGroup()
            if (r6 == 0) goto L67
            android.graphics.drawable.Drawable r6 = r0.f7726i
        L65:
            r1 = r6
            goto L70
        L67:
            android.graphics.drawable.Drawable r6 = r0.f7723f
            goto L65
        L6a:
            android.graphics.drawable.Drawable r6 = r0.f7725h
            goto L65
        L6d:
            android.graphics.drawable.Drawable r6 = r0.f7724g
            goto L65
        L70:
            android.widget.ImageView r6 = r5.f7717v
            r6.setImageDrawable(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.N.bindRouteView(androidx.mediarouter.app.L):void");
    }
}
