package k0;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.leanback.widget.VerticalGridView;
import java.util.ArrayList;
import m1.V;

/* renamed from: k0.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1088c extends V {

    /* renamed from: d, reason: collision with root package name */
    public final int f17220d;

    /* renamed from: e, reason: collision with root package name */
    public final int f17221e;

    /* renamed from: f, reason: collision with root package name */
    public final int f17222f;

    /* renamed from: g, reason: collision with root package name */
    public final f f17223g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ e f17224h;

    public C1088c(e eVar, int i2, int i7, int i8) {
        this.f17224h = eVar;
        this.f17220d = i2;
        this.f17221e = i8;
        this.f17222f = i7;
        this.f17223g = (f) eVar.f17228f.get(i8);
    }

    @Override // m1.V
    public int getItemCount() {
        f fVar = this.f17223g;
        if (fVar == null) {
            return 0;
        }
        return fVar.getCount();
    }

    @Override // m1.V
    public void onBindViewHolder(C1089d c1089d, int i2) {
        f fVar;
        TextView textView = c1089d.f17225u;
        if (textView != null && (fVar = this.f17223g) != null) {
            textView.setText(fVar.getLabelFor(fVar.getMinValue() + i2));
        }
        e eVar = this.f17224h;
        ArrayList arrayList = eVar.f17227e;
        int i7 = this.f17221e;
        eVar.b(c1089d.f18217a, ((VerticalGridView) arrayList.get(i7)).getSelectedPosition() == i2, i7, false);
    }

    @Override // m1.V
    public C1089d onCreateViewHolder(ViewGroup viewGroup, int i2) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.f17220d, viewGroup, false);
        int i7 = this.f17222f;
        return new C1089d(inflate, i7 != 0 ? (TextView) inflate.findViewById(i7) : (TextView) inflate);
    }

    @Override // m1.V
    public void onViewAttachedToWindow(C1089d c1089d) {
        c1089d.f18217a.setFocusable(this.f17224h.isActivated());
    }
}
