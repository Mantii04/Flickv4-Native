package C4;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import e.DialogInterfaceC0839s;
import flix.com.vision.R;
import flix.com.vision.models.ColorItem;
import java.util.ArrayList;

/* renamed from: C4.w, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0098w extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final String f787d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f788e;

    /* renamed from: f, reason: collision with root package name */
    public final Activity f789f;

    /* renamed from: g, reason: collision with root package name */
    public DialogInterfaceC0839s f790g;

    public C0098w(Activity activity, ArrayList<ColorItem> arrayList, String str) {
        this.f788e = arrayList;
        this.f789f = activity;
        this.f787d = str;
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f788e.size();
    }

    public void setAlertDialog(DialogInterfaceC0839s dialogInterfaceC0839s) {
        this.f790g = dialogInterfaceC0839s;
    }

    @Override // m1.V
    public void onBindViewHolder(C0097v c0097v, int i2) {
        ColorItem colorItem = (ColorItem) this.f788e.get(i2);
        c0097v.f782u = colorItem;
        c0097v.f786y.setBackgroundResource(colorItem.colorID);
        boolean z6 = c0097v.f782u.isChecked;
        ImageView imageView = c0097v.f783v;
        if (z6) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
        A4.m mVar = new A4.m(4, this, c0097v);
        View view = c0097v.f785x;
        view.setOnClickListener(mVar);
        view.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0078b(this, c0097v, 4));
    }

    @Override // m1.V
    public C0097v onCreateViewHolder(ViewGroup viewGroup, int i2) {
        return new C0097v(this, LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.color_item_view, viewGroup, false));
    }
}
