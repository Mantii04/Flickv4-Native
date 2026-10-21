package C4;

import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.activities.player.SimpleVideoPlayer;
import flix.com.vision.models.Episode;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class V extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f612d;

    /* renamed from: e, reason: collision with root package name */
    public int f613e;

    /* renamed from: f, reason: collision with root package name */
    public final SimpleVideoPlayer f614f;

    public V(SimpleVideoPlayer simpleVideoPlayer, ArrayList<Episode> arrayList, int i2) {
        this.f613e = i2;
        this.f612d = arrayList;
        this.f614f = simpleVideoPlayer;
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f612d.size();
    }

    @Override // m1.V
    public void onBindViewHolder(final U u6, int i2) {
        Episode episode = (Episode) this.f612d.get(i2);
        u6.f609u.setText(String.valueOf(episode.number));
        String str = episode.title;
        TextView textView = u6.f610v;
        if (str == null || str.isEmpty()) {
            textView.setText("Episode " + episode.number);
        } else {
            textView.setText(episode.title);
        }
        boolean z6 = i2 == this.f613e;
        View view = u6.f18217a;
        view.setActivated(z6);
        final ColorStateList colorStateList = A.h.getColorStateList(this.f614f, R.color.selector_episode_text);
        view.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: C4.T
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z7) {
                SimpleVideoPlayer simpleVideoPlayer = V.this.f614f;
                U u7 = u6;
                if (z7) {
                    u7.f610v.setTextColor(simpleVideoPlayer.getResources().getColor(R.color.black));
                    u7.f609u.setTextColor(simpleVideoPlayer.getResources().getColor(R.color.black));
                    return;
                }
                boolean isActivated = u7.f18217a.isActivated();
                TextView textView2 = u7.f609u;
                TextView textView3 = u7.f610v;
                if (isActivated) {
                    textView3.setTextColor(simpleVideoPlayer.getResources().getColor(R.color.accent));
                    textView2.setTextColor(simpleVideoPlayer.getResources().getColor(R.color.accent));
                } else {
                    textView3.setTextColor(simpleVideoPlayer.getResources().getColor(R.color.white));
                    textView2.setTextColor(simpleVideoPlayer.getResources().getColor(R.color.white));
                    u7.f611w.setImageTintList(colorStateList);
                }
            }
        });
        textView.setTextColor(colorStateList);
        u6.f609u.setTextColor(colorStateList);
        ImageView imageView = u6.f611w;
        imageView.setImageTintList(colorStateList);
        if (z6) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
        view.setOnClickListener(new ViewOnClickListenerC0077a(this, i2, 4));
    }

    @Override // m1.V
    public U onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new U(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_player_episode, viewGroup, false));
    }
}
