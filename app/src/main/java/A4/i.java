package A4;

import android.R;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CheckedTextView;
import flix.com.vision.activities.leanback.FilterActivityLeanBack;

/* loaded from: classes2.dex */
public final class i extends ArrayAdapter {
    public i(FilterActivityLeanBack filterActivityLeanBack, Context context, String[] strArr) {
        super(context, R.layout.select_dialog_singlechoice, strArr);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        CheckedTextView checkedTextView = (CheckedTextView) super.getView(i2, view, viewGroup);
        checkedTextView.setTextSize(16.0f);
        checkedTextView.setPadding(30, 30, 30, 30);
        return checkedTextView;
    }
}
