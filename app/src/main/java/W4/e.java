package W4;

import A4.g;
import C4.ViewOnLongClickListenerC0085i;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import androidx.leanback.widget.A0;
import androidx.leanback.widget.C0;
import com.bumptech.glide.m;
import flix.com.vision.R;
import flix.com.vision.models.tmdb.Network;
import h5.AbstractC0990d;

/* loaded from: classes2.dex */
public final class e extends C0 {

    /* renamed from: a, reason: collision with root package name */
    public c f4173a;

    public static void a(d dVar) {
        if (dVar.f4172f == null) {
            return;
        }
        ((m) ((m) com.bumptech.glide.c.with(dVar.f6460a.getContext()).load(Integer.valueOf(dVar.f4172f.image_id)).centerInside()).error(R.drawable.ic_movie)).into(dVar.f4168b);
    }

    @Override // androidx.leanback.widget.C0
    public void onBindViewHolder(A0 a02, Object obj) {
        String str;
        Network network = (Network) obj;
        d dVar = (d) a02;
        dVar.f4172f = network;
        setReorderState(dVar, false);
        View view = dVar.f6460a;
        if (view.hasFocus() && (str = network.name) != null && str.toLowerCase().contains("netflix")) {
            com.bumptech.glide.c.with(view.getContext()).asGif().load(Integer.valueOf(R.drawable.netflix_gif)).into(dVar.f4168b);
        } else {
            a(dVar);
        }
        view.setOnLongClickListener(new ViewOnLongClickListenerC0085i(4, this, network));
    }

    @Override // androidx.leanback.widget.C0
    public A0 onCreateViewHolder(ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.network_item_view_card, viewGroup, false);
        ViewGroup.LayoutParams layoutParams = inflate.getLayoutParams();
        layoutParams.width = AbstractC0990d.getWidthInPercent(viewGroup.getContext(), 20);
        layoutParams.height = AbstractC0990d.getHeightInPercent(viewGroup.getContext(), 12);
        d dVar = new d(inflate);
        dVar.f6460a.setOnFocusChangeListener(new g(this, dVar));
        return dVar;
    }

    @Override // androidx.leanback.widget.C0
    public void onUnbindViewHolder(A0 a02) {
        d dVar = (d) a02;
        dVar.f4172f = null;
        View view = dVar.f4171e;
        if (view.getAnimation() != null) {
            view.clearAnimation();
        }
        com.bumptech.glide.c.with(dVar.f6460a.getContext()).clear(dVar.f4168b);
    }

    public void setOnNetworkActionListener(c cVar) {
        this.f4173a = cVar;
    }

    public void setReorderState(d dVar, boolean z6) {
        if (dVar == null) {
            return;
        }
        ImageView imageView = dVar.f4170d;
        ImageView imageView2 = dVar.f4169c;
        View view = dVar.f4171e;
        if (z6) {
            imageView2.setVisibility(0);
            imageView.setVisibility(0);
            view.startAnimation(AnimationUtils.loadAnimation(view.getContext(), R.anim.reorder_pulse_anim));
        } else {
            imageView2.setVisibility(8);
            imageView.setVisibility(8);
            if (view.getAnimation() != null) {
                view.clearAnimation();
            }
        }
    }
}
