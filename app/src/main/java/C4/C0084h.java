package C4;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.player.AdultVideoPlayerActivity;
import flix.com.vision.models.adult.AdultVideo;
import java.util.ArrayList;

/* renamed from: C4.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0084h extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f687d;

    /* renamed from: e, reason: collision with root package name */
    public final Activity f688e;

    /* renamed from: f, reason: collision with root package name */
    public final U4.b f689f;

    public C0084h(Activity activity, U4.b bVar, ArrayList<AdultVideo> arrayList) {
        this.f689f = bVar;
        this.f687d = arrayList;
        this.f688e = activity;
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f687d.size();
    }

    @Override // m1.V
    public void onBindViewHolder(C0083g c0083g, @SuppressLint({"RecyclerView"}) int i2) {
        AdultVideo adultVideo = (AdultVideo) this.f687d.get(i2);
        c0083g.f676u = adultVideo;
        c0083g.f678w.setText(adultVideo.title);
        c0083g.f679x.setText(c0083g.f676u.duration);
        ViewOnClickListenerC0077a viewOnClickListenerC0077a = new ViewOnClickListenerC0077a(this, i2, 1);
        View view = c0083g.f680y;
        view.setOnClickListener(viewOnClickListenerC0077a);
        if (c0083g.f676u.img_url != null) {
            try {
                m4.D.get().load(c0083g.f676u.img_url).fit().centerCrop().into(c0083g.f681z);
            } catch (Exception e3) {
                try {
                    e3.printStackTrace();
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }
        }
        view.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0078b(this, c0083g, 1));
        view.setOnLongClickListener(new ViewOnLongClickListenerC0081e(i2, 0, this, c0083g));
        view.setTag(Integer.valueOf(i2));
    }

    @Override // m1.V
    public C0083g onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new C0083g(this, (!App.getInstance().f14440s.getBoolean("pref_adult_show_big_pictures", false) || (this.f688e instanceof AdultVideoPlayerActivity)) ? LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.adult_video_item_view, viewGroup, false) : LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.adult_video_item_view_big, viewGroup, false));
    }
}
