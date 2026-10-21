package C4;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import flix.com.vision.R;
import flix.com.vision.models.Drama;
import java.util.ArrayList;

/* renamed from: C4.z, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0101z extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final U4.e f801d;

    /* renamed from: e, reason: collision with root package name */
    public final Activity f802e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f803f;

    public C0101z(ArrayList<Drama> arrayList, Activity activity, U4.e eVar) {
        this.f803f = arrayList;
        this.f802e = activity;
        this.f801d = eVar;
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f803f.size();
    }

    @Override // m1.V
    public void onBindViewHolder(C0100y c0100y, int i2) {
        ArrayList arrayList = this.f803f;
        Drama drama = (Drama) arrayList.get(i2);
        c0100y.f795u = drama;
        String str = drama.title;
        c0100y.f799y.setText(drama.year);
        c0100y.f798x.setText(str);
        try {
            m4.D.get().load(((Drama) arrayList.get(i2)).image_url).fit().centerCrop().into(c0100y.f800z);
        } catch (OutOfMemoryError e3) {
            e3.printStackTrace();
        }
        ViewOnFocusChangeListenerC0078b viewOnFocusChangeListenerC0078b = new ViewOnFocusChangeListenerC0078b(this, c0100y, 5);
        View view = c0100y.f797w;
        view.setOnFocusChangeListener(viewOnFocusChangeListenerC0078b);
        view.setOnClickListener(new A4.m(5, this, c0100y));
        view.setOnLongClickListener(new ViewOnLongClickListenerC0085i(1, this, c0100y));
        if (i2 == 0) {
            view.requestFocus();
        }
    }

    @Override // m1.V
    public C0100y onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new C0100y(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.drama_item_view, viewGroup, false));
    }
}
