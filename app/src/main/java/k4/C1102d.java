package k4;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.skydoves.powerspinner.PowerSpinnerView;
import java.util.ArrayList;
import java.util.List;
import l4.C1228a;
import m1.V;

/* renamed from: k4.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1102d extends V implements InterfaceC1106h {

    /* renamed from: d, reason: collision with root package name */
    public int f17301d;

    /* renamed from: e, reason: collision with root package name */
    public final PowerSpinnerView f17302e;

    /* renamed from: f, reason: collision with root package name */
    public InterfaceC1104f f17303f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f17304g;

    public C1102d(PowerSpinnerView powerSpinnerView) {
        kotlin.jvm.internal.j.checkNotNullParameter(powerSpinnerView, "powerSpinnerView");
        this.f17301d = powerSpinnerView.getSelectedIndex();
        this.f17302e = powerSpinnerView;
        this.f17304g = new ArrayList();
    }

    public int getIndex() {
        return this.f17301d;
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f17304g.size();
    }

    public InterfaceC1104f getOnSpinnerItemSelectedListener() {
        return this.f17303f;
    }

    public PowerSpinnerView getSpinnerView() {
        return this.f17302e;
    }

    public void notifyItemSelected(int i2) {
        if (i2 == -1) {
            return;
        }
        int index = getIndex();
        setIndex(i2);
        PowerSpinnerView spinnerView = getSpinnerView();
        ArrayList arrayList = this.f17304g;
        spinnerView.notifyItemSelected(i2, (CharSequence) arrayList.get(i2));
        InterfaceC1104f onSpinnerItemSelectedListener = getOnSpinnerItemSelectedListener();
        if (onSpinnerItemSelectedListener != null) {
            Integer valueOf = Integer.valueOf(index);
            if (index == -1) {
                valueOf = null;
            }
            ((C1112n) onSpinnerItemSelectedListener).onItemSelected(index, valueOf != null ? (CharSequence) arrayList.get(index) : null, i2, arrayList.get(i2));
        }
    }

    public void setIndex(int i2) {
        this.f17301d = i2;
    }

    public void setItems(List<? extends CharSequence> itemList) {
        kotlin.jvm.internal.j.checkNotNullParameter(itemList, "itemList");
        ArrayList arrayList = this.f17304g;
        arrayList.clear();
        arrayList.addAll(itemList);
        setIndex(-1);
        notifyDataSetChanged();
    }

    public void setOnSpinnerItemSelectedListener(InterfaceC1104f interfaceC1104f) {
        this.f17303f = interfaceC1104f;
    }

    @Override // m1.V
    public void onBindViewHolder(C1100b holder, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(holder, "holder");
        holder.bind((CharSequence) this.f17304g.get(i2), getSpinnerView());
    }

    @Override // m1.V
    public C1100b onCreateViewHolder(ViewGroup parent, int i2) {
        kotlin.jvm.internal.j.checkNotNullParameter(parent, "parent");
        C1228a inflate = C1228a.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        kotlin.jvm.internal.j.checkNotNullExpressionValue(inflate, "ItemDefaultPowerSpinnerL…nt,\n        false\n      )");
        C1100b c1100b = new C1100b(inflate);
        inflate.getRoot().setOnClickListener(new ViewOnClickListenerC1101c(c1100b, this));
        return c1100b;
    }
}
