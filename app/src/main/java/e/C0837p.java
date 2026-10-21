package e;

import android.content.Context;
import android.widget.ArrayAdapter;

/* renamed from: e.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0837p extends ArrayAdapter {
    public C0837p(Context context, int i2, int i7, CharSequence[] charSequenceArr) {
        super(context, i2, i7, charSequenceArr);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }
}
