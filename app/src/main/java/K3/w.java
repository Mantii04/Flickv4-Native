package K3;

import M.AbstractC0181p0;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import r3.AbstractC1595a;

/* loaded from: classes2.dex */
public final class w extends ArrayAdapter {

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f1763b;

    /* renamed from: e, reason: collision with root package name */
    public ColorStateList f1764e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ x f1765f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w(x xVar, Context context, int i2, String[] strArr) {
        super(context, i2, strArr);
        this.f1765f = xVar;
        a();
    }

    public final void a() {
        ColorStateList colorStateList;
        x xVar = this.f1765f;
        ColorStateList colorStateList2 = xVar.f1773u;
        ColorStateList colorStateList3 = null;
        if (colorStateList2 != null) {
            int[] iArr = {R.attr.state_pressed};
            colorStateList = new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{colorStateList2.getColorForState(iArr, 0), 0});
        } else {
            colorStateList = null;
        }
        this.f1764e = colorStateList;
        if (xVar.f1772t != 0 && xVar.f1773u != null) {
            int[] iArr2 = {R.attr.state_hovered, -16842919};
            int[] iArr3 = {R.attr.state_selected, -16842919};
            colorStateList3 = new ColorStateList(new int[][]{iArr3, iArr2, new int[0]}, new int[]{AbstractC1595a.layer(xVar.f1772t, xVar.f1773u.getColorForState(iArr3, 0)), AbstractC1595a.layer(xVar.f1772t, xVar.f1773u.getColorForState(iArr2, 0)), xVar.f1772t});
        }
        this.f1763b = colorStateList3;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i2, view, viewGroup);
        if (view2 instanceof TextView) {
            TextView textView = (TextView) view2;
            x xVar = this.f1765f;
            Drawable drawable = null;
            if (xVar.getText().toString().contentEquals(textView.getText()) && xVar.f1772t != 0) {
                ColorDrawable colorDrawable = new ColorDrawable(xVar.f1772t);
                if (this.f1764e != null) {
                    E.c.setTintList(colorDrawable, this.f1763b);
                    drawable = new RippleDrawable(this.f1764e, colorDrawable, null);
                } else {
                    drawable = colorDrawable;
                }
            }
            AbstractC0181p0.setBackground(textView, drawable);
        }
        return view2;
    }
}
