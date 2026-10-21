package C4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import flix.com.vision.R;
import flix.com.vision.activities.DramaHomeActivity;
import flix.com.vision.models.Drama;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class B extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final U4.e f534d;

    /* renamed from: e, reason: collision with root package name */
    public final DramaHomeActivity f535e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f536f;

    public B(ArrayList<Drama> arrayList, DramaHomeActivity dramaHomeActivity, U4.e eVar) {
        this.f536f = arrayList;
        this.f535e = dramaHomeActivity;
        this.f534d = eVar;
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f536f.size();
    }

    @Override // m1.V
    public void onBindViewHolder(A a7, int i2) {
        ArrayList arrayList = this.f536f;
        Drama drama = (Drama) arrayList.get(i2);
        a7.f528u = drama;
        String str = drama.title;
        if (str.toLowerCase().endsWith(")")) {
            String substring = str.substring(str.length() - 6);
            str = str.replace(substring, "").trim();
            a7.f532y.setText(substring.replace("(", "").replace(")", ""));
        }
        a7.f531x.setText(str);
        try {
            m4.D.get().load(((Drama) arrayList.get(i2)).image_url).fit().centerCrop().into(a7.f533z);
        } catch (OutOfMemoryError e3) {
            e3.printStackTrace();
        }
        ViewOnFocusChangeListenerC0078b viewOnFocusChangeListenerC0078b = new ViewOnFocusChangeListenerC0078b(this, a7, 6);
        View view = a7.f530w;
        view.setOnFocusChangeListener(viewOnFocusChangeListenerC0078b);
        view.setOnClickListener(new A4.m(6, this, a7));
        view.setOnLongClickListener(new ViewOnLongClickListenerC0081e(i2, 2, this, a7));
        if (i2 == 0) {
            view.requestFocus();
        }
    }

    @Override // m1.V
    public A onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new A(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.drama_continue_item_view, viewGroup, false));
    }
}
