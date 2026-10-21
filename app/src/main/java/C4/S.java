package C4;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import flix.com.vision.R;
import flix.com.vision.models.tmdb.Network;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class S extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final Activity f604d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f605e;

    public S(Context context, ArrayList<Network> arrayList, Activity activity) {
        this.f605e = arrayList;
        this.f604d = activity;
        new T4.d();
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f605e.size();
    }

    @Override // m1.V
    public void onBindViewHolder(Q q6, int i2) {
        Network network = (Network) this.f605e.get(i2);
        q6.f601u = network;
        if (network.image_id > 1) {
            try {
                try {
                    m4.D.get().load(q6.f601u.image_id).fit().into(q6.f603w);
                } catch (OutOfMemoryError e3) {
                    e3.printStackTrace();
                }
            } catch (Exception e7) {
                e7.printStackTrace();
            }
        }
        ViewOnFocusChangeListenerC0089m viewOnFocusChangeListenerC0089m = new ViewOnFocusChangeListenerC0089m(2);
        View view = q6.f602v;
        view.setOnFocusChangeListener(viewOnFocusChangeListenerC0089m);
        view.setOnClickListener(new A4.m(10, this, q6));
    }

    @Override // m1.V
    public Q onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new Q(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.network_item_view_main, viewGroup, false));
    }
}
