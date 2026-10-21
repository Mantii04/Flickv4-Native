package C4;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import flix.com.vision.R;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class I extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final C0996j f565d;

    /* renamed from: e, reason: collision with root package name */
    public final Typeface f566e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f567f;

    /* renamed from: g, reason: collision with root package name */
    public final U4.i f568g;

    /* renamed from: h, reason: collision with root package name */
    public final Context f569h;

    public I(Context context, U4.i iVar, ArrayList<String> arrayList) {
        this.f567f = arrayList;
        this.f568g = iVar;
        AssetManager assets = context.getAssets();
        String str = Constant.f16184b;
        this.f566e = Typeface.createFromAsset(assets, "fonts/pproduct_sans_rregular.ttf");
        this.f565d = new C0996j();
        this.f569h = context;
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f567f.size();
    }

    @Override // m1.V
    public void onBindViewHolder(H h7, int i2) {
        String str = (String) this.f567f.get(i2);
        h7.f562u = str;
        String upperCase = str.toUpperCase();
        TextView textView = h7.f564w;
        textView.setText(upperCase);
        this.f565d.applyFontToView(textView, this.f566e);
        A4.m mVar = new A4.m(7, this, h7);
        View view = h7.f563v;
        view.setOnClickListener(mVar);
        view.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0078b(this, h7, 7));
    }

    @Override // m1.V
    public H onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new H(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.keyboard_letter_item_view, viewGroup, false));
    }
}
