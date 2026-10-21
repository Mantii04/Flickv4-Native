package W4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.leanback.widget.A0;
import androidx.leanback.widget.C0;
import flix.com.vision.R;
import flix.com.vision.models.Movie;
import h5.AbstractC0990d;
import m4.D;

/* loaded from: classes2.dex */
public final class f extends C0 {
    @Override // androidx.leanback.widget.C0
    public void onBindViewHolder(A0 a02, Object obj) {
        Movie movie = (Movie) obj;
        try {
            D.get().load(movie.getImage_url()).fit().error(R.drawable.ic_movie).centerCrop().into((ImageView) a02.f6460a.findViewById(R.id.poster_image));
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    @Override // androidx.leanback.widget.C0
    public A0 onCreateViewHolder(ViewGroup viewGroup) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.movie_item_view_tv, viewGroup, false);
        ViewGroup.LayoutParams layoutParams = inflate.getLayoutParams();
        layoutParams.width = AbstractC0990d.getWidthInPercent(viewGroup.getContext(), 12);
        layoutParams.height = AbstractC0990d.getHeightInPercent(viewGroup.getContext(), 32);
        return new A0(inflate);
    }

    @Override // androidx.leanback.widget.C0
    public void onUnbindViewHolder(A0 a02) {
    }
}
