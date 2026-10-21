package C4;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import de.hdodenhof.circleimageview.CircleImageView;
import flix.com.vision.R;
import flix.com.vision.models.Cast;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class r extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final Activity f767d;

    /* renamed from: e, reason: collision with root package name */
    public final int f768e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f769f;

    /* renamed from: g, reason: collision with root package name */
    public final Typeface f770g;

    /* renamed from: h, reason: collision with root package name */
    public final C0996j f771h;

    public r(Context context, ArrayList arrayList, Activity activity, int i2) {
        this.f769f = arrayList;
        this.f767d = activity;
        this.f768e = i2;
        AssetManager assets = activity.getAssets();
        String str = Constant.f16184b;
        this.f770g = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f771h = new C0996j();
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f769f.size();
    }

    @Override // m1.V
    public void onBindViewHolder(C0093q c0093q, int i2) {
        String img_url;
        CircleImageView circleImageView;
        TextView textView = c0093q.f764w;
        C0996j c0996j = this.f771h;
        Typeface typeface = this.f770g;
        c0996j.applyFontToView(textView, typeface);
        TextView textView2 = c0093q.f765x;
        c0996j.applyFontToView(textView2, typeface);
        ArrayList arrayList = this.f769f;
        Cast cast = (Cast) arrayList.get(i2);
        c0093q.f762u = cast;
        c0093q.f764w.setText(cast.getName());
        textView2.setText(c0093q.f762u.CharacterName);
        try {
            img_url = ((Cast) arrayList.get(i2)).getImg_url();
            circleImageView = c0093q.f766y;
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        if (img_url != null && ((Cast) arrayList.get(i2)).getImg_url().length() >= 10) {
            m4.D.get().load(((Cast) arrayList.get(i2)).getImg_url()).fit().centerCrop().into(circleImageView);
            A4.m mVar = new A4.m(3, this, c0093q);
            View view = c0093q.f763v;
            view.setOnClickListener(mVar);
            view.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0092p(this, c0093q));
        }
        m4.D.get().load(((Cast) arrayList.get(i2)).gender == 0 ? R.drawable.cast_ : R.drawable.cast_2).fit().centerCrop().into(circleImageView);
        A4.m mVar2 = new A4.m(3, this, c0093q);
        View view2 = c0093q.f763v;
        view2.setOnClickListener(mVar2);
        view2.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0092p(this, c0093q));
    }

    @Override // m1.V
    public C0093q onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new C0093q(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.cast_item_view, viewGroup, false));
    }
}
