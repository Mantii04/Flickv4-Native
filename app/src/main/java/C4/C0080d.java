package C4;

import android.annotation.SuppressLint;
import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import flix.com.vision.R;
import flix.com.vision.activities.adult.AdultCategoriesActivity;
import flix.com.vision.models.adult.AdultCategory;
import flix.com.vision.tv.Constant;
import h5.C0996j;
import java.util.ArrayList;

/* renamed from: C4.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0080d extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final C0996j f654d;

    /* renamed from: e, reason: collision with root package name */
    public final Typeface f655e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f656f;

    /* renamed from: g, reason: collision with root package name */
    public final AdultCategoriesActivity f657g;

    public C0080d(AdultCategoriesActivity adultCategoriesActivity, ArrayList<AdultCategory> arrayList) {
        this.f656f = arrayList;
        this.f657g = adultCategoriesActivity;
        AssetManager assets = adultCategoriesActivity.getAssets();
        String str = Constant.f16184b;
        this.f655e = Typeface.createFromAsset(assets, "fonts/product_sans_bold.ttf");
        this.f654d = new C0996j();
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f656f.size();
    }

    @Override // m1.V
    public void onBindViewHolder(C0079c c0079c, @SuppressLint({"RecyclerView"}) int i2) {
        this.f654d.applyFontToView(c0079c.f648w, this.f655e);
        AdultCategory adultCategory = (AdultCategory) this.f656f.get(i2);
        c0079c.f646u = adultCategory;
        c0079c.f648w.setText(adultCategory.title);
        ViewOnClickListenerC0077a viewOnClickListenerC0077a = new ViewOnClickListenerC0077a(this, i2, 0);
        View view = c0079c.f649x;
        view.setOnClickListener(viewOnClickListenerC0077a);
        if (c0079c.f646u.img_url != null) {
            try {
                m4.D.get().load(c0079c.f646u.img_url).fit().centerCrop().into(c0079c.f650y);
            } catch (Exception e3) {
                try {
                    e3.printStackTrace();
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }
        }
        view.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0078b(this, c0079c, 0));
        view.setTag(Integer.valueOf(i2));
    }

    @Override // m1.V
    public C0079c onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new C0079c(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.adult_category_item_view, viewGroup, false));
    }
}
