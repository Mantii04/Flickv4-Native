package A4;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y;
import androidx.media3.exoplayer.upstream.CmcdData;
import flix.com.vision.R;
import flix.com.vision.models.Movie;
import m4.D;

/* loaded from: classes2.dex */
public class r extends DialogInterfaceOnCancelListenerC0486y {

    /* renamed from: v0, reason: collision with root package name */
    public Movie f89v0;

    /* renamed from: w0, reason: collision with root package name */
    public String f90w0;

    /* renamed from: x0, reason: collision with root package name */
    public String f91x0;

    /* renamed from: y0, reason: collision with root package name */
    public String f92y0;

    public static r newInstance(Movie movie, String str, String str2, String str3) {
        r rVar = new r();
        rVar.f89v0 = movie;
        rVar.f90w0 = str;
        rVar.f91x0 = str2;
        rVar.f92y0 = str3;
        return rVar;
    }

    @Override // androidx.fragment.app.C
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.dialog_movie_info_tv, viewGroup, false);
        TextView textView = (TextView) inflate.findViewById(R.id.dialog_movie_title);
        TextView textView2 = (TextView) inflate.findViewById(R.id.dialog_movie_plot);
        TextView textView3 = (TextView) inflate.findViewById(R.id.dialog_duration);
        TextView textView4 = (TextView) inflate.findViewById(R.id.dialog_release_date);
        TextView textView5 = (TextView) inflate.findViewById(R.id.dialog_genre);
        TextView textView6 = (TextView) inflate.findViewById(R.id.dialog_rating);
        TextView textView7 = (TextView) inflate.findViewById(R.id.dialog_writers);
        TextView textView8 = (TextView) inflate.findViewById(R.id.dialog_production);
        TextView textView9 = (TextView) inflate.findViewById(R.id.dialog_director);
        TextView textView10 = (TextView) inflate.findViewById(R.id.dialog_cast);
        ImageView imageView = (ImageView) inflate.findViewById(R.id.dialog_title_logo);
        Movie movie = this.f89v0;
        if (movie != null) {
            textView.setText(movie.getTitle());
            textView2.setText(this.f89v0.getOverview());
            textView4.setText(this.f89v0.rawReleaseDate);
            String genres = this.f89v0.getGenres();
            if (genres != null && genres.endsWith(", ")) {
                genres = A.i.d(2, 0, genres);
            }
            String str = "Unknown";
            if (genres == null || genres.isEmpty()) {
                genres = "Unknown";
            }
            textView5.setText(genres);
            String str2 = this.f89v0.certification;
            if (str2 == null || str2.isEmpty()) {
                str2 = "N/A";
            }
            textView6.setText(str2);
            String str3 = this.f89v0.writers;
            if (str3 == null || str3.isEmpty()) {
                str3 = "Unknown";
            }
            textView7.setText(str3);
            String production = this.f89v0.getProduction();
            if (production != null) {
                production = production.trim();
            }
            if (production == null || production.isEmpty()) {
                production = "Unknown";
            }
            textView8.setText(production);
            if (this.f89v0.getDuration() > 0) {
                textView3.setText((this.f89v0.getDuration() / 60) + "h " + (this.f89v0.getDuration() % 60) + CmcdData.OBJECT_TYPE_MANIFEST);
            } else {
                textView3.setText("N/A");
            }
            String str4 = this.f90w0;
            textView9.setText((str4 == null || str4.isEmpty()) ? "Unknown" : this.f90w0);
            String str5 = this.f91x0;
            if (str5 != null && !str5.isEmpty()) {
                str = this.f91x0;
            }
            textView10.setText(str);
            String str6 = this.f92y0;
            if (str6 != null && !str6.isEmpty()) {
                imageView.setVisibility(0);
                textView.setVisibility(8);
                D.get().load(this.f92y0).into(imageView);
            }
        }
        return inflate;
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y, androidx.fragment.app.C
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || dialog.getWindow() == null) {
            return;
        }
        dialog.getWindow().setLayout(-1, -1);
        dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        dialog.getWindow().setWindowAnimations(R.style.DialogFadeAnimation);
    }
}
