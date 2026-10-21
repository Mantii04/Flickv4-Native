package androidx.mediarouter.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.mediarouter.R;
import f.AbstractC0876a;
import java.util.List;

/* renamed from: androidx.mediarouter.app.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0602f extends ArrayAdapter implements AdapterView.OnItemClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final LayoutInflater f7784b;

    /* renamed from: e, reason: collision with root package name */
    public final Drawable f7785e;

    /* renamed from: f, reason: collision with root package name */
    public final Drawable f7786f;

    /* renamed from: j, reason: collision with root package name */
    public final Drawable f7787j;

    /* renamed from: m, reason: collision with root package name */
    public final Drawable f7788m;

    public C0602f(Context context, List<f1.U> list) {
        super(context, 0, list);
        this.f7784b = LayoutInflater.from(context);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.mediaRouteDefaultIconDrawable, R.attr.mediaRouteTvIconDrawable, R.attr.mediaRouteSpeakerIconDrawable, R.attr.mediaRouteSpeakerGroupIconDrawable});
        this.f7785e = AbstractC0876a.getDrawable(context, obtainStyledAttributes.getResourceId(0, 0));
        this.f7786f = AbstractC0876a.getDrawable(context, obtainStyledAttributes.getResourceId(1, 0));
        this.f7787j = AbstractC0876a.getDrawable(context, obtainStyledAttributes.getResourceId(2, 0));
        this.f7788m = AbstractC0876a.getDrawable(context, obtainStyledAttributes.getResourceId(3, 0));
        obtainStyledAttributes.recycle();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0083, code lost:
    
        if (r0 != null) goto L32;
     */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View getView(int r7, android.view.View r8, android.view.ViewGroup r9) {
        /*
            r6 = this;
            r0 = 0
            if (r8 != 0) goto Lb
            android.view.LayoutInflater r8 = r6.f7784b
            int r1 = androidx.mediarouter.R.layout.mr_chooser_list_item
            android.view.View r8 = r8.inflate(r1, r9, r0)
        Lb:
            java.lang.Object r7 = r6.getItem(r7)
            f1.U r7 = (f1.U) r7
            int r9 = androidx.mediarouter.R.id.mr_chooser_route_name
            android.view.View r9 = r8.findViewById(r9)
            android.widget.TextView r9 = (android.widget.TextView) r9
            int r1 = androidx.mediarouter.R.id.mr_chooser_route_desc
            android.view.View r1 = r8.findViewById(r1)
            android.widget.TextView r1 = (android.widget.TextView) r1
            java.lang.String r2 = r7.getName()
            r9.setText(r2)
            java.lang.String r2 = r7.getDescription()
            int r3 = r7.getConnectionState()
            r4 = 1
            r5 = 2
            if (r3 == r5) goto L3a
            int r3 = r7.getConnectionState()
            if (r3 != r4) goto L4c
        L3a:
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 != 0) goto L4c
            r3 = 80
            r9.setGravity(r3)
            r1.setVisibility(r0)
            r1.setText(r2)
            goto L5b
        L4c:
            r0 = 16
            r9.setGravity(r0)
            r9 = 8
            r1.setVisibility(r9)
            java.lang.String r9 = ""
            r1.setText(r9)
        L5b:
            boolean r9 = r7.isEnabled()
            r8.setEnabled(r9)
            int r9 = androidx.mediarouter.R.id.mr_chooser_route_icon
            android.view.View r9 = r8.findViewById(r9)
            android.widget.ImageView r9 = (android.widget.ImageView) r9
            if (r9 == 0) goto Lb8
            android.net.Uri r0 = r7.getIconUri()
            if (r0 == 0) goto L9a
            android.content.Context r1 = r6.getContext()     // Catch: java.io.IOException -> L86
            android.content.ContentResolver r1 = r1.getContentResolver()     // Catch: java.io.IOException -> L86
            java.io.InputStream r1 = r1.openInputStream(r0)     // Catch: java.io.IOException -> L86
            r2 = 0
            android.graphics.drawable.Drawable r0 = android.graphics.drawable.Drawable.createFromStream(r1, r2)     // Catch: java.io.IOException -> L86
            if (r0 == 0) goto L9a
            goto Lb5
        L86:
            r1 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Failed to load "
            r2.<init>(r3)
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            java.lang.String r2 = "MediaRouteChooserDialog"
            android.util.Log.w(r2, r0, r1)
        L9a:
            int r0 = r7.getDeviceType()
            if (r0 == r4) goto Lb2
            if (r0 == r5) goto Laf
            boolean r7 = r7.isGroup()
            if (r7 == 0) goto Lac
            android.graphics.drawable.Drawable r7 = r6.f7788m
        Laa:
            r0 = r7
            goto Lb5
        Lac:
            android.graphics.drawable.Drawable r7 = r6.f7785e
            goto Laa
        Laf:
            android.graphics.drawable.Drawable r7 = r6.f7787j
            goto Laa
        Lb2:
            android.graphics.drawable.Drawable r7 = r6.f7786f
            goto Laa
        Lb5:
            r9.setImageDrawable(r0)
        Lb8:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.C0602f.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i2) {
        return ((f1.U) getItem(i2)).isEnabled();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j7) {
        f1.U u6 = (f1.U) getItem(i2);
        if (u6.isEnabled()) {
            ImageView imageView = (ImageView) view.findViewById(R.id.mr_chooser_route_icon);
            ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.mr_chooser_route_progress_bar);
            if (imageView != null && progressBar != null) {
                imageView.setVisibility(8);
                progressBar.setVisibility(0);
            }
            u6.select();
        }
    }
}
