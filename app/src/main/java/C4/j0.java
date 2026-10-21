package C4;

import android.app.Activity;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.models.VideoSource;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class j0 extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final C0996j f709d;

    /* renamed from: e, reason: collision with root package name */
    public final Typeface f710e;

    /* renamed from: f, reason: collision with root package name */
    public final Typeface f711f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f712g;

    /* renamed from: h, reason: collision with root package name */
    public final Activity f713h;

    public j0(Activity activity, ArrayList<VideoSource> arrayList) {
        this.f712g = arrayList;
        this.f713h = activity;
        AssetManager assets = activity.getAssets();
        String str = Constant.f16184b;
        this.f710e = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f711f = Typeface.createFromAsset(activity.getAssets(), "fonts/product_sans_bold.ttf");
        this.f709d = new C0996j();
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f712g.size();
    }

    @Override // m1.V
    public long getItemId(int i2) {
        return super.getItemId(i2);
    }

    @Override // m1.V
    public void onBindViewHolder(i0 i0Var, int i2) {
        VideoSource videoSource = (VideoSource) this.f712g.get(i2);
        i0Var.f695u = videoSource;
        videoSource.label = videoSource.label.replace(" - ", " · ").replace("- ", " · ").replace(" -", "·");
        VideoSource videoSource2 = i0Var.f695u;
        boolean z6 = videoSource2.isHindi;
        C0996j c0996j = this.f709d;
        TextView textView = i0Var.f697w;
        TextView textView2 = i0Var.f698x;
        if (z6 || videoSource2.streamable) {
            Typeface typeface = this.f711f;
            c0996j.applyFontToView(textView, typeface);
            c0996j.applyFontToView(textView2, typeface);
        } else {
            Typeface typeface2 = this.f710e;
            c0996j.applyFontToView(textView, typeface2);
            c0996j.applyFontToView(textView2, typeface2);
        }
        if (i0Var.f695u.clicked) {
            textView2.setAlpha(0.4f);
            textView.setAlpha(0.4f);
        } else {
            textView2.setAlpha(1.0f);
            textView.setAlpha(1.0f);
        }
        VideoSource videoSource3 = i0Var.f695u;
        if (videoSource3 == null) {
            return;
        }
        if (videoSource3.isRealDebrid) {
            textView2.setTextColor(-416706);
            textView2.setText("Direct · Real-Debrid");
        } else if (videoSource3.isPremiumize) {
            textView2.setTextColor(-416706);
            textView2.setText("Direct · Premiumize");
        } else if (videoSource3.isAllDebrid) {
            textView2.setTextColor(-416706);
            textView2.setText("Direct · AllDebrid");
        } else if (videoSource3.isTorbox) {
            textView2.setTextColor(-416706);
            textView2.setText("Direct · TorBox");
        } else if (videoSource3.isOffCloud) {
            textView2.setTextColor(-416706);
            textView2.setText("Direct · OffCloud");
        } else if (videoSource3.streamable) {
            textView2.setTextColor(this.f713h.getResources().getColor(R.color.accent));
            textView2.setText("Direct Stream");
        } else {
            textView2.setTextColor(-1);
            textView2.setText("Embed");
            if (i0Var.f695u.hasSubtitles()) {
                textView2.setText("Embed · Subtitles");
            } else if (i0Var.f695u.hasMultiSubtitles()) {
                textView2.setText("Embed · Subtitles · Multilanguage");
            }
        }
        if (i0Var.f695u.originalFileName != null) {
            textView2.setText(((Object) textView2.getText()) + " - " + i0Var.f695u.originalFileName);
        }
        A4.g gVar = new A4.g(i0Var, 3);
        View view = i0Var.f696v;
        view.setOnFocusChangeListener(gVar);
        textView.setText(i0Var.f695u.label);
        view.setOnClickListener(new A4.m(14, this, i0Var));
        view.setOnLongClickListener(new ViewOnLongClickListenerC0085i(2, this, i0Var));
    }

    @Override // m1.V
    public i0 onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new i0(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.video_source_item_view_new, viewGroup, false));
    }
}
