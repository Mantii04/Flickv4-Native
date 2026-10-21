package C4;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import cz.msebera.android.httpclient.HttpHost;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.models.ChannelTv;
import flix.com.vision.tv.ChannelsListActivity;
import java.util.ArrayList;

/* renamed from: C4.u, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0096u extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final int f777d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f778e;

    /* renamed from: f, reason: collision with root package name */
    public final Activity f779f;

    /* renamed from: g, reason: collision with root package name */
    public ChannelsListActivity f780g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f781h;

    public C0096u(Context context, ArrayList<ChannelTv> arrayList, Activity activity, int i2, int i7) {
        this.f777d = 100;
        this.f778e = context;
        this.f781h = arrayList;
        this.f779f = activity;
        new T4.d();
        new T4.n(context);
        this.f777d = i7;
        ArrayList arrayList2 = App.f14430z;
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f781h.size();
    }

    public void setImportActivity(ChannelsListActivity channelsListActivity) {
        this.f780g = channelsListActivity;
    }

    @Override // m1.V
    public void onBindViewHolder(C0095t c0095t, int i2) {
        c0095t.f774v.setSelected(i2 == 0);
        ChannelTv channelTv = (ChannelTv) this.f781h.get(i2);
        c0095t.f773u = channelTv;
        c0095t.f775w.setText(channelTv.label);
        String str = c0095t.f773u.logoUrl;
        ImageView imageView = c0095t.f776x;
        if (str != null && str.length() > 10) {
            try {
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            if (c0095t.f773u.logoUrl.contains(HttpHost.DEFAULT_SCHEME_NAME)) {
                try {
                    m4.D.get().load(c0095t.f773u.logoUrl).into(imageView, new C0094s(c0095t));
                } catch (OutOfMemoryError e7) {
                    e7.printStackTrace();
                }
                ViewOnClickListenerC0077a viewOnClickListenerC0077a = new ViewOnClickListenerC0077a(this, i2, 2);
                View view = c0095t.f774v;
                view.setOnClickListener(viewOnClickListenerC0077a);
                view.setOnLongClickListener(new ViewOnLongClickListenerC0081e(this, i2, c0095t));
                c0095t.f18217a.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0078b(this, c0095t, 3));
            }
        }
        imageView.setVisibility(8);
        ViewOnClickListenerC0077a viewOnClickListenerC0077a2 = new ViewOnClickListenerC0077a(this, i2, 2);
        View view2 = c0095t.f774v;
        view2.setOnClickListener(viewOnClickListenerC0077a2);
        view2.setOnLongClickListener(new ViewOnLongClickListenerC0081e(this, i2, c0095t));
        c0095t.f18217a.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0078b(this, c0095t, 3));
    }

    @Override // m1.V
    public C0095t onCreateViewHolder(ViewGroup viewGroup, int i2) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_channel_modern, viewGroup, false);
        if (this.f777d == 200) {
            inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_channel_modern, viewGroup, false);
        }
        return new C0095t(this, inflate);
    }
}
