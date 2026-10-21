package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.mediarouter.R;
import java.util.ArrayList;
import java.util.Iterator;
import m1.B0;

/* loaded from: classes.dex */
public final class O extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f7721d = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final LayoutInflater f7722e;

    /* renamed from: f, reason: collision with root package name */
    public final Drawable f7723f;

    /* renamed from: g, reason: collision with root package name */
    public final Drawable f7724g;

    /* renamed from: h, reason: collision with root package name */
    public final Drawable f7725h;

    /* renamed from: i, reason: collision with root package name */
    public final Drawable f7726i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Q f7727j;

    public O(Q q6) {
        this.f7727j = q6;
        this.f7722e = LayoutInflater.from(q6.f7732q);
        int i2 = R.attr.mediaRouteDefaultIconDrawable;
        Context context = q6.f7732q;
        this.f7723f = o0.d(context, i2);
        this.f7724g = o0.d(context, R.attr.mediaRouteTvIconDrawable);
        this.f7725h = o0.d(context, R.attr.mediaRouteSpeakerIconDrawable);
        this.f7726i = o0.d(context, R.attr.mediaRouteSpeakerGroupIconDrawable);
        a();
    }

    public final void a() {
        ArrayList arrayList = this.f7721d;
        arrayList.clear();
        Q q6 = this.f7727j;
        arrayList.add(new L(q6.f7732q.getString(R.string.mr_chooser_title)));
        Iterator it = q6.f7734s.iterator();
        while (it.hasNext()) {
            arrayList.add(new L((f1.U) it.next()));
        }
        notifyDataSetChanged();
    }

    public L getItem(int i2) {
        return (L) this.f7721d.get(i2);
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f7721d.size();
    }

    @Override // m1.V
    public int getItemViewType(int i2) {
        return ((L) this.f7721d.get(i2)).getType();
    }

    @Override // m1.V
    public void onBindViewHolder(B0 b02, int i2) {
        int itemViewType = getItemViewType(i2);
        L item = getItem(i2);
        if (itemViewType == 1) {
            ((K) b02).bindHeaderView(item);
        } else if (itemViewType != 2) {
            Log.w("RecyclerAdapter", "Cannot bind item to ViewHolder because of wrong view type");
        } else {
            ((N) b02).bindRouteView(item);
        }
    }

    @Override // m1.V
    public B0 onCreateViewHolder(ViewGroup viewGroup, int i2) {
        LayoutInflater layoutInflater = this.f7722e;
        if (i2 != 1) {
            if (i2 == 2) {
                return new N(this, layoutInflater.inflate(R.layout.mr_picker_route_item, viewGroup, false));
            }
            throw new IllegalStateException();
        }
        View inflate = layoutInflater.inflate(R.layout.mr_picker_header_item, viewGroup, false);
        K k7 = new K(inflate);
        k7.f7679u = (TextView) inflate.findViewById(R.id.mr_picker_header_name);
        return k7;
    }
}
