package l;

import android.content.res.Resources;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;

/* renamed from: l.g0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1146g0 implements ListAdapter, SpinnerAdapter {

    /* renamed from: b, reason: collision with root package name */
    public final SpinnerAdapter f17893b;

    /* renamed from: e, reason: collision with root package name */
    public final ListAdapter f17894e;

    public C1146g0(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
        this.f17893b = spinnerAdapter;
        if (spinnerAdapter instanceof ListAdapter) {
            this.f17894e = (ListAdapter) spinnerAdapter;
        }
        if (theme == null || !(spinnerAdapter instanceof ThemedSpinnerAdapter)) {
            return;
        }
        AbstractC1140e0.a((ThemedSpinnerAdapter) spinnerAdapter, theme);
    }

    @Override // android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        ListAdapter listAdapter = this.f17894e;
        if (listAdapter != null) {
            return listAdapter.areAllItemsEnabled();
        }
        return true;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        SpinnerAdapter spinnerAdapter = this.f17893b;
        if (spinnerAdapter == null) {
            return 0;
        }
        return spinnerAdapter.getCount();
    }

    @Override // android.widget.SpinnerAdapter
    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        SpinnerAdapter spinnerAdapter = this.f17893b;
        if (spinnerAdapter == null) {
            return null;
        }
        return spinnerAdapter.getDropDownView(i2, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        SpinnerAdapter spinnerAdapter = this.f17893b;
        if (spinnerAdapter == null) {
            return null;
        }
        return spinnerAdapter.getItem(i2);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        SpinnerAdapter spinnerAdapter = this.f17893b;
        if (spinnerAdapter == null) {
            return -1L;
        }
        return spinnerAdapter.getItemId(i2);
    }

    @Override // android.widget.Adapter
    public int getItemViewType(int i2) {
        return 0;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        return getDropDownView(i2, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public int getViewTypeCount() {
        return 1;
    }

    @Override // android.widget.Adapter
    public boolean hasStableIds() {
        SpinnerAdapter spinnerAdapter = this.f17893b;
        return spinnerAdapter != null && spinnerAdapter.hasStableIds();
    }

    @Override // android.widget.Adapter
    public boolean isEmpty() {
        return getCount() == 0;
    }

    @Override // android.widget.ListAdapter
    public boolean isEnabled(int i2) {
        ListAdapter listAdapter = this.f17894e;
        if (listAdapter != null) {
            return listAdapter.isEnabled(i2);
        }
        return true;
    }

    @Override // android.widget.Adapter
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        SpinnerAdapter spinnerAdapter = this.f17893b;
        if (spinnerAdapter != null) {
            spinnerAdapter.registerDataSetObserver(dataSetObserver);
        }
    }

    @Override // android.widget.Adapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        SpinnerAdapter spinnerAdapter = this.f17893b;
        if (spinnerAdapter != null) {
            spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
        }
    }
}
